--!strict
-- Shared event helper used by 7 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1ebb0be6 = require("@lib/event/helper_1ebb0be6")
local helper_2f8ace6d = require("@lib/event/helper_2f8ace6d")
local helper_39af59c5 = require("@lib/event/helper_39af59c5")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_562b5326 = require("@lib/event/helper_562b5326")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_84fa6e6c = require("@lib/event/helper_84fa6e6c")
local helper_9594e622 = require("@lib/event/helper_9594e622")
local open_message = require("@lib/event/open_message")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_e84599ef(arg0: s32, count: s32, arg2: any, count_2: any)
	local var4: s32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var10: f32 = 0
	local var11: any = 0
	local var13: s32 = 0
	local var14: any = 0
	local var15: f32 = 0
	local item_no: any = 0
	local argc: s32 = 0
	local count_2_2: s32 = 0
	event.DngPause(529, 1)
	var4 = event.SndLoadSound_3(8, "snd2/sp/sp_010.sound.json") or var4
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_10(
		arg0,
		1,
		arg2,
		1,
		"event/tbox/p00_27a_ex.gltf",
		"event/tbox/l_box.gltf",
		"event/tbox/r_box.gltf",
		"event/tbox/p00_41a.gltf",
		"event/tbox/p00_27a_ex_l.gltf",
		"event/tbox/p00_27a_ex_r.gltf"
	)
	do
		local out1, out2, out3, out4 = event.GetDunWorldCoord(1)
		var5 = out1 or var5
		var6 = out2 or var6
		var7 = out3 or var7
		var8 = out4 or var8
	end
	event.SetWorldCoord(var5, var6, var7, var8)
	vm.wait(1)
	event.SetTbAngle(0.0)
	event.SetTbStatus(2)
	event.CmrsInit()
	event.CmrsSetPos(0.0, 29.0, 57.0)
	event.CmrsSetRef(0.0, 10.0, 0.0)
	event.CmrsMove(0.0, 22.27, 41.0, 0.0, 14.27, 0.0, 80)
	wait_frames(15)
	helper_84fa6e6c(0)
	wait_frames(5)
	helper_479dc9e9()
	event.LoadChara(5, "event/tbox/p00_27a_ex.gltf", "info", 12)
	event.CharaActive(0, 12)
	event.EohSyncChara(0, 12)
	event.EohSetPos(0, 0.0, 0.0, 0.0)
	event.EohSetRot(0, 0.0, 0.0, 0.0)
	event.EohSetMotion(0, "宝箱ピエロ出現", 5)
	event.LoadChara(5, "event/tbox/p00_41a.gltf", "info", 13)
	event.CharaActive(0, 13)
	event.EohSyncChara(1, 13)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetPos(1, 0.0, 0.0, 0.0)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "出現", 5)
	var10 = helper_562b5326(var10)
	event.SndSePlay(var4, 0)
	event.SndSePlay(var4, 1)
	event.CharaActive(12)
	event.EohSetMotion(0, "宝箱ピエロ出現", 6)
	event.CharaActive(13)
	event.ObjsSetMotion(1, "出現", 6)
	event.ObjsNextMotion(1, "立ち", 4)
	event.CmrsInit()
	event.CmrsPrdelay(4)
	event.CmrsMove2(0.14, 22.84, 83.75, 0.0, 60.0, 0.0, 16, 2, 1.0)
	event.CmrsMove2(0.21, 18.87, 93.0, 0.0, 36.0, 0.0, 20, 0, 1.0)
	var10 = helper_1ebb0be6(var10)
	wait_frames(10)
	event.CharaActive(0, 12)
	event.LoadChara(5, "event/tbox/p00_27a_ex_r.gltf", "info", 14)
	event.CharaActive(14)
	event.SetCharaPos(14, 0.0, 0.0, 0.0)
	event.SetCharaRot(14, 0.0, 0.0, 0.0)
	event.SetMotion(14, "宝箱発生（右手）", 6)
	event.SetReference(13, "s_pre", 14)
	event.LoadChara(5, "event/tbox/p00_27a_ex_l.gltf", "info", 15)
	event.CharaActive(15)
	event.SetCharaPos(15, 0.0, 0.0, 0.0)
	event.SetCharaRot(15, 0.0, 0.0, 0.0)
	event.SetMotion(15, "宝箱出現（左手）", 6)
	event.SetReference(13, "b_pre", 15)
	event.LoadChara(5, "event/tbox/r_box.gltf", "info", 18)
	event.CharaActive(18)
	event.SetCharaPos(18, 0.0, 0.0, 0.0)
	event.SetCharaRot(18, 0.0, 0.0, 0.0)
	event.SetReference(13, "s_pre", 18)
	event.SetCharaType(18, 4)
	event.LoadChara(5, "event/tbox/l_box.gltf", "info", 19)
	event.CharaActive(19)
	event.SetCharaPos(19, 0.0, 0.0, 0.0)
	event.SetCharaRot(19, 0.0, 0.0, 0.0)
	event.SetReference(13, "b_pre", 19)
	event.SetCharaType(19, 4)
	event.SndSePlay(var4, 2)
	event.SetCharaShow(18, 0)
	event.SetCharaShow(19, 0)
	wait_frames(8)
	event.SetCharaShow(18, 1, 1, 0.08)
	event.SetCharaShow(19, 1, 1, 0.08)
	wait_frames(10)
	event.CharaActive(0, 14)
	event.CharaActive(0, 15)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	helper_75684dd8(0, 2230, 8, 256, 208)
	helper_75684dd8(0, 2231, 8, 256, 208)
	event.SetMesShippo(0, 0)
	event.SetMesQuestionGyou(0, 0)
	event.SndSePlay(var4, 3)
	local _ = open_message(0, 2232, 8, 0, 0)
	var11 = helper_39af59c5(0, 2, 0, 1)
	event.SetMesPos(0, 0)
	var13 = vm.float_bits(event.GetRand(100)) or var13
	if vm.imod(var13, 2) == 0 then
		var14 = arg0
		arg0 = arg2
		arg2 = var14
		var14 = count
		count = count_2
		count_2 = var14
	end
	event.LoadItem(5, arg0, "info", 16, 1)
	event.CharaActive(0, 16)
	event.SetCharaPos(16, 0.0, 0.0, 0.0)
	event.SetCharaRot(16, 0.0, 0.0, 0.0)
	event.EohSyncChara(6, 16)
	var15 = helper_2f8ace6d(16, arg0, var15)
	event.EohSetScale(6, var15, var15, var15)
	event.LoadItem(5, arg2, "info", 17, 1)
	event.CharaActive(0, 17)
	event.SetCharaPos(17, 0.0, 0.0, 0.0)
	event.SetCharaRot(17, 0.0, 0.0, 0.0)
	event.EohSyncChara(6, 17)
	var15 = helper_2f8ace6d(17, arg2, var15)
	event.EohSetScale(6, var15, var15, var15)
	event.CharaActive(1, 16)
	event.SetReference(13, "s_pre", 16)
	event.CharaActive(1, 17)
	event.SetReference(13, "b_pre", 17)
	event.ObjsSetMotion(1, "中身公開", 2)
	if var11 == 0 then
		event.ObjsNextMotion(1, "大きい宝箱", 2)
		event.ObjsNextMotion(1, "大きい宝箱L", 4)
	else
		event.ObjsNextMotion(1, "小さい宝箱", 2)
		event.ObjsNextMotion(1, "小さい宝箱L", 4)
	end
	wait_frames(10)
	event.SetCharaShow(18, 0, 1, 0.04)
	event.SetCharaShow(19, 0, 1, 0.04)
	event.SndSePlay(var4, 4)
	event.SndSePlay(var4, 5)
	wait_frames(60)
	event.SndSePlay(var4, 7)
	wait_frames(6)
	event.SndSePlay(var4, 6)
	wait_objects(1)
	if var11 == 0 then
		count_2_2 = event.CheckGetItemLimit(arg2, count_2) or count_2_2
		if count_2_2 >= 1 then
			helper_9594e622(arg2, count_2_2)
		else
			event.SetMesWindowMode(0, 4)
			event.SetMesDrawspeed(0, 1)
			event.SetMesItem(0, 1, arg2)
			event.MesMake_2(0, "You received [アイテム１],\nbut you didn't have any room left.")
			helper_75684dd8(0, -1, 8, 0, 0)
		end
		item_no = arg2
	else
		count_2_2 = event.CheckGetItemLimit(arg0, count) or count_2_2
		if count_2_2 >= 1 then
			helper_9594e622(arg0, count_2_2)
		else
			event.SetMesWindowMode(0, 4)
			event.SetMesDrawspeed(0, 1)
			event.SetMesItem(0, 1, arg0)
			event.MesMake_2(0, "You received [アイテム１],\nbut you didn't have any room left.")
			helper_75684dd8(0, -1, 8, 0, 0)
		end
		item_no = arg0
	end
	event.SetMesDrawspeed(0, 0)
	event.AddItem(item_no, count_2_2)
	argc = event.CheckItemOver() or argc
	if argc >= 1 then
		event.SetFadeOut(10)
		wait_frames(10)
		event.GotoMenu(17)
		vm.wait(23)
	end
	event.CharaActive(0)
	event.DngPause(529, 0)
	for var9 = 0, 7 do
		event.DeleteChara(12 + var9)
	end
	event.SetTbAngle(1.0)
	event.SetCrossfade(10)
	event.Finish()
end

return helper_e84599ef
