--!strict
-- map/s/s11/s11_3.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_02a8d032 = require("@lib/event/helper_02a8d032")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_194337c1 = require("@lib/event/helper_194337c1")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_31bbf01d = require("@lib/event/helper_31bbf01d")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_4337dd96 = require("@lib/event/helper_4337dd96")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_48c10ac3 = require("@lib/event/helper_48c10ac3")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_511b3eab = require("@lib/event/helper_511b3eab")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_56de521d = require("@lib/event/helper_56de521d")
local helper_5d8e6e04 = require("@lib/event/helper_5d8e6e04")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_7d54f41c = require("@lib/event/helper_7d54f41c")
local helper_7d730ff7 = require("@lib/event/helper_7d730ff7")
local helper_8ab07f4b = require("@lib/event/helper_8ab07f4b")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_a87eb945 = require("@lib/event/helper_a87eb945")
local helper_b2c29834 = require("@lib/event/helper_b2c29834")
local helper_b4453d02 = require("@lib/event/helper_b4453d02")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_c4692af0 = require("@lib/event/helper_c4692af0")
local helper_c99744f1 = require("@lib/event/helper_c99744f1")
local helper_cc3637c1 = require("@lib/event/helper_cc3637c1")
local helper_ce5f1c27 = require("@lib/event/helper_ce5f1c27")
local helper_f38eabca = require("@lib/event/helper_f38eabca")
local helper_f4ec8310 = require("@lib/event/helper_f4ec8310")
local helper_f57795f8 = require("@lib/event/helper_f57795f8")
local helper_fdad3d3b = require("@lib/event/helper_fdad3d3b")
local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	local var1: s32 = 0
	helper_4337dd96()
	flag = event.GetFlag(640) or flag
	helper_56de521d(flag)
	var1 = event.GetCnt(16) or var1
	if bit32.band(var1, 1) ~= 0 then
		event.EohSyncObj_3(0, "p01_s11", "s11_10-m0")
		event.EohSetShow(0, 1)
	end
	if bit32.band(var1, 2) ~= 0 then
		event.EohSyncObj_3(0, "p01_s11", "s11_09-m1")
		event.EohSetShow(0, 1)
	end
	if bit32.band(var1, 4) ~= 0 then
		event.EohSyncObj_3(0, "p01_s11", "s11_08-m0")
		event.EohSetShow(0, 1)
	end
	if bit32.band(var1, 8) ~= 0 then
		event.EohSyncObj_3(0, "p01_s11", "s11_07-m0")
		event.EohSetShow(0, 1)
	end
end

