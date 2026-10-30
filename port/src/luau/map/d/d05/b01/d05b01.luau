--!strict
-- map/d/d05/b01/d05b01.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_2609f66b = require("@lib/event/helper_2609f66b")
local helper_26c3d54b = require("@lib/event/helper_26c3d54b")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_53ffe901 = require("@lib/event/helper_53ffe901")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_93cb8168 = require("@lib/event/helper_93cb8168")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_a6838a9a = require("@lib/event/helper_a6838a9a")
local helper_a9eaf20e = require("@lib/event/helper_a9eaf20e")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_f9968159 = require("@lib/event/helper_f9968159")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	local flag_2: s32 = 0
	event.StopBgm(0)
	event.LoadSound(5683)
	flag = event.GetFlag(526) or flag
	if flag == 1 then
		event.FuncPointShow("d05", "func", 0)
		event.EohSyncObj_3(0, "d05", "d05ba02-a")
		event.EohSetShow(0, 0)
		event.EohSyncObj_4(0, "d05", "d05b01_1", "takil")
		event.EohSetScale(0, 0.43, 1.0, 1.0)
		event.EohSyncObj_4(0, "d05", "d05b01_1", "takir")
		event.EohSetScale(0, 0.43, 1.0, 1.0)
		event.FuncPointShow("p01", "invent_2023-1", 1)
	end
	flag_2 = event.GetFlag(528) or flag_2
	if flag_2 == 0 then
		event.EohSyncObj_3(0, "d05", "d05ba03-a")
		event.EohSetShow(0, 1)
	else
		event.FuncPointShow("", "e528", 0)
	end
end

