#!/usr/bin/env bash
# Android's own C library, linker and allocator without a phone: arm64 Android programs run under qemu-user on the
# bionic linker, libc (with scudo) and system libraries of an Android 17 emulator image (bionic_root.py).
#
#   android/test/bionic.sh         Kazarov's Rust tests, with android/patches applied, built for Android and run there
#   android/test/bionic.sh app     the release build's libdarkchronicle.so loaded with dlopen, as the app's activity
#                                  loads it, extracting a fake disc (fake_disc.py) through it with the app's settings
#   android/test/bionic.sh all     both
#   android/test/bionic.sh port [FILTER]
#                                  the game's own tests (port/src/tests) built for Android and run there, those
#                                  FILTER names (a --gtest_filter; default the model, costume menu and Luau runtime tests); tests
#                                  that need a window, a GPU or a death test's re-exec cannot run under qemu
#
# CT_CMAKE_ARGS adds CMake arguments to the `port` build, such as FETCHCONTENT_SOURCE_DIR_* for offline sources.
# Needs qemu-user (qemu-aarch64), debugfs (e2fsprogs), python3, the app's NDK under ANDROID_HOME, and Rust with the aarch64-linux-android target; `app` needs a release build (./gradlew
# assembleRelease). The system image, about 830 MB, and the unpacked root are kept in CT_BIONIC_CACHE (default
# ~/.cache/chronicletwo-bionic).
set -euo pipefail

what=${1:-tests}
repo=$(cd "$(dirname "$0")/../.." && pwd)
cache=${CT_BIONIC_CACHE:-$HOME/.cache/chronicletwo-bionic}
image=arm64-v8a-37.0_r06.zip
image_sha256=ffccd67f6e26b1f4911854ba4e8510b2990ab6c71af33f71864d38bf5d80c57e
# The NDK the app is built with (ndkVersion), not whichever ANDROID_NDK_ROOT names: CI runners point that at an older one.
ndk=${ANDROID_HOME:-/opt/android-sdk}/ndk/$(sed -n 's/^ *ndkVersion = "\(.*\)"$/\1/p' "$repo/android/app/build.gradle.kts")
toolchain=$ndk/toolchains/llvm/prebuilt/linux-x86_64
api=33
root=$cache/root

mkdir -p "$cache"
if [ ! -x "$root/system/bin/linker64" ]; then
    if [ ! -f "$cache/$image" ]; then
        curl -fsSL -o "$cache/$image.part" "https://dl.google.com/android/repository/sys-img/android/$image"
        mv "$cache/$image.part" "$cache/$image"
    fi
    echo "$image_sha256  $cache/$image" | sha256sum -c --quiet
    python3 -I "$repo/android/test/bionic_root.py" "$cache/$image" "$root"
fi
# The NDK's C++ runtime, which the app ships in its APK.
cp "$toolchain/sysroot/usr/lib/aarch64-linux-android/libc++_shared.so" "$root/system/lib64/"
run() {
    qemu-aarch64 -L "$root" "$@" 2> >(grep -v 'linkerconfig' >&2)
}

work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT

