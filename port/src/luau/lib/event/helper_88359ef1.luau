--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")

--- Helper function.
local function helper_88359ef1(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	event.MesMake_2(
		0,
		"ファブリースの民は、\n自分より秀でた人でないと、\nたのみを聞く事はありません。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "私も魚については、\nいささか自信があります。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"聞く所によると、人間は\n魚に競争をさせて\nいるとかいないとか。<page>あなたも魚を飼って\nいるのなら、それで\n一番になってみなさい。<page>そうすれば、\n私もあなたを認め、\n力になりましょう。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]彼女はどうやらギョレースの事を言っているようです。\n   さしあたり、ビギナークラスで優勝してみましょう。\n   彼女の態度も変わるかも知れません。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 16, 1)
end

return helper_88359ef1
