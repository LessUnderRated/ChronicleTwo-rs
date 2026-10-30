--!strict
-- map/s/s50/s50.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	event.StopBgm(0)
	event.LoadSound(7686)
	flag = event.GetFlag(708) or flag
	if flag == 1 then
		event.FuncPointShow("", "e708", 0)
		event.EohSyncObj_2(0, "p06s50")
		event.EohSetShow(0, 1)
		event.EohSyncObj_2(0, "p04s50")
		event.EohSetRot(0, 0.0, -1.22, 0.0)
		event.EohSyncObj_2(1, "p05s50")
		event.EohSetRot(1, 0.0, 1.22, 0.0)
	end
	event.DngPause(8192, 1)
	event.SetCharaChangeMask(2, 0)
	event.SetCharaChangeMask(3, 0)
	event.SetBitCtrl(1, 1)
	event.SetCharaShow(1, 0)
	event.SetCharaShow(2, 0)
end

--- Helper function.
local function helper_1067c(arg0: s32)
	local active_chr_no: s32 = 0
	local var2: any = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
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
			return 0
		end
		at = 3
		var2 = helper_ed4dc120(arg0, -1)
		if var2 == 0 then
			event.SetFadeOut(30)
			at = 4
			helper_888ab2a3(30)
			event.Finish()
			return 1
		end
		event.Finish()
		return 0
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ee1c51d0(0, 21, 5, 256, 208)
			end
			return 0
		end
		if at <= 4 then
			if at == 3 then
				var2 = received[1] :: number
			end
			if at <= 3 then
				helper_038a2e4d(30)
			end
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_10af0()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local var2: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(708, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		helper_888ab2a3(4)
		event.LoadBgm(113)
		event.PlayBgm(0)
		event.LoadSound(7818)
		var0 = event.SndLoadSound_2(7818) or var0
		event.SndSePlay(var0, 0)
		event.SndSeStop(var0, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e700/e708/")
		event.LoadMes(0, 5, "e708.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e708_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e708_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e708_andrea.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e708_sun.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "kaisou_waku.gltf", "info", 12)
		event.CharaActive(0, 12)
		event.EohSyncChara(7, 12)
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 7)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e700/e708/e708_mints.gltf", "info", 8)
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
			event.LoadMotion(5, "event/e700/e708/e708_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncObj_2(4, "p04s50")
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.EohSyncObj_2(5, "p05s50")
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 5)
		event.EohSyncObj_2(6, "p06s50")
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 6)
		event.EohSetPos(0, 9.54, 0.8, 502.98)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, -11.6, 0.8, 505.27)
		event.EohSetRot(1, 0.0, 3.02, 0.0)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(2, -17.67, -2.8, 1.78)
		event.EohSetRot(2, 0.0, 1.58, 0.0)
		event.EohSetPos(3, -21.32, -2.8, -26.09)
		event.EohSetRot(3, 0.0, -0.1, 0.0)
		event.EohSetFootSoundId(3, 2)
		event.EohSetRot(4, 0.0, 0.0, 0.0)
		event.EohSetRot(5, 0.0, 0.0, 0.0)
		event.EohSetRot(6, 0.0, -1.57, 0.0)
		event.EohSetShow(6, 1)
		event.InitDramaScene()
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(2, "花いけ立ち", 4)
		event.ObjsSetMotion(3, "立ち", 4)
		event.ObjsResetDaPosition(3)
		event.CharaActive(0)
		event.CharaActive(8)
		event.CharaActive(9)
		event.CharaActive(10)
		event.CharaActive(11)
		event.CmrsInit()
		event.CmrsSetPos(-89.69, 118.46, -108.66)
		event.CmrsSetRef(-1.67, 30.09, -7.9)
		event.CharaActive(12)
		event.SetCharaType(12, 4)
		event.CmrsCharaAttach(12, 600.7, -1)
		event.SndSePlay(var0, 1)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		event.ObjsSetMotion(2, "花いけから立ち", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		helper_888ab2a3(30)
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "こまり目パチ")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.CmrsSetPos(29.44, 24.13, 17.48)
		event.CmrsSetRef(-22.52, 17.78, -11.7)
		helper_0382f327(7080010, -1)
		helper_888ab2a3(30)
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 60)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080020, 60)
		helper_888ab2a3(60)
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "目あき～目とじ")
		event.ObjsSetMotion(3, "うつむく", 6)
		event.ObjsNextMotion(3, "うつむくＬ", 4)
		helper_0382f327(7080030, -1)
		helper_888ab2a3(30)
		event.ObjsSetMotion(3, "うつむき会話", 4)
		event.ObjsMotionDelay(3, 120)
		event.ObjsNextMotion(3, "うつむくＬ", 4)
		helper_0382f327(7080035, -1)
		helper_888ab2a3(30)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "目あき～目とじ")
		event.ObjsTexaDelay(2, 20)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 60)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080040, -1)
		helper_888ab2a3(30)
		event.ObjsSetMotion(3, "うつむく戻り", 6)
		event.ObjsNextMotion(3, "立ち", 4)
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "目とじ～目あき")
		helper_0382f327(7080050, 60)
		helper_888ab2a3(30)
		event.CmrsSetPos(-48.47, 12.55, -42.34)
		event.CmrsSetRef(-10.84, 19.04, -6.38)
		event.ObjsSetMotion(2, "振り向く", 6)
		event.ObjsNextMotion(2, "振り向くＬ", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "目とじ～目あき")
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 60)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080060, -1)
		helper_888ab2a3(30)
		wait_objects(2)
		event.CmrsSetPos(-23.78, 29.48, -7.12)
		event.CmrsSetRef(-20.7, 6.84, -39.22)
		helper_888ab2a3(45)
		event.ObjsSetMotion(3, "会話", 6)
		event.ObjsNextMotion(3, "立ち", 4)
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "通常目パチ")
		helper_0382f327(7080070, -1)
		helper_888ab2a3(30)
		event.CmrsSetPos(-48.47, 12.55, -42.34)
		event.CmrsSetRef(-10.84, 19.04, -6.38)
		event.ObjsSetMotion(3, "正面向き立ち")
		event.SndSePlay(var0, 2)
		event.ObjsSetMotion(2, "立ちからしゃがむ", 6)
		event.ObjsNextMotion(2, "しゃがむ会話", 6)
		helper_888ab2a3(20)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 180)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080080, -1)
		helper_888ab2a3(30)
		wait_objects(2)
		event.ObjsSetMotion(2, "しゃがみから立ち", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SndSePlay(var0, 3)
		event.CmrsSetPos(-20.65, 17.48, -24.48)
		event.CmrsSetRef(-16.7, 25.56, 1.9)
		event.ObjsSetMotion(3, "立ち", 4)
		wait_objects(2)
		helper_888ab2a3(20)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "目あき～目とじ")
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 150)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080090, -1)
		event.ObjsSetMotion(2, "ちょっと上向く", 6)
		event.ObjsNextMotion(2, "ちょっと上向くＬ", 4)
		helper_888ab2a3(20)
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 210)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080100, -1)
		helper_888ab2a3(30)
		event.CmrsSetPos(-23.78, 29.48, -7.12)
		event.CmrsSetRef(-20.7, 6.84, -39.22)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "目とじ～目あき")
		event.SetPakuAnim(2, "わらい口パク")
		helper_888ab2a3(20)
		helper_0382f327(7080110, 60)
		event.CmrsSetPos(-20.65, 17.48, -24.48)
		event.CmrsSetRef(-16.7, 25.56, 1.9)
		event.ObjsSetMotion(2, "左見る", 6)
		event.ObjsNextMotion(2, "左見るＬ", 4)
		helper_888ab2a3(20)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 90)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080120, -1)
		helper_888ab2a3(30)
		helper_0382f327(7080130, 60)
		event.ObjsSetMotion(2, "左見るから立ち", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "目あき～目とじ")
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 120)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080140, -1)
		helper_888ab2a3(20)
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 90)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080150, -1)
		wait_objects(2)
		helper_888ab2a3(30)
		event.ObjsSetMotion(2, "身体ごと向く", 6)
		event.ObjsNextMotion(2, "身体ごと向くＬ", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "目とじ～目あき")
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 90)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080160, -1)
		helper_888ab2a3(20)
		event.ObjsTexaDelay(2, 10)
		event.ObjsTexAnime(2, 1, "わらい口パク")
		event.ObjsTexaDelay(2, 120)
		event.ObjsTexAnime(2, 0, "わらい口パク")
		helper_0382f327(7080165, -1)
		wait_objects(2)
		helper_888ab2a3(20)
		event.CmrsSetPos(-23.78, 29.48, -7.12)
		event.CmrsSetRef(-20.7, 6.84, -39.22)
		helper_888ab2a3(20)
		helper_0382f327(7080170, 60)
		helper_888ab2a3(30)
		event.FadeOutBgm(30)
		event.SndSePlay(var0, 1)
		event.SetFadeOut(30, 255, 255, 255)
		helper_888ab2a3(15)
		event.CharaActive(0, 12)
		event.ObjsSetPos(1, -8.49, -1.96, 108.26)
		event.ObjsSetPos(0, 10.48, -1.96, 111.88)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		helper_888ab2a3(15)
		event.SndSeStop(var0, 1)
		event.LoadSound(7819)
		var2 = event.SndLoadSound_2(7819) or var2
		event.SetFadeIn(30)
		event.ObjsSetPos(2, -8.49, -1000.0, 108.26)
		event.ObjsSetPos(3, 10.48, -1000.0, 111.88)
		event.CmrsSetPos(-14.02, 13.72, 63.77)
		event.CmrsSetRef(7.42, 21.78, 134.93)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おどろき顔")
		event.ObjsTexAnime(0, 1, "まばたき目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おどろき顔")
		event.ObjsTexAnime(1, 1, "おどろき目パチ")
		event.ObjsTexAnime(1, 1, "半口")
		helper_888ab2a3(60)
		event.CmrsSetPos(0.05, 16.14, 284.86)
		event.CmrsSetRef(1.57, 67.05, -251.65)
		event.SndSePlay(var2, 4)
		event.ObjsRotation2(4, 0.0, -1.22, 0.0, 60, 1, 0.7)
		event.ObjsRotation2(5, 0.0, 1.22, 0.0, 60, 1, 0.7)
		helper_888ab2a3(90)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(57)
	event.CancelDramaScene()
	event.StopBgm(0)
	event.EohSetRot(6, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, -1.22, 0.0)
	event.EohSetRot(5, 0.0, 1.22, 0.0)
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
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.LoadMes(0, -1)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 0, which map data, a script or the engine runs by number.
function script.event_0()
	local active_chr_no: s32 = 0
	event.SetMotion(0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.MesMake_2(
			0,
			"―ユリスの発明ネタ調査―\nユリスは本を読んで\n　●武器\n　●月の柱\n　●鹿のツノ\nの３つによって何かが発明できると直感した！"
		)
	else
		event.MesMake_2(
			0,
			"―モニカのモンスター調査―\nモニカはそこに記されている内容から\n『ダイヤ』は\n『ダイヤモンド』に目がないことを知った。"
		)
	end
	helper_75684dd8(0, -1, 8, 0, 0)
end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event_99()
	helper_9dafbc83(0.0, 0.0, 200.0, vm.f32(3.14))
	event.SetCameraRef(0.0, 30.0, 200.0)
	event.SetCameraPos(0.0, 40.0, 320.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.Initialize()
	event.CmrsInit()
	event.CmrsQuake(0.0, 1.0, 0.0, 16)
	wait_camera()
end

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	if helper_1067c(2) ~= 0 then
		event.SetCharaShow(1, 1)
		event.SetCharaShow(2, 1)
		event.DngPause(8192, 0)
		event.ActchrSetDefMotion(0)
		event.SetCharaChangeMask(2, 1)
		event.SetCharaChangeMask(3, 1)
		event.SetBitCtrl(1, 0)
		event.LoadScript("d06/d06.stb", 1000)
	end
end

--- Event 210, which map data, a script or the engine runs by number.
function script.event_210()
	local flag: s32 = 0
	local stage_id: s32 = 0
	local var2: s32 = 0
	local argc: s32 = 0
	flag = event.GetFlag(708) or flag
	if flag == 1 then
		if helper_1067c(1) ~= 0 then
			stage_id = event.DngGetStageId() or stage_id
			var2 = event.DngGetFloorId() or var2
			argc = event.GetNextFloor(var2, 0) or argc
			event.DngSetFloorId(argc)
			event.SetFloorInfo(stage_id, var2, 5, 2)
			event.SetFloorInfo(stage_id, argc, 5, 1)
			event.SetCharaShow(1, 1)
			event.SetCharaShow(2, 1)
			event.DngPause(8192, 0)
			event.ActchrSetDefMotion(0)
			event.SetCharaChangeMask(2, 1)
			event.SetCharaChangeMask(3, 1)
			event.SetBitCtrl(1, 0)
			event.LoadScript("d06/d06.stb", 1000)
		end
	else
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.SetMotion(0, "立ち")
		event.MesMake_2(
			0,
			"　　　扉はかたく閉ざされている。\nこの部屋には何か秘密が在るのだろうか？"
		)
		helper_75684dd8(0, -1, 5, 0, 0)
	end
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local item: s32 = 0
	local var3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				at = 1
				helper_75684dd8(0, 22, 5, 256, 208)
			else
				at = 2
				helper_75684dd8(0, 23, 5, 256, 208)
			end
			event.Finish()
			return
		end
		var1 = event.GetEventData_2(6) or var1
		if var1 == 1 then
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			event.MesMake_2(0, "不思議な花びんがある。\n（(#)ボタンでメニューを開く）")
			at = 3
			var3 = helper_c292fa16(0, -1, 5, 256, 208, var3)
			if var3 == 1 then
				var1 = 2
			end
		end
		if var1 == 2 then
			event.GotoUseItem(374)
			at = 4
			vm.wait(4)
			item = vmhost.used_item() or item
			if item > 0 then
				if item == 374 then
					event.SetStatusbarShow(0, 1.0)
					event.EohSyncObj_2(0, "p06s50")
					event.EohSetShow(0, 1)
					event.FuncPointShow("", "e708", 0)
					event.FuncPointShow("", "next_floor", 1)
					event.SetFadeOut(3, 255, 255, 255)
					at = 5
					helper_888ab2a3(3)
					event.SetFadeIn(8)
					at = 6
					helper_888ab2a3(10)
					event.SetFadeOut(3, 255, 255, 255)
					at = 7
					helper_888ab2a3(3)
					event.SetFadeIn(8)
					at = 8
					helper_888ab2a3(20)
					event.SetFadeOut(30, 255, 255, 255)
					at = 9
					helper_888ab2a3(30)
					at = 10
					helper_10af0()
					helper_9dafbc83(30.0, vm.f32(-2.8), -80.0, vm.f32(3.14))
					event.SetCameraRef(30.0, 27.2, -80.0)
					event.SetCameraPos(30.0, 37.2, 40.0)
					event.ResetCamera(0)
					event.SetFadeIn(10)
					event.Finish()
					return
				else
					at = 11
					helper_5fb66cb1()
				end
			end
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ee1c51d0(0, 23, 5, 256, 208)
			end
			return 0
		end
		if at <= 10 then
			if at == 3 then
				var3 = received[2] :: number
			end
			if at <= 3 then
				local _ = var1 == 1
				var1 = 2
			end
			if at <= 4 then
				helper_038a2e4d(3)
			end
			if at <= 5 then
				helper_038a2e4d(10)
			end
			if at <= 6 then
				helper_038a2e4d(3)
			end
			if at <= 7 then
				helper_038a2e4d(20)
			end
			if at <= 8 then
				helper_038a2e4d(30)
			end
			if at <= 9 then
				at = 10
				helper_10af0()
				return vm.continue_with(function()
					helper_9dafbc83(30.0, vm.f32(-2.8), -80.0, vm.f32(3.14))
					event.SetCameraRef(30.0, 27.2, -80.0)
					event.SetCameraPos(30.0, 37.2, 40.0)
					event.ResetCamera(0)
					event.SetFadeIn(10)
					event.Finish()
					return
				end)
			end
			helper_43f02c95(30.0, vm.f32(-2.8), -80.0, vm.f32(3.14))
			return 0
		end
		if at <= 11 then
			return 0
		end
		return nil
	end)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- Event 17080, which map data, a script or the engine runs by number.
function script.event_17080()
	event.SetCharaShow(1, 0)
	event.SetCharaShow(2, 0)
	event.SetStatusbarShow(0, 1.0)
	helper_10af0()
end

return script
