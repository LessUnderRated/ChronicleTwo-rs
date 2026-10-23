#pragma once

#include <cstddef>
#include <cstdint>
#include <span>
#include <string_view>

// Load-time text for disc scripts (.stb) that the PAL release ships in the wrong language. The Spanish
// script of the map where Max learns Spheda (map/s/s17/s17_5.stb) is byte for byte the Italian one, so
// its tutorial, prompts and dialogue read in Italian. Each line names the PUSH_CONST string instruction
// that shows it, the retail text it must find there and the text that replaces it. A replacement that
// fits is written over the retail string; a longer one is appended after the script and the instruction
// is pointed at it, so the file grows by Extra(key). A script that does not show every retail line is
// left unchanged.

namespace script_text {

struct Line {
    std::uint32_t push;   // file offset of the PUSH_CONST string instruction
    const char   *retail; // the text the instruction pushes on the disc
    const char   *text;   // the text it pushes after the fix
};

// The lines of a script, or an empty span for one the fix leaves alone.
std::span<const Line> Find(std::string_view key);

// The bytes Patch appends to the script, for loaders that size the buffer first.
std::size_t Extra(std::string_view key);

// Writes the script's text and gives its new size: size plus Extra(key) when the fix applies, size when
// the script is not one it knows or does not match. bytes must hold size plus Extra(key).
std::size_t Patch(std::string_view key, unsigned char *bytes, std::size_t size);

} // namespace script_text
