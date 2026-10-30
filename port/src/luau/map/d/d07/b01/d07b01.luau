--!strict
-- map/d/d07/b01/d07b01.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_2609f66b = require("@lib/event/helper_2609f66b")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_7c656a4f = require("@lib/event/helper_7c656a4f")
local helper_7d7eee8f = require("@lib/event/helper_7d7eee8f")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_a9eaf20e = require("@lib/event/helper_a9eaf20e")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_dbff9fb6 = require("@lib/event/helper_dbff9fb6")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local helper_f9968159 = require("@lib/event/helper_f9968159")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	event.StopBgm(0)
	event.LoadSound(8693)
	flag = event.GetFlag(820) or flag
	if flag == 1 then
		event.EohSyncObj_2(0, "p04")
		event.EohSetShow(0, 0)
		event.FuncPointShow("p04", "func", 0)
	end
end

--- Event 28020, which map data, a script or the engine runs by number.
local function event_28020()
	event.Initialize()
	event.SetFadeOut(0)
	event.EohSyncObj_2(0, "p06")
	event.EohSetShow(0, 1)
	event.StopBgm(0)
	helper_888ab2a3(6)
	event.LoadBgm(40)
	event.PlayBgm(0)
	event.LoadMonsterFile(629, 1)
	event.LoadMonsterFile(630, 0)
	event.AutoSetMonster(629, -513.2, 9.0, -127.2, 0.0, 1.25, 0.0)
	helper_7d7eee8f(vm.f32(438.61), 0.0, vm.f32(192.19), vm.f32(-1.89))
	event.SetCameraRef(438.61, 30.0, 192.19)
	event.SetCameraPos(590.29, 39.11, 243.1)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	vm.wait(2)
	event.Finish()
end

