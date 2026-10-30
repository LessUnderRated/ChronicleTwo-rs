--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_36d61aed()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		at = 1
		var0 = helper_ed4dc120(5, 87)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 16)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var0 == 0 then
			event.CmrsInit()
			event.CmrsSetPos(1741.43, 158.18, -323.48)
			event.CmrsSetRef(1987.85, 77.48, -185.67)
			event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 70)
			event.ObjsAddPas(0, 2073.86, 0.0, -146.5)
			event.ObjsAddPas(0, 2172.98, -1.14, -140.36)
			event.ObjsAddPas(0, 2239.86, -9.63, -132.92)
			event.ObjsAddPas(0, 2337.56, -22.03, -101.25)
			event.ObjsStartPas(0)
			at = 2
			wait_frames(50)
			event.SetFadeOut(20)
			at = 3
			wait_frames(20)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var1 = out1 or var1
				var2 = out2 or var2
				var3 = out3 or var3
			end
			var4 = vm.f32(vm.f32(vm.sin(vm.f32(-1.57)) * 30.0) + var1)
			var5 = 0.0
			var6 = vm.f32(vm.f32(vm.cos(vm.f32(-1.57)) * 30.0) + var3)
			event.ObjsMove(0, var4, var5, var6, 30)
			event.ObjsReference(0, var4, var5, var6, 10)
			event.ObjsSetMotion(0, "歩き")
			var7 = 0
			while var7 < 30 do
				do
					local out1, out2, out3 = event.GetCharaPos(0)
					var1 = out1 or var1
					var2 = out2 or var2
					var3 = out3 or var3
				end
				var2 = vm.f32(var2 + 30.0)
				event.SetCameraRef(var1, var2, var3)
				var7 = var7 + 1
				at = 4
				vm.wait(4)
			end
		end
		event.EohSetFootSoundId(0, 0)
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				wait_frames_skipping(50)
			end
			if at <= 2 then
				wait_frames_skipping(20)
			end
			return 1
		end
		if at <= 4 then
			return 0
		end
		return nil
	end)
end

return helper_36d61aed
