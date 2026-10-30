# The disc extractor the port's data comes from; its header is also the tests' subject.
if(ANDROID)
    # No command-line tool on a phone: the app's setup screen calls the extractor (port/src/android).
    include(${KZ_ROOT}/cmake/KazarovRust.cmake)
else()
    add_subdirectory(${CMAKE_SOURCE_DIR}/tools/dc2data ${CMAKE_BINARY_DIR}/tools/dc2data)
endif()
