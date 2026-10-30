#include <SDL3/SDL_platform.h>

#ifdef SDL_PLATFORM_ANDROID

#include "kazarov_bridge/rust/lib.h"

#include <android/log.h>
#include <fcntl.h>
#include <jni.h>
#include <unistd.h>

#include <SDL3/SDL_system.h>
#include <SDL3/SDL_timer.h>

#include <algorithm>
#include <atomic>
#include <cstdio>
#include <cstdlib>
#include <exception>
#include <filesystem>
#include <string>
#include <thread>
#include <utility>

#include "android/bridge.hpp"
#include "options/rows.hpp"
#include "platform/audio.hpp"
#include "platform/clock.hpp"
#include "platform/config.hpp"
#include "platform/firstrun.hpp"
#include "platform/input.hpp"

namespace fs = std::filesystem;

namespace ct::android {

namespace {

constexpr const char *kTag = "ChronicleTwo";

std::atomic<bool>     g_paused{false};
std::atomic<unsigned> g_speed{1};

// stdout and stderr, which Android discards. stderr goes straight to logs/stderr.log in the game root: a Rust panic,
// an allocation failure and a C++ terminate all write their last words there just before they abort, and a file
// write is down before the abort, where a pipe's reader thread may never get to it. stdout goes to logcat.
void RedirectStdio(const fs::path &root) {
    static bool started = false;
    if (started) {
        return;
    }
    started = true;
    std::error_code error;
    fs::create_directories(root / "logs", error);
    const fs::path stderr_log = root / "logs" / "stderr.log";
    // One run's worth, or a few: a file past 1 MiB starts again.
    if (fs::file_size(stderr_log, error) > (1u << 20)) {
        fs::remove(stderr_log, error);
    }
    const int log_fd = open(stderr_log.c_str(), O_WRONLY | O_CREAT | O_APPEND | O_CLOEXEC, 0644);
    if (log_fd >= 0) {
        dup2(log_fd, STDERR_FILENO);
        close(log_fd);
        std::setvbuf(stderr, nullptr, _IONBF, 0);
        std::fprintf(stderr, "--- process %d\n", static_cast<int>(getpid()));
    }
    int pipe_fds[2];
    if (pipe(pipe_fds) != 0) {
        return;
    }
    dup2(pipe_fds[1], STDOUT_FILENO);
    if (log_fd < 0) {
        dup2(pipe_fds[1], STDERR_FILENO);
    }
    close(pipe_fds[1]);
    std::setvbuf(stdout, nullptr, _IOLBF, 0);
    std::thread([fd = pipe_fds[0]] {
        std::string line;
        char        buffer[1024];
        for (;;) {
            const ssize_t count = read(fd, buffer, sizeof buffer);
            if (count <= 0) {
                break;
            }
            for (ssize_t i = 0; i < count; ++i) {
                if (buffer[i] == '\n') {
                    __android_log_write(ANDROID_LOG_INFO, kTag, line.c_str());
                    line.clear();
                } else {
                    line.push_back(buffer[i]);
                }
            }
        }
    }).detach();
}

fs::path InternalRoot() {
    const char *path = SDL_GetAndroidInternalStoragePath();
    return path != nullptr ? fs::path(path) : fs::current_path();
}

// What the game and the Rust core read from the environment: HOME for per-user paths, TMPDIR for the
// extractor's spill file (Android's default, /data/local/tmp, is not the app's), and the gameplay seed
// the APK carries, installed beside the data by the app (SetupActivity).
void SetEnvironment(const fs::path &root) {
    std::error_code error;
    fs::create_directories(root / "tmp", error);
    setenv("HOME", root.c_str(), 1);
    setenv("TMPDIR", (root / "tmp").c_str(), 1);
    setenv("KAZAROV_GAMEPLAY_SEED", (root / "assets" / "data.zip").c_str(), 1);
    // The extractor sizes its in-memory queue from the memory it is told is free: on Android the kernel's free pages,
    // gigabytes on a large phone, so it held thousands of large buffers at once. Android's allocator maps each of
    // those on its own, and the process ran out of mappings ("memory allocation of 632 bytes failed") converting
    // assets. An iPhone's budget, which the iOS port extracts within, keeps the queue small.
    setenv("DC2DATA_AVAILABLE_MEMORY_MB", "3072", 0);
}

const options::Row *RowAt(int page, int row) {
    const auto pages = options::Pages();
    if (page < 0 || std::cmp_greater_equal(page, pages.size()) || row < 0 ||
        std::cmp_greater_equal(row, pages[page].rows.size())) {
        return nullptr;
    }
    return &pages[page].rows[row];
}

std::string Utf8(JNIEnv *env, jstring text) {
    if (text == nullptr) {
        return {};
    }
    const char *chars = env->GetStringUTFChars(text, nullptr);
    std::string out = chars != nullptr ? chars : "";
    env->ReleaseStringUTFChars(text, chars);
    return out;
}

jstring Java(JNIEnv *env, const std::string &text) { return env->NewStringUTF(text.c_str()); }

// ---- Native's methods (android/app/.../Native.java) ------------------------------------------------

void JNICALL SetEnvironmentFor(JNIEnv *env, jclass, jstring root) {
    const fs::path game_root = Utf8(env, root);
    RedirectStdio(game_root);
    SetEnvironment(game_root);
}

jboolean JNICALL DataMissing(JNIEnv *env, jclass, jstring root) {
    return FirstRunDataMissing(fs::path(Utf8(env, root)) / "data") ? JNI_TRUE : JNI_FALSE;
}

// Extracts the disc at image for the game root root, on the calling (background) thread; null, or why it failed.
// The extractor's output is <game-root>/data; data.zip and data.json go beside it.
jstring JNICALL Extract(JNIEnv *env, jclass, jstring image, jstring root) {
    const std::string source = Utf8(env, image);
    const fs::path    data = fs::path(Utf8(env, root)) / "data";
    try {
        // Two jobs at most: the extractor's working set grows with each, and a phone's memory runs out first.
        const unsigned jobs = std::clamp(std::thread::hardware_concurrency(), 1u, 2u);
        std::fprintf(stderr, "extract: %s into %s, %u jobs\n", source.c_str(), data.c_str(), jobs);
        kazarov::extract_tracked(source, data.string(), jobs);
        std::fprintf(stderr, "extract: done\n");
        if (FirstRunDataMissing(data)) {
            return Java(env, "The extraction finished without current game data.");
        }
        return nullptr;
    } catch (const std::exception &error) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "extraction failed: %s", error.what());
        std::fprintf(stderr, "extract: failed: %s\n", error.what());
        return Java(env, error.what());
    }
}

