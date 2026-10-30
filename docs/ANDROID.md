# Android

Chronicle Two runs on arm64 Android phones with Vulkan 1.3 and Android 13 or later, as an APK built from this
repository: the same game sources as the PC port, compiled by the NDK into `libdarkchronicle.so`, which SDL's
activity loads. It follows the Android port of Chronicle (LessUnderRated/Chronicle-rs) and the iOS port here
(`port/src/ios`): a platform UI (Java here, Swift there) over a small C++ bridge into the game.

No game data is in the APK. On first start the app asks for a disc image of the player's own Dark Cloud 2 / Dark
Chronicle disc and extracts it with Kazarov's extractor, the code `dc2data extract` runs on a PC.

## Installing and first start

1. Install the APK (GitHub release `android-v<version>`, or a build of your own).
2. Make an ISO image of your disc and put it on the phone.
3. Open Chronicle Two and choose the image. It shows the release from the disc's product code and asks to
   extract, which takes several minutes and about 6 GB of free space while it runs. Only the European disc,
   Dark Chronicle (SCES-51190), extracts for now: it is the one Chronicle Two is built from, and the extractor
   reads its DATA.HD4. The US Dark Cloud 2 (SCUS-97213) keeps its data in other files.
4. The game starts. Later starts go straight to it.

The app's files are in its internal storage, which the Files app can reach as "Chronicle Two": `data.zip` and
`data.json` (the extracted data), `saves/`, `config.json`, `logs/`, and `scripts/`, `glyphs/`, `assets/data.zip`
installed from the APK.

## Playing

- **Touch controls**: a gamepad drawn over the game, hidden while a controller, keyboard or mouse is in use. The
  left and right halves of the screen are floating sticks. They can be moved, resized and hidden from the menu, and
  share one opacity.
- **2×** (top left): runs the game at double speed.
- **☰** (top right), or Back: pauses and opens the menu: speed, **Settings** (the game's own Options pages, as the
  game's Options screen has them, plus the touch controls' opacity), editing the touch controls, **Share log**, quit.
- Landscape only, either way up.

## When it crashes

The game writes its log to `logs/` and its crash handler a report to `saves/crashes/` (port/src/log,
port/src/crash). When a run ends badly (Android's `ApplicationExitInfo`), the next start says so and offers that
run's report and log to share or copy. Each release carries the unstripped `libdarkchronicle.so` for reading the
addresses in a report.

## What is in the build

| Where | What |
|---|---|
| `android/` | The Gradle project: SDL's activity, the setup screen, the menu, the touch overlay; `native.cmake` (SDL from source, FFmpeg for Android), `kazarov.cmake` (Kazarov with `android/patches`), `assets.cmake` (what the APK carries) |
| `android/patches/kazarov-0001-android.patch` | What Android needs of Kazarov, applied to a copy in the build tree: `flock` for the extractor's stage lock, which `File::try_lock` does not support on Android; an `android-arm64` target for `kz-ffmpeg`; the extractor's iOS memory paths (the disc read a resource at a time, waiting bytes spilled to a file) and an available-memory query on Android; no desktop setup window; `KAZAROV_GAMEPLAY_SEED` naming the gameplay seed; the PS2 threads' fibers on iOS's arm64 switch, since bionic has no `swapcontext`; the swapchain sized from the window; no `/proc/self/exe` (which is Android's `app_process`) |
| `port/src/android/bridge.cpp` | The app's native side: the game's command line and environment in the app's storage, extraction and its progress, the Options pages, the touch gamepad's state (`InputSetTouchOverlay`), pause and speed; stdout and stderr to logcat |
| `port/CMakeLists.txt` | `libdarkchronicle.so` on Android, `-fsigned-char` (the PS2's `char` is signed, Android's on arm64 is not), no `_FORTIFY_SOURCE` (it stops the process on the retail code's small overruns), Tracy and the tests off, the Luau scripts precompiled as on iOS |

## Building

Needs the Android SDK with the packages in `android/app/packages.txt` (NDK 30, CMake 3.31.6, build-tools 36),
JDK 17 or later, Rust with the `aarch64-linux-android` target, `cxxbridge-cmd` 1.0.205 (`cargo install cxxbridge-cmd
--version 1.0.205 --locked`), glslang and Python 3.

```sh
cd android
./gradlew assembleRelease   # app/build/outputs/apk/release/app-release.apk
```

The first build compiles SDL and FFmpeg (into `.kazarov/ffmpeg/android-arm64`) and takes a while. Where the
dependencies' source archives cannot be downloaded, `-Pct.cmakeArgs='-DFETCHCONTENT_SOURCE_DIR_LUAU=…;…'` points
CMake at local checkouts.

A release is signed with the key named by `CHRONICLE_KEYSTORE`, `CHRONICLE_KEYSTORE_PASSWORD`, `CHRONICLE_KEY_ALIAS`
and `CHRONICLE_KEY_PASSWORD`, or with `android/app/chronicletwo-dev.jks` (password and alias `chronicletwo`). That
key is public, so it says nothing about who built an APK; it makes each build install over the last.
`.github/workflows/android.yml` builds every push, and a push whose `versionName` has no release yet publishes it.

## Not done yet

- Importing saves from a PS2 memory card (Chronicle-rs has it for Dark Cloud; Dark Cloud 2's save format differs).
- It has not been run on a device: the first runs' logs will say what needs fixing.
- Snapdragon Galaxy S22-class phones whose stock driver is Vulkan 1.1 are refused by the renderer.
