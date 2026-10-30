--!strict
-- Shared event helper used by 10 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_61258276 = require("@lib/event/helper_61258276")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_4c63ac5c(param: s32)
	event.SetFadeOut(25)
	wait_frames(30)
	event.GotoMenu(6, param)
	vm.wait(2)
	helper_61258276()
	event.SetFadeIn(30)
end

return helper_4c63ac5c
