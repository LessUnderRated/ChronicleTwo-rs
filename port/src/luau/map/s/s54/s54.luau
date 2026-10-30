--!strict
-- map/s/s54/s54.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_2609f66b = require("@lib/event/helper_2609f66b")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_45a6628c = require("@lib/event/helper_45a6628c")
local helper_61e5dba6 = require("@lib/event/helper_61e5dba6")
local helper_635196bf = require("@lib/event/helper_635196bf")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_7d7eee8f = require("@lib/event/helper_7d7eee8f")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_a9eaf20e = require("@lib/event/helper_a9eaf20e")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_f9968159 = require("@lib/event/helper_f9968159")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	event.StopBgm(0)
	event.LoadSound(8684)
	flag = event.GetFlag(808) or flag
	if flag == 1 then
		helper_635196bf()
	end
end

--- Helper function.
local function helper_10690()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local block: s32 = 0
	vm.section(function()
		event.SetFlag(808, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.StopBgm(0)
		helper_888ab2a3(6)
		event.LoadBgm(107)
		event.LoadSound(8803)
		var1 = event.SndLoadSound_2(8803) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e800/e808/")
		event.LoadMes(0, 5, "e808.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e808_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e808_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e808_m_polcurse.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e808_mp_jet.gltf", "info", 11)
		event.CharaActive(11)
		event.SetReference(10, "jet_l", 11)
		event.CopyChara(5, 11, 12)
		event.CharaActive(12)
		event.SetReference(10, "jet_r", 12)
		block = event.LoadImg_4(5, "e808telop01.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e808telop01", block)
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
			event.LoadMotion(5, "event/e800/e808/e808_mints.gltf", "info", 8)
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
			event.LoadMotion(5, "event/e800/e808/e808_monica.gltf", "info", 8)
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
		event.EohSetPos(0, -10.0, 0.0, 0.0)
		event.EohSetRot(0, 0.0, 0.0, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 16)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, 10.0, 0.0, 0.0)
		event.EohSetRot(1, 0.0, 0.0, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "無表情")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, 0.0, 1200.0, 1200.0)
		event.EohSetRot(2, 0.0, 3.14, 0.0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "通常目パチ")
		event.SetStatus(1, 10, 8)
		event.InitDramaScene()
		event.ObjsMove(0, -10.0, 0.0, 100.0, 100)
		event.ObjsSetMotion(0, "歩き", 4)
		event.ObjsMotionDelay(0, 100)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(1, 10.0, 0.0, 100.0, 100)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMotionDelay(1, 100)
		event.ObjsSetMotion(1, "立ち")
		event.CmrsInit()
		event.CmrsSetPos(-144.53, 162.53, 269.71)
		event.CmrsSetRef(9.57, 6.12, 32.98)
		event.SetFadeIn(30)
		helper_888ab2a3(70)
		event.CmrsSetPos(0.0, 20.0, 60.0)
		event.CmrsSetRef(0.0, 20.0, 100.0)
		event.SetPakuAnim(2, "通常口パク")
		helper_4116e6bb(8080010)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsMotionDelay(1, 10)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(8080020)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(8080030)
		wait_objects(0)
		wait_objects(1)
		event.SndSePlay(var1, 0)
		event.PlayBgm(0)
		event.CmrsMove2(0.0, 55.07, 16.58, 0.0, 132.31, 102.11, 60, 0, 0.4)
		event.ObjsSetRot(2, 0.8, 3.14, 0.0)
		event.ObjsMove2(2, 0.0, 70.0, 80.0, 100, 2, 0.1)
		event.ObjsSetMotion(2, "飛びループ", 4)
		event.ObjsMotionDelay(2, 86)
		event.ObjsSetMotion(2, "体返す", 2)
		event.ObjsNextMotion(2, "体返すＬ", 4)
		wait_camera()
		wait_objects(2)
		event.SndSeStop(var1, 0)
		event.ObjsSetRot(0, 0.0, 0.12, 0.0)
		event.ObjsSetRot(1, 0.0, -0.12, 0.0)
		event.SetPakuMotion(2, "体返す会話", 4, "体返すＬ", 0)
		event.SetPakuAnim(2, "通常口パク")
		helper_4116e6bb(8080040)
		event.SetPakuMotion(2, "体返す会話", 0, "体返すＬ", 0)
		event.SetPakuAnim(2, "通常口パク")
		helper_4116e6bb(8080045)
		event.CmrsSetPos(-2.41, 61.81, 165.8)
		event.CmrsSetRef(0.11, 17.53, 101.88)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(8080050)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(8080060)
		event.CmrsSetPos(0.0, 104.52, 45.06)
		event.CmrsSetRef(0.0, 124.09, 102.11)
		event.ObjsSetRot(2, 0.0, 3.14, 0.0)
		event.ObjsSetMotion(2, "浮遊立ち会話", 4)
		event.SetPakuMotion(2, "浮遊立ち会話", 4, "浮遊立ち", 0)
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(8080070)
		event.SetPakuMotion(2, "浮遊立ち会話", 0, "浮遊立ち", 0)
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(8080075)
		wait_objects(2)
		event.SndSePlay(var1, 1)
		event.ObjsSetMotion(2, "オーホホホ", 2)
		event.ObjsNextMotion(2, "オーホホホＬ", 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "通常目～高笑い")
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(8080080)
		event.CmrsSetPos(-29.09, 25.94, 131.55)
		event.CmrsSetRef(5.81, 19.33, 91.49)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "いぶかしげ顔")
		event.EohSetTexAnim(0, 1, "いぶかしげ目パチ")
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(8080090)
		event.CmrsSetPos(0.5, 125.0, 60.0)
		event.CmrsSetRef(0.5, 125.0, 92.0)
		event.CmrsMove2(0.5, 115.0, 20.0, 0.5, 115.0, 92.0, 40, 2, 0.2)
		event.SndSePlay(var1, 2)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり顔")
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.ObjsSetMotion(2, "ポーズ", 6)
		event.ObjsNextMotion(2, "ポーズＬ", 4)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(3, 128, 128, 128, 128, 30)
		event.SetPakuAnim(2, "通常口パク")
		event.StreamOpen3(1, 8080100)
		helper_9cbdc640(1)
		event.StreamPlay(1)
		helper_61e5dba6(0, 180)
		event.StreamClose(1)
		event.SndSePlay(var1, 3)
		event.ObjsSetColor(3, 128, 128, 128, 0, 10)
		event.ObjsSetMotion(2, "ゴゴゴゴ", 6)
		event.ObjsNextMotion(2, "ゴゴゴゴＬ", 6)
		event.ObjsNextMotion(2, "カメラに向かう", 6)
		event.ObjsNextMotion(2, "飛びループ", 4)
		event.ObjsRotDelay(2, 30)
		event.ObjsRotation(2, 0.2, 3.14, 0.0, 40)
		event.ObjsPosDelay(2, 64)
		event.ObjsMove(2, 0.0, 66.0, 0.0, 20)
		event.CmrsMove2(0.0, 90.93, -24.95, 0.0, 108.12, 88.77, 40, 0, 0.4)
		helper_888ab2a3(10)
		event.SpriteSetDraw(0, 0)
		helper_888ab2a3(50)
		event.EohSetTexAnim(2, 1, "歯くいしばり")
		event.SetMotionBlur(64)
		helper_888ab2a3(21)
		event.SetFadeOut(3)
		helper_888ab2a3(3)
	end)
	event.CancelDramaScene()
	event.SndSeStop(var1, 0)
	event.SndSeStop(var1, 1)
	event.SndSeStop(var1, 2)
	event.SndSeStop(var1, 3)
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
	event.DeleteChara(12)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.PlayBgm(0)
	event.SetStatusbarShow(1, 1.0)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.Finish()
