--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_473930cd = require("@lib/event/helper_473930cd")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")

--- Helper function.
local function helper_37eaa981(arg0: s32, arg1: s32)
	local argc: s32 = 0
	local argc_2: s32 = 0
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	argc = event.GetItemNum(67) or argc
	argc_2 = event.GetItemNum(69) or argc_2
	if argc <= 0 and argc_2 <= 0 then
		event.MesMake_2(
			0,
			"なんだよ、その剣は？\nけっきょく口だけかい。<page>なら、帰んな。\n商売のじゃまだ。"
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(0, "ほう、なかなかの\n剣じゃないか。<page>試したみたいで\n悪かったな。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "しろうとといっしょに戦うと、\nこっちも危なくなるからね。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"でも、あんたの腕なら\nそんな心配はなさそうだ。<page>わかった、いっしょに\n戦うよ。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_473930cd()
	event.Finish()
	event.SetQuestEtc(1, 10, 1)
end

return helper_37eaa981
