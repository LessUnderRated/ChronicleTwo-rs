# The disc extractor the port's data comes from; its header is also the tests' subject.
if(ANDROID)
    # No command-line tool on a phone: the app's setup screen calls the extractor (port/src/android).
    include(${KZ_ROOT}/cmake/KazarovRust.cmake)
    # The crates' C (zstd, cxx, the movie muxer) is built by the cc crate, which names the target without the API
    # level the NDK's clang requires. Flags given after its own --target name the level; the later one wins.
    set(ct_android_target "--target=aarch64-linux-android${ANDROID_PLATFORM_LEVEL}")
    corrosion_set_env_vars(kazarov_core
        "CFLAGS_aarch64_linux_android=${ct_android_target}"
        "CXXFLAGS_aarch64_linux_android=${ct_android_target}")
else()
    add_subdirectory(${CMAKE_SOURCE_DIR}/tools/dc2data ${CMAKE_BINARY_DIR}/tools/dc2data)
endif()
