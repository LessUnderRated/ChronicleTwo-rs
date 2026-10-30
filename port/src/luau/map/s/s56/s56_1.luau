--!strict
-- map/s/s56/s56_1.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_06dca721 = require("@lib/event/helper_06dca721")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_35a95052 = require("@lib/event/helper_35a95052")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_4c87af69 = require("@lib/event/helper_4c87af69")
local helper_52115bbf = require("@lib/event/helper_52115bbf")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_a0ca2586 = require("@lib/event/helper_a0ca2586")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_df618068 = require("@lib/event/helper_df618068")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local var0: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	var0 = event.GetBgmNo() or var0
	if var0 ~= 17 then
		event.StopBgm(0)
		wait_frames(6)
		event.LoadBgm(17)
	end
	event.PlayBgm(0)
	event.LoadSound(3682)
	flag = event.GetFlag(348) or flag
	if flag == 1 then
		event.FuncPointShow("", "e348", 0)
		event.EohSyncObj_2(0, "p07_d03b01")
		event.EohSetShow(0, 0)
	end
	flag_2 = event.GetFlag(352) or flag_2
	if flag_2 == 1 then
		event.FuncPointShow("", "event", 0)
	end
end

--- Helper function.
local function helper_166d0()
	local argc: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		event.SetMesPreset(0, 0)
		event.SetMesShippo(0, 0)
		argc = event.GetItemNum(371) or argc
		if argc <= 0 then
			event.MesMake_2(
				0,
				"If we could get back to the past from here,\nwe should be able to save Crest!\nBut how in the world do we do that?"
			)
			at = 1
			helper_75684dd8(0, -1, 5, 256, 208)
			event.SetMesPreset(0, 4)
			event.SetMesWindowMode(0, 4)
			event.MesMake_2(
				0,
				"[(!)]Is there really a way to travel back to\nthe past? Maybe if you had some sort or\nspecial device or something..."
			)
			at = 2
			helper_75684dd8(0, -1, 8, 0, 0)
			event.MesMake_2(
				0,
				"[(!)]That reminds me. Supposedly there's an\nequipment shop at Stella Temple that\ndeals in rare articles and goods.<page>Who knows, maybe you could find\nsomething useful there."
			)
			at = 3
			helper_75684dd8(0, -1, 8, 0, 0)
		else
			event.MesMake_2(
				0,
				"We should be able to help out Crest\nnow! Let's head back to the past!\n(Press (#) to open Menu)"
			)
			at = 4
			var1 = helper_c292fa16(0, -1, 5, 256, 208, var1)
			if var1 == 1 then
				event.SetMesShippo(0, 1)
				return 1
			end
		end
		event.SetMesPreset(0, 0)
		event.SetMesShippo(0, 1)
		return 0
	end, function(received: { any })
		if at <= 4 then
			if at == 4 then
				var1 = received[2] :: number
			end
			if at <= 1 then
				helper_ee1c51d0(0, -1, 8, 0, 0)
			end
			if at <= 2 then
				helper_ee1c51d0(0, -1, 8, 0, 0)
			end
			if at <= 3 then
				var1 = helper_35a95052(0, -1, 5, 256, 208, var1)
			end
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_13520()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	print("GET_ACTIVE_CHR_NO-------", active_chr_no, "\n")
	if active_chr_no == 0 then
		global0 = 0
		global1 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e300/e352/e352_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 1, "info", global1, 17)
		event.LoadEquip(5, 1, 0, "info", global1, 18)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 12)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e300/e352/e352_monica1.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
	end
	if active_chr_no == 1 then
		global0 = 8
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 1, "info", global0, 17)
		event.LoadEquip(5, 0, 0, "info", global0, 18)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 12)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e300/e352/e352_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e300/e352/e352_monica1.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e300/e352/e352_lin.gltf", "info", 9)
	event.CharaActive(0, 9)
	event.EohSyncChara(4, 9)
	event.ObjsInit(2, 9)
	event.ObjsSyncObj(2, 4)
	event.LoadChara(5, "event/e300/e352/e352_tokei_h.gltf", "info", 19)
	event.CharaActive(0, 19)
	event.LoadChara(5, "event/e300/e352/e352_monica_tokei.gltf", "info", 13)
	event.CharaActive(0, 13)
	event.LoadChara(5, "event/e300/e352/e352_sdokei.gltf", "info", 20)
	event.CharaActive(0, 20)
	event.LoadChara(5, "event/e300/e352/e352_mabu.gltf", "info", 21)
	event.CharaActive(0, 21)
	event.LoadChara(5, "event/e300/e352/e352_hikari.gltf", "info", 22)
	event.CharaActive(0, 22)
	event.SetCharaType(22, 4)
	event.LoadMes(0, 5, "event/e300/e352/e352_1.txt")
