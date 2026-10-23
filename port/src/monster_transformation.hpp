#pragma once

#include "stubs/userdata.hpp"
#include "userdata.hpp"

// The PC settings on the Game page that retune Monica's monster transformations. Each rule takes the setting it
// follows, so the retail value comes back when the setting is off.
namespace monster_transformation {

// Share of Monica's absorption that every other unlocked badge also gains with game.shared_badge_exp.
inline constexpr float kSharedShare = 0.25f;

// Scale on a badge's base attack at a level: retail's 1 + 2 * level / 98, or with game.transformation_stats twice
// that growth, 1 + 4 * level / 98, five times the base at level 98.
float AttackScale(int level, bool stronger);

// A badge's defence from its own, the base and its degree bonus: that, or with game.transformation_stats Monica's
// defence when hers is higher.
float Defence(int own, int monica, bool stronger);

// Absorption the badge Monica has transformed into gains from a kill: retail's, or twice it with
// game.transformation_exp.
float Absorption(float amount, bool faster);

// Gives every unlocked badge but the one in use kSharedShare of an absorption amount, levelling each that fills.
void Share(CMonsterBox &box, const MOS_CHANGE_PARAM *active, float amount);

} // namespace monster_transformation
