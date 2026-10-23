#include "script_text.hpp"

#include <array>
#include <cstring>
#include <mutex>
#include <optional>
#include <set>
#include <string>
#include <vector>

#include "log/log.hpp"
#include "script_timing.hpp"

namespace script_text {
namespace {

constexpr std::int32_t kOpPush = 3;   // RS_OP_PUSH_CONST
constexpr std::int32_t kConstStr = 3; // RS_CONST_STR: arg2 is the string's code-section offset
constexpr std::size_t kCodeField = 8; // RS_PROG_HEADER::code
constexpr std::size_t kInsnSize = 12; // vmcode_t {op, arg1, arg2}

// The Spanish text keeps the PAL Spanish names: Esfera, Esfeda, Baston Multiusos and the main menu's
// Ayuda. Lines 1, 3 and 4 take the Spheda courses' wording (map/d/d01/d01_sfida_5.stb), line 5 event e312's.
constexpr std::array<Line, 19> kS17Spanish{
    {
     {0xCDC4, "Si ferma con il pulsante (O).", "Se para con el bot[UNI00f3]n (O)."},
     {0x18A04, "Prepara il Ramo maneggevole.", "Equipa el Bast[UNI00f3]n Multiusos."},
     {0x1AB0C, "Questa [UNI00e8] l'ultima volta che potrai\navvicinare la Sphera.",
         "Esta es la [UNI00fa]ltima vez que\npodr[UNI00e1]s mover la Esfera hacia ti."},
     {0x1ABFC, "Avvicinare la Sphera?", "[UNI00bf]Acercar la Esfera?"},
     {0x2DB10, "Vedi se trovi un Ramo\nmaneggevole. Cos[UNI00ec], potr[UNI00f2]\nmostrarti come colpire la Sphera.",
         "Mira a ver si hay un palo por ah[UNI00ed]\ncerca. Despu[UNI00e9]s te ense[UNI00f1]ar[UNI00e9]\na golpear la Esfera."},
     {0x311D8, "S[UNI00ec]\nNo", "S[UNI00ed]\nNo"},
     {0x32560, "Come?\nVuoi rinunciare?", "[UNI00bf]C[UNI00f3]mo?\n[UNI00bf]Te rindes?"},
     {0x32620, "S[UNI00ec]\nNo", "S[UNI00ed]\nNo"},
     {0x32818, "Si.\nBuona fortuna, Max!", "S[UNI00ed].\n[UNI00a1]Buena suerte, Max!"},
     {0x33004, "Oh, che peccato!\nVuoi riprovare?", "[UNI00a1]Oh, qu[UNI00e9] pena!\n[UNI00bf]Quieres volver a intentarlo?"},
     {0x331CC, "S[UNI00ec]\nNo", "S[UNI00ed]\nNo"},
     {0x334FC, "Sei un disastro, Max!\nLascia fare a me!", "[UNI00a1]Eres un desastre, Max!\n[UNI00a1]D[UNI00e9]jame a m[UNI00ed]!"},
     {0x44190,
         "\"Tiro\"\n1) Mira con la levetta analogica sx\n2) Premi (O) per oscillare la mazza\n3) Premi ancora (O) per la potenza\n4) "
         "Premi (O) di nuovo per il tiro",
         "\"Lanzamiento\"\n1) Apunta con el joystick izquierdo\n2) Pulsa (O) para empezar el golpe\n3) Pulsa (O) de nuevo para la "
         "potencia\n4) Pulsa (O) otra vez para golpear"},
     {0x44220,
         "\"Zona d'Impatto\"\nLa barra rossa sotto l'indicatore\ndi potenza. Centrando la met[UNI00e0] della\nbarra, si ottiene un "
         "colpo forte.",
         "\"Zona de Impacto\"\nEs la barra roja bajo el indicador de\npotencia. Golpea en el centro de la\nZona de Impacto para un "
         "golpe fuerte."},
     {0x442B0, "Se colpisci da un punto esterno\nalla Zona d'Impatto, la Sphera\nvoler[UNI00e0] nella direzione sbagliata.",
         "Si golpeas fuera de la Zona de Impacto,\nla Esfera saldr[UNI00e1] volando en la\ndirecci[UNI00f3]n equivocada."},
     {0x44340,
         "\"Cambiamento Punto d'Impatto\"\nPer cambiare il punto d'impatto\ndella Sphera, punta la levetta\nanalogica sx in una "
         "direzione.<page>Modificando cos[UNI00ec] quanto segue:",
         "\"Cambiar el punto de impacto\"\nSi mantienes el joystick izquierdo en\nuna direcci[UNI00f3]n al golpear, cambiar[UNI00e1]s\nla "
         "parte de la Esfera que golpeas.<page>Esto produce los efectos siguientes:"},
     {0x443D0,
         "Su: Topspin per palla veloce.\nGi[UNI00f9]: Backspin per frenare palla.\nSx: Slice e deviazione a destra.\nDx: Hook e "
         "deviazione a sinistra.",
         "Arriba: liftado, rueda con facilidad.\nAbajo: cortado, frena con facilidad.\nIzq.: golpe que curva a la derecha.\nDcha.: golpe "
         "que curva a la izquierda."},
     {0x44460, "Se la Sphera finisce in un punto\nirraggiungibile, premi (#)per\navvicinare a te la Sphera.",
         "Si la Esfera cae en un lugar al que\nno puedes llegar, pulsa (#) para\nacercar la Esfera hacia ti."},
     {0x444F0, "[(!)]Spheda [UNI00e8] stato aggiunto alla sezione\n   Guida del Menu principale.",
         "[(!)]Esfeda se ha a[UNI00f1]adido a la secci[UNI00f3]n\n   Ayuda del men[UNI00fa] Principal."},
     }
};

// The Spanish jump gate menus (maps f04 and s30) put East and West on one line, "Puerta de salto Este --
// Oeste", so they list one destination fewer than the script offers: the last choice is blank and the
// ones after North take the player one destination further than they say. They get the English menu's
// lines, with the time gate named as the Spanish text names it elsewhere.
constexpr std::array<Line, 2> kF04Spanish{
    {
     {0x2CD20,
         "Selecciona Destino de la Puerta de salto\nPuerta de salto Norte\nPuerta de salto Este -- Oeste\nEnfrente de la Puerta de "
         "salto\nPuente de Paznos",
         "Selecciona Destino de la Puerta de salto\nPuerta de salto Norte\nPuerta de salto Este\nPuerta de salto Oeste\nEnfrente de "
         "la Puerta del tiempo\nPuente de Paznos"},
     {0x2CD98,
         "Selecciona Destino de la Puerta de salto\nPuerta de salto Norte\nPuerta de salto Este -- Oeste\nEnfrente de la Puerta de "
         "salto\n",
         "Selecciona Destino de la Puerta de salto\nPuerta de salto Norte\nPuerta de salto Este\nPuerta de salto Oeste\nEnfrente de "
         "la Puerta del tiempo"},
     }
};

constexpr std::array<Line, 1> kS30Spanish{
    {
     {0x2FC94,
         "Selecciona Destino de la Puerta de salto\nPuerta de salto Norte\nPuerta de salto Este -- Oeste\nEnfrente de la Puerta de "
         "salto\n",
         "Selecciona Destino de la Puerta de salto\nPuerta de salto Norte\nPuerta de salto Este\nPuerta de salto Oeste\nEnfrente de "
         "la Puerta del tiempo"},
     }
};

// The Spanish text of the Spheda lesson (event e314) says there is nothing more to remember right before
// the colour rules, and gives a Sphere a black colour it never takes: it turns from blue to red and from
// red to blue. The event files are Latin-1.
constexpr std::array<Edit, 3> kE314Spanish{
    {
     {"No tienes que acordarte de nada m\xe1s.", "Tienes que acordarte de otra cosa m\xe1s."},
     {"De azul a rojo, de negro a azul.", "De azul a rojo, de rojo a azul."},
     {"cambiar\xe1 el color a negro.", "cambiar\xe1 el color."},
     }
};

struct Messages {
    const char           *path;
    std::span<const Edit> edits;
};

constexpr std::array<Messages, 1> kMessages{
    {
     {"event/e300/e314/e314_5.txt", kE314Spanish},
     }
};

struct Script {
    const char           *path;
    std::span<const Line> lines;
};

constexpr std::array<Script, 3> kScripts{
    {
     {"map/s/s17/s17_5.stb", kS17Spanish},
     {"map/f/f04/f04_5.stb", kF04Spanish},
     {"map/s/s30/s30_5.stb", kS30Spanish},
     }
};

std::int32_t Read32(const unsigned char *bytes, std::size_t offset) {
    std::int32_t value;
    std::memcpy(&value, bytes + offset, sizeof(value));
    return value;
}

void Write32(unsigned char *bytes, std::size_t offset, std::int32_t value) {
    std::memcpy(bytes + offset, &value, sizeof(value));
}

bool Appended(const Line &line) {
    return std::strlen(line.text) > std::strlen(line.retail);
}

// The file offset of the string the line's instruction pushes, when the instruction and the retail text
// are where the line says.
std::optional<std::size_t> RetailString(const unsigned char *bytes, std::size_t size, std::size_t code, const Line &line) {
    if (line.push + kInsnSize > size || Read32(bytes, line.push) != kOpPush || Read32(bytes, line.push + 4) != kConstStr) {
        return std::nullopt;
    }
    const std::int32_t relative = Read32(bytes, line.push + 8);
    const std::size_t  length = std::strlen(line.retail);
    if (relative < 0 || code + static_cast<std::size_t>(relative) + length >= size) {
        return std::nullopt;
    }
    const std::size_t at = code + static_cast<std::size_t>(relative);
    if (std::memcmp(bytes + at, line.retail, length) != 0 || bytes[at + length] != 0) {
        return std::nullopt;
    }
    return at;
}

std::span<const Edit> FindEdits(std::string_view key) {
    const std::string normalised = script_timing::Key(key);
    for (const Messages &messages : kMessages) {
        if (normalised == messages.path) {
            return messages.edits;
        }
    }
    return {};
}

// The text after every edit, or nullopt when one of the retail texts is not there exactly once.
std::optional<std::string> Edited(std::string text, std::span<const Edit> edits) {
    for (const Edit &edit : edits) {
        const std::size_t at = text.find(edit.retail);
        if (at == std::string::npos || text.find(edit.retail, at + 1) != std::string::npos) {
            return std::nullopt;
        }
        text.replace(at, std::strlen(edit.retail), edit.text);
    }
    return text;
}

void LogOnce(std::string_view key, bool matched) {
    static std::mutex            mutex;
    static std::set<std::string> logged;
    std::lock_guard              lock(mutex);
    if (!logged.emplace(key).second) {
        return;
    }
    if (matched) {
        CT_LOG_INFO(Script, "script text: {}: Spanish text", key);
    } else {
        CT_LOG_WARN(Script, "script text: {} does not match the PAL file; its text is left unchanged", key);
    }
}

} // namespace

std::span<const Line> Find(std::string_view key) {
    const std::string normalised = script_timing::Key(key);
    for (const Script &script : kScripts) {
        if (normalised == script.path) {
            return script.lines;
        }
    }
    return {};
}

std::span<const Edit> Edits(std::string_view key) {
    return FindEdits(key);
}

std::size_t Extra(std::string_view key) {
    std::ptrdiff_t growth = 0;
    for (const Edit &edit : FindEdits(key)) {
        growth += static_cast<std::ptrdiff_t>(std::strlen(edit.text)) - static_cast<std::ptrdiff_t>(std::strlen(edit.retail));
    }
    std::size_t extra = growth > 0 ? static_cast<std::size_t>(growth) : 0;
    for (const Line &line : Find(key)) {
        if (Appended(line)) {
            extra += std::strlen(line.text) + 1;
        }
    }
    return extra;
}

std::size_t Patch(std::string_view key, unsigned char *bytes, std::size_t size) {
    if (const auto edits = FindEdits(key); !edits.empty()) {
        const auto text = Edited(std::string(reinterpret_cast<const char *>(bytes), size), edits);
        if (!text) {
            LogOnce(key, false);
            return size;
        }
        std::memcpy(bytes, text->data(), text->size());
        if (text->size() < size) {
            std::memset(bytes + text->size(), 0, size - text->size());
        }
        LogOnce(key, true);
        return text->size();
    }

    const auto lines = Find(key);
    if (lines.empty()) {
        return size;
    }
    if (size < kCodeField + 4 || Read32(bytes, kCodeField) < 0) {
        LogOnce(key, false);
        return size;
    }
    const auto code = static_cast<std::size_t>(Read32(bytes, kCodeField));

    std::vector<std::size_t> strings(lines.size());
    for (std::size_t i = 0; i < lines.size(); ++i) {
        const auto at = RetailString(bytes, size, code, lines[i]);
        if (!at) {
            LogOnce(key, false);
            return size;
        }
        strings[i] = *at;
    }

    std::size_t end = size;
    for (std::size_t i = 0; i < lines.size(); ++i) {
        const Line       &line = lines[i];
        const std::size_t length = std::strlen(line.text) + 1;
        if (!Appended(line)) {
            std::memcpy(bytes + strings[i], line.text, length);
            continue;
        }
        std::memcpy(bytes + end, line.text, length);
        Write32(bytes, line.push + 8, static_cast<std::int32_t>(end - code));
        end += length;
    }
    LogOnce(key, true);
    return end;
}

} // namespace script_text