--- Helper function.
local function helper_10694()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(816, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.StopBgm(0)
		helper_888ab2a3(6)
		event.LoadBgm(111)
		event.PlayBgm(0)
		event.LoadSound(8809)
		var1 = event.SndLoadSound_2(8809) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e800/e816/")
		event.LoadMes(0, 5, "e816.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e816_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e816_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e816_majin.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		block = event.LoadImg_4(5, "e816telop01.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e816telop01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetAlphab(0, 0)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(3, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e800/e816/e816_mints.gltf", "info", 8)
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
			event.LoadMotion(5, "event/e800/e816/e816_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.LoadChara(5, "event/e200/e206/e206_bbaku.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.EohSyncObj_2(4, "p04")
		event.SetCharaShow(1, 0)
		event.SetCharaShow(2, 0)
		event.EohSetShow(4, 1)
		event.EohSetPos(0, 772.29, -72.1, 1522.76)
		event.EohSetRot(0, 0.0, -2.64, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, 0.0, 0.0, 0.0)
		event.EohSetRot(1, 0.0, 0.0, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 2)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, 0.0, -1000.0, 0.0)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetScale(2, 8.0, 8.0, 8.0)
		event.SetCharaPos(11, 974.5, 0.34, 1616.44)
		event.SetCharaRot(11, 0.0, 1.32, 0.0)
		event.SetScale(11, 1.0, 1.0, 1.0)
		if active_chr_no == 0 then
			event.CharaActive(0, 8)
			event.CharaActive(0, 9)
		else
			event.CharaActive(0, 0)
		end
		event.InitDramaScene()
		event.ObjsPosDelay(0, 20)
		event.ObjsMove(0, 850.58, -72.1, 1669.29, 40)
		event.ObjsRotDelay(0, 20)
		event.ObjsRotation(0, 0.0, 0.52, 0.0, 8)
		event.ObjsMotionDelay(0, 20)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		event.CmrsInit()
		event.CmrsSetPos(988.97, 77.53, 1641.42)
		event.CmrsSetRef(768.43, -42.14, 1535.48)
		event.SetFadeIn(30)
		helper_888ab2a3(20)
		event.SndSePlay(var1, 0)
		helper_888ab2a3(50)
		event.SndSeStop(var1, 0)
		event.SndSePlay(var1, 1)
		event.CmrsQuake2(0.0, 1.0, 0.0, 50)
		event.CharaActive(11)
		event.SetMotion(11, "ｴﾌｪｸﾄ_バギー爆発", 6)
		helper_888ab2a3(10)
		event.EohSetShow(4, 0)
		event.ObjsSetRot(0, 0.0, -2.6, 0.0)
		helper_888ab2a3(40)
		event.ObjsMove(0, 805.68, -72.1, 1578.18, 90)
		event.ObjsSetMotion(0, "歩き")
		wait_objects(0)
		event.CmrsSetPos(526.21, 180.7, 925.23)
		event.CmrsSetRef(591.71, 28.27, 1249.82)
		if active_chr_no == 0 then
			event.CharaActive(1, 8)
			event.CharaActive(1, 9)
		else
			event.CharaActive(1, 0)
		end
		event.ObjsSetPos(0, 647.7, -69.42, 1336.0)
		event.ObjsSetRot(0, 0.0, -2.48, 0.0)
		event.ObjsMove(0, 594.08, -64.59, 1267.87, 90)
		event.ObjsMotionDelay(0, 90)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetPos(1, 642.51, -70.56, 1362.06)
		event.ObjsSetRot(1, 0.0, -2.6, 0.0)
		event.ObjsMove(1, 586.91, -65.57, 1291.72, 90)
		event.ObjsSetMotion(1, "歩き", 4, -1.0, 1)
		event.ObjsMotionDelay(1, 90)
		event.ObjsSetMotion(1, "立ち")
		wait_objects(0)
		event.CmrsSetPos(680.66, 6.68, 980.64)
		event.CmrsSetRef(575.95, -0.27, 930.94)
		event.CmrsMove2(680.66, 6.68, 980.64, 608.93, 31.74, 882.58, 40, 0, 0.4)
		wait_camera()
		event.CmrsMove2(680.66, 6.68, 980.64, 576.22, 34.02, 919.65, 14, 2, 0.2)
		wait_camera()
		helper_888ab2a3(30)
		event.CmrsSetPos(577.41, -36.52, 1231.62)
		event.CmrsSetRef(593.55, -49.69, 1286.96)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目～おどろき目")
		event.ObjsSetMotion(0, "指さす", 6)
		event.ObjsNextMotion(0, "指さすL", 4)
		event.ObjsSeDelay(0, 10)
		event.ObjsSePlay(0, var1, 2)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(8160010)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(8160015)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(8160020)
		wait_objects(0)
		event.CmrsSetPos(-175.42, 20.69, 292.74)
		event.CmrsSetRef(-130.55, 18.84, 404.37)
		event.FadeOutBgm(60)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.ObjsSetPos(0, 30.86, -3.88, 469.02)
		event.ObjsSetRot(0, 0.0, -2.12, 0.0)
		event.ObjsMove(0, -163.18, 0.0, 334.91, 50)
		event.ObjsSetMotion(0, "走り", 4)
		event.ObjsMotionDelay(0, 50)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMotionDelay(0, 6)
		event.ObjsSetMotion(0, "キョロキョロ", 4)
		event.ObjsTexaDelay(0, 30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目～おどろき目")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsSetPos(1, 73.45, -7.05, 525.46)
		event.ObjsSetRot(1, 0.0, -2.12, 0.0)
		event.ObjsMove(1, -116.94, 0.0, 392.73, 60)
		event.ObjsRotDelay(1, 50)
		event.ObjsRotation(1, 0.0, 2.84, 0.0, 10)
		event.ObjsSetMotion(1, "走り", 4)
		event.ObjsMotionDelay(1, 60)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsTexaDelay(1, 30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(1, 1, "半口")
		helper_888ab2a3(20)
		helper_4116e6bb(8160030)
		helper_4116e6bb(8160035)
		event.CmrsSetPos(57.5, 40.21, 529.52)
		event.CmrsSetRef(-184.49, 8.41, 336.31)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetPos(1, -182.92, 0.0, 359.09)
		event.ObjsSetRot(1, 0.0, -2.36, 0.0)
		event.ObjsSetPos(2, -367.65, 0.0, 193.54)
		event.ObjsSetRot(2, 0.0, 0.9, 0.0)
		event.ObjsSetMotion(2, "ふってくる", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SndSePlay(var1, 3)
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "ドスン", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsSetMotion(1, "着地振動", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.CmrsQuake(0.0, 8.0, 0.0, 40)
		helper_888ab2a3(20)
		event.CmrsMove2(57.5, 40.21, 529.52, -184.49, 99.45, 336.31, 60, 0, 0.2)
		helper_888ab2a3(20)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(3, 128, 128, 128, 128, 20)
		wait_camera()
		event.ObjsSetColor(3, 128, 128, 128, 0, 30)
		helper_888ab2a3(30)
		event.SpriteSetDraw(0, 0)
		helper_888ab2a3(10)
		event.CmrsSetPos(-201.98, 60.97, 306.62)
		event.CmrsSetRef(-164.55, 1.55, 356.48)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(8160040)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(8160050)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(8160060)
		event.CmrsSetRef(-332.71, 270.78, 221.57)
		event.CmrsSetAhd(0.43, -34.0, 115.0)
		event.CmrsMoveAhd2(1.54, -34.0, 115.0, 200, 0, 0.2)
		event.SetPakuMotion(2, "会話", 0, "立ち", 0)
		helper_4116e6bb(8160070)
		event.SetPakuMotion(2, "会話", 0, "立ち", 0)
		helper_4116e6bb(8160080)
		event.SetPakuMotion(2, "会話", 0, "立ち", 0)
		helper_4116e6bb(8160090)
		wait_camera()
		event.CmrsSetPos(-314.29, 515.61, 172.37)
		event.CmrsSetRef(-286.23, 270.78, 236.95)
		event.SndSePlay(var1, 4)
		event.ObjsSetMotion(2, "覗き込み会話", 6)
		event.ObjsMotionWait(2)
		wait_objects(2)
		event.SetPakuMotion(2, "覗き込み会話Ｌ", 4, "覗き込み会話とまり", 0)
		helper_4116e6bb(8160100)
		event.SetPakuMotion(2, "覗き込み会話Ｌ", 0, "覗き込み会話とまり", 0)
		helper_4116e6bb(8160105)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(8160110)
		event.SetPakuMotion(2, "覗き込み会話Ｌ", 0, "覗き込み会話とまり", 0)
		helper_4116e6bb(8160120)
		event.SndSePlay(var1, 5)
		event.ObjsSetMotion(2, "一歩前へ", 6)
		event.ObjsNextMotion(2, "一歩前へＬ", 4)
		wait_objects(2)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(39)
	event.CancelDramaScene()
	event.SndSeStop(var1, 0)
	event.SndSeStop(var1, 1)
	event.SndSeStop(var1, 2)
	event.SndSeStop(var1, 3)
	event.SndSeStop(var1, 4)
	event.SndSeStop(var1, 5)
	event.EohSetShow(4, 0)
	event.SpriteSetDraw(0, 0)
	event.SetMotionBlur(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CharaActive(1, 0)
	event.StopBgm(0)
	helper_888ab2a3(6)
	event.LoadBgm(40)
	event.PlayBgm(0)
	event.SetStatusbarShow(1, 1.0)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.Finish()
end

--- Helper function.
local function helper_14efc()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(820, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.StopBgm(0)
		event.LoadSound(8811)
		var1 = event.SndLoadSound_2(8811) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e800/e820/")
		event.LoadMes(0, 5, "e820.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e820_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e820_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e820_majin.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e800/e816/e816_mints.gltf", "info", 8)
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
			event.LoadMotion(5, "event/e800/e816/e816_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.SetCharaShow(1, 0)
		event.SetCharaShow(2, 0)
		event.EohSetPos(0, -125.17, 0.0, -85.85)
		event.EohSetRot(0, 0.0, -1.68, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, -128.34, 0.0, -68.5)
		event.EohSetRot(1, 0.0, -1.92, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(2, -352.78, 0.0, -122.42)
		event.EohSetRot(2, 0.0, 0.72, 0.0)
		event.EohSetScale(2, 8.0, 8.0, 8.0)
		event.InitDramaScene()
		event.ObjsSetMotion(2, "縮む", 6)
		event.ObjsMotionWait(2)
		event.CmrsInit()
		event.CmrsSetPos(-95.35, 412.01, -39.79)
		event.CmrsSetRef(-253.9, 198.62, -86.06)
		event.SndSePlay(var1, 0)
		event.SetFadeIn(30)
		helper_4116e6bb(8200010)
		wait_objects(2)
		helper_888ab2a3(30)
		event.CmrsSetPos(-57.24, 82.46, -60.42)
		event.CmrsSetRef(-126.19, 22.03, -77.1)
		event.CmrsMove2(-57.24, 4.84, -60.42, -126.19, 22.03, -77.1, 90, 0, 1.0)
		helper_4116e6bb(8200020)
		helper_4116e6bb(8200030)
		helper_4116e6bb(8200040)
		event.ObjsSetMotion(0, "左向く", 6)
		event.ObjsNextMotion(0, "左向く会話", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		helper_4116e6bb(8200045)
		wait_objects(0)
		event.ObjsSetMotion(1, "右向く", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		helper_4116e6bb(8200050)
		wait_objects(1)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(13)
	event.CancelDramaScene()
	event.SndSeStop(var1, 0)
	event.SpriteSetDraw(0, 0)
	event.SetMotionBlur(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.LoadMes(0, -1)
	event.CharaActive(1, 0)
	event.SetStatusbarShow(1, 1.0)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.Finish()
end

--- Helper function.
local function helper_169a4()
	local block: s32 = 0
	event.SetFadeOut(0)
	event.SoundAllStop()
	helper_888ab2a3(6)
	event.SetFadeIn(0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.LoadMovie(5, "movie/end2.mp4")
	vm.wait(2)
	event.PauseEnableFlag(0)
	block = event.LoadImg_4(5, "textures/event/e800/e824/e82401.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetColor(0, 0, 0, 0, 128)
	event.SpriteSetPutsize(0, 512, 448)
	event.SpriteSetPos(0, 256, 224)
	event.SpriteSetDraw(0, 1)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "e82401", block)
	event.SpriteSetColor(1, 128, 128, 128, 128)
	event.SpriteSetUvsize(1, 0, 0, 512, 448)
	event.SpriteSetPutsize(1, 512, 448)
	event.SpriteSetPos(1, 256, 224)
	event.SpriteSetDraw(1, 1)
	event.SetFadeIn(60)
	helper_888ab2a3(90)
	while true do
		if helper_581cb30c(0) ~= 0 then
			break
		else
			vm.wait(4)
		end
	end
	event.SetFadeOut(30)
	helper_888ab2a3(30)
end

--- Helper function.
local function helper_22a00000()
	helper_038a2e4d(6)
	helper_038a2e4d(90)
	local _ = helper_dbff9fb6(0)
	helper_038a2e4d(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event_99()
	helper_7d7eee8f(vm.f32(972.08), vm.f32(-72.14), vm.f32(1770.23), vm.f32(-2.36))
	event.SetCameraRef(972.08, -42.14, 1770.23)
	event.SetCameraPos(1061.01, -40.06, 1860.38)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 151, which map data, a script or the engine runs by number.
script.event_151 = event_28020

--- Event 152, which map data, a script or the engine runs by number.
function script.event_152()
	event.SetCameraRef(0.0, 0.0, 0.0)
	vm.wait(1)
	helper_c956b4a2(32)
end

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
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
	var1 = helper_ed4dc120(2, -1)
	if var1 == 0 then
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		event.LoadScript("d07/d07.stb", 1000)
	else
		event.Finish()
	end
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local item: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				at = 1
				helper_75684dd8(0, 20, 5, 256, 208)
			else
				at = 2
				helper_75684dd8(0, 21, 5, 256, 208)
			end
			event.Finish()
			return
		end
		event.ActchrSetDefMotion(0)
		var1 = event.GetEventData_2(6) or var1
		if var1 == 1 then
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			event.SetMesDrawspeed(0, 1)
			event.MesMake_2(0, "大きな岩が道をふさいでいる。\n（(#)ボタンでメニューを開く）")
			at = 3
			var2 = helper_c292fa16(0, -1, 5, 256, 208, var2)
			event.SetMesShippo(0, 1)
			event.SetMesDrawspeed(0, 0)
			if var2 == 1 then
				var1 = 2
			end
		end
		if var1 == 2 then
			event.SetStatusbarShow(0, 0.16666667)
			at = 4
			helper_888ab2a3(6)
			event.GotoUseItem(173)
			at = 5
			vm.wait(5)
			item = vmhost.used_item() or item
			if item == 173 then
				event.FadeOutBgm(20)
				event.SetFadeOut(20)
				at = 6
				helper_888ab2a3(20)
				event.FuncPointShow("p04", "func", 0)
				at = 7
				helper_10694()
				at = 8
				vm.wait(8)
				event.Initialize()
				event.EohSyncObj_2(0, "p05")
				event.EohSetShow(0, 1)
				event.EohSyncObj_2(1, "p06")
				event.EohSetShow(1, 1)
				event.SetBitCtrl(1, 1)
				event.LoadMonsterFile(629, 1)
				event.LoadMonsterFile(630, 0)
				event.AutoSetMonster(629, -513.2, 9.0, -127.2, 0.0, 1.25, 0.0)
				helper_7d7eee8f(vm.f32(438.61), 0.0, vm.f32(192.19), vm.f32(-1.89))
				event.SetCameraRef(438.61, 30.0, 192.19)
				event.SetCameraPos(590.29, 39.11, 243.1)
				event.ResetCamera(0)
				event.SetFadeIn(30)
				event.Finish()
			elseif item <= 0 then
			else
				at = 9
				helper_5fb66cb1()
			end
			event.SetStatusbarShow(1, 0.16666667)
			at = 10
			helper_888ab2a3(6)
		end
		event.DngPause(1, 0)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ee1c51d0(0, 21, 5, 256, 208)
			end
			return 0
		end
		if at <= 10 then
			if at == 3 then
				var2 = received[2] :: number
			end
			if at <= 3 then
				local _ = var1 == 1
				var1 = 2
				helper_038a2e4d(6)
			end
			if at <= 5 then
				helper_038a2e4d(20)
			end
			if at <= 6 then
				at = 7
				helper_10694()
				return vm.continue_with(function()
					at = 8
					vm.wait(8)
					event.Initialize()
					event.EohSyncObj_2(0, "p05")
					event.EohSetShow(0, 1)
					event.EohSyncObj_2(1, "p06")
					event.EohSetShow(1, 1)
					event.SetBitCtrl(1, 1)
					event.LoadMonsterFile(629, 1)
					event.LoadMonsterFile(630, 0)
					event.AutoSetMonster(629, -513.2, 9.0, -127.2, 0.0, 1.25, 0.0)
					helper_7d7eee8f(vm.f32(438.61), 0.0, vm.f32(192.19), vm.f32(-1.89))
					event.SetCameraRef(438.61, 30.0, 192.19)
					event.SetCameraPos(590.29, 39.11, 243.1)
					event.ResetCamera(0)
					event.SetFadeIn(30)
					event.Finish()
					event.SetStatusbarShow(1, 0.16666667)
					at = 10
					helper_888ab2a3(6)
					event.DngPause(1, 0)
					event.Finish()
					return
				end)
			end
			if at <= 8 then
				helper_43f02c95(vm.f32(438.61), 0.0, vm.f32(192.19), vm.f32(-1.89))
				helper_7c656a4f()
			end
			if at <= 9 then
				helper_038a2e4d(6)
			end
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local active_chr_no: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.FadeOutBgm(20)
		event.SetFadeOut(20)
		at = 1
		helper_888ab2a3(20)
		event.DelMonster(-1)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
		end
		event.EohSyncObj_2(0, "p05")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(1, "p06")
		event.EohSetShow(1, 0)
		event.SetBitCtrl(1, 0)
		at = 2
		helper_14efc()
		at = 3
		helper_169a4()
		event.SetExitFlag(1)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_14efc()
				return vm.continue_with(function()
					at = 3
					helper_169a4()
					event.SetExitFlag(1)
					return
				end)
			end
			if at <= 2 then
				helper_22a00000()
			end
			return 0
		end
		return nil
	end)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(816) or flag
		flag_2 = event.GetFlag(820) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var2 = 0
			var2 = vm.float_bits(event.GetRand(100)) or var2
			if var2 < 50 then
				at = 1
				helper_a9eaf20e(0, 8600060)
			else
				at = 2
				helper_a9eaf20e(0, 8600070)
			end
			return
		end
		at = 3
		helper_f9968159(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_2609f66b(0, 8600070)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		return nil
	end)
end

--- Event 18160, which map data, a script or the engine runs by number.
script.event_18160 = helper_10694

--- Event 18200, which map data, a script or the engine runs by number.
function script.event_18200()
	helper_14efc()
	helper_169a4()
	event.SetExitFlag(1)
end

script.event_28020 = event_28020

return script
