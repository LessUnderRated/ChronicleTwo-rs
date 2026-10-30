--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_8ccd8f42()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: s32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_030.sound.json") or var0
	var1 = event.GetEventData_2(9) or var1
	event.EohSyncObj_3(0, var1, "d01w10_4-m0")
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, 0.0, 0.0, 0.0)
	var1 = event.GetEventData_2(9) or var1
	event.EohSyncObj_3(1, var1, "d01w10_5-m0")
	event.EohSetShow(1, 1)
	event.SndSePlay(var0, 2)
	var2 = vm.bits_float(event.GetEventData_2(11)) or var2
	var3 = 0
	while var3 < 20 do
		event.CtrlcRotBack(var2)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var3 = var3 + 1
		vm.wait(1)
	end
	event.ObjsMove(0, 0.0, 80.0, 0.0, 60)
	event.SndSePlay(var0, 0)
	var3 = 0
	while var3 < 60 do
		event.CtrlcRotBack(var2)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var3 = var3 + 1
		vm.wait(2)
	end
	event.ObjsInit(0)
	event.ObjsInit(1)
	event.ResetCamera(0)
	event.Finish()
end

return helper_8ccd8f42
