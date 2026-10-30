--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_71148908()
	local var0: s32 = 0
	local var1: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var5: f32 = 0
	local var6: s32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local pos_x_4: f32 = 0
	local pos_y_4: f32 = 0
	local pos_z_4: f32 = 0
	var0 = event.GetEventData_2(9) or var0
	var1 = event.SndLoadSound_3(8, "snd2/sp/sp_047.sound.json") or var1
	event.EohSyncObj_2(0, var0)
	do
		local out1, out2, out3 = event.EohGetPos(0)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.MinimapDoorEnable(pos_x, pos_y, pos_z)
	var5 = vm.bits_float(event.GetEventData_2(11)) or var5
	var5 = vm.f32(var5 - vm.f32(3.1415927))
	var5 = event.AngleLimit(var5) or var5
	event.EohSyncObj_3(0, var0, "d07d05_3-m0")
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSyncObj_3(1, var0, "d07d05_1-m0")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.EohSyncObj_3(2, var0, "d07d05_1-m1")
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	do
		local out1, out2, out3 = event.EohGetPos(0)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	pos_y_2 = vm.f32(pos_y_2 + 100.0)
	event.ObjsMove2(0, pos_x_2, pos_y_2, pos_z_2, 40, 0, 0.6)
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_3 = out1 or pos_x_3
		pos_y_3 = out2 or pos_y_3
		pos_z_3 = out3 or pos_z_3
	end
	pos_y_3 = vm.f32(pos_y_3 + 100.0)
	event.ObjsMove2(1, pos_x_3, pos_y_3, pos_z_3, 40, 0, 0.6)
	do
		local out1, out2, out3 = event.EohGetPos(2)
		pos_x_4 = out1 or pos_x_4
		pos_y_4 = out2 or pos_y_4
		pos_z_4 = out3 or pos_z_4
	end
	pos_y_4 = vm.f32(pos_y_4 + 100.0)
	event.ObjsMove2(2, pos_x_4, pos_y_4, pos_z_4, 40, 0, 0.6)
	event.SndSePlay(var1, 0)
	var6 = 0
	while var6 < 30 do
		event.CtrlcRotBack(var5)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var6 = var6 + 1
		vm.wait(1)
	end
	wait_objects(0)
	event.EohSyncObj_3(0, var0, "d07da05a-a")
	event.EohSetShow(0, 0)
	event.EohSyncObj_3(0, var0, "d07dv05a-c")
	event.EohSetShow(0, 0)
	event.EohSyncObj_3(0, var0, "d07da05b-a")
	event.EohSetShow(0, 1)
	event.EohSyncObj_3(0, var0, "d07dv05b-c")
	event.EohSetShow(0, 1)
	event.FuncPointShow(var0, "door01", 0)
	event.ResetCamera(0)
end

return helper_71148908
