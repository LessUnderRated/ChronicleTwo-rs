--!strict
-- Shared event helper used by 21 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_4bada87e(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Hi! Are you Max's\ngirlfriend?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"Your hair's a really unusual colour.\nLike Erik's, but different...<page>Yours is really pretty,\nlike a jewel."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.Finish()
end

return helper_4bada87e
