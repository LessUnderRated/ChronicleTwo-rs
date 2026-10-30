#include "common.h"

#include <gtest/gtest.h>

#include <array>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

#include "mapsky.hpp"
#include "mg_memory.hpp"
#include "mg_texture.hpp"
#include "mglib.hpp"
#include "scene.hpp"
#include "scenesnd.hpp"

namespace {

constexpr int kTextureCount = 64;
constexpr int kBlockCount = 8;

/**
 * The scene's sky slot against a texture manager over its own arena and a sky loaded from a
 * separate, transient arena, the way sceneload loads a map's sky from the map's stack.
 */
class SceneSkyRetirement : public testing::Test {
protected:
    void SetUp() override {
        table_storage.assign(kStorageQuads, u_long128{});
        table_memory.stSetBuffer(table_storage.data(), static_cast<int>(table_storage.size()));
        mgTexManager.SetTableBuffer(kTextureCount, kBlockCount, &table_memory);
        mgTexManager.Initialize(0x1000, -1);
        arena_storage.fill(u_long128{});
        arena.stSetBuffer(arena_storage.data(), static_cast<int>(arena_storage.size()));
    }

    void TearDown() override {
        mgTexManager.Initialize(0x1000, -1);
    }

    /**
     * A sky in the slot, recorded the way the map load does: producer, texture block range and all.
     */
    CSceneSky &AssignSky(int base_block) {
        sky = dc2::memory::NewObject<CMapSky>(arena);
        sky->Initialize();
        CSceneSky &slot = scene.sky[0];
        EXPECT_EQ(slot.AssignData(sky, nullptr), 1);
        slot.stack = &arena;
        slot.BindResources(dc2::memory::ArenaLifetime::Capture(arena));
        slot.tex_block = base_block;
        slot.tex_block_num = 4;
        return slot;
    }

    static constexpr std::size_t kStorageQuads = 4096;
    static constexpr std::size_t kArenaQuads = 1024;

    std::vector<u_long128>    table_storage;
    mgCMemory                 table_memory;
    std::array<u_long128, 16> pixels{};
    std::array<u_long128, kArenaQuads> arena_storage{};
    mgCMemory                 arena;
    CMapSky                  *sky = nullptr;
    CScene                    scene;
};

TEST_F(SceneSkyRetirement, DeleteSkyReleasesTheSkysTextureBlocks) {
    AssignSky(3);
    std::string owned = "sky_band";
    std::array<u_long128 *, MG_TEXTURE_LEVEL_MAX> levels{};
    levels[0] = pixels.data();
    ASSERT_NE(mgTexManager.EnterTexture(3, owned.data(), levels.data(), 8, 8, 32, nullptr, 0, 0), nullptr);
    ASSERT_NE(mgTexManager.GetTexture(owned.data(), 3), nullptr);

    EXPECT_EQ(scene.DeleteSky(0), 1);
    EXPECT_EQ(scene.sky[0].sky, nullptr);
    EXPECT_EQ(scene.sky[0].tex_block, -1);
    EXPECT_EQ(scene.sky[0].tex_block_num, 0);
    EXPECT_EQ(mgTexManager.GetTexture(owned.data(), 3), nullptr);
}

TEST_F(SceneSkyRetirement, ArenaResetRetiresTheSkySlotWithItsTextureBlocks) {
    AssignSky(5);
    std::string owned = "sky_band";
    std::array<u_long128 *, MG_TEXTURE_LEVEL_MAX> levels{};
    levels[0] = pixels.data();
    ASSERT_NE(mgTexManager.EnterTexture(5, owned.data(), levels.data(), 8, 8, 32, nullptr, 0, 0), nullptr);

    scene.stack[1] = &arena;
    scene.stack_num = 2;
    scene.ClearStack(1);

    EXPECT_EQ(scene.sky[0].sky, nullptr);
    EXPECT_EQ(scene.sky[0].tex_block, -1);
    EXPECT_EQ(mgTexManager.GetTexture(owned.data(), 5), nullptr);
}

} // namespace
