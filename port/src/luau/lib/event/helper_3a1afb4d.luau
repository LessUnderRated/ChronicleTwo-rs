--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_3a1afb4d()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local angle: f32 = 0
	local var8: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち", 4)
		at = 1
		var0 = helper_ed4dc120(5, 57)
		if var0 == 0 then
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.ObjsSetPos(0, -836.17, 0.0, -823.5)
			event.ObjsSetRot(0, 0.0, -1.66, 0.0)
			event.ObjsSetMotion(0, "走り", 4)
			event.CmrsInit()
			event.CmrsSetPos(-668.11, 97.09, -886.72)
			event.CmrsSetRef(-839.94, 44.81, -838.79)
			event.ObjsMove(0, -1044.71, 0.0, -836.63, 60)
			event.CmrsMove(-668.11, 97.09, -886.72, -881.32, 61.14, -861.93, 60)
			at = 2
			wait_frames(30)
			event.SetFadeOut(30)
			at = 3
			wait_frames(30)
			return 1
		end
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetMotion(0, "歩き", 4)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		do
			local out1, out2, out3 = event.GetCharaRot(0)
			var4 = out1 or var4
			var5 = out2 or var5
			var6 = out3 or var6
		end
		angle = vm.f32(vm.f32(3.1415927) + var5)
		angle = event.AngleLimit(angle) or angle
		angle = vm.f32(1.5707964)
		var1 = vm.f32(var1 + vm.f32(30.0 * vm.sin(angle)))
		var3 = vm.f32(var3 + vm.f32(30.0 * vm.cos(angle)))
		event.ObjsRotation(0, var4, angle, var6, 15)
		event.ObjsMove(0, var1, var2, var3, 45)
		for var8_i = 0, 44 do
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
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				wait_frames_skipping(30)
			end
			if at <= 2 then
				wait_frames_skipping(30)
			end
			return 1
		end
		if at <= 4 then
			local _ = var8 < 45
			var8 = var8 + 1
			return 0
		end
		return nil
	end)
end

return helper_3a1afb4d
