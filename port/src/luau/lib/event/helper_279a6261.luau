--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local show_message = require("@lib/event/show_message")

--- Helper function.
local function helper_279a6261(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Yeah, I don't mind going with\nyou, but will there be a moon there?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "Really? Maybe you're just saying that.\nI know humans tell lies.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "Actually, I've changed my mind.\nI'm going to wait for the moon to come out here.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Maybe it's because of something that\n   happened in the past, but Rufio doesn't\n   trust humans at all."
	)
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]You've got to get Rufio to\n   believe you. If you gave him a\n   photo of the moon, that might do it."
	)
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 14, 1)
end

return helper_279a6261
