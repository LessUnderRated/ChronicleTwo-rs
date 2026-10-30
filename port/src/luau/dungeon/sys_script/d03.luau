--!strict
-- dungeon/sys_script/d03.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_06cb41a2 = require("@lib/event/helper_06cb41a2")
local helper_0e90ac27 = require("@lib/event/helper_0e90ac27")
local helper_1ebb0be6 = require("@lib/event/helper_1ebb0be6")
local helper_214de41f = require("@lib/event/helper_214de41f")
local helper_25d46bcc = require("@lib/event/helper_25d46bcc")
local helper_2a0361d4 = require("@lib/event/helper_2a0361d4")
local helper_2f6f8a35 = require("@lib/event/helper_2f6f8a35")
local helper_32de9d65 = require("@lib/event/helper_32de9d65")
local helper_39ab7f1f = require("@lib/event/helper_39ab7f1f")
local helper_3cf99f2c = require("@lib/event/helper_3cf99f2c")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_52115bbf = require("@lib/event/helper_52115bbf")
local helper_558828de = require("@lib/event/helper_558828de")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_649c18cd = require("@lib/event/helper_649c18cd")
local helper_66f07360 = require("@lib/event/helper_66f07360")
local helper_79d90c82 = require("@lib/event/helper_79d90c82")
local helper_7c78bc02 = require("@lib/event/helper_7c78bc02")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_975c8257 = require("@lib/event/helper_975c8257")
local helper_998c6893 = require("@lib/event/helper_998c6893")
local helper_99d04251 = require("@lib/event/helper_99d04251")
local helper_baa247a4 = require("@lib/event/helper_baa247a4")
local helper_bb794e6a = require("@lib/event/helper_bb794e6a")
local helper_c0fce92c = require("@lib/event/helper_c0fce92c")
local helper_d1646134 = require("@lib/event/helper_d1646134")
local helper_dff48a5c = require("@lib/event/helper_dff48a5c")
local helper_e6c23a00 = require("@lib/event/helper_e6c23a00")
local helper_f033341e = require("@lib/event/helper_f033341e")
local helper_f51aa7a3 = require("@lib/event/helper_f51aa7a3")
local helper_f7fba8ce = require("@lib/event/helper_f7fba8ce")
local helper_fd3a2124 = require("@lib/event/helper_fd3a2124")
local helper_fd9c4774 = require("@lib/event/helper_fd9c4774")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_417b4()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	do
		local out1, out2, out3, out4 = event.GetDunWorldCoord(2)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
		var3 = out4 or var3
	end
	var3 = vm.f32(var3 + vm.f32(1.5707964))
	if var3 > vm.f32(3.1415927) then
		var3 = vm.f32(var3 - vm.f32(6.2831855))
	end
	event.SetWorldCoord(var0, var1, var2, var3)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -85.0, 0.0, 50.0)
	event.ObjsSetRot(0, 0.0, -1.57, 0.0)
	event.ObjsSetMotion(0, "歩き")
	event.EohSetFootSoundId(0, 16)
	event.LoadImg_3(5, "textures/dungeon/image/s_title/logo_d02.json", 0)
	event.ImgSetName(0, "logo_d02")
	event.ImgSetGet(0, 0, 0, 384, 128)
	event.ImgSetPut(0, -24, 300, 384, 128)
	event.ImgSetColor(0, 128, 128, 128, 0)
	event.ImgSetDraw(1, 0)
	event.ImgSetFade(0, 1, 30)
	event.CmrsInit()
	event.CmrsSetRef(-170.0, 30.0, 50.0)
	event.CmrsSetAhd(1.57, 5.0, 160.0)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsMove(0, -170.0, 0.0, 50.0, 90)
	event.CmrsFadeInit()
	event.CmrsFadeIn(30)
	helper_888ab2a3(30)
	event.ImgSetFade(0, 1, 30)
	helper_888ab2a3(30)
	event.ImgSetFade(0, 0, 30)
	wait_camera()
	wait_objects(0)
	event.ObjsSetMotion(0, "立ち")
	helper_888ab2a3(30)
	event.ResetCamera(0)
	event.Finish()
end

--- Event 1000, which map data, a script or the engine runs by number.
local function event_1000()
	local var1: s32 = 0
	local var2: s32 = 0
	event.Initialize()
	event.SphidaInit()
	event.GotoDngMap(2)
	vm.wait(1)
	event.SetProjection(524.9)
	do
		local _, out2, out3, _ = event.GetMenuParam_4()
		var1 = out2 or var1
		var2 = out3 or var2
	end
	var1 = 2
	event.DngSetStageId(var1)
	event.DngSetFloorId(var2)
	helper_d1646134(var1, var2)
	if var2 == 23 then
		event.LoadDungeonMapFile("d03b02")
		event.LoadScript("d03b02/d03b02.stb", 200)
		return
	else
		if var2 >= 1 and var2 <= 7 then
			event.LoadDungeonMapFile("d03f01", "d03f01", 6)
		end
		if var2 >= 9 and var2 <= 14 or var2 >= 16 and var2 <= 17 then
			event.LoadDungeonMapFile("d03f02")
		end
		if var2 >= 19 and var2 <= 22 then
			event.LoadDungeonMapFile("d03f03")
		end
		if var2 == 0 then
			event.LoadDungeonMapFile("d03f01")
		end
		if var2 == 8 then
			event.LoadDungeonMapFile("s17")
			event.LoadScript("s17/s17.stb", 200)
			return
		end
		if var2 == 15 then
			event.LoadDungeonMapFile("d03f02")
		end
		if var2 == 18 then
			event.LoadDungeonMapFile("d03f02")
		end
		event.AutoSetTreasureBox(-1)
		event.LoadMonsterFile(0)
		event.AutoSetMonster(-1)
		helper_417b4()
		event.SndLoadSound_3(4, "snd2/event/ev_200_000.sound.json")
	end
end

--- Helper function.
local function helper_44d34()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local rot_x: f32 = 0
	local var5: f32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	do
		local out1, out2, out3, out4 = event.GetDunWorldCoord()
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
		var3 = out4 or var3
	end
	event.SetWorldCoord(var0, var1, var2, var3)
	event.EohSyncObj_3(0, "way38", "d02w10_4-m0")
	event.EohSetShow(0, 1)
	event.EohSyncObj_3(1, "way38", "d02w10_3-m0")
	event.EohSetShow(1, 1)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.LoadChara(5, "effect/g01_gkey.chr", "info", 8)
	event.CharaActive(8)
	event.EohSyncChara(2, 8)
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	event.ObjsSetPos(2, -160.0, 0.0, 15.0)
	event.ObjsSetMotion(2, "発動", 5)
	event.CmrsInit()
	event.CmrsSetPos(-96.26, 47.33, -135.06)
	event.CmrsSetRef(-157.89, 18.41, 5.19)
	helper_888ab2a3(30)
	event.EohSetShow(2, 1)
	event.ObjsSetMotion(2, "発動", 6)
	event.ObjsMotionWait(2)
	helper_888ab2a3(40)
	event.EohSetShow(0, 0)
	wait_objects(2)
	var5 = vm.f32(0.001)
	rot_x = 0.0
	while rot_x < vm.f32(1.57) do
		event.ObjsSetRot(1, rot_x, 0.0, 0.0)
		var5 = vm.f32(var5 * vm.f32(1.06))
		rot_x = vm.f32(rot_x + var5)
		vm.wait(4)
	end
	for var6 = 0, 2 do
		while true do
			var5 = vm.f32(var5 * vm.f32(0.6))
			rot_x = vm.f32(rot_x - var5)
			event.ObjsSetRot(1, rot_x, 0.0, 0.0)
			if var5 < vm.f32(0.001) then
				break
			else
				vm.wait(5)
			end
		end
		var5 = vm.f32(var5 + vm.f32(0.001))
		while true do
			var5 = vm.f32(var5 * vm.f32(1.2))
			rot_x = vm.f32(rot_x + var5)
			event.ObjsSetRot(1, rot_x, 0.0, 0.0)
			if rot_x > vm.f32(1.57) then
				break
			else
				vm.wait(6)
			end
		end
	end
	helper_888ab2a3(30)
	event.DeleteChara(8)
	event.Finish()
	event_1000()
end

