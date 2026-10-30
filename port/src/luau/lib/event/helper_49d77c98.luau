--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_5217d4e0 = require("@lib/event/helper_5217d4e0")
local helper_9cc4383b = require("@lib/event/helper_9cc4383b")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")

--- Helper function.
local function helper_49d77c98(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local var5: any = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 then
		helper_5217d4e0(arg0, arg1)
		return
	end
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	argc = event.GetItemNum(201) or argc
	argc_2 = event.GetItemNum(202) or argc_2
	if argc <= 0 or argc_2 <= 0 then
		event.MesMake_2(
			0,
			"なんだよ、あぁ、\nコイン集めの話か？<page>『鉄壁のコイン』\n『暗黒のコイン』だぜ。\nなかなか手に入らないだろう。<page>なんせ俺が探しまくっても\nお目にかかれなかった\nシロモノだからな。"
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(
		0,
		"え？\nコインを集めちまったのか、\nマジでか！<page>なにもったいぶってんだよ、\nくれくれくれー！"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMesShippo(0, 0)
	event.SetMesQuestionGyou(0, 0)
	event.SetMesEtc(0, 0, 1)
	event.MesMake_2(0, "わかったよ。\nどうしようかな？")
	var5 = helper_bac0e30d(0, -1, 5, 256, 208, 2, 1)
	event.SetMesShippo(0, 1)
	event.SetMesEtc(0, 0, 0)
	if var5 ~= 0 then
		event.MesMake_2(
			0,
			"あぁ！そんないじわる\nするんなら、俺も仲間に\nなんかならないぜ。"
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.SubItem(201)
	event.SubItem(202)
	event.MesMake_2(
		0,
		"すげぇ、本当にそろっちまった。\n絶対無理だと思ってたのに・・・<page>しょうがねぇ、めんどくさいけど\nいっしょに行ってやるよ。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_9cc4383b()
	event.Finish()
	event.SetQuestEtc(1, 2, 1)
end

return helper_49d77c98
