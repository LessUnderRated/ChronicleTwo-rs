--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")

--- Helper function.
local function helper_52b96a31(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	event.MesMake_2(0, "う～ん、いっしょに\n行ってあげても良いけど、\nそこに月はあるの？")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "本当に？言葉だけじゃ\n信じられないよ。人間は\nうそをつくからね。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "やっぱり、やめとく。\nここで月が出るのを\n待っているよ。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]過去に何があったのかわかりませんが、\n   ルーシオは、完全に人間を信じられなく\n   なっているようです。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]とにかく、信じてもらう事が先決です。\n   そんなに月を見ていたいと言うなら、\n   写真を撮ってあげたらどうでしょう。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 14, 1)
end

return helper_52b96a31