jfloat JNICALL ExtractFraction(JNIEnv *, jclass) {
    return std::clamp(kazarov::extract_status().fraction, 0.0f, 1.0f);
}

// Polled by the setup screen; each new stage also goes to stderr.log, so a crash shows how far it got.
jstring JNICALL ExtractStage(JNIEnv *env, jclass) {
    static std::string last;
    const auto         status = kazarov::extract_status();
    std::string        stage(status.stage);
    if (stage != last) {
        last = stage;
        std::fprintf(stderr, "extract: %3.0f%% %s\n", status.fraction * 100.0, stage.c_str());
    }
    return Java(env, stage);
}

void JNICALL SetTouch(JNIEnv *, jclass, jint buttons, jfloat lx, jfloat ly, jfloat rx, jfloat ry) {
    InputSetTouchOverlay({.buttons = static_cast<std::uint16_t>(buttons), .left_x = lx, .left_y = ly, .right_x = rx,
                          .right_y = ry});
}

jboolean JNICALL TouchVisible(JNIEnv *, jclass) { return InputTouchOverlayVisible() ? JNI_TRUE : JNI_FALSE; }

// The libpad bit of each on-screen button, in TouchOverlay.java's order: Up, Down, Left, Right, Cross,
// Circle, Square, Triangle, L1, R1, L2, R2, Select, Start, L3, R3.
jint JNICALL ButtonBit(JNIEnv *, jclass, jint index) {
    static constexpr std::uint16_t kButtons[] = {kInputUp,     kInputDown,     kInputLeft,   kInputRight,
                                                 kInputCross,  kInputCircle,   kInputSquare, kInputTriangle,
                                                 kInputL1,     kInputR1,       kInputL2,     kInputR2,
                                                 kInputSelect, kInputStart,    kInputL3,     kInputR3};
    return index >= 0 && index < static_cast<jint>(std::size(kButtons)) ? kButtons[index] : 0;
}

void JNICALL SetPaused(JNIEnv *, jclass, jboolean paused) { g_paused = paused == JNI_TRUE; }

void JNICALL SetSpeed(JNIEnv *, jclass, jint speed) { g_speed = static_cast<unsigned>(std::clamp(speed, 1, 2)); }

jint JNICALL Speed(JNIEnv *, jclass) { return static_cast<jint>(g_speed.load()); }

// The game's own Options pages (options::Pages), as the iOS launcher shows them.
jint JNICALL SettingsPageCount(JNIEnv *, jclass) { return static_cast<jint>(options::Pages().size()); }

jstring JNICALL SettingsPageName(JNIEnv *env, jclass, jint page) {
    const auto pages = options::Pages();
    return Java(env, page >= 0 && std::cmp_less(page, pages.size()) ? std::string(pages[page].name) : "");
}

jint JNICALL SettingsRowCount(JNIEnv *, jclass, jint page) {
    const auto pages = options::Pages();
    return page >= 0 && std::cmp_less(page, pages.size()) ? static_cast<jint>(pages[page].rows.size()) : 0;
}

// Rows the app can step: with a value and no binding, since bindings wait for a key in the game.
jboolean JNICALL SettingsRowSteppable(JNIEnv *, jclass, jint page, jint row) {
    const options::Row *entry = RowAt(page, row);
    return entry != nullptr && entry->step && entry->action.empty() ? JNI_TRUE : JNI_FALSE;
}

