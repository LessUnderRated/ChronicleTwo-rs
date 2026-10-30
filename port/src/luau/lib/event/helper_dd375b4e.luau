--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_9cc4383b = require("@lib/event/helper_9cc4383b")

--- Helper function.
local function helper_dd375b4e(arg0: s32, arg1: s32)
	local var2: s32 = 0
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	var2 = event.GetCnt(12) or var2
	if var2 < 3 then
		event.MesMake_2(
			0,
			"まだ、支度が\n出来てないんだよ。<page>もうちょっと\n待っておくれ。"
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.MesMake_2(0, "ところで、\nモートンのところへは\n行ってくれたのかい？")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(
		0,
		"なんだって！モートンの奴、\n勝手なことばっかり言って。<page>もう、いいわ、\nそのパンは全部あげる。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"そんなことより、ユリス、\n出発しましょう。<page>さぁ、どこへだって\nついて行きますよ。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SubItem(300, 20)
	event.AddItem(299, 20)
	helper_9cc4383b()
	event.Finish()
	event.SetQuestEtc(1, 8, 1)
end

return helper_dd375b4e