--- Helper function.
local function helper_3ab08()
	local var0: s32 = 0
	local flag: s32 = 0
	local var2: any = 0
	local language_code: s32 = 0
	local var4: f32 = 0
	local var5: any = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetEventData_2(13) or var0
		flag = event.GetFlag(55) or flag
		if flag == 0 then
			event.SetFlag(55, 1)
			event.SetMesShippo(0, 1)
			event.SetMesPreset(0, 0)
			at = 1
			helper_31bbf01d(0, var0, 0)
			event.MesMake_2(
				0,
				"Mann, Chrono-Verbindungen sind\nalso m[UNI00f6]glich! Unglaublich!<page>Die Technik der Alten kannte\necht keine Grenzen, was?"
			)
			at = 2
			helper_0ffc2526(0, -1, var0, 0, 0)
			event.MesMake_2(
				0,
				"Ich habe gelesen, dass Objekte unter\nChrono-Verbindung gleichzeitig an zwei\nOrten und Zeiten existieren k[UNI00f6]nnen."
			)
			at = 3
			helper_0ffc2526(0, -1, var0, 0, 0)
			event.MesMake_2(
				0,
				"Das hei[UNI00df]t, Paznos ist in dieser\nZeit, existiert aber\nauch in der Zukunft.<page>Das Konzept ist etwas verwirrend,\ndas gebe ich zu."
			)
			at = 4
			helper_0ffc2526(0, -1, var0, 0, 0)
			event.MesMake_2(0, "Tja, ich denke, wir\nlegen am besten los.")
			at = 5
			helper_0ffc2526(0, -1, var0, 0, 0)
			event.SetMotion(var0, "立ち")
			set_window_mode(0, 1)
			event.SetMesShippo(0, 0)
			event.SetMesQuestionGyou(0, 0)
			event.SetMesEtc(0, 0, 1)
			event.MesMake_2(0, "Ja!\nIch will noch etwas bleiben.")
			at = 6
			var2 = helper_bac0e30d(0, -1, 5, 256, 208, 2, 1)
			event.SetMesEtc(0, 0, 0)
			event.SetMesShippo(0, 1)
			if var2 ~= 0 then
				event.SetMotion(var0, "会話")
				event.MesMake_2(0, "Beeil dich.")
				at = 7
				helper_0ffc2526(0, -1, var0, 0, 0)
				event.SetMotion(var0, "立ち")
				event.Finish()
				return 0
			end
			return 1
		else
			event.Initialize()
			event.SetMesWindowMode(0, 7)
			event.AssignStack(5)
			event.ClearStack(5)
			language_code = event.GetLanguage() or language_code
			if language_code == 0 then
				event.LoadMes(0, 5, "event/e600/e648/e648.txt")
			else
				event.LoadMes(0, 5, "event/e600/e648/e648_1.txt")
			end
			event.StopBgm(0)
			at = 8
			var4 = helper_4e93f9fc(var0, 0, 0)
			at = 9
			helper_4116e6bb(6480010)
			event.SetMotion(var0, "立ち")
			set_window_mode(0, 1)
			event.SetMesShippo(0, 0)
			event.SetMesQuestionGyou(0, 0)
			event.SetMesEtc(0, 0, 1)
			event.MesMake_2(0, "Ja!\nIch will noch etwas bleiben.")
			at = 10
			var5 = helper_bac0e30d(0, -1, 5, 256, 208, 2, 1)
			event.SetMesEtc(0, 0, 0)
			event.SetMesShippo(0, 1)
			if var5 ~= 0 then
				event.SetMotion(var0, "会話")
				event.SetMesWindowMode(0, 7)
				at = 11
				helper_4116e6bb(6480020)
			end
			event.LoadMes(0, -1)
			set_window_mode(0, 1)
			at = 12
			helper_5d8e6e04(var0, var4, 0, 0)
			if var5 == 0 then
				return 1
			else
				event.PlayBgm(0)
				return 0
			end
		end
	end, function(received: { any })
		if at <= 7 then
			if at == 6 then
				var2 = received[1] :: number
			end
			if at <= 1 then
				helper_48c10ac3(0, -1, var0, 0, 0)
			end
			if at <= 2 then
				helper_48c10ac3(0, -1, var0, 0, 0)
			end
			if at <= 3 then
				helper_48c10ac3(0, -1, var0, 0, 0)
			end
			if at <= 4 then
				helper_48c10ac3(0, -1, var0, 0, 0)
			end
			if at <= 5 then
				helper_8ab07f4b(0, 1)
				var2 = helper_7d54f41c(0, -1, 5, 256, 208, 2, 1)
			end
			if at <= 6 then
				helper_48c10ac3(0, -1, var0, 0, 0)
			end
			return 0
		end
		if at <= 12 then
			if at == 8 then
				var4 = received[1] :: number
			end
			if at == 10 then
				var5 = received[1] :: number
			end
			if at <= 8 then
				helper_8cd371d7(6480010)
			end
			if at <= 9 then
				helper_8ab07f4b(0, 1)
				var5 = helper_7d54f41c(0, -1, 5, 256, 208, 2, 1)
			end
			if at <= 10 then
				helper_8cd371d7(6480020)
			end
			if at <= 11 then
				helper_8ab07f4b(0, 1)
				helper_194337c1(var0, var4, 0, 0)
			end
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_2ae80()
	local active_chr_no: s32 = 0
	local block: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 32
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e600/e616/e616_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e600/e616/e616_monica.gltf", "info", global1)
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
		event.LoadMotion(5, "event/e600/e616/e616_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e600/e616/e616_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.LoadChara(5, "event/e600/e616/e616_osmond.gltf", "info", 38)
	event.CharaActive(0, 38)
	event.EohSyncChara(13, 38)
	event.ObjsInit(2, 38)
	event.ObjsSyncObj(2, 13)
	event.LoadChara(5, "event/e600/e616/e616_eina_holo.gltf", "info", 41)
	event.CharaActive(0, 41)
	event.EohSyncChara(6, 41)
	event.ObjsInit(6, 41)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(5, "event/e600/e616/e616_touei.gltf", "info", 39)
	event.CharaActive(0, 39)
	event.LoadChara(5, "event/e600/e616/e616_hologram.gltf", "info", 40)
	event.CharaActive(0, 40)
	event.SetCharaType(40, 4)
	event.LoadChara(5, "event/e600/e616/e616_key_h.gltf", "info", 42)
	event.CharaActive(0, 42)
	event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 43)
	event.EohSyncChara(15, 43)
	event.ObjsInit(11)
	event.ObjsSyncObj(11, 15)
	event.CharaActive(0, 43)
	event.EohSyncObj_2(16, "p10_s48")
	event.EohSyncObj_2(4, "p01_train01")
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.EohSyncObj_3(5, "p01_train01", "s3601_12-m1")
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.EohSyncObj_3(7, "p01_s11", "s11_06-m0")
	event.ObjsInit(7)
	event.ObjsSyncObj(7, 7)
	event.EohSyncObj_3(8, "p01_s11", "s11_04-m0")
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.EohSyncObj_3(9, "p01_s11", "s11_05-m0")
	event.ObjsInit(9)
	event.ObjsSyncObj(9, 9)
	event.EohSyncObj_4(10, "p01_s11", "s11_04-m0", "mi1")
	event.EohSyncObj_4(11, "p01_s11", "s11_05-m0", "mi2")
	event.EohSyncObj_4(12, "p01_s11", "s11_06-m0", "mi")
	event.EohSyncObj_3(14, "p01_s11", "s11_03-m0")
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 14)
	block = event.LoadImg_4(5, "textures/event/e600/e616/e616.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "e61601", block)
	event.SpriteSetColor(0, 128, 128, 128, 0)
	event.SpriteSetUvsize(0, 0, 0, 512, 416)
	event.SpriteSetPutsize(0, 512, 416)
	event.SpriteSetPos(0, 256, 208)
	event.SpriteSetDraw(0, 0)
	event.EohSyncSprite(20, 0)
	event.ObjsInit(20)
	event.ObjsSyncObj(20, 20)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "e61602", block)
	event.SpriteSetColor(1, 128, 128, 128, 0)
	event.SpriteSetUvsize(1, 0, 0, 512, 416)
	event.SpriteSetPutsize(1, 512, 416)
	event.SpriteSetPos(1, 256, 208)
	event.SpriteSetDraw(1, 0)
	event.EohSyncSprite(21, 1)
	event.ObjsInit(21)
	event.ObjsSyncObj(21, 21)
	event.SpriteInit(2)
	event.SpriteSetType(2, 0)
	event.SpriteSetTexture(2, "e61603", block)
	event.SpriteSetColor(2, 128, 128, 128, 0)
	event.SpriteSetUvsize(2, 0, 0, 512, 416)
	event.SpriteSetPutsize(2, 512, 416)
	event.SpriteSetPos(2, 256, 208)
	event.SpriteSetDraw(2, 0)
	event.EohSyncSprite(22, 2)
	event.ObjsInit(22)
	event.ObjsSyncObj(22, 22)
	event.SpriteInit(3)
	event.SpriteSetType(3, 0)
	event.SpriteSetTexture(3, "e61604", block)
	event.SpriteSetColor(3, 128, 128, 128, 0)
	event.SpriteSetUvsize(3, 0, 0, 512.0, 416.0)
	event.SpriteSetPutsize(3, 512, 416)
	event.SpriteSetPos(3, 256, 208)
	event.SpriteSetDraw(3, 0)
	event.EohSyncSprite(23, 3)
	event.ObjsInit(23)
	event.ObjsSyncObj(23, 23)
	event.SpriteInit(4)
	event.SpriteSetType(4, 0)
	event.SpriteSetTexture(4, "e61605", block)
	event.SpriteSetColor(4, 128, 128, 128, 0)
	event.SpriteSetUvsize(4, 0, 0, 512.0, 416.0)
	event.SpriteSetPutsize(4, 512, 416)
	event.SpriteSetPos(4, 256, 208)
	event.SpriteSetDraw(4, 0)
	event.EohSyncSprite(24, 4)
	event.ObjsInit(24)
	event.ObjsSyncObj(24, 24)
	event.LoadMes(0, 5, "event/e600/e616/e616_1.txt")
end

--- Helper function.
local function helper_22c00000()
	global0 = 0
	global1 = 32
	global0 = 32
	global1 = 0
end

--- Helper function.
local function helper_2a7cc()
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
	event.ObjsSetPos(4, 895.0, -254.5, 3348.1)
	event.ObjsSetRot(4, 0.0, 1.57, 0.0)
	event.ObjsSetPos(9, 0.0, 0.0, 0.0)
	event.ObjsSetPos(8, 0.0, 0.0, 0.0)
	event.ObjsSetPos(7, 0.0, 0.0, 0.0)
	event.EohSetFrameShow(10, "", 1)
	event.EohSetFrameShow(11, "", 1)
	event.DelImg(0)
	event.DeleteChara(38)
	event.DeleteChara(39)
	event.DeleteChara(40)
	event.DeleteChara(41)
	event.DeleteChara(42)
	event.DeleteChara(43)
	event.SetCharaPos(0, 1.4, -13.3, 312.5)
	event.SetCharaRot(0, 0.0, 3.12, 0.0)
	event.SetStatus(1, 0, 256, 0)
