--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_f7fba8ce = require("@lib/event/helper_f7fba8ce")
local helper_fbf84a80 = require("@lib/event/helper_fbf84a80")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_36bdf460()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: s32 = 0
	local var6: f32 = 0
	local rot_y: f32 = 0
	local var8: f32 = 0
	local vector_x: f32 = 0
	local vector_y: f32 = 0
	local vector_z: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(406, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.StopBgm(0)
		var0 = event.SndLoadSound_3(8, "snd2/sp/sp_033.sound.json") or var0
		do
			local out1, out2, out3, out4 = event.GetDunWorldCoord(2)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
			var4 = out4 or var4
		end
		event.SetWorldCoord(var1, var2, var3, var4)
		event.ChangeDir("event/e400/e406/")
		event.LoadMes(0, 5, "e406_1.txt")
		event.ChangeDir("")
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		var5 = event.GetEventData_2(9) or var5
		if helper_f7fba8ce(var4, 0.0, 1.0) == 0 or helper_f7fba8ce(var4, vm.f32(3.14), 1.0) == 0 then
			event.EohSyncObj_3(2, var5, "d04w10_2-m")
			event.ObjsInit(2)
			event.ObjsSyncObj(2, 2)
			event.EohSyncObj_3(3, var5, "d04w10_4-m")
			event.ObjsInit(3)
			event.ObjsSyncObj(3, 3)
		else
			event.EohSyncObj_3(2, var5, "d04w10_5-m")
			event.ObjsInit(2)
			event.ObjsSyncObj(2, 2)
			event.EohSyncObj_3(3, var5, "d04w10_6-m")
			event.ObjsInit(3)
			event.ObjsSyncObj(3, 3)
		end
		event.EohSyncObj_3(1, var5, "d04w10_3-m")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetPos(0, 0.0, 0.0, -145.0)
		event.EohSetRot(0, 0.0, 0.0, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 18)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.SndInReverb(0)
		event.InitDramaScene()
		event.SetStatusbarShow(0, 1.0)
		event.CmrsInit()
		event.CmrsSetPos(51.16, 17.85, 158.67)
		event.CmrsSetRef(-12.94, 64.29, -60.21)
		event.SetFadeIn(30)
		event.SndSePlay(var0, 1)
		do
			local out1, out2, out3 = event.EohGetRot(2)
			var6 = out1 or var6
			rot_y = out2 or rot_y
			var8 = out3 or var8
		end
		do
			local out1, out2, out3 = event.CopyVector(var6, rot_y, var8)
			vector_x = out1 or vector_x
			vector_y = out2 or vector_y
			vector_z = out3 or vector_z
		end
		do
			local out1, out2, out3 = event.EohGetPos(1)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		if helper_f7fba8ce(var4, 0.0, 0.5) == 0 then
			var8 = vm.f32(vector_z + vm.f32(3.1415927))
			var8 = event.AngleLimit(var8) or var8
		end
		if helper_f7fba8ce(var4, vm.f32(3.14), 0.5) == 0 then
			var8 = vm.f32(vector_z - vm.f32(3.1415927))
			var8 = event.AngleLimit(var8) or var8
		end
		if helper_f7fba8ce(var4, vm.f32(1.57), 0.5) == 0 then
			var6 = vm.f32(vector_x + vm.f32(3.1415927))
			var6 = event.AngleLimit(var6) or var6
		end
		if helper_f7fba8ce(var4, vm.f32(-1.57), 0.5) == 0 then
			var6 = vm.f32(vector_x - vm.f32(3.1415927))
			var6 = event.AngleLimit(var6) or var6
		end
		event.ObjsRotation2(2, var6, rot_y, var8, 40, 0, 0.5)
		event.ObjsRotation2(3, var6, rot_y, var8, 40, 0, 0.5)
		at = 2
		wait_objects(2)
		event.ObjsMove2(1, pos_x, pos_y + 80.0, pos_z, 32, 1, 0.5)
		at = 3
		wait_frames(20)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, 0.0, 0.0, 0.0, 30)
		at = 4
		wait_objects(1)
		event.ObjsMove2(1, pos_x, pos_y, pos_z, 32, 0, 0.5)
		at = 5
		wait_objects(0)
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsPosDelay(0, 30)
		event.ObjsMove(0, 0.0, 0.0, 60.0, 60)
		event.CmrsAhddelay(30)
		event.CmrsSyncObj(0, 0.0, 22.0, 0.0, 0.37, 0.0, 33.0)
		event.CmrsMoveAhd2(3.14, 0.0, 33.0, 200, 0, 1.0)
		at = 6
		wait_objects(1)
		event.ObjsRotation2(2, vector_x, vector_y, vector_z, 40, 0, 0.5)
		event.ObjsRotation2(3, vector_x, vector_y, vector_z, 40, 0, 0.5)
		at = 7
		helper_1584c528(4060010, 400)
		at = 8
		wait_camera()
		event.CmrsReleaseObj()
		event.CmrsMove2(0.06, 29.36, 27.0, 0.0, 51.38, 60.0, 60, 1, 1.0)
		at = 9
		wait_frames(60)
		event.SetFadeOut(30)
		at = 10
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			local _ = helper_fbf84a80(var4, 0.0, 1.0) == 0
			local _ = helper_fbf84a80(var4, vm.f32(3.14), 1.0) == 0
			local _ = helper_fbf84a80(var4, 0.0, 0.5) == 0
			var8 = vm.f32(vector_z + vm.f32(3.1415927))
			local _ = helper_fbf84a80(var4, vm.f32(3.14), 0.5) == 0
			var8 = vm.f32(vector_z - vm.f32(3.1415927))
			local _ = helper_fbf84a80(var4, vm.f32(1.57), 0.5) == 0
			var6 = vm.f32(vector_x + vm.f32(3.1415927))
			local _ = helper_fbf84a80(var4, vm.f32(-1.57), 0.5) == 0
			var6 = vm.f32(vector_x - vm.f32(3.1415927))
			helper_238b5abc(2)
		end
		if at <= 2 then
			wait_frames_skipping(20)
		end
		if at <= 3 then
			helper_238b5abc(1)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_238b5abc(1)
		end
		if at <= 6 then
			helper_52aadc70(4060010, 400)
		end
		if at <= 7 then
			helper_344d6cd8()
		end
		if at <= 8 then
			wait_frames_skipping(60)
		end
		if at <= 9 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 11
	vm.entry(11)
	event.CancelDramaScene()
	event.SndSeStop(var0, 1)
	event.SndInReverb(1)
	event.LoadMes(0, -1)
	event.Finish()
end

return helper_36bdf460
