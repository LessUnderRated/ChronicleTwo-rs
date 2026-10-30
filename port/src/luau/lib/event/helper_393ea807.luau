--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_393ea807()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local var4: s32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: s32 = 0
	local time: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(540, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetProjection(300.0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		event.ChangeDir("event/e500/e540/")
		event.EohSyncObj_2(0, "p03_s55")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		var0 = 0
		var1 = -4
		var2 = 0
		var3 = -200
		var4 = 0
		while var0 < 100 do
			if var0 == 0 then
				event.LoadChara(5, "e540_golem.gltf", "e33a", 8)
			else
				event.CopyChara(5, 8, 8 + var0)
			end
			event.CharaActive(8 + var0)
			event.EohSyncChara(1 + var0, 8 + var0)
			event.EohSetShadow(1 + var0, 0)
			event.ObjsInit(1 + var0)
			event.ObjsSyncObj(1 + var0, 1 + var0)
			if vm.imod(var2, 2) == 0 then
				event.SetCharaPos(
					8 + var0,
					vm.i32(vm.i32(vm.i32(80 * var1) - 80) + vm.i32(80 * var1)),
					0.0,
					vm.i32(vm.i32(vm.i32(-var2) * 140) + var3)
				)
			else
				event.SetCharaPos(
					8 + var0,
					vm.i32(vm.i32(80 * var1) + vm.i32(80 * var1)),
					0.0,
					vm.i32(vm.i32(vm.i32(-var2) * 140) + var3)
				)
			end
			var1 = vm.i32(var1 + 1)
			if vm.imod(var0 + 1, 10) == 0 then
				var1 = -4
				var2 = vm.i32(var2 + 1)
				var3 = -200
				var4 = 0
			end
			if var4 == 0 and var3 == 0 then
				var4 = 2
			end
			if var4 ~= 2 then
				if var4 ~= 0 then
					var3 = vm.i32(var3 - 40)
				else
					var3 = vm.i32(var3 + 40)
				end
			else
				var4 = 1
			end
			do
				local out1, out2, out3 = event.GetCharaPos(8 + var0)
				var5 = out1 or var5
				var6 = out2 or var6
				var7 = out3 or var7
			end
			var8 = event.GetRand(40.0) or var8
			var8 = vm.f32(var8 - 20.0)
			var5 = vm.f32(var5 + var8)
			var8 = event.GetRand(100.0) or var8
			var8 = vm.f32(var8 - 50.0)
			var7 = vm.f32(var7 + var8)
			event.SetCharaPos(8 + var0, var5, var6, var7)
			var9 = vm.float_bits(event.GetRand(100)) or var9
			if vm.imod(var9, 2) == 0 then
				event.EohSetMotion(1 + var0, "走り", 4)
			else
				event.EohSetMotion(1 + var0, "走り2", 4)
			end
			event.EohNormalDrive(1 + var0)
			var8 = event.GetRand(10.0) or var8
			event.ObjsSetMotionNowTime(1 + var0, var8)
			var0 = var0 + 1
		end
		at = 1
		vm.wait(1)
		var0 = 0
		while var0 < 100 do
			event.CharaActive(0, 8 + var0)
			var0 = var0 + 1
		end
		event.ChangeDir("")
		event.EohSetPos(0, 0.0, 2245.12, 8141.98)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		time = event.GetTime() or time
		event.SetTime(24.0)
		event.SetTimeStepEnable(0)
		event.ObjsMove2(0, 0.0, 2645.12, 8141.98, 60, 2, 1.0)
		event.CmrsInit()
		event.CmrsSetPos(694.02, 1258.41, 4866.14)
		event.CmrsSetRef(684.32, 1267.0, 4889.3)
		event.InitDramaScene()
		event.SetFadeIn(10)
		at = 2
		wait_objects(0)
		at = 3
		wait_frames(30)
		event.CmrsSetPos(2.65, 4414.65, 8676.77)
		event.CmrsSetRef(2.44, 4392.18, 8614.16)
		at = 4
		wait_frames(60)
		event.CmrsSetPos(0.0, 44.56, 492.2)
		event.CmrsSetRef(0.0, 52.46, 293.84)
		event.CmrsMove2(0.0, 93.66, 876.4, 0.0, 50.99, 676.98, 100, 2, 1.0)
		event.EohSetShow(0, 0)
		var0 = 0
		while var0 < 100 do
			event.CharaActive(0, 8 + var0)
			do
				local out1, out2, out3 = event.EohGetPos(1 + var0)
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			event.ObjsMove(1 + var0, pos_x, pos_y, pos_z + 1200.0, 180)
			var0 = var0 + 1
		end
		at = 5
		wait_frames(150)
		at = 6
		wait_frames(20)
		at = 7
		wait_frames(10)
		event.SetFadeOut(0)
	end, function(received: { any }): boolean
		if at <= 1 then
			var0 = 0
			local _ = var0 < 100
			var0 = var0 + 1
			helper_238b5abc(0)
		end
		if at <= 2 then
			wait_frames_skipping(30)
		end
		if at <= 3 then
			wait_frames_skipping(60)
		end
		if at <= 4 then
			var0 = 0
			local _ = var0 < 100
			var0 = var0 + 1
			wait_frames_skipping(150)
		end
		if at <= 5 then
			wait_frames_skipping(20)
		end
		if at <= 6 then
			wait_frames_skipping(10)
		end
		return true
	end)
	event.CancelDramaScene()
	event.SetProjection(524.9)
	event.EohSetShow(0, 1)
	event.SetTime(time)
	event.SetTimeStepEnable(1)
	event.CharaActive(0)
	var0 = 0
	while var0 < 100 do
		event.DeleteChara(8 + var0)
		var0 = var0 + 1
	end
end

return helper_393ea807
