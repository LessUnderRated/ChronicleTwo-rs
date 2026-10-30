--!strict
-- map/i/i01/h01/i01h01c_5.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_05970f25 = require("@lib/event/helper_05970f25")
local helper_0999bd0f = require("@lib/event/helper_0999bd0f")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_17069978 = require("@lib/event/helper_17069978")
local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local helper_1de6c61f = require("@lib/event/helper_1de6c61f")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_2ecccad3 = require("@lib/event/helper_2ecccad3")
local helper_2ff63eb4 = require("@lib/event/helper_2ff63eb4")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_3adb7568 = require("@lib/event/helper_3adb7568")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_467e9642 = require("@lib/event/helper_467e9642")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_658b1052 = require("@lib/event/helper_658b1052")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_788a73ff = require("@lib/event/helper_788a73ff")
local helper_7d54f41c = require("@lib/event/helper_7d54f41c")
local helper_7e7c045c = require("@lib/event/helper_7e7c045c")
local helper_822b22f8 = require("@lib/event/helper_822b22f8")
local helper_86e93423 = require("@lib/event/helper_86e93423")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_a0fc6040 = require("@lib/event/helper_a0fc6040")
local helper_a374ffdb = require("@lib/event/helper_a374ffdb")
local helper_b5a4da39 = require("@lib/event/helper_b5a4da39")
local helper_ce6820bc = require("@lib/event/helper_ce6820bc")
local helper_d529ed92 = require("@lib/event/helper_d529ed92")
local helper_e52544df = require("@lib/event/helper_e52544df")
local helper_e6cfe9e4 = require("@lib/event/helper_e6cfe9e4")
local helper_eb4a6c55 = require("@lib/event/helper_eb4a6c55")
local set_window_mode = require("@lib/event/set_window_mode")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_dca4(se_id: s32)
	local var1: any = 0
	local at: number = 0
	return vm.guard(function()
		event.CmrsFadeInit()
		event.CmrsFadeOut(30, 0.0, 0.0, 0.0)
		at = 1
		wait_camera()
		event.CmrsSetPos(-26.93, 26.72, -145.82)
		event.CmrsSetRef(27.6, 22.54, -159.02)
		event.ObjsSetPos(0, 16.25, -0.02, -166.37)
		event.ObjsSetRot(0, 0.0, 1.16, 0.0)
		event.ObjsSetMotion(0, "上見立ち", 4)
		event.ObjsSetPos(2, 38.77, -0.02, -147.68)
		event.ObjsSetRot(2, 0.0, -2.04, 0.0)
		event.ObjsSetMotion(2, "立ち", 4)
		at = 2
		wait_frames(30)
		event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
		at = 3
		wait_camera()
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち")
		at = 4
		wait_frames(10)
		event.SetPakuAnim(2, "大口パク")
		at = 5
		helper_4116e6bb(1060010)
		event.ResetPakuAnim()
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "[UNI00a1]Bien!\nEspera un momento.")
		at = 6
		var1 = helper_7e7c045c(0, -1, 8, 0, 0, 2, 0)
		event.SetMesWindowMode(0, 7)
		event.SetMesShippo(0, 1)
		if var1 == 0 then
			at = 7
			helper_4116e6bb(1060040)
			event.SndSePlay(se_id, 2)
			event.ObjsSetMotion(0, "ガッツポーズ", 6, -1.0, 1)
			event.ObjsNextMotion(0, "上見立ち", 4)
			event.ObjsSetMotion(2, "ガッツポーズ", 6)
			event.ObjsNextMotion(2, "立ち", 0)
			event.SetPakuAnim(2, "大口パク")
			at = 8
			helper_4116e6bb(1060050)
			event.ResetPakuAnim()
			event.FadeOutBgm(30)
			event.SetFadeOut(30)
			at = 9
			wait_frames(30)
			return 1
		else
			event.ObjsSetMotion(0, "上見会話", 6, -1.0, 1)
			event.ObjsNextMotion(0, "上見立ち", 4)
			at = 10
			wait_frames(9)
			at = 11
			helper_4116e6bb(1060020)
			event.ObjsSetMotion(2, "会話2", 6)
			at = 12
			wait_frames(9)
			event.SetPakuAnim(2, "大口パク")
			at = 13
			helper_4116e6bb(1060030)
			event.ResetPakuAnim()
			return 0
		end
	end, function(received: { any })
		if at <= 9 then
			if at == 6 then
				var1 = received[1] :: number
			end
			if at <= 1 then
				wait_frames_skipping(30)
			end
			if at <= 2 then
				helper_344d6cd8()
			end
			if at <= 3 then
				wait_frames_skipping(10)
			end
			if at <= 4 then
				helper_8cd371d7(1060010)
			end
			if at <= 5 then
				var1 = helper_7d54f41c(0, -1, 8, 0, 0, 2, 0)
			end
			if at <= 6 then
				helper_8cd371d7(1060040)
			end
			if at <= 7 then
				helper_8cd371d7(1060050)
			end
			if at <= 8 then
				wait_frames_skipping(30)
			end
			return 1
		end
		if at <= 13 then
			if at <= 10 then
				helper_8cd371d7(1060020)
			end
			if at <= 11 then
				wait_frames_skipping(9)
			end
			if at <= 12 then
				helper_8cd371d7(1060030)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_10c40()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local projection: f32 = 0
	local at: number = 0
	return vm.guard(function()
		vm.section(function()
			at = 1
			vm.entry(1)
			event.SetFlag(106, 1)
			event.Initialize()
			event.SetMesWindowMode(0, 7)
			var2 = event.SndLoadSound_2(1231) or var2
			event.AssignStack(5)
			event.ClearStack(5)
			do
				local out1, out2, out3 = event.GetCameraPos()
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			do
				local out1, out2, out3 = event.GetCameraRef()
				pos_x_2 = out1 or pos_x_2
				pos_y_2 = out2 or pos_y_2
				pos_z_2 = out3 or pos_z_2
			end
			event.LoadMotion(5, "event/e100/e106/e106_mints.gltf", "info", 0)
			event.CharaActive(1, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadChara(5, "event/e100/e106/e106_starbre.gltf", "info", 34)
			event.EohSyncChara(2, 34)
			event.ObjsInit(2)
			event.ObjsSyncObj(2, 2)
			event.CharaActive(1, 34)
			event.LoadChara(5, "event/e100/e106/e106_steve.gltf", "info", 35)
			event.CharaActive(1, 35)
			event.EohSyncChara(3, 35)
			event.ObjsInit(3)
			event.ObjsSyncObj(3, 3)
			event.EohSetSoundId(3, var2)
			event.EohSyncObj_3(10, "p04_i01h01", "i01h01_05-m1")
			event.EohSyncObj_3(11, "p04_i01h01", "i01h01_05-m3")
			event.EohSyncObj_3(12, "p01_i01h01", "i01h01_21-m0")
			event.ObjsInit(12)
			event.ObjsSyncObj(12, 12)
			event.EohSyncObj_3(13, "p01_i01h01", "i01h01_21-m1")
			event.ObjsInit(13)
			event.ObjsSyncObj(13, 13)
			event.LoadMes(0, 5, "event/e100/e106/e106_1.txt")
			event.StopBgm(0)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "デフォルト顔")
			event.ObjsTexAnime(0, 1, "通常目パチ")
			event.ObjsTexAnime(2, 0)
			event.ObjsTexAnime(2, 1, "デフォルト顔")
			event.ObjsTexAnime(2, 1, "通常目パチ")
			at = 2
			var0 = helper_dca4(var2)
			if var0 == 1 then
				event.DelExtMotion(0)
				event.LoadMotion(5, "event/e100/e106/e106_mints2.gltf", "info", 0)
				var1 = event.EohGetFrameStatus(3, "light") or var1
				event.EohSetFrameShow(3, "light", 0)
				projection = event.GetProjection() or projection
				event.InitDramaScene()
				at = 3
				helper_467e9642(var1, var2)
				at = 4
				helper_a0fc6040(var2)
				at = 5
				helper_05970f25(var2)
				event.EohSetSoundId(3, var2)
				at = 6
				helper_a374ffdb(var2)
			end
			event.SetFadeOut(30)
			at = 7
			wait_frames(30)
		end, function(received: { any }): boolean
			if at == 2 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				var0 = helper_822b22f8(var2)
			end
			if at <= 2 then
				helper_e6cfe9e4(var1, var2)
			end
			if at <= 3 then
				helper_3adb7568(var2)
			end
			if at <= 4 then
				helper_eb4a6c55(var2)
			end
			if at <= 5 then
				helper_1de6c61f(var2)
			end
			if at <= 6 then
				wait_frames_skipping(30)
			end
			return true
		end)
		at = 8
		vm.entry(8)
		event.CancelDramaScene()
		event.SndSeStop(var2, 6)
		event.SetProjection(projection)
		event.SetCameraPos(pos_x, pos_y, pos_z)
		event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
		event.EohSetShow(10, 1)
		event.EohSetShow(11, 1)
		event.SetMotion(0, "立ち", 4)
		event.CharaActive(1, 0)
		event.DelExtMotion(0)
		event.DeleteChara(34)
		event.DeleteChara(35)
		if var0 ~= 1 then
			event.PlayBgm(0)
		end
		event.SetFadeIn(30)
		return var0
	end, function(received: { any })
		if at <= 8 then
			return var0
		end
		return nil
	end)
