# The Android build's dependencies, included by port/CMakeLists.txt when the NDK toolchain is in use
# (docs/ANDROID.md). Gradle's externalNativeBuild runs the repository's own CMakeLists.txt, so
# CMAKE_SOURCE_DIR stays the checkout's root as on every other platform.
#
# SDL3 is built from source: its Java glue (org.libsdl.app) is compiled into the APK from the same
# checkout (app/build.gradle.kts clones it), so the two always match. FFmpeg's libraries are built
# for Android once by Kazarov's kz-ffmpeg into .kazarov/ffmpeg/android-arm64, where
# KazarovFfmpeg.cmake looks for them; the Rust core (KazarovRust.cmake) links them too.

include_guard(GLOBAL)
include(FetchContent)

set(SDL_SHARED ON CACHE BOOL "" FORCE)
set(SDL_STATIC OFF CACHE BOOL "" FORCE)
set(SDL_TEST_LIBRARY OFF CACHE BOOL "" FORCE)
set(SDL_EXAMPLES OFF CACHE BOOL "" FORCE)
file(STRINGS ${CMAKE_SOURCE_DIR}/android/sdl3-tag.txt sdl3_tag LIMIT_COUNT 1)
FetchContent_Declare(SDL3
    GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
    GIT_TAG ${sdl3_tag}
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(SDL3)

# The Android ABI maps to the FFmpeg tree kz-ffmpeg (or the WSL cross-build) produced: android-arm64,
# android-x86_64. The --target/--check below only builds the arm64 tree; other ABIs must be prebuilt.
if(ANDROID_ABI STREQUAL "arm64-v8a")
    set(ct_ffmpeg_target android-arm64)
elseif(ANDROID_ABI STREQUAL "x86_64")
    set(ct_ffmpeg_target android-x86_64)
else()
    message(FATAL_ERROR "native.cmake: no FFmpeg tree mapping for ANDROID_ABI=${ANDROID_ABI}")
endif()
set(ct_ffmpeg_dir ${CMAKE_SOURCE_DIR}/.kazarov/ffmpeg/${ct_ffmpeg_target})
find_package(Python3 REQUIRED COMPONENTS Interpreter)
if(ct_ffmpeg_target STREQUAL "android-arm64")
    # kz-ffmpeg only builds the arm64 tree; the x86_64 tree (emulator tests) must be prebuilt.
    execute_process(COMMAND ${CMAKE_COMMAND} -E env ANDROID_NDK_ROOT=${CMAKE_ANDROID_NDK}
            ${Python3_EXECUTABLE} ${KZ_ROOT}/tools/ffmpeg/kz-ffmpeg --out ${ct_ffmpeg_dir} --target ${ct_ffmpeg_target} --check
        RESULT_VARIABLE ct_ffmpeg_current OUTPUT_QUIET ERROR_QUIET)
    if(NOT ct_ffmpeg_current EQUAL 0)
        message(STATUS "Building FFmpeg for Android into ${ct_ffmpeg_dir} (once; a few minutes)")
        execute_process(COMMAND ${CMAKE_COMMAND} -E env ANDROID_NDK_ROOT=${CMAKE_ANDROID_NDK}
                ${Python3_EXECUTABLE} ${KZ_ROOT}/tools/ffmpeg/kz-ffmpeg --out ${ct_ffmpeg_dir} --target ${ct_ffmpeg_target}
            RESULT_VARIABLE ct_ffmpeg_built)
        if(NOT ct_ffmpeg_built EQUAL 0)
            message(FATAL_ERROR "kz-ffmpeg could not build FFmpeg for Android")
        endif()
    endif()
elseif(NOT EXISTS "${ct_ffmpeg_dir}/include/libavcodec/avcodec.h")
    message(FATAL_ERROR "native.cmake: ${ct_ffmpeg_dir} has no FFmpeg tree; prebuild it with kz-ffmpeg on a Linux host")
endif()
set(KZ_FFMPEG_DIR ${ct_ffmpeg_dir} CACHE PATH "" FORCE)

# The Rust core's gameplay documents: KazarovRust.cmake finds them beside the submodule, which the
# patched copy in the build tree is not.
set(KAZAROV_GAMEPLAY_ROOT ${CMAKE_SOURCE_DIR}/port/gameplay)
if(ANDROID_ABI STREQUAL "arm64-v8a")
    set(Rust_CARGO_TARGET aarch64-linux-android CACHE STRING "" FORCE)
elseif(ANDROID_ABI STREQUAL "x86_64")
    set(Rust_CARGO_TARGET x86_64-linux-android CACHE STRING "" FORCE)
else()
    message(FATAL_ERROR "native.cmake: no Rust target mapping for ANDROID_ABI=${ANDROID_ABI}")
endif()
