#include "common.h"

#include <algorithm>

#include "monster_transformation.hpp"
#include "platform/config.hpp"

namespace monster_transformation {

float AttackScale(int level, bool stronger) {
    // Retail's GetAttackVol triples the base by level 98.
    const float growth = stronger ? 4.0f : 2.0f;
    return 1.0f + growth * ((float) level / 98.0f);
}

float Defence(int own, int monica, bool stronger) { return (float) (stronger ? std::max(own, monica) : own); }

float Absorption(float amount, bool faster) { return faster ? 2.0f * amount : amount; }

void Share(CMonsterBox &box, const MOS_CHANGE_PARAM *active, float amount) {
    const float share = kSharedShare * amount;
    for (auto &badge : box.monster) {
        if (!badge.enable || &badge == active) {
            continue;
        }
        badge.abs.AddPoint(share);
        badge.LevelUp();
    }
}

} // namespace monster_transformation

float PortTransformationAttackScale(int level) { return monster_transformation::AttackScale(level, ConfigGet().transformation_stats); }

float PortTransformationDefence(int own) {
    CUserDataManager *user = GetUserDataMan();
    CHARA_DATA       *monica = user != nullptr ? user->GetCharaDataPtr(USER_CHARA_MONICA) : nullptr;
    return monster_transformation::Defence(own, monica != nullptr ? monica->defence : 0, ConfigGet().transformation_stats);
}

float PortTransformationAbs(float amount) { return monster_transformation::Absorption(amount, ConfigGet().transformation_exp); }

void PortShareTransformationAbs(CBattleCharaInfo *info, float amount) {
    if (!ConfigGet().shared_badge_exp || info == nullptr || amount <= 0.0f) {
        return;
    }
    const bool transformed = info->chara_type == BATTLE_CHARA_MONSTER;
    if (info->chr_no != USER_CHARA_MONICA && !transformed) {
        return;
    }
    CUserDataManager *user = GetUserDataMan();
    if (user == nullptr) {
        return;
    }
    monster_transformation::Share(user->monster_box, transformed ? info->chara_data.monster : nullptr, amount);
}