end

--- Helper function.
local function helper_123e8(se_id: s32)
	event.CmrsSetPos(-119.36, 26.55, -129.41)
	event.CmrsSetRef(-121.06, 12.13, -226.83)
	event.ObjsSetPos(0, -119.53, -12.53, -229.18)
	event.ObjsSetRot(0, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4)
	event.ObjsSetPos(1, -119.53, -12.53, -229.18)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "立ち（スティーブ）", 4)
	wait_frames(50)
	event.SndSeStop(se_id, 0)
	event.SndSePlay(se_id, 5)
	event.ObjsResetMotion(0)
	event.ObjsResetMotion(1)
	wait_frames(30)
	event.CmrsFadeInit()
	event.CmrsFadeOut(50, 0.0, 0.0, 0.0)
	wait_camera()
	event.CmrsSetPos(-107.26, 10.75, -131.0)
	event.CmrsSetRef(-110.45, 11.92, -193.48)
	event.SetCharaPos(0, -91.97, -12.53, -211.57)
	event.SetCharaRot(0, 0.0, -2.4, 0.0)
	event.ObjsSetMotion(0, "立ち", 4)
	event.SetCharaPos(33, -119.53, -12.53, -229.18)
	event.SetCharaRot(33, 0.0, 0.0, 0.0)
	event.ObjsResetMotion(1)
	event.EohSetFrameShow(1, "light--c0appz0n1", 0)
	wait_objects(0)
	wait_objects(1)
	event.CmrsFadeInit()
	event.CmrsFadeIn(100, 0.0, 0.0, 0.0)
	wait_camera()
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(0, "[(!)]Para pelear otra vez con Flotsam, entra\nen Steve pulsando el bot[UNI00f3]n (O).")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 7)
end

