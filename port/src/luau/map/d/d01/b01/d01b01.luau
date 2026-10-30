--!strict
-- map/d/d01/b01/d01b01.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_523109b8 = require("@lib/event/helper_523109b8")
local helper_53ffe901 = require("@lib/event/helper_53ffe901")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_f432ac2a = require("@lib/event/helper_f432ac2a")
local helper_f616ba9e = require("@lib/event/helper_f616ba9e")
local helper_fbd9683d = require("@lib/event/helper_fbd9683d")
local set_window_mode = require("@lib/event/set_window_mode")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_112f8()
	local var0: s32 = 0
	local var1: s32 = 0
	local language_code: s32 = 0
	local block: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var7: s32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local var14: f32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	local var21: s32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(110, 1)
		event.Initialize()
		event.InitDramaScene()
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		at = 1
		helper_888ab2a3(4)
		event.LoadBgm(107)
		set_window_mode(0, 7)
		event.SetMesEtc(0, 2, 0.6)
		var0 = event.SndLoadSound_3(8, "snd2/sp/sp_030.sound.json") or var0
		var1 = event.SndLoadSound_2(1828) or var1
		event.AssignStack(5)
		event.ClearStack(5)
		event.ChangeDir("event/e100/e110/")
		event.LoadPackFile("e110_data.pak")
		language_code = event.GetLanguage() or language_code
		if language_code == 0 then
			event.LoadMes(0, 5, "e110.txt")
		else
			event.LoadMes(0, 5, "eng_e110.txt")
		end
		event.LoadMotion(5, "e110_mints.gltf", "info", 0)
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 1006.26, -27.71, -200.0)
		event.ObjsSetRot(0, 0.0, -1.32, 0.0)
		event.ObjsSetMotion(0, "旧・立ち", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目パチ")
		event.LoadChara(5, "e110_Halloween.gltf", "info", 8)
		event.CharaActive(8)
		event.EohSyncChara(1, 8)
		event.EohSetSoundId(1, var1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, 37.26, 564.09, 929.35)
		event.ObjsSetRot(1, 0.0, 3.14, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.LoadChara(5, "e110_polcurse.gltf", "info", 9)
		event.CharaActive(9)
		event.EohSyncChara(2, 9)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ObjsSetPos(2, 0.0, 0.0, 0.0)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(2, "手乗りL", 4)
		event.SetReference(8, "polcurse", 9)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "目パチ")
		event.EohSyncObj_3(3, "p02_d01b01", "d01b01_9-m0")
		event.EohSetShow(3, 1)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ObjsSetPos(3, 0.0, 0.0, 0.0)
		event.LoadChara(5, "shuchusen.gltf", "info", 10)
		event.CharaActive(0, 10)
		event.EohSyncChrobj(4, 8, "cube39")
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.ObjsRotation(4, 0.0, -0.02, 0.0, -1)
		event.EohSyncChara(5, 1)
		event.EohSetShow(5, 0)
		event.EohSyncChara(6, 2)
		event.EohSetShow(6, 0)
		event.EohSyncObj_3(7, "p04_d01b01-0", "d01b01_10-m0")
		event.EohSetShow(7, 1)
		event.EohSyncObj_3(8, "p04_d01b01-1", "d01b01_10-m0")
		event.EohSetShow(8, 1)
		language_code = event.GetLanguage() or language_code
		if language_code == 0 then
			block = event.LoadImg_4(5, "e110telop01.json", 0) or block
		else
			block = event.LoadImg_4(5, "eng_e110telop01.json", 0) or block
		end
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e110telop01", block)
		event.SpriteSetPos(0, 320, 334)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetScale(0, 1.0, 1.0)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(10, 0)
		event.ObjsInit(10)
		event.ObjsSyncObj(10, 10)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e110telop01", block)
		event.SpriteSetPos(1, 320, 334)
		event.SpriteSetPutsize(1, 512, 128)
		event.SpriteSetUvsize(1, 0, 128, 512, 128)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetScale(1, 1.0, 1.0)
		event.SpriteSetDraw(1, 0)
		event.EohSyncSprite(11, 1)
		event.ObjsInit(11)
		event.ObjsSyncObj(11, 11)
		event.SetCurrentDir("")
		event.EsmInitialize(5, 1)
		event.EsmLoadBase("e110ポル回転キラ")
		event.EsmInitFix(5)
		event.SndSePlay(var0, 1)
		event.ObjsMove(3, 0.0, 80.0, 0.0, 60)
		event.ObjsJump(3, 0.0, 0.0, 0.0, -0.2, 10)
		event.ObjsJump(3, 0.0, 0.0, 0.0, -0.8, 8)
		event.ObjsJump(3, 0.0, 0.0, 0.0, -0.4, 5)
		event.CmrsInit()
		event.CmrsSetPos(800.55, 83.98, -20.2)
		event.CmrsSetRef(868.65, 40.42, -105.22)
		event.CmrsFadeInit()
		event.CmrsFadeIn(30)
		at = 2
		wait_camera()
		at = 3
		helper_888ab2a3(4)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, 962.88, -27.71, -191.57, 14)
		event.ObjsMove(0, 928.6, -49.72, -185.79, 14)
		event.ObjsMove(0, 904.87, -49.72, -180.71, 10)
		at = 4
		wait_objects(0)
		event.ObjsSetMotion(0, "旧・立ち")
		event.ObjsMotionDelay(0, 4)
		event.ObjsSetMotion(0, "振り返る", 2)
		event.ObjsMotionWait(0)
		at = 5
		wait_objects(0)
		at = 6
		wait_objects(3)
		event.CmrsSetPos(943.36, -35.09, -186.58)
		event.CmrsSetRef(821.59, -23.08, -155.24)
		event.EohSetPos(0, 879.76, -49.72, -169.55)
		event.EohSetRot(0, 0.0, -1.32, 0.0)
		event.EohResetDaPosition(0)
		event.ObjsSetMotion(0, "歩き", 4)
		event.ObjsMove(0, 817.46, -49.72, -153.11, 50)
		event.ObjsMove(0, 794.24, -39.66, -147.28, 20)
		at = 7
		wait_objects(0)
		event.EohSetPos(0, 686.37, 0.0, -120.12)
		event.EohResetDaPosition(0)
		event.CmrsSyncObj(0, 0.0, 23.0, 0.0, -0.72, -4.02, 31.37)
		event.CmrsAhddelay(60)
		event.CmrsMoveAhd2(1.86, -8.02, 63.25, 60, 0, 0.2)
		event.CmrsReleaseObj()
		event.ObjsMove(0, 507.6, 0.0, -66.93, 120)
		event.ObjsSetMotion(0, "見上げる", 6)
		event.ObjsNextMotion(0, "見上げ歩き", 4)
		event.ObjsMotionDelay(0, 80)
		event.ObjsSetMotion(0, "見上げ立ち")
		event.ObjsResetDaPosition(0)
		event.ObjsTexaDelay(0, 40)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目・見上げ")
		event.ObjsTexAnime(0, 1, "口・見上げ止")
		at = 8
		vm.wait(8)
		event.EohResetDaPosition(0)
		event.EohResetDaPosition(0)
		event.SetPakuAnim(0, "通常口パク", "口・見上げ")
		at = 9
		helper_4116e6bb(1100010)
		event.ResetPakuAnim()
		at = 10
		wait_objects(0)
		at = 11
		wait_camera()
		event.CmrsMove2(647.19, 16.82, -107.92, 573.94, 30.81, -86.41, 60, 1, 0.4)
		at = 12
		wait_camera()
		event.CmrsSetPos(481.56, 21.0, -62.02)
		event.CmrsSetRef(508.07, 23.54, -68.14)
		event.ObjsSetMotion(0, "見上げ立ち戻り", 6)
		event.ObjsNextMotion(0, "キョロキョロ", 6)
		event.ObjsMotionWait(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目・見上げ戻り")
		event.ObjsTexaDelay(0, 15)
		event.ObjsTexAnime(0, 1, "目・きょろきょろ")
		at = 13
		helper_888ab2a3(20)
		event.SetPakuAnim(0, "通常口パク", "口・半開き")
		at = 14
		helper_0382f327(1100020, 80)
		event.ObjsSetPos(1, 794.24, 1010.34, -147.28)
		event.ObjsSetMotion(1, "歩き", 4)
		at = 15
		wait_objects(0)
		event.CmrsSetPos(667.59, 48.44, -95.85)
		event.CmrsSetRef(507.87, 18.94, -68.32)
		event.ObjsSetMotion(0, "音に反応", 5)
		event.ObjsSetMotion(0, "音に反応", 6)
		event.ObjsMotionWait(0)
		at = 16
		wait_objects(0)
		event.CmrsSetPos(467.51, 13.06, -57.87)
		event.CmrsSetRef(508.01, 21.39, -67.82)
		event.ObjsSetMotion(0, "速・キョロキョロ", 6)
		event.ObjsMotionWait(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目・真剣")
		event.ObjsTexAnime(0, 1, "口・半開き")
		at = 17
		helper_0382f327(1100030, 57)
		at = 18
		wait_objects(0)
		event.CmrsSetPos(732.17, 114.43, -122.58)
		event.CmrsSetRef(508.62, 22.98, -66.95)
		event.EohSetMotion(0, "真上見立ち", 4)
		event.EohResetDaPosition(0)
		event.CmrsMove2(732.17, 105.07, -122.58, 508.62, 223.27, -66.95, 60, 0, 0.2)
		at = 19
		wait_camera()
		event.EohSetShow(7, 0)
		event.EohSetShow(8, 0)
		event.ObjsSetPos(1, 37.26, 564.09, 929.35)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(210)
		event.CmrsAddPas(479.06, 94.59, -66.26, 507.46, 23.18, -69.39)
		event.CmrsAddPas(386.56, 312.04, -56.08, 414.96, 240.64, -59.21)
		event.CmrsAddPas(304.67, 472.78, -47.07, 342.21, 399.0, -51.2)
		event.CmrsAddPas(274.9, 515.04, -43.79, 318.44, 449.77, -48.58)
		event.CmrsAddPas(229.74, 556.03, -38.82, 283.49, 497.89, -44.74)
		event.CmrsAddPas(197.84, 575.12, -35.31, 257.48, 523.46, -41.88)
		event.CmrsAddPas(148.59, 605.53, -29.04, 215.14, 556.58, -36.37)
		event.CmrsAddPas(114.51, 623.85, -27.82, 185.31, 580.9, -32.72)
		event.CmrsAddPas(89.5, 630.58, -38.99, 159.38, 594.13, -26.12)
		event.CmrsAddPas(25.47, 631.37, -83.55, 125.36, 605.75, -13.42)
		event.CmrsAddPas(-8.91, 642.36, -136.52, 76.49, 616.11, 3.65)
		event.CmrsAddPas(-27.48, 657.3, -231.71, 33.05, 631.05, 47.82)
		event.CmrsAddPas(-11.9, 657.3, -307.18, 8.38, 643.05, 97.42)
		event.CmrsStartPas()
		at = 20
		helper_888ab2a3(130)
		event.ObjsMove(1, 0.0, 564.09, 0.0, 140)
		at = 21
		wait_objects(1)
		event.ObjsSetMotion(1, "立ち")
		event.SndSePlay(var1, 24)
		event.SetPakuAnim(2, "口パク")
		at = 22
		helper_4116e6bb(1100040)
		event.ResetPakuAnim()
		event.SetPakuAnim(2, "口パク")
		at = 23
		helper_4116e6bb(1100045)
		event.ResetPakuAnim()
		event.CmrsSetPos(-27.14, 839.27, 80.43)
		event.CmrsSetRef(94.75, 655.45, 2.7)
		event.SndSePlay(var1, 25)
		event.ObjsSetMotion(1, "歩き", 6)
		event.ObjsNextMotion(1, "立ち")
		event.ObjsRotation(1, 0.0, 1.57, 0.0, 34)
		at = 24
		wait_objects(1)
		at = 25
		helper_888ab2a3(10)
		event.CmrsSetPos(58.08, 736.51, -2.54)
		event.CmrsSetRef(97.6, 643.79, -21.39)
		event.ObjsSetMotion(2, "見下ろす", 6)
		event.ObjsNextMotion(2, "見下ろすL", 4)
		event.SetPakuAnim(2, "口パク")
		at = 26
		helper_4116e6bb(1100050)
		event.ResetPakuAnim()
		at = 27
		wait_objects(2)
		event.CmrsSetPos(131.78, 706.5, -11.98)
		event.CmrsSetRef(68.94, 674.86, -18.39)
		event.ObjsSetMotion(2, "行くわよL", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "目・右")
		event.SetPakuAnim(2, "口パク")
		at = 28
		vm.wait(28)
		at = 29
		helper_4116e6bb(1100060)
		event.ResetPakuAnim()
		event.PlayBgm(0)
		event.ObjsSetMotion(2, "ショータイム", 6)
		event.ObjsNextMotion(2, "ショータイムL", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "目・怒り")
		event.SetPakuAnim(2, "口パク")
		at = 30
		vm.wait(30)
		at = 31
		helper_4116e6bb(1100070)
		event.ResetPakuAnim()
		at = 32
		wait_objects(2)
		event.CmrsSetPos(451.72, 232.27, 240.77)
		event.CmrsSetRef(427.53, 269.36, 227.22)
		event.SndSeStop(var1, 24)
		do
			local out1, out2, out3 = event.EohGetFramePos(1, "polcurse")
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.DelReference(9)
		event.SetCharaPos(9, pos_x, pos_y, pos_z)
		event.SetCharaRot(9, 0.0, 1.0, 0.0)
		event.ObjsSetMotion(2, "飛び降り", 6)
		event.ObjsNextMotion(2, "浮遊１", 4)
		at = 33
		helper_888ab2a3(30)
		event.ObjsRotation(2, 0.84, 1.0, 0.0, 20)
		event.ObjsJump(2, 419.2, 234.6, 220.13, -0.4, 60)
		event.SndSePlay(var1, 26)
		at = 34
		helper_888ab2a3(60)
		event.CmrsSetPos(165.25, 132.61, -30.82)
		event.CmrsSetRef(217.3, 22.85, -38.71)
		event.CmrsMove2(206.22, 50.23, -37.03, 217.3, 22.85, -38.71, 20, 1, 1.0)
		event.EohSetShow(7, 1)
		event.EohSetShow(8, 1)
		event.CharaActive(10)
		event.CmrsCharaAttach(10, 60.0, 30)
		event.SndSePlay(var1, 27)
		event.ObjsSetPos(0, 213.76, 0.0, -35.13)
		event.ObjsSetRot(0, 0.0, -1.2, 0.0)
		event.ObjsResetDaPosition(0)
		at = 35
		helper_0382f327(1100080, 30)
		at = 36
		wait_camera()
		event.CharaActive(0, 10)
		event.CmrsSetPos(321.15, 19.21, -54.94)
		event.CmrsSetRef(217.12, 28.4, -36.14)
		event.ObjsSetPos(1, 0.0, 250.0, 0.0)
		event.ObjsSetRot(1, 0.0, 1.81, 0.0)
		event.ObjsSetPos(2, 91.22, 150.0, -45.48)
		event.ObjsSetRot(2, 0.0, 1.57, 0.0)
		event.ObjsSetMotion(2, "浮遊２", 4)
		event.ObjsMove2(2, 91.22, 3.0, -45.48, 20, 2, 1.0)
		event.ObjsPosDelay(2, 10)
		event.ObjsMove2(2, 91.22, 50.0, -45.48, 30, 0, 0.5)
		event.ObjsSeDelay(2, 20)
		event.ObjsSePlay(2, var1, 28)
		at = 37
		helper_888ab2a3(30)
		event.ObjsJump(1, 0.0, 0.0, 0.0, -0.2, 20)
		event.ObjsSetMotion(1, "ジャンプ下降", 4)
		event.ObjsMotionDelay(1, 8)
		event.ObjsSetMotion(1, "着地", 2)
		event.ObjsNextMotion(1, "立ち2")
		at = 38
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "真上見立ち戻り", 6)
		event.ObjsNextMotion(0, "立ち2", 4)
		at = 39
		helper_888ab2a3(10)
		event.CmrsQuake(0.0, 6.0, 0.0, 20)
		at = 40
		wait_camera()
		at = 41
		helper_888ab2a3(25)
		event.CmrsSyncObj(1, 0.0, 80.0, 0.0, 1.97, -70.0, 253.0)
		event.CmrsMoveAhd(0.97, -70.0, 253.0, 120)
		event.CmrsReleaseObj()
		event.CharaActive(0, 0)
		event.CharaActive(0, 9)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(10, 128.0, 128.0, 128.0, 128.0, 30)
		at = 42
		helper_888ab2a3(60)
		at = 43
		wait_camera()
		event.SpriteSetDraw(0, 0)
		event.CmrsSetPos(171.04, 24.22, -17.77)
		event.CmrsSetRef(211.57, 16.11, -36.07)
		event.ObjsSetPos(1, -20.0, 0.0, 4.0)
		event.ObjsSetRot(1, 0.0, 1.81, 0.0)
		event.CharaActive(0)
		event.CharaActive(9)
		event.EohSyncChara(5, 1)
		event.EohSetShow(5, 1)
		event.EohSyncChara(6, 2)
		event.EohSetShow(6, 1)
		event.SndSePlay(var1, 29)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目・真剣")
		event.ObjsTexAnime(0, 1, "口・真剣")
		event.ObjsSetMotion(0, "戦闘ポーズ", 6)
		event.ObjsNextMotion(0, "戦闘ポーズL", 4)
		event.ObjsResetDaPosition(0)
		at = 44
		wait_objects(0)
		at = 45
		helper_888ab2a3(10)
		event.CmrsSetPos(113.39, 78.66, -47.55)
		event.CmrsSetRef(92.06, 84.16, -45.15)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "目・下")
		event.SetPakuAnim(2, "口パク")
		at = 46
		vm.wait(46)
		at = 47
		helper_4116e6bb(1100090)
		event.ResetPakuAnim()
		event.SetPakuAnim(2, "口パク")
		at = 48
		helper_4116e6bb(1100095)
		event.ResetPakuAnim()
		event.CmrsMove2(174.94, 68.68, -35.59, 91.81, 72.25, -43.36, 60, 0, 0.2)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "目パチ")
		event.EsmCreate_2("e110ポル回転キラ", 9)
		event.EsmSetVect1(60.0, 40.0, 60.0)
		event.ObjsSetMotion(2, "くるくる", 6)
		event.ObjsNextMotion(2, "くるくるL", 6)
		event.ObjsNextMotion(2, "決めポーズ", 6)
		event.ObjsNextMotion(2, "決めポーズL", 4)
		at = 49
		helper_888ab2a3(20)
		event.SndSePlay(var1, 30)
		event.SpriteSetDraw(1, 1)
		event.ObjsSetColor(11, 128.0, 128.0, 128.0, 128.0, 30)
		at = 50
		wait_objects(2)
		at = 51
		helper_888ab2a3(30)
		event.SpriteSetDraw(1, 0)
		event.CmrsSetPos(182.28, 10.76, -60.08)
		event.CmrsSetRef(217.66, 18.65, -32.62)
		event.EohSetMotion(0, "しつこいよ", 4)
		event.EohResetDaPosition(0)
		at = 52
		vm.wait(52)
		event.EohResetDaPosition(0)
		event.SetPakuAnim(0, "通常口パク", "口・真剣")
		at = 53
		helper_4116e6bb(1100100)
		event.ResetPakuAnim()
		event.SetPakuAnim(0, "通常口パク", "口・真剣")
		at = 54
		helper_4116e6bb(1100105)
		event.ResetPakuAnim()
		event.CmrsSetPos(169.83, 62.01, -47.58)
		event.CmrsSetRef(91.17, 73.27, -42.67)
		event.ObjsSetMotion(2, "ウッキー", 6)
		event.ObjsNextMotion(2, "ウッキーL", 4)
		event.SetPakuAnim(2, "口パク")
		at = 55
		helper_4116e6bb(1100110)
		event.ResetPakuAnim()
		at = 56
		wait_objects(2)
		event.ObjsSetMotion(2, "ウッキー会話", 6)
		event.ObjsNextMotion(2, "ウッキーL", 4)
		event.SetPakuAnim(2, "口パク")
		at = 57
		helper_4116e6bb(1100115)
		event.ResetPakuAnim()
		at = 58
		wait_objects(2)
		event.CmrsSetPos(255.11, 67.29, -41.86)
		event.CmrsSetRef(-34.43, 83.69, 6.75)
		event.ObjsMotionDelay(2, 10)
		event.ObjsSetMotion(2, "浮遊１")
		event.ObjsPosDelay(2, 10)
		event.ObjsMove2(2, 135.3, 50.0, 64.0, 60, 1, 0.4)
		event.ObjsRotDelay(2, 10)
		event.ObjsRotation(2, 0.0, 1.33, 0.0, 20)
		event.EsmCreate_2("e110ポル回転キラ", 9)
		event.EsmSetVect1(40.0, 20.0, 40.0)
		var7 = 0
		var8 = 0.0
		while var7 < 20 do
			at = 59
			vm.wait(59)
			do
				local out1, out2, out3 = event.GetCharaPos(9)
				var9 = out1 or var9
				var10 = out2 or var10
				var11 = out3 or var11
			end
			var8 = vm.f32(var8 + vm.f32(0.06))
			var10 = vm.f32(var10 + var8)
			event.SetCharaPos(9, var9, var10, var11)
			var7 = var7 + 1
		end
		var7 = 0
		while var7 < 14 do
			at = 60
			vm.wait(60)
			do
				local out1, out2, out3 = event.GetCharaPos(9)
				var12 = out1 or var12
				var13 = out2 or var13
				var14 = out3 or var14
			end
			var8 = vm.f32(var8 - vm.f32(0.06))
			var13 = vm.f32(var13 + var8)
			event.SetCharaPos(9, var12, var13, var14)
			var7 = var7 + 1
		end
		var7 = 0
		while var7 < 16 do
			at = 61
			vm.wait(61)
			do
				local out1, out2, out3 = event.GetCharaPos(9)
				var15 = out1 or var15
				var16 = out2 or var16
				var17 = out3 or var17
			end
			var16 = vm.f32(var16 + var8)
			event.SetCharaPos(9, var15, var16, var17)
			var7 = var7 + 1
		end
		var7 = 0
		while var7 < 30 do
			at = 62
			vm.wait(62)
			do
				local out1, out2, out3 = event.GetCharaPos(9)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			var8 = vm.f32(var8 + vm.f32(0.08))
			var19 = vm.f32(var19 + var8)
			event.SetCharaPos(9, var18, var19, var20)
			var7 = var7 + 1
		end
		event.ObjsMove(1, 109.46, 0.0, -18.38, 40)
		event.ObjsSetMotion(1, "歩き2")
		event.ObjsMotionDelay(1, 44)
		event.ObjsSetMotion(1, "立ち2")
		at = 63
		wait_objects(1)
		at = 64
		helper_888ab2a3(10)
		event.CmrsSetPos(440.6, 50.8, -73.0)
		event.CmrsSetRef(213.31, 59.72, -34.84)
		event.CharaActive(0, 9)
		at = 65
		helper_888ab2a3(30)
		event.FadeOutBgm(30)
		event.CmrsFadeInit()
		event.CmrsFadeOut(30)
		at = 66
		wait_camera()
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_fbd9683d(0, 7)
			helper_344d6cd8()
		end
		if at <= 2 then
			helper_038a2e4d(4)
		end
		if at <= 3 then
			helper_238b5abc(0)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_238b5abc(3)
		end
		if at <= 6 then
			helper_238b5abc(0)
		end
		if at <= 8 then
			helper_8cd371d7(1100010)
		end
		if at <= 9 then
			helper_238b5abc(0)
		end
		if at <= 10 then
			helper_344d6cd8()
		end
		if at <= 11 then
			helper_344d6cd8()
		end
		if at <= 12 then
			helper_038a2e4d(20)
		end
		if at <= 13 then
			helper_53ffe901(1100020, 80)
		end
		if at <= 14 then
			helper_238b5abc(0)
		end
		if at <= 15 then
			helper_238b5abc(0)
		end
		if at <= 16 then
			helper_53ffe901(1100030, 57)
		end
		if at <= 17 then
			helper_238b5abc(0)
		end
		if at <= 18 then
			helper_344d6cd8()
		end
		if at <= 19 then
			helper_038a2e4d(130)
		end
		if at <= 20 then
			helper_238b5abc(1)
		end
		if at <= 21 then
			helper_8cd371d7(1100040)
		end
		if at <= 22 then
			helper_8cd371d7(1100045)
		end
		if at <= 23 then
			helper_238b5abc(1)
		end
		if at <= 24 then
			helper_038a2e4d(10)
		end
		if at <= 25 then
			helper_8cd371d7(1100050)
		end
		if at <= 26 then
			helper_238b5abc(2)
		end
		if at <= 28 then
			helper_8cd371d7(1100060)
		end
		if at <= 30 then
			helper_8cd371d7(1100070)
		end
		if at <= 31 then
			helper_238b5abc(2)
		end
		if at <= 32 then
			helper_038a2e4d(30)
		end
		if at <= 33 then
			helper_038a2e4d(60)
		end
		if at <= 34 then
			helper_53ffe901(1100080, 30)
		end
		if at <= 35 then
			helper_344d6cd8()
		end
		if at <= 36 then
			helper_038a2e4d(30)
		end
		if at <= 37 then
			helper_038a2e4d(10)
		end
		if at <= 38 then
			helper_038a2e4d(10)
		end
		if at <= 39 then
			helper_344d6cd8()
		end
		if at <= 40 then
			helper_038a2e4d(25)
		end
		if at <= 41 then
			helper_038a2e4d(60)
		end
		if at <= 42 then
			helper_344d6cd8()
		end
		if at <= 43 then
			helper_238b5abc(0)
		end
		if at <= 44 then
			helper_038a2e4d(10)
		end
		if at <= 46 then
			helper_8cd371d7(1100090)
		end
		if at <= 47 then
			helper_8cd371d7(1100095)
		end
		if at <= 48 then
			helper_038a2e4d(20)
		end
		if at <= 49 then
			helper_238b5abc(2)
		end
		if at <= 50 then
			helper_038a2e4d(30)
		end
		if at <= 52 then
			helper_8cd371d7(1100100)
		end
		if at <= 53 then
			helper_8cd371d7(1100105)
		end
		if at <= 54 then
			helper_8cd371d7(1100110)
		end
		if at <= 55 then
			helper_238b5abc(2)
		end
		if at <= 56 then
			helper_8cd371d7(1100115)
		end
		if at <= 57 then
			helper_238b5abc(2)
		end
		if at <= 58 then
			var7 = 0
			var8 = 0.0
		end
		if at <= 59 then
			var8 = vm.f32(var8 + vm.f32(0.06))
			var10 = vm.f32(var10 + var8)
			local _ = var7 < 20
			var7 = var7 + 1
			var7 = 0
		end
		if at <= 60 then
			var8 = vm.f32(var8 - vm.f32(0.06))
			var13 = vm.f32(var13 + var8)
			local _ = var7 < 14
			var7 = var7 + 1
			var7 = 0
		end
		if at <= 61 then
			var16 = vm.f32(var16 + var8)
			local _ = var7 < 16
			var7 = var7 + 1
			var7 = 0
		end
		if at <= 62 then
			var8 = vm.f32(var8 + vm.f32(0.08))
			var19 = vm.f32(var19 + var8)
			local _ = var7 < 30
			var7 = var7 + 1
			helper_238b5abc(1)
		end
		if at <= 63 then
			helper_038a2e4d(10)
		end
		if at <= 64 then
			helper_038a2e4d(30)
		end
		if at <= 65 then
			helper_344d6cd8()
		end
		return true
	end)
	at = 67
	vm.entry(67)
	event.CancelDramaScene()
	event.LoadMes(0, -1)
	event.SndSeStop(var0, 0)
	event.SndSeStop(var1, 24)
	event.StopBgm(0)
	at = 68
	helper_888ab2a3(4)
	event.LoadBgm(30)
	event.PlayBgm(0)
	event.EohSyncChara(5, 1)
	event.EohSetShow(5, 1)
	event.EohSyncChara(6, 2)
	event.EohSetShow(6, 1)
	event.EohSetShow(7, 1)
	event.EohSetShow(8, 1)
	event.CmrsInit()
	event.ObjsInit(0)
	event.ObjsInit(1)
	event.ObjsInit(2)
	event.ObjsInit(3)
	event.ObjsInit(4)
	event.EohSyncObj_3(3, "p02_d01b01", "d01b01_9-m0")
	event.EohSetPos(3, 0.0, 0.0, 0.0)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.EsmClear()
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DelImg(0)
	event.CharaActive(0)
	event.SetMotion(0, "バトル立ち", 4)
	event.SetCharaPos(0, 213.76, 0.0, -35.13)
	event.SetCharaRot(0, 0.0, -1.36, 0.0)
	event.EohResetDaPosition(0)
	event.SetCameraRef(213.76, 30.0, -35.13)
	event.SetCameraPos(340.88, 35.0, -62.33)
	event.ResetCamera(0)
	event.AssignStack(3)
	event.ClearStack(3)
	at = 69
	vm.wait(69)
	var21 = event.GetE3Version() or var21
	if var21 == 1 then
		event.LoadMonsterFile(1000, 1)
		event.LoadMonsterFile(500, 0)
	else
		event.LoadMonsterFile(25, 1)
		event.LoadMonsterFile(1000, 0)
		event.LoadMonsterFile(500, 0)
	end
	event.AutoSetMonster(500, 0, 0, 0, 0.0, 1.71, 0.0)
	at = 70
	vm.wait(70)
	event.DngPause(1, 1)
	event.SetFadeIn(20)
	at = 71
	helper_888ab2a3(20)
	event.SetMesPreset(0, 4)
	set_window_mode(0, 4)
	event.SetMesDrawspeed(0, 1)
	if language_code == 0 then
		event.MesMake_2(
			0,
			"[(!)]敵の出す「鼻爆弾」をつかんで、\nタイミングよく敵にぶつけよう。<page>「鼻爆弾」をつかむには、\n近くによって[r1]＋(O)ボタンでＯＫだ。<page>つかんだ状態で(O)ボタンを押すと投げることができる。\nうまくぶつけて、敵にダメージを与えるのだ！"
		)
	else
		event.MesMake_2(
			0,
			"[(!)]Grab the enemy's 'RoBomb'\n   and throw it toward him.<page>To grab the 'RoBomb',\nhold down [r1] button & press (O) button\nnear the bomb.<page>To throw, press (O) button.\nLet him have it!"
		)
	end
	at = 72
	helper_75684dd8(0, -1, 8, 0, 0)
	set_window_mode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.SetMesEtc(0, 2, -1.0)
	event.DngPause(1, 0)
	event.SetStatusbarShow(1)
	event.Finish()
