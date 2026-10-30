--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_7d18b8ef()
	local var6: s32 = 0
	local amplitude_2: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(540, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		at = 1
		wait_frames(4)
		event.LoadBgm(116)
		event.PlayBgm(0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		event.ChangeDir("event/e500/e540/")
		event.LoadChara(5, "e540_jet.gltf", "info", 32)
		event.CharaActive(0, 32)
		event.CopyChara(5, 32, 33)
		event.CharaActive(0, 33)
		event.LoadChara(5, "e540_parm1.gltf", "info", 34)
		event.CharaActive(1, 34)
		event.LoadChara(5, "e540_parm2.gltf", "info", 35)
		event.CharaActive(1, 35)
		event.LoadChara(5, "e540_parm3.gltf", "info", 36)
		event.CharaActive(1, 36)
		event.LoadChara(5, "e540_parm4.gltf", "info", 37)
		event.CharaActive(1, 37)
		event.ChangeDir("")
		event.EohSyncObj_2(0, "p10_f0401")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(0, "p20_f0401")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncObj_3(1, "p22_f0401", "f0401_27-m-0")
		event.EohSetShow(1, 0)
		event.EohSyncObj_3(1, "p22_f0401", "f0401_27-m-1")
		event.EohSetShow(1, 0)
		event.EohSyncObj_3(1, "p22_f0401", "f0401_25-m")
		event.EohSetShow(1, 0)
		event.EohSyncObj_2(1, "p22_f0401")
		event.EohGetFramePos(1, "e540_parm1")
		event.SetCharaPos(34, -2400.0, 1700.0, 2600.0)
		event.SetCharaRot(34, 0.0, 1.6, 0.0)
		event.SetMotion(34, "射出1", 5)
		event.EohSyncObj_2(1, "p22_f0401")
		event.EohGetFramePos(1, "e540_parm2")
		event.SetCharaPos(35, -2100.0, 1700.0, 5300.0)
		event.SetCharaRot(35, 0.0, 2.4, 0.0)
		event.SetMotion(35, "射出1", 5)
		event.EohSyncObj_2(1, "p22_f0401")
		event.EohGetFramePos(1, "e540_parm3")
		event.SetCharaPos(36, 2200.0, 1700.0, 5300.0)
		event.SetCharaRot(36, 0.0, -2.4, 0.0)
		event.SetMotion(36, "射出1", 5)
		event.EohSyncObj_2(1, "p22_f0401")
		event.EohGetFramePos(1, "e540_parm4")
		event.SetCharaPos(37, 2400.0, 1700.0, 2600.0)
		event.SetCharaRot(37, 0.0, -1.6, 0.0)
		event.SetMotion(37, "射出1", 5)
		event.SetCharaPos(32, -930.0, 750.0, 2330.0)
		event.SetCharaPos(33, 930.0, 750.0, 2330.0)
		event.InitDramaScene()
		event.SetProjection(524.9)
		event.CmrsInit()
		event.CmrsSetPos(0.0, 2449.87, -2065.79)
		event.CmrsSetRef(0.0, 2430.55, -2020.14)
		event.CmrsMove2(0.0, 2785.4, -2065.79, 0.0, 2787.08, -2020.14, 120, 2, 1.0)
		event.SetFadeIn(10)
		at = 2
		wait_camera()
		event.CmrsSetPos(-2108.31, 1992.04, 1136.27)
		event.CmrsSetRef(-2039.71, 1945.46, 1320.75)
		at = 3
		wait_frames(4)
		event.SetMotion(34, "射出1", 6)
		at = 4
		wait_frames(10)
		event.SetMotion(35, "射出1", 6)
		at = 5
		wait_frames(30)
		event.CmrsSetPos(1955.54, 2093.16, 785.71)
		event.CmrsSetRef(1839.34, 1936.52, 1240.3)
		at = 6
		wait_frames(4)
		event.SetMotion(37, "射出1", 6)
		at = 7
		wait_frames(10)
		event.SetMotion(36, "射出1", 6)
		at = 8
		wait_frames(30)
		event.CmrsSetPos(1709.28, 50.66, -919.25)
		event.CmrsSetRef(1370.18, 511.19, 109.87)
		event.SetProjection(390.0)
		event.CharaActive(1, 32)
		event.CharaActive(1, 33)
		event.SetCharaShow(32, 1, 1, 0.016666668)
		event.SetCharaShow(33, 1, 1, 0.016666668)
		var6 = 0
		amplitude_2 = vm.f32(0.02)
		while var6 < 120 do
			var6 = var6 + 1
			at = 9
			vm.wait(9)
			if vm.imod(var6, 4) == 0 then
				event.CmrsInit()
				event.CmrsQuake(0.0, amplitude_2, 0.0, -1)
				amplitude_2 = vm.f32(amplitude_2 * vm.f32(1.2))
			end
			if var6 == 110 then
				event.SetFadeOut(10)
			end
		end
		at = 10
		wait_frames(2)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_344d6cd8()
		end
		if at <= 2 then
			wait_frames_skipping(4)
		end
		if at <= 3 then
			wait_frames_skipping(10)
		end
		if at <= 4 then
			wait_frames_skipping(30)
		end
		if at <= 5 then
			wait_frames_skipping(4)
		end
		if at <= 6 then
			wait_frames_skipping(10)
		end
		if at <= 7 then
			wait_frames_skipping(30)
		end
		if at <= 8 then
			var6 = 0
			amplitude_2 = vm.f32(0.02)
			local _ = var6 < 120
			var6 = var6 + 1
		end
		if at <= 9 then
			amplitude_2 = vm.f32(amplitude_2 * vm.f32(1.2))
			wait_frames_skipping(2)
		end
		return true
	end)
	event.CancelDramaScene()
	event.SetProjection(524.9)
	event.CharaActive(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.DeleteChara(35)
	event.DeleteChara(36)
	event.DeleteChara(37)
end

return helper_7d18b8ef