--- Helper function.
local function helper_12d54()
	local var0: s32 = 0
	local var1: s32 = 0
	local projection: f32 = 0
	vm.section(function()
		event.SetFlag(108, 1)
		event.Initialize()
		event.InitDramaScene()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_2(1822) or var0
		var1 = event.SndLoadSound_3(7, "snd2/chara/ch_040.sound.json") or var1
		event.AssignStack(5)
		event.ClearStack(5)
		projection = event.GetProjection() or projection
		event.GetCameraPos()
		event.GetCameraRef()
		event.LoadMotion(5, "event/e100/e108/e108_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetCharaPos(0, 0.0, 50.0, 0.0)
		event.SetCharaRot(0, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_steve.gltf", "info", 33)
		event.CharaActive(1, 33)
		event.EohSyncChara(1, 33)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.SetCharaPos(33, 0.0, 50.0, 0.0)
		event.SetCharaRot(33, 0.0, 0.0, 0.0)
		event.EohSetSoundId(1, var1)
		event.EohSyncObj_3(10, "p04_i01h01", "i01h01_05-m1")
		event.EohSyncObj_3(11, "p04_i01h01", "i01h01_05-m3")
		event.EohSyncObj_3(12, "p01_i01h01", "i01h01_21-m0")
		event.ObjsInit(12)
		event.ObjsSyncObj(12, 12)
		event.EohSyncObj_3(13, "p01_i01h01", "i01h01_21-m1")
		event.ObjsInit(13)
		event.ObjsSyncObj(13, 13)
		event.EohSyncObj_3(14, "p07_i01h01", "i01h01_08-m0")
		event.ObjsInit(14)
		event.ObjsSyncObj(14, 14)
		event.EohSyncObj_3(15, "p07_i01h01", "i01h01_08-m1")
		event.ObjsInit(15)
		event.ObjsSyncObj(15, 15)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		helper_2ecccad3(var0)
		helper_123e8(var0)
		event.SetFadeOut(30)
		wait_frames(30)
	end)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.ObjsInit(0)
	event.ObjsInit(12)
	event.ObjsInit(13)
	event.SetFlag(56, 0)
	event.SetProjection(projection)
	event.SetCameraPos(-119.36, 26.55, -129.41)
	event.SetCameraRef(-121.06, 12.13, -226.83)
	event.SetCharaPos(0, -98.38, -12.53, -200.14)
	event.SetCharaRot(0, 0.0, -2.88, 0.0)
	event.EohSetRot(12, 0.0, 0.0, 0.0)
	event.EohSetRot(13, 0.0, 0.0, 0.0)
	vm.wait(4)
	event.EohSetShow(10, 1)
	event.EohSetShow(11, 1)
	event.EohSetShow(14, 1)
	event.EohSetShow(15, 1)
	event.DelExtMotion(0)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.DeleteChara(35)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_13c88(arg0: any)
	local var1: any = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.CmrsSetPos(-138.16, 13.17, -131.29)
		event.CmrsSetRef(-115.98, 11.22, -208.05)
		event.CharaActive(1, 0)
		event.ObjsSetPos(0, -98.38, -12.53, -200.14)
		event.ObjsSetRot(0, 0.0, -2.88, 0.0)
		event.CharaActive(1, 33)
		event.ObjsSetPos(1, -119.53, -12.53, -229.18)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.ObjsResetMotion(1)
		event.EohSetShow(10, 0)
		event.EohSetShow(11, 0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		var2 = event.GetMesWindowMode(0) or var2
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "[UNI00a1]S[UNI00ed]! [UNI00a1]D[UNI00e9]jame a Flotsam!\nTodav[UNI00ed]a no he terminado.")
		at = 1
		var1 = helper_7e7c045c(0, -1, 8, 0, 0, 2, 0)
		event.SetMesWindowMode(0, var2)
		if var1 == 0 then
			event.CmrsFadeInit()
			event.CmrsFadeOut(50, 0.0, 0.0, 0.0)
			at = 2
			wait_frames(30)
			at = 3
			wait_camera()
			at = 4
			vm.wait(4)
			return 1
		end
		return 0
	end, function(received: { any })
		if at <= 4 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at <= 1 then
				wait_frames_skipping(30)
			end
			if at <= 2 then
				helper_344d6cd8()
			end
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_15408()
	local var0: s32 = 0
	local projection: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var8: s32 = 0
	local at: number = 0
	return vm.guard(function()
		vm.section(function()
			event.CharaActive(0, 24)
			event.SetFlag(108, 1)
			event.Initialize()
			event.SetMesWindowMode(0, 7)
			event.LoadSound(1237)
			var0 = event.SndLoadSound_2(1237) or var0
			event.AssignStack(5)
			event.ClearStack(5)
			projection = event.GetProjection() or projection
			do
				local out1, out2, out3 = event.GetCameraPos()
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			do
				local out1, out2, out3 = event.GetCameraRef()
				pos_x_2 = out1 or pos_x_2
				pos_y_2 = out2 or pos_y_2
				pos_z_2 = out3 or pos_z_2
			end
			event.CmrsInit()
			event.SetCameraPos(6.02, 94.24, 399.23)
			event.SetCameraRef(-4.96, 118.28, 117.71)
			event.LoadMotion(5, "event/e100/e108/e108_mints.gltf", "info", 0)
			event.CharaActive(1, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.SetCharaPos(0, 0.0, 50.0, 0.0)
			event.SetCharaRot(0, 0.0, 0.0, 0.0)
			event.LoadChara(5, "event/e100/e108/e108_steve.gltf", "info", 33)
			event.CharaActive(1, 33)
			event.EohSyncChara(1, 33)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.SetCharaPos(33, 0.0, 50.0, 0.0)
			event.SetCharaRot(33, 0.0, 0.0, 0.0)
			event.EohSetSoundId(1, var0)
			event.EohSyncObj_3(10, "p04_i01h01", "i01h01_05-m1")
			event.EohSyncObj_3(11, "p04_i01h01", "i01h01_05-m3")
			event.EohSyncObj_3(12, "p01_i01h01", "i01h01_21-m0")
			event.ObjsInit(12)
			event.ObjsSyncObj(12, 12)
			event.ObjsSetRot(12, 0.0, 0.0, 0.0)
			event.EohSyncObj_3(13, "p01_i01h01", "i01h01_21-m1")
			event.ObjsInit(13)
			event.ObjsSyncObj(13, 13)
			event.ObjsSetRot(13, 0.0, 0.0, 0.0)
			event.EohSyncObj_3(14, "p07_i01h01", "i01h01_08-m0")
			event.ObjsInit(14)
			event.ObjsSyncObj(14, 14)
			event.EohSyncObj_3(15, "p07_i01h01", "i01h01_08-m1")
			event.ObjsInit(15)
			event.ObjsSyncObj(15, 15)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "おこり顔")
			event.ObjsTexAnime(0, 1, "おこり目パチ")
			at = 1
			var8 = helper_13c88(var0)
			if var8 == 1 then
				event.InitDramaScene()
				at = 2
				helper_b5a4da39(var0)
				at = 3
				helper_ce6820bc(var0)
				event.SetFlag(56, 1)
			else
				event.SetFlag(56, 0)
			end
			event.SetFadeOut(30)
			at = 4
			wait_frames(30)
		end, function(received: { any }): boolean
			if at == 1 then
				var8 = received[1] :: number
			end
			if at <= 1 then
				helper_2ff63eb4(var0)
			end
			if at <= 2 then
				helper_17069978(var0)
			end
			if at <= 3 then
				wait_frames_skipping(30)
			end
			return true
		end)
		at = 5
		vm.entry(5)
		event.CancelDramaScene()
		event.SndSeStop(var0, 1)
		event.EohSetShow(10, 1)
		event.EohSetShow(11, 1)
		event.GetProjection(projection)
		event.GetCameraPos(pos_x, pos_y, pos_z)
		event.GetCameraRef(pos_x_2, pos_y_2, pos_z_2)
		at = 6
		vm.wait(6)
		event.DelExtMotion(0)
		event.DeleteChara(33)
		event.SetFadeIn(30)
		return var8
	end, function(received: { any })
		if at <= 6 then
			return var8
		end
		return nil
	end)
end

--- Helper function.
local function helper_c3b0(arg0: s32, arg1: any)
	local flag: s32 = 0
	local var3: s32 = 0
	local player_chara: s32 = 0
	local var5: any = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local argc_3: s32 = 0
	event.SetMotion(0, "立ち", 0)
	wait_frames(9)
	flag = event.GetFlag(7) or flag
	if flag == 1 then
		event.SetAi(0, 24)
		set_window_mode(0, 1)
		helper_4e93f9fc(arg0, 0, 0)
		player_chara = event.GetControlChrid() or player_chara
		event.MesMake_2(0, "[UNI00bf]Qu[UNI00e9] tal va Steve?")
		helper_0ffc2526(0, -1, arg0, player_chara, 0)
		event.SetMotion(arg0, "立ち")
		event.SetMesShippo(0, 0)
		event.SetMesQuestionGyou(0, 0)
		event.SetMesEtc(0, 0, 1)
		event.MesMake_2(0, "Repostar\nMejorar el N[UNI00fa]cleo")
		var5 = helper_7e7c045c(0, -1, 5, 256, 208, 2, 0)
		event.SetMesEtc(0, 0, 0)
		event.SetMesShippo(0, 1)
		if var5 == 0 then
			event.SetSavedataEtc(2)
			event.MesMake_2(0, "[UNI00a1]Ya! [UNI00a1]Todo listo!")
			helper_0ffc2526(0, -1, arg0, player_chara, 0)
		end
		if var5 == 1 then
			event.SetFadeOut(25)
			wait_frames(30)
			event.GotoMenu(6, 23)
			vm.wait(7)
			event.SetFadeIn(25)
		end
		event.SetAi(1, 24)
		return
	end
	flag = event.GetFlag(107) or flag
	if flag == 1 then
		event.SetAi(0, 24)
		event.MesMake_2(0, "[UNI00bf]Te rindes por algo tan insignificante\n? [UNI00a1]Nada de tirar la toalla!")
		helper_1c04a0eb(arg0, -1, 0, 0)
		event.SetAi(1, 24)
		return
	end
	flag = event.GetFlag(20) or flag
	if flag == 1 then
		vm.wait(9)
		event.LoadScript("i01h01/i01h01c_1.stb", 500)
		return
	end
	var3 = event.GetItemNum(165) or var3
	if var3 > 0 then
		event.SetFlag(20, 1)
		vm.wait(10)
		event.LoadScript("i01h01/i01h01b_1.stb", 520)
		return
	end
	argc = event.GetItemNum(224) or argc
	argc_2 = event.GetItemNum(245) or argc_2
	argc_3 = event.GetItemNum(227) or argc_3
	var3 = event.GetInventionId(165) or var3
	if argc >= 20 and argc_2 >= 1 and argc_3 >= 2 and var3 ~= -1 then
		vm.wait(11)
		event.LoadScript("i01h01/i01h01b_1.stb", 520)
		return
	end
	flag = event.GetFlag(19) or flag
	if flag == 1 then
		event.SetAi(0, 24)
		event.MesMake_2(
			0,
			"Sal fuera: el sitio\nde enfrente con el s[UNI00ed]mbolo de la calabaza es la\nTienda de Objetos.<page>Necesitas 20 trozos de metal,\n2 buenos cachos de cobre y una piel gruesa.\nVe a la tienda y c[UNI00f3]mpralo todo."
		)
		helper_1c04a0eb(arg0, -1, 0, 0)
		event.SetAi(1, 24)
		return
	end
	var3 = event.GetInventionId(165) or var3
	if var3 ~= -1 then
		vm.wait(13)
		event.LoadScript("i01h01/i01h01b_1.stb", 520)
		return
	end
	var3 = event.CheckInventItem(165) or var3
	if var3 == 1 then
		vm.wait(14)
		event.LoadScript("i01h01/i01h01b_1.stb", 520)
		return
	end
	flag = event.GetFlag(17) or flag
	if flag == 1 then
		vm.wait(15)
		event.LoadScript("i01h01/i01h01b_1.stb", 510)
		return
	end
	flag = event.GetFlag(105) or flag
	if flag == 0 then
		event.MesMake_2(0, "Max, no puedes saltarte el trabajo,\n[UNI00bf]me oyes?")
		helper_1c04a0eb(arg0, -1, 0, 0)
		return
	end
	event.SetAi(0, 24)
	event.MesMake_2(0, "Int[UNI00e9]ntalo t[UNI00fa] mismo\nprimero, muchacho.")
	helper_1c04a0eb(arg0, -1, 0, 0)
	event.MesMake_2(0, "Te echar[UNI00e9] una mano si\ntienes problemas, no te preocupes.")
	helper_1c04a0eb(arg0, -1, 0, 0)
	event.MesMake_2(0, "[UNI00a1]Hale, venga, vete!")
	helper_1c04a0eb(arg0, -1, 0, 0)
	event.SetAi(1, 24)
end

--- Helper function.
local function helper_d950()
	local var0: s32 = 0
	local var1: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	event.SetMesWindowMode(0, 1)
	var0 = event.GetEventData_2(13) or var0
	var1 = event.GetEventData_2(14) or var1
	print("[talk_chara]", var1, "\n")
	print("[talk_chara_id]", var1, "\n")
	if var1 == 1 then
		helper_c3b0(var0, var1)
	end
	if var1 == -1 then
		flag = event.GetFlag(6) or flag
		flag_2 = event.GetFlag(7) or flag_2
		if flag == 1 and flag_2 == 0 then
			vm.wait(2)
			event.LoadScript("i01h01/i01h01c_1.stb", 520)
		end
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	local var0: s32 = 0
	local argc: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(10)
		at = 1
		wait_frames(10)
		helper_86e93423()
		at = 2
		var0 = helper_10c40()
		if var0 == 1 then
			event.AddItem(135, 1)
			event.AddItem(145, 1)
			event.AddItem(155, 1)
			event.AddItem(165, 1)
			at = 3
			vm.wait(3)
			argc = event.GetItemNum(246) or argc
			if argc == 0 then
				event.AddItem(246, 1)
			end
			event.JoinPartyMember(2, 1)
			event.SetCharaChangeFlag(2, 1)
			event.SetCharaChangeMask(2, 1)
			event.SetCharaChangeMask(0, 1)
			event.SetFlag(25, 1)
			event.SetFadeOut(30)
			at = 4
			wait_frames(30)
			event.SetFadeIn(30)
		else
			helper_658b1052()
			event.SetCharaPos(0, 16.25, -0.02, -166.37)
			event.SetCharaRot(0, 0.0, 1.16, 0.0)
			event.SetMotion(0, "立ち")
			event.SetCharaPos(24, 38.77, -0.02, -147.68)
			event.SetCharaRot(24, 0.0, -2.04, 0.0)
			event.SetMotion(24, "立ち")
			at = 5
			vm.wait(5)
			event.LoadScript("i01h01/i01h01_1.stb", -1)
		end
		return
	end, function(received: { any })
		if at <= 5 then
			if at == 2 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				var0 = helper_10c40()
				return vm.continue_with(function()
					if var0 == 1 then
						event.AddItem(135, 1)
						event.AddItem(145, 1)
						event.AddItem(155, 1)
						event.AddItem(165, 1)
						at = 3
						vm.wait(3)
						argc = event.GetItemNum(246) or argc
						if argc == 0 then
							event.AddItem(246, 1)
						end
						event.JoinPartyMember(2, 1)
						event.SetCharaChangeFlag(2, 1)
						event.SetCharaChangeMask(2, 1)
						event.SetCharaChangeMask(0, 1)
						event.SetFlag(25, 1)
						event.SetFadeOut(30)
						at = 4
						wait_frames(30)
						event.SetFadeIn(30)
					else
						helper_658b1052()
						event.SetCharaPos(0, 16.25, -0.02, -166.37)
						event.SetCharaRot(0, 0.0, 1.16, 0.0)
						event.SetMotion(0, "立ち")
						event.SetCharaPos(24, 38.77, -0.02, -147.68)
						event.SetCharaRot(24, 0.0, -2.04, 0.0)
						event.SetMotion(24, "立ち")
						at = 5
						vm.wait(5)
						event.LoadScript("i01h01/i01h01_1.stb", -1)
					end
					return
				end)
			end
			if at <= 3 then
				wait_frames_skipping(30)
			end
			if at <= 4 then
				helper_1ef0d4b2()
			end
			return 0
		end
		return nil
	end)
end

--- Event 200, which map data, a script or the engine runs by number.
script.event_200 = helper_0999bd0f

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local var0: s32 = 0
	local argc: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(10)
		at = 1
		wait_frames(10)
		helper_86e93423()
		at = 2
		var0 = helper_10c40()
		if var0 == 1 then
			argc = event.GetItemNum(246) or argc
			if argc <= 0 then
				event.AddItem(135, 1)
				event.AddItem(145, 1)
				event.AddItem(155, 1)
				event.AddItem(165, 1)
				at = 3
				vm.wait(3)
				event.AddItem(246, 1)
			end
			event.JoinPartyMember(2, 1)
			event.SetCharaChangeFlag(2, 1)
			event.SetCharaChangeMask(2, 1)
			event.SetCharaChangeMask(0, 1)
			event.SetFlag(25, 1)
			event.SetFadeOut(30)
			at = 4
			wait_frames(30)
			at = 5
			helper_d529ed92()
			event.BgmLoadCancel()
			event.GotoDng(0, 4, 520)
			at = 6
			vm.wait(6)
			return
		else
			helper_658b1052()
			event.SetCharaPos(0, 16.25, -0.02, -166.37)
			event.SetCharaRot(0, 0.0, 1.16, 0.0)
			event.SetMotion(0, "立ち")
			event.SetCharaPos(24, 38.77, -0.02, -147.68)
			event.SetCharaRot(24, 0.0, -2.04, 0.0)
			event.SetMotion(24, "立ち")
			at = 7
			vm.wait(7)
			event.LoadScript("i01h01/i01h01_1.stb", -1)
		end
		return
	end, function(received: { any })
		if at <= 6 then
			if at == 2 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				var0 = helper_10c40()
				return vm.continue_with(function()
					if var0 == 1 then
						argc = event.GetItemNum(246) or argc
						if argc <= 0 then
							event.AddItem(135, 1)
							event.AddItem(145, 1)
							event.AddItem(155, 1)
							event.AddItem(165, 1)
							at = 3
							vm.wait(3)
							event.AddItem(246, 1)
						end
						event.JoinPartyMember(2, 1)
						event.SetCharaChangeFlag(2, 1)
						event.SetCharaChangeMask(2, 1)
						event.SetCharaChangeMask(0, 1)
						event.SetFlag(25, 1)
						event.SetFadeOut(30)
						at = 4
						wait_frames(30)
						at = 5
						helper_d529ed92()
						event.BgmLoadCancel()
						event.GotoDng(0, 4, 520)
						at = 6
						vm.wait(6)
						return
					else
						helper_658b1052()
						event.SetCharaPos(0, 16.25, -0.02, -166.37)
						event.SetCharaRot(0, 0.0, 1.16, 0.0)
						event.SetMotion(0, "立ち")
						event.SetCharaPos(24, 38.77, -0.02, -147.68)
						event.SetCharaRot(24, 0.0, -2.04, 0.0)
						event.SetMotion(24, "立ち")
						at = 7
						vm.wait(7)
						event.LoadScript("i01h01/i01h01_1.stb", -1)
					end
					return
				end)
			end
			if at <= 3 then
				wait_frames_skipping(30)
			end
			if at <= 4 then
				helper_e52544df()
			end
			return 0
		end
		if at <= 7 then
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	helper_86e93423()
	event.CharaActive(0, 26)
	event.CharaActive(0, 25)
	helper_12d54()
	event.CharaActive(1, 25)
	event.Initialize()
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.CharaActive(1, 25)
	event.CharaActive(1, 26)
	event.SetReference(25, "back", 26)
	event.JoinPartyMember(2, 0)
	event.FuncPointShow("", "fc_event_e108c", 1)
	wait_frames(30)
	vm.wait(3)
	event.LoadScript("i01h01/i01h01_1.stb", -1)
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	local var0: s32 = 0
	helper_86e93423()
	event.CharaActive(0, 25)
	event.CharaActive(0, 26)
	var0 = helper_15408()
	if var0 == 1 then
		event.SetFlag(25, 1)
		event.JoinPartyMember(2, 1)
		event.BgmLoadCancel()
		event.GotoDng(0, 4, 520)
	else
		event.SetFlag(29, 1)
		event.CharaActive(1, 25)
		event.CharaActive(1, 26)
		event.FuncPointShow("", "fc_event_e108c", 1)
		vm.wait(2)
		event.LoadScript("i01h01/i01h01_1.stb", -1)
		return
	end
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		at = 1
		vm.wait(1)
		at = 2
		helper_d950()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_788a73ff()
			end
			return 0
		end
		return nil
	end)
end

return script
