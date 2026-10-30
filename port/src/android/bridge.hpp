#pragma once

// The Android port's native side: what its Java activities (android/app) call through JNI, and what the game
// asks of the app. The iOS port's Swift code has the same through ios/bridge.hpp.

#include <string>
#include <vector>

namespace ct::android {

// The game's command line in the app's internal storage, which is its game root (data.zip, saves/,
// scripts/, glyphs/). Also sets what the game and the Rust core read from the environment there.
std::vector<std::string> GameArguments();

// Between ticks on the game's thread: the app menu's pause, the speed toggle.
void Pump();

} // namespace ct::android
