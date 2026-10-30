--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_a87eb945 = require("@lib/event/helper_a87eb945")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local helper_f38eabca = require("@lib/event/helper_f38eabca")

--- Helper function.
local function helper_6fccaf02(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(
		0,
		"You want me to\ngo with you?<page>I'm just a woman who bakes bread,\nbut if I can be of any use to you,\nI will gladly."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"Oh, but first I've got something\nthat needs delivering to Morton.<page>Would you mind delivering 20 loaves\nof bread to Morton's shop for me?"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "While you're doing that,\nI'll pack for the trip.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.AddItem(300, 20)
	helper_f38eabca(300, 20)
	helper_a87eb945(1)
	event.MesMake_2(0, "I wonder what on earth he\ncould want with 20 loaves?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.Finish()
	event.SetQuestEtc(0, 8, 1)
	event.SetCnt(12, 0)
end

return helper_6fccaf02
