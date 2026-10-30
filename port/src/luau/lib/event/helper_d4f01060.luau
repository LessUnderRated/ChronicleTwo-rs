--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_d4f01060()
	local var0: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local rot_y: f32 = 0
	local angle: f32 = 0
	local var14: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_019.sound.json") or var0
	event.CharaActive(0, 8)
	event.CharaActive(0, 9)
	event.CharaActive(0, 10)
	event.CharaActive(0, 0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSyncObj_2(1, "p01_train01")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.EohSyncObj_3(2, "p01_train01", "s3601_12-m5")
	event.ObjsSyncObj(2, 2)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(3, "p01_train01", "s3601_14-m10")
	event.ObjsSyncObj(3, 3)
	event.ObjsSetRot(3, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(4, "p01_train01", "s3601_16-m4")
	event.ObjsSyncObj(4, 4)
	event.ObjsSetRot(4, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(5, "p01_train01", "s3601_17-m2")
	do
		local out1, out2, out3 = event.EohGetPos(5)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.ObjsSyncObj(5, 5)
	event.ObjsSetRot(5, 0.0, 0.0, 0.0)
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_3 = out1 or pos_x_3
		pos_y_3 = out2 or pos_y_3
		pos_z_3 = out3 or pos_z_3
	end
	do
		local _, out2, _ = event.EohGetRot(1)
		rot_y = out2 or rot_y
	end
	angle = vm.f32(rot_y - vm.f32(3.1415927))
	angle = event.AngleLimit(angle) or angle
	pos_x_2 = vm.f32(vm.f32(vm.sin(angle) * 200.0) + pos_x_3)
	pos_y_2 = pos_y_3
	pos_z_2 = vm.f32(vm.f32(vm.cos(angle) * 200.0) + pos_z_3)
	event.EohSetPos(1, pos_x_2, pos_y_2, pos_z_2)
	event.ObjsMove2(1, pos_x_3, pos_y_3, pos_z_3, 40, 2, 1.0)
	event.CmrsInit()
	event.CmrsSetPos(1514.63, 208.98, 2402.32)
	event.CmrsSetRef(1792.39, 155.32, 2165.78)
	event.SetFadeIn(30)
	event.SndSePlay(var0, 0)
	wait_objects(1)
	event.CmrsSetPos(1890.88, 13.68, 2033.57)
	event.CmrsSetRef(1970.25, 31.92, 2037.52)
	event.CharaActive(0)
	event.EohSetPos(1, pos_x_3, pos_y_3, pos_z_3)
	event.ObjsSetPos(0, 2125.0, 40.0, 2080.0)
	event.ObjsSetRot(0, 0.0, -2.26, 0.0)
	event.ObjsRotation(2, 0.0, 0.0, 1.5707964, 30)
	event.ObjsRotation(3, 0.0, 0.0, 1.5707964, 30)
	event.ObjsRotation(4, 0.0, 0.0, -0.3926991, 30)
	event.ObjsRotation(5, 0.0, 0.0, -0.3926991, 30)
	var14 = event.GetSndId(2) or var14
	event.SndSePlay(var14, 92)
	wait_frames(30)
	event.ObjsMove(5, pos_x + 11.25, pos_y - 4.75, pos_z, 30)
	wait_frames(20)
	event.ObjsMove(0, 2050.0, 0.0, 2015.0, 30)
	event.ObjsSetMotion(0, "走り", 4)
	event.EohSetFootSoundId(0, 6)
	wait_objects(0)
	event.EohSetFootSoundId(0, 0)
	event.ObjsSetMotion(0, "立ち")
	wait_frames(10)
	event.SetFadeIn(1)
	event.EohSetPos(1, pos_x_3, pos_y_3, pos_z_3)
	event.EohSetRot(1, 0.0, rot_y, 0.0)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetPos(5, pos_x, pos_y, pos_z)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.CharaActive(8)
	event.CharaActive(9)
	event.CharaActive(10)
	event.CharaActive(0)
	helper_9dafbc83(vm.f32(2155.3), 0.0, vm.f32(1707.1), vm.f32(2.46))
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(15)
end

return helper_d4f01060
