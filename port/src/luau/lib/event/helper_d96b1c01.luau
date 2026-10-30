--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_d96b1c01()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local x_2: f32 = 0
	local y_2: f32 = 0
	local z_2: f32 = 0
	local operand_x: f32 = 0
	local operand_y: f32 = 0
	local operand_z: f32 = 0
	local var11: s32 = 0
	local var12: s32 = 0
	vm.section(function()
		event.SetFlag(308, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetStatusbarShow(0, 1.0)
		var0 = event.SndLoadSound_2(3803) or var0
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e300/e308/")
		event.LoadMes(0, 5, "e308_1.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e308_mints.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e308_monica.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "p00_24a.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SetStatus(1, 10, 8, 1)
		event.ChangeDir("")
		event.LoadChara(5, "event/d03/p00_26a.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SetStatus(1, 11, 8, 1)
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 13)
			event.LoadEquip(5, 0, 4, "info", 13)
			event.LoadEquip(5, 0, 3, "info", 13)
			event.LoadEquip(5, 0, 2, "info", 13, 14)
			event.LoadMotion(5, "event/e300/e308/e308_mints.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 13)
			event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 13)
			event.EohSyncChara(0, 13)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
			event.LoadMotion(5, "event/dng_inout/c02d03gkey.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 13)
			event.LoadEquip(5, 1, 4, "info", 13)
			event.LoadEquip(5, 1, 3, "info", 13)
			event.LoadEquip(5, 1, 2, "info", 13, 14)
			event.LoadMotion(5, "event/e300/e308/e308_monica.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 13)
			event.LoadMotion(5, "event/dng_inout/c02d03gkey.gltf", "info", 13)
			event.EohSyncChara(1, 13)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
			event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 0)
		end
		event.CharaActive(0, 13)
		event.CharaActive(0, 14)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.EohSetPos(0, -230.0, 62.1, 1210.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetFootSoundId(0, 1)
		event.EohSetPos(1, -213.0, 65.619995, 1230.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetFootSoundId(1, 1)
		event.EohSetPos(3, -150.0, 230.0, 1600.0)
		event.EohSetRot(3, 0.0, 3.14, 0.0)
		event.EohSetMotion(3, "飛び", 4)
		event.EohSetPos(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "立ち", 4)
		event.EohSetSoundId(2, var0)
		event.EohSetFrameStatus(2, "hana", 0)
		event.ObjsSePlay(3, var0, 1)
		event.ObjsSeDelay(3, 34)
		event.ObjsSePlay(3, var0, 1)
		event.ObjsInitPas(2)
		event.ObjsSetPasFrm(2, 360)
		event.ObjsAddPas(2, -193.32, 507.72, 144.75)
		event.ObjsAddPas(2, -159.98, 507.72, 220.59)
		event.ObjsAddPas(2, -76.06, 507.72, 268.34)
		event.ObjsAddPas(2, 23.46, 507.72, 253.28)
		event.ObjsAddPas(2, 92.64, 507.72, 174.56)
		event.ObjsAddPas(2, 93.49, 507.72, 66.28)
		event.ObjsAddPas(2, 1.5, 507.72, -7.07)
		event.ObjsAddPas(2, -107.74, 507.72, -27.82)
		event.ObjsAddPas(2, -212.55, 507.72, 43.02)
		event.ObjsAddPas(2, -280.2, 507.72, 145.95)
		event.ObjsAddPas(2, -261.4, 507.72, 250.13)
		event.ObjsAddPas(2, -177.44, 507.72, 302.03)
		event.ObjsAddPas(2, -77.76, 507.72, 299.29)
		event.ObjsAddPas(2, -8.21, 507.72, 209.44)
		event.ObjsAddPas(2, 14.08, 507.72, 94.42)
		event.CmrsInit()
		event.CmrsSetPos(254.65, 473.72, 1588.47)
		event.CmrsSetRef(-219.14, 62.76, 1197.82)
		event.SndSePlay(var0, 0)
		event.SetFadeIn(30)
		x = -150.0
		y = 230.0
		z = 1600.0
		x_2 = 0.0
		y_2 = -8.0
		z_2 = -10.0
		operand_x = 0.0
		operand_y = vm.f32(0.2)
		operand_z = 0.0
		var11 = 0
		while var11 < 60 do
			do
				local out1, out2, out3 = event.AddVector(x, y, z, x_2, y_2, z_2)
				x = out1 or x
				y = out2 or y
				z = out3 or z
			end
			do
				local out1, out2, out3 = event.AddVector(x_2, y_2, z_2, operand_x, operand_y, operand_z)
				x_2 = out1 or x_2
				y_2 = out2 or y_2
				z_2 = out3 or z_2
			end
			event.EohSetPos(3, x, y, z)
			var11 = var11 + 1
			vm.wait(1)
		end
		event.CharaActive(0, 11)
		event.CmrsSetPos(-184.07, 43.54, 1216.07)
		event.CmrsSetRef(-236.95, 39.04, 1208.54)
		if active_chr_no == 0 then
			event.CharaActive(0)
		else
			event.CharaActive(13)
			event.CharaActive(14)
		end
		event.ObjsMove(0, -230.0, 32.1, 1200.0, 10)
		event.ObjsSetMotion(0, "d03着地", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		wait_frames(6)
		if active_chr_no == 0 then
			event.CharaActive(13)
			event.CharaActive(14)
		else
			event.CharaActive(0)
		end
		event.ObjsMove(1, -213.0, 35.19, 1220.0, 10)
		event.ObjsSetMotion(1, "d03着地", 6)
		wait_frames(2)
		var12 = event.GetSndId(1) or var12
		event.SndSePlay(var12, 3)
		event.SndSePlay(var12, 2)
		wait_frames(6)
		event.SndSePlay(var12, 2)
		wait_frames(30)
		event.CmrsSetPos(-220.28, 65.74, 1289.9)
		event.CmrsSetRef(-220.42, 54.04, 1203.57)
		event.CmrsMove2(-220.21, 65.74, 1327.83, -182.37, 80.44, 1173.66, 60, 0, 1.0)
		event.ObjsMove(1, -213.0, 33.37, 1200.0, 30)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMotionDelay(1, 30)
		event.ObjsSetMotion(1, "立ち")
		wait_camera()
		event.CmrsSetPos(-202.75, 44.94, 1163.67)
		event.CmrsSetRef(-225.81, 55.17, 1208.79)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3080010)
		wait_objects(0)
		event.ObjsTexAnime(1, 1, "通常目～こまり目とじ")
		event.ObjsTexaDelay(1, 30)
		event.ObjsTexAnime(1, 1, "こまり目とじ～目あけ")
		event.ObjsTexaDelay(1, 30)
		event.ObjsTexAnime(1, 0, "こまり目とじ～目あけ")
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ObjsSeDelay(1, 1)
		event.ObjsSePlay(1, var0, 3)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3080020)
		wait_objects(1)
		event.CmrsSetPos(-218.98, 55.74, 1263.48)
		event.CmrsSetRef(-222.62, 51.36, 1199.73)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3080030)
		event.CmrsMove2(-218.17, 55.74, 1293.84, -219.13, 76.78, 1199.61, 60, 0, 1.0)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsMotionDelay(1, 14)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.ObjsSetMotion(2, "飛び", 4)
		event.ObjsStartPas(2)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.SetPakuAnim(0, "通常口パク")
		helper_1584c528(3080035, 180)
		wait_camera()
		event.SetFadeOut(30)
		wait_frames(30)
	end)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.CharaActive(0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(4, 1)
	event.EohSetShow(5, 1)
	event.Finish()
end

return helper_d96b1c01
