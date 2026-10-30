--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_f7fba8ce = require("@lib/event/helper_f7fba8ce")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_43dc1c8a()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: s32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	event.Initialize()
	event.SetLoadbgFile_1("snd2/sp/sp_033.sound.json")
	vm.wait(1)
	helper_479dc9e9()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_033.sound.json") or var0
	event.AssignStack(5)
	event.ClearStack(5)
	var1 = event.GetEventData_2(9) or var1
	var2 = vm.bits_float(event.GetEventData_2(11)) or var2
	event.EohSyncObj_3(0, var1, "d04w10_3-m")
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	if helper_f7fba8ce(var2, 0.0, 1.0) == 0 or helper_f7fba8ce(var2, vm.f32(3.14), 1.0) == 0 then
		event.EohSyncObj_3(1, var1, "d04w10_2-m")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSyncObj_3(2, var1, "d04w10_4-m")
		event.EohSetShow(2, 1)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
	else
		event.EohSyncObj_3(1, var1, "d04w10_5-m")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSyncObj_3(2, var1, "d04w10_6-m")
		event.EohSetShow(2, 1)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
	end
	event.SndSePlay(var0, 2)
	var3 = vm.bits_float(event.GetEventData_2(11)) or var3
	var4 = 0
	while var4 < 30 do
		event.CtrlcRotBack(var3)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var4 = var4 + 1
		vm.wait(3)
	end
	event.SndSePlay(var0, 0)
	do
		local out1, out2, out3 = event.EohGetRot(1)
		var5 = out1 or var5
		var6 = out2 or var6
		var7 = out3 or var7
	end
	if helper_f7fba8ce(var2, 0.0, 1.0) == 0 then
		var7 = vm.f32(var7 + vm.f32(3.1415927))
		var7 = event.AngleLimit(var7) or var7
	end
	if helper_f7fba8ce(var2, vm.f32(3.14), 1.0) == 0 then
		var7 = vm.f32(var7 - vm.f32(3.1415927))
		var7 = event.AngleLimit(var7) or var7
	end
	if helper_f7fba8ce(var2, vm.f32(1.57), 1.0) == 0 then
		var5 = vm.f32(var5 + vm.f32(3.1415927))
		var5 = event.AngleLimit(var5) or var5
	end
	if helper_f7fba8ce(var2, vm.f32(-1.57), 1.0) == 0 then
		var5 = vm.f32(var5 - vm.f32(3.1415927))
		var5 = event.AngleLimit(var5) or var5
	end
	event.ObjsRotation2(1, var5, var6, var7, 40, 0, 0.5)
	event.ObjsRotation2(2, var5, var6, var7, 40, 0, 0.5)
	wait_objects(1)
	do
		local out1, out2, out3 = event.EohGetPos(0)
		var5 = out1 or var5
		var6 = out2 or var6
		var7 = out3 or var7
	end
	event.ObjsMove2(0, var5, var6 + 80.0, var7, 32, 1, 0.5)
	wait_objects(0)
	event.Finish()
end

return helper_43dc1c8a
