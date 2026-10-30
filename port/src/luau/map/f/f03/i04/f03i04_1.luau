--!strict
-- map/f/f03/i04/f03i04_1.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_00c33055 = require("@lib/event/helper_00c33055")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_3a1e288a = require("@lib/event/helper_3a1e288a")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_e4945fa4 = require("@lib/event/helper_e4945fa4")
local helper_ec30b150 = require("@lib/event/helper_ec30b150")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_14268()
	local active_chr_no: s32 = 0
	local block: s32 = 0
	local block_2: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 32
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e400/e448/e448_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e400/e448/e448_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 37)
	end
	if active_chr_no == 1 then
		global0 = 32
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 37)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e400/e448/e448_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e400/e448/e448_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.LoadChara(5, "event/e400/e448/e448_chap.gltf", "info", 38)
	event.CharaActive(0, 38)
	event.EohSyncChara(2, 38)
	event.ObjsInit(2, 38)
	event.ObjsSyncObj(2, 2)
	event.LoadChara(5, "event/e400/e448/e448_eina_holo.gltf", "info", 39)
	event.CharaActive(0, 39)
	event.EohSyncChara(3, 39)
	event.ObjsInit(3, 39)
	event.ObjsSyncObj(3, 3)
	event.LoadChara(5, "event/e400/e448/e448_mago.gltf", "info", 40)
	event.CharaActive(0, 40)
	event.EohSyncChara(7, 40)
	event.ObjsInit(7, 40)
	event.ObjsSyncObj(7, 7)
	event.LoadChara(5, "event/e400/e448/e448_lunaken.gltf", "info", 41)
	event.CharaActive(0, 41)
	event.EohSyncChara(8, 41)
	event.ObjsInit(8, 41)
	event.ObjsSyncObj(8, 8)
	event.LoadChara(5, "event/e400/e448/e448_hologram.gltf", "info", 42)
	event.CharaActive(0, 42)
	event.EohSyncObj_3(4, "p07_f03i04", "f03i04_07-m")
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.EohSyncObj_3(5, "p08_f03i04", "f03i04_08-m")
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.EohSyncObj_3(6, "p05_f03i04", "f03i04_05-m")
	event.ObjsInit(6)
	event.ObjsSyncObj(6, 6)
	block = event.LoadImg_4(5, "textures/event/e400/e448/e448a.json", 0) or block
	block_2 = event.LoadImg_4(5, "textures/event/e400/e448/e448b.json", 1) or block_2
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "e44801", block)
	event.SpriteSetColor(0, 128, 128, 128, 0)
	event.SpriteSetUvsize(0, 0, 0, 512, 416)
	event.SpriteSetPutsize(0, 512, 416)
	event.SpriteSetPos(0, 256, 208)
	event.SpriteSetDraw(0, 0)
	event.EohSyncSprite(10, 0)
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "e44802", block)
	event.SpriteSetColor(1, 128, 128, 128, 0)
	event.SpriteSetUvsize(1, 0, 0, 512, 416)
	event.SpriteSetPutsize(1, 512, 416)
	event.SpriteSetPos(1, 256, 208)
	event.SpriteSetDraw(1, 0)
	event.EohSyncSprite(11, 1)
	event.ObjsInit(11)
	event.ObjsSyncObj(11, 11)
	event.SpriteInit(2)
	event.SpriteSetType(2, 0)
	event.SpriteSetTexture(2, "e44803", block)
	event.SpriteSetColor(2, 128, 128, 128, 0)
	event.SpriteSetUvsize(2, 0, 0, 512, 416)
	event.SpriteSetPutsize(2, 512, 416)
	event.SpriteSetPos(2, 256, 208)
	event.SpriteSetDraw(2, 0)
	event.EohSyncSprite(12, 2)
	event.ObjsInit(12)
	event.ObjsSyncObj(12, 12)
	event.SpriteInit(3)
	event.SpriteSetType(3, 0)
	event.SpriteSetTexture(3, "e44804", block)
	event.SpriteSetColor(3, 128, 128, 128, 0)
	event.SpriteSetUvsize(3, 0, 0, 512.0, 416.0)
	event.SpriteSetPutsize(3, 512, 416)
	event.SpriteSetPos(3, 256, 208)
	event.SpriteSetDraw(3, 0)
	event.EohSyncSprite(13, 3)
	event.ObjsInit(13)
	event.ObjsSyncObj(13, 13)
	event.SpriteInit(4)
	event.SpriteSetType(4, 0)
	event.SpriteSetTexture(4, "e44805", block_2)
	event.SpriteSetColor(4, 128, 128, 128, 0)
	event.SpriteSetUvsize(4, 0, 0, 512.0, 416.0)
	event.SpriteSetPutsize(4, 512, 416)
	event.SpriteSetPos(4, 256, 208)
	event.SpriteSetDraw(4, 0)
	event.EohSyncSprite(14, 4)
	event.ObjsInit(14)
	event.ObjsSyncObj(14, 14)
	event.SpriteInit(5)
	event.SpriteSetType(5, 0)
	event.SpriteSetTexture(5, "e44806", block_2)
	event.SpriteSetColor(5, 128, 128, 128, 0)
	event.SpriteSetUvsize(5, 0, 0, 512.0, 416.0)
	event.SpriteSetPutsize(5, 512, 416)
	event.SpriteSetPos(5, 256, 208)
	event.SpriteSetDraw(5, 0)
	event.EohSyncSprite(15, 5)
	event.ObjsInit(15)
	event.ObjsSyncObj(15, 15)
	event.SpriteInit(6)
	event.SpriteSetType(6, 0)
	event.SpriteSetTexture(6, "e44807", block_2)
	event.SpriteSetColor(6, 128, 128, 128, 0)
	event.SpriteSetUvsize(6, 0, 0, 512.0, 416.0)
	event.SpriteSetPutsize(6, 512, 416)
	event.SpriteSetPos(6, 256, 208)
	event.SpriteSetDraw(6, 0)
	event.EohSyncSprite(16, 6)
	event.ObjsInit(16)
	event.ObjsSyncObj(16, 16)
	event.LoadMes(0, 5, "event/e400/e448/e448_1.txt")
end

--- Helper function.
local function helper_21800000()
	global0 = 0
	global1 = 32
	global0 = 32
	global1 = 0
end

