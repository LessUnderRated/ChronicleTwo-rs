--!strict
-- map/s/s64/s64_2.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local helper_66949cb5 = require("@lib/event/helper_66949cb5")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99() end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event_99()
	event.ResetCamera(1)
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_66949cb5()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("d06b01")
	event.LoadScript("d06b01/d06b01.stb", 510)
end

return script
