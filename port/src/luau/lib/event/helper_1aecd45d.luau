--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_d61bc810 = require("@lib/event/helper_d61bc810")
local helper_f38eabca = require("@lib/event/helper_f38eabca")

--- Helper function.
local function helper_1aecd45d(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	event.MesMake_2(
		0,
		"いっしょに旅をしてくれって？<page>パンを焼く事しか取り得のない\nおばさんだけど、ユリスの役に\n立つんなら、お安いご用さ。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"あ、そうそう、その前に、\nモートンの所に配達する\n物があったんだっけ。<page>ユリス、すまないけど、\nモートンの店にパンを２０個\n届けてくれないかい？"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "私はその間に旅の支度を\nしておくからさ。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.AddItem(300, 20)
	helper_f38eabca(300, 20)
	helper_d61bc810(1)
	event.MesMake_2(0, "しかし、２０個のパンなんて\n何に使うんだろう？")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.Finish()
	event.SetQuestEtc(0, 8, 1)
	event.SetCnt(12, 0)
end

return helper_1aecd45d
