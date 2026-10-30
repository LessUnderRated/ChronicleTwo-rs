# Handoff: Chronicle Two Android port

You are continuing an Android port of Chronicle Two (a native PC/iOS port of Dark Cloud 2) for one phone: a Galaxy
S26 (SM-S942U, Snapdragon SM8850, Adreno 840, Android 17 / API 37), landscape only, filling the whole wide screen.

## Repo
- Fork: `LessUnderRated/ChronicleTwo-rs` of upstream `TheMoonPeople/ChronicleTwo` (branch `master`, author Adubbz,
  squashed commits, no PRs to watch; follow `https://github.com/TheMoonPeople/ChronicleTwo/commits/master.atom`).
- Work branch: `ccr-3c2807db-504m84`. Push there. Do not open PRs or post upstream unless the owner says so.
- Never commit game data (ISOs, extracted files). Never put tokens in the repo or chat.

## Layout
- `port/src` - the game (C++), built into `libdarkchronicle.so`.
- `tools/kazarov` - submodule (C++ host + Rust core `kazarov_core`, cxx bridge), pinned at 97d668f.
  Android changes to it live ONLY in `android/patches/kazarov-0001-android.patch`, applied to a copy by
  `android/kazarov.cmake`. To change Kazarov: apply the patch to a clean copy of 97d668f in a scratch git repo,
  edit, then `git diff > android/patches/kazarov-0001-android.patch`.
- `android/` - Gradle app (SDL3 activity, `CrashReport.java` share-logs screen, `port/src/android/bridge.cpp`).
- `android/test/` - testing without a phone (see below). `docs/ANDROID.md` documents the port.
- CI: `.github/workflows/android.yml` - job `apk` builds, checks, extracts a fake disc under qemu and publishes
  release `android-v<versionName>` when that tag does not exist; job `emulated` runs the Rust and game tests under
  qemu in parallel.

## Build
- NDK 30.0.16248370 (pinned `ndkVersion`), AGP 8.13.2, Gradle 8.14.3, Java 21, Rust + `aarch64-linux-android`,
  `cxxbridge-cmd` 1.0.205.
- `cd android && ./gradlew assembleRelease` -> `android/app/build/outputs/apk/release/app-release.apk`.
- Bump `versionCode`/`versionName` in `android/app/build.gradle.kts` for each build given to the owner
  (current: 0.1.13, code 14).

## Testing without a phone (do this before handing anything over)
`android/test/bionic.sh` runs arm64 code on Android 17's real bionic linker/libc/scudo under qemu-user:
- `bionic.sh tests` - Kazarov's Rust tests (with the patch) for Android, including fake-disc extraction.
- `bionic.sh app` - dlopens the release `libdarkchronicle.so` and extracts `fake_disc.py`'s ISO like the app does.
- `bionic.sh port [gtest filter]` - the game's gtest suite built for Android (default
  `NativeModel.*:CostumeMenu.*:LuauRuntime.*`). Needs a window/GPU -> can't run; death tests can't run under qemu.
Needs qemu-user, e2fsprogs, python3. Downloads an ~830 MB system image once into `~/.cache/chronicletwo-bionic`.
Reproduce a bug in a test first, show it failing, then fix it and show it passing. The owner insists on this.

## Fixed so far (see git log for detail)
- Scudo map-count exhaustion during extraction -> mimalloc (v2, `local_dynamic_tls`) as Rust's allocator on Android.
- CP932 via `encoding_rs` (bionic iconv lacks it); log filename `std::format` bug; extraction uses 2 jobs.
- Upstream merged (backgrounds, new-game crash). Costume select (0.1.12, `menu_character::PrepareBody`).
- 0.1.13: Luau native codegen OFF on Android (`port/src/luau_runtime.cpp` `EnsureState`). JIT unwind tables were
  registered in libdarkchronicle's static libunwind but `__cxa_throw` lives in libc++_shared with its own libunwind,
  so any Lua error through JIT frames (every cutscene skip raises one) hit std::terminate.
  `LuauRuntime.ErrorsEndTheProgram` reproduces it under `bionic.sh port`.

## Open
1. Owner must confirm 0.1.13 fixes the cutscene-skip crash.
2. SIGSEGV (SEGV_MAPERR at 0x0000004800000029) at Max's intro cutscene, after `lib/event/show_message.luau` and
   `map/m/m07`, `map/s/s42` modules loaded. Cause unknown; may or may not be the JIT. Ask for the full Share-logs
   text (the `--- crash report` and `--- log` sections hold the stack and script errors). Symbolize addresses with
   the release's `libdarkchronicle-<ver>-arm64-symbols.so`.
3. Not done: DC2 memory-card save import; US/JP disc variants; in-game equipment menus may share the costume
   menu's partial-reload problem.

## Owner preferences
Brief replies. Test before claiming something works. If blocked, say what blocks you and how to continue; don't
silently substitute something else. Do what's asked.
