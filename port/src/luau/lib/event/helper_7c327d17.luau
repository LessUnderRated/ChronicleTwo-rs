--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0226fccb = require("@lib/event/helper_0226fccb")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_f72a4299 = require("@lib/event/helper_f72a4299")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_7c327d17()
	local var0: s32 = 0
	local time: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var5: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_019.sound.json") or var0
	helper_f72a4299()
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.CharaActive(0, 0)
	time = event.GetTime() or time
	if time > 0.0 and time < 5.5 then
		event.EohSetShadow(0, 0)
	end
	event.EohSyncObj_2(1, "p01_train01")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetPos(1, 1.3, 8.0, 500.0)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.EohSyncObj_2(6, "p01_shadow-0")
	event.EohSetShow(6, 0)
	event.EohSyncObj_3(2, "p01_train01", "s3601_12-m4")
	event.ObjsSyncObj(2, 2)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(3, "p01_train01", "s3601_14-m2")
	event.ObjsSyncObj(3, 3)
	event.ObjsSetRot(3, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(4, "p01_train01", "s3601_16-m2")
	event.ObjsSyncObj(4, 4)
	event.ObjsSetRot(4, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(5, "p01_train01", "s3601_17-m3")
	do
		local out1, out2, out3 = event.EohGetPos(5)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.ObjsSyncObj(5, 5)
	event.ObjsSetRot(5, 0.0, 0.0, 0.0)
	event.CmrsInit()
	event.CmrsSetPos(-185.19, 68.62, 1049.53)
	event.CmrsSetRef(140.3, 63.52, 109.43)
	event.SetFadeIn(30)
	event.ObjsMove2(1, 1.3, 8.0, 700.0, 40, 2, 1.0)
	event.SndSePlay(var0, 0)
	wait_objects(1)
	wait_frames(10)
	event.SetCrossfade(30)
	event.CmrsSetPos(-254.85, 60.24, -455.84)
	event.CmrsSetRef(-89.19, 67.53, -382.63)
	event.EohSetPos(1, 1.3, 8.0, 700.0)
	event.CharaActive(0)
	event.ObjsSetPos(0, -20.0, 40.0, -365.0)
	event.ObjsSetRot(0, 0.0, -1.57, 0.0)
	event.ObjsRotation(2, 0.0, 0.0, -1.5707964, 30)
	event.ObjsRotation(3, 0.0, 0.0, -1.5707964, 30)
	event.ObjsRotation(4, 0.0, 0.0, 0.3926991, 30)
	event.ObjsRotation(5, 0.0, 0.0, 0.3926991, 30)
	var5 = event.GetSndId(2) or var5
	event.SndSePlay(var5, 92)
	wait_frames(30)
	event.ObjsMove(5, pos_x - 22.5, pos_y - 9.5, pos_z, 30)
	wait_frames(20)
	event.ObjsMove(0, -130.0, 0.0, -365.0, 30)
	event.ObjsSetMotion(0, "走り", 4)
	event.EohSetFootSoundId(0, 6)
	wait_objects(0)
	event.EohSetFootSoundId(0, 0)
	event.ObjsSetMotion(0, "立ち")
	wait_frames(10)
	event.SetFadeIn(1)
	event.EohSetPos(1, 1.3, 8.0, 700.0)
	event.EohSetRot(1, 0.0, 0.0, 0.0)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetPos(5, pos_x, pos_y, pos_z)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.EohSetShow(6, 1)
	event.CharaActive(0)
	helper_9dafbc83(-130.0, 0.0, -365.0, vm.f32(-1.57))
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.SetCameraRef(-130.0, 30.0, -366.0)
	event.SetCameraPos(-270.0, 40.0, -366.0)
	helper_0226fccb()
	event.SetFadeIn(15)
end

return helper_7c327d17
