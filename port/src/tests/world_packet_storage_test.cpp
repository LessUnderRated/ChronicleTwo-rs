#include <gtest/gtest.h>

#include <cstddef>
#include <limits>
#include <span>
#include <stdexcept>

#include "character.hpp"
#include "object/world/data_packets.hpp"
#include "platform/arena.hpp"

TEST(WorldPacketStorage, MapAndGeoramaLayoutsPreserveCharacterProducers) {
    static char root_key;
    mgCMemory   characters;
    characters.stSetBuffer(reinterpret_cast<u_long128 *>(ArenaBlock(&root_key, 256 * sizeof(u_long128))), 256);
    auto *prefix = characters.Alloc(64);
    ASSERT_NE(prefix, nullptr);
    mgCMemory model;
    model.stSetChildBuffer(characters, prefix, 64);
    auto *frame = dc2::memory::NewObject<mgCFrame>(model);
    ASSERT_NE(frame, nullptr);
    CCharacter2 character;
    character.CObjectFrame::frame = frame;
    ASSERT_TRUE(dc2::character::CaptureModelResources(character, model));
    characters.stSetLocked(true);
    const auto                    generation = dc2::memory::ArenaGeneration(characters);
    dc2::world::DataPacketStorage packets;

    auto ordinary = packets.Prepare(dc2::world::DataPacketMode::Map, characters, 80);
    EXPECT_TRUE(ordinary.changed);
    EXPECT_EQ(characters.stack_used, 80);
    EXPECT_NE(characters.lock, 0);
    EXPECT_EQ(dc2::memory::ArenaGeneration(characters), generation);
    ASSERT_TRUE(dc2::character::ResourcesLive(character));
    EXPECT_EQ(character.GetFrame(), frame);
    ASSERT_EQ(ordinary.buffers[0].stack_size, 70000);
    auto *packet = ordinary.buffers[0].Alloc(1);
    ASSERT_NE(packet, nullptr);
    const auto old_packet = dc2::memory::ArenaBuffer::Bind(ordinary.buffers[0],
                                                           std::span(reinterpret_cast<u8 *>(packet), sizeof(u_long128)));
    const auto packet_generation = dc2::memory::ArenaGeneration(ordinary.buffers[0]);
    auto       unchanged = packets.Prepare(dc2::world::DataPacketMode::Map, characters, 80);
    EXPECT_FALSE(unchanged.changed);
    EXPECT_EQ(dc2::memory::ArenaGeneration(unchanged.buffers[0]), packet_generation);
    EXPECT_FALSE(old_packet.Bytes().empty());

    auto georama = packets.Prepare(dc2::world::DataPacketMode::Georama, characters, 80);
    EXPECT_TRUE(georama.changed);
    EXPECT_EQ(georama.buffers[0].stack_size, 115000);
    EXPECT_TRUE(old_packet.Bytes().empty());
    EXPECT_EQ(characters.stack_used, 80);
    EXPECT_EQ(dc2::memory::ArenaGeneration(characters), generation);
    EXPECT_TRUE(dc2::character::ResourcesLive(character));

    model.stReset();
    EXPECT_FALSE(dc2::character::ResourcesLive(character));
}

TEST(WorldPacketStorage, InvalidPrefixLeavesCharacterAndPacketStorageUnchanged) {
    static char root_key;
    mgCMemory   characters;
    characters.stSetBuffer(reinterpret_cast<u_long128 *>(ArenaBlock(&root_key, 64 * sizeof(u_long128))), 64);
    ASSERT_NE(characters.Alloc(8), nullptr);
    characters.stSetLocked(true);
    const auto                    generation = dc2::memory::ArenaGeneration(characters);
    dc2::world::DataPacketStorage packets;
    auto                          prepared = packets.Prepare(dc2::world::DataPacketMode::Map, characters, 8);
    const auto                    packet_generation = dc2::memory::ArenaGeneration(prepared.buffers[0]);
    EXPECT_THROW(static_cast<void>(packets.Prepare(dc2::world::DataPacketMode::Georama, characters,
                                                   std::numeric_limits<std::size_t>::max())),
                 std::length_error);
    EXPECT_EQ(characters.stack_used, 8);
    EXPECT_NE(characters.lock, 0);
    EXPECT_EQ(dc2::memory::ArenaGeneration(characters), generation);
    EXPECT_EQ(dc2::memory::ArenaGeneration(prepared.buffers[0]), packet_generation);
}

TEST(WorldPacketStorage, BootstrapStorageDoesNotBorrowTheCharacterOrReadBuffer) {
    mgCMemory                     unbound;
    dc2::world::DataPacketStorage packets;
    auto                          prepared = packets.Prepare(dc2::world::DataPacketMode::Bootstrap, unbound, 0);
    EXPECT_TRUE(prepared.changed);
    EXPECT_EQ(unbound.stack, nullptr);
    EXPECT_EQ(unbound.stack_used, 0);
    for (auto &buffer : prepared.buffers) {
        EXPECT_EQ(buffer.stack_size, 5000);
        EXPECT_NE(buffer.Alloc(4999), nullptr);
    }
}

// The town loop starts on the bootstrap layout each time it is entered, after a battle or a dungeon too, and its next
// map jump needs the map layout again: the packet arenas grow back past the bootstrap extent they were last bound at.
TEST(WorldPacketStorage, ReenteringTheTownLoopThenJumpingBindsTheMapLayoutAgain) {
    static char root_key;
    mgCMemory   characters;
    characters.stSetBuffer(reinterpret_cast<u_long128 *>(ArenaBlock(&root_key, 64 * sizeof(u_long128))), 64);
    ASSERT_NE(characters.Alloc(8), nullptr);
    characters.stSetLocked(true);
    dc2::world::DataPacketStorage packets;

    ASSERT_TRUE(packets.Prepare(dc2::world::DataPacketMode::Bootstrap, characters, 8).changed);
    ASSERT_EQ(packets.Prepare(dc2::world::DataPacketMode::Map, characters, 8).buffers[0].stack_size, 70000);
    ASSERT_EQ(packets.Prepare(dc2::world::DataPacketMode::Bootstrap, characters, 8).buffers[0].stack_size, 5000);

    auto map = packets.Prepare(dc2::world::DataPacketMode::Map, characters, 8);
    EXPECT_TRUE(map.changed);
    ASSERT_EQ(map.buffers[0].stack_size, 70000);
    ASSERT_EQ(map.buffers[1].stack_size, 70000);
    EXPECT_NE(map.buffers[0].Alloc(69000), nullptr);

    ASSERT_EQ(packets.Prepare(dc2::world::DataPacketMode::Bootstrap, characters, 8).buffers[0].stack_size, 5000);
    auto georama = packets.Prepare(dc2::world::DataPacketMode::Georama, characters, 8);
    ASSERT_EQ(georama.buffers[0].stack_size, 115000);
    EXPECT_NE(georama.buffers[1].Alloc(114000), nullptr);
}
