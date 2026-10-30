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

set(ct_ffmpeg_dir ${CMAKE_SOURCE_DIR}/.kazarov/ffmpeg/android-arm64)
find_package(Python3 REQUIRED COMPONENTS Interpreter)
execute_process(COMMAND ${CMAKE_COMMAND} -E env ANDROID_NDK_ROOT=${CMAKE_ANDROID_NDK}
        ${Python3_EXECUTABLE} ${KZ_ROOT}/tools/ffmpeg/kz-ffmpeg --out ${ct_ffmpeg_dir} --target android-arm64 --check
    RESULT_VARIABLE ct_ffmpeg_current OUTPUT_QUIET ERROR_QUIET)
if(NOT ct_ffmpeg_current EQUAL 0)
    message(STATUS "Building FFmpeg for Android into ${ct_ffmpeg_dir} (once; a few minutes)")
    execute_process(COMMAND ${CMAKE_COMMAND} -E env ANDROID_NDK_ROOT=${CMAKE_ANDROID_NDK}
            ${Python3_EXECUTABLE} ${KZ_ROOT}/tools/ffmpeg/kz-ffmpeg --out ${ct_ffmpeg_dir} --target android-arm64
        RESULT_VARIABLE ct_ffmpeg_built)
    if(NOT ct_ffmpeg_built EQUAL 0)
        message(FATAL_ERROR "kz-ffmpeg could not build FFmpeg for Android")
    endif()
endif()
set(KZ_FFMPEG_DIR ${ct_ffmpeg_dir} CACHE PATH "" FORCE)

# The Rust core's gameplay documents: KazarovRust.cmake finds them beside the submodule, which the
# patched copy in the build tree is not.
set(KAZAROV_GAMEPLAY_ROOT ${CMAKE_SOURCE_DIR}/port/gameplay)
set(Rust_CARGO_TARGET aarch64-linux-android CACHE STRING "" FORCE)
