// Loads libdarkchronicle.so with dlopen, as the app's activity does, and extracts a disc image through it with the
// app's settings (port/src/android/bridge.cpp): its workers, into <root>/data, the gameplay seed and temporary files
// where the app puts them.
//
//     load_extract <libdarkchronicle.so> <disc.iso> <root> <gameplay seed data.zip>
//
// Android's linker refuses some libraries only when they are loaded this way (initial-exec TLS, which the 0.1.5 build
// had), and the extractor runs on Android's own C library here, so this is the app's extraction short of the phone.
#include <dlfcn.h>
#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <string>
#include <sys/stat.h>
#include <thread>

#include "kazarov_bridge/rust/lib.h"

namespace {
// rust::Str's layout and calling convention (cxx keeps it trivially copyable so it passes in registers), without its
// out-of-line constructors, which live in the library this loads.
struct Str {
    const char *ptr;
    std::size_t len;
};
using ExtractTracked = kazarov::ExtractReport (*)(Str, Str, std::size_t);

int Mappings() {
    FILE *maps = std::fopen("/proc/self/maps", "r");
    if (!maps) {
        return -1;
    }
    int count = 0;
    char line[512];
    while (std::fgets(line, sizeof line, maps)) {
        count++;
    }
    std::fclose(maps);
    return count;
}
} // namespace

int main(int argc, char **argv) {
    if (argc != 5) {
        std::fprintf(stderr, "usage: %s <libdarkchronicle.so> <disc.iso> <root> <gameplay seed>\n", argv[0]);
        return 2;
    }
    const std::string root = argv[3];
    const std::string data = root + "/data";
    const std::string tmp = root + "/tmp";
    mkdir(root.c_str(), 0755);
    mkdir(tmp.c_str(), 0755);
    setenv("TMPDIR", tmp.c_str(), 1);
    setenv("KAZAROV_GAMEPLAY_SEED", argv[4], 1);
    setenv("DC2DATA_AVAILABLE_MEMORY_MB", "3072", 0);

    void *library = dlopen(argv[1], RTLD_NOW | RTLD_LOCAL);
    if (!library) {
        std::fprintf(stderr, "dlopen failed: %s\n", dlerror());
        return 1;
    }
    std::printf("loaded %s\n", argv[1]);
    auto extract = reinterpret_cast<ExtractTracked>(
        dlsym(library, "_ZN7kazarov15extract_trackedEN4rust10cxxbridge13StrES2_m"));
    if (!extract) {
        std::fprintf(stderr, "kazarov::extract_tracked not exported: %s\n", dlerror());
        return 1;
    }
    try {
        const unsigned jobs = std::clamp(std::thread::hardware_concurrency(), 1u, 2u);
        const kazarov::ExtractReport report =
            extract(Str{argv[2], std::strlen(argv[2])}, Str{data.data(), data.size()}, jobs);
        std::printf("extracted: %llu files, %llu bytes; %d mappings\n", static_cast<unsigned long long>(report.files),
                    static_cast<unsigned long long>(report.bytes), Mappings());
    } catch (const std::exception &error) {
        std::fprintf(stderr, "extract failed: %s\n", error.what());
        return 1;
    }
    struct stat zip{};
    if (stat((root + "/data.zip").c_str(), &zip) != 0 || zip.st_size == 0) {
        std::fprintf(stderr, "no data.zip in %s\n", root.c_str());
        return 1;
    }
    std::printf("data.zip: %lld bytes\n", static_cast<long long>(zip.st_size));
    return 0;
}
