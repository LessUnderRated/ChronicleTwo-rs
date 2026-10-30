--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_f7fba8ce = require("@lib/event/helper_f7fba8ce")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_50ae78e4()
	local var0: f32 = 0
	local var1: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local rot_z: f32 = 0
	local scale: f32 = 0
	local scale_2: f32 = 0
	local scale_3: f32 = 0
	local var11: s32 = 0
	local var12: s32 = 0
	var1 = event.GetEventData_2(9) or var1
	var0 = vm.bits_float(event.GetEventData_2(11)) or var0
	event.EohSyncObj_2(0, var1)
	do
		local out1, out2, out3 = event.EohGetPos(0)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.MinimapDoorEnable(pos_x, pos_y, pos_z)
	event.EohSyncObj_3(0, var1, "d04d00_101-m1")
	do
		local out1, out2, out3 = event.EohGetRot(0)
		rot_x = out1 or rot_x
		rot_y = out2 or rot_y
		rot_z = out3 or rot_z
	end
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	if helper_f7fba8ce(var0, 0.0, 1.0) == 0 or helper_f7fba8ce(var0, vm.f32(3.14), 1.0) == 0 then
		event.EohSyncObj_3(1, var1, "d04d00_11-m")
		event.EohSyncObj_3(2, var1, "d04d00_12-m")
		event.EohSyncObj_3(3, var1, "d04d00_13-m")
		event.EohSyncObj_3(4, var1, "d04d00_14-m")
		event.EohSyncObj_3(5, var1, "d04d00_15-m")
		event.EohSyncObj_3(6, var1, "d04d00_16-m")
		event.EohSyncObj_3(7, var1, "d04d00_17-m")
		event.EohSyncObj_3(8, var1, "d04d00_18-m")
		scale = 1.0
		scale_2 = 1.0
		scale_3 = 0.0
	else
		event.EohSyncObj_3(1, var1, "d04d00_21-m")
		event.EohSyncObj_3(2, var1, "d04d00_22-m")
		event.EohSyncObj_3(3, var1, "d04d00_23-m")
		event.EohSyncObj_3(4, var1, "d04d00_24-m")
		event.EohSyncObj_3(5, var1, "d04d00_25-m")
		event.EohSyncObj_3(6, var1, "d04d00_26-m")
		event.EohSyncObj_3(7, var1, "d04d00_27-m")
		event.EohSyncObj_3(8, var1, "d04d00_28-m")
		scale = 0.0
		scale_2 = 1.0
		scale_3 = 1.0
	end
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	event.ObjsInit(3)
	event.ObjsSyncObj(3, 3)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.ObjsInit(6)
	event.ObjsSyncObj(6, 6)
	event.ObjsInit(7)
	event.ObjsSyncObj(7, 7)
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.EohSyncObj_3(9, var1, "d04da05_2-a")
	event.EohSetShow(9, 0)
	event.EohSyncObj_3(10, var1, "d04da99-a0")
	event.EohSetShow(10, 1)
	event.FuncPointShow(var1, "dkey", 0)
	event.SetLoadbgFile_1("snd2/sp/sp_034.sound.json")
	var0 = vm.f32(var0 - vm.f32(3.1415927))
	var0 = event.AngleLimit(var0) or var0
	var11 = 0
	while var11 < 30 do
		event.CtrlcRotBack(var0)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var11 = var11 + 1
		vm.wait(1)
	end
	helper_479dc9e9()
	var12 = event.SndLoadSound_3(8, "snd2/sp/sp_034.sound.json") or var12
	event.SndSePlay(var12, 0)
	wait_frames(10)
	event.SndSePlay(var12, 1)
	event.ObjsRotation(0, rot_x - vm.f32(0.52), rot_y, rot_z, 30)
	wait_frames(30)
	event.SndSePlay(var12, 2)
	event.FuncPointShow(var1, "eff_d04f01-50", 0)
	event.FuncPointShow(var1, "eff_d04f01-51", 0)
	event.ObjsSetScale(1, 1.0, 1.0, 1.0, 60)
	event.ObjsSetScale(2, 1.0, 1.0, 1.0, 60)
	event.ObjsSetScale(3, 1.0, 1.0, 1.0, 60)
	event.ObjsSetScale(4, 1.0, 1.0, 1.0, 60)
	event.ObjsSetScale(5, 1.0, 1.0, 1.0, 60)
	event.ObjsSetScale(6, 1.0, 1.0, 1.0, 60)
	event.ObjsSetScale(7, scale, scale_2, scale_3, 60)
	event.ObjsSetScale(8, scale, scale_2, scale_3, 60)
	wait_frames(60)
	event.EohSetShow(7, 0)
	event.EohSetShow(8, 0)
	event.FuncPointShow(var1, "func", 0)
	event.ResetCamera(0)
end

return helper_50ae78e4