--- Helper function.
local function helper_13d1c()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(37)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(37)
	end
	event.DeleteChara(38)
	event.DeleteChara(39)
	event.DeleteChara(40)
	event.DeleteChara(41)
	event.DeleteChara(42)
	event.DelImg(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetScale(4, 1.0, 1.0, 1.0)
	event.EohSetShow(4, 0)
	event.EohSetShow(6, 0)
	event.ObjsSetPos(5, -1.49967, 492.015, 522.796)
	event.MapJump_3(-1, "s09", 500)
end

--- Helper function.
local function helper_16918()
	local var6: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(448, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetFadeOut(30)
		at = 2
		wait_frames(30)
		helper_14268()
		event.SetStatus(1, 0, 256, 1)
		event.StopBgm(0)
		at = 3
		wait_frames(4)
		event.LoadBgm(22)
		event.LoadSound(4509)
		var6 = event.SndLoadSound_2(4509) or var6
		event.InitDramaScene()
		event.EohSetFootSoundId(0, 23)
		event.EohSetFootSoundId(1, 23)
		event.EohSetFootSoundId(2, 23)
		event.EohSetFootSoundId(8, 23)
		event.EohSetFootSoundId(7, 23)
		event.EohSetScale(4, 1.0, 0.0, 1.0)
		event.EohSetShow(4, 1)
		event.EohSetShow(6, 0)
		event.ObjsSetPos(5, -1.49967, 492.015, 522.796)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "目パチ")
		event.ObjsTexAnime(7, 0)
		event.ObjsTexAnime(7, 1, "目パチ")
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 38)
		event.CmrsSetPos(-956.31, 276.23, 29.53)
		event.CmrsSetRef(-426.59, 67.29, 6.63)
		event.ObjsSetPos(1, -726.2, 116.62, -12.45)
		event.ObjsSetRot(1, 0.0, 1.52, 0.0)
		event.ObjsSetPos(0, -723.31, 115.39, 15.84)
		event.ObjsSetRot(0, 0.0, 1.52, 0.0)
		event.ObjsSetPos(2, 0.0, 14.67, 0.0)
		event.ObjsSetRot(2, 0.0, -1.52, 0.0)
		event.ObjsSetPos(3, 0.0, 14.67, 0.0)
		event.ObjsSetRot(3, 0.0, 3.13, 0.0)
		event.ObjsSetPos(7, 0.0, 14.67, -342.92)
		event.ObjsSetRot(7, 0.0, 0.0, 0.0)
		event.SetCharaPos(42, 0.0, 14.67, 0.0)
		event.SetCharaRot(42, 0.0, 3.13, 0.0)
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsSetMotion(1, "歩き", 4, -1.0, 1)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetMotion(7, "立ち", 4)
		event.ObjsSetMotion(3, "立ち", 4)
		event.ObjsSetMotion(8, "立ち", 4)
		event.ObjsMove(1, -229.42, 14.67, -11.08, 240, 1)
		event.ObjsMove(0, -235.3, 14.67, 16.5, 240, 1)
		event.SetFadeIn(30)
		at = 4
		wait_frames(150)
		event.CmrsSetPos(54.63, 25.75, -14.11)
		event.CmrsSetRef(-484.75, 44.7, 19.5)
		event.ObjsSetMotion(2, "立ち会話（やぁ）", 2)
		event.ObjsMotionDelay(2, 90)
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.CmrsPrdelay(90)
		event.CmrsSetPos(-37.91, 29.85, 18.95)
		event.CmrsSetRef(1.68, 29.5, -0.76)
		event.SetPakuAnim(2, "わらい口パク")
		at = 5
		helper_1584c528(4480010, 150)
		event.ResetPakuAnim()
		at = 6
		helper_1584c528(4480015, -1)
		at = 7
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(1, 1, "口とじ～口あけ")
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetPos(1, -37.18, 14.67, -12.31)
		event.ObjsSetRot(1, 0.0, 1.16, 0.0)
		event.ObjsSetPos(0, -34.01, 14.67, 9.43)
		event.ObjsSetRot(0, 0.0, 1.52, 0.0)
		event.CmrsSetPos(57.77, 30.54, 48.68)
		event.CmrsSetRef(-37.13, 36.5, -12.63)
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "わらい口パク")
		at = 8
		helper_4116e6bb(4480020)
		event.ResetPakuAnim()
		event.SndSePlay(var6, 3)
		event.ObjsSetMotion(0, "ホント！！", 6)
		event.ObjsNextMotion(0, "ホント！！L")
		event.SetPakuAnim(0, "わらい口パク")
		at = 9
		helper_4116e6bb(4480030)
		event.ResetPakuAnim()
		event.CmrsSetPos(-29.05, 30.34, 16.9)
		event.CmrsSetRef(16.79, 33.58, -8.54)
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "わらい口パク")
		at = 10
		helper_4116e6bb(4480040)
		event.ResetPakuAnim()
		event.PlayBgm(0)
		event.ObjsSetMotion(2, "指パッチンin", 2)
		event.ObjsNextMotion(2, "指パッチンループ")
		at = 11
		wait_frames(30)
		event.CmrsSetPos(-239.44, 156.02, -52.82)
		event.CmrsSetRef(-191.28, 200.5, 65.31)
		event.SndSePlay(var6, 4)
		event.ObjsSetScale(4, 1.0, 1.0, 1.0, 90)
		event.ObjsMove(5, -1.49967, 300.0, 522.796, 90)
		at = 12
		wait_frames(90)
		event.CmrsSetPos(5.53, 370.96, 183.63)
		event.CmrsSetRef(4.24, 381.19, 324.61)
		at = 13
		wait_frames(30)
		event.EohSetScale(6, 1.0, 0.0, 1.0)
		event.EohSetShow(6, 1)
		event.ObjsSetScale(6, 1.0, 1.0, 1.0, 30)
		event.SndSePlay(var6, 5)
		at = 14
		wait_frames(60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.CmrsSetPos(0.0, 16.85, -78.07)
		event.CmrsSetRef(0.0, 87.26, 92.04)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSetPos(1, -25.0, 14.67, 0.0)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.ObjsSetPos(0, 25.0, 14.67, 0.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsResetDaPosition(0)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetMotion(0, "のけぞる", 6, -1, 1)
		event.ObjsNextMotion(0, "のけぞるL")
		event.ObjsSetMotion(1, "上向くL", 4, -1, 1)
		at = 15
		helper_4116e6bb(4480050)
		event.ObjsSetMotion(2, "会話（見上げ）", 6)
		event.ObjsNextMotion(2, "立ち（見上げ）", 4)
		event.SetPakuAnim(2, "わらい口パク")
		at = 16
		helper_4116e6bb(4480060)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "会話（見上げ）", 6)
		event.ObjsNextMotion(2, "立ち（見上げ）", 4)
		event.SetPakuAnim(2, "わらい口パク")
		at = 17
		helper_4116e6bb(4480065)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "立ち", 2)
		at = 18
		wait_frames(15)
		event.CharaActive(0, global0)
		event.CmrsSetPos(36.52, 23.74, -2.78)
		event.CmrsSetRef(-80.76, 43.28, 5.58)
		event.ObjsSetMotion(2, "会話（見上げ）", 6)
		event.ObjsNextMotion(2, "立ち（見上げ）", 4)
		event.SetPakuAnim(2, "わらい口パク")
		at = 19
		helper_4116e6bb(4480070)
		event.ResetPakuAnim()
		at = 20
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おどろき顔")
		event.ObjsTexAnime(1, 1, "おどろき目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "うれし顔")
		event.ObjsTexAnime(0, 1, "うれし目パチ")
		event.CharaActive(1, global0)
		event.CmrsSetPos(7.12, 87.39, 72.51)
		event.CmrsSetRef(0.52, 31.03, 7.67)
		event.SndSePlay(var6, 6)
		event.ObjsSetMotion(0, "すごいよ！", 6)
		event.ObjsNextMotion(0, "すごいよ！L")
		event.SetPakuAnim(0, "わらい口パク")
		at = 21
		helper_4116e6bb(4480080)
		event.ResetPakuAnim()
		event.ObjsSetMotion(0, "チャップを見る", 2)
		event.ObjsNextMotion(0, "チャップを見るL")
		event.ObjsSetMotion(2, "会話（見上げ）", 6)
		event.ObjsNextMotion(2, "立ち（見上げ）", 4)
		event.SetPakuAnim(2, "わらい口パク")
		at = 22
		helper_4116e6bb(4480090)
		event.ResetPakuAnim()
		event.SndSePlay(var6, 7)
		event.ObjsSetMotion(2, "振り向く")
		event.ObjsRotation(2, 0.0, -3.1, 0.0, 30)
		at = 23
		wait_objects(2)
		event.ObjsSetMotion(2, "立ち")
		at = 24
		wait_frames(15)
		at = 25
		helper_4116e6bb(4480095)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "うれし顔")
		event.ObjsTexAnime(0, 1, "うれし目～通常目")
		event.SndSePlay(var6, 8)
		event.ObjsSetMotion(1, "左向く", 2, 0.5)
		event.ObjsNextMotion(1, "左向くL")
		event.CharaActive(1, 40)
		at = 26
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetRot(1, 0.0, 2.94, 0.0)
		event.ObjsSetRot(0, 0.0, -2.74, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.CmrsSetPos(196.02, 29.8, -218.1)
		event.CmrsSetRef(0.0, 27.27, -342.92)
		event.ObjsSetMotion(7, "歩き", 4)
		event.ObjsMove(7, 0.0, 14.67, -111.07, 180)
		event.CmrsMoveRef(0.0, 27.27, -111.07, 180)
		at = 27
		wait_objects(7)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsSetPos(7, 0.0, 14.67, -100.0)
		event.ObjsMove(7, 0.0, 14.67, -86.5, 30)
		event.CmrsSetPos(-41.41, 39.04, -154.86)
		event.CmrsSetRef(-12.51, 37.54, -79.79)
		at = 28
		wait_objects(7)
		event.ObjsSetMotion(7, "立ち")
		event.ObjsSetMotion(0, "ジャミング！？", 2)
		event.ObjsNextMotion(0, "ジャミング！？L")
		event.ObjsSetMotion(1, "身構え", 2)
		event.ObjsNextMotion(1, "身構えL")
		event.SndSePlay(var6, 9)
		event.SetPakuAnim(1, "通常口パク")
		at = 29
		helper_4116e6bb(4480100)
		event.ResetPakuAnim()
		event.SetPakuAnim(0, "通常口パク")
		at = 30
		helper_4116e6bb(4480110)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "ユリス向くin", 2)
		event.ObjsNextMotion(2, "ユリス向く（会話）", 2)
		event.ObjsNextMotion(2, "ユリス向くループ")
		event.SetPakuAnim(2, "通常口パク")
		at = 31
		helper_4116e6bb(4480120)
		event.ResetPakuAnim()
		at = 32
		wait_frames(15)
		event.CmrsSetPos(-20.2, 39.04, -21.57)
		event.CmrsSetRef(0.05, 37.54, -82.59)
		at = 33
		helper_4116e6bb(4480130)
		at = 34
		wait_frames(15)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.CmrsSetPos(-41.41, 39.04, -154.86)
		event.CmrsSetRef(-12.51, 37.54, -79.79)
		event.ObjsSetMotion(2, "立ち")
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "身構え戻り", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 35
		helper_4116e6bb(4480140)
		event.ResetPakuAnim()
		event.ObjsSetMotion(7, "会話1", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 36
		helper_4116e6bb(4480150)
		event.ObjsSetMotion(7, "会話2", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 37
		helper_4116e6bb(4480155)
		at = 38
		wait_frames(30)
		event.CmrsSetPos(32.13, 29.73, -45.7)
		event.CmrsSetRef(-1.56, 43.07, -89.26)
		event.ObjsSetMotion(7, "会話1", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 39
		helper_4116e6bb(4480160)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(600)
		event.CmrsAddPas(75.1, 43.14, -309.6, 77.12, 43.07, -89.97)
		event.CmrsAddPas(-81.37, 43.14, -308.16, -79.35, 43.07, -88.53)
		event.CmrsStartPas()
		event.ObjsSetMotion(7, "会話1", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 40
		helper_1584c528(4480170, -1)
		event.ObjsSetMotion(7, "会話2", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 41
		helper_1584c528(4480180, -1)
		event.ObjsSetMotion(7, "会話1", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 42
		helper_1584c528(4480183, -1)
		at = 43
		wait_camera()
		event.CmrsSetPos(2.97, 138.34, 137.77)
		event.CmrsSetRef(0.19, 43.07, -24.14)
		event.ObjsSetMotion(7, "会話2", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 44
		helper_4116e6bb(4480185)
		event.ObjsSetMotion(7, "会話1", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 45
		helper_4116e6bb(4480188)
		event.ObjsSetMotion(7, "立ち")
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち")
		at = 46
		helper_4116e6bb(4480190)
		event.ObjsSetMotion(7, "うなづく", 2)
		event.ObjsNextMotion(7, "立ち")
		at = 47
		wait_frames(30)
		event.CmrsSetPos(32.13, 29.73, -45.7)
		event.CmrsSetRef(-1.56, 43.07, -89.26)
		event.ObjsSetMotion(7, "会話1", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 48
		helper_4116e6bb(4480200)
		at = 49
		wait_frames(15)
		event.CmrsSetPos(232.26, 353.87, 175.15)
		event.CmrsSetRef(24.92, 388.25, 507.94)
		event.CmrsMove2(205.95, 353.87, 220.9, 24.92, 388.25, 507.94, 400, 2, 1.0)
		at = 50
		helper_1584c528(4480210, -1)
		at = 51
		wait_frames(15)
		event.CmrsInit()
		event.CmrsSetPos(60.01, 36.76, -80.17)
		event.CmrsSetRef(-17.73, 44.3, -88.09)
		event.ObjsSetMotion(7, "会話1", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 52
		helper_4116e6bb(4480220)
		event.ObjsSetMotion(7, "立ち")
		at = 53
		wait_frames(30)
		event.CmrsSetPos(2.97, 138.34, 137.77)
		event.CmrsSetRef(0.19, 43.07, -24.14)
		event.ObjsSetMotion(7, "会話2", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 54
		helper_4116e6bb(4480230)
		event.ObjsSetMotion(7, "立ち")
		at = 55
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(1, 1, "半口")
		event.ObjsSetPos(1, -17.0, 14.67, 0.0)
		event.ObjsSetRot(1, 0.0, 2.94, 0.0)
		event.ObjsSetPos(0, 17.0, 14.67, 0.0)
		event.ObjsSetRot(0, 0.0, -2.74, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsResetDaPosition(0)
		event.CmrsSetPos(-39.51, 33.29, -31.48)
		event.CmrsSetRef(2.52, 33.3, 2.35)
		event.SetPakuAnim(0, "通常口パク")
		at = 56
		helper_4116e6bb(4480240)
		event.ResetPakuAnim()
		at = 57
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetPos(1, -25.0, 14.67, 0.0)
		event.ObjsSetRot(1, 0.0, 2.94, 0.0)
		event.ObjsSetPos(0, 25.0, 14.67, 0.0)
		event.ObjsSetRot(0, 0.0, -2.74, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsResetDaPosition(0)
		event.CmrsSetPos(-0.1, 86.08, -136.54)
		event.CmrsSetRef(-1.59, -2.29, 3.25)
		event.ObjsSetMotion(1, "考え", 2)
		event.ObjsNextMotion(1, "考えL")
		event.ObjsSetMotion(7, "会話1", 2)
		event.ObjsNextMotion(7, "会話3", 4)
		at = 58
		helper_4116e6bb(4480250)
		event.ObjsSetMotion(7, "立ち")
		event.ObjsSetMotion(0, "いや、そんな・・・", 2)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 59
		helper_4116e6bb(4480260)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "顔上げ", 2)
		event.ObjsNextMotion(1, "顔上げ会話")
		event.SetPakuAnim(1, "通常口パク")
		at = 60
		helper_4116e6bb(4480270)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 61
		helper_4116e6bb(4480275)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "考えL")
		event.ObjsSetMotion(0, "左向く", 6)
		event.ObjsNextMotion(0, "左向くL")
		event.ObjsSetMotion(2, "モニカ向くin", 6)
		event.ObjsNextMotion(2, "モニカ向くループ")
		event.ObjsSetMotion(7, "モニカ見る", 6)
		event.ObjsNextMotion(7, "モニカ見るループ")
		at = 62
		wait_frames(30)
		event.ObjsSetMotion(7, "立ち", 4)
		event.ObjsSetPos(1, -17.0, 14.67, 0.0)
		event.ObjsSetRot(1, 0.0, 2.94, 0.0)
		event.ObjsSetPos(0, 17.0, 14.67, 0.0)
		event.ObjsSetRot(0, 0.0, 3.06, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsResetDaPosition(0)
		event.CmrsSetPos(-39.51, 33.29, -31.48)
		event.CmrsSetRef(2.52, 33.3, 2.35)
		event.ObjsSetMotion(1, "顔上げ", 2)
		event.ObjsNextMotion(1, "顔上げ会話")
		event.SetPakuAnim(1, "通常口パク")
		at = 63
		helper_4116e6bb(4480280)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "考えL")
		event.ObjsSetMotion(0, "左向く会話", 2)
		event.ObjsNextMotion(0, "左向くL")
		event.SetPakuAnim(0, "通常口パク")
		at = 64
		helper_4116e6bb(4480290)
		event.ResetPakuAnim()
		event.SndSePlay(var6, 10)
		event.ObjsSetMotion(1, "右見る", 2)
		event.ObjsNextMotion(1, "右向くL")
		event.ObjsSetMotion(2, "モニカからユリス向く", 2)
		event.ObjsNextMotion(2, "モニカからユリス向くＬ")
		event.SetPakuAnim(1, "通常口パク")
		at = 65
		helper_4116e6bb(4480300)
		event.ResetPakuAnim()
		at = 66
		wait_frames(30)
		event.ObjsSetPos(1, -25.0, 14.67, 0.0)
		event.ObjsSetRot(1, 0.0, 2.94, 0.0)
		event.ObjsSetPos(0, 25.0, 14.67, 0.0)
		event.ObjsSetRot(0, 0.0, -2.74, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsResetDaPosition(0)
		event.CmrsSetPos(8.65, 18.02, -25.49)
		event.CmrsSetRef(26.65, 37.13, 2.87)
		event.ObjsSetMotion(0, "左向く会話", 2)
		event.SetPakuAnim(0, "通常口パク")
		at = 67
		helper_4116e6bb(4480310)
		event.ResetPakuAnim()
		at = 68
		wait_frames(30)
		event.CharaActive(0, 38)
		event.ObjsSetMotion(0, "会話", 6)
		event.CmrsSetPos(-17.5, 31.97, -0.13)
		event.CmrsSetRef(26.39, 34.27, 0.14)
		event.SetPakuAnim(0, "通常口パク")
		at = 69
		helper_4116e6bb(4480320)
		event.ResetPakuAnim()
		at = 70
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(1, 1, "半口")
		event.ObjsSetPos(1, -17.0, 14.67, 0.0)
		event.ObjsSetRot(1, 0.0, -3.1, 0.0)
		event.ObjsSetPos(0, 17.0, 14.67, 0.0)
		event.ObjsSetRot(0, 0.0, 3.06, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsResetDaPosition(0)
		event.CharaActive(1, 38)
		event.CmrsSetPos(45.32, 50.75, -47.14)
		event.CmrsSetRef(5.0, 37.13, -3.26)
		event.ObjsSetMotion(0, "考えるL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 71
		helper_4116e6bb(4480330)
		event.ResetPakuAnim()
		event.ObjsTexaDelay(0, 120)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目～おどろき目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目～おこり目")
		event.ObjsTexaDelay(1, 30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsMotionDelay(0, 20)
		event.ObjsSetMotion(0, "モニカを見る", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		event.ObjsMotionDelay(2, 20)
		event.ObjsSetMotion(2, "ユリスからモニカ向く", 2)
		event.ObjsNextMotion(2, "ユリスからモニカ向くＬ")
		event.ObjsMotionDelay(1, 120)
		event.ObjsSetMotion(1, "怒る入り", 6)
		event.ObjsNextMotion(1, "怒る会話", 2)
		event.ObjsNextMotion(1, "怒る入りL", 4)
		event.SndSePlay(var6, 11)
		event.SetPakuAnim(1, "大口パク")
		at = 72
		helper_4116e6bb(4480340)
		event.ResetPakuAnim()
		event.ObjsSetMotion(0, "引きうなづき", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 73
		helper_4116e6bb(4480350)
		event.ResetPakuAnim()
		at = 74
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetMotion(8, "走り", 4)
		event.ObjsSetMotion(1, "右向くL", 4)
		event.ObjsSetMotion(2, "立ち", 2)
		event.CmrsSetPos(-16.75, 163.56, -195.26)
		event.CmrsSetRef(19.55, 31.65, -72.54)
		at = 75
		wait_frames(30)
		event.SetPakuAnim(8, "通常口パク")
		at = 76
		helper_4116e6bb(4480360)
		event.ResetPakuAnim()
		event.FadeOutBgm(30)
		event.ObjsSetMotion(0, "左向く戻り", 6)
		event.ObjsNextMotion(0, "立ち")
		event.ObjsSetMotion(1, "右向く戻り", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ObjsSetMotion(7, "研究員見る", 6)
		event.ObjsNextMotion(7, "研究員見るL")
		event.ObjsSetRot(8, 0.0, -0.41, 0.0)
		event.CharaActive(1, 41)
		event.ObjsInitPas(8)
		event.ObjsSetPasFrm(8, 50)
		event.ObjsAddPas(8, 81.75, 14.67, -207.27)
		event.ObjsAddPas(8, 49.31, 14.67, -124.97)
		event.ObjsStartPas(8)
		at = 77
		wait_objects(8)
		event.CmrsSetPos(48.18, 36.87, -53.98)
		event.CmrsSetRef(47.39, 31.65, -127.29)
		event.ObjsSetMotion(8, "会話(あせり）", 6)
		event.ObjsNextMotion(8, "立ち(あせり）", 4)
		event.SetPakuAnim(8, "口パク")
		at = 78
		helper_4116e6bb(4480365)
		event.ResetPakuAnim()
		at = 79
		wait_frames(30)
		event.StopBgm(0)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetMotion(8, "立ち", 4)
		event.CmrsSetPos(-16.75, 163.56, -195.26)
		event.CmrsSetRef(19.55, 31.65, -72.54)
		event.ObjsSetMotion(2, "なにin", 2)
		event.ObjsNextMotion(2, "なに（会話）", 2)
		event.ObjsNextMotion(2, "なにループ")
		event.SetPakuAnim(2, "通常口パク")
		at = 80
		helper_4116e6bb(4480370)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "なにループ")
		at = 81
		wait_frames(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目～おどろき目")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetPos(1, -25.0, 14.67, 0.0)
		event.ObjsSetPos(0, 25.0, 14.67, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsResetDaPosition(0)
		event.CmrsSetPos(43.45, 19.19, -25.77)
		event.CmrsSetRef(16.15, 41.45, 12.29)
		at = 82
		helper_4116e6bb(4480380)
		at = 83
		wait_frames(15)
		event.CmrsSetPos(28.79, 40.99, 82.7)
		event.CmrsSetRef(27.79, 35.36, -21.36)
		event.ObjsSetMotion(8, "礼", 6)
		event.ObjsNextMotion(8, "立ち")
		event.ObjsSetMotion(7, "礼", 6)
		event.ObjsNextMotion(7, "立ち")
		at = 84
		wait_frames(30)
		event.ObjsSetMotion(8, "振り返り", 6)
		event.ObjsNextMotion(8, "立ち")
		event.ObjsSetMotion(7, "振り返り", 6)
		event.ObjsNextMotion(7, "立ち")
		event.SndSePlay(var6, 12)
		event.ObjsRotation(8, 0.0, 2.38, 0.0, 30)
		event.ObjsRotation(7, 0.0, 2.38, 0.0, 30)
		at = 85
		wait_objects(8)
		at = 86
		wait_objects(7)
		event.ObjsSetMotion(7, "走り")
		event.ObjsSetMotion(8, "走り")
		event.ObjsMove(8, 256.4, 14.67, -306.5, 120, 1)
		event.ObjsMove(7, 214.08, 14.67, -282.13, 120, 1)
		at = 87
		helper_4116e6bb(4480390)
		event.ObjsSetMotion(8, "立ち", 4)
		event.ObjsSetMotion(7, "立ち", 4)
		event.CharaActive(0, 40)
		event.CharaActive(0, 41)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(480)
		event.CmrsAddPas(-0.11, 39.79, -43.33, 24.6, 36.05, -0.54)
		event.CmrsAddPas(12.71, 39.79, -21.13, 24.6, 36.05, -0.54)
		event.CmrsStartPas()
		event.SetCrossfade(30)
		at = 88
		helper_1584c528(4480400, -1)
		at = 89
		helper_1584c528(4480410, -1)
		at = 90
		wait_frames(30)
		event.SetFadeOut(30)
		at = 91
		wait_frames(30)
		event.LoadBgm(32)
		event.CmrsInit()
		event.ObjsSetPos(1, 21.0, 14.67, -96.4)
		event.ObjsSetRot(1, 0.0, -0.42, 0.0)
		event.ObjsSetPos(0, -21.0, 14.67, -96.4)
		event.ObjsSetRot(0, 0.0, 0.42, 0.0)
		event.ObjsSetPos(2, 0.0, 14.67, -96.4)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(2, "立ち", 4)
		event.CmrsSetPos(-0.58, 284.23, -107.49)
		event.CmrsSetRef(-0.45, 364.5, 62.05)
		event.PlayBgm(0)
		event.SetFadeIn(30)
		at = 92
		wait_frames(30)
		event.SndSePlay(var6, 13)
		event.CharaActive(1, 42)
		event.SetMotion(42, "光射出", 6, -1, 1)
		at = 93
		wait_frames(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.CmrsInitPas()
		event.CmrsSetPasFrm(120)
		event.CmrsAddPas(-0.44, 313.67, -237.11, 0.0, 258.09, 0.0)
		event.CmrsAddPas(-0.44, 87.87, -237.11, 0.0, 32.29, 0.0)
		event.CmrsStartPas()
		event.SetMotion(42, "光射出", 6, -1, 1)
		at = 94
		wait_camera()
		at = 95
		wait_frames(30)
		event.CmrsSetPos(-31.6, 43.91, -71.47)
		event.CmrsSetRef(0.0, 32.29, 0.0)
		event.SndSePlay(var6, 14)
		event.SetMotion(42, "出現", 2, -1, 1)
		at = 96
		wait_frames(60)
		event.SetMotion(42, "立ち", 2, -1, 1)
		event.CharaActive(1, 39)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 97
		helper_4116e6bb(4480420)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 98
		wait_frames(15)
		event.CmrsSetPos(-26.24, 38.68, 42.72)
		event.CmrsSetRef(-5.44, 38.62, -14.16)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 99
		helper_4116e6bb(4480430)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 100
		wait_frames(15)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "おどろき目パチ")
		event.CmrsSetPos(-36.23, 32.89, -39.54)
		event.CmrsSetRef(-20.39, 30.89, -98.66)
		event.SetPakuAnim(0, "通常口パク")
		at = 101
		helper_4116e6bb(4480440)
		event.ResetPakuAnim()
		at = 102
		wait_frames(15)
		event.CmrsSetPos(0.93, 19.93, -42.57)
		event.CmrsSetRef(0.16, 32.65, -3.38)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 103
		helper_4116e6bb(4480450)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 104
		wait_frames(15)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetRot(1, 0.0, -1.38, 0.0)
		event.ObjsSetMotion(2, "ユリス向くin", 2)
		event.ObjsNextMotion(2, "ユリス向くループ")
		event.CmrsSetPos(-40.71, 43.64, -49.96)
		event.CmrsSetRef(-5.77, 32.65, -99.78)
		event.ObjsSetMotion(0, "うなづき", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 105
		helper_4116e6bb(4480460)
		event.ResetPakuAnim()
		event.SndSePlay(var6, 15)
		event.ObjsSetMotion(2, "なんとin", 2)
		event.ObjsNextMotion(2, "なんと（会話）", 2)
		event.ObjsNextMotion(2, "なんとループ", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 106
		helper_4116e6bb(4480470)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "わらい口パク")
		at = 107
		helper_4116e6bb(4480480)
		event.ResetPakuAnim()
		event.FadeOutBgm(30)
		at = 108
		wait_frames(30)
		event.StopBgm(0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetRot(1, 0.0, -0.42, 0.0)
		event.CmrsSetPos(-55.29, 35.05, -118.99)
		event.CmrsSetRef(-21.97, 32.65, -81.62)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 109
		helper_4116e6bb(4480490)
		event.ResetPakuAnim()
		event.SetPakuAnim(3, "口パク")
		at = 110
		helper_4116e6bb(4480495)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		event.ObjsSetMotion(0, "うなづく", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		at = 111
		helper_4116e6bb(4480500)
		at = 112
		helper_4116e6bb(4480510)
		event.ObjsSetMotion(3, "下向く", 6)
		event.ObjsNextMotion(3, "下向くL", 4)
		at = 113
		helper_4116e6bb(4480520)
		at = 114
		wait_frames(15)
		event.LoadBgm(5)
		event.CmrsSetPos(-21.1, 62.41, -39.24)
		event.CmrsSetRef(5.13, 26.57, 9.54)
		at = 115
		wait_frames(30)
		event.PlayBgm(0)
		event.ObjsSetMotion(3, "下向く戻り", 6)
		event.ObjsNextMotion(3, "会話2", 4)
		event.SetPakuAnim(3, "口パク")
		at = 116
		helper_4116e6bb(4480530)
		event.ResetPakuAnim()
		event.SetPakuAnim(3, "口パク")
		at = 117
		helper_4116e6bb(4480535)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 118
		wait_frames(15)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "前向き～右向き")
		event.ObjsSetRot(1, 0.0, -0.42, 0.0)
		event.ObjsResetDaPosition(1)
		event.CmrsSetPos(-162.52, 46.79, -31.74)
		event.CmrsSetRef(19.74, 41.85, -50.98)
		event.ObjsSetMotion(3, "会話", 6)
		event.ObjsNextMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 119
		helper_4116e6bb(4480540)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		at = 120
		helper_4116e6bb(4480550)
		at = 121
		wait_frames(15)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsSetPos(1, 17.0, 14.67, -96.4)
		event.ObjsSetRot(1, 0.0, -0.42, 0.0)
		event.ObjsSetPos(0, -17.0, 14.67, -96.4)
		event.ObjsSetRot(0, 0.0, 0.06, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsResetDaPosition(0)
		event.CmrsSetPos(30.34, 36.89, -45.36)
		event.CmrsSetRef(3.39, 33.28, -93.72)
		at = 122
		helper_4116e6bb(4480560)
		event.ObjsSetMotion(0, "左向く", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		at = 123
		wait_frames(30)
		event.ObjsSetRot(0, 0.0, 0.42, 0.0)
		event.CmrsSetPos(0.93, 19.93, -42.57)
		event.CmrsSetRef(0.16, 32.65, -3.38)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 124
		helper_4116e6bb(4480565)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 125
		wait_frames(15)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetMotion(0, "立ち", 4)
		event.CmrsSetPos(-162.52, 46.79, -31.74)
		event.CmrsSetRef(19.74, 41.85, -50.98)
		event.ObjsSetMotion(3, "会話", 6)
		event.ObjsNextMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 126
		helper_4116e6bb(4480570)
		event.ResetPakuAnim()
		event.SetPakuAnim(3, "口パク")
		at = 127
		helper_4116e6bb(4480575)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 128
		wait_frames(15)
		event.CmrsSetPos(-55.29, 35.05, -118.99)
		event.CmrsSetRef(-21.97, 32.65, -81.62)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 129
		helper_4116e6bb(4480580)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		event.SetPakuAnim(3, "口パク")
		at = 130
		helper_4116e6bb(4480590)
		event.ResetPakuAnim()
		at = 131
		wait_frames(15)
		event.CmrsSetPos(-23.01, 33.54, -27.56)
		event.CmrsSetRef(5.73, 39.63, 4.67)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 132
		helper_4116e6bb(4480600)
		event.ResetPakuAnim()
		event.SetPakuAnim(3, "口パク")
		at = 133
		helper_4116e6bb(4480605)
		event.ResetPakuAnim()
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(10, 128, 128, 128, 128, 30)
		at = 134
		helper_4116e6bb(4480610)
		at = 135
		helper_4116e6bb(4480615)
		at = 136
		helper_4116e6bb(4480620)
		at = 137
		helper_4116e6bb(4480630)
		at = 138
		helper_4116e6bb(4480635)
		event.SpriteSetDraw(1, 1)
		event.ObjsSetColor(11, 128, 128, 128, 128, 30)
		at = 139
		helper_4116e6bb(4480640)
		at = 140
		helper_4116e6bb(4480645)
		at = 141
		helper_4116e6bb(4480650)
		at = 142
		helper_4116e6bb(4480660)
		at = 143
		helper_4116e6bb(4480665)
		event.SpriteSetDraw(2, 1)
		event.ObjsSetColor(12, 128, 128, 128, 128, 30)
		at = 144
		helper_4116e6bb(4480670)
		at = 145
		helper_4116e6bb(4480680)
		at = 146
		helper_4116e6bb(4480690)
		at = 147
		helper_4116e6bb(4480700)
		at = 148
		helper_4116e6bb(4480710)
		event.SpriteSetDraw(3, 1)
		event.ObjsSetColor(13, 128, 128, 128, 128, 30)
		at = 149
		helper_4116e6bb(4480720)
		at = 150
		helper_4116e6bb(4480730)
		at = 151
		helper_4116e6bb(4480735)
		at = 152
		helper_4116e6bb(4480740)
		at = 153
		helper_4116e6bb(4480750)
		at = 154
		helper_4116e6bb(4480760)
		event.SpriteSetDraw(4, 1)
		event.ObjsSetColor(14, 128, 128, 128, 128, 30)
		at = 155
		helper_4116e6bb(4480770)
		at = 156
		helper_4116e6bb(4480775)
		at = 157
		helper_4116e6bb(4480780)
		at = 158
		helper_4116e6bb(4480790)
		at = 159
		helper_4116e6bb(4480795)
		event.SpriteSetDraw(5, 1)
		event.ObjsSetColor(15, 128, 128, 128, 128, 30)
		at = 160
		helper_4116e6bb(4480800)
		at = 161
		helper_4116e6bb(4480805)
		event.SpriteSetDraw(6, 1)
		event.ObjsSetColor(16, 128, 128, 128, 128, 30)
		at = 162
		helper_4116e6bb(4480810)
		at = 163
		helper_4116e6bb(4480815)
		event.CmrsSetPos(-38.5, 41.66, -29.35)
		event.CmrsSetRef(0.0, 35.62, 0.0)
		event.SpriteSetDraw(0, 0)
		event.SpriteSetDraw(1, 0)
		event.SpriteSetDraw(2, 0)
		event.SpriteSetDraw(3, 0)
		event.SpriteSetDraw(4, 0)
		event.SpriteSetDraw(5, 0)
		event.ObjsSetColor(16, 128, 128, 128, 0, 30)
		event.SetPakuAnim(3, "口パク")
		at = 164
		helper_4116e6bb(4480820)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "下向く", 6)
		event.ObjsNextMotion(3, "下向くL", 4)
		at = 165
		wait_frames(60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetRot(1, 0.0, -1.38, 0.0)
		event.CmrsSetPos(-37.37, 25.85, -54.46)
		event.CmrsSetRef(-10.76, 35.62, -86.97)
		event.SetPakuAnim(0, "通常口パク")
		at = 166
		helper_4116e6bb(4480830)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 167
		helper_4116e6bb(4480840)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "ユリス向くin", 2)
		event.ObjsNextMotion(2, "ユリス向くループ")
		event.CharaDaEnable(global0, 0)
		event.SndSePlay(var6, 16)
		event.ObjsSetMotion(0, "アトラさわる", 6)
		event.ObjsNextMotion(0, "アトラさわるL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 168
		helper_4116e6bb(4480850)
		event.ResetPakuAnim()
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "目あき～目とじ")
		event.ObjsSetMotion(1, "首振り", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 169
		helper_4116e6bb(4480860)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 170
		helper_4116e6bb(4480865)
		event.ResetPakuAnim()
		at = 171
		wait_frames(15)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.CmrsSetPos(42.2, 46.5, -67.56)
		event.CmrsSetRef(0.69, 36.17, -95.69)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 172
		helper_4116e6bb(4480870)
		event.ResetPakuAnim()
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 173
		helper_4116e6bb(4480880)
		event.ResetPakuAnim()
		at = 174
		wait_frames(15)
		event.CmrsSetPos(-8.37, 35.97, -85.14)
		event.CmrsSetRef(-17.52, 30.64, -95.93)
		at = 175
		helper_4116e6bb(4480890)
		at = 176
		wait_frames(15)
		event.CmrsSetPos(-21.1, 62.41, -39.24)
		event.CmrsSetRef(5.13, 26.57, 9.54)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 177
		helper_4116e6bb(4480900)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 178
		wait_frames(15)
		event.CharaDaEnable(global0, 1)
		event.ObjsSetMotion(0, "立ち", 4)
		event.CmrsSetPos(-162.52, 46.79, -31.74)
		event.CmrsSetRef(19.74, 41.85, -50.98)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 179
		helper_4116e6bb(4480910)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 180
		helper_4116e6bb(4480920)
		event.ResetPakuAnim()
		at = 181
		wait_frames(30)
		event.CmrsSetPos(-55.29, 35.05, -118.99)
		event.CmrsSetRef(-21.97, 32.65, -81.62)
		event.SetPakuAnim(3, "口パク")
		at = 182
		helper_4116e6bb(4480930)
		event.ResetPakuAnim()
		at = 183
		helper_4116e6bb(4480940)
		event.ObjsSetMotion(3, "首ふる", 2)
		event.ObjsNextMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 184
		helper_4116e6bb(4480950)
		event.ResetPakuAnim()
		event.SetPakuAnim(3, "口パク")
		at = 185
		helper_4116e6bb(4480955)
		event.ResetPakuAnim()
		event.SetPakuAnim(3, "口パク")
		at = 186
		helper_4116e6bb(4480960)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 187
		wait_frames(15)
		event.CmrsSetPos(-23.01, 33.54, -27.56)
		event.CmrsSetRef(5.73, 39.63, 4.67)
		at = 188
		wait_frames(30)
		event.StopBgm(0)
		event.SndSePlay(var6, 17)
		event.SetMotion(42, "はっとする", 6, -1, 1)
		event.ObjsSetMotion(3, "はっとする", 6)
		at = 189
		wait_frames(36)
		event.LoadBgm(37)
		event.PlayBgm(0)
		event.ObjsSetRot(1, 0.0, -0.42, 0.0)
		event.ObjsResetDaPosition(1)
		event.CmrsSetPos(-0.67, 77.75, -189.39)
		event.CmrsSetRef(0.41, 26.8, 10.88)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 190
		helper_4116e6bb(4480970)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		event.SndSePlay(var6, 18)
		event.ObjsSetMotion(2, "もう少しin", 6)
		event.ObjsNextMotion(2, "もう少し（会話）", 2)
		event.ObjsNextMotion(2, "もう少しループ")
		at = 191
		helper_4116e6bb(4480980)
		event.ObjsNextMotion(2, "もう少し（会話）", 2)
		event.ObjsNextMotion(2, "もう少しループ")
		at = 192
		helper_4116e6bb(4480985)
		event.ObjsSetMotion(3, "会話", 6)
		event.ObjsNextMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 193
		helper_4116e6bb(4480990)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		event.ObjsNextMotion(2, "もう少し（会話）", 2)
		event.ObjsSetMotion(2, "もう少しループ")
		at = 194
		helper_4116e6bb(4481000)
		at = 195
		wait_frames(30)
		event.CmrsSetPos(-38.5, 41.66, -29.35)
		event.CmrsSetRef(0.0, 35.62, 0.0)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 196
		helper_4116e6bb(4481010)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "会話", 6)
		event.ObjsNextMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 197
		helper_4116e6bb(4481015)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "胸に手をあてる", 6)
		event.ObjsNextMotion(3, "胸に手をあてるL", 4)
		event.SetPakuAnim(3, "口パク")
		at = 198
		helper_4116e6bb(4481020)
		event.ResetPakuAnim()
		at = 199
		wait_frames(15)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetMotion(2, "立ち", 4)
		event.CmrsSetPos(-37.37, 25.85, -54.46)
		event.CmrsSetRef(-10.76, 35.62, -86.97)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 200
		helper_4116e6bb(4481030)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "ユリス向くin", 2)
		event.ObjsNextMotion(2, "ユリス向くループ")
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 201
		helper_4116e6bb(4481040)
		event.ResetPakuAnim()
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "前向き～右向き")
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 202
		helper_4116e6bb(4481045)
		event.ResetPakuAnim()
		at = 203
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.CmrsSetPos(-162.52, 46.79, -31.74)
		event.CmrsSetRef(19.74, 41.85, -50.98)
		event.ObjsSetMotion(3, "会話2")
		event.SetPakuAnim(3, "口パク")
		at = 204
		helper_4116e6bb(4481050)
		event.ResetPakuAnim()
		event.ObjsSetMotion(3, "立ち")
		at = 205
		helper_4116e6bb(4481055)
		event.ObjsSetMotion(0, "うなづく", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "うなづく", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SndSePlay(var6, 19)
		event.SndSePlay(var6, 20)
		at = 206
		helper_4116e6bb(4481060)
		at = 207
		wait_frames(15)
		event.CmrsSetPos(0.14, 59.84, -159.42)
		event.CmrsSetRef(-0.03, 38.48, -81.63)
		event.SetMotion(42, "消える", 6, -1, 1)
		event.SetCharaShow(39, 0, 1, 0.05)
		event.SndSePlay(var6, 21)
		at = 208
		wait_frames(60)
		event.ObjsSetMotion(2, "歩き")
		event.ObjsMove(2, -0.11, 14.67, -49.09, 60, 1)
		at = 209
		wait_objects(2)
		event.SndSePlay(var6, 22)
		event.ObjsSetMotion(2, "振り向く（逆）")
		event.ObjsRotation(2, 0.0, 3.12, 0.0, 30)
		at = 210
		wait_objects(2)
		event.ObjsSetMotion(2, "立ち")
		at = 211
		wait_frames(30)
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 212
		helper_4116e6bb(4481070)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 213
		helper_4116e6bb(4481075)
		event.ResetPakuAnim()
		at = 214
		wait_frames(30)
		event.CmrsSetPos(-39.91, 25.25, -77.93)
		event.CmrsSetRef(-0.1, 29.77, -48.62)
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 215
		helper_4116e6bb(4481080)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 216
		helper_4116e6bb(4481090)
		event.ResetPakuAnim()
		at = 217
		wait_frames(15)
		event.ObjsSetRot(1, 0.0, -1.38, 0.0)
		event.ObjsResetDaPosition(1)
		event.CmrsSetPos(1.03, 69.38, -3.58)
		event.CmrsSetRef(-0.03, 27.73, -81.63)
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 218
		helper_4116e6bb(4481100)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "わらい口パク")
		at = 219
		helper_4116e6bb(4481110)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "わらい口パク")
		at = 220
		helper_4116e6bb(4481115)
		event.ResetPakuAnim()
		at = 221
		wait_frames(30)
		event.ObjsSetRot(0, 0.0, 0.06, 0.0)
		event.ObjsResetDaPosition(0)
		event.CmrsSetPos(40.04, 39.75, -68.21)
		event.CmrsSetRef(-6.7, 35.75, -106.34)
		event.SndSePlay(var6, 23)
		event.ObjsSetMotion(0, "がっつ", 6)
		event.ObjsNextMotion(0, "がっつL", 4)
		event.SetPakuAnim(0, "わらい口パク")
		at = 222
		helper_4116e6bb(4481120)
		event.ResetPakuAnim()
		event.SndSePlay(var6, 24)
		event.ObjsSetMotion(1, "うなづく", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		at = 223
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			wait_frames_skipping(30)
		end
		if at <= 2 then
			helper_21800000()
			wait_frames_skipping(4)
		end
		if at <= 3 then
			wait_frames_skipping(150)
		end
		if at <= 4 then
			helper_52aadc70(4480010, 150)
		end
		if at <= 5 then
			helper_52aadc70(4480015, -1)
		end
		if at <= 6 then
			wait_frames_skipping(30)
		end
		if at <= 7 then
			helper_8cd371d7(4480020)
		end
		if at <= 8 then
			helper_8cd371d7(4480030)
		end
		if at <= 9 then
			helper_8cd371d7(4480040)
		end
		if at <= 10 then
			wait_frames_skipping(30)
		end
		if at <= 11 then
			wait_frames_skipping(90)
		end
		if at <= 12 then
			wait_frames_skipping(30)
		end
		if at <= 13 then
			wait_frames_skipping(60)
		end
		if at <= 14 then
			helper_8cd371d7(4480050)
		end
		if at <= 15 then
			helper_8cd371d7(4480060)
		end
		if at <= 16 then
			helper_8cd371d7(4480065)
		end
		if at <= 17 then
			wait_frames_skipping(15)
		end
		if at <= 18 then
			helper_8cd371d7(4480070)
		end
		if at <= 19 then
			wait_frames_skipping(30)
		end
		if at <= 20 then
			helper_8cd371d7(4480080)
		end
		if at <= 21 then
			helper_8cd371d7(4480090)
		end
		if at <= 22 then
			helper_238b5abc(2)
		end
		if at <= 23 then
			wait_frames_skipping(15)
		end
		if at <= 24 then
			helper_8cd371d7(4480095)
		end
		if at <= 25 then
			wait_frames_skipping(30)
		end
		if at <= 26 then
			helper_238b5abc(7)
		end
		if at <= 27 then
			helper_238b5abc(7)
		end
		if at <= 28 then
			helper_8cd371d7(4480100)
		end
		if at <= 29 then
			helper_8cd371d7(4480110)
		end
		if at <= 30 then
			helper_8cd371d7(4480120)
		end
		if at <= 31 then
			wait_frames_skipping(15)
		end
		if at <= 32 then
			helper_8cd371d7(4480130)
		end
		if at <= 33 then
			wait_frames_skipping(15)
		end
		if at <= 34 then
			helper_8cd371d7(4480140)
		end
		if at <= 35 then
			helper_8cd371d7(4480150)
		end
		if at <= 36 then
			helper_8cd371d7(4480155)
		end
		if at <= 37 then
			wait_frames_skipping(30)
		end
		if at <= 38 then
			helper_8cd371d7(4480160)
		end
		if at <= 39 then
			helper_52aadc70(4480170, -1)
		end
		if at <= 40 then
			helper_52aadc70(4480180, -1)
		end
		if at <= 41 then
			helper_52aadc70(4480183, -1)
		end
		if at <= 42 then
			helper_344d6cd8()
		end
		if at <= 43 then
			helper_8cd371d7(4480185)
		end
		if at <= 44 then
			helper_8cd371d7(4480188)
		end
		if at <= 45 then
			helper_8cd371d7(4480190)
		end
		if at <= 46 then
			wait_frames_skipping(30)
		end
		if at <= 47 then
			helper_8cd371d7(4480200)
		end
		if at <= 48 then
			wait_frames_skipping(15)
		end
		if at <= 49 then
			helper_52aadc70(4480210, -1)
		end
		if at <= 50 then
			wait_frames_skipping(15)
		end
		if at <= 51 then
			helper_8cd371d7(4480220)
		end
		if at <= 52 then
			wait_frames_skipping(30)
		end
		if at <= 53 then
			helper_8cd371d7(4480230)
		end
		if at <= 54 then
			wait_frames_skipping(30)
		end
		if at <= 55 then
			helper_8cd371d7(4480240)
		end
		if at <= 56 then
			wait_frames_skipping(30)
		end
		if at <= 57 then
			helper_8cd371d7(4480250)
		end
		if at <= 58 then
			helper_8cd371d7(4480260)
		end
		if at <= 59 then
			helper_8cd371d7(4480270)
		end
		if at <= 60 then
			helper_8cd371d7(4480275)
		end
		if at <= 61 then
			wait_frames_skipping(30)
		end
		if at <= 62 then
			helper_8cd371d7(4480280)
		end
		if at <= 63 then
			helper_8cd371d7(4480290)
		end
		if at <= 64 then
			helper_8cd371d7(4480300)
		end
		if at <= 65 then
			wait_frames_skipping(30)
		end
		if at <= 66 then
			helper_8cd371d7(4480310)
		end
		if at <= 67 then
			wait_frames_skipping(30)
		end
		if at <= 68 then
			helper_8cd371d7(4480320)
		end
		if at <= 69 then
			wait_frames_skipping(30)
		end
		if at <= 70 then
			helper_8cd371d7(4480330)
		end
		if at <= 71 then
			helper_8cd371d7(4480340)
		end
		if at <= 72 then
			helper_8cd371d7(4480350)
		end
		if at <= 73 then
			wait_frames_skipping(30)
		end
		if at <= 74 then
			wait_frames_skipping(30)
		end
		if at <= 75 then
			helper_8cd371d7(4480360)
		end
		if at <= 76 then
			helper_238b5abc(8)
		end
		if at <= 77 then
			helper_8cd371d7(4480365)
		end
		if at <= 78 then
			wait_frames_skipping(30)
		end
		if at <= 79 then
			helper_8cd371d7(4480370)
		end
		if at <= 80 then
			wait_frames_skipping(30)
		end
		if at <= 81 then
			helper_8cd371d7(4480380)
		end
		if at <= 82 then
			wait_frames_skipping(15)
		end
		if at <= 83 then
			wait_frames_skipping(30)
		end
		if at <= 84 then
			helper_238b5abc(8)
		end
		if at <= 85 then
			helper_238b5abc(7)
		end
		if at <= 86 then
			helper_8cd371d7(4480390)
		end
		if at <= 87 then
			helper_52aadc70(4480400, -1)
		end
		if at <= 88 then
			helper_52aadc70(4480410, -1)
		end
		if at <= 89 then
			wait_frames_skipping(30)
		end
		if at <= 90 then
			wait_frames_skipping(30)
		end
		if at <= 91 then
			wait_frames_skipping(30)
		end
		if at <= 92 then
			wait_frames_skipping(30)
		end
		if at <= 93 then
			helper_344d6cd8()
		end
		if at <= 94 then
			wait_frames_skipping(30)
		end
		if at <= 95 then
			wait_frames_skipping(60)
		end
		if at <= 96 then
			helper_8cd371d7(4480420)
		end
		if at <= 97 then
			wait_frames_skipping(15)
		end
		if at <= 98 then
			helper_8cd371d7(4480430)
		end
		if at <= 99 then
			wait_frames_skipping(15)
		end
		if at <= 100 then
			helper_8cd371d7(4480440)
		end
		if at <= 101 then
			wait_frames_skipping(15)
		end
		if at <= 102 then
			helper_8cd371d7(4480450)
		end
		if at <= 103 then
			wait_frames_skipping(15)
		end
		if at <= 104 then
			helper_8cd371d7(4480460)
		end
		if at <= 105 then
			helper_8cd371d7(4480470)
		end
		if at <= 106 then
			helper_8cd371d7(4480480)
		end
		if at <= 107 then
			wait_frames_skipping(30)
		end
		if at <= 108 then
			helper_8cd371d7(4480490)
		end
		if at <= 109 then
			helper_8cd371d7(4480495)
		end
		if at <= 110 then
			helper_8cd371d7(4480500)
		end
		if at <= 111 then
			helper_8cd371d7(4480510)
		end
		if at <= 112 then
			helper_8cd371d7(4480520)
		end
		if at <= 113 then
			wait_frames_skipping(15)
		end
		if at <= 114 then
			wait_frames_skipping(30)
		end
		if at <= 115 then
			helper_8cd371d7(4480530)
		end
		if at <= 116 then
			helper_8cd371d7(4480535)
		end
		if at <= 117 then
			wait_frames_skipping(15)
		end
		if at <= 118 then
			helper_8cd371d7(4480540)
		end
		if at <= 119 then
			helper_8cd371d7(4480550)
		end
		if at <= 120 then
			wait_frames_skipping(15)
		end
		if at <= 121 then
			helper_8cd371d7(4480560)
		end
		if at <= 122 then
			wait_frames_skipping(30)
		end
		if at <= 123 then
			helper_8cd371d7(4480565)
		end
		if at <= 124 then
			wait_frames_skipping(15)
		end
		if at <= 125 then
			helper_8cd371d7(4480570)
		end
		if at <= 126 then
			helper_8cd371d7(4480575)
		end
		if at <= 127 then
			wait_frames_skipping(15)
		end
		if at <= 128 then
			helper_8cd371d7(4480580)
		end
		if at <= 129 then
			helper_8cd371d7(4480590)
		end
		if at <= 130 then
			wait_frames_skipping(15)
		end
		if at <= 131 then
			helper_8cd371d7(4480600)
		end
		if at <= 132 then
			helper_8cd371d7(4480605)
		end
		if at <= 133 then
			helper_8cd371d7(4480610)
		end
		if at <= 134 then
			helper_8cd371d7(4480615)
		end
		if at <= 135 then
			helper_8cd371d7(4480620)
		end
		if at <= 136 then
			helper_8cd371d7(4480630)
		end
		if at <= 137 then
			helper_8cd371d7(4480635)
		end
		if at <= 138 then
			helper_8cd371d7(4480640)
		end
		if at <= 139 then
			helper_8cd371d7(4480645)
		end
		if at <= 140 then
			helper_8cd371d7(4480650)
		end
		if at <= 141 then
			helper_8cd371d7(4480660)
		end
		if at <= 142 then
			helper_8cd371d7(4480665)
		end
		if at <= 143 then
			helper_8cd371d7(4480670)
		end
		if at <= 144 then
			helper_8cd371d7(4480680)
		end
		if at <= 145 then
			helper_8cd371d7(4480690)
		end
		if at <= 146 then
			helper_8cd371d7(4480700)
		end
		if at <= 147 then
			helper_8cd371d7(4480710)
		end
		if at <= 148 then
			helper_8cd371d7(4480720)
		end
		if at <= 149 then
			helper_8cd371d7(4480730)
		end
		if at <= 150 then
			helper_8cd371d7(4480735)
		end
		if at <= 151 then
			helper_8cd371d7(4480740)
		end
		if at <= 152 then
			helper_8cd371d7(4480750)
		end
		if at <= 153 then
			helper_8cd371d7(4480760)
		end
		if at <= 154 then
			helper_8cd371d7(4480770)
		end
		if at <= 155 then
			helper_8cd371d7(4480775)
		end
		if at <= 156 then
			helper_8cd371d7(4480780)
		end
		if at <= 157 then
			helper_8cd371d7(4480790)
		end
		if at <= 158 then
			helper_8cd371d7(4480795)
		end
		if at <= 159 then
			helper_8cd371d7(4480800)
		end
		if at <= 160 then
			helper_8cd371d7(4480805)
		end
		if at <= 161 then
			helper_8cd371d7(4480810)
		end
		if at <= 162 then
			helper_8cd371d7(4480815)
		end
		if at <= 163 then
			helper_8cd371d7(4480820)
		end
		if at <= 164 then
			wait_frames_skipping(60)
		end
		if at <= 165 then
			helper_8cd371d7(4480830)
		end
		if at <= 166 then
			helper_8cd371d7(4480840)
		end
		if at <= 167 then
			helper_8cd371d7(4480850)
		end
		if at <= 168 then
			helper_8cd371d7(4480860)
		end
		if at <= 169 then
			helper_8cd371d7(4480865)
		end
		if at <= 170 then
			wait_frames_skipping(15)
		end
		if at <= 171 then
			helper_8cd371d7(4480870)
		end
		if at <= 172 then
			helper_8cd371d7(4480880)
		end
		if at <= 173 then
			wait_frames_skipping(15)
		end
		if at <= 174 then
			helper_8cd371d7(4480890)
		end
		if at <= 175 then
			wait_frames_skipping(15)
		end
		if at <= 176 then
			helper_8cd371d7(4480900)
		end
		if at <= 177 then
			wait_frames_skipping(15)
		end
		if at <= 178 then
			helper_8cd371d7(4480910)
		end
		if at <= 179 then
			helper_8cd371d7(4480920)
		end
		if at <= 180 then
			wait_frames_skipping(30)
		end
		if at <= 181 then
			helper_8cd371d7(4480930)
		end
		if at <= 182 then
			helper_8cd371d7(4480940)
		end
		if at <= 183 then
			helper_8cd371d7(4480950)
		end
		if at <= 184 then
			helper_8cd371d7(4480955)
		end
		if at <= 185 then
			helper_8cd371d7(4480960)
		end
		if at <= 186 then
			wait_frames_skipping(15)
		end
		if at <= 187 then
			wait_frames_skipping(30)
		end
		if at <= 188 then
			wait_frames_skipping(36)
		end
		if at <= 189 then
			helper_8cd371d7(4480970)
		end
		if at <= 190 then
			helper_8cd371d7(4480980)
		end
		if at <= 191 then
			helper_8cd371d7(4480985)
		end
		if at <= 192 then
			helper_8cd371d7(4480990)
		end
		if at <= 193 then
			helper_8cd371d7(4481000)
		end
		if at <= 194 then
			wait_frames_skipping(30)
		end
		if at <= 195 then
			helper_8cd371d7(4481010)
		end
		if at <= 196 then
			helper_8cd371d7(4481015)
		end
		if at <= 197 then
			helper_8cd371d7(4481020)
		end
		if at <= 198 then
			wait_frames_skipping(15)
		end
		if at <= 199 then
			helper_8cd371d7(4481030)
		end
		if at <= 200 then
			helper_8cd371d7(4481040)
		end
		if at <= 201 then
			helper_8cd371d7(4481045)
		end
		if at <= 202 then
			wait_frames_skipping(30)
		end
		if at <= 203 then
			helper_8cd371d7(4481050)
		end
		if at <= 204 then
			helper_8cd371d7(4481055)
		end
		if at <= 205 then
			helper_8cd371d7(4481060)
		end
		if at <= 206 then
			wait_frames_skipping(15)
		end
		if at <= 207 then
			wait_frames_skipping(60)
		end
		if at <= 208 then
			helper_238b5abc(2)
		end
		if at <= 209 then
			helper_238b5abc(2)
		end
		if at <= 210 then
			wait_frames_skipping(30)
		end
		if at <= 211 then
			helper_8cd371d7(4481070)
		end
		if at <= 212 then
			helper_8cd371d7(4481075)
		end
		if at <= 213 then
			wait_frames_skipping(30)
		end
		if at <= 214 then
			helper_8cd371d7(4481080)
		end
		if at <= 215 then
			helper_8cd371d7(4481090)
		end
		if at <= 216 then
			wait_frames_skipping(15)
		end
		if at <= 217 then
			helper_8cd371d7(4481100)
		end
		if at <= 218 then
			helper_8cd371d7(4481110)
		end
		if at <= 219 then
			helper_8cd371d7(4481115)
		end
		if at <= 220 then
			wait_frames_skipping(30)
		end
		if at <= 221 then
			helper_8cd371d7(4481120)
		end
		if at <= 222 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 224
	vm.entry(224)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	at = 225
	wait_frames(35)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.BgmLoadCancel()
	helper_13d1c()
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local flag_4: s32 = 0
	local flag_5: s32 = 0
	local var5: s32 = 0
	local at: number = 0
	return vm.guard(function()
		helper_ec30b150()
		flag = event.GetFlag(464) or flag
		if flag == 0 then
			at = 1
			helper_e4945fa4()
		end
		flag_2 = event.GetFlag(444) or flag_2
		flag_3 = event.GetFlag(448) or flag_3
		if flag_2 == 1 and flag_3 == 0 then
			event.SetFlag(448, 1)
			at = 2
			helper_16918()
			event.MapJump_3(-1, "s09", 500)
			at = 3
			vm.wait(3)
			return
		end
		flag_4 = event.GetFlag(540) or flag_4
		flag_5 = event.GetFlag(600) or flag_5
		if flag_4 == 1 and flag_5 == 0 then
			event.BgmLoadCancel()
			event.MapJump_3(-1, "s53", 500)
			at = 4
			vm.wait(4)
			return
		end
		var5 = event.GetCnt(2) or var5
		if var5 == 0 then
			helper_9dafbc83(0.0, vm.f32(310.2), vm.f32(938.3), vm.f32(3.14))
		end
		if var5 == 1 then
			helper_9dafbc83(-685.0, vm.f32(226.9), 665.0, vm.f32(2.355))
		end
		if var5 == 2 then
			helper_9dafbc83(-685.0, vm.f32(226.9), -665.0, vm.f32(0.785))
		end
		if var5 == 3 then
			helper_9dafbc83(685.0, vm.f32(226.9), -665.0, vm.f32(-0.785))
		end
		if var5 == 4 then
			helper_9dafbc83(685.0, vm.f32(226.9), 665.0, vm.f32(-2.355))
		end
		event.ResetCamera(1, 0.0, 10)
		event.SetFadeIn(30)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_16918()
				return vm.continue_with(function()
					event.MapJump_3(-1, "s09", 500)
					at = 3
					vm.wait(3)
					return
				end)
			end
			return 0
		end
		if at <= 4 then
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_16918

--- Event 400, which map data, a script or the engine runs by number.
function script.event_400()
	helper_3a1e288a(0.0, 1)
	event.SetCnt(2, 0)
	event.MapJump_2(-1, "f03")
	vm.wait(2)
end

--- Event 401, which map data, a script or the engine runs by number.
function script.event_401()
	helper_3a1e288a(vm.f32(-0.7853982), 0)
	event.SetCnt(2, 1)
	event.MapJump_2(-1, "f03")
	vm.wait(2)
end

--- Event 402, which map data, a script or the engine runs by number.
function script.event_402()
	helper_3a1e288a(vm.f32(-2.3561945), 0)
	event.SetCnt(2, 2)
	event.MapJump_2(-1, "f03")
	vm.wait(2)
end

--- Event 403, which map data, a script or the engine runs by number.
function script.event_403()
	helper_3a1e288a(vm.f32(2.3561945), 0)
	event.SetCnt(2, 3)
	event.MapJump_2(-1, "f03")
	vm.wait(2)
end

--- Event 404, which map data, a script or the engine runs by number.
function script.event_404()
	helper_3a1e288a(vm.f32(0.7853982), 0)
	event.SetCnt(2, 4)
	event.MapJump_2(-1, "f03")
	vm.wait(2)
end

--- Event 1000, which map data, a script or the engine runs by number.
script.event_1000 = helper_00c33055

--- Event 14480, which map data, a script or the engine runs by number.
function script.event_14480()
	helper_16918()
	event.MapJump_3(-1, "s09", 500)
	vm.wait(2)
end

--- Event 14640, which map data, a script or the engine runs by number.
script.event_14640 = helper_e4945fa4

--- Event 16000, which map data, a script or the engine runs by number.
function script.event_16000()
	event.MapJump_3(-1, "s53", 500)
	vm.wait(1)
end

return script
