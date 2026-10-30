#pragma once

#include <cstdlib>
#include <filesystem>

namespace dc2::testing {

/**
 * The directory holding the tests' fixture files. On-device runs cannot see the build machine's
 * paths, so they set CT_TEST_FIXTURES_DIR to where the fixtures were pushed; everything else
 * resolves them next to the test's own source file as before.
 */
inline std::filesystem::path FixtureDirectory(const char *fallback_source_file) {
    if (const char *override_dir = std::getenv("CT_TEST_FIXTURES_DIR")) {
        return std::filesystem::path(override_dir);
    }
    return std::filesystem::path(fallback_source_file).parent_path() / "fixtures";
}

} // namespace dc2::testing
