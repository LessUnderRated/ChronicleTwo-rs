#include "platform/power.hpp"

#include <chrono>
#include <cmath>
#include <cstdio>

#ifdef __ANDROID__
#include <jni.h>
#include <SDL3/SDL_system.h>
#endif

// Whole-device power draw from the battery, for the overlay stats. The sysfs battery node is
// SELinux-blocked for applications on modern Android, so the Android path goes through the
// official BatteryManager (BATTERY_PROPERTY_CURRENT_NOW, microamps) and the sticky
// ACTION_BATTERY_CHANGED broadcast (voltage, millivolts). Negative when the platform offers
// nothing readable.
//
// JNI discipline: every call that can throw is followed by an exception check before anything
// else touches the environment — an uncleared pending exception makes ART abort the process.
// Classes, strings and method ids are cached in global refs after the first walk; a failing
// lookup puts the reader on a cooldown instead of aborting.
float DeviceWatts() {
#ifndef __ANDROID__
    return -1.0f;
#else
    struct Cached {
        bool      ready = false;
        jclass    context_class = nullptr;          // global ref
        jmethodID get_service = nullptr;
        jobject   battery_service_name = nullptr;   // global ref
        jmethodID register_receiver = nullptr;
        jclass    filter_class = nullptr;           // global ref
        jmethodID filter_init = nullptr;
        jclass    manager_class = nullptr;          // global ref
        jfieldID  current_now_field = nullptr;
        jmethodID get_int_property = nullptr;
        jmethodID get_int_extra = nullptr;
    };
    static Cached                    cached;
    static std::chrono::steady_clock::time_point cached_at{};
    static float cached_watts = -1.0f;
    static std::chrono::steady_clock::time_point broken_until{}; // a failed walk retries after a pause
    const auto   now = std::chrono::steady_clock::now();
    if (now < broken_until) {
        return -1.0f;
    }
    if (cached_watts >= 0.0f && now - cached_at < std::chrono::milliseconds(250)) {
        return cached_watts;
    }
    cached_watts = -1.0f;
    cached_at = now;

    auto fail = [&](bool fatal_lookups) {
        if (fatal_lookups) {
            // Lookup machinery broke: retry later, and drop the cache in case the classloader
            // context changed (a load screen can swap it).
            cached = {};
            broken_until = now + std::chrono::seconds(10);
        }
        return -1.0f;
    };
    auto pending = [&] {
        if (JNIEnv *env = static_cast<JNIEnv *>(SDL_GetAndroidJNIEnv())) {
            return env->ExceptionCheck() ? (env->ExceptionClear(), true) : false;
        }
        return true;
    };

    JNIEnv *env = static_cast<JNIEnv *>(SDL_GetAndroidJNIEnv());
    if (env == nullptr) {
        return fail(true);
    }
    jobject activity = static_cast<jobject>(SDL_GetAndroidActivity());
    if (activity == nullptr) {
        return fail(true);
    }
    auto release = [&](jobject a, jobject m, jobject f, jobject i) {
        if (a) env->DeleteLocalRef(a);
        if (m) env->DeleteLocalRef(m);
        if (f) env->DeleteLocalRef(f);
        if (i) env->DeleteLocalRef(i);
    };

    if (!cached.ready) {
        const jclass context_local = env->FindClass("android/content/Context");
        if (pending() || context_local == nullptr) {
            release(activity, nullptr, nullptr, nullptr);
            return fail(true);
        }
        cached.context_class = static_cast<jclass>(env->NewGlobalRef(context_local));
        env->DeleteLocalRef(context_local);
        cached.get_service = env->GetMethodID(cached.context_class, "getSystemService",
                                              "(Ljava/lang/String;)Ljava/lang/Object;");
        if (pending() || cached.get_service == nullptr) {
            release(activity, nullptr, nullptr, nullptr);
            return fail(true);
        }
        const jfieldID battery_service_field =
            env->GetStaticFieldID(cached.context_class, "BATTERY_SERVICE", "Ljava/lang/String;");
        if (pending() || battery_service_field == nullptr) {
            release(activity, nullptr, nullptr, nullptr);
            return fail(true);
        }
        const jobject name = env->GetStaticObjectField(cached.context_class, battery_service_field);
        if (pending() || name == nullptr) {
            release(activity, nullptr, nullptr, nullptr);
            return fail(true);
        }
        cached.battery_service_name = env->NewGlobalRef(name);
        env->DeleteLocalRef(name);
        cached.register_receiver =
            env->GetMethodID(cached.context_class, "registerReceiver",
                             "(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;");
        if (pending() || cached.register_receiver == nullptr) {
            release(activity, nullptr, nullptr, nullptr);
            return fail(true);
        }
        const jclass filter_local = env->FindClass("android/content/IntentFilter");
        if (pending() || filter_local == nullptr) {
            release(activity, nullptr, nullptr, nullptr);
            return fail(true);
        }
        cached.filter_class = static_cast<jclass>(env->NewGlobalRef(filter_local));
        env->DeleteLocalRef(filter_local);
        cached.filter_init = env->GetMethodID(cached.filter_class, "<init>", "(Ljava/lang/String;)V");
        if (pending() || cached.filter_init == nullptr) {
            release(activity, nullptr, nullptr, nullptr);
            return fail(true);
        }
        cached.ready = true;
    }

    jobject manager = env->CallObjectMethod(activity, cached.get_service, cached.battery_service_name);
    if (pending() || manager == nullptr) {
        release(activity, nullptr, nullptr, nullptr);
        return fail(true);
    }
    if (cached.manager_class == nullptr) {
        const jclass manager_local = env->GetObjectClass(manager);
        if (pending() || manager_local == nullptr) {
            release(activity, manager, nullptr, nullptr);
            return fail(true);
        }
        cached.manager_class = static_cast<jclass>(env->NewGlobalRef(manager_local));
        env->DeleteLocalRef(manager_local);
        cached.current_now_field =
            env->GetStaticFieldID(cached.manager_class, "BATTERY_PROPERTY_CURRENT_NOW", "I");
        cached.get_int_property = env->GetMethodID(cached.manager_class, "getIntProperty", "(I)I");
        const jclass intent_local = env->FindClass("android/content/Intent");
        if (pending()) {
            release(activity, manager, nullptr, nullptr);
            return fail(true);
        }
        if (intent_local != nullptr) {
            cached.get_int_extra = env->GetMethodID(intent_local, "getIntExtra", "(Ljava/lang/String;I)I");
            env->DeleteLocalRef(intent_local);
        }
        if (pending() || cached.current_now_field == nullptr || cached.get_int_property == nullptr ||
            cached.get_int_extra == nullptr) {
            release(activity, manager, nullptr, nullptr);
            return fail(true);
        }
    }
    const jint microamps = env->CallIntMethod(
        manager, cached.get_int_property,
        env->GetStaticIntField(cached.manager_class, cached.current_now_field));
    if (pending() || microamps == -2147483647 - 1) {
        // Integer.MIN_VALUE is the documented unsupported answer.
        release(activity, manager, nullptr, nullptr);
        return -1.0f;
    }

    jobject filter = env->NewObject(cached.filter_class, cached.filter_init,
                                    env->NewStringUTF("android.intent.action.BATTERY_CHANGED"));
    if (pending() || filter == nullptr) {
        release(activity, manager, nullptr, nullptr);
        return -1.0f;
    }
    jobject intent = env->CallObjectMethod(activity, cached.register_receiver, nullptr, filter);
    env->DeleteLocalRef(filter);
    if (pending() || intent == nullptr) {
        release(activity, manager, nullptr, nullptr);
        return -1.0f;
    }
    const jint millivolts =
        env->CallIntMethod(intent, cached.get_int_extra, env->NewStringUTF("voltage"), (jint)-1);
    release(activity, manager, nullptr, intent);
    if (pending() || millivolts <= 0) {
        return -1.0f;
    }

    // microamps/1000 (mA) x millivolts (mV) = microwatts.
    cached_watts = static_cast<float>(std::abs(microamps / 1000.0) * millivolts / 1.0e6);
    return cached_watts;
#endif
}
