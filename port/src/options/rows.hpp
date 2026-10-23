#pragma once

#include <functional>
#include <span>
#include <string>
#include <vector>

#include "platform/config.hpp"
#include "platform/window.hpp"

namespace options {

struct Row {
    std::string                                key;
    std::string                                label;
    std::string                                help;
    std::function<std::string(const Config &)> value;
    std::function<void(Config &, int)>         step;
    std::string                                action;
    // The action's controller binding rather than its keyboard one.
    bool pad = false;
};

struct Page {
    const char      *name;
    std::vector<Row> rows;
};

std::span<const Page>        Pages();
bool                         StepRow(const Row &row, Config &config, int direction);
bool                         SetBinding(Config &config, std::string_view action, std::string_view key);
void                         ResetBinding(Config &config, std::string_view action);
// Binds a controller button (a capture's name, InputTakeBindPadButton) to the action. A pad button that another pad
// button's action has goes over from it, which gets this action's buttons in return when it has none left.
bool SetPadBinding(Config &config, std::string_view action, std::string_view button);
// Restores the action's default controller buttons, which other pad button actions give up in the same way.
void ResetPadBinding(Config &config, std::string_view action);
// A controller button's name as the glyph style shows it ("Cross", "A", "ZL"...).
std::string PadButtonName(std::string_view button, const Config &config);
std::vector<DisplayModeSize> ResolutionList(std::span<const DisplayModeSize> modes, int width, int height);
void                         ListResolutions();
// Names for the PC page's prompts, including keyboard rebinding and forced controller families.
std::string ButtonName(std::string_view action, const Config &config);

} // namespace options
