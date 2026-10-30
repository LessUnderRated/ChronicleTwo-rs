--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_696732ec = require("@lib/event/helper_696732ec")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_2295c00d()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		at = 1
		var0 = helper_696732ec(5, 16)
		if var0 == 0 then
			event.ObjsSetPos(0, 435.65, 0.09, 1239.32)
			event.ObjsSetRot(0, 0.0, 0.15, 0.0)
			event.ObjsSetMotion(0, "走り", 4)
			event.CmrsInit()
			event.CmrsSetPos(509.64, 85.52, 1104.08)
			event.CmrsSetRef(467.67, 42.86, 1293.7)
			event.ObjsMove(0, 493.92, 0.01, 1423.13, 60, 1)
			event.CmrsMove(509.64, 85.52, 1104.08, 485.07, 46.59, 1340.58, 60)
			print("2")
			at = 2
			wait_frames(30)
			print("3")
			event.SetFadeOut(30)
			at = 3
			wait_frames(30)
			return 1
		end
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		var1 = vm.f32(var1 + vm.f32(45.0 * vm.sin(vm.f32(-3.01))))
		var3 = vm.f32(var3 + vm.f32(45.0 * vm.cos(vm.f32(-3.01))))
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsRotation(0, 0.0, -3.01, 0.0, 15)
		event.ObjsMove(0, var1, var2, var3, 45)
		for var4_i = 0, 44 do
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var1 = out1 or var1
				var2 = out2 or var2
				var3 = out3 or var3
			end
			event.CmrsSetRef(var1, var2 + 30.0, var3)
			at = 4
			vm.wait(4)
		end
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				print("2")
				wait_frames_skipping(30)
			end
			if at <= 2 then
				print("3")
				wait_frames_skipping(30)
			end
			return 1
		end
		if at <= 4 then
			local _ = var4 < 45
			var4 = var4 + 1
			return 0
		end
		return nil
	end)
end

return helper_2295c00d
