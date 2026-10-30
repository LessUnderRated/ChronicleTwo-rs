--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_946c0402 = require("@lib/event/helper_946c0402")
local helper_d7295df9 = require("@lib/event/helper_d7295df9")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_c4692af0()
	local var0: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var4: f32 = 0
	local var5: s32 = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetCnt(0) or var0
		if var0 == 0 then
			helper_946c0402()
			event.CharaNormalDrive(0)
			event.CharaResetDa(0)
			event.ResetCamera(1, 0.0)
			event.SetFadeIn(30)
			return
		end
		event.Initialize()
		event.EohSyncObj_2(1, "p01_train01")
		event.EohSetPos(1, 895.0, -254.5, 3348.1)
		event.EohSetRot(1, 0.0, 1.57, 0.0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncObj_3(2, "p01_train01", "s3601_12-m1")
		event.EohSyncObj_3(3, "p01_train01", "s3601_14-m6")
		event.EohSyncObj_3(4, "p01_train01", "s3601_16-m1")
		event.EohSyncObj_3(5, "p01_train01", "s3601_17-m")
		if var0 == 2 then
			event.EohSyncObj_3(2, "p01_train01", "s3601_12-m5")
			event.EohSyncObj_3(3, "p01_train01", "s3601_14-m10")
			event.EohSyncObj_3(4, "p01_train01", "s3601_16-m4")
			event.EohSyncObj_3(5, "p01_train01", "s3601_17-m2")
		end
		if var0 == 3 then
			event.EohSyncObj_3(2, "p01_train01", "s3601_12-m3")
			event.EohSyncObj_3(3, "p01_train01", "s3601_14-m8")
			event.EohSyncObj_3(4, "p01_train01", "s3601_16-m5")
			event.EohSyncObj_3(5, "p01_train01", "s3601_17-m4")
		end
		event.ObjsSyncObj(2, 2)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSyncObj(3, 3)
		event.ObjsSetRot(3, 0.0, 0.0, 0.0)
		event.ObjsSyncObj(4, 4)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		do
			local out1, out2, out3 = event.EohGetPos(5)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.ObjsSyncObj(5, 5)
		event.ObjsSetRot(5, 0.0, 0.0, 0.0)
		var4 = 350.0
		if var0 == 2 then
			var4 = -170.0
		end
		if var0 == 3 then
			var4 = -690.0
		end
		event.CmrsInit()
		event.CmrsSetPos(var4 - vm.f32(135.23), -235.54, 3098.71)
		event.CmrsSetRef(var4, -236.6, 3227.1)
		event.SetFadeIn(30)
		event.ObjsSetPos(0, var4, -220.0, 3330.0)
		event.ObjsSetRot(0, 0.0, 3.1415927, 0.0)
		event.ObjsRotation(2, 0.0, 0.0, 1.5707964, 30)
		event.ObjsRotation(3, 0.0, 0.0, 1.5707964, 30)
		event.ObjsRotation(4, 0.0, 0.0, -0.3926991, 30)
		event.ObjsRotation(5, 0.0, 0.0, -0.3926991, 30)
		var5 = event.GetSndId(2) or var5
		event.SndSePlay(var5, 92)
		at = 1
		wait_frames(30)
		event.ObjsMove(5, pos_x + 45.0, pos_y - 19.0, pos_z, 30)
		at = 2
		wait_frames(20)
		event.ObjsMove(0, var4, -268.4, 3227.1, 30)
		event.ObjsSetMotion(0, "走り", 4)
		at = 3
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		at = 4
		wait_frames(10)
		event.SetFadeIn(1)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetRot(3, 0.0, 0.0, 0.0)
		event.EohSetRot(4, 0.0, 0.0, 0.0)
		event.EohSetPos(5, pos_x, pos_y, pos_z)
		event.EohSetRot(5, 0.0, 0.0, 0.0)
		helper_946c0402()
		event.CharaNormalDrive(0)
		event.CharaResetDa(0)
		event.ResetCamera(1, 0.0)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				wait_frames_skipping(20)
			end
			if at <= 2 then
				helper_238b5abc(0)
			end
			if at <= 3 then
				wait_frames_skipping(10)
			end
			helper_d7295df9()
			return 0
		end
		return nil
	end)
end

return helper_c4692af0