jstring JNICALL SettingsRowLabel(JNIEnv *env, jclass, jint page, jint row) {
    const options::Row *entry = RowAt(page, row);
    return Java(env, entry != nullptr ? std::string(entry->label) : "");
}

jstring JNICALL SettingsRowHelp(JNIEnv *env, jclass, jint page, jint row) {
    const options::Row *entry = RowAt(page, row);
    return Java(env, entry != nullptr ? std::string(entry->help) : "");
}

jstring JNICALL SettingsRowValue(JNIEnv *env, jclass, jint page, jint row) {
    const options::Row *entry = RowAt(page, row);
    return Java(env, entry != nullptr && entry->value ? entry->value(ConfigGet()) : "");
}

// Steps the row as Left (-1) and Right (1) do in the game and saves config.json: 0 unchanged, 1 saved,
// 2 changed but not saved. Called while the game is paused (the menu is open), so between its ticks.
jint JNICALL SettingsStep(JNIEnv *, jclass, jint page, jint row, jint direction) {
    const options::Row *entry = RowAt(page, row);
    Config              config = ConfigGet();
    if (entry == nullptr || !options::StepRow(*entry, config, direction)) {
        return 0;
    }
    return ConfigChange(config) ? 1 : 2;
}

JNINativeMethod Method(const char *name, const char *signature, void *function) {
    return {const_cast<char *>(name), const_cast<char *>(signature), function};
}

} // namespace

std::vector<std::string> GameArguments() {
    const fs::path root = InternalRoot();
    RedirectStdio(root);
    SetEnvironment(root);
    std::error_code error;
    fs::current_path(root, error);
    // argv[0] names the root, where PathsExecutable looks for scripts/ and glyphs/ (Kazarov's paths.cpp).
    return {(root / "darkchronicle").string(), "--run-dir", root.string()};
}

void Pump() {
    if (g_paused) {
        // The game holds still under the app's menu: no ticks and no sound, and the clock starts again from
        // where it is, so the time paused is not caught up.
        AudioOutputPause(true);
        while (g_paused) {
            SDL_Delay(20);
        }
        AudioOutputPause(false);
        ClockSetTickRate(ClockTickRate());
    }
    const double rate = kConfigTickRateDefault * g_speed.load();
    if (ClockTickRate() != rate) {
        ClockSetTickRate(rate);
    }
}

} // namespace ct::android

extern "C" JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm, void *) {
    using namespace ct::android;
    JNIEnv *env = nullptr;
    if (vm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_6) != JNI_OK) {
        return JNI_VERSION_1_6;
    }
    const JNINativeMethod methods[] = {
        Method("setEnvironment", "(Ljava/lang/String;)V", reinterpret_cast<void *>(SetEnvironmentFor)),
        Method("dataMissing", "(Ljava/lang/String;)Z", reinterpret_cast<void *>(DataMissing)),
        Method("extract", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", reinterpret_cast<void *>(Extract)),
        Method("extractFraction", "()F", reinterpret_cast<void *>(ExtractFraction)),
        Method("extractStage", "()Ljava/lang/String;", reinterpret_cast<void *>(ExtractStage)),
        Method("setTouch", "(IFFFF)V", reinterpret_cast<void *>(SetTouch)),
        Method("touchVisible", "()Z", reinterpret_cast<void *>(TouchVisible)),
        Method("buttonBit", "(I)I", reinterpret_cast<void *>(ButtonBit)),
        Method("setPaused", "(Z)V", reinterpret_cast<void *>(SetPaused)),
        Method("setSpeed", "(I)V", reinterpret_cast<void *>(SetSpeed)),
        Method("speed", "()I", reinterpret_cast<void *>(Speed)),
        Method("settingsPageCount", "()I", reinterpret_cast<void *>(SettingsPageCount)),
        Method("settingsPageName", "(I)Ljava/lang/String;", reinterpret_cast<void *>(SettingsPageName)),
        Method("settingsRowCount", "(I)I", reinterpret_cast<void *>(SettingsRowCount)),
        Method("settingsRowSteppable", "(II)Z", reinterpret_cast<void *>(SettingsRowSteppable)),
        Method("settingsRowLabel", "(II)Ljava/lang/String;", reinterpret_cast<void *>(SettingsRowLabel)),
        Method("settingsRowHelp", "(II)Ljava/lang/String;", reinterpret_cast<void *>(SettingsRowHelp)),
        Method("settingsRowValue", "(II)Ljava/lang/String;", reinterpret_cast<void *>(SettingsRowValue)),
        Method("settingsStep", "(III)I", reinterpret_cast<void *>(SettingsStep)),
    };
    jclass native = env->FindClass("io/github/lessunderrated/chronicletwo/Native");
    if (native == nullptr || env->RegisterNatives(native, methods, std::size(methods)) != JNI_OK) {
        env->ExceptionClear();
        __android_log_write(ANDROID_LOG_ERROR, kTag, "registering Native's methods failed");
    }
    return JNI_VERSION_1_6;
}

#endif
