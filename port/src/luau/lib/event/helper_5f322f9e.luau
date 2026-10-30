--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1ebb0be6 = require("@lib/event/helper_1ebb0be6")
local helper_271a78ae = require("@lib/event/helper_271a78ae")
local helper_32de9d65 = require("@lib/event/helper_32de9d65")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_66f07360 = require("@lib/event/helper_66f07360")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_c0fce92c = require("@lib/event/helper_c0fce92c")
local helper_c8c8b790 = require("@lib/event/helper_c8c8b790")
local helper_f51aa7a3 = require("@lib/event/helper_f51aa7a3")
local open_message = require("@lib/event/open_message")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_5f322f9e(arg0: any, arg1: s32)
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var7: f32 = 0
	local var8: any = 0
	local var10: s32 = 0
	local var11: any = 0
	local var12: f32 = 0
	event.DngPause(17, 1)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_10(
		arg0,
		1,
		arg1,
		1,
		"event/tbox/p00_27a_ex.gltf",
		"event/tbox/l_box.gltf",
		"event/tbox/r_box.gltf",
		"event/tbox/p00_27a.gltf",
		"event/tbox/p00_27a_ex_l.gltf",
		"event/tbox/p00_27a_ex_r.gltf"
	)
	do
		local out1, out2, out3, out4 = event.GetDunWorldCoord(1)
		var2 = out1 or var2
		var3 = out2 or var3
		var4 = out3 or var4
		var5 = out4 or var5
	end
	event.SetWorldCoord(var2, var3, var4, var5)
	vm.wait(1)
	event.SetTbAngle(0.0)
	event.SetTbStatus(2)
	event.CmrsInit()
	event.CmrsSetPos(0.0, 29.0, 57.0)
	event.CmrsSetRef(0.0, 10.0, 0.0)
	event.CmrsMove(0.0, 22.27, 41.0, 0.0, 14.27, 0.0, 80)
	helper_888ab2a3(15)
	helper_66f07360(0)
	helper_888ab2a3(5)
	helper_479dc9e9()
	event.LoadChara(5, "event/tbox/p00_27a_ex.gltf", "info", 12)
	event.CharaActive(0, 12)
	event.EohSyncChara(0, 12)
	event.EohSetPos(0, 0.0, 0.0, 0.0)
	event.EohSetRot(0, 0.0, 0.0, 0.0)
	event.EohSetMotion(0, "宝箱ピエロ出現", 5)
	event.LoadChara(5, "event/tbox/p00_27a.gltf", "info", 13)
	event.CharaActive(0, 13)
	event.EohSyncChara(1, 13)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetPos(1, 0.0, 0.0, 0.0)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "出現", 5)
	var7 = helper_c0fce92c(var7)
	event.CharaActive(12)
	event.EohSetMotion(0, "宝箱ピエロ出現", 6)
	event.CharaActive(13)
	event.ObjsSetMotion(1, "出現", 6)
	event.ObjsNextMotion(1, "立ち", 4)
	event.CmrsInit()
	event.CmrsPrdelay(4)
	event.CmrsMove2(0.14, 22.84, 83.75, 0.0, 60.0, 0.0, 16, 2, 1.0)
	event.CmrsMove2(0.21, 18.87, 93.0, 0.0, 36.0, 0.0, 20, 0, 1.0)
	var7 = helper_1ebb0be6(var7)
	helper_888ab2a3(10)
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
	event.SetCharaShow(18, 0)
	event.SetCharaShow(19, 0)
	helper_888ab2a3(8)
	event.SetCharaShow(18, 1, 1, 0.08)
	event.SetCharaShow(19, 1, 1, 0.08)
	helper_888ab2a3(10)
	event.CharaActive(0, 14)
	event.CharaActive(0, 15)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	helper_c8c8b790(0, 2200, 8, 256, 208)
	helper_c8c8b790(0, 2210, 8, 256, 208)
	event.SetMesShippo(0, 0)
	event.SetMesQuestionGyou(0, 0)
	local _ = open_message(0, 2220, 8, 0, 0)
	var8 = helper_f51aa7a3(0, 2, 0, 1)
	event.SetMesPos(0, 0)
	var10 = vm.float_bits(event.GetRand(100)) or var10
	if vm.imod(var10, 2) == 0 then
		var11 = arg0
		arg0 = arg1
		arg1 = var11
	end
	event.LoadItem(5, arg0, "info", 16, 1)
	event.CharaActive(0, 16)
	event.SetCharaPos(16, 0.0, 0.0, 0.0)
	event.SetCharaRot(16, 0.0, 0.0, 0.0)
	event.EohSyncChara(6, 16)
	var12 = helper_32de9d65(16, arg0, var12)
	event.EohSetScale(6, var12, var12, var12)
	event.LoadItem(5, arg1, "info", 17, 1)
	event.CharaActive(0, 17)
	event.SetCharaPos(17, 0.0, 0.0, 0.0)
	event.SetCharaRot(17, 0.0, 0.0, 0.0)
	event.EohSyncChara(6, 17)
	var12 = helper_32de9d65(17, arg1, var12)
	event.EohSetScale(6, var12, var12, var12)
	event.CharaActive(1, 16)
	event.SetReference(13, "s_pre", 16)
	event.CharaActive(1, 17)
	event.SetReference(13, "b_pre", 17)
	event.ObjsSetMotion(1, "中身公開", 2)
	if var8 == 0 then
		event.ObjsNextMotion(1, "大きい宝箱", 2)
		event.ObjsNextMotion(1, "大きい宝箱L", 4)
	else
		event.ObjsNextMotion(1, "小さい宝箱", 2)
		event.ObjsNextMotion(1, "小さい宝箱L", 4)
	end
	helper_888ab2a3(10)
	event.SetCharaShow(18, 0, 1, 0.04)
	event.SetCharaShow(19, 0, 1, 0.04)
	wait_objects(1)
	if var8 == 0 then
		helper_271a78ae(arg1, 1)
		event.AddItem(arg1, 1)
	else
		helper_271a78ae(arg0, 1)
		event.AddItem(arg0, 1)
	end
	event.CharaActive(0)
	event.DngPause(17, 0)
	for var6 = 0, 7 do
		event.DeleteChara(12 + var6)
	end
	event.SetTbAngle(1.0)
	event.Finish()
end

return helper_5f322f9e