--- Helper function.
local function helper_263b8()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	vm.section(function()
		event.SetFlag(536, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
			active_chr_no = 0
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
			active_chr_no = 1
		end
		event.StopBgm(0)
		event.LoadSound(5825)
		var1 = event.SndLoadSound_2(5825) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e500/e536/")
		event.LoadMes(0, 5, "e536.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e536_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e536_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e536/e536_mints.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e536/e536_monica.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.EohSetPos(0, -9.0, 0.0, 100.0)
		event.EohSetRot(0, 0.0, 3.02, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, 9.0, 0.0, 100.0)
		event.EohSetRot(1, 0.0, -3.02, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(0.0, 18.65, 43.37)
		event.CmrsSetRef(0.0, 15.13, 108.54)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		event.ObjsSetMotion(1, "許せない", 6)
		event.ObjsNextMotion(1, "許せないL", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5360100)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.ObjsSeDelay(0, 10)
		event.ObjsSePlay(0, var1, 10)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5360110)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	event.CancelDramaScene()
	event.SndSeStop(var1, 2)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(4, 1)
	event.EohSetShow(5, 1)
end

--- Helper function.
local function helper_1197c()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	event.SetFlag(526, 1)
	event.SetFadeOut(15)
	helper_888ab2a3(15)
	event.Initialize()
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no ~= 0 then
		event.DngSetupMainUnit(0)
		active_chr_no = 0
	end
	event.AssignStack(5)
	event.ClearStack(5)
	var1 = event.SndLoadSound_2(5814) or var1
	event.SetStatus(1, 0, 256, 1)
	event.ChangeDir("event/e500/e526/")
	event.LoadMes(0, 5, "e526.txt")
	event.LoadMotion(5, "e526_mints.gltf", "info", 0)
	event.CharaActive(0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.LoadChara(5, "phorn.gltf", "info", 8)
	event.CharaActive(8)
	event.SetReference(0, "item", 8)
	event.ChangeDir("")
	event.EohSyncChara(1, 1)
	event.EohSyncChara(2, 2)
	event.EohSetShow(1, 0)
	event.EohSetShow(2, 0)
	event.EohSetPos(0, 0.0, -30.0, 1500.0)
	event.EohSetRot(0, 0.0, 3.14, 0.0)
	event.EohSetMotion(0, "ホーン吹く", 4)
	event.EohNormalDrive(0)
	event.EohResetDaPosition(0)
	event.EohSetTexAnim(0, 0)
	event.EohSetTexAnim(0, 1, "ふき顔")
	event.EohSetTexAnim(0, 1, "下向き目パチ")
	event.FuncPointShow("d05", "takil", 1)
	event.FuncPointShow("d05", "takir", 1)
	event.CmrsInit()
	event.CmrsSetPos(16.1, -10.46, 1474.52)
	event.CmrsSetRef(0.26, -9.87, 1496.35)
	event.CmrsMove2(30.06, -19.27, 1455.3, 2.31, -16.91, 1493.52, 60, 0, 1.0)
	event.SndSePlay(var1, 0)
	event.SetFadeIn(30)
	wait_camera()
	helper_888ab2a3(30)
	event.CmrsSetPos(0.0, 30.39, 1561.77)
	event.CmrsSetRef(0.0, -19.94, 1493.75)
	event.CmrsMove2(0.0, 30.39, 1561.77, 0.0, 11.85, 1493.75, 80, 0, 1.0)
	event.SndSePlay(var1, 1)
	event.ObjsSetMotion(0, "ホーン持ち立ち", 4)
	wait_camera()
	helper_888ab2a3(30)
	event.CmrsSetPos(14.64, -10.25, 1472.02)
	event.CmrsSetRef(0.03, -10.34, 1496.41)
	event.EohSetTexAnim(0, 0)
	event.EohSetTexAnim(0, 1, "おどろき顔")
	event.EohSetTexAnim(0, 1, "おどろき目パチ")
	event.SetPakuAnim(0, "通常口パク")
	helper_0382f327(5260010, 120)
	event.CmrsSetPos(0.0, 0.69, 877.16)
	event.CmrsSetRef(0.0, -9.03, 949.98)
	event.EohSetTexAnim(0, 0)
	event.EohSetTexAnim(0, 1, "デフォルト顔")
	event.EohSetTexAnim(0, 1, "通常目パチ")
	helper_888ab2a3(90)
	event.SndSeStop(var1, 1)
	event.SetFadeOut(30)
	helper_888ab2a3(30)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(1, 1)
	event.EohSetShow(2, 1)
	helper_9dafbc83(0.0, -30.0, 1500.0, vm.f32(3.14))
	event.SetCameraRef(0.0, 0.0, 1500.0)
	event.SetCameraPos(0.0, 10.0, 1600.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Helper function.
local function helper_12c24()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local block: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(528, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 then
			event.DngSetupMainUnit(0)
			active_chr_no = 0
		end
		event.StopBgm(0)
		at = 2
		helper_888ab2a3(4)
		event.LoadBgm(190)
		event.LoadSound(5817)
		var1 = event.SndLoadSound_2(5817) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e500/e528/")
		event.LoadMes(0, 5, "e528.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e528_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e528_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e528_guiltoni.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		block = event.LoadImg_4(5, "e528telop01.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e528telop01", block)
		event.SpriteSetColor(0, 128, 128, 128, 128)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 347)
		event.SpriteSetAlphab(0, 0)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(5, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 5)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e528/e528_mints.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e528/e528_monica.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(3, 1)
		event.EohSyncChara(4, 2)
		event.EohSetShow(3, 0)
		event.EohSetShow(4, 0)
		event.EohSetPos(0, 0.0, 0.0, 500.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -100.0, 0.0, -200.0)
		event.EohSetRot(1, 0.0, 2.54, 0.0)
		event.EohSetMotion(1, "倒れ", 4)
		event.EohNormalDrive(1)
		event.EohResetDaPosition(1)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "死に")
		event.EohSetPos(2, -73.0, 0.0, -190.0)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "しゃがみ", 4)
		event.EohSetSoundId(2, var1)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "左向き目パチ")
		event.InitDramaScene()
		event.ObjsMove(0, 0.0, 0.0, 400.0, 120)
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsMotionDelay(0, 120)
		event.ObjsSetMotion(0, "立ち")
		event.CmrsInit()
		event.CmrsSetPos(224.74, 194.1, 112.15)
		event.CmrsSetRef(119.89, 90.28, 320.08)
		event.SetFadeIn(30)
		at = 3
		helper_888ab2a3(90)
		event.CmrsSetPos(23.71, 15.41, 365.52)
		event.CmrsSetRef(0.81, 20.88, 397.45)
		at = 4
		wait_objects(0)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目～おどろき目")
		event.EohSetTexAnim(0, 1, "半口")
		at = 5
		helper_888ab2a3(20)
		event.CmrsSetPos(0.0, 27.58, 241.33)
		event.CmrsSetRef(11.62, 31.84, 143.18)
		event.CmrsMove(0.0, 27.58, 241.33, -10.98, 31.84, 142.98, 60)
		at = 6
		wait_camera()
		event.SetCrossfade(30)
		event.CmrsSetPos(-62.71, 22.94, -127.1)
		event.CmrsSetRef(-79.95, 18.68, -193.59)
		event.ObjsNextMotion(2, "気がつき", 6)
		event.ObjsNextMotion(2, "起きあがり", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		at = 7
		helper_888ab2a3(46)
		event.SndSePlay(var1, 2)
		at = 8
		helper_888ab2a3(30)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "目左向き～前向き")
		at = 9
		wait_objects(2)
		event.SetCrossfade(30)
		event.CmrsSetPos(-65.53, 36.67, -170.72)
		event.CmrsSetRef(-72.23, 31.54, -186.28)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "通常目パチ")
		event.SetPakuAnim(2, "通常口パク")
		at = 10
		helper_4116e6bb(5280010)
		event.CmrsSetPos(17.17, 21.0, 369.81)
		event.CmrsSetRef(-1.57, 20.75, 398.07)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.ObjsSetMotion(0, "左前見る", 6)
		event.ObjsNextMotion(0, "左前見るL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 11
		helper_4116e6bb(5280020)
		event.CmrsSetPos(-72.45, 23.3, -129.48)
		event.CmrsSetRef(-72.45, 23.3, -169.9)
		event.PlayBgm(0)
		event.SndSePlay(var1, 3)
		event.EohSetFrameStatus(2, "sword--v0", 1)
		event.ObjsSetMotion(2, "剣だし", 6)
		event.ObjsNextMotion(2, "剣だしL", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 12
		helper_4116e6bb(5280030)
		event.CmrsSetPos(-51.78, 20.26, -260.52)
		event.CmrsSetRef(-58.41, 20.26, -190.32)
		event.SndSePlay(var1, 4)
		event.ObjsSetMotion(2, "ジャンプ", 6)
		at = 13
		helper_888ab2a3(20)
		event.CmrsSetPos(17.17, 21.0, 369.81)
		event.CmrsSetRef(-1.57, 20.75, 398.07)
		event.ObjsSetMotion(0, "上見る", 6)
		event.ObjsNextMotion(0, "上見るL", 4)
		at = 14
		wait_objects(0)
		event.CmrsSetPos(6.12, 32.14, 446.85)
		event.CmrsSetRef(-0.05, 14.21, 365.23)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "半口")
		event.ObjsSetMotion(0, "上見る戻り", 6)
		event.ObjsNextMotion(0, "モニカ見立ち", 4)
		event.SndSePlay(var1, 5)
		event.ObjsSetPos(2, 0.0, 0.0, 260.0)
		event.ObjsSetMotion(2, "着地", 6)
		event.ObjsNextMotion(2, "着地L", 4)
		at = 15
		wait_objects(2)
		event.CmrsSetPos(9.03, 31.27, 338.8)
		event.CmrsSetRef(5.32, 18.96, 267.84)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり顔")
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.ObjsSetMotion(2, "キメ", 6)
		event.ObjsNextMotion(2, "キメL", 4)
		event.SndSePlay(var1, 6)
		at = 16
		helper_888ab2a3(30)
		event.SndSePlay(var1, 7)
		at = 17
		wait_objects(2)
		event.SetPakuAnim(2, "通常口パク")
		at = 18
		helper_4116e6bb(5280040)
		event.SetCrossfade(30)
		event.CmrsSetPos(1.63, 33.52, 291.68)
		event.CmrsSetRef(1.34, 31.08, 268.48)
		event.CmrsMove(5.68, 33.52, 291.63, 5.38, 31.08, 268.43, 120)
		event.SpriteSetDraw(0, 1)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり顔")
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.EohSetTexAnim(2, 1, "わらい口とじ")
		at = 19
		helper_888ab2a3(90)
		event.SetFadeOut(30)
		at = 20
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			local _ = active_chr_no ~= 0
			active_chr_no = 0
			helper_038a2e4d(4)
		end
		if at <= 2 then
			helper_038a2e4d(90)
		end
		if at <= 3 then
			helper_238b5abc(0)
		end
		if at <= 4 then
			helper_038a2e4d(20)
		end
		if at <= 5 then
			helper_344d6cd8()
		end
		if at <= 6 then
			helper_038a2e4d(46)
		end
		if at <= 7 then
			helper_038a2e4d(30)
		end
		if at <= 8 then
			helper_238b5abc(2)
		end
		if at <= 9 then
			helper_8cd371d7(5280010)
		end
		if at <= 10 then
			helper_8cd371d7(5280020)
		end
		if at <= 11 then
			helper_8cd371d7(5280030)
		end
		if at <= 12 then
			helper_038a2e4d(20)
		end
		if at <= 13 then
			helper_238b5abc(0)
		end
		if at <= 14 then
			helper_238b5abc(2)
		end
		if at <= 15 then
			helper_038a2e4d(30)
		end
		if at <= 16 then
			helper_238b5abc(2)
		end
		if at <= 17 then
			helper_8cd371d7(5280040)
		end
		if at <= 18 then
			helper_038a2e4d(90)
		end
		if at <= 19 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 21
	vm.entry(21)
	event.CancelDramaScene()
	event.SpriteSetDraw(0, 0)
	event.PlayBgm(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(3, 1)
	event.EohSetShow(4, 1)
end

--- Helper function.
local function helper_15fb0()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local block: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(532, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 then
			event.DngSetupMainUnit(0)
			active_chr_no = 0
		end
		event.StopBgm(0)
		at = 2
		helper_888ab2a3(4)
		event.LoadBgm(113)
		event.LoadSound(5820)
		var1 = event.SndLoadSound_2(5820) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e500/e532/")
		event.LoadMes(0, 5, "e532.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e532_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e532_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e532_guiltoni.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(2, 11)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "shuchusen.gltf", "info", 12)
		event.CharaActive(0, 12)
		event.LoadChara(5, "e532_syougeki.gltf", "info", 14)
		event.CharaActive(0, 14)
		event.EohSyncChara(11, 14)
		event.ObjsInit(9)
		event.ObjsSyncObj(9, 11)
		block = event.LoadImg_4(5, "e532.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e53201", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(5, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 5)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e53202", block)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetDraw(1, 1)
		event.EohSyncSprite(6, 1)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 6)
		event.SpriteInit(2)
		event.SpriteSetType(2, 0)
		event.SpriteSetTexture(2, "e53203", block)
		event.SpriteSetColor(2, 128, 128, 128, 0)
		event.SpriteSetUvsize(2, 0, 0, 512, 448)
		event.SpriteSetPutsize(2, 512, 448)
		event.SpriteSetPos(2, 256, 224)
		event.SpriteSetDraw(2, 1)
		event.EohSyncSprite(7, 2)
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 7)
		event.SpriteInit(3)
		event.SpriteSetType(3, 0)
		event.SpriteSetTexture(3, "e53204", block)
		event.SpriteSetColor(3, 128, 128, 128, 0)
		event.SpriteSetUvsize(3, 0, 0, 512, 448)
		event.SpriteSetPutsize(3, 512, 448)
		event.SpriteSetPos(3, 256, 224)
		event.SpriteSetDraw(3, 1)
		event.EohSyncSprite(8, 3)
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 8)
		event.SpriteInit(4)
		event.SpriteSetType(4, 0)
		event.SpriteSetTexture(4, "e53205", block)
		event.SpriteSetColor(4, 128, 128, 128, 0)
		event.SpriteSetUvsize(4, 0, 0, 512, 448)
		event.SpriteSetPutsize(4, 512, 448)
		event.SpriteSetPos(4, 256, 224)
		event.SpriteSetDraw(4, 1)
		event.EohSyncSprite(9, 4)
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 9)
		event.ChangeDir("")
		if active_chr_no == 1 then
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadEquip(5, 1, 0, "info", 8, 10)
			event.LoadMotion(5, "event/e500/e532/e532_monica.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.CharaActive(0, 10)
		event.EohSyncChara(3, 1)
		event.EohSyncChara(4, 2)
		event.EohSetPos(0, 0.0, 0.0, 100.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "バトル立ち2", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetPos(1, -100.0, 0.0, -200.0)
		event.EohSetRot(1, 0.0, 2.54, 0.0)
		event.EohSetMotion(1, "起きあがり待ち", 4)
		event.EohNormalDrive(1)
		event.EohResetDaPosition(1)
		event.EohSetFootSoundId(1, 2)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "死に")
		event.EohSetPos(2, 0.0, 0.0, 0.0)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "はぁはぁ", 4)
		event.EohNormalDrive(2)
		event.EohResetDaPosition(2)
		event.EohSetSoundId(2, var1)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "苦し顔")
		event.EohSetTexAnim(2, 1, "苦し目パチ")
		event.SetCharaPos(12, 0.0, -1000.0, 0.0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(38.02, 17.95, 16.08)
		event.CmrsSetRef(5.45, 17.89, 15.92)
		event.SetFadeIn(30)
		event.SetPakuAnim(2, "苦し口パク")
		at = 3
		helper_4116e6bb(5320010)
		event.CmrsSetPos(24.94, 8.23, 72.51)
		event.CmrsSetRef(1.57, 16.42, 98.07)
		at = 4
		helper_888ab2a3(40)
		event.CmrsSetPos(-3.92, 12.48, 46.35)
		event.CmrsSetRef(0.46, 18.98, 16.47)
		event.ObjsSetMotion(2, "顔上げ", 6)
		event.ObjsNextMotion(2, "顔上げL", 4)
		at = 5
		wait_objects(2)
		event.SetPakuAnim(2, "苦し口パク")
		at = 6
		helper_4116e6bb(5320020)
		event.CmrsSetPos(24.94, 8.23, 72.51)
		event.CmrsSetRef(1.57, 16.42, 98.07)
		event.SetPakuAnim(0, "通常口パク")
		at = 7
		helper_4116e6bb(5320030)
		event.CmrsSetRef(0.0, 20.0, 50.0)
		event.CmrsSetAhd(-0.36, 0.0, 100.0)
		event.CmrsMoveAhd2(2.64, 0.0, 100.0, 280, 2, 1.0)
		event.SetPakuAnim(2, "苦し口パク")
		at = 8
		helper_4116e6bb(5320040)
		event.SetPakuAnim(2, "苦し口パク")
		at = 9
		helper_4116e6bb(5320045)
		event.SetPakuAnim(0, "通常口パク")
		at = 10
		helper_4116e6bb(5320050)
		at = 11
		wait_camera()
		event.CmrsSetPos(16.36, 17.95, 32.78)
		event.CmrsSetRef(0.93, 19.2, 17.0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "苦し顔")
		event.EohSetTexAnim(2, 1, "苦し目あき～目とじ")
		event.SetPakuAnim(2, "わらい口パク")
		at = 12
		helper_4116e6bb(5320060)
		event.SetPakuAnim(2, "わらい口パク")
		at = 13
		helper_4116e6bb(5320065)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "苦し顔")
		event.EohSetTexAnim(2, 1, "目とじ～苦し目あき")
		event.SetPakuAnim(2, "わらい口パク")
		at = 14
		helper_4116e6bb(5320070)
		event.CmrsSetPos(16.15, 37.27, 153.71)
		event.CmrsSetRef(3.58, 24.38, 96.09)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり顔")
		event.EohSetTexAnim(2, 1, "苦し目パチ")
		event.SetPakuAnim(0, "通常口パク")
		at = 15
		helper_4116e6bb(5320080)
		event.SndSePlay(var1, 2)
		event.ObjsSetMotion(2, "起きあがり", 6)
		event.ObjsNextMotion(2, "起きあがりL", 4)
		at = 16
		helper_888ab2a3(30)
		event.ObjsSetMotion(1, "起きあがり", 6)
		event.ObjsNextMotion(1, "起きあがりL", 4)
		at = 17
		helper_888ab2a3(15)
		event.CmrsSetPos(-84.02, 9.18, -188.66)
		event.CmrsSetRef(-99.08, 9.86, -193.29)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "死に")
		event.EohSetTexAnim(1, 1, "目とじ～目あき")
		event.SndSePlay(var1, 3)
		at = 18
		wait_objects(1)
		at = 19
		helper_888ab2a3(20)
		event.CmrsSetPos(-23.98, 12.62, 43.97)
		event.CmrsSetRef(-1.29, 22.54, 7.67)
		event.SetPakuAnim(2, "通常口パク")
		at = 20
		helper_4116e6bb(5320090)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.EohSetTexAnim(1, 1, "口とじ～大口")
		event.CharaActive(12)
		event.CmrsSyncObj(1, 0.0, 20.0, 7.0, -1.0, 0.0, 40.0)
		event.CmrsAhddelay(19)
		event.CmrsReleaseObj()
		event.CmrsPrdelay(20)
		event.CmrsSetPos(-26.37, 17.77, -50.44)
		event.CmrsSetRef(-51.96, 20.0, -102.44)
		event.CmrsCharaDelay(20)
		event.CmrsCharaAttach(12, 60.0, 20)
		event.CharaActive(1, 10)
		event.ObjsSetRot(1, 0.0, 0.46, 0.0)
		event.ObjsSetMotion(1, "剣走り", 4, -1.0, 1)
		event.ObjsMove(1, -11.76, 0.0, -20.14, 60)
		event.ObjsTexaDelay(1, 20)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 1, "歯くいしばり")
		at = 21
		helper_0382f327(5320100, 40)
		event.CharaActive(0, 12)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.EohSetTexAnim(1, 1, "半口")
		event.CmrsSetPos(-69.98, 14.49, -24.99)
		event.CmrsSetRef(-2.25, 17.76, -8.93)
		event.CmrsPrdelay(45)
		event.CmrsSetPos(-52.69, 22.4, 13.43)
		event.CmrsSetRef(-30.89, 6.61, -41.34)
		event.ObjsSetRot(2, 0.0, -2.4, 0.0)
		event.ObjsMotionDelay(2, 10)
		event.ObjsSetMotion(2, "よけ", 6)
		event.ObjsNextMotion(2, "ふっとばし", 6)
		event.ObjsTexaDelay(2, 40)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "おこり顔")
		event.ObjsTexAnime(2, 1, "おこり目パチ")
		event.ObjsTexAnime(2, 1, "口ふっ")
		event.ObjsSetMotion(1, "斬り", 6)
		event.ObjsNextMotion(1, "吹っ飛び", 6)
		event.ObjsPosDelay(1, 20)
		event.ObjsMove2(1, -34.13, 0.0, -72.15, 26, 2, 1.0)
		event.ObjsSePlay(1, var1, 4)
		event.ObjsSeDelay(1, 50)
		event.ObjsSePlay(1, var1, 6)
		event.ObjsTexaDelay(1, 20)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "目あき～目とじ")
		event.ObjsTexAnime(1, 1, "半口")
		event.CharaActive(1, 14)
		event.ObjsSetPos(2, 0.0, 0.0, 0.0)
		event.ObjsSetRot(9, 0.0, -2.4, 0.0)
		event.ObjsSetMotion(9, "ふっとばし", 5)
		event.ObjsMotionDelay(9, 26)
		event.ObjsSetMotion(9, "ふっとばし", 6)
		event.ObjsSeDelay(9, 34)
		event.ObjsSePlay(9, var1, 5)
		at = 22
		helper_888ab2a3(5)
		at = 23
		helper_0382f327(5320110, 20)
		at = 24
		helper_888ab2a3(5)
		at = 25
		helper_0382f327(5320120, 40)
		at = 26
		wait_objects(1)
		event.CharaActive(0, 14)
		event.CmrsSetPos(24.94, 8.23, 72.51)
		event.CmrsSetRef(1.57, 16.42, 98.07)
		event.ObjsSetMotion(0, "モニカ！！", 6)
		event.ObjsNextMotion(0, "モニカ！！L", 4)
		event.SetPakuAnim(0, "大口パク")
		at = 27
		helper_4116e6bb(5320130)
		at = 28
		wait_objects(0)
		event.CmrsSetPos(-18.95, 19.99, -37.66)
		event.CmrsSetRef(-30.66, 14.75, -65.72)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.SndSePlay(var1, 7)
		event.ObjsSetMotion(1, "しゃがみにらみ", 6, -1.0, 1)
		event.ObjsNextMotion(1, "しゃがみにらみL", 4)
		at = 29
		wait_objects(1)
		at = 30
		helper_888ab2a3(20)
		event.CmrsSetPos(-57.1, 14.78, -90.75)
		event.CmrsSetRef(-21.25, 17.36, -33.53)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.SndSePlay(var1, 8)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(2, "後ろ見", 6)
		event.ObjsNextMotion(2, "後ろ見L", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 31
		helper_4116e6bb(5320140)
		at = 32
		wait_objects(2)
		event.CmrsSetPos(0.0, 27.09, 35.56)
		event.CmrsSetRef(0.0, 29.67, -20.86)
		event.PlayBgm(0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.ObjsSetMotion(2, "笑う", 4)
		event.ObjsMotionDelay(2, 140)
		event.ObjsSetMotion(2, "笑う2")
		event.ObjsTexaDelay(2, 140)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "わらい顔")
		event.ObjsTexAnime(2, 1, "おこり目～大わらい目")
		event.ObjsTexAnime(2, 1, "大わらい口パク")
		at = 33
		helper_0382f327(5320150, -1)
		at = 34
		helper_888ab2a3(10)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "大わらい目～通常目")
		event.SndSePlay(var1, 9)
		event.ObjsSetMotion(2, "戻り", 2)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "わらい口パク")
		at = 35
		helper_4116e6bb(5320155)
		at = 36
		wait_objects(2)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "前向き～右向き")
		event.ObjsSetMotion(1, "立つ", 2)
		event.ObjsNextMotion(1, "立つL", 4)
		event.ObjsSeDelay(1, 4)
		event.ObjsSePlay(1, var1, 10)
		event.SetPakuAnim(1, "通常口パク")
		at = 37
		helper_4116e6bb(5320160)
		at = 38
		wait_objects(1)
		event.CmrsSetPos(24.94, 8.23, 72.51)
		event.CmrsSetRef(1.57, 16.42, 98.07)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "歯くいしばり")
		event.ObjsSetMotion(0, "バトル立ち2", 4)
		at = 39
		helper_888ab2a3(40)
		event.CmrsSetPos(1.0, 31.0, 29.43)
		event.CmrsSetRef(1.0, 31.0, 1.39)
		event.CmrsMove2(1.0, 31.0, 23.46, 1.0, 31.0, 1.39, 90, 2, 1.0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "通常目パチ")
		event.ObjsTexaDelay(2, 120)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "目あき～目とじ")
		event.SetPakuAnim(2, "通常口パク")
		at = 40
		helper_4116e6bb(5320170)
		at = 41
		wait_camera()
		event.SndSetEnvVol(0.0)
		event.ObjsSetColor(3, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 42
		helper_4116e6bb(5320180)
		event.SetPakuAnim(2, "通常口パク")
		at = 43
		helper_4116e6bb(5320190)
		event.SetPakuAnim(2, "通常口パク")
		at = 44
		helper_4116e6bb(5320200)
		at = 45
		wait_objects(3)
		event.ObjsSetColor(4, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 46
		helper_4116e6bb(5320210)
		event.SetPakuAnim(2, "通常口パク")
		at = 47
		helper_4116e6bb(5320220)
		at = 48
		wait_objects(4)
		event.ObjsSetColor(3, 128, 128, 128, 0)
		event.ObjsSetColor(5, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 49
		helper_4116e6bb(5320225)
		at = 50
		wait_objects(5)
		event.ObjsSetColor(4, 128, 128, 128, 0)
		event.ObjsSetColor(6, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 51
		helper_4116e6bb(5320230)
		event.SetPakuAnim(2, "通常口パク")
		at = 52
		helper_4116e6bb(5320240)
		event.SetPakuAnim(2, "通常口パク")
		at = 53
		helper_4116e6bb(5320245)
		at = 54
		wait_objects(6)
		event.ObjsSetColor(5, 128, 128, 128, 0)
		event.ObjsSetColor(7, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 55
		helper_4116e6bb(5320250)
		event.SetPakuAnim(2, "通常口パク")
		at = 56
		helper_4116e6bb(5320260)
		at = 57
		wait_objects(7)
		event.ObjsSetColor(6, 128, 128, 128, 0)
		event.ObjsSetColor(7, 128, 128, 128, 0, 30)
		event.SndSetEnvVol(1.0)
		event.SetPakuAnim(2, "通常口パク")
		at = 58
		helper_4116e6bb(5320270)
		at = 59
		wait_objects(7)
		event.SetPakuAnim(2, "通常口パク")
		at = 60
		helper_4116e6bb(5320275)
		at = 61
		vm.wait(61)
		at = 62
		vm.wait(62)
	end, function(received: { any }): boolean
		if at <= 1 then
			local _ = active_chr_no ~= 0
			active_chr_no = 0
			helper_038a2e4d(4)
		end
		if at <= 2 then
			helper_8cd371d7(5320010)
		end
		if at <= 3 then
			helper_038a2e4d(40)
		end
		if at <= 4 then
			helper_238b5abc(2)
		end
		if at <= 5 then
			helper_8cd371d7(5320020)
		end
		if at <= 6 then
			helper_8cd371d7(5320030)
		end
		if at <= 7 then
			helper_8cd371d7(5320040)
		end
		if at <= 8 then
			helper_8cd371d7(5320045)
		end
		if at <= 9 then
			helper_8cd371d7(5320050)
		end
		if at <= 10 then
			helper_344d6cd8()
		end
		if at <= 11 then
			helper_8cd371d7(5320060)
		end
		if at <= 12 then
			helper_8cd371d7(5320065)
		end
		if at <= 13 then
			helper_8cd371d7(5320070)
		end
		if at <= 14 then
			helper_8cd371d7(5320080)
		end
		if at <= 15 then
			helper_038a2e4d(30)
		end
		if at <= 16 then
			helper_038a2e4d(15)
		end
		if at <= 17 then
			helper_238b5abc(1)
		end
		if at <= 18 then
			helper_038a2e4d(20)
		end
		if at <= 19 then
			helper_8cd371d7(5320090)
		end
		if at <= 20 then
			helper_53ffe901(5320100, 40)
		end
		if at <= 21 then
			helper_038a2e4d(5)
		end
		if at <= 22 then
			helper_53ffe901(5320110, 20)
		end
		if at <= 23 then
			helper_038a2e4d(5)
		end
		if at <= 24 then
			helper_53ffe901(5320120, 40)
		end
		if at <= 25 then
			helper_238b5abc(1)
		end
		if at <= 26 then
			helper_8cd371d7(5320130)
		end
		if at <= 27 then
			helper_238b5abc(0)
		end
		if at <= 28 then
			helper_238b5abc(1)
		end
		if at <= 29 then
			helper_038a2e4d(20)
		end
		if at <= 30 then
			helper_8cd371d7(5320140)
		end
		if at <= 31 then
			helper_238b5abc(2)
		end
		if at <= 32 then
			helper_53ffe901(5320150, -1)
		end
		if at <= 33 then
			helper_038a2e4d(10)
		end
		if at <= 34 then
			helper_8cd371d7(5320155)
		end
		if at <= 35 then
			helper_238b5abc(2)
		end
		if at <= 36 then
			helper_8cd371d7(5320160)
		end
		if at <= 37 then
			helper_238b5abc(1)
		end
		if at <= 38 then
			helper_038a2e4d(40)
		end
		if at <= 39 then
			helper_8cd371d7(5320170)
		end
		if at <= 40 then
			helper_344d6cd8()
		end
		if at <= 41 then
			helper_8cd371d7(5320180)
		end
		if at <= 42 then
			helper_8cd371d7(5320190)
		end
		if at <= 43 then
			helper_8cd371d7(5320200)
		end
		if at <= 44 then
			helper_238b5abc(3)
		end
		if at <= 45 then
			helper_8cd371d7(5320210)
		end
		if at <= 46 then
			helper_8cd371d7(5320220)
		end
		if at <= 47 then
			helper_238b5abc(4)
		end
		if at <= 48 then
			helper_8cd371d7(5320225)
		end
		if at <= 49 then
			helper_238b5abc(5)
		end
		if at <= 50 then
			helper_8cd371d7(5320230)
		end
		if at <= 51 then
			helper_8cd371d7(5320240)
		end
		if at <= 52 then
			helper_8cd371d7(5320245)
		end
		if at <= 53 then
			helper_238b5abc(6)
		end
		if at <= 54 then
			helper_8cd371d7(5320250)
		end
		if at <= 55 then
			helper_8cd371d7(5320260)
		end
		if at <= 56 then
			helper_238b5abc(7)
		end
		if at <= 57 then
			helper_8cd371d7(5320270)
		end
		if at <= 58 then
			helper_238b5abc(7)
		end
		if at <= 59 then
			helper_8cd371d7(5320275)
		end
		return true
	end)
	at = 63
	vm.entry(63)
	event.CancelDramaScene()
	event.SetCrossfade(60)
	event.PlayBgm(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.SpriteSetDraw(2, 0)
	event.SpriteSetDraw(3, 0)
	event.SpriteSetDraw(4, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(14)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CmrsInit()
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(3, 1)
	event.EohSetShow(4, 1)
end

--- Helper function.
local function helper_1c2b8()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local block: s32 = 0
	local var3: s32 = 0
	vm.section(function()
		event.SetFlag(532, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 then
			event.DngSetupMainUnit(0)
			active_chr_no = 0
		end
		event.LoadSound(5822)
		var1 = event.SndLoadSound_2(5822) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e500/e532/")
		event.LoadMes(0, 5, "e532.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e532_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e532_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e532_guiltoni.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(2, 11)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e532_m_guil.gltf", "p00_23a", 13)
		event.CharaActive(0, 13)
		event.EohSyncChara(10, 13)
		event.ObjsInit(8)
		event.ObjsSyncObj(8, 10)
		event.LoadChara(5, "e532_kawaru_hikari.gltf", "info", 15)
		event.CharaActive(0, 15)
		event.LoadChara(5, "e532_guil_kage.gltf", "info", 16)
		event.CharaActive(0, 16)
		event.LoadChara(5, "e532_tgate_f.gltf", "info", 17)
		event.CharaActive(0, 17)
		event.LoadChara(5, "e532_tgate_h.gltf", "info", 18)
		event.CharaActive(0, 18)
		block = event.LoadImg_4(5, "e532telop01.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e532telop01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 347)
		event.SpriteSetAlphab(0, 0)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(12, 0)
		event.ObjsInit(10)
		event.ObjsSyncObj(10, 12)
		event.ChangeDir("")
		event.LoadChara(5, "event/time_gate/red/tg_maru_red.gltf", "info", 19)
		event.CharaActive(0, 19)
		if active_chr_no == 1 then
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e532/e532_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(3, 1)
		event.EohSyncChara(4, 2)
		event.EohSetShow(3, 0)
		event.EohSetShow(4, 0)
		event.EohSetPos(0, 0.0, 0.0, 100.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "半口")
		event.EohSetPos(1, -34.13, 0.0, -72.15)
		event.EohSetRot(1, 0.0, 0.46, 0.0)
		event.EohSetMotion(1, "立つL", 4)
		event.EohNormalDrive(1)
		event.EohResetDaPosition(1)
		event.EohSetFootSoundId(1, 2)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "無表情")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, 0.0, 0.0, 0.0)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "下向き立ち", 4)
		event.EohNormalDrive(2)
		event.EohResetDaPosition(2)
		event.EohSetSoundId(2, var1)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "目とじ")
		event.EohSetPos(10, 48.15, 0.0, -39.92)
		event.EohSetRot(10, 0.0, -0.96, 0.0)
		event.EohSetMotion(10, "立ち2", 4)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(1.0, 31.0, 23.46)
		event.CmrsSetRef(1.0, 31.0, 1.39)
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(5320380)
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(5320390)
		event.CmrsSetPos(32.47, 29.12, 7.82)
		event.CmrsSetRef(-0.08, 29.06, 7.66)
		event.CmrsMove2(32.49, 29.12, 2.2, -0.05, 29.06, 2.04, 90, 2, 1.0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "目とじ～目あけ")
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(5320400)
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(5320410)
		wait_camera()
		event.CmrsSetPos(-11.1, 23.74, 47.57)
		event.CmrsSetRef(-11.12, 23.68, 10.21)
		event.CmrsMove2(1.26, 23.74, 47.57, 1.24, 23.68, 10.2, 120, 2, 1.0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "目とじ")
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320420)
		event.SetPakuAnim(2, "通常口パク")
		helper_4116e6bb(5320430)
		event.SetPakuAnim(2, "通常口パク")
		helper_4116e6bb(5320435)
		wait_camera()
		event.CmrsSetPos(21.93, 20.24, 29.75)
		event.CmrsSetRef(0.34, 28.43, 3.64)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "目とじ～目あき")
		event.ObjsSetMotion(2, "普通立ちへ", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "通常口パク")
		helper_4116e6bb(5320440)
		wait_objects(2)
		event.CmrsSetPos(21.31, 32.88, -28.93)
		event.CmrsSetRef(15.92, 30.08, 1.51)
		event.CmrsMove2(11.89, 32.88, -30.6, 6.5, 30.08, -0.16, 90, 2, 1.0)
		event.SetPakuAnim(2, "通常口パク")
		helper_4116e6bb(5320450)
		wait_camera()
		event.CmrsSetPos(21.93, 20.24, 29.75)
		event.CmrsSetRef(0.34, 28.43, 3.64)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "通常目パチ")
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(5320460)
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(5320465)
		event.SndSePlay(var1, 13)
		event.ObjsRotation(2, 0.0, 2.04, 0.0, 12)
		event.ObjsMove(2, 112.86, 0.0, -57.4, 120)
		event.ObjsSetMotion(2, "歩き")
		event.ObjsMotionDelay(2, 120)
		event.ObjsSetMotion(2, "立ち")
		helper_888ab2a3(12)
		event.CmrsSetPos(12.52, 143.33, 237.6)
		event.CmrsSetRef(19.7, 10.27, 44.27)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "通常目パチ")
		wait_objects(2)
		helper_888ab2a3(5)
		event.CmrsSetPos(193.83, 30.9, -96.26)
		event.CmrsSetRef(115.38, 26.4, -60.1)
		event.ObjsSetRot(0, 0.0, 2.54, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetRot(1, 0.0, 1.54, 0.0)
		event.ObjsResetDaPosition(1)
		helper_888ab2a3(5)
		event.SndSePlay(var1, 14)
		event.ObjsSetMotion(2, "魔法構え", 2)
		event.ObjsNextMotion(2, "魔法構えL", 4)
		wait_objects(2)
		event.SndSePlay(var1, 15)
		event.CharaActive(1, 17)
		event.SetCharaPos(17, 112.86, 0.0, -57.4)
		event.SetCharaRot(17, 0.0, 2.04, 0.0)
		event.SetMotion(17, "魔法構えL", 6)
		helper_888ab2a3(20)
		event.CmrsSetPos(93.61, 28.03, 33.84)
		event.CmrsSetRef(141.27, 27.9, -88.39)
		event.CmrsMove2(139.2, 30.07, -23.94, 196.24, 29.95, -119.09, 60, 2, 0.4)
		event.CharaActive(1, 18)
		event.SetCharaPos(18, 177.89, 30.0, -88.76)
		event.SetCharaRot(18, 0.0, 0.0, 0.0)
		event.SetMotion(18, "発生", 6)
		helper_888ab2a3(10)
		event.CharaActive(1, 19)
		event.SetCharaPos(19, 177.89, 30.0, -88.76)
		event.SetCharaRot(19, 0.0, 0.0, 0.0)
		event.SetCharaShow(19, 1, 1, 0.1)
		wait_camera()
		helper_888ab2a3(30)
		event.CmrsSetPos(-83.46, 20.24, 40.29)
		event.CmrsSetRef(25.57, 18.02, -14.67)
		event.ObjsSetPos(0, -34.9, 0.0, 31.89)
		event.ObjsSetRot(0, 0.0, 2.18, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -54.15, 0.0, 12.15)
		event.ObjsSetRot(1, 0.0, 2.02, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsMove(2, 149.89, 0.0, -76.07, 40)
		event.ObjsSetMotion(2, "歩き")
		event.ObjsMotionDelay(2, 40)
		wait_objects(2)
		event.CmrsSetPos(195.01, 15.44, -79.93)
		event.CmrsSetRef(159.74, 21.63, -83.99)
		event.StopBgm(0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "通常目～くるし目")
		event.SndSePlay(var1, 16)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.CharaActive(0, 19)
		event.CharaActive(1, 15)
		event.SetCharaShow(15, 1, 1, 0.033333335)
		event.SetCharaPos(15, 161.48, 0.0, -80.57)
		event.SetCharaRot(15, 0.0, 2.04, 0.0)
		event.ObjsSetMotion(2, "うぐっ", 6)
		event.ObjsNextMotion(2, "頭抱え", 6)
		event.ObjsNextMotion(2, "頭抱えL", 4)
		event.ObjsSePlay(2, var1, 17)
		event.ObjsSeDelay(2, 30)
		event.ObjsSePlay(2, var1, 18)
		event.ObjsTexaDelay(2, 30)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "苦し顔")
		event.ObjsTexAnime(2, 1, "苦し目パチ")
		event.ObjsTexAnime(2, 1, "口とじ～大口")
		event.CmrsPrdelay(30)
		event.CmrsSetPos(185.9, 26.26, -83.55)
		event.CmrsSetRef(160.82, 28.01, -82.54)
		event.CmrsMove2(225.88, 13.42, -85.2, 160.83, 18.04, -82.53, 60, 0, 1.0)
		event.SetPakuAnim(2, "苦し口パク")
		helper_4116e6bb(5320480)
		wait_objects(2)
		wait_camera()
		event.CmrsSetPos(-153.15, 54.88, 77.9)
		event.CmrsSetRef(-32.02, 26.4, 15.61)
		event.CmrsMove2(-153.15, 54.88, 77.9, -32.02, 93.93, 15.61, 60, 0, 1.0)
		helper_4116e6bb(5320490)
		wait_camera()
		event.CmrsSetPos(-45.58, 18.39, -25.71)
		event.CmrsSetRef(-44.29, 20.81, 21.82)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.SndSePlay(var1, 19)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320500)
		event.ObjsSetMotion(1, "上向く", 6)
		event.CmrsSetPos(152.29, 17.2, -116.31)
		event.CmrsSetRef(169.35, 16.15, -86.33)
		event.CmrsMoveRef(163.62, 23.13, -83.64, 120)
		event.CmrsMoveAhd2(1.42, -8.07, 36.58, 90, 0, 1.0)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "苦し顔")
		event.ObjsTexAnime(2, 1, "苦し目パチ")
		event.ObjsSetMotion(2, "苦しむ", 6)
		event.ObjsNextMotion(2, "苦しむL", 4)
		event.ObjsSeDelay(2, 30)
		event.ObjsSePlay(2, var1, 20)
		helper_4116e6bb(5320510)
		helper_4116e6bb(5320515)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "苦し顔")
		event.ObjsTexAnime(2, 1, "苦し目とじ")
		event.SetPakuAnim(2, "苦し口パク")
		helper_4116e6bb(5320520)
		wait_camera()
		event.CmrsSetPos(-65.76, 1.45, 77.12)
		event.CmrsSetRef(-31.95, 23.15, 22.39)
		event.ObjsSetPos(0, -54.15, 0.0, 12.15)
		event.ObjsSetRot(0, 0.0, 2.02, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -34.9, 0.0, 31.89)
		event.ObjsSetRot(1, 0.0, 2.18, 0.0)
		event.ObjsResetDaPosition(1)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320530)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5320540)
		event.CmrsSetPos(27.41, 54.66, -24.03)
		event.CmrsSetRef(-38.65, 16.14, 19.92)
		event.CmrsMove2(27.41, 88.01, -24.03, -38.65, 16.14, 19.92, 60, 2, 1.0)
		event.SndSePlay(var1, 21)
		event.CharaActive(0, 15)
		event.CharaActive(0, 11)
		event.CharaActive(1, 16)
		event.SetCharaPos(16, 98.8, 0.0, -70.68)
		event.SetCharaRot(16, 0.0, 2.16, 0.0)
		event.SetMotion(16, "伸びる", 6)
		event.ObjsSetMotion(0, "ギル巨大化", 6)
		event.ObjsNextMotion(0, "ギル巨大化L", 4)
		event.ObjsSetMotion(1, "ギル巨大化", 6)
		event.SetLoadbgFile_1("snd2/bgm/bg_035.sound.json")
		helper_479dc9e9()
		event.LoadBgmPack(35)
		wait_camera()
		event.CharaActive(0, 16)
		event.PlayBgm(0)
		event.CmrsSetPos(-201.41, 27.8, 185.21)
		event.CmrsSetRef(-35.48, 67.52, 28.17)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.SndSeStop(var1, 16)
		event.CharaActive(1, 13)
		helper_888ab2a3(10)
		event.SndSePlay(var1, 22)
		event.ObjsSetMotion(8, "攻撃１", 6)
		event.ObjsNextMotion(8, "攻撃１ループ", 4)
		helper_888ab2a3(4)
		event.ObjsSetMotion(0, "よける", 6)
		event.ObjsSetMotion(1, "後ろ飛び", 6)
		event.ObjsMotionWait(1)
		wait_objects(1)
		helper_888ab2a3(10)
		event.CmrsSetPos(-36.53, 21.01, 90.55)
		event.CmrsSetRef(-110.73, 24.73, 53.44)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "無表情")
		event.SndSePlay(var1, 23)
		event.ObjsSetPos(0, -130.27, 0.0, 15.93)
		event.ObjsSetMotion(0, "バトル立ち2", 4, -1.0, 1)
		event.ObjsSetPos(1, -64.55, 0.0, 84.34)
		event.ObjsSetMotion(1, "戦うしか", 4, -1.0, 1)
		helper_888ab2a3(10)
		event.ObjsSetMotion(1, "戦うしかユリス見", 2)
		event.ObjsNextMotion(1, "戦うしかユリス見L", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320550)
		event.ObjsSetMotion(1, "上見へ", 2)
		event.ObjsNextMotion(1, "上見へL", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320560)
		event.CmrsSetPos(-247.3, 94.84, 129.46)
		event.CmrsSetRef(-110.28, 94.53, 54.08)
		event.CmrsMove(-217.34, 94.84, 112.98, -110.28, 94.53, 54.08, 120)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(10, 128, 128, 128, 128, 30)
		event.ObjsSetMotion(8, "立ち", 4)
		helper_888ab2a3(90)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	event.CancelDramaScene()
	event.SndSeStop(var1, 16)
	var3 = event.GetBgmNo() or var3
	if var3 ~= 35 then
		event.StopBgm(0)
		helper_888ab2a3(4)
		event.LoadBgm(35)
		event.PlayBgm(0)
	end
	event.SpriteSetDraw(0, 0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.SpriteSetDraw(2, 0)
	event.SpriteSetDraw(3, 0)
	event.SpriteSetDraw(4, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(11)
	event.DeleteChara(13)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.DeleteChara(18)
	event.DeleteChara(19)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CmrsInit()
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(3, 1)
	event.EohSetShow(4, 1)
end

--- Helper function.
local function helper_22124()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(536, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
			active_chr_no = 0
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
			active_chr_no = 1
		end
		event.StopBgm(0)
		at = 2
		helper_888ab2a3(4)
		event.LoadBgm(52)
		event.LoadSound(5823)
		var1 = event.SndLoadSound_2(5823) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e500/e536/")
		event.LoadMes(0, 5, "e536.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e536_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e536_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e536_guiltoni.gltf", "info", 10)
		event.CharaActive(0, 10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e536_m_guil.gltf", "p00_23a", 11)
		event.CharaActive(11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "e536_guilbaku.gltf", "info", 12)
		event.CharaActive(0, 12)
		event.LoadChara(5, "e536_guilbaku1.gltf", "info", 13)
		event.CharaActive(0, 13)
		event.LoadChara(5, "e536_hikari.gltf", "info", 14)
		event.CharaActive(0, 14)
		event.LoadChara(5, "e536_hikari1.gltf", "info", 15)
		event.CharaActive(0, 15)
		event.LoadChara(5, "e536_guil_hikari.gltf", "info", 16)
		event.CharaActive(0, 16)
		event.EohSyncChara(6, 16)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 6)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e536/e536_mints.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e536/e536_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.EohSetPos(0, -10.0, 0.0, 100.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "半口")
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, 10.0, 0.0, 100.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.EohSetTexAnim(1, 1, "半口")
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(2, 0.0, 0.0, -50.0)
		event.EohSetRot(2, 0.0, 1.57, 0.0)
		event.EohSetMotion(2, "倒れ", 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "くるし顔")
		event.EohSetTexAnim(2, 1, "くるし目とじ")
		event.EohSetPos(3, 0.0, 0.0, -50.0)
		event.EohSetRot(3, 0.0, 0.0, 0.0)
		event.EohSetMotion(3, "グォオー", 4)
		event.SetCharaPos(12, 0.0, 50.0, -50.0)
		event.SetCharaRot(12, 0.0, 0.0, 0.0)
		event.SetCharaPos(13, 0.0, 50.0, -18.0)
		event.SetCharaRot(13, 0.0, 0.0, 0.0)
		event.InitDramaScene()
		event.CharaActive(1, 12)
		event.SetMotion(12, "グォオー", 6)
		event.CharaActive(1, 13)
		event.SetMotion(13, "グォオー", 6)
		event.SndSePlay(var1, 2)
		event.CmrsInit()
		event.CmrsSetPos(0.0, 150.0, 65.9)
		event.CmrsSetRef(0.0, 150.0, -23.0)
		event.CmrsMove2(0.0, 123.2, 330.45, 0.0, 123.57, -23.0, 90, 0, 0.3)
		event.SetFadeIn(30)
		at = 3
		helper_888ab2a3(80)
		event.SetCharaShow(11, 0, 1, 0.1)
		at = 4
		wait_camera()
		event.CharaActive(0, 13)
		event.CharaActive(0, 12)
		event.CmrsSetPos(45.36, 6.79, 49.62)
		event.CmrsSetRef(-2.61, 16.71, 101.94)
		event.SetWind(10, 0.0, 0.0, 1.0)
		event.CharaActive(1, 14)
		event.SetCharaPos(14, 19.99, 0.0, 122.09)
		event.SetCharaRot(14, 0.0, 1.57, 0.0)
		event.ObjsSetMotion(0, "爆発", 6)
		event.ObjsNextMotion(0, "爆発L", 4)
		event.ObjsSetMotion(1, "爆発", 6)
		event.ObjsNextMotion(1, "爆発L", 4)
		at = 5
		wait_objects(1)
		at = 6
		helper_888ab2a3(20)
		event.CharaActive(0, 14)
		event.CmrsSetPos(4.04, 16.09, 159.94)
		event.CmrsSetRef(4.04, 13.4, 71.43)
		event.CharaActive(0, 11)
		event.CharaActive(1, 10)
		event.CharaActive(1, 15)
		event.SetCharaPos(15, 0.0, 0.0, 15.0)
		event.SetCharaRot(15, 0.0, 0.0, 0.0)
		at = 7
		helper_888ab2a3(20)
		event.SetCharaShow(15, 0, 1, 0.033333335)
		event.SetWind(-1)
		at = 8
		helper_888ab2a3(20)
		event.ObjsSetMotion(0, "爆発戻り", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "もどり", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		at = 9
		wait_objects(1)
		at = 10
		helper_888ab2a3(6)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMotionDelay(1, 46)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsMove(1, 10.0, 0.0, -30.0, 50)
		event.ObjsRotDelay(1, 46)
		event.ObjsRotation(1, 0.0, -2.78, 0.0, 10)
		at = 11
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 46)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, -10.0, 0.0, -30.0, 50)
		event.ObjsRotDelay(0, 46)
		event.ObjsRotation(0, 0.0, 2.9, 0.0, 10)
		at = 12
		helper_888ab2a3(15)
		event.CmrsSetPos(13.0, 9.86, -79.62)
		event.CmrsSetRef(13.0, 12.67, -39.5)
		event.CmrsMove2(0.0, 9.86, -79.62, 0.0, 12.67, -39.5, 60, 2, 1.0)
		event.PlayBgm(0)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.ObjsSetPos(2, 13.0, 0.0, -50.0)
		event.ObjsResetDaPosition(2)
		at = 13
		wait_objects(1)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目～こまり目下")
		event.SndSePlay(var1, 3)
		event.ObjsSetMotion(1, "しゃがみ", 6)
		event.ObjsNextMotion(1, "しゃがみL", 4)
		at = 14
		wait_objects(0)
		event.ObjsSetMotion(0, "しゃがむ", 6)
		event.ObjsNextMotion(0, "しゃがむL", 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "くるし顔")
		event.EohSetTexAnim(2, 1, "目とじ～目あけ")
		event.SetPakuAnim(1, "通常口パク")
		at = 15
		helper_4116e6bb(5360010)
		event.SetPakuAnim(2, "くるし口パク")
		at = 16
		helper_4116e6bb(5360020)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "くるし顔")
		event.EohSetTexAnim(2, 1, "目あけ～目とじ")
		event.ObjsSetMotion(2, "ぐふっ", 2)
		event.ObjsNextMotion(2, "倒れ", 4)
		event.SetPakuAnim(2, "くるし口パク")
		at = 17
		helper_4116e6bb(5360025)
		at = 18
		helper_a6838a9a(5360030, -1)
		at = 19
		wait_camera()
		event.CmrsSetPos(16.76, 57.33, -49.41)
		event.CmrsSetRef(4.01, 12.67, -49.87)
		event.CmrsMove2(11.95, 41.94, -49.58, 4.01, 12.67, -49.87, 150, 2, 1.0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "くるし顔")
		event.EohSetTexAnim(2, 1, "くるし目～くるし目２")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "こまり顔")
		event.EohSetTexAnim(1, 1, "こまり目パチ")
		event.SetPakuAnim(2, "くるし口パク")
		at = 20
		helper_4116e6bb(5360040)
		event.SetPakuAnim(2, "くるし口パク")
		at = 21
		helper_4116e6bb(5360045)
		at = 22
		wait_camera()
		event.SndSePlay(var1, 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "くるし顔")
		event.EohSetTexAnim(2, 1, "くるし目２～通常目")
		event.EohSetTexAnim(2, 1, "わらい口")
		event.ObjsSetMotion(2, "モニカ見", 2)
		event.ObjsNextMotion(2, "モニカ見L", 4)
		at = 23
		wait_objects(2)
		at = 24
		helper_888ab2a3(60)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "こまり顔")
		event.EohSetTexAnim(1, 1, "こまり目パチ")
		event.EohSetTexAnim(1, 1, "口とじ～大口")
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "ゆっくり目とじ")
		event.SndSePlay(var1, 5)
		event.ObjsSetMotion(2, "死に", 2)
		event.ObjsMotionWait(2)
		at = 25
		wait_objects(2)
		at = 26
		helper_888ab2a3(60)
		event.CmrsSetPos(-6.98, 9.03, -75.58)
		event.CmrsSetRef(0.96, 12.16, -49.21)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "こまり顔")
		event.EohSetTexAnim(1, 1, "目あき～目とじ")
		event.SetPakuAnim(1, "通常口パク")
		at = 27
		helper_4116e6bb(5360050)
		event.CmrsSetPos(-0.18, 28.97, 146.9)
		event.CmrsSetRef(9.44, 29.01, 60.59)
		event.CmrsMove(-2.36, 28.97, 166.44, 9.44, 29.01, 60.59, 150)
		event.SndSePlay(var1, 6)
		event.CharaActive(1, 16)
		event.SetCharaPos(16, 0.0, 0.0, -50.0)
		event.SetCharaRot(16, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(4, "発動・ギル光の粒", 6)
		event.ObjsNextMotion(4, "ループ・ギル光の粒", 4)
		event.FadeOutBgm(150)
		at = 28
		helper_888ab2a3(30)
		event.SetFadeOut(120, 255, 255, 255)
		at = 29
		helper_888ab2a3(120)
	end, function(received: { any }): boolean
		if at <= 1 then
			local _ = active_chr_no == 2
			active_chr_no = 0
			local _ = active_chr_no == 3
			active_chr_no = 1
			helper_038a2e4d(4)
		end
		if at <= 2 then
			helper_038a2e4d(80)
		end
		if at <= 3 then
			helper_344d6cd8()
		end
		if at <= 4 then
			helper_238b5abc(1)
		end
		if at <= 5 then
			helper_038a2e4d(20)
		end
		if at <= 6 then
			helper_038a2e4d(20)
		end
		if at <= 7 then
			helper_038a2e4d(20)
		end
		if at <= 8 then
			helper_238b5abc(1)
		end
		if at <= 9 then
			helper_038a2e4d(6)
		end
		if at <= 10 then
			helper_038a2e4d(10)
		end
		if at <= 11 then
			helper_038a2e4d(15)
		end
		if at <= 12 then
			helper_238b5abc(1)
		end
		if at <= 13 then
			helper_238b5abc(0)
		end
		if at <= 14 then
			helper_8cd371d7(5360010)
		end
		if at <= 15 then
			helper_8cd371d7(5360020)
		end
		if at <= 16 then
			helper_8cd371d7(5360025)
		end
		if at <= 17 then
			helper_26c3d54b(5360030, -1)
		end
		if at <= 18 then
			helper_344d6cd8()
		end
		if at <= 19 then
			helper_8cd371d7(5360040)
		end
		if at <= 20 then
			helper_8cd371d7(5360045)
		end
		if at <= 21 then
			helper_344d6cd8()
		end
		if at <= 22 then
			helper_238b5abc(2)
		end
		if at <= 23 then
			helper_038a2e4d(60)
		end
		if at <= 24 then
			helper_238b5abc(2)
		end
		if at <= 25 then
			helper_038a2e4d(60)
		end
		if at <= 26 then
			helper_8cd371d7(5360050)
		end
		if at <= 27 then
			helper_038a2e4d(30)
		end
		if at <= 28 then
			helper_038a2e4d(120)
		end
		return true
	end)
	at = 30
	vm.entry(30)
	event.CancelDramaScene()
	event.StopBgm(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(4, 1)
	event.EohSetShow(5, 1)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event.Initialize()
	event.SetFadeOut(0)
	event_99()
	event.CheckMcLoad()
	vm.wait(1)
	helper_9dafbc83(0.0, -30.0, 1600.0, vm.f32(3.14))
	event.SetCameraRef(0.0, 0.0, 1600.0)
	event.SetCameraPos(0.0, 10.0, 1700.0)
	event.ResetCamera(0)
	event.SetFadeIn(15)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_263b8

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local active_chr_no: s32 = 0
	local var1: any = 0
	event.Initialize()
	event.ActchrSetDefMotion(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		if active_chr_no == 2 then
			helper_75684dd8(0, 20, 5, 256, 208)
		else
			helper_75684dd8(0, 21, 5, 256, 208)
		end
		event.Finish()
		return
	end
	event.SetMesQuestionGyou(0, 0)
	event.SetMesWindowMode(0, 5)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(0, "前のフロアに戻りますか？")
	var1 = helper_bac0e30d(0, -1, 8, 0, 0, 2, 1)
	event.SetMesDrawspeed(0, 0)
	if var1 == 0 then
		event.SetFadeOut(15)
		helper_888ab2a3(15)
		event.LoadScript("d05/d05.stb", 1000)
	end
	event.Finish()
end

--- Event 400, which map data, a script or the engine runs by number.
function script.event_400()
	helper_93cb8168()
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local item: s32 = 0
	event.Initialize()
	event.ActchrSetDefMotion(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		if active_chr_no == 2 then
			helper_75684dd8(0, 22, 8, 0, 0)
		else
			helper_75684dd8(0, 23, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		event.Finish()
		return
	end
	var1 = event.GetEventData_2(6) or var1
	if var1 == 1 then
		event.Initialize()
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		var2 = helper_c292fa16(0, 2507, 5, 256, 208, var2)
		event.SetMesWindowMode(0, 7)
		event.SetMesDrawspeed(0, 0)
		if var2 == 1 then
			var1 = 2
		end
	end
	if var1 == 2 then
		event.SetStatusbarShow(0, 0.16666667)
		helper_888ab2a3(6)
		event.GotoUseItem(354)
		vm.wait(5)
		item = vmhost.used_item() or item
		if item == 354 then
			event.FuncPointShow("d05", "func", 0)
			event.EohSyncObj_3(0, "d05", "d05ba02-a")
			event.EohSetShow(0, 0)
			event.FuncPointShow("p01", "invent_2023-1", 1)
			helper_1197c()
			return
		elseif item <= 0 then
			event.Finish()
		else
			helper_5fb66cb1()
		end
		event.SetStatusbarShow(1, 0.16666667)
		helper_888ab2a3(6)
	end
	event.Finish()
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetBitCtrl(1, 1)
		event.SetFadeOut(15)
		at = 1
		helper_888ab2a3(15)
		event.FuncPointShow("", "e528", 0)
		at = 2
		helper_12c24()
		at = 3
		vm.wait(3)
		event.LoadMonsterFile(512, 1)
		event.AutoSetMonster(512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		helper_9dafbc83(0.0, 0.0, 300.0, vm.f32(3.14))
		event.SetCameraRef(0.0, 30.0, 300.0)
		event.SetCameraPos(0.0, 40.0, 400.0)
		event.ResetCamera(0)
		event.SetFadeIn(15)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_12c24()
				return vm.continue_with(function()
					at = 3
					vm.wait(3)
					event.LoadMonsterFile(512, 1)
					event.AutoSetMonster(512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					helper_9dafbc83(0.0, 0.0, 300.0, vm.f32(3.14))
					event.SetCameraRef(0.0, 30.0, 300.0)
					event.SetCameraPos(0.0, 40.0, 400.0)
					event.ResetCamera(0)
					event.SetFadeIn(15)
					event.Finish()
					return
				end)
			end
			helper_43f02c95(0.0, 0.0, 300.0, vm.f32(3.14))
			return 0
		end
		return nil
	end)
end

--- Event 560, which map data, a script or the engine runs by number.
function script.event_560()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(15)
		at = 1
		helper_888ab2a3(15)
		event.DelMonster(-1)
		event.JoinPartyMember(1, 1)
		event.SetCharaChangeFlag(1, 1)
		event.SetCharaChangeMask(1, 1)
		event.JoinPartyMember(3, 1)
		event.SetCharaChangeFlag(3, 1)
		event.SetCharaChangeMask(3, 1)
		at = 2
		helper_15fb0()
		event.BgmLoadCancel()
		event.LoadDungeonMapFile("s49")
		event.LoadScript("s49/s49.stb", 500)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_15fb0()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.LoadDungeonMapFile("s49")
					event.LoadScript("s49/s49.stb", 500)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 561, which map data, a script or the engine runs by number.
function script.event_561()
	event.ResetEventTrg()
	helper_1c2b8()
	event.FuncPointShow("", "e528", 0)
	event.FuncPointShow("d05", "func", 0)
	event.FuncPointShow("p01", "invent_2023-1", 1)
	event.EohSyncObj_3(0, "d05", "d05ba03-a")
	event.EohSetShow(0, 1)
	event.EohSyncObj_4(0, "d05", "d05b01_1", "takil")
	event.EohSetTranslate(0, -330.0, 0.0, 200.0)
	event.EohSyncObj_4(0, "d05", "d05b01_1", "takir")
	event.EohSetTranslate(0, 330.0, 0.0, 200.0)
	event.LoadMonsterFile(511, 1)
	event.AutoSetMonster(511, 0.0, 0.0, -200.0, 0.0, 0.0, 0.0)
	event.SetCharaPos(0, 0.0, 0.0, 300.0)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.SetCameraPos(0.0, 40.0, 420.0)
	event.SetCameraRef(0.0, 30.0, 300.0)
	event.ResetCamera(0)
	event.SetFadeIn(15)
	event.Finish()
end

--- Event 570, which map data, a script or the engine runs by number.
function script.event_570()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.FadeOutBgm(0)
		event.SetFadeOut(15)
		at = 1
		helper_888ab2a3(15)
		event.StopBgm(0)
		event.DelMonster(-1)
		at = 2
		helper_22124()
		event.SetFloorInfo(4, 22, 5, 2)
		event.BgmLoadCancel()
		event.LoadDungeonMapFile("s49")
		event.LoadScript("s49/s49.stb", 510)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_22124()
				return vm.continue_with(function()
					event.SetFloorInfo(4, 22, 5, 2)
					event.BgmLoadCancel()
					event.LoadDungeonMapFile("s49")
					event.LoadScript("s49/s49.stb", 510)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 571, which map data, a script or the engine runs by number.
function script.event_571()
	event.SetBitCtrl(1, 0)
	event.ResetEventTrg()
	helper_263b8()
	event.GotoEdit(3, 500)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	event.Initialize()
	vm.wait(1)
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(35)
	event.PlayBgm(0)
	event.FuncPointShow("d05", "func", 0)
	event.FuncPointShow("", "e528", 0)
	event.LoadMonsterFile(511, 1)
	event.AutoSetMonster(511, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local var1: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(532) or flag
		flag_2 = event.GetFlag(536) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var1 = 0
			var1 = vm.float_bits(event.GetRand(100)) or var1
			if var1 < 50 then
				at = 1
				helper_a9eaf20e(0, 8540060)
			else
				at = 2
				helper_a9eaf20e(0, 8540070)
			end
			return
		end
		flag_3 = event.GetFlag(528) or flag_3
		if flag_3 ~= 0 and flag == 0 then
			var1 = 0
			var1 = vm.float_bits(event.GetRand(100)) or var1
			if var1 < 50 then
				at = 3
				helper_a9eaf20e(0, 8530100)
			else
				at = 4
				helper_a9eaf20e(0, 8530110)
			end
			return
		end
		at = 5
		helper_f9968159(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_2609f66b(0, 8540070)
			end
			return 0
		end
		if at <= 4 then
			if at <= 3 then
				helper_2609f66b(0, 8530110)
			end
			return 0
		end
		if at <= 5 then
			return 0
		end
		return nil
	end)
end

--- Event 15260, which map data, a script or the engine runs by number.
function script.event_15260()
	event.StopBgm(0)
	helper_1197c()
end

--- Event 15280, which map data, a script or the engine runs by number.
script.event_15280 = helper_12c24

--- Event 15320, which map data, a script or the engine runs by number.
function script.event_15320()
	helper_15fb0()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("s49")
	event.LoadScript("s49/s49.stb", 500)
end

--- Event 15360, which map data, a script or the engine runs by number.
function script.event_15360()
	helper_22124()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("s49")
	event.LoadScript("s49/s49.stb", 510)
end

--- Event 25020, which map data, a script or the engine runs by number.
function script.event_25020()
	event.Initialize()
	vm.wait(1)
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(190)
	event.PlayBgm(0)
	event.FuncPointShow("", "e528", 0)
	event.LoadMonsterFile(512, 1)
	event.AutoSetMonster(512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.Finish()
end

return script
