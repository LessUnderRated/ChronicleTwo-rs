--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_6673bb50()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local x_2: f32 = 0
	local y_2: f32 = 0
	local z_2: f32 = 0
	local operand_x: f32 = 0
	local operand_y: f32 = 0
	local operand_z: f32 = 0
	local var11: s32 = 0
	local var12: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetStatusbarShow(0, 1.0)
		var0 = event.SndLoadSound_2(3803) or var0
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.AssignStack(4)
		event.ClearStack(4)
		event.LoadChara(4, "event/d03/p00_26a.gltf", "info", 8)
		event.CharaActive(8)
		event.EohSyncChara(1, 8)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		if active_chr_no == 0 then
			event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 0)
		else
			event.LoadMotion(5, "event/dng_inout/c02d03gkey.gltf", "info", 0)
		end
		event.CharaActive(0, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncChara(2, 1)
		event.EohSyncChara(3, 2)
		event.EohSetShow(2, 0)
		event.EohSetShow(3, 0)
		event.EohSetPos(0, -230.0, 62.1, 1210.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetPos(1, -150.0, 230.0, 1600.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "飛び", 4)
		event.ObjsSePlay(1, var0, 1)
		event.ObjsSeDelay(1, 34)
		event.ObjsSePlay(1, var0, 1)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(254.65, 473.72, 1588.47)
		event.CmrsSetRef(-219.14, 62.76, 1197.82)
		event.SndSePlay(var0, 0)
		event.SetFadeIn(30)
		x = -150.0
		y = 230.0
		z = 1600.0
		x_2 = 0.0
		y_2 = -8.0
		z_2 = -10.0
		operand_x = 0.0
		operand_y = vm.f32(0.2)
		operand_z = 0.0
		var11 = 0
		while var11 < 60 do
			do
				local out1, out2, out3 = event.AddVector(x, y, z, x_2, y_2, z_2)
				x = out1 or x
				y = out2 or y
				z = out3 or z
			end
			do
				local out1, out2, out3 = event.AddVector(x_2, y_2, z_2, operand_x, operand_y, operand_z)
				x_2 = out1 or x_2
				y_2 = out2 or y_2
				z_2 = out3 or z_2
			end
			event.EohSetPos(1, x, y, z)
			var11 = var11 + 1
			at = 2
			vm.wait(2)
		end
		event.CharaActive(0, 8)
		event.CmrsSetPos(-195.61, 36.44, 1206.2)
		event.CmrsSetRef(-227.63, 40.13, 1199.12)
		event.CharaActive(1, 0)
		event.ObjsMove(0, -230.0, 32.1, 1200.0, 10)
		event.ObjsSetMotion(0, "d03着地", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		at = 3
		wait_frames(8)
		var12 = event.GetSndId(1) or var12
		event.SndSePlay(var12, 3)
		event.SndSePlay(var12, 2)
		at = 4
		wait_objects(0)
		event.SetFadeOut(30)
		at = 5
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			x = -150.0
			y = 230.0
			z = 1600.0
			x_2 = 0.0
			y_2 = -8.0
			z_2 = -10.0
			operand_x = 0.0
			operand_y = vm.f32(0.2)
			operand_z = 0.0
			var11 = 0
			local _ = var11 < 60
			var11 = var11 + 1
		end
		if at <= 2 then
			wait_frames_skipping(8)
		end
		if at <= 3 then
			helper_238b5abc(0)
		end
		if at <= 4 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 6
	vm.entry(6)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.DelExtMotion(0)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(2, 1)
	event.EohSetShow(3, 1)
	event.CharaActive(1, 0)
	event.CharaActive(1, 8)
	event.SetCharaPos(8, -316.71, 71.94, 806.78)
	event.SetCharaRot(8, 0.0, 2.06, 0.0)
	event.SetMotion(8, "立ち", 4)
	event.SetCharaPos(0, -230.0, 32.1, 1200.0)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.SetCameraRef(-230.0, 62.1, 1200.0)
	event.SetCameraPos(-230.0, 72.1, 1300.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

return helper_6673bb50
