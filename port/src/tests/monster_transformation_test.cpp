#include <gtest/gtest.h>

#include <filesystem>
#include <format>
#include <memory>

#include "mainloop_port.hpp"
#include "monster_transformation.hpp"
#include "platform/config.hpp"
#include "platform/paths.hpp"
#include "platform_fixture.hpp"
#include "savedata.hpp"
#include "userdata.hpp"

namespace mt = monster_transformation;

namespace {

// mos_henge_param's row for monster 1: base attack 22, defence 12.
constexpr int kMonster = 1;

MOS_CHANGE_PARAM Badge(int level) {
    MOS_CHANGE_PARAM badge{};
    badge.monster_id = kMonster;
    badge.level = static_cast<s16>(level);
    return badge;
}

// Turns every Extras setting on or off in an isolated save root, with a save data of its own.
class TransformationSettings : public testing::Test {
protected:
    std::filesystem::path      root = std::filesystem::temp_directory_path() / std::format("dc2_transformation_{}", dc::test::ProcessId());
    std::unique_ptr<CSaveData> save = std::make_unique<CSaveData>();
    CSaveData                 *previous = PortActiveSaveData;

    void SetUp() override {
        PathsSetSaveRoot(root / "save");
        PortActiveSaveData = save.get();
        save->user_data.monster_box.Initialize();
    }

    void TearDown() override {
        ConfigChange(Config{});
        PortActiveSaveData = previous;
        std::filesystem::remove_all(root);
    }

    void Set(bool on) {
        Config config;
        config.transformation_stats = on;
        config.transformation_exp = on;
        config.shared_badge_exp = on;
        ASSERT_TRUE(ConfigChange(config));
    }
};

} // namespace

TEST(MonsterTransformation, SettingsOffKeepRetailNumbers) {
    for (int level : {0, 10, 49, 98}) {
        EXPECT_EQ(mt::AttackScale(level, false), 1.0f + 2.0f * ((float) level / 98.0f)) << level;
    }
    EXPECT_EQ(mt::Defence(42, 128, false), 42.0f);
    EXPECT_EQ(mt::Absorption(30.0f, false), 30.0f);
}

TEST(MonsterTransformation, StrongerStatsGrowAttackTwiceAsFastAndTakeMonicasDefenceWhenHigher) {
    // Retail adds twice the base by level 98; twice as fast adds four times it.
    EXPECT_FLOAT_EQ(mt::AttackScale(0, true), 1.0f);
    EXPECT_FLOAT_EQ(mt::AttackScale(49, true), 3.0f);
    EXPECT_FLOAT_EQ(mt::AttackScale(98, true), 5.0f);
    EXPECT_FLOAT_EQ(mt::Defence(42, 60, true), 60.0f);
    EXPECT_FLOAT_EQ(mt::Defence(42, 20, true), 42.0f);
}

TEST(MonsterTransformation, FasterExpDoublesTheAbsorption) { EXPECT_FLOAT_EQ(mt::Absorption(30.0f, true), 60.0f); }

TEST(MonsterTransformation, ShareGivesAQuarterToOtherUnlockedBadgesAndLevelsThoseThatFill) {
    auto box = std::make_unique<CMonsterBox>();
    box->Initialize();
    for (int badge : {0, 1, 2}) {
        box->monster[badge].enable = 1;
    }
    mt::Share(*box, &box->monster[1], 40.0f);
    EXPECT_FLOAT_EQ(box->monster[0].abs.now, 10.0f);
    EXPECT_FLOAT_EQ(box->monster[1].abs.now, 0.0f);
    EXPECT_FLOAT_EQ(box->monster[2].abs.now, 10.0f);
    EXPECT_FLOAT_EQ(box->monster[3].abs.now, 0.0f);
    // Without a badge in use every unlocked badge shares; a full gauge levels the badge up.
    mt::Share(*box, nullptr, 360.0f);
    EXPECT_EQ(box->monster[0].level, 1);
    EXPECT_FLOAT_EQ(box->monster[0].abs.now, 0.0f);
    EXPECT_EQ(box->monster[1].level, 0);
    EXPECT_FLOAT_EQ(box->monster[1].abs.now, 90.0f);
    EXPECT_EQ(box->monster[3].level, 0);
}

TEST_F(TransformationSettings, BadgeStatsFollowTheSetting) {
    auto  badge = Badge(98);
    auto &monica = save->user_data.chara_data[USER_CHARA_MONICA];
    monica.defence = 60;
    Set(false);
    EXPECT_EQ(badge.GetAttackVol(-1), 66);
    EXPECT_EQ(badge.GetDefenceVol(-1), 42);
    Set(true);
    EXPECT_EQ(badge.GetAttackVol(-1), 110);
    EXPECT_EQ(badge.GetDefenceVol(-1), 60);
    // The form's own defence, 12 and 30 for its degree, stays when Monica's is lower.
    monica.defence = 20;
    EXPECT_EQ(badge.GetDefenceVol(-1), 42);
}

TEST_F(TransformationSettings, SeamsFollowTheSetting) {
    Set(true);
    EXPECT_FLOAT_EQ(PortTransformationAbs(30.0f), 60.0f);
    Set(false);
    EXPECT_FLOAT_EQ(PortTransformationAbs(30.0f), 30.0f);
}

TEST_F(TransformationSettings, MonicasAbsorptionSharesOnlyWithTheSettingOn) {
    auto &box = save->user_data.monster_box;
    box.monster[0].enable = 1;
    box.monster[1].enable = 1;
    CBattleCharaInfo monica;
    monica.chr_no = USER_CHARA_MONICA;
    monica.chara_type = BATTLE_CHARA_HUMAN;
    Set(false);
    PortShareTransformationAbs(&monica, 40.0f);
    EXPECT_FLOAT_EQ(box.monster[0].abs.now, 0.0f);
    Set(true);
    PortShareTransformationAbs(&monica, 40.0f);
    EXPECT_FLOAT_EQ(box.monster[0].abs.now, 10.0f);
    EXPECT_FLOAT_EQ(box.monster[1].abs.now, 10.0f);
    // A transformed Monica shares with the other badges, not the one she is.
    CBattleCharaInfo transformed;
    transformed.chr_no = USER_CHARA_MONSTER;
    transformed.chara_type = BATTLE_CHARA_MONSTER;
    transformed.chara_data.monster = &box.monster[0];
    PortShareTransformationAbs(&transformed, 40.0f);
    EXPECT_FLOAT_EQ(box.monster[0].abs.now, 10.0f);
    EXPECT_FLOAT_EQ(box.monster[1].abs.now, 20.0f);
    // Max's absorption is his own.
    CBattleCharaInfo max;
    max.chr_no = USER_CHARA_MAX;
    max.chara_type = BATTLE_CHARA_HUMAN;
    PortShareTransformationAbs(&max, 40.0f);
    EXPECT_FLOAT_EQ(box.monster[1].abs.now, 20.0f);
}
