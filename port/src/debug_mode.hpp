#pragma once

void DebugModeBoot(bool debug_mode);

// Pad 1 is not locked by the debug lock, so this works while pad 2 is locked.
bool DebugModeToggleChord(int pad1_held, int pad1_pressed);

// The pad 1 buttons the bound debug_menu key presses this tick of loop, or 0 to drop the press. Start+Select opens the
// title's debug menu. R3 opens the dungeon's or town's only while the player has control there, and closes that menu
// once it is open. Ordinary menus, events, sub-games, Spheda, a pad lock and other loops get nothing.
int DebugModeMenuButtons(int loop);

// Delivers a debug_menu key press for loop: turns DebugFlag on and presses DebugModeMenuButtons(loop) on pad 1 as a new
// press. A dropped press leaves DebugFlag and the pad alone. Returns whether the press was delivered.
bool DebugModeMenuKey(int loop);

// MainLoop reads the debug_menu key once a tick, but the host counts its presses whenever it polls input. A press made
// during a pause, a frame pause, a load or a mode change would otherwise reach whatever follows, so presses count only
// when they arrive within one ordinary tick.

// Takes the pending debug_menu presses at the start of the tick that begins on frame (mgPortFrameCount), as one press.
// They are dropped unless the previous tick ended on frame: any frame ended since then belongs to a wait.
bool DebugModeTakeMenuKey(int frame);
// Records the tick that began on begin_frame and ended on end_frame. A tick that ended more than its own frame waited
// inside, for a load, so the presses pending at the next take are dropped.
void DebugModeEndMenuKeyTick(int begin_frame, int end_frame);
// Drops the pending debug_menu presses and the last tick, for the end of a blocking wait or a mode change.
void DebugModeDiscardMenuKey();