end

--- Helper function.
local function helper_22c00000()
	local var0: s32 = 0
	print("GET_ACTIVE_CHR_NO-------", var0, "\n")
	global0 = 0
	global1 = 8
	global0 = 8
	global1 = 0
end

--- Helper function.
local function helper_12fcc()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(9)
	event.DeleteChara(19)
	event.DeleteChara(13)
	event.DeleteChara(20)
	event.DeleteChara(21)
	event.DeleteChara(22)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.SetStatusbarShow(1, 1.0)
	event.Finish()
	vm.wait(1)
end

--- Helper function.
local function helper_1499c()
	local var4: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(352, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetMotionBlur(0)
		event.StopBgm(0)
		at = 2
		vm.wait(2)
		at = 3
		vm.wait(3)
		at = 4
		vm.wait(4)
		at = 5
		vm.wait(5)
		event.LoadSound(3831)
		var4 = event.SndLoadSound_2(3831) or var4
		helper_13520()
		event.InitDramaScene()
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "無表情")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.ObjsTexAnime(2, 1, "半口")
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(2, "上見立ち", 4)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 9)
		event.CmrsSetPos(496.47, 169.37, -809.35)
		event.CmrsSetRef(508.77, 169.14, -850.82)
		event.ObjsSetPos(2, 543.2, 144.04, -840.61)
		event.ObjsSetRot(2, 0.0, -1.99, 0.0)
		event.ObjsSetPos(0, 538.49, 145.86, -872.44)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetPos(1, 567.83, 142.65, -858.12)
		event.ObjsSetRot(1, 0.0, -0.92, 0.0)
		event.CmrsMove2(530.44, 169.37, -799.27, 542.75, 169.14, -840.74, 120, 2, 1.0)
		event.SetFadeIn(30)
		at = 6
		wait_camera()
		at = 7
		wait_frames(30)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 8
		helper_4116e6bb(3520010)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "うなづく", 6)
		event.ObjsNextMotion(2, "上見立ち", 4)
		event.SetPakuAnim(4, "通常口パク")
		at = 9
		helper_4116e6bb(3520020)
		event.ResetPakuAnim()
		at = 10
		wait_objects(2)
		event.SetReference(global1, "sword_hand", 13)
		event.CharaActive(1, 13)
		event.ObjsSetPos(1, 519.39, 147.4, -861.34)
		event.ObjsSetRot(1, 0.0, -0.2, 0.0)
		event.ObjsSetRot(0, 0.0, -0.6, 0.0)
		event.ObjsSetMotion(2, "下見立ち", 4)
		event.SndSePlay(var4, 0)
		event.ObjsSetMotion(1, "置く～下見", 6)
		event.ObjsNextMotion(1, "下見", 4)
		event.CmrsSetPos(485.69, 161.28, -803.81)
		event.CmrsSetRef(535.39, 163.79, -859.0)
		at = 11
		wait_frames(27)
		event.SndSePlay(var4, 1)
		event.DelReference(13)
		event.CharaActive(0, 13)
		event.CharaActive(1, 19)
		event.SetCharaPos(19, 516.77, 149.74, -850.63)
		at = 12
		wait_frames(60)
		event.CmrsSetPos(499.2, 155.53, -839.73)
		event.CmrsSetRef(516.77, 149.74, -850.63)
		at = 13
		wait_frames(60)
		event.CharaActive(1, 20)
		event.SetCharaPos(20, 516.77, 149.74, -850.63)
		event.SetMotion(20, "砂時計光る", 2, -1, 1)
		event.SndSePlay(var4, 2)
		at = 14
		wait_frames(60)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "目とじ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "目とじ")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "無表情")
		event.ObjsTexAnime(2, 1, "目とじ")
		event.ObjsTexAnime(2, 1, "半口")
		event.ObjsSetMotion(2, "まぶしい", 6)
		event.ObjsSetMotion(0, "まぶしい", 6)
		event.ObjsSetMotion(1, "まぶしい", 6)
		event.ObjsNextMotion(2, "まぶしいＬ", 4)
		event.ObjsNextMotion(0, "まぶしいＬ", 4)
		event.ObjsNextMotion(1, "まぶしいＬ", 4)
		event.ObjsSetPos(0, 539.17, 145.1, -856.52)
		event.ObjsSetRot(0, 0.0, -1.99, 0.0)
		event.ObjsSetPos(1, 538.92, 143.03, -823.0)
		event.ObjsSetRot(1, 0.0, -2.24, 0.0)
		event.CmrsSetPos(494.78, 152.75, -815.47)
		event.CmrsSetRef(543.94, 165.9, -843.48)
		at = 15
		wait_frames(30)
		event.CharaActive(1, 21)
		event.SetCharaPos(21, 547.24, 149.74, -859.21)
		event.SetMotion(21, "まぶしい", 2, -1, 1)
		at = 16
		wait_frames(60)
		event.CharaActive(0, 21)
		event.CmrsSetPos(1717.19, 225.79, 121.59)
		event.CmrsSetRef(543.94, 165.9, -843.48)
		event.SndSePlay(var4, 3)
		event.CharaActive(1, 22)
		event.SetCharaPos(22, 516.77, 149.74, -850.63)
		event.SetMotion(22, "光る光る", 2, -1, 1)
		at = 17
		wait_frames(75)
		event.ScrEffInitRaster(0.0, 0.0, 0.15707964)
		event.ScrEffStartRaster(60.0, 0.3926991, -1.0, 60)
		at = 18
		wait_frames(75)
	end, function(received: { any }): boolean
		if at <= 5 then
			helper_22c00000()
			helper_344d6cd8()
		end
		if at <= 6 then
			wait_frames_skipping(30)
		end
		if at <= 7 then
			helper_8cd371d7(3520010)
		end
		if at <= 8 then
			helper_8cd371d7(3520020)
		end
		if at <= 9 then
			helper_238b5abc(2)
		end
		if at <= 10 then
			wait_frames_skipping(27)
		end
		if at <= 11 then
			wait_frames_skipping(60)
		end
		if at <= 12 then
			wait_frames_skipping(60)
		end
		if at <= 13 then
			wait_frames_skipping(60)
		end
		if at <= 14 then
			wait_frames_skipping(30)
		end
		if at <= 15 then
			wait_frames_skipping(60)
		end
		if at <= 16 then
			wait_frames_skipping(75)
		end
		if at <= 17 then
			wait_frames_skipping(75)
		end
		return true
	end)
	at = 19
	vm.entry(19)
	event.CancelDramaScene()
	event.CmrsFadeOut(30, 255.0, 255.0, 255.0)
	at = 20
	wait_frames(30)
	event.ScrEffStopRaster(0.0, 0.0, 0.0, 0)
	event.SndSeAllStop(4)
	event.BgmLoadCancel()
	at = 21
	vm.wait(21)
	at = 22
	helper_12fcc()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event_99()
	helper_06dca721()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.Initialize()
	vm.wait(1)
	helper_c956b4a2(64)
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local var0: s32 = 0
	local item: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		var0 = event.GetEventData_2(6) or var0
		if var0 == 1 then
			at = 1
			if helper_166d0() ~= 0 then
				var0 = 2
			end
		end
		if var0 == 2 then
			event.SetStatusbarShow(0, 0.16666667)
			at = 2
			wait_frames(6)
			event.GotoUseItem(371)
			at = 3
			vm.wait(3)
			item = vmhost.used_item() or item
			if item == 371 then
				event.FuncPointShow("", "event", 0)
				event.SetFadeOut(20)
				at = 4
				wait_frames(20)
				event.DngSetupMainUnit(0)
				at = 5
				helper_1499c()
				event.LoadDungeonMapFile("d03b02")
				event.LoadScript("d03b02/d03b02.stb", 502)
				return
			elseif item > 0 then
				at = 6
				helper_df618068()
			end
			event.SetStatusbarShow(1, 0.16666667)
		end
		at = 7
		wait_frames(6)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 5 then
			if at == 1 then
				local _ = received[1] :: number
			end
			if at <= 1 then
				local _ = var0 == 1
				var0 = 2
				wait_frames_skipping(6)
			end
			if at <= 3 then
				wait_frames_skipping(20)
			end
			if at <= 4 then
				at = 5
				helper_1499c()
				return vm.continue_with(function()
					event.LoadDungeonMapFile("d03b02")
					event.LoadScript("d03b02/d03b02.stb", 502)
					return
				end)
			end
			return 0
		end
		if at <= 7 then
			if at <= 6 then
				wait_frames_skipping(6)
			end
			return 0
		end
		return nil
	end)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.FuncPointShow("", "e348", 0)
		event.EohSyncObj_2(0, "p07_d03b01")
		event.EohSetShow(0, 0)
		helper_52115bbf()
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		at = 1
		wait_frames(30)
		at = 2
		helper_a0ca2586()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_a0ca2586()
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
	if helper_4c87af69() ~= 0 then
		event.LoadScript("d03/d03.stb", 1000)
	end
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- Event 13480, which map data, a script or the engine runs by number.
script.event_13480 = helper_a0ca2586

--- Event 13520, which map data, a script or the engine runs by number.
function script.event_13520()
	event.DngSetupMainUnit(0)
	helper_1499c()
	event.LoadDungeonMapFile("d03b02")
	event.LoadScript("d03b02/d03b02.stb", 502)
end

return script
