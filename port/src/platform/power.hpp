// Device power draw for the overlay stats: the battery's current and voltage, whole-device
// watts (screen, CPU, GPU and radios together). Negative when the platform has handed over no
// reading; the Android app reads it (Power.java), everywhere else there is nothing to read.
#ifndef PLATFORM_POWER_HPP
#define PLATFORM_POWER_HPP

void  SetDeviceWatts(float watts);
float DeviceWatts();

#endif