--- Helper function.
local function helper_46c98()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	do
		local out1, out2, out3, out4 = event.GetDunWorldCoord()
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
		var3 = out4 or var3
	end
	event.SetWorldCoord(var0, var1, var2, var3)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -158.37, 0.0, -21.16)
	event.ObjsSetRot(0, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(0, "立ち")
	event.CmrsInit()
	event.CmrsSetPos(-96.26, 47.33, -135.06)
	event.CmrsSetRef(-157.89, 18.41, 5.19)
	event.CmrsMove(-111.68, 45.66, -74.92, -167.33, 37.66, 86.08, 155)
	helper_888ab2a3(10)
	event.ObjsJump(0, -159.92, 29.88, 36.38, -0.2, 25)
	wait_objects(0)
	helper_888ab2a3(10)
	event.ObjsMove(0, -159.92, 27.83, 183.87, 120)
	event.ObjsSetMotion(0, "歩き")
	helper_888ab2a3(60)
	event.CmrsFadeInit()
	event.CmrsFadeOut(60)
	wait_camera()
	event.CmrsFadeInit()
	event.CmrsFadeIn(1)
	wait_camera()
	event.Finish()
end

--- Helper function.
local function helper_5100(arg0: any, arg1: s32, arg2: s32)
	local stream_playing: s32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local var6: s32 = 0
	local var7: s32 = 0
	local at: number = 0
	return vm.guard(function()
		stream_playing = event.GetMesVoice() or stream_playing
		event.TrgPakuAnim(1)
		event.TrgPakuMotion(0)
		var7 = 0
		argc_2 = event.StreamGetStatus(1) or argc_2
		while true do
			if stream_playing ~= 0 then
				argc = event.StreamGetStatus(1) or argc
				if argc_2 ~= 0 and argc == 0 then
					event.TrgPakuAnim(0)
					event.TrgPakuMotion(2)
				end
				argc_2 = argc
			end
			var6 = helper_fd9c4774(arg0, arg1)
			if var6 ~= 0 then
				if var6 == 2 then
					arg2 = 1
				else
					arg2 = 0
				end
				var7 = vm.i32(var7 + 1)
				break
			else
				at = 1
				vm.wait(1)
				var7 = vm.i32(var7 + 1)
			end
		end
		event.ResetPakuMotion()
		event.TrgPakuAnim(0)
		event.ResetPakuAnim()
		stream_playing = event.GetMesVoice() or stream_playing
		if stream_playing ~= 0 then
			event.StreamStop(1)
		end
		return var7, arg2
	end, function(received: { any })
		if at <= 1 then
			var7 = var7 + 1
			return var7, arg2
		end
		return nil, arg2
	end)
end

--- Helper function.
local function helper_5abc(arg0: s32, arg1: s32, arg2: s32, arg3: s32, arg4: s32)
	local var6: s32 = 0
	local _ = open_message(arg0, arg1, arg2, arg3, arg4)
	do
		local _: any
		_, var6 = helper_5100(arg0, 0, var6)
	end
	close_message(arg0)
end

--- Helper function.
local function helper_95ac(arg0: any, arg1: s32)
	local var2: s32 = 0
	local argc: s32 = 0
	event.SetMesPreset(1, 4)
	event.SetMesWindowMode(1, 4)
	if arg1 <= 0 then
		return
	end
	if arg1 == 1 then
		var2 = 10
		event.SetMesItem(1, 1, arg0)
	end
	if 1 < arg1 then
		var2 = 11
		event.SetMesItem(1, 1, arg0)
		event.SetMesValue(1, 2, arg1)
	end
	argc = event.GetSysSndId() or argc
	event.SndSePlay(argc, 18)
	helper_5abc(1, var2, 8, 0, 0)
end

--- Helper function.
local function helper_e3d0(item_no: s32)
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	event.DngPause(23, 1)
	event.AssignStack(5)
	event.ClearStack(5)
	do
		local out1, out2, out3, out4 = event.GetDunWorldCoord(1)
		var1 = out1 or var1
		var2 = out2 or var2
		var3 = out3 or var3
		var4 = out4 or var4
	end
	event.SetWorldCoord(var1, var2, var3, var4)
	vm.wait(1)
	event.AddItem(item_no, 1)
	event.SetLoadbgFile_3(item_no, 1, "effect/itemget.gltf")
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
	event.LoadChara(5, "effect/itemget.gltf", "info", 12)
	event.CharaActive(12)
	event.EohSyncChara(1, 12)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetPos(1, 0.0, 0.0, 0.0)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "ゲット", 5)
	event.ObjsSetMotion(1, "ゲット", 2)
	helper_888ab2a3(5)
	var5 = helper_c0fce92c(var5)
	event.LoadItem(5, item_no, "info", 13, 1)
	event.CharaActive(1, 13)
	event.EohSyncChara(0, 13)
	var6 = helper_e6c23a00(13, item_no, var6)
	event.EohSetScale(0, var6, var6, var6)
	event.EohSetRot(0, 0.0, 0.0, 0.0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, 0.0, -5.0, 0.0)
	event.ObjsPosDelay(0, 4)
	event.ObjsJump(0, 0.0, 17.0, 0.0, -0.3, 20)
	event.ObjsJump(0, 0.0, 17.0, 0.0, -0.4, 8)
	event.ObjsJump(0, 0.0, 17.0, 0.0, -0.2, 5)
	var5 = helper_1ebb0be6(var5)
	wait_camera()
	helper_95ac(item_no, 1)
	event.SetCrossfade(10)
	event.DngPause(23, 0)
	event.CharaActive(1, 0)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.SetTbAngle(1.0)
	event.Finish()
end

--- Helper function.
local function helper_f198(arg0: any, arg1: s32)
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var7: f32 = 0
	local language_code: s32 = 0
	local var9: any = 0
	local var11: s32 = 0
	local var12: any = 0
	local var13: f32 = 0
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
	language_code = event.GetLanguage() or language_code
	if language_code == 0 then
		event.MesMake_2(
			0,
			"はぁーい！やってるかーい。\nハッピーピエロのプレゼントコーナー！\nさあ、好きな方どっちか選んで！"
		)
	else
		event.MesMake_2(0, "Howdy!\nHow's it going?<page>Happy Clown's gonna give you a gift!\nHere, make your choice.")
	end
	helper_5abc(0, -1, 8, 256, 208)
	event.SetMesShippo(0, 0)
	event.SetMesQuestionGyou(0, 0)
	if language_code == 0 then
		event.MesMake_2(0, "赤い箱を選ぶ\n黄色い箱を選ぶ")
	else
		event.MesMake_2(0, "Pick the red box.\nPick the yellow box.")
	end
	local _ = open_message(0, -1, 8, 0, 0)
	var9 = helper_f51aa7a3(0, 2, 0, 1)
	event.SetMesPos(0, 0)
	var11 = vm.float_bits(event.GetRand(100)) or var11
	if vm.imod(var11, 2) == 0 then
		var12 = arg0
		arg0 = arg1
		arg1 = var12
	end
	event.LoadItem(5, arg0, "info", 16, 1)
	event.CharaActive(0, 16)
	event.SetCharaPos(16, 0.0, 0.0, 0.0)
	event.SetCharaRot(16, 0.0, 0.0, 0.0)
	event.EohSyncChara(6, 16)
	var13 = helper_32de9d65(16, arg0, var13)
	event.EohSetScale(6, var13, var13, var13)
	event.LoadItem(5, arg1, "info", 17, 1)
	event.CharaActive(0, 17)
	event.SetCharaPos(17, 0.0, 0.0, 0.0)
	event.SetCharaRot(17, 0.0, 0.0, 0.0)
	event.EohSyncChara(6, 17)
	var13 = helper_32de9d65(17, arg1, var13)
	event.EohSetScale(6, var13, var13, var13)
	event.CharaActive(1, 16)
	event.SetReference(13, "s_pre", 16)
	event.CharaActive(1, 17)
	event.SetReference(13, "b_pre", 17)
	event.ObjsSetMotion(1, "中身公開", 2)
	if var9 == 0 then
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
	if var9 == 0 then
		helper_95ac(arg1, 1)
		event.AddItem(arg1, 1)
	else
		helper_95ac(arg0, 1)
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

--- Helper function.
local function helper_5660(arg0: s32, arg1: any, arg2: any, arg3: s32, arg4: any)
	local var5: s32 = 0
	vm.wait(1)
	vm.wait(2)
	event.SetMesPos(arg0, 0)
	event.MesMake_2(arg0, arg1)
	event.SetMesAutoset(arg0, arg2, arg3)
	do
		local _: any
		_, var5 = helper_5100(arg0, 0, var5)
	end
	close_message(arg0)
end

--- Helper function.
local function helper_7e48(arg0: s32, arg1: s32, arg2: s32, arg3: s32)
	local rot_y: f32 = 0
	local player_chara: s32 = 0
	if arg3 ~= 0 then
		event.EohSyncChara(0, arg0)
		do
			local _, out2, _ = event.EohGetRot(0)
			rot_y = out2 or rot_y
		end
	end
	player_chara = event.GetControlChrid() or player_chara
	helper_baa247a4(player_chara, arg0, arg1, arg2)
	helper_5660(0, arg1, arg0, player_chara, 0)
	if arg3 ~= 0 then
		helper_06cb41a2(arg0, rot_y)
	end
	event.SetMotion(arg0, "立ち")
	event.Finish()
	if arg2 ~= 0 then
		event.SetCrossfade(10)
	end
end

--- Helper function.
local function helper_93ec(arg0: s32)
	event.SetMesPreset(1, 4)
	event.SetMesWindowMode(1, 4)
	helper_5abc(1, vm.i32(60 + arg0), 8, 0, 0)
end

--- Helper function.
local function helper_17754()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: f32 = 0
	local active_chr_no_2: s32 = 0
	local var5: s32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.SetMotion(0, "故障", 6)
		event.EsmInitialize(5)
		event.EsmLoadBase("ロボ故障")
		event.EsmInitFix(5)
	end
	var1 = event.GetEventInfoSndid(4) or var1
	event.SndSeStop(var1, 0)
	event.DngPause(17, 1)
	event.EsmCreate("ロボ故障")
	var2 = event.GetBgmNo() or var2
	var3 = vm.bits_float(event.GetMasterVol()) or var3
	event.StopBgm(0)
	event.SetLoadbgFile_1("snd2/bgm/bg_060.sound.json")
	helper_888ab2a3(4)
	helper_479dc9e9()
	event.LoadBgmPack(60)
	event.PlayBgm(0)
	active_chr_no_2 = event.GetActiveChrNo() or active_chr_no_2
	helper_93ec(active_chr_no_2)
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		event.EsmClear()
		event.MenuCharaChenge(-1)
		vm.wait(5)
	else
		var5 = event.GetE3Version() or var5
		if var5 == 1 then
			event.SetFadeOut(30)
			helper_888ab2a3(30)
			event.SetExitFlag(1)
			return
		else
			event.DngDebugCommand(0)
		end
	end
	event.StopBgm(0)
	event.EsmClear()
	event.DngPause(17, 1)
	helper_888ab2a3(4)
	event.LoadBgm(var2)
	event.PlayBgm(0)
	event.SetMasterVol(var3)
	event.SndSePlay(var1, 0)
	event.DngPause(17, 0)
	event.Finish()
end

