--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0e75aa9e = require("@lib/event/helper_0e75aa9e")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_2f8c501c = require("@lib/event/helper_2f8c501c")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_828a2144()
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
		wait_frames(4)
		event.LoadBgm(113)
		event.LoadSound(5820)
		var1 = event.SndLoadSound_2(5820) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e500/e532/")
		event.LoadMes(0, 5, "e532_1.txt")
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
		wait_frames(40)
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
		wait_frames(30)
		event.ObjsSetMotion(1, "起きあがり", 6)
		event.ObjsNextMotion(1, "起きあがりL", 4)
		at = 17
		wait_frames(15)
		event.CmrsSetPos(-84.02, 9.18, -188.66)
		event.CmrsSetRef(-99.08, 9.86, -193.29)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "死に")
		event.EohSetTexAnim(1, 1, "目とじ～目あき")
		event.SndSePlay(var1, 3)
		at = 18
		wait_objects(1)
		at = 19
		wait_frames(20)
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
		helper_1584c528(5320100, 40)
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
		wait_frames(5)
		at = 23
		helper_1584c528(5320110, 20)
		at = 24
		wait_frames(5)
		at = 25
		helper_1584c528(5320120, 40)
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
		wait_frames(20)
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
		event.ObjsMotionDelay(2, 100)
		event.ObjsSetMotion(2, "笑う2")
		event.ObjsTexaDelay(2, 100)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "わらい顔")
		event.ObjsTexAnime(2, 1, "おこり目～大わらい目")
		event.ObjsTexAnime(2, 1, "大わらい口パク")
		at = 33
		helper_0e75aa9e(5320150, -1, 10)
		event.SetMesOkuri(0, 1)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "大わらい目～通常目")
		event.SndSePlay(var1, 9)
		event.ObjsSetMotion(2, "戻り", 2)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "わらい口パク")
		at = 34
		helper_4116e6bb(5320155)
		at = 35
		wait_objects(2)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.EohSetTexAnim(2, 1, "前向き～右向き")
		event.ObjsSetMotion(1, "立つ", 2)
		event.ObjsNextMotion(1, "立つL", 4)
		event.ObjsSeDelay(1, 4)
		event.ObjsSePlay(1, var1, 10)
		event.SetPakuAnim(1, "通常口パク")
		at = 36
		helper_4116e6bb(5320160)
		at = 37
		wait_objects(1)
		event.CmrsSetPos(24.94, 8.23, 72.51)
		event.CmrsSetRef(1.57, 16.42, 98.07)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "歯くいしばり")
		event.ObjsSetMotion(0, "バトル立ち2", 4)
		at = 38
		wait_frames(40)
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
		at = 39
		helper_4116e6bb(5320170)
		at = 40
		wait_camera()
		event.SndSetEnvVol(0.0)
		event.ObjsSetColor(3, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 41
		helper_4116e6bb(5320180)
		event.SetPakuAnim(2, "通常口パク")
		at = 42
		helper_4116e6bb(5320190)
		event.SetPakuAnim(2, "通常口パク")
		at = 43
		helper_4116e6bb(5320200)
		at = 44
		wait_objects(3)
		event.ObjsSetColor(4, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 45
		helper_4116e6bb(5320210)
		event.SetPakuAnim(2, "通常口パク")
		at = 46
		helper_4116e6bb(5320220)
		at = 47
		wait_objects(4)
		event.ObjsSetColor(3, 128, 128, 128, 0)
		event.ObjsSetColor(5, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 48
		helper_4116e6bb(5320225)
		at = 49
		wait_objects(5)
		event.ObjsSetColor(4, 128, 128, 128, 0)
		event.ObjsSetColor(6, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 50
		helper_4116e6bb(5320230)
		event.SetPakuAnim(2, "通常口パク")
		at = 51
		helper_4116e6bb(5320240)
		at = 52
		wait_objects(6)
		event.ObjsSetColor(5, 128, 128, 128, 0)
		event.ObjsSetColor(7, 128, 128, 128, 128, 10)
		event.SetPakuAnim(2, "通常口パク")
		at = 53
		helper_4116e6bb(5320250)
		event.SetPakuAnim(2, "通常口パク")
		at = 54
		helper_4116e6bb(5320260)
		at = 55
		wait_objects(7)
		event.ObjsSetColor(6, 128, 128, 128, 0)
		event.ObjsSetColor(7, 128, 128, 128, 0, 30)
		event.SndSetEnvVol(1.0)
		event.SetPakuAnim(2, "通常口パク")
		at = 56
		helper_4116e6bb(5320270)
		at = 57
		wait_objects(7)
		event.SetPakuAnim(2, "通常口パク")
		at = 58
		helper_4116e6bb(5320275)
		at = 59
		vm.wait(59)
		at = 60
		vm.wait(60)
	end, function(received: { any }): boolean
		if at <= 1 then
			local _ = active_chr_no ~= 0
			active_chr_no = 0
			wait_frames_skipping(4)
		end
		if at <= 2 then
			helper_8cd371d7(5320010)
		end
		if at <= 3 then
			wait_frames_skipping(40)
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
			wait_frames_skipping(30)
		end
		if at <= 16 then
			wait_frames_skipping(15)
		end
		if at <= 17 then
			helper_238b5abc(1)
		end
		if at <= 18 then
			wait_frames_skipping(20)
		end
		if at <= 19 then
			helper_8cd371d7(5320090)
		end
		if at <= 20 then
			helper_52aadc70(5320100, 40)
		end
		if at <= 21 then
			wait_frames_skipping(5)
		end
		if at <= 22 then
			helper_52aadc70(5320110, 20)
		end
		if at <= 23 then
			wait_frames_skipping(5)
		end
		if at <= 24 then
			helper_52aadc70(5320120, 40)
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
			wait_frames_skipping(20)
		end
		if at <= 30 then
			helper_8cd371d7(5320140)
		end
		if at <= 31 then
			helper_238b5abc(2)
		end
		if at <= 32 then
			helper_2f8c501c(5320150, -1, 10)
		end
		if at <= 33 then
			helper_8cd371d7(5320155)
		end
		if at <= 34 then
			helper_238b5abc(2)
		end
		if at <= 35 then
			helper_8cd371d7(5320160)
		end
		if at <= 36 then
			helper_238b5abc(1)
		end
		if at <= 37 then
			wait_frames_skipping(40)
		end
		if at <= 38 then
			helper_8cd371d7(5320170)
		end
		if at <= 39 then
			helper_344d6cd8()
		end
		if at <= 40 then
			helper_8cd371d7(5320180)
		end
		if at <= 41 then
			helper_8cd371d7(5320190)
		end
		if at <= 42 then
			helper_8cd371d7(5320200)
		end
		if at <= 43 then
			helper_238b5abc(3)
		end
		if at <= 44 then
			helper_8cd371d7(5320210)
		end
		if at <= 45 then
			helper_8cd371d7(5320220)
		end
		if at <= 46 then
			helper_238b5abc(4)
		end
		if at <= 47 then
			helper_8cd371d7(5320225)
		end
		if at <= 48 then
			helper_238b5abc(5)
		end
		if at <= 49 then
			helper_8cd371d7(5320230)
		end
		if at <= 50 then
			helper_8cd371d7(5320240)
		end
		if at <= 51 then
			helper_238b5abc(6)
		end
		if at <= 52 then
			helper_8cd371d7(5320250)
		end
		if at <= 53 then
			helper_8cd371d7(5320260)
		end
		if at <= 54 then
			helper_238b5abc(7)
		end
		if at <= 55 then
			helper_8cd371d7(5320270)
		end
		if at <= 56 then
			helper_238b5abc(7)
		end
		if at <= 57 then
			helper_8cd371d7(5320275)
		end
		return true
	end)
	at = 61
	vm.entry(61)
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

return helper_828a2144
