--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_0e75aa9e = require("@lib/event/helper_0e75aa9e")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_2f8c501c = require("@lib/event/helper_2f8c501c")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_705b02bc = require("@lib/event/helper_705b02bc")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_917013c0 = require("@lib/event/helper_917013c0")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_7df574d3()
	local var0: s32 = 0
	local var1: s32 = 0
	local active_chr_no: s32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local var6: s32 = 0
	local projection: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(612, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(33)
		event.LoadSound(7810)
		var0 = event.SndLoadSound_2(7810) or var0
		var1 = event.SndLoadSound_3(8, "snd2/sp/sp_051.sound.json") or var1
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e600/e612/")
		event.LoadMes(0, 5, "e612_1.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e612_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e612_monica.gltf", "info", 0)
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
			event.LoadEquip(5, 0, 0, "info", 8, 10)
			event.LoadEquip(5, 0, 1, "info", 8, 11)
			event.LoadMotion(5, "event/e600/e612/e612_mints.gltf", "info", 8)
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
			event.LoadEquip(5, 1, 0, "info", 8, 10)
			event.LoadEquip(5, 1, 1, "info", 8, 11)
			event.LoadMotion(5, "event/e600/e612/e612_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.CharaActive(1, 10)
		event.CharaActive(1, 11)
		event.LoadChara(5, "event/e600/e612/e612_atora_a.gltf", "info", 12)
		event.CharaActive(12)
		event.EohSyncChara(2, 12)
		event.ObjsInit(2, 12)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "event/e600/e612/e612_atora_b.gltf", "info", 13)
		event.CharaActive(13)
		event.EohSyncChara(3, 13)
		event.ObjsInit(3, 13)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "event/e600/e612/e612_sun.gltf", "info", 14)
		event.CharaActive(14)
		event.EohSyncChara(4, 14)
		event.ObjsInit(4, 14)
		event.ObjsSyncObj(4, 4)
		event.LoadChara(5, "event/e600/e612/e612_griffon.gltf", "info", 15)
		event.CharaActive(15)
		event.EohSyncChara(5, 15)
		event.ObjsInit(5, 15)
		event.ObjsSyncObj(5, 5)
		event.LoadChara(5, "event/e600/e612/e612_sun_ray.gltf", "info", 16)
		event.CharaActive(16)
		event.EohSyncChara(6, 16)
		event.ObjsInit(6, 16)
		event.ObjsSyncObj(6, 6)
		event.LoadChara(5, "event/e600/e612/e612_ghikari.gltf", "info", 17)
		event.CharaActive(17)
		event.EohSyncChara(7, 17)
		event.ObjsInit(7, 17)
		event.ObjsSyncObj(7, 7)
		event.LoadChara(5, "event/e600/e612/e612_hiraki.gltf", "info", 18)
		event.CharaActive(18)
		event.EohSyncChara(8, 18)
		event.ObjsInit(8, 18)
		event.ObjsSyncObj(8, 8)
		event.LoadChara(5, "event/e600/e612/e612_sun_eye.gltf", "info", 19)
		event.CharaActive(19)
		event.EohSyncChara(9, 19)
		event.ObjsInit(9, 19)
		event.ObjsSyncObj(9, 9)
		event.EohSetPos(0, 18.48, 0.2, 307.68)
		event.EohSetRot(0, 0.0, -0.53, 0.0)
		event.EohSetMotion(0, "戦闘立ち", 4)
		event.EohSetFootSoundId(0, 21)
		event.EohSetPos(1, -23.14, 0.2, 308.89)
		event.EohSetRot(1, 0.0, 0.23, 0.0)
		event.EohSetMotion(1, "剣構え", 4)
		event.EohSetFootSoundId(1, 21)
		event.EohSetPos(4, 4.86, 0.2, 441.28)
		event.EohSetRot(4, 0.0, -3.13, 0.0)
		event.EohSetMotion(4, "よろよろ立ち", 4)
		event.EohSetFootSoundId(4, 21)
		event.SetReference(14, "hikari", 19)
		event.EohSetShow(9, 0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-78.74, 78.05, 198.62)
		event.CmrsSetRef(13.39, 2.21, 381.09)
		event.CharaActive(0)
		event.CharaActive(8)
		event.CharaActive(9)
		event.CharaActive(14)
		event.CharaActive(0, 12)
		event.CharaActive(0, 13)
		event.CharaActive(0, 15)
		event.CharaActive(0, 16)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.SetFadeIn(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "くるし目パチ")
		at = 3
		wait_frames(60)
		event.CmrsSetPos(-41.54, 14.05, 496.91)
		event.CmrsSetRef(12.6, 11.66, 379.4)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "くるし目～目とじ")
		event.ObjsSetMotion(4, "よろよろ会話", 6)
		event.ObjsNextMotion(4, "よろよろ立ち", 4)
		at = 4
		helper_1584c528(6120010, -1)
		event.SndSePlay(var0, 0)
		event.ObjsSetMotion(4, "倒れる", 6)
		event.ObjsNextMotion(4, "倒れるＬ", 4)
		at = 5
		wait_objects(4)
		at = 6
		wait_frames(60)
		event.CmrsSetPos(-88.01, 116.61, 327.84)
		event.CmrsSetRef(2.74, 11.66, 406.61)
		event.SetCharaShow(1, 0)
		event.SetCharaShow(2, 0)
		event.CharaActive(0, 10)
		event.CharaActive(0, 11)
		event.ObjsSetPos(0, 33.71, 0.2, 365.11)
		event.ObjsSetRot(0, 0.0, -0.17, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -23.96, 0.2, 368.34)
		event.ObjsSetRot(1, 0.0, 0.23, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetMotion(0, "歩き", 4)
		event.ObjsMove(0, 28.35, 0.2, 422.7, 60, 1)
		event.ObjsRotDelay(0, 30)
		event.ObjsRotation(0, 0.0, -0.89, 0.0, 50)
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMove(1, -23.16, 0.2, 421.62, 70, 1)
		event.ObjsRotDelay(1, 30)
		event.ObjsRotation(1, 0.0, 0.95, 0.0, 50)
		event.ObjsMotionDelay(1, 70)
		event.ObjsSetMotion(1, "立ち")
		at = 7
		wait_frames(90)
		at = 8
		helper_4116e6bb(6120020)
		at = 9
		helper_4116e6bb(6120030)
		event.CmrsSetPos(-36.88, 13.32, 371.24)
		event.CmrsSetRef(-0.58, 15.51, 433.62)
		event.ObjsSetPos(0, 24.07, 0.2, 434.14)
		event.ObjsSetRot(0, 0.0, -1.61, 0.0)
		event.ObjsSetMotion(0, "下見立ち", 4)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -16.95, 0.2, 431.66)
		event.ObjsSetRot(1, 0.0, 1.19, 0.0)
		event.ObjsSetMotion(1, "下向き立ち", 4)
		event.ObjsResetDaPosition(1)
		at = 10
		wait_frames(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目～おどろき目")
		event.ObjsTexAnime(0, 1, "口とじ～大口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目～おどろき目")
		event.ObjsTexAnime(1, 1, "口とじ～大口")
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.SndSePlay(var0, 1)
		event.ObjsSetMotion(4, "起き上がる", 6)
		event.ObjsNextMotion(4, "石持ち立ち")
		event.ObjsSetMotion(0, "のけぞる", 6)
		event.ObjsNextMotion(0, "のけぞるL", 4)
		event.ObjsSetMotion(1, "のけぞり", 6)
		event.ObjsNextMotion(1, "のけぞりL", 4)
		at = 11
		wait_objects(4)
		event.SetStatus(1, 0, 256, 1)
		event.CmrsSetPos(18.01, 15.67, 424.73)
		event.CmrsSetRef(26.69, 15.51, 433.92)
		event.CharaActive(12)
		event.ObjsSetPos(4, 9.42, 0.2, 432.34)
		event.ObjsSetRot(4, 0.0, 1.95, 0.0)
		event.ObjsResetDaPosition(4)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 0 then
			event.AtramiriaOnOff(0, 0, 0)
		else
			event.AtramiriaOnOff(0, 8, 0)
		end
		event.ObjsSetPos(2, 25.41, 12.88, 433.35)
		event.ObjsSetRot(2, 0.0, -1.68, 0.0)
		event.ObjsSetMotion(4, "ユリスからもぎ取る", 6)
		event.ObjsSetStep(4, 0.4)
		at = 12
		wait_frames(16)
		event.SndSePlay(var0, 2)
		event.ObjsMove(2, 24.24, 8.61, 429.7, 3)
		at = 13
		wait_frames(6)
		event.CharaActive(0, 12)
		event.CmrsSetPos(-18.72, 20.05, 442.61)
		event.CmrsSetRef(-16.52, 16.03, 434.01)
		event.CharaActive(1, 13)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 1 then
			event.AtramiriaOnOff(1, 0, 0)
		else
			event.AtramiriaOnOff(1, 8, 0)
		end
		event.ObjsSetPos(4, -3.81, 0.2, 442.31)
		event.ObjsSetRot(4, 0.0, -2.33, 0.0)
		event.ObjsResetDaPosition(4)
		event.ObjsSetPos(3, -15.16, 15.1, 434.91)
		event.ObjsSetRot(3, -0.6, 0.72, 0.0)
		event.ObjsSetMotion(1, "目で追うL", 4)
		event.ObjsResetDaPosition(1)
		event.ObjsSetMotion(4, "モニカから奪う", 4)
		event.ObjsSetStep(4, 0.4)
		event.SetStatus(1, 0, 256, 0)
		at = 14
		wait_frames(10)
		event.SndSePlay(var0, 3)
		event.ObjsMove(3, -8.89, 18.29, 433.34, 3)
		at = 15
		wait_frames(8)
		event.CmrsSetPos(-32.04, 13.37, 229.44)
		event.CmrsSetRef(23.02, 3.56, 367.15)
		event.CharaActive(1, 12)
		event.CharaActive(1, 13)
		event.ObjsSetPos(2, 0.0, 0.0, 0.0)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSetPos(3, 0.0, 0.0, 0.0)
		event.ObjsSetRot(3, 0.0, 0.0, 0.0)
		event.SetReference(14, "aka_null", 12)
		event.SetReference(14, "ao_null", 13)
		event.ObjsSetPos(0, 24.07, 0.2, 434.14)
		event.ObjsSetRot(0, 0.0, -1.61, 0.0)
		event.ObjsSetMotion(0, "のけぞるL", 4)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -16.95, 0.2, 431.66)
		event.ObjsSetRot(1, 0.0, 1.19, 0.0)
		event.ObjsSetMotion(1, "のけぞりL", 4)
		event.ObjsResetDaPosition(1)
		event.ObjsSetPos(4, 4.86, 0.2, 441.28)
		event.ObjsSetRot(4, 0.0, -3.13, 0.0)
		event.ObjsResetDaPosition(4)
		event.ObjsSetMotion(4, "ジャンプ", 4)
		at = 16
		wait_frames(30)
		event.SndSePlay(var0, 4)
		event.ObjsMove(4, -4.5, 0.2, 273.3, 30)
		event.ObjsMotionDelay(4, 30)
		event.ObjsNextMotion(4, "石持ち立ち")
		event.ObjsSeDelay(4, 30)
		event.ObjsSePlay(4, var0, 5)
		event.ObjsSetMotion(0, "しまった！", 6)
		event.ObjsNextMotion(0, "しまった！L", 4)
		event.ObjsSetMotion(1, "目で追う", 6)
		event.ObjsNextMotion(1, "目で追うL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.SetPakuAnim(0, "通常口パク")
		at = 17
		helper_1584c528(6120040, 45)
		event.SetPakuAnim(1, "通常口パク")
		at = 18
		helper_1584c528(6120050, 70)
		event.PlayBgm(0)
		event.CmrsSetPos(-33.83, 58.84, 228.9)
		event.CmrsSetRef(2.4, 12.62, 165.61)
		event.ObjsSetPos(4, -0.94, 0.2, 167.47)
		event.ObjsResetDaPosition(4)
		event.SndSePlay(var0, 6)
		event.ObjsSetMotion(4, "振り返る", 6)
		event.ObjsRotation(4, 0.0, -0.01, 0.0, 30)
		event.ObjsMotionDelay(4, 30)
		event.ObjsNextMotion(4, "石持ち立ち")
		at = 19
		wait_objects(4)
		at = 20
		wait_frames(30)
		event.ObjsSetMotion(4, "不敵に笑う", 6)
		event.ObjsNextMotion(4, "不敵に笑うＬ", 4)
		event.ObjsMotionDelay(4, 60)
		event.ObjsNextMotion(4, "不敵に笑う戻り", 4)
		event.ObjsNextMotion(4, "石持ち立ち", 4)
		at = 21
		helper_1584c528(6120060, -1)
		at = 22
		wait_frames(30)
		at = 23
		wait_objects(4)
		event.ObjsSetMotion(4, "石持ち会話", 6)
		event.ObjsNextMotion(4, "石持ち立ち", 4)
		at = 24
		helper_1584c528(6120065, -1)
		at = 25
		wait_objects(4)
		event.CmrsSetPos(-1.12, 3.57, 211.52)
		event.CmrsSetRef(-1.09, 17.17, 165.43)
		event.ObjsSetMotion(4, "力を込める", 6)
		event.ObjsNextMotion(4, "力を込めるＬ", 4)
		at = 26
		wait_frames(60)
		event.CmrsSetPos(30.46, 10.46, 194.28)
		event.CmrsSetRef(-4.46, 14.37, 169.28)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "こわれ目～赤目")
		event.EohSetShow(9, 1)
		event.ObjsSetMotion(4, "前傾姿勢", 6)
		event.ObjsNextMotion(4, "前傾姿勢Ｌ", 4)
		event.CharaActive(16)
		event.SetCharaShow(16, 1, 1, 0.033333335)
		event.ObjsSetPos(6, -0.95, 0.2, 164.64)
		event.ObjsSetMotion(6, "前傾姿勢Ｌ")
		event.CmrsQuake2(0.0, 0.2, 0.0, 360)
		event.SndSePlay(var0, 7)
		at = 27
		helper_1584c528(6120070, 60)
		event.ObjsSetRot(0, 0.0, -2.81, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsResetDaPosition(0)
		event.ObjsSetRot(1, 0.0, 2.99, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsResetDaPosition(1)
		at = 28
		wait_frames(60)
		event.SetCrossfade(30)
		event.CmrsSetPos(27.23, 15.0, 106.78)
		event.CmrsSetRef(5.4, 11.56, 187.66)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(0, 1, "大口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 1, "大口")
		at = 29
		wait_frames(90)
		event.CmrsSetPos(1.44, 19.01, 221.87)
		event.CmrsSetRef(-0.86, 15.58, 174.12)
		event.ObjsSetMotion(6, "アトラミリア光る")
		at = 30
		wait_frames(60)
		event.CmrsSetPos(69.6, 17.0, 511.44)
		event.CmrsSetRef(42.17, 15.58, 462.62)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "目とじ")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "目とじ")
		event.ObjsSetMotion(6, "発光")
		event.ObjsSetStep(6, 0.2)
		at = 31
		wait_frames(15)
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "！！", 6)
		event.ObjsNextMotion(0, "！！L", 4)
		event.ObjsMotionDelay(1, 30)
		event.ObjsSetMotion(1, "まぶしい", 6)
		event.ObjsNextMotion(1, "まぶしいL", 4)
		at = 32
		wait_frames(15)
		at = 33
		helper_1584c528(6120080, 30)
		event.SetFadeOut(30, 255, 255, 255)
		at = 34
		wait_frames(30)
		event.FadeOutBgm(30)
		at = 35
		wait_frames(30)
		event.CharaActive(0, 14)
		event.CharaActive(0, 19)
		event.CharaActive(0, 12)
		event.CharaActive(0, 13)
		event.CharaActive(0, 16)
		event.CharaActive(15)
		event.ObjsSetPos(5, -0.95, 0.2, 164.64)
		event.CmrsSetPos(-1.32, 10.92, 232.98)
		event.CmrsSetRef(-1.51, 5.74, 176.6)
		event.ObjsSetMotion(5, "立ち（前傾）")
		at = 36
		wait_frames(30)
		event.SetFadeIn(30, 255, 255, 255)
		event.SndSePlay(var1, 0)
		event.CmrsMove2(-1.32, 10.92, 232.98, -1.51, 45.85, 176.6, 180, 0, 0.5)
		at = 37
		wait_camera()
		at = 38
		wait_frames(30)
		event.CmrsSetPos(83.44, 109.23, 85.27)
		event.CmrsSetRef(11.63, 44.02, 193.11)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おどろき目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おどろき目パチ")
		event.ObjsTexAnime(1, 1, "半口")
		event.ObjsSetPos(0, 16.61, 0.2, 323.16)
		event.ObjsSetRot(0, 0.0, -2.81, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -19.07, 0.2, 324.55)
		event.ObjsSetRot(1, 0.0, 2.99, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsResetDaPosition(1)
		event.ObjsSetMotion(5, "身を起こす", 6)
		event.ObjsNextMotion(5, "身を起こすＬ", 4)
		event.CmrsMove2(2.49, 42.34, 46.29, 5.69, 44.02, 193.66, 120, 0, 0.5)
		at = 39
		helper_1584c528(6120090, 180)
		at = 40
		wait_camera()
		event.CmrsSetPos(37.69, 39.48, 235.92)
		event.CmrsSetRef(-1.18, 50.99, 170.42)
		x = vm.f32(-22.54)
		y = vm.f32(20.9)
		z = vm.f32(332.85)
		do
			local out1, out2, out3 = event.SubVector(x, y, z, -8.96, 10.09, 279.73)
			x = out1 or x
			y = out2 or y
			z = out3 or z
		end
		event.SetWind(10, x, y, z)
		event.SetMotionBlur(100)
		event.SndSePlay(var0, 8)
		event.ObjsSetMotion(5, "開く", 6)
		event.ObjsNextMotion(5, "開くＬ", 4)
		event.CharaActive(18)
		event.ObjsMotionDelay(8, 40)
		event.ObjsSetMotion(8, "開くＬ", 6)
		event.ObjsSetMotion(0, "！！L", 4)
		event.ObjsSetMotion(1, "まぶしいL", 4)
		event.CmrsMove2(56.18, 9.11, 279.47, -1.71, 41.43, 163.58, 90, 0, 0.5)
		at = 41
		wait_camera()
		event.CmrsSetPos(-63.65, 24.75, 289.98)
		event.CmrsSetRef(19.98, 11.48, 346.64)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "目とじ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "目とじ")
		event.ObjsSetMotion(5, "立ち", 4)
		at = 42
		wait_frames(60)
		event.CharaActive(0, 18)
		event.CmrsSetPos(45.23, 12.53, 223.31)
		event.CmrsSetRef(1.37, 42.75, 168.22)
		event.SetWind(-1)
		event.SetMotionBlur(0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(5, "会話１")
		at = 43
		helper_1584c528(6120100, -1)
		at = 44
		wait_frames(60)
		at = 45
		wait_objects(5)
		event.CmrsSetPos(-1.79, 7.56, 386.42)
		event.CmrsSetRef(-1.26, 25.12, 274.31)
		event.StopBgm(0)
		at = 46
		wait_frames(4)
		event.LoadBgm(167)
		event.PlayBgm(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsSetMotion(5, "立ち１から立ち２", 6)
		event.ObjsNextMotion(5, "立ち2", 4)
		at = 47
		helper_4116e6bb(6120110)
		at = 48
		wait_objects(5)
		event.CmrsSetPos(-49.43, 5.59, 296.0)
		event.CmrsSetRef(-7.47, 21.65, 323.75)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "前～左～前")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.SetPakuAnim(1, "通常口パク")
		at = 49
		helper_4116e6bb(6120120)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 50
		helper_4116e6bb(6120125)
		at = 51
		wait_objects(1)
		event.CmrsSetPos(-1.79, 7.56, 386.42)
		event.CmrsSetRef(-1.26, 25.12, 274.31)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		at = 52
		helper_4116e6bb(6120130)
		event.ObjsSetMotion(5, "会話２", 4)
		event.ObjsMotionDelay(5, 30)
		event.ObjsNextMotion(5, "立ち2", 4)
		at = 53
		helper_4116e6bb(6120135)
		event.SetPakuAnim(1, "通常口パク")
		at = 54
		helper_4116e6bb(6120140)
		at = 55
		wait_objects(5)
		event.CmrsSetPos(45.23, 12.53, 223.31)
		event.CmrsSetRef(1.37, 42.75, 168.22)
		event.ObjsSetMotion(5, "会話２", 4)
		event.ObjsMotionDelay(5, 60)
		event.ObjsNextMotion(5, "立ち2", 4)
		at = 56
		helper_1584c528(6120150, 150)
		at = 57
		wait_objects(5)
		event.CmrsSetPos(105.2, 163.52, 42.91)
		event.CmrsSetRef(-2.23, 23.98, 214.38)
		event.ObjsSetMotion(5, "会話２", 6)
		event.ObjsNextMotion(5, "立ち2", 4)
		at = 58
		helper_1584c528(6120160, 150)
		event.ObjsSetMotion(5, "立ち２から立ち１", 6)
		event.ObjsNextMotion(5, "立ち", 4)
		at = 59
		helper_1584c528(6120165, 240)
		at = 60
		wait_objects(5)
		event.ObjsSetMotion(5, "立ち１から立ち２", 6)
		event.ObjsNextMotion(5, "立ち2", 4)
		event.SetCrossfade(30)
		event.CmrsSetPos(4.09, 53.77, 197.71)
		event.CmrsSetRef(12.21, 56.05, 168.85)
		event.ObjsSetMotion(5, "会話２")
		event.StreamOpen3(1, 6120170)
		at = 61
		helper_9cbdc640(1)
		event.StreamPlay(1)
		event.CmrsMove(7.33, 53.77, 186.18, 12.21, 56.05, 168.85, 350)
		event.MesMake_2(0, 6120170)
		open_message(0, -1, 8, 0, 0)
		while var6 < 350 do
			projection = vm.f32(vm.f32(vm.f32(vm.f32(-224.90002) * var6) / 350) + vm.f32(524.9))
			event.SetProjection(projection)
			var6 = var6 + 1
			at = 62
			vm.wait(62)
		end
		close_message(0)
		event.StreamClose(1)
		at = 63
		wait_camera()
		event.SetProjection(524.9)
		event.SetCrossfade(30)
		event.CmrsSetPos(-26.16, 2.12, 260.08)
		event.CmrsSetRef(-0.76, 24.0, 324.82)
		event.ObjsSetMotion(5, "立ち2", 4)
		at = 64
		helper_1584c528(6120180, 240)
		event.SetCrossfade(30)
		event.CmrsSetPos(52.31, 50.13, 183.8)
		event.CmrsSetRef(-3.22, 50.82, 166.04)
		event.ObjsSetMotion(5, "会話２", 6)
		event.ObjsMotionDelay(5, 30)
		event.ObjsNextMotion(5, "立ち2", 4)
		at = 65
		helper_1584c528(6120185, 130)
		event.SetCrossfade(30)
		event.CmrsSetPos(0.43, 137.04, 56.89)
		event.CmrsSetRef(-1.45, 10.06, 253.11)
		event.SetPakuAnim(0, "通常口パク")
		at = 66
		helper_1584c528(6120190, 90)
		event.ObjsSetMotion(5, "立ち２から立ち１", 6)
		event.ObjsNextMotion(5, "立ち", 4)
		event.ObjsNextMotion(5, "会話１", 4)
		at = 67
		helper_1584c528(6120200, -1)
		at = 68
		wait_frames(15)
		event.ObjsNextMotion(5, "立ち", 4)
		event.SetCrossfade(30)
		event.CmrsSetPos(43.9, 23.5, 203.81)
		event.CmrsSetRef(-3.91, 54.72, 160.7)
		at = 69
		wait_frames(30)
		event.SndSePlay(var0, 9)
		event.ObjsSetMotion(5, "握る", 6)
		event.ObjsNextMotion(5, "会話（握る）")
		event.ObjsMotionDelay(5, 180)
		event.ObjsNextMotion(5, "握るL", 4)
		at = 70
		helper_1584c528(6120210, -1)
		at = 71
		wait_frames(30)
		at = 72
		wait_objects(5)
		event.ObjsMotionDelay(5, 40)
		event.ObjsSetMotion(5, "振り払う", 6)
		event.ObjsNextMotion(5, "会話（振り払う）", 4)
		event.ObjsMotionDelay(5, 90)
		event.ObjsSetMotion(5, "振り払うL")
		event.ObjsSeDelay(5, 40)
		event.ObjsSePlay(5, var0, 10)
		event.StreamOpen3(1, 6120220)
		at = 73
		helper_9cbdc640(1)
		event.MesMake_2(0, 6120220)
		open_message(0, -1, 8, 0, 0)
		event.StreamPlay(1)
		at = 74
		wait_frames(40)
		event.SetCrossfade(30)
		event.CmrsSetPos(0.88, 46.09, 208.27)
		event.CmrsSetRef(-1.11, 54.76, 161.71)
		at = 75
		helper_917013c0(0, -1)
		close_message(0)
		event.StreamClose(1)
		at = 76
		wait_objects(5)
		at = 77
		wait_frames(30)
		event.SetCrossfade(30)
		event.CmrsSetPos(0.43, 137.04, 56.89)
		event.CmrsSetRef(-1.45, 10.06, 253.11)
		event.ObjsSetMotion(5, "立ち", 4)
		event.ObjsResetDaPosition(5)
		at = 78
		wait_frames(15)
		event.ObjsSetMotion(5, "立ち１から立ち２", 6)
		event.ObjsNextMotion(5, "立ち2", 4)
		at = 79
		helper_0e75aa9e(6120230, -1, 30)
		at = 80
		wait_objects(5)
		at = 81
		wait_frames(50)
		event.SetCrossfade(30)
		event.CmrsSetPos(52.31, 50.13, 183.8)
		event.CmrsSetRef(-3.22, 50.82, 166.04)
		event.ObjsSetMotion(5, "会話２", 4)
		event.StreamOpen3(1, 6120240)
		at = 82
		helper_9cbdc640(1)
		event.MesMake_2(0, 6120240)
		open_message(0, -1, 8, 0, 0)
		event.StreamPlay(1)
		at = 83
		wait_frames(150)
		event.SetCrossfade(30)
		event.CmrsSetPos(-1.16, 53.95, 203.33)
		event.CmrsSetRef(-0.35, 56.22, 163.1)
		event.CmrsMove(-1.0, 53.95, 195.45, -0.35, 56.22, 163.1, 60)
		at = 84
		helper_917013c0(0, -1)
		close_message(0)
		event.StreamClose(1)
		event.ObjsNextMotion(5, "立ち2")
		at = 85
		wait_frames(90)
		event.SetCrossfade(30)
		event.CmrsSetPos(45.23, 12.53, 223.31)
		event.CmrsSetRef(1.37, 42.75, 168.22)
		event.ObjsSetMotion(5, "見上げ", 6)
		event.ObjsNextMotion(5, "見上げＬ", 4)
		at = 86
		helper_1584c528(6120250, -1)
		at = 87
		wait_objects(5)
		at = 88
		wait_frames(60)
		event.CmrsSetPos(-41.31, 31.65, 268.93)
		event.CmrsSetRef(5.77, 11.37, 343.93)
		event.ObjsSetMotion(5, "立ち2", 4)
		event.ObjsSetMotion(1, "なに言ってるの？", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 89
		helper_1584c528(6120260, 210)
		at = 90
		wait_objects(1)
		at = 91
		wait_frames(30)
		event.CmrsSetPos(-0.97, 16.6, 262.08)
		event.CmrsSetRef(-1.15, 60.73, 165.4)
		event.ObjsSetMotion(5, "会話２")
		at = 92
		helper_1584c528(6120270, -1)
		at = 93
		wait_frames(20)
		at = 94
		helper_1584c528(6120273, -1)
		event.ObjsNextMotion(5, "立ち2", 4)
		at = 95
		wait_objects(5)
		at = 96
		wait_frames(30)
		event.CmrsSetPos(146.05, 155.76, 44.66)
		event.CmrsSetRef(7.17, 5.69, 214.11)
		event.ObjsSetMotion(5, "見上げ", 6)
		event.ObjsNextMotion(5, "見上げＬ", 4)
		at = 97
		helper_1584c528(6120280, -1)
		at = 98
		wait_frames(40)
		at = 99
		helper_1584c528(6120285, -1)
		at = 100
		wait_frames(30)
		event.CmrsSetPos(6.43, 18.29, 287.68)
		event.CmrsSetRef(16.25, 19.34, 324.59)
		event.ObjsSetMotion(5, "立ち", 4)
		event.SndSePlay(var0, 11)
		event.ObjsSetMotion(0, "そんなこと", 6)
		event.ObjsNextMotion(0, "そんなことL", 4)
		event.ObjsMotionDelay(0, 45)
		event.ObjsSetMotion(0, "させない", 6)
		event.ObjsNextMotion(0, "させないL", 4)
		event.ObjsSeDelay(0, 70)
		event.ObjsSePlay(0, var0, 12)
		event.SetPakuAnim(0, "通常口パク")
		at = 101
		helper_1584c528(6120290, 75)
		at = 102
		wait_frames(30)
		event.CmrsSetPos(-6.44, 50.54, 216.04)
		event.CmrsSetRef(-1.0, 48.49, 160.07)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(5, "会話１", 4)
		at = 103
		helper_1584c528(6120300, -1)
		at = 104
		wait_frames(30)
		event.ObjsSetMotion(5, "指す", 2)
		event.ObjsNextMotion(5, "指す会話", 4)
		at = 105
		helper_1584c528(6120305, -1)
		event.ObjsNextMotion(5, "指すＬ", 4)
		at = 106
		wait_objects(5)
		at = 107
		wait_frames(20)
		event.ObjsSetMotion(5, "握る２", 6)
		event.ObjsNextMotion(5, "会話（握る２）", 4)
		event.ObjsMotionDelay(5, 180)
		event.ObjsSetMotion(5, "振り払う（握る2）", 6)
		event.ObjsSetMotion(5, "振り払うＬ（握る2）")
		event.ObjsSeDelay(5, 200)
		event.ObjsSePlay(5, var0, 10)
		at = 108
		helper_1584c528(6120310, -1)
		at = 109
		wait_objects(5)
		at = 110
		wait_frames(30)
		event.CmrsSetPos(-1.79, 7.56, 386.42)
		event.CmrsSetRef(-1.26, 25.12, 274.31)
		event.ObjsSetMotion(5, "立ち2", 4)
		event.ObjsResetDaPosition(5)
		at = 111
		wait_frames(20)
		event.ObjsSetMotion(5, "会話２", 4)
		at = 112
		helper_1584c528(6120320, -1)
		event.ObjsNextMotion(5, "立ち2")
		at = 113
		wait_frames(20)
		event.CmrsSetPos(22.17, 49.65, 213.77)
		event.CmrsSetRef(-1.95, 51.8, 171.81)
		event.ObjsSetMotion(5, "会話２", 4)
		at = 114
		helper_1584c528(6120323, -1)
		event.ObjsNextMotion(5, "立ち2")
		at = 115
		wait_frames(20)
		event.ObjsSetMotion(5, "両手ゆっくり", 6)
		event.ObjsNextMotion(5, "両手ゆっくりＬ", 4)
		at = 116
		helper_1584c528(6120327, -1)
		at = 117
		wait_objects(5)
		event.CmrsSetPos(27.8, 20.33, 262.64)
		event.CmrsSetRef(4.57, 15.57, 325.51)
		at = 118
		wait_frames(15)
		event.ObjsSetMotion(0, "かまえる", 6)
		event.ObjsNextMotion(0, "かまえるL", 4)
		event.ObjsMotionDelay(1, 5)
		event.ObjsSetMotion(1, "身構え", 6)
		event.ObjsNextMotion(1, "身構えL", 4)
		at = 119
		wait_frames(60)
		event.CmrsSetPos(17.33, 128.97, 230.66)
		event.CmrsSetRef(0.33, 49.98, 168.45)
		event.CharaActive(17)
		event.SetCharaShow(17, 1, 1, 0.033333335)
		event.ObjsSetPos(7, -0.95, 0.2, 164.64)
		event.SndSePlay(var0, 13)
		event.ObjsSetMotion(5, "天に", 6)
		event.ObjsNextMotion(5, "天にＬ", 4)
		event.SndSePlay(var0, 14)
		event.SndSePlay(var0, 15)
		at = 120
		wait_frames(30)
		event.CmrsQuake2(0.0, 0.3, 0.0, -1)
		event.SndSePlay(var0, 16)
		at = 121
		wait_frames(30)
		event.CmrsSetPos(-6.24, 49.19, 375.53)
		event.CmrsSetRef(-1.83, 51.77, 225.87)
		at = 122
		wait_frames(90)
		event.CmrsSetPos(-31.26, 4.98, 277.65)
		event.CmrsSetRef(0.45, 22.39, 330.46)
		event.ObjsSetMotion(0, "びっくり", 6)
		event.ObjsNextMotion(0, "びっくりL", 4)
		event.ObjsMotionDelay(1, 5)
		event.ObjsSetMotion(1, "ぐらり", 6)
		event.ObjsNextMotion(1, "ぐらりL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おどろき顔")
		event.ObjsTexAnime(0, 1, "おどろき目パチ")
		event.ObjsTexAnime(0, 1, "大口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おどろき顔")
		event.ObjsTexAnime(1, 1, "おどろき目パチ")
		event.ObjsTexAnime(1, 1, "大口")
		at = 123
		wait_frames(90)
		event.CmrsSetPos(57.69, 37.12, 273.28)
		event.CmrsSetRef(0.0, 49.89, 171.27)
		at = 124
		wait_frames(60)
		event.CmrsSetPos(-28.88, 35.65, 295.17)
		event.CmrsSetRef(-16.06, 17.38, 336.62)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.SetPakuAnim(1, "通常口パク")
		at = 125
		helper_1584c528(6120330, -1)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		at = 126
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			wait_frames_skipping(4)
		end
		if at <= 2 then
			wait_frames_skipping(60)
		end
		if at <= 3 then
			helper_52aadc70(6120010, -1)
		end
		if at <= 4 then
			helper_238b5abc(4)
		end
		if at <= 5 then
			wait_frames_skipping(60)
		end
		if at <= 6 then
			wait_frames_skipping(90)
		end
		if at <= 7 then
			helper_8cd371d7(6120020)
		end
		if at <= 8 then
			helper_8cd371d7(6120030)
		end
		if at <= 9 then
			wait_frames_skipping(30)
		end
		if at <= 10 then
			helper_238b5abc(4)
		end
		if at <= 11 then
			wait_frames_skipping(16)
		end
		if at <= 12 then
			wait_frames_skipping(6)
		end
		if at <= 13 then
			wait_frames_skipping(10)
		end
		if at <= 14 then
			wait_frames_skipping(8)
		end
		if at <= 15 then
			wait_frames_skipping(30)
		end
		if at <= 16 then
			helper_52aadc70(6120040, 45)
		end
		if at <= 17 then
			helper_52aadc70(6120050, 70)
		end
		if at <= 18 then
			helper_238b5abc(4)
		end
		if at <= 19 then
			wait_frames_skipping(30)
		end
		if at <= 20 then
			helper_52aadc70(6120060, -1)
		end
		if at <= 21 then
			wait_frames_skipping(30)
		end
		if at <= 22 then
			helper_238b5abc(4)
		end
		if at <= 23 then
			helper_52aadc70(6120065, -1)
		end
		if at <= 24 then
			helper_238b5abc(4)
		end
		if at <= 25 then
			wait_frames_skipping(60)
		end
		if at <= 26 then
			helper_52aadc70(6120070, 60)
		end
		if at <= 27 then
			wait_frames_skipping(60)
		end
		if at <= 28 then
			wait_frames_skipping(90)
		end
		if at <= 29 then
			wait_frames_skipping(60)
		end
		if at <= 30 then
			wait_frames_skipping(15)
		end
		if at <= 31 then
			wait_frames_skipping(15)
		end
		if at <= 32 then
			helper_52aadc70(6120080, 30)
		end
		if at <= 33 then
			wait_frames_skipping(30)
		end
		if at <= 34 then
			wait_frames_skipping(30)
		end
		if at <= 35 then
			wait_frames_skipping(30)
		end
		if at <= 36 then
			helper_344d6cd8()
		end
		if at <= 37 then
			wait_frames_skipping(30)
		end
		if at <= 38 then
			helper_52aadc70(6120090, 180)
		end
		if at <= 39 then
			helper_344d6cd8()
		end
		if at <= 40 then
			x = vm.f32(-22.54)
			y = vm.f32(20.9)
			z = vm.f32(332.85)
			helper_344d6cd8()
		end
		if at <= 41 then
			wait_frames_skipping(60)
		end
		if at <= 42 then
			helper_52aadc70(6120100, -1)
		end
		if at <= 43 then
			wait_frames_skipping(60)
		end
		if at <= 44 then
			helper_238b5abc(5)
		end
		if at <= 45 then
			wait_frames_skipping(4)
		end
		if at <= 46 then
			helper_8cd371d7(6120110)
		end
		if at <= 47 then
			helper_238b5abc(5)
		end
		if at <= 48 then
			helper_8cd371d7(6120120)
		end
		if at <= 49 then
			helper_8cd371d7(6120125)
		end
		if at <= 50 then
			helper_238b5abc(1)
		end
		if at <= 51 then
			helper_8cd371d7(6120130)
		end
		if at <= 52 then
			helper_8cd371d7(6120135)
		end
		if at <= 53 then
			helper_8cd371d7(6120140)
		end
		if at <= 54 then
			helper_238b5abc(5)
		end
		if at <= 55 then
			helper_52aadc70(6120150, 150)
		end
		if at <= 56 then
			helper_238b5abc(5)
		end
		if at <= 57 then
			helper_52aadc70(6120160, 150)
		end
		if at <= 58 then
			helper_52aadc70(6120165, 240)
		end
		if at <= 59 then
			helper_238b5abc(5)
		end
		if at <= 60 then
			helper_238b5abc(1)
		end
		if at <= 61 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			projection = vm.f32(vm.f32(vm.f32(vm.f32(-224.90002) * var6) / 350) + vm.f32(524.9))
			local _ = var6 < 350
			var6 = var6 + 1
		end
		if at <= 62 then
			helper_d16eef1e(0)
			helper_344d6cd8()
		end
		if at <= 63 then
			helper_52aadc70(6120180, 240)
		end
		if at <= 64 then
			helper_52aadc70(6120185, 130)
		end
		if at <= 65 then
			helper_52aadc70(6120190, 90)
		end
		if at <= 66 then
			helper_52aadc70(6120200, -1)
		end
		if at <= 67 then
			wait_frames_skipping(15)
		end
		if at <= 68 then
			wait_frames_skipping(30)
		end
		if at <= 69 then
			helper_52aadc70(6120210, -1)
		end
		if at <= 70 then
			wait_frames_skipping(30)
		end
		if at <= 71 then
			helper_238b5abc(5)
		end
		if at <= 72 then
			helper_238b5abc(1)
		end
		if at <= 73 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			wait_frames_skipping(40)
		end
		if at <= 74 then
			helper_705b02bc(0, -1)
		end
		if at <= 75 then
			helper_d16eef1e(0)
			helper_238b5abc(5)
		end
		if at <= 76 then
			wait_frames_skipping(30)
		end
		if at <= 77 then
			wait_frames_skipping(15)
		end
		if at <= 78 then
			helper_2f8c501c(6120230, -1, 30)
		end
		if at <= 79 then
			helper_238b5abc(5)
		end
		if at <= 80 then
			wait_frames_skipping(50)
		end
		if at <= 81 then
			helper_238b5abc(1)
		end
		if at <= 82 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			wait_frames_skipping(150)
		end
		if at <= 83 then
			helper_705b02bc(0, -1)
		end
		if at <= 84 then
			helper_d16eef1e(0)
			wait_frames_skipping(90)
		end
		if at <= 85 then
			helper_52aadc70(6120250, -1)
		end
		if at <= 86 then
			helper_238b5abc(5)
		end
		if at <= 87 then
			wait_frames_skipping(60)
		end
		if at <= 88 then
			helper_52aadc70(6120260, 210)
		end
		if at <= 89 then
			helper_238b5abc(1)
		end
		if at <= 90 then
			wait_frames_skipping(30)
		end
		if at <= 91 then
			helper_52aadc70(6120270, -1)
		end
		if at <= 92 then
			wait_frames_skipping(20)
		end
		if at <= 93 then
			helper_52aadc70(6120273, -1)
		end
		if at <= 94 then
			helper_238b5abc(5)
		end
		if at <= 95 then
			wait_frames_skipping(30)
		end
		if at <= 96 then
			helper_52aadc70(6120280, -1)
		end
		if at <= 97 then
			wait_frames_skipping(40)
		end
		if at <= 98 then
			helper_52aadc70(6120285, -1)
		end
		if at <= 99 then
			wait_frames_skipping(30)
		end
		if at <= 100 then
			helper_52aadc70(6120290, 75)
		end
		if at <= 101 then
			wait_frames_skipping(30)
		end
		if at <= 102 then
			helper_52aadc70(6120300, -1)
		end
		if at <= 103 then
			wait_frames_skipping(30)
		end
		if at <= 104 then
			helper_52aadc70(6120305, -1)
		end
		if at <= 105 then
			helper_238b5abc(5)
		end
		if at <= 106 then
			wait_frames_skipping(20)
		end
		if at <= 107 then
			helper_52aadc70(6120310, -1)
		end
		if at <= 108 then
			helper_238b5abc(5)
		end
		if at <= 109 then
			wait_frames_skipping(30)
		end
		if at <= 110 then
			wait_frames_skipping(20)
		end
		if at <= 111 then
			helper_52aadc70(6120320, -1)
		end
		if at <= 112 then
			wait_frames_skipping(20)
		end
		if at <= 113 then
			helper_52aadc70(6120323, -1)
		end
		if at <= 114 then
			wait_frames_skipping(20)
		end
		if at <= 115 then
			helper_52aadc70(6120327, -1)
		end
		if at <= 116 then
			helper_238b5abc(5)
		end
		if at <= 117 then
			wait_frames_skipping(15)
		end
		if at <= 118 then
			wait_frames_skipping(60)
		end
		if at <= 119 then
			wait_frames_skipping(30)
		end
		if at <= 120 then
			wait_frames_skipping(30)
		end
		if at <= 121 then
			wait_frames_skipping(90)
		end
		if at <= 122 then
			wait_frames_skipping(90)
		end
		if at <= 123 then
			wait_frames_skipping(60)
		end
		if at <= 124 then
			helper_52aadc70(6120330, -1)
		end
		if at <= 125 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 127
	vm.entry(127)
	event.CancelDramaScene()
	event.SetMotionBlur(0)
	event.SetWind(-1)
	event.StopBgm(0)
	event.SndSeStop(var0, 15)
	event.SndSeStop(var0, 16)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.AtramiriaOnOff(0, 0, 0)
	else
		event.AtramiriaOnOff(1, 0, 0)
	end
	event.CmrsInit()
	event.BgmLoadCancel()
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
	event.DeleteChara(17)
	event.DeleteChara(18)
	event.DeleteChara(19)
	event.LoadMes(0, -1)
	event.CharaActive(0)
	event.SetCharaPos(0, -1.02, 0.2, 111.04)
	event.SetCharaRot(0, 0.0, 3.11, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

return helper_7df574d3
