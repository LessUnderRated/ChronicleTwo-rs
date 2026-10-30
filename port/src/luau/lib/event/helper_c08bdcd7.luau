--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_c08bdcd7(arg0: s32)
	local var1: s32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local rot_z: f32 = 0
	local rot_x_2: f32 = 0
	local rot_y_2: f32 = 0
	local rot_z_2: f32 = 0
	local rot_x_3: f32 = 0
	local rot_y_3: f32 = 0
	local rot_z_3: f32 = 0
	local rot_x_4: f32 = 0
	local rot_y_4: f32 = 0
	local rot_z_4: f32 = 0
	local rot_x_5: f32 = 0
	local rot_y_5: f32 = 0
	local rot_z_5: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local angle: f32 = 0
	local var21: f32 = 0
	local var22: s32 = 0
	local var23: f32 = 0
	local var24: f32 = 0
	local var25: f32 = 0
	local var26: s32 = 0
	event.Initialize()
	event.SetLoadbgFile_2("event/dng_inout/gekka_out.gltf", "snd2/sp/sp_037.sound.json")
	var1 = event.GetEventData_2(9) or var1
	if arg0 == 0 then
		event.EohSyncObj_3(0, var1, "d06w09_3-m")
		event.EohSyncObj_3(1, var1, "d06w09_3-m1")
		event.EohSyncObj_3(2, var1, "d06w09_3-m2")
		event.EohSyncObj_3(3, var1, "d06w09_3-m3")
		event.EohSyncObj_3(4, var1, "d06w09_3-m4")
	elseif arg0 == 1 then
		event.EohSyncObj_3(0, var1, "d06w09_4-m")
		event.EohSyncObj_3(1, var1, "d06w09_4-m1")
		event.EohSyncObj_3(2, var1, "d06w09_4-m2")
		event.EohSyncObj_3(3, var1, "d06w09_4-m3")
		event.EohSyncObj_3(4, var1, "d06w09_4-m4")
	else
		event.EohSyncObj_3(0, var1, "d06w09_5-m")
		event.EohSyncObj_3(1, var1, "d06w09_5-m1")
		event.EohSyncObj_3(2, var1, "d06w09_5-m2")
		event.EohSyncObj_3(3, var1, "d06w09_5-m3")
		event.EohSyncObj_3(4, var1, "d06w09_5-m4")
	end
	do
		local out1, out2, out3 = event.EohGetRot(0)
		rot_x = out1 or rot_x
		rot_y = out2 or rot_y
		rot_z = out3 or rot_z
	end
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	do
		local out1, out2, out3 = event.EohGetRot(1)
		rot_x_2 = out1 or rot_x_2
		rot_y_2 = out2 or rot_y_2
		rot_z_2 = out3 or rot_z_2
	end
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	do
		local out1, out2, out3 = event.EohGetRot(2)
		rot_x_3 = out1 or rot_x_3
		rot_y_3 = out2 or rot_y_3
		rot_z_3 = out3 or rot_z_3
	end
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	do
		local out1, out2, out3 = event.EohGetRot(3)
		rot_x_4 = out1 or rot_x_4
		rot_y_4 = out2 or rot_y_4
		rot_z_4 = out3 or rot_z_4
	end
	event.ObjsInit(3)
	event.ObjsSyncObj(3, 3)
	do
		local out1, out2, out3 = event.EohGetRot(4)
		rot_x_5 = out1 or rot_x_5
		rot_y_5 = out2 or rot_y_5
		rot_z_5 = out3 or rot_z_5
	end
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.EohSyncChara(10, 0)
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	var21 = vm.bits_float(event.GetEventData_2(11)) or var21
	event.Ext(1035, 8, var17, var18, var19, var21) -- retail: the handler rejects 5 arguments
	var17 = vm.f32(vm.f32(vm.sin(var21) * 30.0) + var17)
	var19 = vm.f32(vm.f32(vm.cos(var21) * 30.0) + var19)
	angle = vm.f32(var21 - vm.f32(3.1415927))
	angle = event.AngleLimit(angle) or angle
	event.ObjsMove(10, var17, var18, var19, 30)
	event.ObjsRotation(10, 0.0, angle, 0.0, 30)
	event.ObjsSetMotion(10, "歩き")
	event.ObjsMotionDelay(10, 30)
	event.ObjsSetMotion(10, "立ち")
	var22 = 0
	while var22 < 40 do
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var23 = out1 or var23
			var24 = out2 or var24
			var25 = out3 or var25
		end
		event.SetFcameraFollow(var23, var24, var25)
		event.CtrlcRotBack(var21)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var22 = var22 + 1
		vm.wait(1)
	end
	helper_479dc9e9()
	event.AssignStack(5)
	event.ClearStack(5)
	var17 = vm.f32(vm.f32(vm.sin(angle) * 20.0) + var17)
	var19 = vm.f32(vm.f32(vm.cos(angle) * 20.0) + var19)
	event.LoadChara(5, "event/dng_inout/gekka_out.gltf", "info", 12)
	event.CharaActive(1, 12)
	event.SetCharaPos(12, var17, var18, var19)
	event.SetCharaRot(12, 0.0, var21, 0.0)
	event.SetMotion(12, "アウト", 6)
	var26 = event.SndLoadSound_3(8, "snd2/sp/sp_037.sound.json") or var26
	event.SndSePlay(var26, 0)
	event.SndSePlay(var26, 2)
	event.ObjsRotation2(0, rot_x - 1.0, rot_y, rot_z, 20, 0, 1.0)
	event.ObjsRotation2(1, rot_x_2 - 1.0, rot_y_2, rot_z_2, 20, 0, 1.0)
	event.ObjsRotation2(2, rot_x_3 - 1.0, rot_y_3, rot_z_3, 20, 0, 1.0)
	event.ObjsRotation2(3, rot_x_4 - 1.0, rot_y_4, rot_z_4, 20, 0, 1.0)
	event.ObjsRotation2(4, rot_x_5 - 1.0, rot_y_5, rot_z_5, 20, 0, 1.0)
	wait_objects(0)
	event.EohSyncObj_2(0, var1)
	event.EohGetPos(0)
	event.FuncPointPos(var1, "key1", 0.0, 0.0, 0.0)
	event.EohSyncObj_3(0, var1, "d06wa09_2-a")
	event.EohSetShow(0, 0)
	event.EohSyncObj_3(0, var1, "d06wv09_2-c")
	event.EohSetShow(0, 0)
	event.DeleteChara(12)
	event.ResetCamera(0)
	event.Finish()
end

return helper_c08bdcd7