end

--- Helper function.
local function helper_2d2e8()
	local var6: s32 = 0
	local var7: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var11: s32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local var14: f32 = 0
	local var15: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	local var21: f32 = 0
	local var22: f32 = 0
	local var23: f32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local rot_z: f32 = 0
	local var27: s32 = 0
	local var28: f32 = 0
	local var29: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		at = 2
		vm.wait(2)
		at = 3
		vm.wait(3)
		at = 4
		vm.wait(4)
		at = 5
		vm.wait(5)
		event.LoadBgm(5)
		event.PlayBgm(0)
		var6 = event.SndLoadSound_2(6201) or var6
		var7 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var7
		helper_4337dd96()
		helper_2ae80()
		event.SetStatus(1, 0, 256, 1)
		event.EohSetFrameShow(10, "", 0)
		event.EohSetFrameShow(11, "", 0)
		event.EohSetShow(16, 0)
		event.InitDramaScene()
		event.EohSetFootSoundId(0, 14)
		event.EohSetFootSoundId(1, 14)
		event.EohSetFootSoundId(13, 14)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "目パチ")
		event.ObjsSetPos(9, 0.0, 45.5, 0.0)
		event.ObjsSetPos(8, 0.0, 45.5, 0.0)
		event.ObjsSetPos(7, 0.0, -71.0, 0.0)
		event.EohSetPos(4, 6000.0, 2400.0, 5548.1)
		event.EohSetRot(4, 0.2, -1.77, 0.0)
		event.CmrsSetPos(0.0, 95.11, 4837.34)
		event.CmrsSetRef(6000.0, 2400.0, 5548.1)
		event.SndSePlay(var6, 0)
		event.SetFadeIn(30)
		event.ObjsRotation2(4, 0.0, -1.57, 0.0, 60, 2, 1.0)
		var11 = 0
		while var11 < 90 do
			at = 6
			vm.wait(6)
			do
				local out1, out2, out3 = event.EohGetPos(4)
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			pos_x = vm.f32(pos_x + vm.f32(vm.f32(-790.0 - pos_x) / 24.0))
			pos_y = vm.f32(pos_y + vm.f32(vm.f32(-254.5 - pos_y) / 16.0))
			pos_z = vm.f32(pos_z + vm.f32(vm.f32(vm.f32(3348.1) - pos_z) / 16.0))
			event.EohSetPos(4, pos_x, pos_y, pos_z)
			event.CmrsSetRef(pos_x, pos_y, pos_z)
			var11 = var11 + 1
		end
		event.ObjsMove2(4, -790.0, -254.5, 3348.1, 30, 2, 1.0)
		event.CmrsMoveRef(0.0, 102.15, 3577.24, 60)
		event.ObjsRotation(4, 0.0, -1.57, 0.0, 30)
		var12 = 2.0
		var11 = 0
		while var11 < 30 do
			do
				local out1, out2, out3 = event.EohGetPos(4)
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			if vm.imod(var11, 2) == 0 then
				pos_y = vm.f32(pos_y + var12)
			else
				pos_y = vm.f32(pos_y - var12)
			end
			var12 = vm.f32(var12 - vm.f32(var12 / 30.0))
			event.EohSetPos(4, pos_x, pos_y, pos_z)
			var11 = var11 + 1
			at = 7
			vm.wait(7)
		end
		at = 8
		wait_objects(4)
		at = 9
		wait_camera()
		at = 10
		wait_frames(60)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 38)
		event.CmrsSyncObj(0, 0.0, 25.0, 0.0, -3.12, -10.0, 70.0)
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsSetMotion(1, "歩き", 4, -1.0, 1)
		event.ObjsSetMotion(2, "歩き")
		event.ObjsSetPos(1, -20.0, -268.4, 2550.0)
		event.ObjsSetRot(1, 0.0, -3.12, 0.0)
		event.ObjsSetPos(0, 0.0, -268.4, 2550.0)
		event.ObjsSetRot(0, 0.0, -3.12, 0.0)
		event.ObjsSetPos(2, 20.0, -268.4, 2550.0)
		event.ObjsSetRot(2, 0.0, -3.12, 0.0)
		event.ObjsMove(0, 0.0, -268.4, 2450.0, 60, 1)
		event.ObjsMove(1, -20.0, -268.4, 2450.0, 60, 1)
		event.ObjsMove(2, 20.0, -268.4, 2450.0, 60, 1)
		event.SetPakuAnim(0, "通常口パク")
		at = 11
		helper_1584c528(6160130, -1)
		event.ResetPakuAnim()
		at = 12
		wait_frames(30)
		event.CmrsReleaseObj()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(581.19, 1481.15, 2239.69, 100.38, -155.85, 234.68)
		event.CmrsAddPas(855.1, 1481.15, 2395.2, 100.38, -155.85, 234.68)
		event.CmrsStartPas()
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 240)
		event.ObjsAddPas(0, 0.0, -118.38, 1388.15)
		event.ObjsAddPas(0, 0.0, -79.03, 1037.78)
		event.ObjsStartPas(0, 1)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 240)
		event.ObjsAddPas(1, -20.0, -118.38, 1388.15)
		event.ObjsAddPas(1, -20.0, -79.03, 1037.78)
		event.ObjsStartPas(1, 1)
		event.ObjsInitPas(2)
		event.ObjsSetPasFrm(2, 240)
		event.ObjsAddPas(2, 20.0, -118.38, 1388.15)
		event.ObjsAddPas(2, 20.0, -79.03, 1037.78)
		event.ObjsStartPas(2, 1)
		at = 13
		helper_1584c528(6160140, -1)
		at = 14
		helper_1584c528(6160150, -1)
		at = 15
		wait_frames(30)
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(1, 2)
		event.EohSetFootSoundId(13, 2)
		event.CmrsSetPos(5.17, 166.7, 673.45)
		event.CmrsSetRef(0.43, 32.65, 49.45)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 200)
		event.ObjsAddPas(0, -11.19, -13.08, 430.16)
		event.ObjsAddPas(0, 13.82, -7.06, 230.85)
		event.ObjsAddPas(0, 57.64, -7.06, 139.2)
		event.ObjsStartPas(0)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 220)
		event.ObjsAddPas(1, -25.21, -13.07, 432.0)
		event.ObjsAddPas(1, -23.57, -9.29, 250.9)
		event.ObjsAddPas(1, -36.33, -7.06, 152.97)
		event.ObjsStartPas(1)
		event.ObjsInitPas(2)
		event.ObjsSetPasFrm(2, 240)
		event.ObjsAddPas(2, 39.42, -13.09, 422.23)
		event.ObjsAddPas(2, 6.38, -13.28, 301.26)
		event.ObjsAddPas(2, -3.42, -7.89, 248.04)
		event.ObjsAddPas(2, 0.66, -7.06, 171.52)
		event.ObjsStartPas(2)
		at = 16
		wait_objects(0)
		event.SndSePlay(var6, 1)
		event.ObjsSetMotion(0, "立ち")
		at = 17
		wait_objects(1)
		event.ObjsSetMotion(1, "立ち")
		at = 18
		wait_objects(2)
		event.ObjsSetMotion(2, "立ち")
		at = 19
		helper_4116e6bb(6160160)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.CmrsSetPos(30.32, 33.53, 321.43)
		event.CmrsSetRef(-19.91, 9.23, 144.84)
		event.SetCharaPos(39, -2.0, -3.77, 210.36)
		event.SetCharaRot(39, 0.0, 3.05, 0.0)
		event.SetCharaPos(40, -2.0, -3.77, 210.36)
		event.SetCharaRot(40, 0.0, 3.05, 0.0)
		event.ObjsSetPos(1, -32.3, -7.06, 187.68)
		event.ObjsSetRot(1, 0.0, 0.83, 0.0)
		event.ObjsSetPos(0, 28.47, -7.06, 175.02)
		event.ObjsSetRot(0, 0.0, -0.49, 0.0)
		event.ObjsSetPos(2, -3.65, -7.06, 218.56)
		event.ObjsSetRot(2, 0.0, 3.05, 0.0)
		event.ObjsSetMotion(0, "下見立ち")
		event.ObjsSetMotion(1, "下見立ち")
		event.SndSePlay(var6, 2)
		event.ObjsSetMotion(2, "装置置く", 6)
		event.ObjsNextMotion(2, "装置置くループ", 4)
		at = 20
		wait_frames(60)
		event.ObjsSetMotion(2, "装置置く戻り", 6)
		at = 21
		wait_objects(2)
		event.CharaActive(1, 39)
		event.CharaActive(1, 40)
		event.SndSePlay(var6, 3)
		event.SetMotion(40, "現れる", 6, -1, 1)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		at = 22
		wait_frames(30)
		event.CharaActive(0, 38)
		event.CharaActive(1, 41)
		event.ObjsSetPos(6, -2.0, 5.2, 210.36)
		event.ObjsSetRot(6, 0.0, 3.12, 0.0)
		event.ObjsSetMotion(6, "立ち", 4)
		event.CmrsSetPos(25.82, 26.72, 190.12)
		event.CmrsSetRef(-1.98, 29.58, 205.98)
		event.SetPakuAnim(6, "口パク")
		at = 23
		helper_4116e6bb(6160170)
		event.ResetPakuAnim()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(25.82, 26.72, 190.12, -1.98, 29.58, 205.98)
		event.CmrsAddPas(-28.98, 26.72, 187.0, -1.98, 29.58, 205.98)
		event.CmrsStartPas()
		event.SetPakuAnim(6, "口パク")
		at = 24
		helper_4116e6bb(6160180)
		event.ResetPakuAnim()
		at = 25
		wait_camera()
		event.SetPakuAnim(6, "口パク")
		at = 26
		helper_4116e6bb(6160190)
		event.ResetPakuAnim()
		at = 27
		wait_frames(15)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.CmrsSetPos(20.07, 36.4, 255.98)
		event.CmrsSetRef(-5.23, 17.06, 110.89)
		event.SetPakuAnim(0, "通常口パク")
		at = 28
		helper_4116e6bb(6160200)
		event.ResetPakuAnim()
		event.SetPakuAnim(6, "口パク")
		at = 29
		helper_4116e6bb(6160210)
		event.ResetPakuAnim()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(120)
		event.CmrsAddPas(20.07, 36.4, 255.98, -5.23, 17.06, 110.89)
		event.CmrsAddPas(-24.67, 36.4, 257.05, -5.23, 17.06, 110.89)
		event.CmrsStartPas()
		event.SetPakuAnim(1, "通常口パク")
		at = 30
		helper_4116e6bb(6160220)
		event.ResetPakuAnim()
		at = 31
		wait_camera()
		event.SetPakuAnim(6, "口パク")
		at = 32
		helper_4116e6bb(6160230)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 33
		helper_4116e6bb(6160240)
		event.ResetPakuAnim()
		at = 34
		wait_frames(15)
		event.CharaActive(1, 38)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(800)
		event.CmrsAddPas(-17.0, 360.21, 536.27, -2.0, 596.27, 210.36)
		event.CmrsAddPas(-17.0, 142.48, 536.27, -2.0, 17.1, 210.36)
		event.CmrsStartPas()
		at = 35
		helper_1584c528(6160250, -1)
		at = 36
		helper_1584c528(6160255, -1)
		at = 37
		helper_1584c528(6160260, -1)
		at = 38
		helper_1584c528(6160270, -1)
		at = 39
		helper_1584c528(6160275, -1)
		at = 40
		helper_1584c528(6160280, -1)
		at = 41
		helper_4116e6bb(6160290)
		at = 42
		wait_frames(30)
		event.SpriteSetDraw(4, 1)
		event.ObjsSetColor(24, 128, 128, 128, 128, 30)
		at = 43
		helper_4116e6bb(6160300)
		at = 44
		helper_4116e6bb(6160305)
		event.CmrsInitPas()
		event.CmrsInit()
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.CharaActive(0, 38)
		event.CmrsSetPos(20.07, 36.4, 255.98)
		event.CmrsSetRef(-5.23, 17.06, 110.89)
		at = 45
		vm.wait(45)
		event.ObjsSetColor(24, 128, 128, 128, 0, 30)
		at = 46
		wait_frames(30)
		at = 47
		helper_4116e6bb(6160310)
		event.ObjsSetMotion(0, "上→右", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		at = 48
		wait_frames(30)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(0.0, 140.0, 0.0, -229.22, 17.06, 307.42)
		event.CmrsAddPas(0.0, 140.0, 0.0, -276.98, 17.06, -272.13)
		event.CmrsStartPas()
		at = 49
		helper_4116e6bb(6160320)
		at = 50
		helper_4116e6bb(6160330)
		at = 51
		wait_camera()
		at = 52
		wait_frames(30)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(0.0, 140.0, 0.0, 236.12, 17.06, -313.37)
		event.CmrsAddPas(0.0, 140.0, 0.0, 282.78, 17.06, 279.16)
		event.CmrsStartPas()
		event.SetCrossfade(30)
		at = 53
		helper_4116e6bb(6160340)
		at = 54
		helper_4116e6bb(6160350)
		at = 55
		wait_camera()
		at = 56
		wait_frames(30)
		event.CmrsSetPos(-1.43, 44.53, 179.99)
		event.CmrsSetRef(-2.0, 29.91, 210.36)
		event.SetPakuAnim(6, "口パク")
		at = 57
		helper_4116e6bb(6160360)
		event.ResetPakuAnim()
		at = 58
		wait_frames(30)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(20, 128, 128, 128, 128, 30)
		at = 59
		helper_4116e6bb(6160370)
		event.SpriteSetDraw(1, 1)
		event.ObjsSetColor(21, 128, 128, 128, 128, 30)
		at = 60
		helper_4116e6bb(6160373)
		event.SpriteSetDraw(2, 1)
		event.ObjsSetColor(22, 128, 128, 128, 128, 30)
		at = 61
		helper_4116e6bb(6160377)
		event.SpriteSetDraw(3, 1)
		event.ObjsSetColor(23, 128, 128, 128, 128, 30)
		at = 62
		wait_frames(60)
		event.SpriteSetDraw(0, 0)
		event.SpriteSetDraw(1, 0)
		event.SpriteSetDraw(2, 0)
		event.ObjsSetColor(23, 128, 128, 128, 0, 30)
		event.CmrsSetPos(-1.02, 0.96, 158.0)
		event.CmrsSetRef(-2.0, 21.86, 210.36)
		event.SetPakuAnim(6, "口パク")
		at = 63
		helper_4116e6bb(6160380)
		event.ResetPakuAnim()
		at = 64
		wait_frames(30)
		event.CharaActive(1, 38)
		event.ObjsSetMotion(1, "歩き", 4, -1.0, 1)
		event.CmrsSetPos(625.14, 908.7, 665.85)
		event.CmrsSetRef(-3.77, 13.41, -2.77)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 90)
		event.ObjsAddPas(1, -32.3, -7.06, 187.68)
		event.ObjsAddPas(1, -11.34, -7.06, 108.48)
		event.ObjsAddPas(1, -9.03, -7.06, 99.73)
		event.ObjsStartPas(1, 1)
		at = 65
		wait_objects(1)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetPos(0, 25.73, -7.06, 162.26)
		event.ObjsSetRot(0, 0.0, -2.65, 0.0)
		event.CmrsSetPos(-198.14, 96.68, 321.01)
		event.CmrsSetRef(-28.92, 35.2, 133.4)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 90)
		event.ObjsAddPas(1, -8.28, -7.06, 120.98)
		event.ObjsAddPas(1, -5.01, -7.06, 90.55)
		event.ObjsAddPas(1, -2.73, 3.81, 72.64)
		event.ObjsAddPas(1, -1.59, 3.81, 44.63)
		event.ObjsStartPas(1, 1)
		at = 66
		wait_objects(1)
		event.ObjsSetMotion(1, "立ち")
		at = 67
		wait_frames(30)
		event.ObjsSetMotion(1, "覗きこみ", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		at = 68
		wait_objects(1)
		event.ObjsRotation(1, 0.0, -1.98, 0.0, 10)
		at = 69
		wait_objects(1)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 90)
		event.ObjsAddPas(1, -1.59, 3.81, 44.63)
		event.ObjsAddPas(1, -55.75, 3.81, 20.86)
		event.ObjsStartPas(1)
		at = 70
		wait_objects(1)
		event.ObjsRotation(1, 0.0, 3.12, 0.0, 10)
		at = 71
		wait_objects(1)
		event.ObjsSetMotion(1, "立ち")
		at = 72
		wait_frames(30)
		event.ObjsSetMotion(1, "触れる", 2)
		event.ObjsNextMotion(1, "触れるL", 4)
		at = 73
		wait_objects(1)
		event.SndSePlay(var6, 4)
		event.EohSetFrameShow(10, "", 1)
		at = 74
		wait_frames(30)
		event.ObjsSetPos(0, 5.82, -7.06, 132.65)
		event.CmrsSetPos(-74.97, 23.62, 244.3)
		event.CmrsSetRef(-15.01, 35.2, 88.03)
		event.ObjsSetMotion(1, "ユリス見", 2)
		event.ObjsNextMotion(1, "ユリス見L", 4)
		at = 75
		wait_objects(1)
		at = 76
		wait_frames(30)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsRotation(0, 0.0, 2.77, 0.0, 10)
		at = 77
		wait_objects(0)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 120)
		event.ObjsAddPas(0, 5.82, -7.06, 132.65)
		event.ObjsAddPas(0, 22.37, -7.06, 90.22)
		event.ObjsAddPas(0, 28.16, 3.81, 76.4)
		event.ObjsAddPas(0, 55.75, 3.81, 20.86)
		event.ObjsStartPas(0)
		at = 78
		wait_objects(0)
		event.ObjsRotation(0, 0.0, 3.12, 0.0, 10)
		at = 79
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		at = 80
		wait_frames(30)
		event.ObjsSetMotion(0, "柱をさわる", 6)
		event.ObjsNextMotion(0, "柱をさわるL", 4)
		at = 81
		wait_objects(0)
		event.EohSetFrameShow(11, "", 1)
		event.SndSePlay(var6, 4)
		at = 82
		wait_frames(30)
		event.CmrsSetPos(-254.77, 157.73, -140.36)
		event.CmrsSetRef(17.9, 3.44, 114.28)
		event.ObjsSetMotion(1, "触れるL", 4)
		event.ObjsSetPos(2, -30.16, -7.06, 211.83)
		event.ObjsSetRot(2, 0.0, 3.12, 0.0)
		event.ObjsSetMotion(2, "立ち", 4)
		at = 83
		wait_frames(30)
		var27 = 0
		event.ObjsSetMotion(0, "びっくり", 6)
		event.ObjsNextMotion(0, "びっくりL", 4)
		event.SndSePlay(var6, 5)
		while var27 < 300 do
			do
				local out1, out2, out3 = event.GetCharaPos(global1)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var13 = event.DistVector(var21, var22, var23) or var13
			var14 = event.Atan2f(var21, var23) or var14
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			event.SetCharaPos(global1, var18, var19, var20)
			event.AddCharaRot(global1, 0.0, 0.020933334, 0.0)
			do
				local out1, out2, out3 = event.GetCharaPos(global0)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var13 = event.DistVector(var21, var22, var23) or var13
			var14 = event.Atan2f(var21, var23) or var14
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			event.SetCharaPos(global0, var18, var19, var20)
			event.AddCharaRot(global0, 0.0, 0.020933334, 0.0)
			do
				local out1, out2, out3 = event.EohGetPos(8)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			do
				local out1, out2, out3 = event.EohGetRot(8)
				rot_x = out1 or rot_x
				rot_y = out2 or rot_y
				rot_z = out3 or rot_z
			end
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var13 = event.DistVector(var21, var22, var23) or var13
			var14 = event.Atan2f(var21, var23) or var14
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			event.EohSetPos(8, var18, var19 - vm.f32(0.15166667), var20)
			event.EohSetRot(8, rot_x, rot_y + vm.f32(0.020933334), rot_z)
			do
				local out1, out2, out3 = event.EohGetPos(9)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			do
				local out1, out2, out3 = event.EohGetRot(9)
				rot_x = out1 or rot_x
				rot_y = out2 or rot_y
				rot_z = out3 or rot_z
			end
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var13 = event.DistVector(var21, var22, var23) or var13
			var14 = event.Atan2f(var21, var23) or var14
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			event.EohSetPos(9, var18, var19 - vm.f32(0.15166667), var20)
			event.EohSetRot(9, rot_x, rot_y + vm.f32(0.020933334), rot_z)
			do
				local out1, out2, out3 = event.EohGetPos(7)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			do
				local out1, out2, out3 = event.EohGetRot(7)
				rot_x = out1 or rot_x
				rot_y = out2 or rot_y
				rot_z = out3 or rot_z
			end
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var13 = event.DistVector(var21, var22, var23) or var13
			var14 = event.Atan2f(var21, var23) or var14
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			event.EohSetPos(7, var18, var19 + vm.f32(0.23666666), var20)
			event.EohSetRot(7, rot_x, rot_y + vm.f32(0.020933334), rot_z)
			do
				local out1, out2, out3 = event.EohGetPos(14)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			do
				local out1, out2, out3 = event.EohGetRot(14)
				rot_x = out1 or rot_x
				rot_y = out2 or rot_y
				rot_z = out3 or rot_z
			end
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var13 = event.DistVector(var21, var22, var23) or var13
			var14 = event.Atan2f(var21, var23) or var14
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			event.EohSetPos(14, var18, var19, var20)
			event.EohSetRot(14, rot_x, rot_y + vm.f32(0.020933334), rot_z)
			var27 = var27 + 1
			at = 84
			vm.wait(84)
		end
		at = 85
		wait_frames(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おどろき顔")
		event.ObjsTexAnime(0, 1, "おどろき目パチ")
		event.ObjsSetRot(1, 0.0, 1.27, 0.0)
		event.CmrsSetPos(0.0, 38.4, 184.95)
		event.CmrsSetRef(0.0, 47.52, 19.95)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		at = 86
		helper_4116e6bb(6160400)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 90)
		event.ObjsAddPas(1, -55.82, 3.81, 20.68)
		event.ObjsAddPas(1, -13.49, 3.81, 33.82)
		event.ObjsStartPas(1)
		at = 87
		wait_objects(1)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetPos(1, 0.14, 3.81, 53.0)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.ObjsResetDaPosition(1)
		event.SetReference(global1, "item", 42)
		event.CharaActive(1, 42)
		event.ObjsSetPos(11, 5.51, 34.53, 53.38)
		event.ObjsSetRot(11, 0.0, 0.0, 0.0)
		event.CmrsSetPos(0.8, 51.44, 69.42)
		event.CmrsSetRef(2.22, 23.76, 49.14)
		event.SndPauseBgm()
		event.CharaActive(1, 43)
		event.ObjsSetMotion(11, "発動", 6)
		event.SndSePlay(var6, 6)
		event.SndSePlay(var7, 0)
		event.ObjsSetMotion(1, "ゲット", 4)
		at = 88
		helper_f38eabca(362, 1)
		at = 89
		wait_frames(30)
		event.PlayBgm(0)
		event.CharaActive(0, 42)
		event.CharaActive(0, 43)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsSetMotion(1, "歩き", 4, -1.0, 1)
		event.CmrsSetPos(-96.59, 8.53, 249.67)
		event.CmrsSetRef(33.2, 23.76, 157.73)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 90)
		event.ObjsAddPas(1, -14.5, -7.06, 117.32)
		event.ObjsAddPas(1, -12.84, -7.06, 160.19)
		event.ObjsStartPas(1)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 90)
		event.ObjsAddPas(0, 14.5, -7.06, 117.32)
		event.ObjsAddPas(0, 12.84, -7.06, 160.19)
		event.ObjsStartPas(0)
		at = 90
		wait_objects(0)
		at = 91
		wait_objects(1)
		event.ObjsReference(0, -2.0, -7.06, 210.36, 10)
		event.ObjsReference(1, -2.0, -7.06, 210.36, 10)
		at = 92
		wait_objects(0)
		at = 93
		wait_objects(1)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetMotion(1, "立ち")
		at = 94
		wait_frames(20)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		at = 95
		helper_4116e6bb(6160410)
		at = 96
		helper_4116e6bb(6160415)
		event.ObjsSetMotion(0, "上向くうなづき", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 97
		helper_4116e6bb(6160420)
		event.ResetPakuAnim()
		event.CmrsSetPos(-0.69, 31.06, 181.32)
		event.CmrsSetRef(-2.0, 30.17, 210.36)
		event.SetPakuAnim(6, "口パク")
		at = 98
		helper_4116e6bb(6160430)
		event.SetMotion(40, "消える", 6, -1, 1)
		event.SetCharaShow(41, 0, 1, 0.05)
		event.SndSePlay(var6, 7)
		at = 99
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 5 then
			helper_1ef0d4b2()
			helper_22c00000()
			var11 = 0
		end
		if at <= 6 then
			pos_x = vm.f32(pos_x + vm.f32(vm.f32(-790.0 - pos_x) / 24.0))
			pos_y = vm.f32(pos_y + vm.f32(vm.f32(-254.5 - pos_y) / 16.0))
			pos_z = vm.f32(pos_z + vm.f32(vm.f32(vm.f32(3348.1) - pos_z) / 16.0))
			local _ = var11 < 90
			var11 = var11 + 1
			var12 = 2.0
			var11 = 0
			pos_y = vm.f32(pos_y + var12)
			pos_y = vm.f32(pos_y - var12)
			var12 = vm.f32(var12 - vm.f32(var12 / 30.0))
			local _ = var11 < 30
			local _ = vm.imod(var11, 2) == 0
			var11 = var11 + 1
		end
		if at <= 7 then
			helper_238b5abc(4)
		end
		if at <= 8 then
			helper_344d6cd8()
		end
		if at <= 9 then
			wait_frames_skipping(60)
		end
		if at <= 10 then
			helper_52aadc70(6160130, -1)
		end
		if at <= 11 then
			wait_frames_skipping(30)
		end
		if at <= 12 then
			helper_52aadc70(6160140, -1)
		end
		if at <= 13 then
			helper_52aadc70(6160150, -1)
		end
		if at <= 14 then
			wait_frames_skipping(30)
		end
		if at <= 15 then
			helper_238b5abc(0)
		end
		if at <= 16 then
			helper_238b5abc(1)
		end
		if at <= 17 then
			helper_238b5abc(2)
		end
		if at <= 18 then
			helper_8cd371d7(6160160)
		end
		if at <= 19 then
			wait_frames_skipping(60)
		end
		if at <= 20 then
			helper_238b5abc(2)
		end
		if at <= 21 then
			wait_frames_skipping(30)
		end
		if at <= 22 then
			helper_8cd371d7(6160170)
		end
		if at <= 23 then
			helper_8cd371d7(6160180)
		end
		if at <= 24 then
			helper_344d6cd8()
		end
		if at <= 25 then
			helper_8cd371d7(6160190)
		end
		if at <= 26 then
			wait_frames_skipping(15)
		end
		if at <= 27 then
			helper_8cd371d7(6160200)
		end
		if at <= 28 then
			helper_8cd371d7(6160210)
		end
		if at <= 29 then
			helper_8cd371d7(6160220)
		end
		if at <= 30 then
			helper_344d6cd8()
		end
		if at <= 31 then
			helper_8cd371d7(6160230)
		end
		if at <= 32 then
			helper_8cd371d7(6160240)
		end
		if at <= 33 then
			wait_frames_skipping(15)
		end
		if at <= 34 then
			helper_52aadc70(6160250, -1)
		end
		if at <= 35 then
			helper_52aadc70(6160255, -1)
		end
		if at <= 36 then
			helper_52aadc70(6160260, -1)
		end
		if at <= 37 then
			helper_52aadc70(6160270, -1)
		end
		if at <= 38 then
			helper_52aadc70(6160275, -1)
		end
		if at <= 39 then
			helper_52aadc70(6160280, -1)
		end
		if at <= 40 then
			helper_8cd371d7(6160290)
		end
		if at <= 41 then
			wait_frames_skipping(30)
		end
		if at <= 42 then
			helper_8cd371d7(6160300)
		end
		if at <= 43 then
			helper_8cd371d7(6160305)
		end
		if at <= 45 then
			wait_frames_skipping(30)
		end
		if at <= 46 then
			helper_8cd371d7(6160310)
		end
		if at <= 47 then
			wait_frames_skipping(30)
		end
		if at <= 48 then
			helper_8cd371d7(6160320)
		end
		if at <= 49 then
			helper_8cd371d7(6160330)
		end
		if at <= 50 then
			helper_344d6cd8()
		end
		if at <= 51 then
			wait_frames_skipping(30)
		end
		if at <= 52 then
			helper_8cd371d7(6160340)
		end
		if at <= 53 then
			helper_8cd371d7(6160350)
		end
		if at <= 54 then
			helper_344d6cd8()
		end
		if at <= 55 then
			wait_frames_skipping(30)
		end
		if at <= 56 then
			helper_8cd371d7(6160360)
		end
		if at <= 57 then
			wait_frames_skipping(30)
		end
		if at <= 58 then
			helper_8cd371d7(6160370)
		end
		if at <= 59 then
			helper_8cd371d7(6160373)
		end
		if at <= 60 then
			helper_8cd371d7(6160377)
		end
		if at <= 61 then
			wait_frames_skipping(60)
		end
		if at <= 62 then
			helper_8cd371d7(6160380)
		end
		if at <= 63 then
			wait_frames_skipping(30)
		end
		if at <= 64 then
			helper_238b5abc(1)
		end
		if at <= 65 then
			helper_238b5abc(1)
		end
		if at <= 66 then
			wait_frames_skipping(30)
		end
		if at <= 67 then
			helper_238b5abc(1)
		end
		if at <= 68 then
			helper_238b5abc(1)
		end
		if at <= 69 then
			helper_238b5abc(1)
		end
		if at <= 70 then
			helper_238b5abc(1)
		end
		if at <= 71 then
			wait_frames_skipping(30)
		end
		if at <= 72 then
			helper_238b5abc(1)
		end
		if at <= 73 then
			wait_frames_skipping(30)
		end
		if at <= 74 then
			helper_238b5abc(1)
		end
		if at <= 75 then
			wait_frames_skipping(30)
		end
		if at <= 76 then
			helper_238b5abc(0)
		end
		if at <= 77 then
			helper_238b5abc(0)
		end
		if at <= 78 then
			helper_238b5abc(0)
		end
		if at <= 79 then
			wait_frames_skipping(30)
		end
		if at <= 80 then
			helper_238b5abc(0)
		end
		if at <= 81 then
			wait_frames_skipping(30)
		end
		if at <= 82 then
			wait_frames_skipping(30)
		end
		if at <= 83 then
			var27 = 0
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			var15 = 0.0
			var17 = 0.0
			var21 = vm.f32(var18 - var15)
			var23 = vm.f32(var20 - var17)
			var28 = vm.f32(var15 + vm.f32(var13 * vm.sin(vm.f32(var14 + vm.f32(0.020933334)))))
			var29 = vm.f32(var17 + vm.f32(var13 * vm.cos(vm.f32(var14 + vm.f32(0.020933334)))))
			var18 = var28
			var20 = var29
			local _ = var27 < 300
			var27 = var27 + 1
		end
		if at <= 84 then
			wait_frames_skipping(30)
		end
		if at <= 85 then
			helper_8cd371d7(6160400)
		end
		if at <= 86 then
			helper_238b5abc(1)
		end
		if at <= 87 then
			helper_7d730ff7(362, 1)
		end
		if at <= 88 then
			wait_frames_skipping(30)
		end
		if at <= 89 then
			helper_238b5abc(0)
		end
		if at <= 90 then
			helper_238b5abc(1)
		end
		if at <= 91 then
			helper_238b5abc(0)
		end
		if at <= 92 then
			helper_238b5abc(1)
		end
		if at <= 93 then
			wait_frames_skipping(20)
		end
		if at <= 94 then
			helper_8cd371d7(6160410)
		end
		if at <= 95 then
			helper_8cd371d7(6160415)
		end
		if at <= 96 then
			helper_8cd371d7(6160420)
		end
		if at <= 97 then
			helper_8cd371d7(6160430)
		end
		if at <= 98 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 100
	vm.entry(100)
	event.CancelDramaScene()
	event.FadeOutBgm(30)
	event.SetFadeOut(30)
	at = 101
	wait_frames(35)
	event.StopBgm(0)
	event.SndSeAllStop(4)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.BgmLoadCancel()
	helper_2a7cc()
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_3996c(arg0: s32)
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local item: s32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local var7: s32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 1)
	event.SetMesShippo(0, 0)
	if arg0 == 365 then
		var2 = 1
	end
	if arg0 == 367 then
		var2 = 2
	end
	if arg0 == 366 then
		var2 = 4
	end
	if arg0 == 368 then
		var2 = 8
	end
	var1 = event.GetCnt(16) or var1
	if vm.i32(bit32.band(var1, var2)) ~= 0 then
		if arg0 == 365 then
			event.MesMake_2(0, "Der Erdstein leuchtet.")
		end
		if arg0 == 367 then
			event.MesMake_2(0, "Der Windstein leuchtet.")
		end
		if arg0 == 366 then
			event.MesMake_2(0, "Der Wasserstein leuchtet.")
		end
		if arg0 == 368 then
			event.MesMake_2(0, "Der Feuerstein leuchtet.")
		end
		show_message(0, -1, 8, 0, 0)
		return
	end
	var3 = event.GetEventData_2(6) or var3
	if var3 == 1 then
		if arg0 == 365 then
			event.MesMake_2(0, "Da ist ein Erdstein-Altar.\n(Men[UNI00fc] [UNI00f6]ffnen mit (#).)")
		end
		if arg0 == 367 then
			event.MesMake_2(0, "Da ist ein Windstein-Altar.\n(Men[UNI00fc] [UNI00f6]ffnen mit (#).)")
		end
		if arg0 == 366 then
			event.MesMake_2(0, "Da ist ein Wasserstein-Altar.\n(Men[UNI00fc] [UNI00f6]ffnen mit (#).)")
		end
		if arg0 == 368 then
			event.MesMake_2(0, "Da ist ein Feuerstein-Altar.\n(Men[UNI00fc] [UNI00f6]ffnen mit (#).)")
		end
		var5 = helper_c292fa16(0, -1, 5, 256, 208, var5)
		if var5 == 1 then
			var3 = 2
		end
	end
	if var3 == 2 then
		event.GotoUseItem(arg0)
		vm.wait(3)
		item = vmhost.used_item() or item
		if item > 0 then
			if item == arg0 then
				var1 = vm.i32(bit32.bor(var1, var2))
				event.SetCnt(16, var1)
				event.SetLoadbgFile_1("snd2/sp/sp_033.sound.json")
				vm.wait(4)
				helper_479dc9e9()
				var6 = event.SndLoadSound_3(8, "snd2/sp/sp_033.sound.json") or var6
				event.SndSePlay(var6, 2)
				if arg0 == 365 then
					event.EohSyncObj_3(0, "p01_s11", "s11_10-m0")
				end
				if arg0 == 367 then
					event.EohSyncObj_3(0, "p01_s11", "s11_09-m1")
				end
				if arg0 == 366 then
					event.EohSyncObj_3(0, "p01_s11", "s11_08-m0")
				end
				if arg0 == 368 then
					event.EohSyncObj_3(0, "p01_s11", "s11_07-m0")
				end
				event.EohSetShow(0, 1)
				var7 = 15
				if vm.i32(bit32.band(var1, var7)) == var7 then
					helper_cc3637c1()
				end
			else
				helper_5fb66cb1()
			end
		end
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local mc_load: s32 = 0
	local old_map_no: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	event.Initialize()
	event_99()
	print("start_event--------------------------------------------\n")
	mc_load = event.CheckMcLoad() or mc_load
	if mc_load == 1 then
		helper_b4453d02()
		helper_9dafbc83(-40.0, vm.f32(-268.4), 3160.0, vm.f32(3.14))
		event.ResetCamera(1, 0.0, 10.0)
		event.SetFadeIn(30)
	else
		helper_9dafbc83(0.0, vm.f32(-268.4), 3000.0, vm.f32(3.14))
		event.ResetCamera(1, 3.14, 10.0)
		old_map_no = event.GetOldMapNo() or old_map_no
		var2 = event.GetMapType(old_map_no) or var2
		if var2 ~= -1 then
			var3 = event.GetCnt(1) or var3
			if (old_map_no == 18 or old_map_no == 23 or old_map_no == 120 or old_map_no == 108) and var3 == 6 then
				helper_b4453d02()
				helper_c4692af0()
			else
				helper_02a8d032()
				helper_b4453d02()
			end
		end
		event.SetMotion(0, "立ち")
	end
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	local at: number = 0
	return vm.guard(function()
		at = 1
		helper_3ab08()
		at = 2
		helper_2d2e8()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_2d2e8()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 250, which map data, a script or the engine runs by number.
function script.event_250()
	local var0: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		var0 = helper_511b3eab()
		if var0 ~= 1 then
			return
		end
		event.SetCnt(1, 6)
		var1 = event.GetEventData_2(3) or var1
		if var1 <= 1 then
			at = 2
			helper_f4ec8310()
			event.StopBgm(0)
			at = 3
			vm.wait(3)
			event.MapJump_2(-1, "s37")
			at = 4
			vm.wait(4)
		else
			at = 5
			helper_fdad3d3b()
			event.StopBgm(0)
			event.MapJump_2(100, "s38")
		end
		return
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				var0 = received[1] :: number
			end
			return 0
		end
		if at <= 5 then
			if at <= 4 then
				helper_c99744f1()
			end
			return 0
		end
		return nil
	end)
