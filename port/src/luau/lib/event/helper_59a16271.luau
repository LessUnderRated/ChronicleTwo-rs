--!strict
-- Shared event helper used by 175 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_59a16271(param: s32)
	event.SetFadeOut(15)
	wait_frames(15)
	event.GotoMenu(6, param)
	vm.wait(2)
	event.SetFadeIn(15)
end

return helper_59a16271
