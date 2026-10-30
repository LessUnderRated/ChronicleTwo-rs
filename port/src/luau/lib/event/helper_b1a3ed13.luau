--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local show_message = require("@lib/event/show_message")

--- Helper function.
local function helper_b1a3ed13(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 then
		event.SetMesPreset(0, 0)
		helper_4e93f9fc(arg0, 0, 0)
		event.MesMake_2(0, "やぁ、こんにちは。<page>君は、確かモニカと\n言ったね。")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.MesMake_2(0, "僕はパトリ。\n魔法絵師をしているんだ。")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.MesMake_2(
			0,
			"まだ紹介して\nいなかったね。<page>彼女はジュリア、\n僕の妻になる女性だ。"
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.MesMake_2(0, "・・・")
		helper_0ffc2526(0, -1, arg1, arg0, 0)
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.MesMake_2(
			0,
			"[(!)]モニカはこういうタイプが苦手みたい。\n   まぁ、無理ないかも。仕方ありません。\n   ユリスで話しかけてみましょう。"
		)
		show_message(0, -1, 8, 0, 0)
		event.SetMesPreset(0, 0)
		event.Finish()
		return
	end
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	event.MesMake_2(0, "やぁ、ユリス、\nこんにちは。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"まだ紹介して\nいなかったね。<page>彼女はジュリア、\n僕の妻になる女性だ。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "・・・")
	helper_0ffc2526(0, -1, arg1, arg0, 0)
	event.MesMake_2(
		0,
		"ふっ、おかしいだろう、\n笑ってくれて良いよ。<page>絵の中の女性に惚れて\nしまったなんてさ。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"でも、僕は魔法絵師だ。\n描いた物を本物にする力がある。<page>僕が描けば、それはそこに\n存在するんだ。それが\n生命のない物なら・・・"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "魔法絵師の力では、\n生命を描く事は\nどうしても出来ないんだ。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "ただ、聞いた事がある。\nいにしえの巨木に宿る\n黄金の卵。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"そこから得られる金色を\n用いれば、描いた物に\n生命を与えられると。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"なぁ、ユリス、君は\n町の外に出かけている\nそうじゃないか。<page>この『金色の絵の具』\nどこかで手に\n入らないかな？"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"もちろん、ただとは\n言わない。<page>手に入れて来てくれたら、\n僕のこの能力を君のために\n使わせてもらうよ。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]いにしえの巨木・・・\n   金の卵が宿っちゃうような、\n   そんなとんでもない木なんて、\n   どこに行けば生えているんでしょう。"
	)
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 1, 1)
end

return helper_b1a3ed13
