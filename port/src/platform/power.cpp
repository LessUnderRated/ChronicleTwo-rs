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
float DeviceWatts() {
#ifndef __ANDROID__
    return -1.0f;
#else
    static std::chrono::steady_clock::time_point cached_at{};
    static float cached_watts = -1.0f;
    static std::chrono::steady_clock::time_point broken_until{}; // a failed JNI walk retries after a pause
    const auto   now = std::chrono::steady_clock::now();
    if (now < broken_until) {
        return -1.0f;
    }
    if (cached_watts >= 0.0f && now - cached_at < std::chrono::milliseconds(250)) {
        return cached_watts;
    }
    cached_watts = -1.0f;
    cached_at = now;

    JNIEnv *env = static_cast<JNIEnv *>(SDL_GetAndroidJNIEnv());
    if (env == nullptr) {
        broken_until = now + std::chrono::seconds(10);
        return -1.0f;
    }
    jobject activity = static_cast<jobject>(SDL_GetAndroidActivity());
    if (activity == nullptr) {
        broken_until = now + std::chrono::seconds(10);
        return -1.0f;
    }
    auto clear_if_pending = [&] {
        if (env->ExceptionCheck()) {
            env->ExceptionClear();
            return true;
        }
        return false;
    };

    // BatteryManager manager = (BatteryManager) context.getSystemService("battery");
    // int microamps = manager.getIntProperty(BATTERY_PROPERTY_CURRENT_NOW);
    jclass   context_class = env->FindClass("android/content/Context");
    jfieldID battery_service_field = env->GetStaticFieldID(context_class, "BATTERY_SERVICE", "Ljava/lang/String;");
    jobject  battery_service_name = env->GetStaticObjectField(context_class, battery_service_field);
    jmethodID get_service = env->GetMethodID(context_class, "getSystemService", "(Ljava/lang/String;)Ljava/lang/Object;");
    jobject   manager = get_service != nullptr ? env->CallObjectMethod(activity, get_service, battery_service_name)
                                                : nullptr;
    if (clear_if_pending() || manager == nullptr) {
        broken_until = now + std::chrono::seconds(10);
        return -1.0f;
    }
    jclass   manager_class = env->GetObjectClass(manager);
    jfieldID property_field = env->GetStaticFieldID(manager_class, "BATTERY_PROPERTY_CURRENT_NOW", "I");
    jmethodID get_int_property = env->GetMethodID(manager_class, "getIntProperty", "(I)I");
    if (property_field == nullptr || get_int_property == nullptr) {
        broken_until = now + std::chrono::seconds(10);
        return -1.0f;
    }
    const jint microamps = env->CallIntMethod(manager, get_int_property, env->GetStaticIntField(manager_class, property_field));
    if (clear_if_pending() || microamps == -2147483647 - 1) {
        // Integer.MIN_VALUE is the documented unsupported answer.
        return -1.0f;
    }

    // Intent battery = context.registerReceiver(null, new IntentFilter(ACTION_BATTERY_CHANGED));
    // int millivolts = battery.getIntExtra("voltage", -1);
    jclass   filter_class = env->FindClass("android/content/IntentFilter");
    jmethodID filter_init = env->GetMethodID(filter_class, "<init>", "(Ljava/lang/String;)V");
    jobject   filter = env->NewObject(filter_class, filter_init,
                                      env->NewStringUTF("android.intent.action.BATTERY_CHANGED"));
    jmethodID register_receiver = env->GetMethodID(
        context_class, "registerReceiver",
        "(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;");
    jobject intent = env->CallObjectMethod(activity, register_receiver, nullptr, filter);
    if (clear_if_pending() || intent == nullptr) {
        return -1.0f;
    }
    jmethodID get_int_extra = env->GetMethodID(env->GetObjectClass(intent), "getIntExtra", "(Ljava/lang/String;I)I");
    const jint millivolts = get_int_extra != nullptr
                                ? env->CallIntMethod(intent, get_int_extra, env->NewStringUTF("voltage"), (jint)-1)
                                : -1;
    if (clear_if_pending() || millivolts <= 0) {
        return -1.0f;
    }

    // microamps/1000 (mA) x millivolts (mV) = microwatts.
    cached_watts = static_cast<float>(std::abs(microamps / 1000.0) * millivolts / 1.0e6);
    return cached_watts;
#endif
}