end

--- Event 28010, which map data, a script or the engine runs by number.
local function event_28010()
	event.Initialize()
	event.SetFadeOut(0)
	vm.wait(1)
	event.StopBgm(0)
	helper_888ab2a3(6)
	event.LoadBgm(107)
	event.PlayBgm(0)
	event.LoadMonsterFile(628, 1)
	event.LoadMonsterFile(1006, 0)
	event.AutoSetMonster(628, 0.0, 0.0, 800.0, 0.0, 3.14, 0.0)
	helper_7d7eee8f(0.0, 0.0, 300.0, 0.0)
	event.SetCameraRef(0.0, 30.0, 300.0)
	event.SetCameraPos(0.0, 40.0, 180.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Helper function.
local function helper_13e98()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(812, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.LoadSound(8806)
		var1 = event.SndLoadSound_2(8806) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e800/e812/")
		event.LoadMes(0, 5, "e812.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e812_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e812_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e812_m_polcurse.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e812_mp_bakuha.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.LoadChara(5, "e812_mp_biribiri.gltf", "info", 12)
		event.CharaActive(12)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e800/e812/e812_mints.gltf", "info", 8)
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
			event.LoadMotion(5, "event/e800/e812/e812_monica.gltf", "info", 8)
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
		event.EohSetPos(0, 8.0, 0.0, 100.0)
		event.EohSetRot(0, 0.0, 0.0, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 16)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -8.0, 0.0, 100.0)
		event.EohSetRot(1, 0.0, 0.0, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "あきれ顔")
		event.EohSetTexAnim(1, 1, "あきれ目パチ")
		event.EohSetPos(2, 0.0, 0.0, 400.0)
		event.EohSetRot(2, 0.0, 3.14, 0.0)
		event.EohSetMotion(2, "ガクガク", 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "くやし顔")
		event.EohSetTexAnim(2, 1, "やられ目パチ")
		event.SetCharaPos(12, 0.0, 0.0, 400.0)
		event.SetCharaRot(12, 0.0, 3.14, 0.0)
		event.SetCharaPos(11, 0.0, 0.0, 400.0)
		event.SetCharaRot(11, 0.0, 3.14, 0.0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(0.0, 20.91, 290.09)
		event.CmrsSetRef(0.0, 17.6, 396.09)
		event.SndSePlay(var1, 0)
		event.SetFadeIn(30)
		event.SetPakuAnim(2, "やられ口パク")
		helper_4116e6bb(8120010)
		event.SetPakuAnim(2, "やられ口パク")
		helper_4116e6bb(8120015)
		event.CmrsSetPos(-21.92, 23.66, 134.75)
		event.CmrsSetRef(-4.36, 20.87, 105.83)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(8120020)
		wait_objects(1)
		event.ObjsSetMotion(0, "うなづく", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(8120030)
		wait_objects(0)
		event.CmrsSetPos(-27.34, 30.34, 365.86)
		event.CmrsSetRef(-0.39, 25.21, 399.29)
		event.ObjsSetMotion(2, "きっと・・・", 4)
		event.SetPakuAnim(2, "やられ口パク")
		helper_4116e6bb(8120040)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "わらい顔")
		event.CmrsMove2(-125.62, 18.68, 243.92, -0.39, 25.21, 399.29, 60, 0, 0.2)
		event.ObjsSetMotion(2, "ポーズ", 6)
		event.ObjsNextMotion(2, "ポーズＬ", 4)
		event.SetPakuAnim(2, "やられ口パク")
		helper_4116e6bb(8120045)
		wait_objects(2)
		wait_camera()
		event.SndSeStop(var1, 0)
		event.SndSePlay(var1, 1)
		event.CharaActive(1, 11)
		event.SetMotion(11, "MP爆発", 6)
		helper_888ab2a3(10)
		event.SetCharaShow(10, 0, 1, 0.1)
		event.SetCharaShow(12, 0, 1, 0.1)
		helper_888ab2a3(30)
		event.CmrsSetPos(-91.42, 22.7, -33.42)
		event.CmrsSetRef(-1.04, 13.67, 105.35)
		event.SetCharaPos(11, -105.44, 0.0, 185.46)
		event.SetCharaRot(11, 0.0, -2.78, 0.0)
		event.ObjsSetMotion(1, "左向く", 6)
		event.ObjsNextMotion(1, "左向く会話", 6)
		event.ObjsNextMotion(1, "左向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(8120050)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(8120060)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(17)
	event.CancelDramaScene()
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.SndSeStop(var1, 0)
	event.SndSeStop(var1, 1)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	event_99()
	helper_7d7eee8f(0.0, 0.0, 0.0, 0.0)
	event.SetCameraRef(0.0, 30.0, 0.0)
	event.SetCameraPos(0.0, 40.0, -120.0)
	event.ResetCamera(0)
	flag = event.GetFlag(808) or flag
	if flag == 0 then
		helper_10690()
		event.SetBitCtrl(1, 1)
		vm.wait(2)
		helper_7d7eee8f(0.0, 0.0, 300.0, 0.0)
		event.SetCameraRef(0.0, 30.0, 300.0)
		event.SetCameraPos(0.0, 40.0, 180.0)
		event.ResetCamera(0)
		event.LoadMonsterFile(628, 1)
		event.LoadMonsterFile(1006, 0)
		event.AutoSetMonster(628, 0.0, 0.0, 800.0, 0.0, 3.14, 0.0)
	end
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	vm.wait(1)
	helper_c956b4a2(32)
end

--- Event 151, which map data, a script or the engine runs by number.
script.event_151 = event_28010

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	local active_chr_no: s32 = 0
	local var1: any = 0
	local stage_id: s32 = 0
	local var3: s32 = 0
	local argc: s32 = 0
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
	var1 = helper_bac0e30d(0, 10, 8, 256, 208, 2, 1)
	if var1 == 0 then
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		stage_id = event.DngGetStageId() or stage_id
		var3 = event.DngGetFloorId() or var3
		argc = event.GetNextFloor(var3, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var3, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		event.LoadScript("d07/d07.stb", 1000)
	else
		event.Finish()
	end
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.FadeOutBgm(20)
		event.SetFadeOut(20)
		at = 1
		helper_888ab2a3(20)
		event.StopBgm(0)
		event.DelMonster(-1)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
		end
		at = 2
		helper_13e98()
		event.SetBitCtrl(1, 0)
		helper_635196bf()
		helper_7d7eee8f(0.0, 0.0, 700.0, 0.0)
		event.SetCameraRef(0.0, 30.0, 700.0)
		event.SetCameraPos(0.0, 40.0, 580.0)
		event.ResetCamera(0)
		event.SetFadeIn(30)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_13e98()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 0)
					helper_635196bf()
					helper_7d7eee8f(0.0, 0.0, 700.0, 0.0)
					event.SetCameraRef(0.0, 30.0, 700.0)
					event.SetCameraPos(0.0, 40.0, 580.0)
					event.ResetCamera(0)
					event.SetFadeIn(30)
					event.Finish()
					return
				end)
			end
			helper_45a6628c()
			helper_43f02c95(0.0, 0.0, 700.0, 0.0)
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
		flag = event.GetFlag(808) or flag
		flag_2 = event.GetFlag(812) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var2 = 0
			var2 = vm.float_bits(event.GetRand(100)) or var2
			if var2 < 50 then
				at = 1
				helper_a9eaf20e(0, 8590060)
			else
				at = 2
				helper_a9eaf20e(0, 8590070)
			end
			return
		end
		at = 3
		helper_f9968159(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_2609f66b(0, 8590070)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		return nil
	end)
end

--- Event 18080, which map data, a script or the engine runs by number.
function script.event_18080()
	event_99()
	helper_10690()
end

--- Event 18120, which map data, a script or the engine runs by number.
function script.event_18120()
	event_99()
	helper_13e98()
end

script.event_28010 = event_28010

return script
