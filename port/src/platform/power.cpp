#include "platform/power.hpp"

#include <atomic>
#include <cmath>

namespace {

// The latest reading the platform handed over; negative until one arrives.
std::atomic<float> device_watts{-1.0f};

} // namespace

// Android's app reads the battery's current and voltage on its main thread (Power.java) and hands the watts over
// here, so the game and render threads that draw the overlay never call into Java.
void SetDeviceWatts(float watts) {
    device_watts.store(std::isfinite(watts) ? watts : -1.0f, std::memory_order_relaxed);
}

float DeviceWatts() {
    return device_watts.load(std::memory_order_relaxed);
}
