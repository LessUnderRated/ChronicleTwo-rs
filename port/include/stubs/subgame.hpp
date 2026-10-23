#pragma once

// Expose the running sub-game type, which SubGameRunning reads, so tests can stand a sub-game up without starting one.
extern int SubGame asm("SubGame_Type");