end

--- Helper function.
local function helper_102d4()
	local var0: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		event.SetStatusbarShow(0, 1.0)
		var0 = event.SndLoadSound_3(8, "snd2/sp/sp_030.sound.json") or var0
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 1006.26, -27.71, -200.0)
		event.ObjsSetRot(0, 0.0, -1.32, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.EohSyncObj_3(2, "p02_d01b01", "d01b01_9-m0")
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ObjsSetPos(2, 0.0, 0.0, 0.0)
		event.EohSyncObj_3(3, "p01_d01b01", "d01b01_2-a")
		event.EohSetShow(3, 0)
		event.ObjsMove(2, 0.0, 80.0, 0.0, 60)
		event.ObjsJump(2, 0.0, 0.0, 0.0, -0.2, 10)
		event.ObjsJump(2, 0.0, 0.0, 0.0, -0.8, 8)
		event.ObjsJump(2, 0.0, 0.0, 0.0, -0.4, 5)
		event.SndSePlay(var0, 1)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(800.55, 83.98, -20.2)
		event.CmrsSetRef(868.65, 40.42, -105.22)
		event.CmrsFadeInit()
		event.CmrsFadeIn(30)
		wait_camera()
		helper_888ab2a3(4)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, 962.88, -27.71, -191.57, 15)
		event.ObjsMove(0, 928.6, -49.72, -185.79, 15)
		event.ObjsMove(0, 904.87, -49.72, -180.71, 10)
		wait_objects(2)
		wait_objects(0)
		event.SetStatusbarShow(1)
		helper_888ab2a3(20)
		event.CmrsSetPos(969.7, -14.72, -202.32)
		event.CmrsSetRef(817.46, -19.72, -153.11)
		event.ObjsSetPos(0, 880.95, -49.72, -173.03)
		event.ObjsSetRot(0, 0.0, -1.32, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, 840.81, -49.72, -161.41, 30)
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		helper_888ab2a3(4)
	end)
	vm.entry(9)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.SetStatusbarShow(1, 1.0)
	event.SetCharaPos(0, 840.81, -49.72, -161.41)
	event.SetCharaRot(0, 0.0, -1.32, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.EohResetDaPosition(0)
	event.EohSyncObj_3(2, "p02_d01b01", "d01b01_9-m0")
	event.EohSetPos(2, 0.0, 0.0, 0.0)
	event.SetCameraPos(969.7, -14.72, -202.32)
	event.SetCameraRef(817.46, -19.72, -153.11)
	event.ResetCamera(0)
	event.SetFadeIn(0)
	event.Finish()
end

--- Helper function.
local function helper_18d3c()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local var4: s32 = 0
	local language_code: s32 = 0
	local var6: s32 = 0
	local at: number = 0
	do
		local ret = vm.section(function()
			event.SetFlag(111, 1)
			event.Initialize()
			event.SetStatusbarShow(0, 0.033333335)
			active_chr_no = event.GetActiveChrNo() or active_chr_no
			if active_chr_no == 2 then
				var1 = event.GetRoboMoveType() or var1
				if var1 == 1 then
					event.SetMotion(0, "立ち-足")
				end
				if var1 == 2 then
					event.SetMotion(0, "立ち-キャタピラ")
				end
			else
				event.SetMotion(0, "バトル立ち")
			end
			var2 = event.GetTrialVersion() or var2
			if var2 == 1 then
				event.FadeOutBgm(30)
			end
			event.SetFadeOut(30)
			at = 1
			helper_888ab2a3(30)
			if active_chr_no == 2 then
				event.DngSetupMainUnit(0)
				event.SetActiveChrNo(0)
			end
			event.ChangeDir("event/e100/e111/")
			event.SetLoadbgFile_9(
				"e111_mints.gltf",
				"e111_Halloween.gltf",
				"e111_polcurse.gltf",
				"e111_pierrot.gltf",
				"e111baku.gltf",
				"e111pikipiki.gltf",
				"e111_hahen01.gltf",
				"e111_hahen02.gltf",
				"e111.txt"
			)
			event.SndSeAllStop(7)
			event.DngPause(17, 1)
			var4 = event.GetTrialVersion() or var4
			if var4 == 1 then
				event.AssignStack(5)
				event.ClearStack(5)
				event.CharaActive(0, 0)
				at = 2
				helper_479dc9e9()
				event.LoadChara(5, "e111_Halloween.gltf", "info", 9)
				event.CharaActive(9)
				event.EohSyncChara(1, 9)
				event.ObjsInit(1)
				event.ObjsSyncObj(1, 1)
				event.ObjsSetPos(1, 0.0, 0.0, 0.0)
				event.ObjsSetRot(1, 0.0, 1.8, 0.0)
				event.ObjsSetMotion(1, "立ち", 4)
				event.LoadChara(5, "e111pikipiki.gltf", "info", 13)
				event.CharaActive(0, 13)
				event.SetCharaPos(13, 0.0, 0.0, 0.0)
				event.SetCharaRot(13, 0.0, 1.8, 0.0)
				event.LoadChara(5, "e111baku.gltf", "info", 14)
				event.CharaActive(0, 14)
				event.SetCharaPos(14, 0.0, 0.0, 0.0)
				event.SetCharaRot(14, 0.0, 1.8, 0.0)
				event.SetMotion(14, "爆発", 5)
				event.SetCurrentDir("")
				var3 = event.SndLoadSound_2(1831) or var3
				event.ObjsSetMotion(1, "倒れ", 6)
				event.ObjsMotionWait(1)
				event.CmrsInit()
				event.CmrsSetPos(229.93, 23.29, -84.91)
				event.CmrsSetRef(-23.55, 60.99, 1.2)
				event.CmrsFadeInit()
				event.CmrsFadeIn(30)
				at = 3
				wait_camera()
				at = 4
				helper_888ab2a3(12)
				event.SndSePlay(var3, 18)
				at = 5
				wait_objects(1)
				event.CharaActive(13)
				event.ObjsSePlay(1, var3, 31)
				event.ObjsSeDelay(1, 20)
				event.ObjsSePlay(1, var3, 32)
				event.ObjsSeDelay(1, 8)
				event.ObjsSePlay(1, var3, 31)
				at = 6
				helper_888ab2a3(30)
				event.CharaActive(14)
				event.SetMotion(14, "爆発", 6)
				at = 7
				helper_888ab2a3(10)
				event.SndSePlay(var3, 33)
				at = 8
				helper_888ab2a3(45)
				event.FadeOutBgm(90)
				event.SetFadeOut(30)
				at = 9
				helper_888ab2a3(30)
				at = 10
				helper_888ab2a3(60)
				event.SndSeStop(var3, 31)
				event.SndSeStop(var3, 32)
				event.SndSeStop(var3, 33)
				event.CharaActive(0)
				event.SetExitFlag(1)
				return table.pack()
			end
			event.StopBgm(0)
			set_window_mode(0, 7)
			event.AssignStack(5)
			event.ClearStack(5)
			at = 11
			helper_479dc9e9()
			language_code = event.GetLanguage() or language_code
			if language_code == 0 then
				event.LoadMes(0, 5, "e111.txt")
			else
				event.LoadMes(0, 5, "eng_e111.txt")
			end
			event.LoadMotion(5, "e111_mints.gltf", "info", 0)
			event.SetCharaPos(0, 202.87, 0.0, -74.61)
			event.SetCharaRot(0, 0.0, -1.2, 0.0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.EohSetFootSoundId(0, 2)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.ObjsSetPos(0, 202.87, 0.0, -74.61)
			event.ObjsSetRot(0, 0.0, -1.2, 0.0)
			event.ObjsSetMotion(0, "旧・立ち", 4, -1, 1)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目パチ")
			event.LoadChara(5, "e111_Halloween.gltf", "info", 9)
			event.CharaActive(9)
			event.EohSyncChara(1, 9)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.ObjsSetPos(1, 0.0, 0.0, 0.0)
			event.ObjsSetRot(1, 0.0, 1.8, 0.0)
			event.ObjsSetMotion(1, "立ち", 4)
			event.LoadChara(5, "e111_polcurse.gltf", "info", 10)
			event.CharaActive(10)
			event.EohSyncChara(2, 10)
			event.ObjsInit(2)
			event.ObjsSyncObj(2, 2)
			event.ObjsSetPos(2, 0.0, 170.0, 0.0)
			event.ObjsSetRot(2, 0.0, 1.8, 0.0)
			event.ObjsSetMotion(2, "浮遊２", 4)
			event.ObjsTexAnime(2, 0)
			event.ObjsTexAnime(2, 1, "目・こまり")
			event.ObjsTexAnime(2, 1, "口・こまり")
			event.LoadChara(5, "e111_pierrot.gltf", "info", 11)
			event.CharaActive(0, 11)
			event.EohSyncChara(3, 11)
			event.ObjsInit(3)
			event.ObjsSyncObj(3, 3)
			event.ObjsSetPos(3, 0.0, 0.0, 0.0)
			event.ObjsSetRot(3, 0.0, 0.0, 0.0)
			event.ObjsSetMotion(3, "立ち", 4)
			event.CopyChara(5, 11, 12)
			event.CharaActive(0, 12)
			event.EohSyncChara(4, 12)
			event.ObjsInit(4)
			event.ObjsSyncObj(4, 4)
			event.ObjsSetPos(4, 0.0, 0.0, 0.0)
			event.ObjsSetRot(4, 0.0, 0.0, 0.0)
			event.ObjsSetMotion(4, "立ち", 4)
			event.LoadChara(5, "e111pikipiki.gltf", "info", 13)
			event.CharaActive(0, 13)
			event.SetCharaPos(13, 0.0, 0.0, 0.0)
			event.SetCharaRot(13, 0.0, 1.8, 0.0)
			event.LoadChara(5, "e111baku.gltf", "info", 14)
			event.CharaActive(0, 14)
			event.SetCharaPos(14, 0.0, 0.0, 0.0)
			event.SetCharaRot(14, 0.0, 1.8, 0.0)
			event.SetMotion(14, "爆発", 5)
			event.LoadChara(5, "e111_hahen01.gltf", "info", 15)
			event.CharaActive(0, 15)
			event.SetCharaPos(15, 0.0, 0.0, 0.0)
			event.SetCharaRot(15, 0.0, 1.0, 0.0)
			event.EohSyncChara(7, 15)
			event.ObjsInit(7)
			event.ObjsSyncObj(7, 7)
			event.CopyChara(5, 15, 16)
			event.CharaActive(0, 16)
			event.SetCharaPos(16, 0.0, 0.0, 0.0)
			event.SetCharaRot(16, 0.0, 3.0, 0.0)
			event.EohSyncChara(8, 16)
			event.ObjsInit(8)
			event.ObjsSyncObj(8, 8)
			event.LoadChara(5, "e111_hahen02.gltf", "info", 17)
			event.CharaActive(0, 17)
			event.SetCharaPos(17, 0.0, 0.0, 0.0)
			event.SetCharaRot(17, 0.0, 0.0, 0.0)
			event.EohSyncChara(9, 17)
			event.ObjsInit(9)
			event.ObjsSyncObj(9, 9)
			event.SetCurrentDir("")
			var3 = event.SndLoadSound_2(1831) or var3
			event.EohSetSoundId(2, var3)
			event.EohSetSoundId(3, var3)
			event.EohSetSoundId(4, var3)
			event.EohSetSoundId(7, -1)
			event.EohSetSoundId(8, -1)
			event.EohSetSoundId(9, -1)
			event.EohSyncChara(5, 1)
			event.EohSetShow(5, 0)
			event.EohSyncChara(6, 2)
			event.EohSetShow(6, 0)
			event.ObjsSetMotion(1, "倒れ", 6)
			event.ObjsMotionWait(1)
			event.InitDramaScene()
			event.CmrsInit()
			event.CmrsSetPos(315.53, 60.49, -68.59)
			event.CmrsSetRef(-19.71, 69.17, 0.25)
			event.CmrsFadeInit()
			event.CmrsFadeIn(30)
			at = 12
			wait_camera()
			at = 13
			helper_888ab2a3(12)
			event.SndSePlay(var3, 18)
			at = 14
			wait_objects(1)
			event.CharaActive(13)
			event.ObjsSePlay(1, var3, 31)
			event.ObjsSeDelay(1, 20)
			event.ObjsSePlay(1, var3, 32)
			event.ObjsSeDelay(1, 8)
			event.ObjsSePlay(1, var3, 31)
			at = 15
			helper_888ab2a3(30)
			event.CmrsSetPos(44.03, 197.99, -10.5)
			event.CmrsSetRef(0.02, 199.41, -0.53)
			event.ObjsSetMotion(2, "両手広げる", 6)
			event.ObjsNextMotion(2, "両手広げるL", 4)
			event.EohSetTexAnim(2, 0, "口・こまり")
			event.SetPakuAnim(2, "口パク２", "口・こまり")
			at = 16
			helper_4116e6bb(1110010)
			event.ResetPakuAnim()
			at = 17
			wait_objects(2)
			event.CmrsSetPos(238.32, 116.37, -106.27)
			event.CmrsSetRef(-6.37, 50.07, -17.02)
			event.ObjsSetPos(2, 0.0, 0.0, 0.0)
			event.ObjsSetRot(2, 0.0, 1.8, 0.0)
			event.ObjsSetMotion(2, "抱き着き", 6)
			event.ObjsNextMotion(2, "抱き着きL", 4)
			event.EohSetTexAnim(2, 0, "口・こまり")
			event.SetPakuAnim(2, "口パク２", "口・こまり")
			at = 18
			helper_4116e6bb(1110020)
			event.ResetPakuAnim()
			at = 19
			wait_objects(2)
			event.CmrsSetPos(230.72, 15.98, -98.52)
			event.CmrsSetRef(28.12, 61.49, 12.32)
			event.CharaActive(0)
			event.CharaActive(14)
			event.SetMotion(14, "爆発", 6)
			event.StreamOpen3(1, 1110025)
			at = 20
			helper_888ab2a3(4)
			event.SndSePlay(var3, 33)
			at = 21
			var6 = helper_f616ba9e(1)
			event.StreamPlay(1)
			at = 22
			helper_888ab2a3(vm.i32(16 - var6))
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・フクザツ")
			event.ObjsTexAnime(0, 1, "口・フクザツ")
			event.ObjsSetMotion(0, "爆発", 6)
			event.ObjsNextMotion(0, "爆発L", 4)
			at = 23
			helper_888ab2a3(60)
			event.StreamClose(1)
			event.CmrsSetPos(224.0, 20.06, -43.69)
			event.CmrsSetRef(253.55, 21.35, -49.32)
			event.ObjsSetPos(0, 250.0, 0.0, -50.0)
			event.ObjsSetRot(0, 0.0, -1.32, 0.0)
			event.ObjsResetMotion(0)
			event.ObjsSetMotion(0, "爆発L", 4, -1.0, 1)
			event.ObjsResetDaPosition(0)
			event.CharaActive(0, 9)
			event.CharaActive(0, 10)
			event.CharaActive(0, 13)
			event.CharaActive(0, 14)
			event.CharaActive(1, 15)
			event.CharaActive(1, 16)
			event.CharaActive(1, 17)
			at = 24
			helper_888ab2a3(40)
			event.ObjsResetMotion(7)
			event.ObjsSetMotion(7, "破片", 6)
			at = 25
			helper_888ab2a3(5)
			event.ObjsResetMotion(8)
			event.ObjsSetMotion(8, "破片", 6)
			event.ObjsResetMotion(9)
			event.ObjsSetMotion(9, "破片", 6)
			at = 26
			helper_888ab2a3(15)
			event.CmrsSetPos(47.2, 92.89, -142.19)
			event.CmrsSetRef(85.43, 16.34, 45.38)
			event.ObjsSetPos(7, -22.38, 0.0, -1.68)
			event.ObjsSetPos(8, -5.05, 0.0, -21.05)
			event.ObjsSetPos(9, -0.08, 0.0, -45.14)
			event.ObjsTexAnime(2, 0)
			event.ObjsTexAnime(2, 1, "目・閉じ")
			event.ObjsTexAnime(2, 1, "口・こまり")
			event.CharaActive(10)
			event.SetCharaShow(10, 1)
			event.ObjsSetRot(2, 0.0, -2.08, 0.0)
			event.ObjsMove2(2, 84.29, 0.0, 53.13, 40, 2, 0.2)
			event.ObjsSetMotion(2, "倒れる", 6)
			event.ObjsNextMotion(2, "倒れるL", 4)
			event.ObjsMove(7, 221.23, 0.0, 41.5, 80)
			at = 27
			helper_888ab2a3(5)
			event.ObjsMove(8, 31.26, 0.0, 224.79, 68)
			event.ObjsMove(9, 85.17, 0.0, 135.16, 60)
			at = 28
			helper_888ab2a3(2)
			event.SndSePlay(var3, 37)
			at = 29
			wait_objects(2)
			at = 30
			helper_888ab2a3(30)
			event.CmrsSetPos(198.72, 10.01, -8.33)
			event.CmrsSetRef(245.11, 19.47, -50.58)
			event.ObjsSetMotion(0, "ポルカスに近づく")
			event.ObjsChengeStep(0, 0.04)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・真剣")
			event.ObjsTexAnime(0, 1, "口・フクザツ")
			at = 31
			helper_888ab2a3(20)
			event.ObjsMove2(0, 218.58, 0.0, -35.53, 40, 1, 0.4)
			at = 32
			helper_888ab2a3(47)
			event.CmrsSetPos(109.18, 34.69, -86.0)
			event.CmrsSetRef(83.61, 7.22, 47.83)
			event.ObjsSetPos(0, 71.02, 0.0, -22.65)
			event.ObjsSetRot(0, 0.0, 0.36, 0.0)
			event.ObjsMove(0, 77.52, 0.0, 8.58, 50)
			event.ObjsResetMotion(0)
			event.ObjsSetMotion(0, "ポルカスに近づく", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "振り向く", 6)
			event.ObjsNextMotion(0, "振り向くL", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexaDelay(0, 30)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・振り向き")
			event.ObjsTexAnime(0, 1, "口・フクザツ")
			at = 33
			helper_888ab2a3(40)
			at = 34
			helper_4116e6bb(1110038)
			event.EohSetTexAnim(0, 0, "口・フクザツ")
			event.SetPakuAnim(0, "通常口パク", "口・フクザツ")
			at = 35
			helper_4116e6bb(1110040)
			event.ResetPakuAnim()
			event.CmrsSetPos(204.37, 31.72, 9.99)
			event.CmrsSetRef(264.2, 27.01, -5.8)
			event.CharaActive(11)
			event.CharaActive(12)
			event.ObjsSetPos(3, 375.73, 0.0, -22.37)
			event.ObjsSetRot(3, 0.0, -1.32, 0.0)
			event.ObjsMove(3, 224.72, 0.0, 9.78, 30)
			event.ObjsSetMotion(3, "走り", 4)
			event.ObjsSetPos(4, 436.56, 0.0, -64.46)
			event.ObjsSetRot(4, 0.0, -1.32, 0.0)
			event.ObjsMove(4, 268.47, 0.0, -20.1, 30)
			event.ObjsSetMotion(4, "走り", 4)
			event.ObjsSetMotionNowTime(4, 5.7)
			at = 36
			wait_objects(3)
			event.CmrsSetPos(80.24, 21.69, -11.79)
			event.CmrsSetRef(80.02, 22.6, 6.87)
			event.EohSetTexAnim(0, 0, "口・フクザツ")
			event.SetPakuAnim(0, "通常口パク", "口・フクザツ")
			at = 37
			helper_0382f327(1110050, -1)
			event.ResetPakuAnim()
			event.CmrsSetPos(169.2, 49.46, -43.53)
			event.CmrsSetRef(78.35, 3.24, 42.02)
			event.ObjsSetMotion(0, "こける", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "こけるL", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・ビックリ")
			event.ObjsTexAnime(0, 1, "口・ビックリ")
			event.ObjsSetPos(3, 139.55, 0.0, -50.54)
			event.ObjsSetRot(3, 0.0, -0.24, 0.0)
			event.ObjsMove(3, 112.86, 0.0, 70.42, 30)
			event.ObjsRotDelay(3, 20)
			event.ObjsRotation(3, 0.0, -2.16, 0.0, 10)
			event.ObjsMotionDelay(3, 30)
			event.ObjsSetMotion(3, "立ち")
			event.ObjsSetPos(4, 41.41, 0.0, -20.18)
			event.ObjsSetRot(4, 0.0, 0.24, 0.0)
			event.ObjsMove(4, 68.8, 0.0, 44.59, 30)
			event.ObjsRotDelay(4, 20)
			event.ObjsRotation(4, 0.0, 1.08, 0.0, 10)
			event.ObjsMotionDelay(4, 30)
			event.ObjsSetMotion(4, "立ち")
			event.StreamOpen3(1, 1110055)
			at = 38
			helper_9cbdc640(1)
			event.StreamPlay(1)
			at = 39
			wait_objects(3)
			at = 40
			wait_objects(4)
			at = 41
			helper_888ab2a3(2)
			event.ObjsSetMotion(2, "持ち上げ", 6)
			event.ObjsSetMotion(3, "頭持ち上げ", 6)
			event.ObjsSetMotion(4, "足持ち上げ", 6)
			at = 42
			helper_888ab2a3(78)
			event.StreamClose(1)
			event.ObjsSetMotion(0, "見送る", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "見送るL", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目パチ")
			event.ObjsTexAnime(0, 1, "口・フクザツ")
			event.ObjsSetMotion(2, "運ばれる")
			event.ObjsSetMotion(3, "頭持ち歩きL")
			event.ObjsSetMotion(4, "足持ち歩き")
			event.ObjsMove2(2, 140.22, 0.0, -53.49, 60, 1, 0.1)
			event.ObjsMove2(3, 174.0, 0.0, -35.88, 60, 1, 0.1)
			event.ObjsMove2(4, 128.99, 0.0, -59.89, 60, 1, 0.1)
			at = 43
			helper_0382f327(1110075, 60)
			at = 44
			wait_objects(2)
			event.CmrsSetPos(12.04, 19.34, -2.84)
			event.CmrsSetRef(163.83, 7.62, -48.59)
			event.ObjsSetPos(0, 71.02, 0.0, -22.65)
			event.ObjsSetRot(0, 0.0, -1.08, 0.0)
			event.ObjsResetDaPosition(0)
			event.ObjsSetPos(2, 233.65, 0.0, -50.46)
			event.ObjsSetRot(2, 0.0, -2.92, 0.0)
			event.ObjsSetPos(3, 241.55, 0.0, -12.36)
			event.ObjsSetRot(3, 0.0, -3.0, 0.0)
			event.ObjsSetPos(4, 230.89, 0.0, -63.54)
			event.ObjsSetRot(4, 0.0, 0.24, 0.0)
			event.ObjsMove(2, 671.22, 0.0, -131.94, 160)
			event.ObjsMove(3, 678.84, 0.0, -94.13, 160)
			event.ObjsMove(4, 668.34, 0.0, -144.99, 160)
			at = 45
			helper_0382f327(1110075, 60)
			event.EohSetTexAnim(0, 0, "口・フクザツ")
			event.SetPakuAnim(0, "通常口パク", "口・フクザツ")
			at = 46
			helper_0382f327(1110080, 90)
			event.ResetPakuAnim()
			at = 47
			wait_objects(2)
			event.CharaActive(0, 10)
			event.CharaActive(0, 11)
			event.CharaActive(0, 12)
			event.CmrsSetPos(115.02, 23.5, 34.8)
			event.CmrsSetRef(83.65, 15.41, -18.49)
			event.ObjsSetPos(0, 83.74, 0.0, -19.9)
			event.ObjsSetRot(0, 0.0, 0.84, 0.0)
			event.ObjsSetMotion(0, "立ちあがる", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "ため息", 6)
			event.ObjsNextMotion(0, "旧・立ち", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexaDelay(0, 34)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目パチ")
			event.ObjsTexAnime(0, 1, "口・ため息")
			event.StreamOpen3(1, 1110085)
			at = 48
			helper_9cbdc640(1)
			event.StreamPlay(1)
			at = 49
			helper_888ab2a3(34)
			event.StreamClose(1)
			at = 50
			helper_4116e6bb(1110090)
			at = 51
			wait_objects(0)
			event.CmrsSetPos(157.76, 23.5, -3.06)
			event.CmrsSetRef(61.27, 16.36, -2.61)
			event.ObjsSetRot(0, 0.0, -1.32, 0.0)
			event.ObjsSetMotion(0, "振り返る", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "旧・立ち", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・真剣")
			event.ObjsTexAnime(0, 1, "口・真剣")
			at = 52
			wait_objects(0)
			at = 53
			helper_888ab2a3(30)
			event.CmrsSetPos(-430.32, 64.84, 57.91)
			event.CmrsSetRef(-921.56, 67.83, 181.76)
			event.CmrsMove(-526.57, 64.84, 82.17, -921.56, 67.83, 181.76, 120)
			at = 54
			wait_camera()
			event.CmrsSetPos(58.55, 16.4, 0.48)
			event.CmrsSetRef(82.64, 21.24, -20.55)
			event.EohSetTexAnim(0, 0, "口・真剣")
			event.SetPakuAnim(0, "通常口パク", "口・真剣")
			at = 55
			helper_4116e6bb(1110100)
			event.ResetPakuAnim()
			event.SetCrossfade(60)
			event.CmrsSetPos(69.71, 21.68, -9.26)
			event.CmrsSetRef(82.64, 24.57, -20.55)
			at = 56
			helper_888ab2a3(120)
			event.CmrsFadeInit()
			event.CmrsFadeOut(30)
			at = 57
			wait_camera()
			return nil
		end, function(received: { any }): boolean
			if at <= 10 then
				return false
			end
			if at == 21 then
				var6 = received[1] :: number
			end
			if at <= 11 then
				helper_344d6cd8()
			end
			if at <= 12 then
				helper_038a2e4d(12)
			end
			if at <= 13 then
				helper_238b5abc(1)
			end
			if at <= 14 then
				helper_038a2e4d(30)
			end
			if at <= 15 then
				helper_8cd371d7(1110010)
			end
			if at <= 16 then
				helper_238b5abc(2)
			end
			if at <= 17 then
				helper_8cd371d7(1110020)
			end
			if at <= 18 then
				helper_238b5abc(2)
			end
			if at <= 19 then
				helper_038a2e4d(4)
			end
			if at <= 20 then
				var6 = helper_523109b8(1)
			end
			if at <= 21 then
				helper_038a2e4d(vm.i32(16 - var6))
			end
			if at <= 22 then
				helper_038a2e4d(60)
			end
			if at <= 23 then
				helper_038a2e4d(40)
			end
			if at <= 24 then
				helper_038a2e4d(5)
			end
			if at <= 25 then
				helper_038a2e4d(15)
			end
			if at <= 26 then
				helper_038a2e4d(5)
			end
			if at <= 27 then
				helper_038a2e4d(2)
			end
			if at <= 28 then
				helper_238b5abc(2)
			end
			if at <= 29 then
				helper_038a2e4d(30)
			end
			if at <= 30 then
				helper_038a2e4d(20)
			end
			if at <= 31 then
				helper_038a2e4d(47)
			end
			if at <= 32 then
				helper_038a2e4d(40)
			end
			if at <= 33 then
				helper_8cd371d7(1110038)
			end
			if at <= 34 then
				helper_8cd371d7(1110040)
			end
			if at <= 35 then
				helper_238b5abc(3)
			end
			if at <= 36 then
				helper_53ffe901(1110050, -1)
			end
			if at <= 37 then
				helper_238b5abc(1)
			end
			if at <= 38 then
				helper_238b5abc(3)
			end
			if at <= 39 then
				helper_238b5abc(4)
			end
			if at <= 40 then
				helper_038a2e4d(2)
			end
			if at <= 41 then
				helper_038a2e4d(78)
			end
			if at <= 42 then
				helper_53ffe901(1110075, 60)
			end
			if at <= 43 then
				helper_238b5abc(2)
			end
			if at <= 44 then
				helper_53ffe901(1110075, 60)
			end
			if at <= 45 then
				helper_53ffe901(1110080, 90)
			end
			if at <= 46 then
				helper_238b5abc(2)
			end
			if at <= 47 then
				helper_238b5abc(1)
			end
			if at <= 48 then
				helper_038a2e4d(34)
			end
			if at <= 49 then
				helper_8cd371d7(1110090)
			end
			if at <= 50 then
				helper_238b5abc(0)
			end
			if at <= 51 then
				helper_238b5abc(0)
			end
			if at <= 52 then
				helper_038a2e4d(30)
			end
			if at <= 53 then
				helper_344d6cd8()
			end
			if at <= 54 then
				helper_8cd371d7(1110100)
			end
			if at <= 55 then
				helper_038a2e4d(120)
			end
			if at <= 56 then
				helper_344d6cd8()
			end
			return true
		end)
		if ret ~= nil then
			return
		end
	end
	event.CancelDramaScene()
	event.LoadMes(0, -1)
	event.DelMonster(-1)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, -1)
	event.EohSyncChara(5, 1)
	event.EohSetShow(5, 1)
	event.EohSyncChara(6, 2)
	event.EohSetShow(6, 1)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.CharaActive(0)
	event.SetCharaPos(0, 83.74, 0.0, -19.9)
	event.SetCharaRot(0, 0.0, -1.32, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ActchrSetDefMotion(0)
	event.SetCameraPos(209.67, 35.0, -52.16)
	event.SetCameraRef(83.74, 30.0, -19.9)
	event.ResetCamera(0)
	event.LoadSound(1683)
	event.SetStatusbarShow(1)
	event.SetFadeIn(30)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_112f8

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local flag: s32 = 0
	local at: number = 0
	return vm.guard(function()
		helper_f432ac2a()
		flag = event.GetFlag(10) or flag
		if flag == 0 then
			event.SetFlag(10, 1)
			event.FuncPointShow("", "door01", 0)
			event.EohSyncObj_3(0, "p01_d01b01", "d01b01_2-a")
			event.EohSetShow(0, 1)
			event.SetBitCtrl(1, 1)
			at = 1
			helper_112f8()
		else
			at = 2
			helper_102d4()
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_102d4()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local var0: any = 0
	local stage_id: s32 = 0
	local var2: s32 = 0
	local argc: s32 = 0
	local var5: s32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesQuestionGyou(0, 0)
	set_window_mode(0, 5)
	event.SetMesDrawspeed(0, 1)
	var0 = helper_bac0e30d(0, 10, 8, 256, 208, 2, 1)
	set_window_mode(0, 1)
	event.SetMesDrawspeed(0, 0)
	if var0 == 0 then
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		stage_id = event.DngGetStageId() or stage_id
		var2 = event.DngGetFloorId() or var2
		argc = event.GetNextFloor(var2, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var2, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		var5 = event.GetTrialVersion() or var5
		if var5 == 1 then
			event.SetExitFlag(1)
			return
		else
			event.LoadScript("d01/d01.stb", 1000)
		end
	else
		var0 = 1
	end
	event.Finish()
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	local var0: s32 = 0
	var0 = event.GetTrialVersion() or var0
	if var0 ~= 1 then
		event.FuncPointShow("", "door01", 1)
		event.EohSyncObj_3(0, "p01_d01b01", "d01b01_2-a")
		event.EohSetShow(0, 0)
	end
	event.SetBitCtrl(1, 0)
	helper_18d3c()
end

--- Event 530, which map data, a script or the engine runs by number.
function script.event_530()
	local language_code: s32 = 0
	event.Initialize()
	event.DngPause(3, 1)
	event.SetMesPreset(0, 4)
	set_window_mode(0, 4)
	event.SetMesDrawspeed(0, 1)
	language_code = event.GetLanguage() or language_code
	if language_code == 0 then
		event.MesMake_2(0, "今だ！　頭をねらえ！")
	else
		event.MesMake_2(0, "Hit his head now!")
	end
	helper_75684dd8(0, -1, 5, 0, 0)
	set_window_mode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(3, 0)
	event.Finish()
end

--- Event 540, which map data, a script or the engine runs by number.
function script.event_540()
	local language_code: s32 = 0
	event.Initialize()
	event.DngPause(3, 1)
	event.SetMesPreset(0, 4)
	set_window_mode(0, 4)
	event.SetMesDrawspeed(0, 1)
	language_code = event.GetLanguage() or language_code
	if language_code == 0 then
		event.MesMake_2(0, "[r1]と(O)ボタンで、鼻爆弾を持ち上げろ。")
	else
		event.MesMake_2(0, "Lift the 'RoBomb' by\nholding down [r1] button & pressing (O) button.")
	end
	helper_75684dd8(0, -1, 5, 0, 0)
	set_window_mode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(3, 0)
	event.Finish()
end

--- Event 600, which map data, a script or the engine runs by number.
script.event_600 = helper_18d3c

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- Event 21020, which map data, a script or the engine runs by number.
function script.event_21020()
	event.Initialize()
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(30)
	event.CharaActive(0)
	event.SetMotion(0, "バトル立ち", 4)
	event.SetCharaPos(0, 213.76, 0.0, -35.13)
	event.SetCharaRot(0, 0.0, -1.36, 0.0)
	event.EohResetDaPosition(0)
	event.LoadMonsterFile(25, 1)
	event.LoadMonsterFile(1000, 0)
	event.LoadMonsterFile(500, 0)
	event.AutoSetMonster(500, 0, 0, 0, 0.0, 1.71, 0.0)
	event.SetFadeIn(30)
	event.DngPause(1, 0)
	event.Finish()
end

return script
