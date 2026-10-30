--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_b9d220f5()
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
		var0 = helper_ed4dc120(5, 1)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var0 == 0 then
			event.CmrsSetPos(-1159.24, 92.09, 269.02)
			event.CmrsSetRef(-1327.31, 55.37, 161.26)
			event.ObjsSetPos(0, -1386.18, 24.63, 115.22)
			event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 60)
			event.ObjsAddPas(0, -1386.18, 29.63, 115.22)
			event.ObjsAddPas(0, -1421.37, 37.04, 89.07)
			event.ObjsAddPas(0, -1441.04, 44.13, 68.02)
			event.ObjsAddPas(0, -1454.41, 52.15, 47.35)
			event.ObjsAddPas(0, -1465.6, 61.13, 26.8)
			event.ObjsAddPas(0, -1475.99, 68.270004, 2.68)
			event.ObjsAddPas(0, -1483.7, 77.97, -24.81)
			event.ObjsStartPas(0)
			at = 2
			wait_frames(30)
			event.SetFadeOut(30)
			at = 3
			wait_frames(30)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var1 = out1 or var1
				var2 = out2 or var2
				var3 = out3 or var3
			end
			var4 = vm.f32(vm.f32(vm.sin(vm.f32(1.44)) * 30.0) + var1)
			var5 = 0.0
			var6 = vm.f32(vm.f32(vm.cos(vm.f32(1.44)) * 30.0) + var3)
			event.ObjsMove(0, var4, var5, var6, 30, 1)
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
				wait_frames_skipping(30)
			end
			if at <= 2 then
				wait_frames_skipping(30)
			end
			return 1
		end
		if at <= 4 then
			return 0
		end
		return nil
	end)
end

return helper_b9d220f5
