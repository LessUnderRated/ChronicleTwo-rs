--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_2348941a()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: s32 = 0
	event.Initialize()
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSetFootSoundId(0, 18)
	event.SetCharaPos(0, 2065.33, -14.0, -806.24)
	event.SetCharaRot(0, 0.0, -1.42, 0.0)
	event.SetMotion(0, "走り", 4)
	event.SetCameraPos(1962.84, 25.0, -888.26)
	event.SetFadeIn(30)
	event.ObjsMove(0, 1899.56, -14.0, -773.11, 40)
	var3 = 0
	while var3 < 40 do
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var0 = out1 or var0
			var1 = out2 or var1
			var2 = out3 or var2
		end
		var1 = vm.f32(var1 + 30.0)
		event.SetCameraRef(var0, var1, var2)
		var3 = var3 + 1
		vm.wait(1)
	end
end

return helper_2348941a
