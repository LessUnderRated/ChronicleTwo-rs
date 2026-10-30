--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_da39f7c6(arg0: s32)
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	event.Initialize()
	var1 = event.GetEventData_2(9) or var1
	if arg0 == 0 then
		event.EohSyncObj_3(0, var1, "d05w10_1-m0")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetLoadbgFile_1("snd2/sp/sp_035.sound.json")
		var2 = vm.bits_float(event.GetEventData_2(11)) or var2
		var3 = 0
		while var3 < 20 do
			event.CtrlcRotBack(var2)
			event.CtrlcMoveCamera(0)
			event.CtrlcStep()
			var3 = var3 + 1
			vm.wait(1)
		end
		vm.wait(2)
		helper_479dc9e9()
		var4 = event.SndLoadSound_3(8, "snd2/sp/sp_035.sound.json") or var4
		event.SndSePlay(var4, 1)
		event.ObjsMove2(0, 0.0, 70.0, 0.0, 30, 2, 0.4)
		event.ResetCamera(0)
		wait_objects(0)
		event.SndSeStop(var4, 1)
	else
		event.SetLoadbgFile_1("snd2/sp/sp_036.sound.json")
		vm.wait(5)
		helper_479dc9e9()
		var5 = event.SndLoadSound_3(8, "snd2/sp/sp_036.sound.json") or var5
		event.SndSePlay(var5, 0)
		event.EohSyncObj_3(0, var1, "d05w10_1-m0")
		event.EohSetShow(0, 1)
		event.SetCrossfade(10)
	end
	vm.wait(7)
	event.Finish()
end

return helper_da39f7c6