end

--- Event 400, which map data, a script or the engine runs by number.
script.event_400 = helper_f57795f8

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	event.AddItem(362, 1)
	helper_2d2e8()
	event.MapJump_3(-1, "s37", 530)
	vm.wait(2)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	event_99()
	helper_b4453d02()
	helper_9dafbc83(170.0, vm.f32(-268.4), 3140.0, vm.f32(3.14))
	event.ResetCamera(1, 0.0, 0.0)
	event.SetFadeIn(30)
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	helper_ce5f1c27()
	event.MapJump_3(-1, "s12", 500)
	vm.wait(2)
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	helper_3996c(365)
end

--- Event 552, which map data, a script or the engine runs by number.
function script.event_552()
	helper_3996c(367)
end

--- Event 554, which map data, a script or the engine runs by number.
function script.event_554()
	helper_3996c(366)
end

--- Event 556, which map data, a script or the engine runs by number.
function script.event_556()
	helper_3996c(368)
end

--- Event 599, which map data, a script or the engine runs by number.
function script.event_599()
	event_99()
	helper_b4453d02()
	helper_9dafbc83(170.0, vm.f32(-268.4), 3140.0, vm.f32(3.14))
	event.ResetCamera(1, 0.0, 0.0)
	helper_a87eb945(0)
	event.SetFadeIn(30)
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local var0: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	var0 = event.GetEventData_2(14) or var0
	if var0 == 301 then
		flag = event.GetFlag(640) or flag
		flag_2 = event.GetFlag(648) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			if helper_3ab08() ~= 0 then
				event.SetFadeOut(30)
				wait_frames(30)
				event.MapJump_3(-1, "s37", 520)
				vm.wait(3)
			end
			return
		end
		helper_b2c29834()
	end
end

return script
