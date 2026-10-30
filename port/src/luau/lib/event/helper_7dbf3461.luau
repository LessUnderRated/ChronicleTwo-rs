--!strict
-- Shared event helper used by 21 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")

--- Helper function.
local function helper_7dbf3461(arg0: s32, arg1: s32)
	local var2: s32 = 0
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	var2 = event.GetChapter() or var2
	if var2 ~= 8 then
		event.MesMake_2(
			0,
			"最近、ユリスと\nいっしょにいる娘だね。<page>なかなか男を見る目が\nあるよ。"
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.MesMake_2(0, "私もあともうちょっと若けりゃ、\n放っておかないんだけどねぇ。")
	else
		event.MesMake_2(0, "パンが食べたくなったら\nあたしのところへおいで。")
	end
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.Finish()
end

return helper_7dbf3461
