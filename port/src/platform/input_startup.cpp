#include "input_startup.hpp"

#include "platform/input.hpp"
#include "platform/settings.hpp"

void InputApplyGameConfig(const HostSettings &settings) {
    auto input_settings = settings;
    // The game's right-stick convention is the horizontal mirror of the host's, so the vertical
    // axis is flipped here once; the horizontal flip was dropped because the camera's yaw read
    // backwards with it (the owner's preference). The setting still means "invert" either way,
    // and it only ever touches the right stick.
    input_settings.stick_invert_x = settings.stick_invert_x;
    input_settings.stick_invert_y = !settings.stick_invert_y;
    InputApplyConfig(input_settings);
}

void InputInitForRun(bool devices_closed) {
    if (!devices_closed) {
        InputInit();
    }
    InputApplyGameConfig(SettingsGet());
}
