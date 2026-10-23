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
// left unchanged. The Spanish text of the Spheda lesson event (event/e300/e314/e314_5.txt) gets three
// mistranslated lines corrected, each found by its exact text.

namespace script_text {

struct Line {
    std::uint32_t push;   // file offset of the PUSH_CONST string instruction
    const char   *retail; // the text the instruction pushes on the disc
    const char   *text;   // the text it pushes after the fix
};

// One text replaced in a Latin-1 event message file; the retail text must occur exactly once.
struct Edit {
    const char *retail;
    const char *text;
};

// The lines of a script, or an empty span for one the fix leaves alone.
std::span<const Line> Find(std::string_view key);

// The edits of an event message file, or an empty span for one the fix leaves alone.
std::span<const Edit> Edits(std::string_view key);

// The bytes Patch appends to the script, for loaders that size the buffer first.
std::size_t Extra(std::string_view key);

// Writes the file's text and gives its new size, at most size plus Extra(key); size when the file is not
// one it knows or does not match. bytes must hold size plus Extra(key). An event text that gets shorter
// is zero-filled up to size.
std::size_t Patch(std::string_view key, unsigned char *bytes, std::size_t size);

} // namespace script_text
