--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_f59747fb()
	local var0: s32 = 0
	local var1: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var5: f32 = 0
	local var6: s32 = 0
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_030.sound.json") or var0
	var1 = event.GetEventData_2(9) or var1
	event.EohSyncObj_2(0, var1)
	do
		local out1, out2, out3 = event.EohGetPos(0)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.MinimapDoorEnable(pos_x, pos_y, pos_z)
	event.EohSyncObj_3(1, var1, "d01d01_00-m0")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetPos(1, 0.0, 0.0, 0.0)
	event.ObjsMove(1, 0.0, 80.0, 0.0, 60)
	event.SndSePlay(var0, 0)
	var5 = vm.bits_float(event.GetEventData_2(11)) or var5
	var5 = vm.f32(var5 - vm.f32(3.1415927))
	var5 = event.AngleLimit(var5) or var5
	var6 = 0
	while var6 < 60 do
		event.CtrlcRotBack(var5)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var6 = var6 + 1
		vm.wait(1)
	end
	event.FuncPointShow(var1, "key", 0)
	event.EohSyncObj_3(2, var1, "d01da00-a")
	event.EohSetPos(2, 0.0, 80.0, 0.0)
	event.EohSyncObj_3(3, var1, "d01dv00-c")
	event.EohSetShow(3, 0)
	event.ResetCamera(0)
end

return helper_f59747fb
