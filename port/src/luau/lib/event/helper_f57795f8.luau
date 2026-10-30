--!strict
-- Shared event helper used by 125 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_f57795f8()
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetFadeOut(10)
	wait_frames(10)
	event.GotoMenu(7)
	vm.wait(2)
	event.SetFadeIn(10)
	wait_frames(10)
end

return helper_f57795f8
