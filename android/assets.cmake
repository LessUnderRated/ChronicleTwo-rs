# Run after libdarkchronicle.so links (port/CMakeLists.txt): copies what the game reads beside it, the Luau scripts
# (scripts/), the button symbols (glyphs/) and the gameplay seed (assets/data.zip), from the build tree BUILD to OUT,
# which app/build.gradle.kts packs into the APK as assets. chronicletwo-assets.txt lists them, under a line of
# their hash: SetupActivity installs them into the app's storage when that line changes.

file(REMOVE_RECURSE ${OUT})
file(MAKE_DIRECTORY ${OUT})
foreach(directory scripts glyphs)
    file(COPY ${BUILD}/${directory} DESTINATION ${OUT})
endforeach()
file(MAKE_DIRECTORY ${OUT}/assets)
file(COPY ${BUILD}/assets/data.zip DESTINATION ${OUT}/assets)

file(GLOB_RECURSE files RELATIVE ${OUT} ${OUT}/*)
list(SORT files)
set(digests "")
foreach(f IN LISTS files)
    file(SHA256 ${OUT}/${f} hash)
    string(APPEND digests "${f} ${hash}\n")
endforeach()
string(SHA256 all "${digests}")
list(JOIN files "\n" listed)
file(WRITE ${OUT}/chronicletwo-assets.txt "# ${all}\n${listed}\n")
