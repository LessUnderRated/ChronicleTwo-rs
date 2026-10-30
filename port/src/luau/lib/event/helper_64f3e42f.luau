--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_64f3e42f()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	event.Ext(1035, 8, var1, var2, var3, var4) -- retail: the handler rejects 5 arguments
	var4 = vm.bits_float(event.GetEventData_2(11)) or var4
	var0 = event.GetEventData_2(9) or var0
	event.SetLoadbgFile_2("event/dng_inout/kumonosu.gltf", "snd2/sp/sp_028.sound.json")
	var4 = vm.f32(var4 + vm.f32(3.1415927))
	var4 = event.AngleLimit(var4) or var4
	var5 = 0
	while var5 < 30 do
		event.SetFcameraFollow(var1, var2 + 40.0, var3)
		event.CtrlcMoveRange(18.0, 10.0, 200.0, 220.0)
		event.CtrlcRotBack(var4)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var5 = var5 + 1
		vm.wait(1)
	end
	helper_479dc9e9()
	event.LoadChara(5, "event/dng_inout/kumonosu.gltf", "info", 12)
	event.SetCharaPos(12, var1, var2 + 20.0, var3)
	event.SetCharaRot(12, 0.0, var4, 0.0)
	var6 = event.SndLoadSound_3(8, "snd2/sp/sp_028.sound.json") or var6
	wait_frames(10)
	event.SndSePlay(var6, 0)
	event.CharaActive(1, 12)
	event.SetMotion(12, "巣消える", 6)
	wait_frames(75)
	event.DeleteChara(12)
	event.ResetCamera(0)
	event.EohSyncObj_2(2, var0)
	do
		local out1, out2, out3 = event.EohGetPos(2)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.MinimapDoorEnable(pos_x, pos_y, pos_z)
	event.EohSyncObj_3(3, var0, "d02d05_1-m0")
	event.EohSetShow(3, 0)
	event.EohSyncObj_3(4, var0, "d02da05-a")
	event.EohSetShow(4, 0)
	event.EohSyncObj_3(5, var0, "d02dv05-c")
	event.EohSetShow(5, 0)
	event.FuncPointShow(var0, "key", 0)
	event.CtrlcMoveRange(18.0, 10.0, 100.0, 160.0)
	event.SetCrossfade(30)
	wait_frames(30)
end

return helper_64f3e42f