if [ "$what" = tests ] || [ "$what" = all ]; then
    # Kazarov as the app builds it (android/kazarov.cmake): the submodule with android/patches applied.
    mkdir -p "$work/kazarov"
    git -C "$repo/tools/kazarov" archive HEAD | tar -x -C "$work/kazarov"
    for patch in "$repo"/android/patches/kazarov-*.patch; do
        git -C "$work/kazarov" apply "$patch"
    done
    # Kazarov pins its Rust toolchain (rust-toolchain.toml), which needs the target too.
    (cd "$work/kazarov" && rustup target add aarch64-linux-android > /dev/null)
    export CARGO_TARGET_AARCH64_LINUX_ANDROID_LINKER=$toolchain/bin/aarch64-linux-android$api-clang
    export CC_aarch64_linux_android=$toolchain/bin/aarch64-linux-android$api-clang
    export CXX_aarch64_linux_android=$toolchain/bin/aarch64-linux-android$api-clang++
    export AR_aarch64_linux_android=$toolchain/bin/llvm-ar
    export CFLAGS_aarch64_linux_android=--target=aarch64-linux-android$api
    export CXXFLAGS_aarch64_linux_android=--target=aarch64-linux-android$api
    export KAZAROV_GAMEPLAY_ROOT=$repo/port/gameplay
    tests=$(cd "$work/kazarov" && CARGO_TARGET_DIR=$cache/target cargo test --release --target aarch64-linux-android \
        --no-default-features --lib --no-run --message-format=json |
        python3 -I -c 'import json, sys
for line in sys.stdin:
    message = json.loads(line)
    if message.get("reason") == "compiler-artifact" and message.get("executable") and message["profile"]["test"]:
        print(message["executable"])')
    mkdir -p "$work/tmp"
    # qemu-user itself now and then crashes running this many guest threads (an internal SIGSEGV, or a bad exit after
    # every test passed); a failed test exits 101, and only that is not run again.
    for attempt in 1 2; do
        status=0
        TMPDIR=$work/tmp run "$tests" --test-threads "$(nproc)" || status=$?
        if [ "$status" -eq 0 ] || [ "$status" -eq 101 ] || [ "$attempt" -eq 2 ]; then
            break
        fi
        echo "qemu exited with $status; running the tests again" >&2
    done
    [ "$status" -eq 0 ] || exit "$status"
fi

if [ "$what" = app ] || [ "$what" = all ]; then
    libs=$repo/android/app/build/intermediates/merged_native_libs/release/mergeReleaseNativeLibs/out/lib/arm64-v8a
    seed=$repo/android/app/build/generated/ctAssets/assets/data.zip
    include=$(ls -d "$repo"/android/app/.cxx/RelWithDebInfo/*/arm64-v8a/port/corrosion_generated/cxxbridge/kazarov_bridge/include | head -1)
    [ -f "$libs/libdarkchronicle.so" ] && [ -f "$seed" ] && [ -d "$include" ] ||
        { echo "no release build: run ./gradlew assembleRelease in android/" >&2; exit 1; }
    # The system's libandroid and graphics libraries need APEX modules this root does not mount; the extractor uses
    # none of them, so the NDK's stubs stand in for them.
    mkdir -p "$work/stubs"
    for stub in libandroid libvulkan libOpenSLES libGLESv1_CM libGLESv2 libEGL libnativewindow; do
        cp "$toolchain/sysroot/usr/lib/aarch64-linux-android/$api/$stub.so" "$work/stubs/"
    done
    "$toolchain/bin/clang++" --target=aarch64-linux-android$api -std=c++20 -O1 -I"$include" \
        "$repo/android/test/load_extract.cpp" -o "$work/load_extract"
    python3 -I "$repo/android/test/fake_disc.py" "$work/disc.iso"
    LD_LIBRARY_PATH=$work/stubs:$libs run "$work/load_extract" "$libs/libdarkchronicle.so" "$work/disc.iso" \
        "$work/game" "$seed"
    # The fake disc's 24 models came through the model pass.
    python3 -I -c 'import sys, zipfile
names = set(zipfile.ZipFile(sys.argv[1]).namelist())
missing = [f"fake/m{i:04}.{s}" for i in range(24) for s in ("gltf", "gltf.bin", "game.json") if f"fake/m{i:04}.{s}" not in names]
sys.exit(f"not published: {missing}" if missing else print("models published: 24"))' "$work/game/data.zip"
fi

if [ "$what" = port ]; then
    filter=${2:-'NativeModel.*:CostumeMenu.*:LuauRuntime.*:GfxPipelines.*:PresentTiming.*:EventCleanup.*:SceneMapLifetime.*:SceneResourceLifetime.*'}
    build=${CT_BIONIC_PORT_BUILD:-$cache/port}
    cmake=$(ls "${ANDROID_HOME:-/opt/android-sdk}"/cmake/*/bin/cmake 2>/dev/null | sort -V | tail -1)
    cmake=${cmake:-cmake}
    # shellcheck disable=SC2086 # CT_CMAKE_ARGS holds separate arguments.
    "$cmake" -S "$repo" -B "$build" -G Ninja -DCMAKE_MAKE_PROGRAM="$(dirname "$cmake")/ninja" \
        -DCMAKE_TOOLCHAIN_FILE="$ndk/build/cmake/android.toolchain.cmake" -DANDROID_ABI=arm64-v8a \
        -DANDROID_PLATFORM=android-$api -DANDROID_STL=c++_shared -DCMAKE_BUILD_TYPE=RelWithDebInfo -DPLATFORM=PC \
        -DCMAKE_CXX_SCAN_FOR_MODULES=OFF -DCT_BUILD_TESTS=ON ${CT_CMAKE_ARGS:-} > "$work/configure.log" ||
        { tail -n 30 "$work/configure.log" >&2; exit 1; }
    "$cmake" --build "$build" --target darkchronicle_tests
    mkdir -p "$work/stubs" "$work/tmp"
    for stub in libandroid libvulkan libOpenSLES libGLESv1_CM libGLESv2 libEGL libnativewindow; do
        cp "$toolchain/sysroot/usr/lib/aarch64-linux-android/$api/$stub.so" "$work/stubs/"
    done
    sdl=$(dirname "$(find "$build" -name 'libSDL3*.so' | head -n 1)")
    (cd "$build" && TMPDIR=$work/tmp LD_LIBRARY_PATH=$work/stubs:$sdl run ./darkchronicle_tests --gtest_filter="$filter")
fi
