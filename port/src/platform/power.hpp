// Device power draw for the overlay stats: the battery's current and voltage, whole-device
// watts (screen, CPU, GPU and radios together). Negative when the platform has no readable
// source; on Android that is a sysfs read, everywhere else there is nothing to read.
#ifndef PLATFORM_POWER_HPP
#define PLATFORM_POWER_HPP

float DeviceWatts();

#endif
