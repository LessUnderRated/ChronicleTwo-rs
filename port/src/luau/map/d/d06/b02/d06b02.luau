--!strict
-- map/d/d06/b02/d06b02.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99() end

--- Helper function.
local function helper_10324()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	vm.section(function()
		event.SetFlag(728, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(7836)
		var0 = event.SndLoadSound_2(7836) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("dungeon/monster/")
		event.LoadChara(5, "e214e.gltf", "e214e", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		event.ChangeDir("event/e700/e728/")
		event.LoadMes(0, 5, "e728.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e728_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e728_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		block = event.LoadImg_4(5, "e728telop01.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e728telop01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(3, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e700/e728/e728_mints.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e700/e728/e728_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSetPos(1, 4028.5, 1622.31, -1892.41)
		event.EohSetRot(1, 0.0, -1.54, 0.0)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(0, 4034.32, 1622.31, -1873.58)
		event.EohSetRot(0, 0.0, -1.69, 0.0)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(2, 4329.53, 1541.01, -1873.11)
		event.EohSetRot(2, 0.0, 2.9, 0.0)
		event.EohSetFootSoundId(2, 2)
		event.InitDramaScene()
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		event.CharaActive(0)
		event.CharaActive(8)
		event.CharaActive(9)
		event.CharaActive(10)
		event.CmrsInit()
		event.CmrsSetPos(3987.77, 1635.56, -1881.54)
		event.CmrsSetRef(4044.8, 1645.92, -1884.2)
		event.SetProjection(524.9)
		event.SetFadeIn(30)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "まばたき目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おどろき目パチ")
		helper_888ab2a3(60)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsSetMotion(0, "上→右", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.ObjsSetMotion(1, "上から左", 6)
		event.ObjsNextMotion(1, "左向くL", 4)
		helper_888ab2a3(60)
		event.CmrsSetPos(4119.77, 1673.4, -1851.32)
		event.CmrsSetRef(3992.15, 1648.49, -1851.49)
		event.SetProjection(300.9)
		event.SndSePlay(var0, 0)
		event.CmrsMove(9389.19, 2315.05, -1704.48, 8139.49, 2508.8, -1483.43, 300)
		wait_camera()
		helper_888ab2a3(20)
		helper_888ab2a3(10)
		event.CmrsSetPos(3887.54, 1636.19, -1974.75)
		event.CmrsSetRef(4005.51, 1653.83, -1855.26)
		event.SetProjection(524.9)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetPos(0, 4036.58, 1622.31, -1856.87)
		event.ObjsSetRot(0, 0.0, -2.05, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, 4032.15, 1622.31, -1892.75)
		event.ObjsSetRot(1, 0.0, -1.54, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetPos(2, 3919.19, 1729.55, -1864.92)
		event.ObjsSetRot(2, 0.0, 1.5, 0.0)
		event.ObjsResetDaPosition(2)
		event.ObjsMove(2, 3919.19, 1622.31, -1864.92, 20)
		event.ObjsSetMotion(2, "落下", 6)
		event.ObjsMotionDelay(2, 20)
		event.ObjsNextMotion(2, "着地", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SndSePlay(var0, 1)
		event.CmrsQuakeDelay(20)
		event.CmrsQuake(0.0, 1.0, 0.0, 30)
		helper_888ab2a3(90)
		wait_objects(2)
		event.CmrsSetPos(4061.29, 1628.51, -1771.93)
		event.CmrsSetRef(3940.77, 1672.13, -1868.07)
		event.ObjsSetPos(0, 4036.58, 1222.31, -1856.87)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, 4032.15, 1222.31, -1892.75)
		event.ObjsResetDaPosition(1)
		event.CmrsMove(4052.6, 1698.8, -1956.36, 3928.33, 1648.67, -1867.69, 150)
		event.ObjsSetColor(3, 128, 128, 128, 128, 30)
		event.SndSePlay(var0, 2)
		event.ObjsSeDelay(2, 90)
		event.ObjsSePlay(2, var0, 3)
		event.ObjsSetMotion(2, "攻撃１", 6)
		event.ObjsNextMotion(2, "攻撃２", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		wait_camera()
		event.ObjsSetColor(3, 128, 128, 128, 0, 30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(10)
	event.CancelDramaScene()
	event.SpriteSetDraw(0, 0)
	event.SndSeStop(var0, 0)
	event.CharaActive(0)
	event.CharaActive(8)
	event.CharaActive(9)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CharaActive(0)
	event.SetCharaPos(0, 4036.58, 1622.31, -1856.87)
	event.SetCharaRot(0, 0.0, -2.05, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	vm.wait(11)
end

--- Helper function.
local function helper_1a6d4()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local rot_z: f32 = 0
	local var9: f32 = 0
	local var10: s32 = 0
	local var11: s32 = 0
	event.ActchrSetDefMotion(0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_2("event/e700/e728/rasen_iwa.gltf", "snd2/sp/sp_049.sound.json")
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
	end
	do
		local out1, out2, out3 = event.EohGetPos(0)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	do
		local out1, out2, out3 = event.EohGetRot(0)
		rot_x = out1 or rot_x
		rot_y = out2 or rot_y
		rot_z = out3 or rot_z
	end
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	var9 = event.GetRefAngle(var0, var1, var2, pos_x, pos_y, pos_z) or var9
	var9 = vm.f32(var9 - vm.f32(3.1415927))
	var9 = event.AngleLimit(var9) or var9
	var10 = 0
	while var10 < 20 do
		event.CtrlcRotBack(var9)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var10 = var10 + 1
		vm.wait(1)
	end
	helper_479dc9e9()
	var11 = event.SndLoadSound_3(8, "snd2/sp/sp_049.sound.json") or var11
	event.LoadChara(5, "event/e700/e728/rasen_iwa.gltf", "info", 8)
	event.CharaActive(1, 8)
	event.SetCharaPos(8, pos_x, pos_y + 20.0, pos_z)
	event.SetCharaRot(8, rot_x, rot_y, rot_z)
	event.SetMotion(8, "岩消える", 6, 0.6)
	event.SndSePlay(var11, 0)
	event.ObjsMove2(0, pos_x, pos_y - 260.0, pos_z, 60, 1, 1.0)
	event.ResetCamera(0)
	wait_objects(0)
	helper_888ab2a3(30)
	event.DeleteChara(8)
	event.Finish()
end

--- Helper function.
local function helper_12f34()
	local var0: s32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_3(5, "snd2/mon/en_287.sound.json") or var0
		event.SndSePlay(var0, 0)
		event.SndSeStop(var0, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.GetActiveChrNo()
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("dungeon/monster/")
		event.LoadChara(5, "e220e.gltf", "e220e", 12)
		event.CharaActive(12)
		event.EohSyncChara(2, 12)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		event.ChangeDir("event/e700/e728/")
		block = event.LoadImg_4(5, "e728telop02.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e728telop02", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(3, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ChangeDir("")
		event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
		event.LoadEquip(5, 0, 4, "info", 8)
		event.LoadEquip(5, 0, 3, "info", 8)
		event.LoadEquip(5, 0, 2, "info", 8, 9)
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(0, 8)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", 10)
		event.LoadEquip(5, 1, 4, "info", 10)
		event.LoadEquip(5, 1, 3, "info", 10)
		event.LoadEquip(5, 1, 2, "info", 10, 11)
		event.CharaActive(10)
		event.CharaActive(11)
		event.EohSyncChara(1, 10)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetPos(1, 3308.05, 2411.42, 3265.06)
		event.EohSetRot(1, 0.0, -1.54, 0.0)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(0, 3309.86, 2411.42, 3306.96)
		event.EohSetRot(0, 0.0, -1.69, 0.0)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(2, 3226.64, 2528.88, 3294.36)
		event.EohSetRot(2, 0.0, 1.5, 0.0)
		event.EohSetFootSoundId(2, 2)
		event.InitDramaScene()
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		event.CharaActive(0, 0)
		event.CharaActive(12)
		event.CmrsInit()
		event.CmrsSetPos(3170.59, 2432.59, 3163.04)
		event.CmrsSetRef(3269.4, 2439.28, 3302.02)
		event.SetProjection(524.9)
		event.SetFadeIn(30)
		event.ObjsMove(2, 3226.64, 2411.42, 3294.36, 20)
		event.ObjsSetMotion(2, "落下", 6)
		event.ObjsMotionDelay(2, 20)
		event.ObjsNextMotion(2, "着地", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.ObjsSePlay(2, var0, 21)
		event.CmrsQuakeDelay(20)
		event.CmrsQuake(0.0, 1.0, 0.0, 30)
		helper_888ab2a3(90)
		wait_objects(2)
		event.CmrsSetPos(3330.27, 2500.07, 3406.83)
		event.CmrsSetRef(3233.27, 2448.19, 3292.97)
		event.ObjsSetPos(0, 3309.86, 2911.42, 3306.96)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, 3308.05, 2911.42, 3265.06)
		event.ObjsResetDaPosition(1)
		event.CmrsMove2(3371.95, 2435.67, 3236.53, 3241.2, 2447.69, 3291.49, 150, 2, 1.0)
		event.ObjsSetColor(3, 128, 128, 128, 128, 30)
		event.SndSePlay(var0, 4)
		event.ObjsSeDelay(2, 45)
		event.ObjsSePlay(2, var0, 22)
		event.ObjsSetMotion(2, "攻撃１", 6)
		event.ObjsNextMotion(2, "遊び", 6)
		event.ObjsNextMotion(2, "立ち")
		wait_camera()
		event.ObjsSetColor(3, 128, 128, 128, 0, 30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(6)
	event.CancelDramaScene()
	event.SpriteSetDraw(0, 0)
	event.SndSeStop(var0, 4)
	event.SndSeStop(var0, 20)
	event.SndSeStop(var0, 21)
	event.SndSeStop(var0, 22)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CharaActive(1, 0)
	event.SetCharaPos(0, 3308.05, 2411.42, 3265.06)
	event.SetCharaRot(0, 0.0, -2.05, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
end

--- Helper function.
local function helper_14a14()
	local var0: s32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_3(5, "snd2/mon/en_288.sound.json") or var0
		event.SndSePlay(var0, 0)
		event.SndSeStop(var0, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.GetActiveChrNo()
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("dungeon/monster/")
		event.LoadChara(5, "e219e.gltf", "e219e", 12)
		event.CharaActive(12)
		event.EohSyncChara(2, 12)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		event.ChangeDir("event/e700/e728/")
		block = event.LoadImg_4(5, "e728telop03.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e728telop03", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(3, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ChangeDir("")
		event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
		event.LoadEquip(5, 0, 4, "info", 8)
		event.LoadEquip(5, 0, 3, "info", 8)
		event.LoadEquip(5, 0, 2, "info", 8, 9)
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(0, 8)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", 10)
		event.LoadEquip(5, 1, 4, "info", 10)
		event.LoadEquip(5, 1, 3, "info", 10)
		event.LoadEquip(5, 1, 2, "info", 10, 11)
		event.CharaActive(10)
		event.CharaActive(11)
		event.EohSyncChara(1, 10)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetPos(1, -4971.6, 3914.32, 1534.68)
		event.EohSetRot(1, 0.0, -2.86, 0.0)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(0, -4993.85, 3914.32, 1543.9)
		event.EohSetRot(0, 0.0, -2.89, 0.0)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(2, -4997.27, 4004.45, 1452.4)
		event.EohSetRot(2, 0.0, 0.18, 0.0)
		event.EohSetFootSoundId(2, 2)
		event.InitDramaScene()
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		event.CharaActive(0, 0)
		event.CharaActive(12)
		event.CmrsInit()
		event.CmrsSetPos(-5096.33, 3921.02, 1427.65)
		event.CmrsSetRef(-4993.89, 3946.99, 1494.91)
		event.SetProjection(524.9)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		event.ObjsMove(2, -4997.27, 3914.32, 1452.4, 20)
		event.ObjsSetMotion(2, "落下", 6)
		event.ObjsMotionDelay(2, 20)
		event.ObjsNextMotion(2, "着地", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.ObjsSePlay(2, var0, 21)
		event.CmrsQuakeDelay(20)
		event.CmrsQuake(0.0, 1.0, 0.0, 30)
		helper_888ab2a3(90)
		wait_objects(2)
		event.CmrsSetPos(-4904.1, 3921.19, 1638.17)
		event.CmrsSetRef(-4997.01, 3947.63, 1461.27)
		event.ObjsSetPos(0, -4993.85, 4514.32, 1543.9)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -4971.6, 4514.32, 1534.68)
		event.ObjsResetDaPosition(1)
		event.CmrsMove2(-4999.07, 3918.97, 1568.34, -4997.01, 3947.63, 1461.27, 150, 2, 1.0)
		event.ObjsSetColor(3, 128, 128, 128, 128, 30)
		event.SndSePlay(var0, 4)
		event.ObjsSeDelay(2, 45)
		event.ObjsSePlay(2, var0, 22)
		event.ObjsSetMotion(2, "攻撃１", 6)
		event.ObjsNextMotion(2, "遊び", 6)
		event.ObjsNextMotion(2, "立ち")
		wait_camera()
		event.ObjsSetColor(3, 128, 128, 128, 0, 30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(7)
	event.CancelDramaScene()
	event.SpriteSetDraw(0, 0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CharaActive(1, 0)
	event.SetCharaPos(0, -4971.6, 3914.32, 1534.68)
	event.SetCharaRot(0, 0.0, -2.05, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
end

--- Helper function.
local function helper_164f4()
	local var0: s32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_3(5, "snd2/mon/en_289.sound.json") or var0
		event.SndSePlay(var0, 0)
		event.SndSeStop(var0, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.GetActiveChrNo()
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("dungeon/monster/")
		event.LoadChara(5, "e40e.gltf", "e40e", 12)
		event.CharaActive(12)
		event.EohSyncChara(2, 12)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		event.ChangeDir("event/e700/e728/")
		block = event.LoadImg_4(5, "e728telop04.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e728telop04", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(3, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ChangeDir("")
		event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
		event.LoadEquip(5, 0, 4, "info", 8)
		event.LoadEquip(5, 0, 3, "info", 8)
		event.LoadEquip(5, 0, 2, "info", 8, 9)
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(0, 8)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", 10)
		event.LoadEquip(5, 1, 4, "info", 10)
		event.LoadEquip(5, 1, 3, "info", 10)
		event.LoadEquip(5, 1, 2, "info", 10, 11)
		event.CharaActive(10)
		event.CharaActive(11)
		event.EohSyncChara(1, 10)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetPos(1, -1266.18, 5303.14, -3048.94)
		event.EohSetRot(1, 0.0, 1.5, 0.0)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(0, -1257.27, 5303.14, -3079.18)
		event.EohSetRot(0, 0.0, 1.23, 0.0)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(2, -1167.01, 5396.94, -3048.4)
		event.EohSetRot(2, 0.0, -1.86, 0.0)
		event.EohSetFootSoundId(2, 2)
		event.InitDramaScene()
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		event.CharaActive(0, 0)
		event.CharaActive(12)
		event.CmrsInit()
		event.CmrsSetPos(-1093.42, 5387.63, -3123.8)
		event.CmrsSetRef(-1245.42, 5310.96, -3033.33)
		event.SetProjection(524.9)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		event.ObjsMove(2, -1167.01, 5303.14, -3048.4, 20)
		event.ObjsSetMotion(2, "落下", 6)
		event.ObjsMotionDelay(2, 20)
		event.ObjsNextMotion(2, "着地", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.ObjsSePlay(2, var0, 21)
		helper_888ab2a3(90)
		wait_objects(2)
		event.CmrsSetPos(-1299.13, 5331.11, -2982.55)
		event.CmrsSetRef(-1192.6, 5340.86, -3056.04)
		event.ObjsSetPos(0, -1257.27, 5603.14, -3079.18)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -1266.18, 5603.14, -3048.94)
		event.ObjsResetDaPosition(1)
		event.CmrsMove2(-1253.37, 5318.24, -3148.07, -1182.09, 5340.92, -3048.93, 150, 2, 1.0)
		event.ObjsSetColor(3, 128, 128, 128, 128, 30)
		event.SndSePlay(var0, 4)
		event.ObjsSeDelay(2, 45)
		event.ObjsSePlay(2, var0, 5)
		event.ObjsSeDelay(2, 45)
		event.ObjsSePlay(2, var0, 22)
		event.ObjsSetMotion(2, "攻撃１", 6)
		event.ObjsNextMotion(2, "攻撃２", 6)
		event.ObjsNextMotion(2, "遊び", 6)
		event.ObjsNextMotion(2, "立ち")
		wait_camera()
		event.ObjsSetColor(3, 128, 128, 128, 0, 30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(7)
	event.CancelDramaScene()
	event.SpriteSetDraw(0, 0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CharaActive(1, 0)
	event.CharaActive(0)
	event.SetCharaPos(0, -1257.27, 5303.14, -3079.18)
	event.SetCharaRot(0, 0.0, -2.05, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
end

--- Helper function.
local function helper_180dc()
	local var0: s32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_3(5, "snd2/mon/en_290.sound.json") or var0
		event.SndSePlay(var0, 0)
		event.SndSeStop(var0, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.GetActiveChrNo()
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("dungeon/monster/")
		event.LoadChara(5, "e117g.gltf", "e117g", 12)
		event.CharaActive(12)
		event.EohSyncChara(2, 12)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e117f.gltf", "e117f", 13)
		event.CharaActive(13)
		event.EohSyncChara(3, 13)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ChangeDir("")
		event.ChangeDir("event/e700/e728/")
		block = event.LoadImg_4(5, "e728telop05.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e728telop05", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(4, 0)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.ChangeDir("")
		event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
		event.LoadEquip(5, 0, 4, "info", 8)
		event.LoadEquip(5, 0, 3, "info", 8)
		event.LoadEquip(5, 0, 2, "info", 8, 9)
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(0, 8)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", 10)
		event.LoadEquip(5, 1, 4, "info", 10)
		event.LoadEquip(5, 1, 3, "info", 10)
		event.LoadEquip(5, 1, 2, "info", 10, 11)
		event.CharaActive(10)
		event.CharaActive(11)
		event.EohSyncChara(1, 10)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetPos(1, -3865.73, 7277.16, 3359.29)
		event.EohSetRot(1, 0.0, -1.42, 0.0)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(0, -3866.22, 7277.16, 3386.78)
		event.EohSetRot(0, 0.0, -1.33, 0.0)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(2, -4001.48, 7352.3, 3374.42)
		event.EohSetRot(2, 0.0, 1.74, 0.0)
		event.EohSetFootSoundId(2, 2)
		event.EohSetPos(3, -3985.26, 7352.3, 3434.83)
		event.EohSetRot(3, 0.0, 1.98, 0.0)
		event.EohSetFootSoundId(3, 2)
		event.InitDramaScene()
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		event.CharaActive(0, 0)
		event.CharaActive(12)
		event.CharaActive(13)
		event.CmrsInit()
		event.CmrsSetPos(-4096.39, 7346.63, 3435.97)
		event.CmrsSetRef(-3944.67, 7285.9, 3390.81)
		event.SetProjection(524.9)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		event.ObjsMove(2, -4001.48, 7277.16, 3374.42, 20)
		event.ObjsSetMotion(2, "落下", 6)
		event.ObjsMotionDelay(2, 20)
		event.ObjsNextMotion(2, "着地", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		var0 = event.SndLoadSound_3(5, "snd2/mon/en_290.sound.json") or var0
		event.ObjsSePlay(2, var0, 21)
		helper_888ab2a3(10)
		event.ObjsMove(3, -3985.26, 7277.16, 3434.83, 20)
		event.ObjsSetMotion(3, "落下", 6)
		event.ObjsMotionDelay(3, 20)
		event.ObjsNextMotion(3, "着地", 6)
		event.ObjsNextMotion(3, "立ち", 4)
		var0 = event.SndLoadSound_3(5, "snd2/mon/en_291.sound.json") or var0
		event.ObjsSePlay(3, var0, 21)
		event.CmrsQuakeDelay(15)
		event.CmrsQuake(0.0, 1.0, 0.0, 40)
		helper_888ab2a3(90)
		wait_objects(2)
		wait_objects(3)
		event.CmrsSetPos(-3852.79, 7355.36, 3367.81)
		event.CmrsSetRef(-4014.32, 7278.63, 3412.93)
		event.ObjsSetPos(0, -3866.22, 7677.16, 3386.78)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -3865.73, 7677.16, 3359.29)
		event.ObjsResetDaPosition(1)
		event.CmrsMove2(-3871.31, 7288.29, 3372.98, -4018.09, 7304.56, 3413.99, 150, 2, 1.0)
		event.ObjsSetColor(4, 128, 128, 128, 128, 30)
		var0 = event.SndLoadSound_3(5, "snd2/mon/en_290.sound.json") or var0
		event.SndSePlay(var0, 5)
		event.ObjsSeDelay(2, 60)
		event.ObjsSePlay(2, var0, 22)
		event.ObjsSetMotion(2, "攻撃２", 6)
		event.ObjsNextMotion(2, "遊び", 6)
		event.ObjsNextMotion(2, "立ち")
		event.ObjsSetMotion(3, "攻撃２", 6)
		event.ObjsNextMotion(3, "遊び", 6)
		event.ObjsNextMotion(3, "立ち")
		wait_camera()
		event.ObjsSetColor(4, 128, 128, 128, 0, 30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(9)
	event.CancelDramaScene()
	event.SpriteSetDraw(0, 0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CharaActive(1, 0)
	event.SetCharaPos(0, -3866.22, 7277.16, 3386.78)
	event.SetCharaRot(0, 0.0, -2.05, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event_99()
		flag = event.GetFlag(728) or flag
		if flag == 1 then
			at = 1
			helper_10324()
			event.LoadSound(7691)
			event.SetCharaShow(1, 1)
			event.SetCharaShow(2, 1)
			event.SetStatusbarShow(1, 1.0)
			var1 = event.GetSndId(4) or var1
			print("btl_snd_id = ", var1, "\n")
			event.SetCharaExSoundid(0, var1)
			event.ActchrSoundInfoCopy(0)
			helper_9dafbc83(vm.f32(3846.1), vm.f32(1622.3), vm.f32(-2002.6), vm.f32(0.69))
			event.SetCameraPos(3744.75, 1652.31, -2126.35)
			event.SetCameraRef(3846.14, 1652.31, -2002.58)
			event.ResetCamera(0)
			event.LoadMonsterFile(603, 1)
			event.AutoSetMonster(603, 4034.9, 1622.3, -1778.2, 0.0, -2.46, 0.0)
		end
		event.SetFadeIn(30)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 1 then
			print("btl_snd_id = ", var1, "\n")
			helper_43f02c95(vm.f32(3846.1), vm.f32(1622.3), vm.f32(-2002.6), vm.f32(0.69))
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-1")
	helper_1a6d4()
end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-3")
	helper_1a6d4()
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-5")
	helper_1a6d4()
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-7")
	helper_1a6d4()
end

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-9")
	helper_1a6d4()
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		helper_888ab2a3(20)
		at = 2
		helper_12f34()
		event.FuncPointShow("", "2f", 0)
		event.EohSyncObj_2(0, "p11_d06b02-2")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.EohSyncObj_2(0, "p11_d06b02-3")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.LoadMonsterFile(604, 1)
		event.AutoSetMonster(604, 3220.8, 2411.4, 3458.1, 0.0, 1.91, 0.0)
		event.SetCharaPos(0, 3482.7, 2411.4, 3361.8)
		event.SetCharaRot(0, 0.0, -1.21, 0.0)
		event.SetCameraPos(3776.37, 2452.2, 3256.29)
		event.SetCameraRef(3625.59, 2441.42, 3309.81)
		event.ResetCamera(0)
		event.SetFadeIn(20)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_12f34()
				return vm.continue_with(function()
					event.FuncPointShow("", "2f", 0)
					event.EohSyncObj_2(0, "p11_d06b02-2")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.EohSyncObj_2(0, "p11_d06b02-3")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.LoadMonsterFile(604, 1)
					event.AutoSetMonster(604, 3220.8, 2411.4, 3458.1, 0.0, 1.91, 0.0)
					event.SetCharaPos(0, 3482.7, 2411.4, 3361.8)
					event.SetCharaRot(0, 0.0, -1.21, 0.0)
					event.SetCameraPos(3776.37, 2452.2, 3256.29)
					event.SetCameraRef(3625.59, 2441.42, 3309.81)
					event.ResetCamera(0)
					event.SetFadeIn(20)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 551, which map data, a script or the engine runs by number.
function script.event_551()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		helper_888ab2a3(20)
		at = 2
		helper_14a14()
		event.FuncPointShow("", "3f", 0)
		event.EohSyncObj_2(0, "p11_d06b02-4")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.EohSyncObj_2(0, "p11_d06b02-5")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.LoadMonsterFile(605, 1)
		event.AutoSetMonster(605, -5000.8, 3914.3, 1335.4, 0.0, 0.5, 0.0)
		event.SetCharaPos(0, -4878.4, 3914.3, 1557.6)
		event.SetCharaRot(0, 0.0, -2.64, 0.0)
		event.SetCameraPos(-4801.28, 3960.04, 1697.72)
		event.SetCameraRef(-4878.44, 3944.32, 1557.56)
		event.ResetCamera(0)
		event.SetFadeIn(20)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_14a14()
				return vm.continue_with(function()
					event.FuncPointShow("", "3f", 0)
					event.EohSyncObj_2(0, "p11_d06b02-4")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.EohSyncObj_2(0, "p11_d06b02-5")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.LoadMonsterFile(605, 1)
					event.AutoSetMonster(605, -5000.8, 3914.3, 1335.4, 0.0, 0.5, 0.0)
					event.SetCharaPos(0, -4878.4, 3914.3, 1557.6)
					event.SetCharaRot(0, 0.0, -2.64, 0.0)
					event.SetCameraPos(-4801.28, 3960.04, 1697.72)
					event.SetCameraRef(-4878.44, 3944.32, 1557.56)
					event.ResetCamera(0)
					event.SetFadeIn(20)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 552, which map data, a script or the engine runs by number.
function script.event_552()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		helper_888ab2a3(20)
		at = 2
		helper_164f4()
		event.FuncPointShow("", "4f", 0)
		event.EohSyncObj_2(0, "p11_d06b02-6")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.EohSyncObj_2(0, "p11_d06b02-7")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.LoadMonsterFile(606, 1)
		event.AutoSetMonster(606, -1126.9, 5303.1, -3005.0, 0.0, -1.78, 0.0)
		event.SetCharaPos(0, -1380.3, 5303.1, -3061.2)
		event.SetCharaRot(0, 0.0, 1.37, 0.0)
		event.SetCameraPos(-1537.07, 5363.09, -3093.39)
		event.SetCameraRef(-1380.34, 5333.14, -3061.24)
		event.ResetCamera(0)
		event.SetFadeIn(20)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_164f4()
				return vm.continue_with(function()
					event.FuncPointShow("", "4f", 0)
					event.EohSyncObj_2(0, "p11_d06b02-6")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.EohSyncObj_2(0, "p11_d06b02-7")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.LoadMonsterFile(606, 1)
					event.AutoSetMonster(606, -1126.9, 5303.1, -3005.0, 0.0, -1.78, 0.0)
					event.SetCharaPos(0, -1380.3, 5303.1, -3061.2)
					event.SetCharaRot(0, 0.0, 1.37, 0.0)
					event.SetCameraPos(-1537.07, 5363.09, -3093.39)
					event.SetCameraRef(-1380.34, 5333.14, -3061.24)
					event.ResetCamera(0)
					event.SetFadeIn(20)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 553, which map data, a script or the engine runs by number.
function script.event_553()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		helper_888ab2a3(20)
		at = 2
		helper_180dc()
		event.FuncPointShow("", "5f", 0)
		event.EohSyncObj_2(0, "p11_d06b02-8")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.EohSyncObj_2(0, "p11_d06b02-9")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.LoadMonsterFile(607, 1)
		event.LoadMonsterFile(608, 0)
		event.AutoSetMonster(607, -3980.8, 7277.16, 3321.3, 0.0, 1.46, 0.0)
		event.AutoSetMonster(608, -3947.0, 7277.16, 3460.7, 0.0, 2.07, 0.0)
		event.SetCharaPos(0, -3745.89, 7277.16, 3354.1)
		event.SetCharaRot(0, 0.0, -1.38, 0.0)
		event.SetCameraPos(-3588.72, 7334.8, 3324.13)
		event.SetCameraRef(-3745.89, 7307.16, 3354.1)
		event.ResetCamera(0)
		event.SetFadeIn(20)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_180dc()
				return vm.continue_with(function()
					event.FuncPointShow("", "5f", 0)
					event.EohSyncObj_2(0, "p11_d06b02-8")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.EohSyncObj_2(0, "p11_d06b02-9")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.LoadMonsterFile(607, 1)
					event.LoadMonsterFile(608, 0)
					event.AutoSetMonster(607, -3980.8, 7277.16, 3321.3, 0.0, 1.46, 0.0)
					event.AutoSetMonster(608, -3947.0, 7277.16, 3460.7, 0.0, 2.07, 0.0)
					event.SetCharaPos(0, -3745.89, 7277.16, 3354.1)
					event.SetCharaRot(0, 0.0, -1.38, 0.0)
					event.SetCameraPos(-3588.72, 7334.8, 3324.13)
					event.SetCameraRef(-3745.89, 7307.16, 3354.1)
					event.ResetCamera(0)
					event.SetFadeIn(20)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 554, which map data, a script or the engine runs by number.
function script.event_554()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.SetFadeOut(20)
	helper_888ab2a3(20)
	event.LoadDungeonMapFile("d06b03")
	event.LoadScript("d06b03/d06b03.stb", 100)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- Event 27020, which map data, a script or the engine runs by number.
function script.event_27020()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(603, 1)
	event.AutoSetMonster(603, 4034.9, 1622.3, -1778.2, 0.0, -2.46, 0.0)
	helper_9dafbc83(3760.0, vm.f32(1622.3), -2117.0, vm.f32(0.68))
	event.SetCameraPos(3660.11, 1666.73, -2241.34)
	event.SetCameraRef(3760.76, 1652.31, -2116.96)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Event 27030, which map data, a script or the engine runs by number.
function script.event_27030()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(604, 1)
	event.AutoSetMonster(604, 3220.8, 2411.4, 3458.1, 0.0, 1.91, 0.0)
	event.SetCharaPos(0, 3482.7, 2411.4, 3361.8)
	event.SetCharaRot(0, 0.0, -1.21, 0.0)
	event.SetCameraPos(3776.37, 2452.2, 3256.29)
	event.SetCameraRef(3625.59, 2441.42, 3309.81)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Event 27040, which map data, a script or the engine runs by number.
function script.event_27040()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(605, 1)
	event.AutoSetMonster(605, -5000.8, 3914.3, 1335.4, 0.0, 0.5, 0.0)
	event.SetCharaPos(0, -4878.4, 3914.3, 1557.6)
	event.SetCharaRot(0, 0.0, -2.64, 0.0)
	event.SetCameraPos(-4801.28, 3960.04, 1697.72)
	event.SetCameraRef(-4878.44, 3944.32, 1557.56)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Event 27050, which map data, a script or the engine runs by number.
function script.event_27050()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(606, 1)
	event.AutoSetMonster(606, -1126.9, 5303.1, -3005.0, 0.0, -1.78, 0.0)
	event.SetCharaPos(0, -1380.3, 5303.1, -3061.2)
	event.SetCharaRot(0, 0.0, 1.37, 0.0)
	event.SetCameraPos(-1537.07, 5363.09, -3093.39)
	event.SetCameraRef(-1380.34, 5333.14, -3061.24)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Event 27060, which map data, a script or the engine runs by number.
function script.event_27060()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(607, 1)
	event.LoadMonsterFile(608, 0)
	event.AutoSetMonster(607, -3980.8, 7277.16, 3321.3, 0.0, 1.46, 0.0)
	event.AutoSetMonster(608, -3947.0, 7277.16, 3460.7, 0.0, 2.07, 0.0)
	event.SetCharaPos(0, -3745.89, 7277.16, 3354.1)
	event.SetCharaRot(0, 0.0, -1.38, 0.0)
	event.SetCameraPos(-3588.72, 7334.8, 3324.13)
	event.SetCameraRef(-3745.89, 7307.16, 3354.1)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

return script
