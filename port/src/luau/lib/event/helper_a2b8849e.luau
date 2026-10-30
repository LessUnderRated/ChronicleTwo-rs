--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_7e7c045c = require("@lib/event/helper_7e7c045c")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local set_window_mode = require("@lib/event/set_window_mode")

--- Helper function.
local function helper_a2b8849e(arg0: s32, arg1: any)
	local flag: s32 = 0
	local var3: s32 = 0
	local player_chara: s32 = 0
	local var5: any = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local argc_3: s32 = 0
	event.SetMotion(0, "立ち", 0)
	helper_888ab2a3(9)
	flag = event.GetFlag(7) or flag
	if flag == 1 then
		event.SetAi(0, 24)
		set_window_mode(0, 1)
		helper_4e93f9fc(arg0, 0, 0)
		player_chara = event.GetControlChrid() or player_chara
		event.MesMake_2(0, "スティーブの調子はどうじゃ？")
		helper_0ffc2526(0, -1, arg0, player_chara, 0)
		event.SetMotion(arg0, "立ち")
		event.SetMesShippo(0, 0)
		event.SetMesQuestionGyou(0, 0)
		event.SetMesEtc(0, 0, 1)
		event.MesMake_2(0, "ねんりょう補給\nコアのパワーアップ")
		var5 = helper_7e7c045c(0, -1, 5, 256, 208, 2, 0)
		event.SetMesEtc(0, 0, 0)
		event.SetMesShippo(0, 1)
		if var5 == 0 then
			event.SetSavedataEtc(2)
			event.MesMake_2(0, "よし、これで\n修理完了じゃ！")
			helper_0ffc2526(0, -1, arg0, player_chara, 0)
		end
		if var5 == 1 then
			event.SetFadeOut(25)
			helper_888ab2a3(30)
			event.GotoMenu(6, 23)
			vm.wait(7)
			event.SetFadeIn(25)
		end
		event.SetAi(1, 24)
		return
	end
	flag = event.GetFlag(107) or flag
	if flag == 1 then
		event.SetAi(0, 24)
		event.MesMake_2(
			0,
			"こんなことであきらめるのか？\nなにごともネバーギブアップじゃ。"
		)
		helper_1c04a0eb(arg0, -1, 0, 0)
		event.SetAi(1, 24)
		return
	end
	flag = event.GetFlag(20) or flag
	if flag == 1 then
		vm.wait(9)
		event.LoadScript("i01h01/i01h01c.stb", 500)
		return
	end
	var3 = event.GetItemNum(165) or var3
	if var3 > 0 then
		event.SetFlag(20, 1)
		vm.wait(10)
		event.LoadScript("i01h01/i01h01b.stb", 520)
		return
	end
	argc = event.GetItemNum(224) or argc
	argc_2 = event.GetItemNum(245) or argc_2
	argc_3 = event.GetItemNum(227) or argc_3
	var3 = event.GetInventionId(165) or var3
	if argc >= 20 and argc_2 >= 1 and argc_3 >= 2 and var3 ~= -1 then
		vm.wait(11)
		event.LoadScript("i01h01/i01h01b.stb", 520)
		return
	end
	flag = event.GetFlag(19) or flag
	if flag == 1 then
		event.SetAi(0, 24)
		event.MesMake_2(
			0,
			"ここをでて、目の前にあるかぼちゃの\nかんばんの店がアイテム屋じゃ。<page>鉄クズ２０個、銅のかたまり２個、\nそれとぶあつい皮じゃぞ。\n早く買ってくるのじゃ。"
		)
		helper_1c04a0eb(arg0, -1, 0, 0)
		event.SetAi(1, 24)
		return
	end
	var3 = event.GetInventionId(165) or var3
	if var3 ~= -1 then
		vm.wait(13)
		event.LoadScript("i01h01/i01h01b.stb", 520)
		return
	end
	var3 = event.CheckInventItem(165) or var3
	if var3 == 1 then
		vm.wait(14)
		event.LoadScript("i01h01/i01h01b.stb", 520)
		return
	end
	flag = event.GetFlag(17) or flag
	if flag == 1 then
		vm.wait(15)
		event.LoadScript("i01h01/i01h01b.stb", 510)
		return
	end
	flag = event.GetFlag(105) or flag
	if flag == 0 then
		event.MesMake_2(0, "ユリス、バイトをサボるんじゃないぞ。\nわかったな！")
		helper_1c04a0eb(arg0, -1, 0, 0)
		return
	end
	event.SetAi(0, 24)
	event.MesMake_2(0, "まずは自分の力で、\nやってみるのじゃ。")
	helper_1c04a0eb(arg0, -1, 0, 0)
	event.MesMake_2(0, "どうしても解らなければ、\nヒントをだしてやる。")
	helper_1c04a0eb(arg0, -1, 0, 0)
	event.MesMake_2(0, "さあ、行け！")
	helper_1c04a0eb(arg0, -1, 0, 0)
	event.SetAi(1, 24)
end

return helper_a2b8849e