--- Helper function.
local function helper_166fc()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local stage_id: s32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	local position_x_2: f32 = 0
	local position_y_2: f32 = 0
	local position_z_2: f32 = 0
	local language_code: s32 = 0
	local at: number = 0
	return vm.guard(function()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		helper_52115bbf()
		if active_chr_no == 0 then
			at = 1
			helper_99d04251()
		end
		if active_chr_no == 1 then
			at = 2
			helper_2f6f8a35()
		end
		if active_chr_no == 2 or active_chr_no == 3 then
			at = 3
			helper_649c18cd(active_chr_no)
		end
		var1 = event.GetE3Version() or var1
		if var1 ~= 1 then
			stage_id = event.DngGetStageId() or stage_id
			event.DngGetFloorId()
			if stage_id ~= 3 then
				helper_fd3a2124(0)
				do
					local out1, out2, out3 = event.GetBeforeCameraNextPos()
					position_x = out1 or position_x
					position_y = out2 or position_y
					position_z = out3 or position_z
				end
				event.SetCameraPos(position_x, position_y, position_z)
				do
					local out1, out2, out3 = event.GetBeforeCameraNextRef()
					position_x = out1 or position_x
					position_y = out2 or position_y
					position_z = out3 or position_z
				end
				event.SetCameraRef(position_x, position_y, position_z)
				event.SetMesWindowMode(0, 4)
				event.SetMesDrawspeed(0, 1)
				at = 4
				helper_5abc(0, 2100, 8, 0, 0)
				event.SetMesWindowMode(0, 1)
				event.SetMesDrawspeed(0, 0)
			end
		end
		do
			local out1, out2, out3 = event.GetBeforeCameraNextPos()
			position_x_2 = out1 or position_x_2
			position_y_2 = out2 or position_y_2
			position_z_2 = out3 or position_z_2
		end
		event.SetCameraPos(position_x_2, position_y_2, position_z_2)
		do
			local out1, out2, out3 = event.GetBeforeCameraNextRef()
			position_x_2 = out1 or position_x_2
			position_y_2 = out2 or position_y_2
			position_z_2 = out3 or position_z_2
		end
		event.SetCameraRef(position_x_2, position_y_2, position_z_2)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		language_code = event.GetLanguage() or language_code
		if language_code == 0 then
			event.MesMake_2(
				0,
				"[(!)]マップに黄色で示されるポイントがゲートです。\n   その場所で、ゲートキーを使えば次のフロアへ行けます。"
			)
			at = 5
			helper_5abc(0, -1, 8, 0, 0)
		else
			event.MesMake_2(
				0,
				" [(!)] The gate is the yellow point on the map.\n   Use the gate key there to go to the next floor."
			)
			at = 6
			helper_5abc(0, -1, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 6 then
			if at <= 1 then
				at = 2
				helper_2f6f8a35()
				return vm.continue_with(function()
					if active_chr_no == 2 or active_chr_no == 3 then
						at = 3
						helper_649c18cd(active_chr_no)
					end
					var1 = event.GetE3Version() or var1
					if var1 ~= 1 then
						stage_id = event.DngGetStageId() or stage_id
						event.DngGetFloorId()
						if stage_id ~= 3 then
							helper_fd3a2124(0)
							do
								local out1, out2, out3 = event.GetBeforeCameraNextPos()
								position_x = out1 or position_x
								position_y = out2 or position_y
								position_z = out3 or position_z
							end
							event.SetCameraPos(position_x, position_y, position_z)
							do
								local out1, out2, out3 = event.GetBeforeCameraNextRef()
								position_x = out1 or position_x
								position_y = out2 or position_y
								position_z = out3 or position_z
							end
							event.SetCameraRef(position_x, position_y, position_z)
							event.SetMesWindowMode(0, 4)
							event.SetMesDrawspeed(0, 1)
							at = 4
							helper_5abc(0, 2100, 8, 0, 0)
							event.SetMesWindowMode(0, 1)
							event.SetMesDrawspeed(0, 0)
						end
					end
					do
						local out1, out2, out3 = event.GetBeforeCameraNextPos()
						position_x_2 = out1 or position_x_2
						position_y_2 = out2 or position_y_2
						position_z_2 = out3 or position_z_2
					end
					event.SetCameraPos(position_x_2, position_y_2, position_z_2)
					do
						local out1, out2, out3 = event.GetBeforeCameraNextRef()
						position_x_2 = out1 or position_x_2
						position_y_2 = out2 or position_y_2
						position_z_2 = out3 or position_z_2
					end
					event.SetCameraRef(position_x_2, position_y_2, position_z_2)
					event.SetMesWindowMode(0, 4)
					event.SetMesDrawspeed(0, 1)
					language_code = event.GetLanguage() or language_code
					if language_code == 0 then
						event.MesMake_2(
							0,
							"[(!)]マップに黄色で示されるポイントがゲートです。\n   その場所で、ゲートキーを使えば次のフロアへ行けます。"
						)
						at = 5
						helper_5abc(0, -1, 8, 0, 0)
					else
						event.MesMake_2(
							0,
							" [(!)] The gate is the yellow point on the map.\n   Use the gate key there to go to the next floor."
						)
						at = 6
						helper_5abc(0, -1, 8, 0, 0)
					end
					event.SetMesWindowMode(0, 1)
					event.SetMesDrawspeed(0, 0)
					event.Finish()
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_649c18cd(active_chr_no)
				return vm.continue_with(function()
					var1 = event.GetE3Version() or var1
					if var1 ~= 1 then
						stage_id = event.DngGetStageId() or stage_id
						event.DngGetFloorId()
						if stage_id ~= 3 then
							helper_fd3a2124(0)
							do
								local out1, out2, out3 = event.GetBeforeCameraNextPos()
								position_x = out1 or position_x
								position_y = out2 or position_y
								position_z = out3 or position_z
							end
							event.SetCameraPos(position_x, position_y, position_z)
							do
								local out1, out2, out3 = event.GetBeforeCameraNextRef()
								position_x = out1 or position_x
								position_y = out2 or position_y
								position_z = out3 or position_z
							end
							event.SetCameraRef(position_x, position_y, position_z)
							event.SetMesWindowMode(0, 4)
							event.SetMesDrawspeed(0, 1)
							at = 4
							helper_5abc(0, 2100, 8, 0, 0)
							event.SetMesWindowMode(0, 1)
							event.SetMesDrawspeed(0, 0)
						end
					end
					do
						local out1, out2, out3 = event.GetBeforeCameraNextPos()
						position_x_2 = out1 or position_x_2
						position_y_2 = out2 or position_y_2
						position_z_2 = out3 or position_z_2
					end
					event.SetCameraPos(position_x_2, position_y_2, position_z_2)
					do
						local out1, out2, out3 = event.GetBeforeCameraNextRef()
						position_x_2 = out1 or position_x_2
						position_y_2 = out2 or position_y_2
						position_z_2 = out3 or position_z_2
					end
					event.SetCameraRef(position_x_2, position_y_2, position_z_2)
					event.SetMesWindowMode(0, 4)
					event.SetMesDrawspeed(0, 1)
					language_code = event.GetLanguage() or language_code
					if language_code == 0 then
						event.MesMake_2(
							0,
							"[(!)]マップに黄色で示されるポイントがゲートです。\n   その場所で、ゲートキーを使えば次のフロアへ行けます。"
						)
						at = 5
						helper_5abc(0, -1, 8, 0, 0)
					else
						event.MesMake_2(
							0,
							" [(!)] The gate is the yellow point on the map.\n   Use the gate key there to go to the next floor."
						)
						at = 6
						helper_5abc(0, -1, 8, 0, 0)
					end
					event.SetMesWindowMode(0, 1)
					event.SetMesDrawspeed(0, 0)
					event.Finish()
					return
				end)
			end
			if at <= 3 then
				helper_975c8257(0)
				helper_2a0361d4(0, 2100, 8, 0, 0)
			end
			if at <= 4 then
				helper_2a0361d4(0, -1, 8, 0, 0)
			end
			if at <= 5 then
				helper_2a0361d4(0, -1, 8, 0, 0)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_2be3c()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 then
			event.SetMesWindowMode(0, 4)
			at = 1
			helper_5abc(0, 2000, 8, 0, 0)
			return 1
		end
		var1 = event.GetEquipItemno(0, 0) or var1
		if var1 ~= 10 and var1 ~= 11 and var1 ~= 12 and var1 ~= 13 and var1 ~= 14 then
			event.SetMesWindowMode(0, 4)
			at = 2
			helper_5abc(0, 2001, 8, 0, 0)
			return 1
		end
		event.SetMesWindowMode(0, 1)
		event.SphidaSetCulbNo(var1)
		event.PadAutoRepeatOff()
		return 0
	end, function(received: { any })
		if at <= 1 then
			return 1
		end
		if at <= 2 then
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_32540(arg0: s32)
	local count: s32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	event.SphidaSetStatusFlag(0)
	event.DeleteChara(12)
	event.DelExtMotion(0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.EohSyncChara(0, 2)
	event.EohSetShow(0, 1)
	event.SetCameraCtrl(1)
	event.DeleteSwordEffect()
	event.SetStatusbarShow(1.0)
	event.SetCrossfade(15)
	count = event.SphidaGetParCount() or count
	if arg0 == 0 and count <= 0 then
		do
			local out1, out2, out3 = event.GetBeforeCameraNextPos()
			position_x = out1 or position_x
			position_y = out2 or position_y
			position_z = out3 or position_z
		end
		event.SetCameraPos(position_x, position_y, position_z)
		do
			local out1, out2, out3 = event.GetBeforeCameraNextRef()
			position_x = out1 or position_x
			position_y = out2 or position_y
			position_z = out3 or position_z
		end
		event.SetCameraRef(position_x, position_y, position_z)
		event.SetMesWindowMode(0, 4)
		helper_5abc(0, 2003, 8, 0, 0)
		event.ResetCamera(1)
	end
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 10, which map data, a script or the engine runs by number.
function script.event_10()
	local argc: s32 = 0
	local item: s32 = 0
	argc = event.GetLocalFlag(0) or argc
	if argc == 0 then
		event.GotoUseItem(341)
		vm.wait(1)
		item = vmhost.used_item() or item
		if item == 341 then
			event.SetLocalFlag(0, 1)
			helper_44d34()
		end
		if item <= 0 then
			return
		end
		if item ~= 341 then
			helper_0e90ac27()
			return
		end
	else
		helper_46c98()
	end
end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event.Initialize()
	vm.wait(1)
	event.Finish()
end

--- Event 102, which map data, a script or the engine runs by number.
function script.event_102()
	local item: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.GotoUseItem(278)
		at = 1
		vm.wait(1)
		item = vmhost.used_item() or item
		if item <= 0 then
			print("----cancel----\n")
			return
		end
		if item ~= 278 then
			print("----CHIGAU=", item, "----\n")
			return
		end
		print("----OK----\n")
		return
	end, function(received: { any })
		if at <= 1 then
			print("----cancel----\n")
			return 0
		end
		return nil
	end)
end

script.event_1000 = event_1000

--- The dungeon system event run when the player opens a treasure box.
function script.treasure_box()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	event.Initialize()
	event.SetCrossfade(30)
	event.CharaActive(0, 0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		var1 = event.GetRoboMoveType() or var1
		if var1 == 1 then
			event.SetMotion(0, "立ち-足")
		end
		if var1 == 2 then
			event.SetMotion(0, "立ち-キャタピラ")
		end
	end
	do
		local out1, out2 = event.GetTbItemno()
		var2 = out1 or var2
		var3 = out2 or var3
	end
	if var3 <= -1 then
		helper_e3d0(var2)
	else
		helper_f198(var2, var3)
	end
end

--- The dungeon system event run when the player steps into a random circle.
function script.random_circle()
	local language_code: s32 = 0
	local active_chr_no: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local yaw: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var12: s32 = 0
	local weight: f32 = 0
	local var15: f32 = 0
	local circle_id: s32 = 0
	local var18: s32 = 0
	local var19: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local pos_x_4: f32 = 0
	local pos_y_4: f32 = 0
	local pos_z_4: f32 = 0
	local var26: f32 = 0
	local var27: s32 = 0
	local angle: f32 = 0
	local var29: s32 = 0
	local var30: s32 = 0
	local bright_rate: f32 = 0
	local var32: s32 = 0
	local result: f32 = 0
	event.Initialize()
	language_code = event.GetLanguage() or language_code
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.DngPause(1, 1)
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		helper_52115bbf()
		if language_code == 0 then
			if active_chr_no == 2 then
				event.MesMake_2(0, "ライドポッドから降りないとダメなようだ。")
			else
				event.MesMake_2(0, "モンスターに変化した状態だとダメなようだ")
			end
		elseif active_chr_no == 2 then
			event.MesMake_2(0, "Must get off the Ridepod.")
		else
			event.MesMake_2(0, "Looks like you can't do it\nas a monster.")
		end
		helper_5abc(0, -1, 8, 0, 0)
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
		end
		do
			local out1, out2, out3 = event.RandomCircleGetPos(-1)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		yaw = event.GetRefAngle(pos_x, pos_y, pos_z, var2, var3, var4) or yaw
		var2 = vm.f32(vm.f32(vm.sin(yaw) * 25.0) + pos_x)
		var3 = pos_y
		var4 = vm.f32(vm.f32(vm.cos(yaw) * 25.0) + pos_z)
		event.SetCharaPos(0, var2, var3, var4)
		event.DngPause(1, 0)
		event.Finish()
		return
	end
	do
		local out1, out2, out3 = event.RandomCircleGetPos(-1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	event.SetCameraCtrl(0)
	event.SetFcameraFollowFlag(1)
	event.SetFcameraFollowA(pos_x_2, pos_y_2 + 30.0, pos_z_2)
	event.SetCameraSpeed(8.0)
	event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
	event.SetFcameraHeight(0.0)
	event.SetFcameraDist(80.0)
	helper_52115bbf()
	event.DngPause(17, 1)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_1("snd2/sp/sp_011.sound.json")
	vm.wait(2)
	helper_479dc9e9()
	var12 = event.SndLoadSound_3(8, "snd2/sp/sp_011.sound.json") or var12
	event.SetLoadbgFile_2("event/dng/ring.gltf", "event/dng/randomcoin.gltf")
	vm.wait(4)
	helper_479dc9e9()
	weight = event.GetRndcMotNowt() or weight
	event.RandomCircleOff(-1)
	event.LoadChara(5, "event/dng/ring.gltf", "info", 12)
	event.CharaActive(1, 12)
	event.SetCharaPos(12, pos_x_2, pos_y_2, pos_z_2)
	event.SetMotion(12, "ループ", 6)
	event.CharaNormalDrive(12)
	event.SetCharaMotNowt(12, weight)
	event.EohSyncChara(4, 12)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.ObjsNextMotion(4, "消滅", 6)
	event.LoadChara(5, "event/dng/randomcoin.gltf", "info", 13)
	event.CharaActive(1, 13)
	event.SetCharaPos(13, pos_x_2, pos_y_2 - 30.0, pos_z_2)
	var15 = event.GetRand(6.2831855) or var15
	var15 = vm.f32(var15 - vm.f32(3.1415927))
	var15 = event.AngleLimit(var15) or var15
	event.SetCharaRot(13, 0.0, var15, 0.0)
	event.EohSyncChara(5, 13)
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.ObjsSetScale(5, 0.0, 0.0, 0.0)
	event.ObjsSetScale(5, 1.0, 1.0, 1.0, 40)
	event.ObjsMove2(5, pos_x_2, pos_y_2 + 40.0, pos_z_2, 30, 2, 0.5)
	var18 = 0
	var19 = vm.f32(0.6)
	while true do
		do
			local _, out2, _ = event.GetCharaRot(13)
			var15 = out2 or var15
		end
		var15 = vm.f32(var15 + var19)
		var15 = event.AngleLimit(var15) or var15
		event.SetCharaRot(13, 0.0, var15, 0.0)
		if var18 == 10 then
			event.SndSePlay(var12, 0)
		end
		if var18 == 30 then
			if language_code == 0 then
				helper_25d46bcc()
			else
				event.SetMesWindowMode(1, 7)
				event.SetMesPreset(1, 2)
				event.MesMake_2(1, "It stops with (O) button.")
				open_message(1, -1, 15, 0, 0)
			end
		end
		if (if var18 >= 30 then helper_581cb30c(0) else 0) ~= 0 or var18 > 300 then
			event.SndSeStop(var12, 0)
			event.SndSePlay(var12, 3)
			vm.wait(6)
			break
		else
			var18 = var18 + 1
			vm.wait(7)
		end
	end
	helper_3cf99f2c()
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x_3 = out1 or pos_x_3
		pos_y_3 = out2 or pos_y_3
		pos_z_3 = out3 or pos_z_3
	end
	do
		local out1, out2, out3 = event.GetCameraRef()
		pos_x_4 = out1 or pos_x_4
		pos_y_4 = out2 or pos_y_4
		pos_z_4 = out3 or pos_z_4
	end
	var26 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var26
	var27 = 0
	var27 = vm.float_bits(event.GetRand(10)) or var27
	var27 = vm.i32(var27 + 4)
	var18 = 0
	while true do
		do
			local _, out2, _ = event.GetCharaRot(13)
			var15 = out2 or var15
		end
		var15 = vm.f32(var15 + var19)
		var15 = event.AngleLimit(var15) or var15
		event.SetCharaRot(13, 0.0, var15, 0.0)
		vm.wait(8)
		if var18 >= var27 then
			if var19 > vm.f32(0.08) then
				var19 = vm.f32(var19 * vm.f32(0.9))
			end
			angle = var26
			angle = event.AngleLimit(angle) or angle
			if var15 < angle and helper_f7fba8ce(var15, angle, vm.f32(0.08)) == 0 then
				event.SetCharaRot(13, 0.0, angle, 0.0)
				circle_id = 0
				break
			end
			angle = vm.f32(var26 - vm.f32(3.1415927))
			angle = event.AngleLimit(angle) or angle
			if var15 < angle and helper_f7fba8ce(var15, angle, vm.f32(0.08)) == 0 then
				event.SetCharaRot(13, 0.0, angle, 0.0)
				circle_id = 1
				break
			end
		end
		var18 = vm.i32(var18 + 1)
	end
	helper_888ab2a3(20)
	var29 = vm.float_bits(event.GetRand(10)) or var29
	if var29 < 6 then
		var29 = vm.float_bits(event.GetRand(10)) or var29
		if circle_id == 0 then
			var30 = 2
		else
			var30 = 4
		end
		if var29 < var30 then
			var26 = vm.f32(var26 + vm.f32(3.14))
			var26 = event.AngleLimit(var26) or var26
			event.ObjsRotation(5, 0.0, var26, 0.0, 8)
			if circle_id == 0 then
				circle_id = 1
			else
				circle_id = 0
			end
			helper_888ab2a3(10)
		else
			var29 = vm.float_bits(event.GetRand(10)) or var29
			if var29 < 1 then
				var26 = vm.f32(var26 + vm.f32(3.14))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 6)
				var26 = vm.f32(var26 + vm.f32(1.57))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 3)
				var26 = vm.f32(var26 + vm.f32(1.57))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 3)
				helper_888ab2a3(20)
			end
		end
	end
	var26 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var26
	do
		local _, out2, _ = event.GetCharaRot(13)
		var15 = out2 or var15
	end
	if helper_f7fba8ce(var15, var26, 1.0) == 0 then
		circle_id = 0
	else
		circle_id = 1
	end
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	bright_rate = 1.0
	var18 = 0
	var32 = event.GetRndCircleTrapid(circle_id) or var32
	if circle_id == 0 then
		event.SndSePlay(var12, 1)
		while var18 < 30 do
			event.BscnSetBlightRate(bright_rate)
			bright_rate = vm.f32(bright_rate + vm.f32(0.03))
			var18 = var18 + 1
			vm.wait(12)
		end
		if language_code == 0 then
			event.MesMake_2(0, "コインは天使の面をこちらに向けた。")
			helper_5abc(0, -1, 8, 0, 0)
			if var32 == 1 then
				event.MesMake_2(0, "ＡＢＳボーナス")
			end
			if var32 == 2 then
				event.MesMake_2(
					0,
					"天使は「体力」と「ステータス異常」を\n全回復してくれた。"
				)
			end
			if var32 == 3 then
				event.MesMake_2(0, "天使は「ＷＨＰ」を全回復してくれた。")
			end
			if var32 == 4 then
				event.MesMake_2(0, "天使は「宝箱」を置いていった。")
				event.PostTreasureBox(pos_x_2, pos_y_2, pos_z_2, var26, 294)
			end
		else
			event.MesMake_2(0, "The coin flipped to the 'Angel'.")
			helper_5abc(0, -1, 8, 0, 0)
			if var32 == 1 then
				event.MesMake_2(0, "ABS bonus!")
			end
			if var32 == 2 then
				event.MesMake_2(0, "Strength & status fully\nrecovered by the Angel.")
			end
			if var32 == 3 then
				event.MesMake_2(0, "WHP fully recovered by the Angel.")
			end
			if var32 == 4 then
				event.MesMake_2(0, "Angel left a treasure box.")
				event.PostTreasureBox(pos_x_2, pos_y_2, pos_z_2, var26, 294)
			end
		end
	else
		event.SndSePlay(var12, 2)
		while var18 < 30 do
			event.BscnSetBlightRate(bright_rate)
			bright_rate = vm.f32(bright_rate - vm.f32(0.03))
			var18 = var18 + 1
			vm.wait(15)
		end
		if language_code == 0 then
			event.MesMake_2(0, "コインは悪魔の面をこちらに向けた。")
			helper_5abc(0, -1, 8, 0, 0)
			if var32 == 5 then
				if active_chr_no == 0 or active_chr_no == 2 then
					event.MesMake_2(0, "悪魔はユリスに「毒」のステータス異常をあたえた。")
				end
				if active_chr_no == 1 or active_chr_no == 3 then
					event.MesMake_2(0, "悪魔はモニカに「毒」のステータス異常をあたえた。")
				end
			end
			if var32 == 6 then
				if active_chr_no == 0 then
					event.MesMake_2(0, "悪魔はユリスの体力を半分にした。")
				end
				if active_chr_no == 1 or active_chr_no == 3 then
					event.MesMake_2(0, "悪魔はモニカの体力を半分にした。")
				end
				if active_chr_no == 2 then
					event.MesMake_2(0, "悪魔はスティーブの耐久力を半分にした。")
				end
			end
			if var32 == 8 then
				event.MesMake_2(0, "悪魔は銃の「ＷＨＰ」を半分にした。")
			end
			if var32 == 9 then
				event.MesMake_2(0, "悪魔はレンチの「ＷＨＰ」を半分にした。")
			end
			if var32 == 10 then
				event.MesMake_2(0, "悪魔は腕輪の「ＷＨＰ」を半分にした。")
			end
			if var32 == 11 then
				event.MesMake_2(0, "悪魔は剣の「ＷＨＰ」を半分にした。")
			end
			if var32 == 12 then
				event.MesMake_2(0, "悪魔は全モンスターを復活させた。")
			end
		else
			event.MesMake_2(0, "The coin flipped to 'Devil'")
			helper_5abc(0, -1, 8, 0, 0)
			if var32 == 5 then
				if active_chr_no == 0 or active_chr_no == 2 then
					event.MesMake_2(0, "Devil caused an abnormal status.")
				end
				if active_chr_no == 1 or active_chr_no == 3 then
					event.MesMake_2(0, "Devil has poisoned Maximilian.")
				end
			end
			if var32 == 6 then
				if active_chr_no == 0 then
					event.MesMake_2(0, "Devil takes half of Maximilian's health.")
				end
				if active_chr_no == 1 or active_chr_no == 3 then
					event.MesMake_2(0, "Devil takes half of Monica's health.")
				end
				if active_chr_no == 2 then
					event.MesMake_2(0, "Devil takes half of Steve's health.")
				end
			end
			if var32 == 8 then
				event.MesMake_2(0, "Devil takes half of your gun's WHP.")
			end
			if var32 == 9 then
				event.MesMake_2(0, "Devil takes half of your wrench's WHP.")
			end
			if var32 == 10 then
				event.MesMake_2(0, "Devil takes half your bracelet's WHP.")
			end
			if var32 == 11 then
				event.MesMake_2(0, "Devil takes half of your sword's WHP.")
			end
			if var32 == 12 then
				event.MesMake_2(0, "Devil resurrected all monsters.")
			end
		end
	end
	result = event.SetRndCircleStatus(var32) or result
	helper_5abc(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.BscnSetBlightRate(1.0)
	if var32 == 1 then
		event.SetPullItem(pos_x_2, pos_y_2, pos_z_2, 1, 10, result / 10.0)
	end
	event.DngPause(17, 0)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.SetCrossfade(15)
	event.Finish()
end

--- The dungeon system event run when the player uses the geostone.
function script.geostone()
	local active_chr_no: s32 = 0
	local language_code: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var18: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	event.Initialize()
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.DngPause(1, 1)
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		helper_52115bbf()
		language_code = event.GetLanguage() or language_code
		if language_code == 0 then
			if active_chr_no == 2 then
				event.MesMake_2(0, "ライドポッドから降りないとダメなようだ。")
			else
				event.MesMake_2(0, "モンスターに変化した状態だとダメなようだ")
			end
		elseif active_chr_no == 2 then
			event.MesMake_2(0, "Must get off the Ridepod.")
		else
			event.MesMake_2(0, "Looks like you can't do it\nas a monster.")
		end
		helper_5abc(0, -1, 8, 0, 0)
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		event.DngPause(1, 0)
		event.Finish()
		return
	end
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetMotion(0, "立ち")
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var2 = out1 or var2
		var3 = out2 or var3
		var4 = out3 or var4
	end
	if active_chr_no == 0 then
		event.SetLoadbgFile_3(
			"dungeon/chara/c01_gio.gltf",
			"event/itemget_ev/itemget_ev.gltf",
			"snd2/sp/sp_012.sound.json"
		)
		vm.wait(2)
		helper_479dc9e9()
		event.LoadMotion(5, "dungeon/chara/c01_gio.gltf", "info", 0)
	end
	if active_chr_no == 1 then
		event.SetLoadbgFile_3(
			"dungeon/chara/c02_gio.gltf",
			"event/itemget_ev/itemget_ev.gltf",
			"snd2/sp/sp_012.sound.json"
		)
		vm.wait(4)
		helper_479dc9e9()
		event.LoadMotion(5, "dungeon/chara/c02_gio.gltf", "info", 0)
	end
	var5 = event.SndLoadSound_3(8, "snd2/sp/sp_012.sound.json") or var5
	event.DngPause(17, 1)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var9 = out1 or var9
		var10 = out2 or var10
		var11 = out3 or var11
	end
	event.CopyVector(var9, var10, var11)
	event.GeostoneAnimeOff()
	event.EohSyncGeostone(1)
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	pos_y_2 = vm.f32(var10 + 18.0)
	event.EohSetPos(1, pos_x_2, pos_y_2, pos_z_2)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	var18 = event.GetRefAngle(pos_x_2, pos_y_2, pos_z_2, pos_x, pos_y, pos_z) or var18
	var18 = event.AngleLimit(var18) or var18
	if active_chr_no == 0 then
		var18 = vm.f32(var18 + vm.f32(2.9))
	end
	if active_chr_no == 1 then
		var18 = vm.f32(var18 + vm.f32(2.4))
	end
	var18 = event.AngleLimit(var18) or var18
	var9 = vm.f32(vm.f32(vm.sin(var18) * 14.0) + pos_x_2)
	var11 = vm.f32(vm.f32(vm.cos(var18) * 14.0) + pos_z_2)
	event.SetCharaPos(0, var9, var10, var11)
	var18 = vm.f32(var18 - vm.f32(3.1415927))
	var18 = event.AngleLimit(var18) or var18
	event.SetCharaRot(0, 0.0, var18, 0.0)
	event.EohResetDaPosition(0)
	event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 12)
	event.CharaActive(0, 12)
	if active_chr_no == 0 then
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(var9, var10 + 18.0, var11)
		event.SetCameraSpeed(16.0)
		event.SetFcameraFollowOfs(0.0, 6.0, 0.0)
		event.SetFcameraHeight(-14.0)
		event.SetFcameraDist(54.0)
		event.SetCharaPos(12, var9, var10 + 36.0, var11)
	end
	if active_chr_no == 1 then
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(var9, var10 + 18.0, var11)
		event.SetCameraSpeed(16.0)
		event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
		event.SetFcameraHeight(-5.0)
		event.SetFcameraDist(34.0)
		pos_x_3 = vm.f32(vm.f32(vm.sin(var18) * 8.0) + var9)
		pos_y_3 = vm.f32(var10 + 18.0)
		pos_z_3 = vm.f32(vm.f32(vm.cos(var18) * 8.0) + var11)
		event.SetCharaPos(12, pos_x_3, pos_y_3, pos_z_3)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.SetCrossfade(30)
	event.ObjsSetMotion(0, "取る", 6)
	event.ObjsNextMotion(0, "取るL", 4)
	helper_888ab2a3(16)
	event.SndSePlay(var5, 0)
	helper_888ab2a3(2)
	event.EohSetPos(1, 0.0, 0.0, 0.0)
	event.GeostoneSetReference(0, "item")
	helper_888ab2a3(10)
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var18 = event.GetRefAngle(var9, var10, var11, pos_x, pos_y, pos_z) or var18
	event.SetCharaRot(12, 0.0, var18, 0.0)
	event.CharaActive(1, 12)
	event.EohSyncChara(4, 12)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.ObjsSetMotion(4, "発動", 6, 1.2)
	event.ObjsMotionWait(4)
	event.ObjsResetMotion(4)
	event.ObjsSetMotion(4, "発動", 5)
	helper_888ab2a3(20)
	event.SndSePlay(var5, 1)
	wait_objects(0)
	helper_95ac(358, 1)
	event.SetCrossfade(10)
	if active_chr_no == 1 then
		event.SetMotion(0, "取る戻り", 6)
		vm.wait(12)
	end
	event.DngPause(17, 0)
	event.SetMotion(0, "立ち", 4)
	event.SetCharaPos(0, var2, var3, var4)
	event.EohResetDaPosition(0)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.GeostoneDelReference()
	event.GeostoneSetFlag(0)
	event.EohSetScale(1, 1.0, 1.0, 1.0)
	event.DelExtMotion(0)
	event.DeleteChara(12)
	event.Finish()
end

--- The dungeon system event run for a monster that can be talked to.
function script.monster_talk()
	local var0: s32 = 0
	local var1: s32 = 0
	do
		local out1, out2 = event.GetMonsterTalkData_2()
		var0 = out1 or var0
		var1 = out2 or var1
	end
	helper_7e48(var0, vm.i32(var1 + 1000), 1, 1)
end

--- Event 1200, which map data, a script or the engine runs by number.
script.event_1200 = helper_17754

--- The dungeon system event run when every monster on the floor has been defeated.
script.floor_clear = helper_166fc

--- The Sphida event run when the player stands at the ball and presses the action button.
function script.sphida_shot()
	local tex_bank: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local level: s32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	local var21: s32 = 0
	local var22: f32 = 0
	local var23: f32 = 0
	local var24: f32 = 0
	local var25: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var29: f32 = 0
	local var30: f32 = 0
	local var31: s32 = 0
	local var32: f32 = 0
	local var33: f32 = 0
	local var34: f32 = 0
	local var35: f32 = 0
	local var36: f32 = 0
	local var37: f32 = 0
	local var38: f32 = 0
	local var39: f32 = 0
	local var40: f32 = 0
	local var41: f32 = 0
	local var42: f32 = 0
	local var43: s32 = 0
	local var44: s32 = 0
	local var45: s32 = 0
	local var46: s32 = 0
	local pin_col: s32 = 0
	local ball_col: s32 = 0
	local var49: f32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local var53: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local yaw: f32 = 0
	local count: s32 = 0
	local var59: any = 0
	vm.wait(1)
	event.Initialize()
	helper_52115bbf()
	event.SetMotion(0, "立ち")
	if helper_2be3c() ~= 0 then
		event.Finish()
		return
	end
	event.SetStatusbarShow(0.0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_3(
		"dungeon/sphida/c01_golf.gltf",
		"dungeon/chara/c01b_miss.gltf",
		"dungeon/sphida/gool_end.gltf"
	)
	vm.wait(3)
	helper_479dc9e9()
	event.LoadMotion(5, "dungeon/sphida/c01_golf.gltf", "info", 0)
	event.LoadMotion(5, "dungeon/chara/c01b_miss.gltf", "info", 0)
	tex_bank = event.SphidaGetTexb() or tex_bank
	event.LoadChara(5, "dungeon/sphida/gool_end.gltf", "info", 12)
	event.CharaActive(0, 12)
	var1 = event.SndLoadSound_3(5, "snd2/mon/en_900.sound.json") or var1
	event.CreateSwordEffect(5, 64, 16)
	event.SwordEffectColor(128, 128, 128, 80, 128, 128, 128, 80)
	event.EohSyncChara(0, 2)
	event.EohSetShow(0, 0)
	event.SetCrossfade(15)
	event.SphidaResetPowgage()
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var8 = out1 or var8
		var9 = out2 or var9
		var10 = out3 or var10
	end
	var2, var3, var4, var6 = helper_558828de(var2, var3, var4, var6)
	helper_998c6893(var6)
	event.SphidaSetStatusFlag(1)
	var11 = 12.5
	event.SphidaCalcCarry(vm.f32(var11 * vm.f32(3.1415927)) / 180.0)
	var12, var13, level = helper_39ab7f1f(var12, var13, level)
	event.SphidaSetPowgageSafeLevel(level)
	do
		local out1, out2, out3 = event.ZeroVector()
		var15 = out1 or var15
		var16 = out2 or var16
		var17 = out3 or var17
	end
	while true do
		event.SphidaSetMinimapFlag(1)
		event.SphidaSetMmLineFlag(1)
		local t0: s32
		t0, var6, var11 = helper_f033341e(var6, var11, tex_bank)
		if t0 ~= 0 then
			event.SphidaSetMinimapFlag(0)
			event.SphidaSetMmLineFlag(0)
			event.SetCharaPos(0, var8, var9, var10)
			helper_32540(0)
			return
		end
		event.SphidaSetMinimapFlag(0)
		event.SphidaSetMmLineFlag(0)
		local t1: s32
		t1, var12, var6, var16, var15, level = helper_214de41f(var12, tex_bank, var6, var16, var15, var1, level)
		if t1 == 0 then
			break
		else
			vm.wait(8)
		end
	end
	do
		local out1, out2, out3 = event.CopyVector(var2, var3, var4)
		var18 = out1 or var18
		var19 = out2 or var19
		var20 = out3 or var20
	end
	var21 = 0
	if level ~= 1 and level ~= -1 and level ~= 4 then
		event.SpriteSetType(0, 1)
		event.SpriteSetDraw(0, 1)
		event.SpriteSetPutsize(0, 10.8, 11.6)
		event.SpriteSetPos(0, var2, var3 + 30.0, var4)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		if level == 0 then
			event.SpriteSetUvsize(0, 78, 198, 54, 58)
		end
		if level == 2 or level == -2 then
			event.SpriteSetUvsize(0, 186, 190, 70, 66)
		end
		if level == 3 or level == -3 then
			event.SpriteSetUvsize(0, 132, 198, 54, 58)
		end
		event.EohSyncSprite(18, 0)
		event.ObjsInit(18)
		event.ObjsSyncObj(18, 18)
		event.ObjsSetColor(18, 128, 128, 128, 128, 4)
		event.ObjsColorDelay(18, 20)
		event.ObjsSetColor(18, 128, 128, 128, 0, 6)
		helper_888ab2a3(10)
	end
	if var12 <= vm.f32(0.3) then
		event.SetMotion(0, "小ショット", 2)
		helper_888ab2a3(25)
		if level ~= 4 then
			event.SndSePlay(var1, 3)
		end
	elseif var12 <= vm.f32(0.6) then
		event.SetMotion(0, "中ショット", 2)
		helper_888ab2a3(34)
		event.SndSePlay(var1, 2)
	else
		event.SetMotion(0, "大ショット", 2)
		helper_888ab2a3(39)
		if level == 0 then
			event.SndSePlay(var1, 12)
		else
			event.SndSePlay(var1, 1)
		end
	end
	if level == 4 then
		helper_888ab2a3(50)
		helper_bb794e6a(var1)
		event.SetCharaPos(0, var8, var9, var10)
		helper_32540(0)
		return
	end
	if level == 0 then
		event.SpriteSetType(1, 0)
		event.SpriteSetDraw(1, 1)
		event.SpriteSetPos(1, 256, 278)
		event.SpriteSetUvsize(1, 246, 104, 266, 42)
		event.SpriteSetPutsize(1, 266, 42)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetScale(1, 10, 10, 10)
		event.EohSyncSprite(19, 1)
		event.ObjsInit(19)
		event.ObjsSyncObj(19, 19)
		event.ObjsJump(19, 256, 138, 0, 3.6, 20)
		event.ObjsSetScale(19, 1, 1, 1, 18)
		event.ObjsSetColor(19, 128, 128, 128, 128, 12)
		event.ObjsColorDelay(19, 30)
		event.ObjsSetColor(19, 128, 128, 128, 0, 6)
	end
	var12 = helper_dff48a5c(var12)
	var11 = vm.f32(vm.f32(var11 * vm.f32(3.1415927)) / 180.0)
	var12 = vm.f32(var12 - vm.f32(var12 * var11))
	var22 = vm.f32(vm.sin(var6) * vm.f32(var12 * vm.cos(var11)))
	var23 = vm.f32(var12 * vm.sin(var11))
	var24 = vm.f32(vm.cos(var6) * vm.f32(var12 * vm.cos(var11)))
	var16 = vm.f32(vm.f32(var16 * vm.f32(3.1415927)) / 2.0)
	var17 = vm.f32(vm.f32(vm.f32(-var24 * var13) * var15) * vm.f32(0.4))
	var15 = vm.f32(vm.f32(vm.f32(-var22 * var13) * var15) * vm.f32(0.4))
	do
		local out1, out2, out3 = event.SphidaGetPinPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var29 = 180.0
	var30 = -50.0
	var31 = 0
	level = 0
	var44 = 0
	var46 = 0
	while true do
		if var3 >= var29 then
			var22 = vm.f32(var22 * vm.f32(0.999))
			var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0098) * (var46 + 1)))
			var24 = vm.f32(var24 * vm.f32(0.999))
		else
			var43 = event.ChkIntersectionPoint_9(12, var2, var3, var4, var2, vm.f32(var3 - 3.0) - vm.f32(0.01), var4, 0)
				or var43
			if level == 1 and var43 >= 0 then
				var22 = vm.f32(var22 * vm.f32(0.94))
				var23 = vm.f32(var23 + vm.f32(vm.f32(-0.00045) * (var46 + 1)))
				var24 = vm.f32(var24 * vm.f32(0.94))
				var22 = vm.f32(var22 + var15)
				var24 = vm.f32(var24 + var17)
				var15 = vm.f32(var15 * vm.f32(0.8))
				var17 = vm.f32(var17 * vm.f32(0.8))
			else
				var22 = vm.f32(var22 * vm.f32(0.999))
				var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0045) * (var46 + 1)))
				var24 = vm.f32(var24 * vm.f32(0.999))
			end
		end
		do
			local out1, out2, out3 = event.AddVector(var2, var3, var4, var22, var23, var24)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
		end
		if var16 ~= 0.0 then
			var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
			var11 = vm.f32(var11 + var16)
			var11 = event.AngleLimit(var11) or var11
			var22 = vm.f32(var22 + vm.f32(vm.f32(vm.sin(var11) / 10.0) * var13))
			var24 = vm.f32(var24 + vm.f32(vm.f32(vm.cos(var11) / 10.0) * var13))
		end
		var42 = event.DistVector(var15, 0.0, var17) or var42
		if var42 > vm.f32(0.01) then
			var25 = event.DistVector(var15, 0.0, var17) or var25
			var11 = event.GetRefAngle(var18, var19, var20, var18 + var15, var19, var20 + var17) or var11
			do
				local out1, out2, out3 = event.GetCharaRot(8)
				var5 = out1 or var5
				var6 = out2 or var6
				var7 = out3 or var7
			end
			event.SetCharaRot(8, var5, var11, var7)
			event.AddCharaRot(8, var25 * 12.0, 0.0, 0.0)
			event.SetCharaRot(9, var5, var11, var7)
			event.AddCharaRot(9, var25 * 12.0, 0.0, 0.0)
		else
			var25 = event.DistVector(var22, 0.0, var24) or var25
			var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
			do
				local out1, out2, out3 = event.GetCharaRot(8)
				var5 = out1 or var5
				var6 = out2 or var6
				var7 = out3 or var7
			end
			event.SetCharaRot(8, var5, var11, var7)
			event.AddCharaRot(8, var25 / 10.0, 0.0, 0.0)
			event.SetCharaRot(9, var5, var11, var7)
			event.AddCharaRot(9, var25 / 10.0, 0.0, 0.0)
		end
		var25 = event.DistVector(var22, var23, var24) or var25
		var41 = var25
		var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
		var38 = vm.f32(vm.sin(vm.f32(var11 - vm.f32(1.5707964))) * 3.0)
		var40 = vm.f32(vm.cos(vm.f32(var11 - vm.f32(1.5707964))) * 3.0)
		event.SwordEffectAddPoint(
			var2 - var38,
			var3,
			var4 - var40,
			vm.f32(var2 + var38) + var38,
			var3,
			vm.f32(var4 + var40) + var40
		)
		do
			local out1, out2, out3 = event.CopyVector(var22, var23, var24)
			var38 = out1 or var38
			var39 = out2 or var39
			var40 = out3 or var40
		end
		do
			local out1, out2, out3 = event.NormalVector(var38, var39, var40)
			var38 = out1 or var38
			var39 = out2 or var39
			var40 = out3 or var40
		end
		do
			local out1, out2, out3 = event.ScaleVector(var38, var39, var40, 3.0)
			var38 = out1 or var38
			var39 = out2 or var39
			var40 = out3 or var40
		end
		do
			local out1, out2 =
				event.ChkIntersectionPoint_10(0, var18, var19, var20, var2 + var38, var3 + var39, var4 + var40, 0)
			var43 = out1 or var43
			var45 = out2 or var45
		end
		if var43 >= 0 and var45 == 1 then
			if var44 <= 0 then
				event.SndSePlay(var1, 11)
				var44 = 20
			end
		end
		do
			local out1, out2, out3, out4, out5, out6, out7 =
				event.ChkIntersectionPoint_15(12, var18, var19, var20, var2 + var38, var3 + var39, var4 + var40, 1)
			var32 = out1 or var32
			var33 = out2 or var33
			var34 = out3 or var34
			var35 = out4 or var35
			var36 = out5 or var36
			var37 = out6 or var37
			var43 = out7 or var43
		end
		while var43 >= 0 do
			var16 = 0.0
			if var25 > 8.0 then
				helper_79d90c82()
			end
			if var44 <= 0 then
				event.SndSePlay(var1, 6)
				var44 = 20
			end
			do
				local out1, out2, out3 = event.CopyVector(-var22, -var23, -var24)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.NormalVector(var22, var23, var24)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.ScaleVector(var22, var23, var24, 3.0)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.AddVector(var32, var33, var34, var22, var23, var24)
				var32 = out1 or var32
				var33 = out2 or var33
				var34 = out3 or var34
			end
			do
				local out1, out2, out3 = event.SubVector(var18, var19, var20, var32, var33, var34)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			var42 = event.DistVector(var18, var19, var20) or var42
			var42 = vm.f32(var41 - var42)
			if var42 <= 0.0 then
				break
			else
				var41 = var42
				do
					local out1, out2, out3 = event.CopyVector(-var22, -var23, -var24)
					var22 = out1 or var22
					var23 = out2 or var23
					var24 = out3 or var24
				end
				if var23 < 0.0 and var36 > 0.0 then
					var22 = vm.f32(var15 * 2.0)
					var23 = 0.0
					var24 = vm.f32(var17 * 2.0)
					var15 = vm.f32(var15 * vm.f32(0.2))
					var17 = vm.f32(var17 * vm.f32(0.2))
				else
					if
						var22 < 0.0 and var35 > 0.0
						or var22 > 0.0 and var35 < 0.0
						or var24 < 0.0 and var37 > 0.0
						or var24 > 0.0 and var37 < 0.0
					then
						var15 = 0.0
						var17 = 0.0
					end
					var22 = 0.0
					var23 = 0.0
					var24 = 0.0
				end
				var22 = vm.f32(vm.f32(vm.f32(var35 * var25) * vm.f32(0.9)) + var22)
				var23 = vm.f32(vm.f32(vm.f32(var36 * var25) * vm.f32(0.58)) + var23)
				var24 = vm.f32(vm.f32(vm.f32(var37 * var25) * vm.f32(0.9)) + var24)
				do
					local out1, out2, out3 = event.CopyVector(var32, var33, var34)
					var18 = out1 or var18
					var19 = out2 or var19
					var20 = out3 or var20
				end
				do
					local out1, out2, out3 = event.CopyVector(var22, var23, var24)
					var38 = out1 or var38
					var39 = out2 or var39
					var40 = out3 or var40
				end
				do
					local out1, out2, out3 = event.NormalVector(var38, var39, var40)
					var38 = out1 or var38
					var39 = out2 or var39
					var40 = out3 or var40
				end
				do
					local out1, out2, out3 = event.ScaleVector(var38, var39, var40, 3.0)
					var38 = out1 or var38
					var39 = out2 or var39
					var40 = out3 or var40
				end
				do
					local out1, out2, out3 = event.ScaleVector(var35, var36, var37, var42)
					var35 = out1 or var35
					var36 = out2 or var36
					var37 = out3 or var37
				end
				do
					local out1, out2, out3 = event.CopyVector(var32, var33, var34)
					var2 = out1 or var2
					var3 = out2 or var3
					var4 = out3 or var4
				end
				do
					local out1, out2, out3 = event.AddVector(var2, var3, var4, var35, var36, var37)
					var2 = out1 or var2
					var3 = out2 or var3
					var4 = out3 or var4
				end
				do
					local out1, out2, out3, out4, out5, out6, out7 = event.ChkIntersectionPoint_15(
						12,
						var18,
						var19,
						var20,
						var2 + var38,
						var3 + var39,
						var4 + var40,
						1
					)
					var32 = out1 or var32
					var33 = out2 or var33
					var34 = out3 or var34
					var35 = out4 or var35
					var36 = out5 or var36
					var37 = out6 or var37
					var43 = out7 or var43
				end
			end
		end
		do
			local out1, out2, out3, out4, out5, out6, out7, out8 =
				event.ChkIntersectionPoint_16(12, var2, var3, var4, var2, var3 - 3.0, var4, 1)
			var32 = out1 or var32
			var33 = out2 or var33
			var34 = out3 or var34
			var35 = out4 or var35
			var36 = out5 or var36
			var37 = out6 or var37
			var43 = out7 or var43
			var45 = out8 or var45
		end
		if var43 >= 0 then
			var16 = 0.0
			var3 = vm.f32(var33 + 3.0)
			var42 = event.DistVector(var22, 0.0, var24) or var42
			if var42 < vm.f32(2.4) or var23 >= -1.0 and var23 <= 0.0 then
				var23 = 0.0
				level = 1
			else
				var22 = vm.f32(var22 * vm.f32(0.9))
				var23 = -vm.f32(var23 * vm.f32(0.58))
				var24 = vm.f32(var24 * vm.f32(0.9))
				var22 = vm.f32(var22 + vm.f32(var15 * 2.0))
				var24 = vm.f32(var24 + vm.f32(var17 * 2.0))
				var15 = vm.f32(var15 * vm.f32(0.2))
				var17 = vm.f32(var17 * vm.f32(0.2))
				if var25 > 8.0 then
					helper_79d90c82()
				end
				if var44 <= 0 then
					event.SndSePlay(var1, 5)
					var44 = 20
				end
			end
			var42 = event.DistVector(var15, 0.0, var17) or var42
			if var23 == 0.0 and var25 < vm.f32(1.6) and var42 < vm.f32(0.4) then
				if not (var45 == 6) then
					break
				end
				var31 = 1
				break
			end
		end
		if var3 < -500.0 then
			var31 = 1
			break
		elseif var46 >= 300 then
			var31 = 1
			break
		else
			pin_col = event.SphidaGetPinCol() or pin_col
			ball_col = event.SphidaGetBallCol() or ball_col
			x = vm.f32(pos_x - var2)
			y = vm.f32(pos_y - var3)
			z = vm.f32(pos_z - var4)
			var49 = event.DistVector(x, y, z) or var49
			if ball_col ~= pin_col then
				var53 = event.LinePointDist(var18, var19, var20, var2, var3, var4, pos_x, pos_y, pos_z) or var53
				if var53 >= 0.0 and var53 <= 30.0 then
					var21 = 1
					break
				end
				if var49 ~= 0.0 then
					if var49 <= 120.0 then
						do
							local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(vm.f32(0.6), var49))
							x = out1 or x
							y = out2 or y
							z = out3 or z
						end
						do
							local out1, out2, out3 = event.AddVector(var2, var3, var4, x, y, z)
							var2 = out1 or var2
							var3 = out2 or var3
							var4 = out3 or var4
						end
						do
							local out1, out2, out3 = event.AddVector(var22, var23, var24, x, y, z)
							var22 = out1 or var22
							var23 = out2 or var23
							var24 = out3 or var24
						end
					end
				else
					var21 = 1
					break
				end
			elseif var49 ~= 0.0 then
				if var49 <= 60.0 then
					do
						local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(1.0, var49))
						x = out1 or x
						y = out2 or y
						z = out3 or z
					end
					do
						local out1, out2, out3 = event.SubVector(var2, var3, var4, x, y, z)
						var2 = out1 or var2
						var3 = out2 or var3
						var4 = out3 or var4
					end
					do
						local out1, out2, out3 = event.SubVector(var22, var23, var24, x, y, z)
						var22 = out1 or var22
						var23 = out2 or var23
						var24 = out3 or var24
					end
				end
			end
			event.SetCharaPos(8, var2, var3, var4)
			event.SetCharaPos(9, var2, var3, var4)
			do
				local out1, out2, out3 = event.CopyVector(var2, var3, var4)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			if var3 <= var30 then
				event.SetFcameraFollowFlag(0)
				if var31 >= 30 then
					if var31 >= 50 then
						break
					end
				else
					event.SetCameraRef(var2, var3, var4)
				end
				var31 = var31 + 1
			elseif var46 >= 20 then
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetCameraSpeed(6.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				do
					local out1, out2, out3 = event.GetCameraPos()
					pos_x_2 = out1 or pos_x_2
					pos_y_2 = out2 or pos_y_2
					pos_z_2 = out3 or pos_z_2
				end
				event.SetFcameraHeight(30.0)
				event.SetFcameraDist(200.0)
				yaw = event.GetRefAngle(
					vm.f32(var2 + var22) + var22,
					vm.f32(var3 + var23) + var23,
					vm.f32(var4 + var24) + var24,
					pos_x_2,
					pos_y_2,
					pos_z_2
				) or yaw
				event.SetFcameraAngle(yaw)
				event.SetFcameraFollowA(
					vm.f32(var2 + var22) + var22,
					vm.f32(var3 + var23) + var23,
					vm.f32(var4 + var24) + var24
				)
				event.FcameraStep(1)
			end
			event.SphidaSetBallPos(var2, var3, var4)
			vm.wait(15)
			if var44 > 0 then
				var44 = var44 - 1
			end
			var46 = var46 + 1
		end
	end
	event.SetCharaPos(8, var2, var3, var4)
	event.SetCharaPos(9, var2, var3, var4)
	vm.wait(16)
	event.SphidaSetStatusFlag(0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	if var31 == 0 then
		event.SphidaSetBallPos(var2, var3, var4)
		if var21 == 1 then
			event.CharaActive(0, 0)
			event.CharaActive(0, 8)
			event.CharaActive(0, 9)
			event.CharaActive(1, 12)
			event.SetCharaPos(12, pos_x, pos_y, pos_z)
			event.SetMotion(12, "発動", 6)
			event.SndSePlay(var1, 17)
			var46 = 0
			while var46 < 2 do
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetFcameraFollowA(pos_x, pos_y, pos_z)
				event.SetCameraSpeed(12.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				event.SetFcameraHeight(0.0)
				event.SetFcameraDist(100.0)
				event.FcameraStep(1)
				var46 = var46 + 1
				vm.wait(17)
			end
			event.CharaActive(0, 10)
			do
				local out1, out2, out3 = event.SphidaGetPinPos()
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			var46 = 0
			while var46 < 100 do
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetFcameraFollowA(pos_x, pos_y, pos_z)
				event.SetCameraSpeed(12.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				event.SetFcameraHeight(0.0)
				event.SetFcameraDist(100.0)
				event.FcameraStep(1)
				var46 = var46 + 1
				vm.wait(18)
			end
			event.CharaActive(0, 11)
			event.PostTreasureBox(pos_x, pos_y - 30.0, pos_z, var11, 294)
			helper_888ab2a3(54)
			helper_888ab2a3(30)
			event.DeleteChara(8)
			event.DeleteChara(9)
			event.DeleteChara(10)
			event.DeleteChara(11)
			event.SphidaSetPlayFlag(0)
			var1 = event.SndLoadSound_3(8, "snd2/sp/sp_000.sound.json") or var1
			event.StopBgm(0)
			event.SndSePlay(var1, 0)
			event.CharaActive(1, 0)
			event.SetFcameraFollowFlag(0)
			event.SetCameraCtrl(0)
			event.CmrsInit()
			event.CmrsSyncObj(0, 0.0, 15.0, 0.0, 0.0, 0.0, 80.0, "", 1)
			event.ObjsSetMotion(0, "カップインポーズ", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "カップインポーズL", 4)
			event.ObjsResetDaPosition(0)
			event.SpriteInit(0)
			event.SpriteSetType(0, 0)
			event.SpriteSetTexture(0, "sphida_bar", tex_bank)
			event.SpriteSetUvsize(0, 258, 0, 254, 54)
			event.SpriteSetPos(0, 256, 208)
			event.SpriteSetPutsize(0, 254, 54)
			event.SpriteSetColor(0, 128, 128, 128, 0)
			event.SpriteSetScale(0, 5.0, 5.0)
			event.SpriteSetDraw(0, 1)
			event.EohSyncSprite(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.ObjsSetScale(1, 1.0, 1.0, 0.0, 60)
			event.ObjsSetColor(1, 128, 128, 128, 128, 60)
			wait_objects(0)
			helper_888ab2a3(90)
			vm.wait(23)
			event.PlayBgm(0)
			event.SetCharaPos(0, var8, var9, var10)
			event.CmrsReleaseObj()
			event.SpriteSetDraw(0, 0)
		else
			count = event.SphidaGetParCount() or count
			if count >= 2 then
				event.SetMesWindowMode(0, 5)
				event.SetMesQuestionGyou(0, 0)
				var59 = helper_7c78bc02(0, 2002, 8, 256, 208, 2, 0)
				vm.wait(25)
				if var59 == 0 then
					do
						local out1, out2, out3, out4 = event.GetPartsFuncPos(var2, var3, var4, 100.0, "point")
						var43 = out1 or var43
						var8 = out2 or var8
						var9 = out3 or var9
						var10 = out4 or var10
					end
					if var43 == 0 then
						do
							local out1, out2, out3 = event.GetPartsOrigin(var2, var3, var4, 100.0)
							var8 = out1 or var8
							var9 = out2 or var9
							var10 = out3 or var10
						end
					end
					do
						local out1, out2, out3 = event.SphidaGetPinPos()
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					var25 = event.DistVector2(var8, var9, var10, pos_x, pos_y, pos_z) or var25
					if var25 < 40.0 then
						var11 = event.GetRand(6.2831855) or var11
						var11 = vm.f32(var11 - vm.f32(3.1415927))
						var8 = vm.f32(var8 + vm.f32(vm.sin(var11) * 50.0))
						var10 = vm.f32(var10 + vm.f32(vm.cos(var11) * 50.0))
					else
						do
							local out1, out2, out3, out4 = event.GetNearTboxPos(var8, var9, var10)
							var32 = out1 or var32
							var33 = out2 or var33
							var34 = out3 or var34
							var43 = out4 or var43
						end
						var46 = 0
						while var43 >= 0 do
							do
								local out1, out2, out3 = event.CopyVector(var8, var9, var10)
								var18 = out1 or var18
								var19 = out2 or var19
								var20 = out3 or var20
							end
							do
								local out1, out2, out3 = event.SubVector(var18, var19, var20, var32, var33, var34)
								var18 = out1 or var18
								var19 = out2 or var19
								var20 = out3 or var20
							end
							do
								local out1, out2, out3 = event.NormalVector(var18, var19, var20)
								var18 = out1 or var18
								var19 = out2 or var19
								var20 = out3 or var20
							end
							do
								local out1, out2, out3 = event.ScaleVector(var18, var19, var20, 32.0)
								var18 = out1 or var18
								var19 = out2 or var19
								var20 = out3 or var20
							end
							do
								local out1, out2, out3 = event.CopyVector(var32, var33, var34)
								var8 = out1 or var8
								var9 = out2 or var9
								var10 = out3 or var10
							end
							do
								local out1, out2, out3 = event.AddVector(var8, var9, var10, var18, var19, var20)
								var8 = out1 or var8
								var9 = out2 or var9
								var10 = out3 or var10
							end
							do
								local out1, out2, out3, out4 = event.GetNearTboxPos(var8, var9, var10)
								var32 = out1 or var32
								var33 = out2 or var33
								var34 = out3 or var34
								var43 = out4 or var43
							end
							var46 = var46 + 1
							if var46 > 6 then
								break
							end
						end
					end
					var6 = event.GetRefAngle(var8, var9, var10, var2, var3, var4) or var6
					event.SetCharaPos(0, var8, var9, var10)
					event.SetCharaRot(0, 0.0, var6, 0.0)
					event.SetCameraRef(var8, var9 + 30.0, var10)
					var6 = vm.f32(var6 - vm.f32(3.1415927))
					var6 = event.AngleLimit(var6) or var6
					var8 = vm.f32(vm.f32(vm.sin(var6) * 100.0) + var8)
					var9 = vm.f32(var9 + 30.0)
					var10 = vm.f32(vm.f32(vm.cos(var6) * 100.0) + var10)
					event.SetCameraPos(var8, var9, var10)
					event.ResetCamera(0)
				else
					event.SetCharaPos(0, var8, var9, var10)
				end
			else
				event.SetCharaPos(0, var8, var9, var10)
			end
		end
	else
		event.SndSePlay(var1, 18)
		event.SetFcameraFollowFlag(0)
		event.SetCameraCtrl(0)
		event.CmrsInit()
		event.CmrsSyncObj(0, 0.0, 15.0, 0.0, 0.0, 0.0, 80.0, "", 1)
		event.ObjsSetMotion(0, "だめだめ", 6)
		event.ObjsNormalDrive(0)
		event.ObjsNextMotion(0, "立ち", 4)
		event.ObjsResetDaPosition(0)
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "sphida_bar", tex_bank)
		event.SpriteSetUvsize(0, 334, 54, 178, 34)
		event.SpriteSetPos(0, 256, -25)
		event.SpriteSetPutsize(0, 160, 50)
		event.SpriteSetColor(0, 128, 128, 128, 128)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(1, 0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 1.2, 16)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 2.0, 12)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 1.5, 8)
		wait_objects(0)
		helper_888ab2a3(20)
		event.SpriteSetDraw(0, 0)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
		end
		event.SphidaSetBallPos(var2, var3 + 3.0, var4)
		event.SetCharaPos(8, var2, var3 + 3.0, var4)
		event.SetCharaPos(9, var2, var3 + 3.0, var4)
		event.SetCharaPos(0, var8, var9, var10)
		event.CmrsReleaseObj()
	end
	if var21 == 1 then
		helper_bb794e6a(-1)
	else
		helper_bb794e6a(var1)
	end
	helper_32540(var21)
end

--- The Sphida event run when the menu button is pressed near the ball.
function script.sphida_near_ball()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	event.Initialize()
	helper_52115bbf()
	event.SetMesWindowMode(0, 5)
	event.SetMesQuestionGyou(0, 0)
	var0 = helper_7c78bc02(0, 2004, 8, 256, 208, 2, 0)
	if var0 == 0 then
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		event.SphidaSetBallPos(var1, var2 + 3.0, var3)
		event.SetCharaPos(8, var1, var2 + 3.0, var3)
		event.SetCharaPos(9, var1, var2 + 3.0, var3)
		helper_bb794e6a(-1)
		event.SetCrossfade(15)
	end
	vm.wait(2)
	event.Finish()
end

return script
