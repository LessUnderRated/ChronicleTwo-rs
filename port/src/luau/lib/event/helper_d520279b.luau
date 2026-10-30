--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_b76e3b36 = require("@lib/event/helper_b76e3b36")
local helper_d552d8eb = require("@lib/event/helper_d552d8eb")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_d520279b()
	local var0: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local rot_y: f32 = 0
	local angle: f32 = 0
	local var11: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_018.sound.json") or var0
	helper_b76e3b36()
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
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
	event.EohSyncObj_3(2, "p01_train01", "train08-m4")
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	event.EohSyncObj_3(3, "p01_train01", "train08-m5")
	event.ObjsInit(3)
	event.ObjsSyncObj(3, 3)
	event.EohSyncObj_3(4, "p01_train01", "train10-m4")
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.EohSyncObj_3(5, "p01_train01", "train10-m5")
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.EohSetPos(0, 2101.51, 40.82, 2060.52)
	event.EohSetRot(0, 0.0, -2.26, 0.0)
	event.EohResetDaPosition(0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetFootSoundId(0, 6)
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	do
		local _, out2, _ = event.EohGetRot(1)
		rot_y = out2 or rot_y
	end
	angle = vm.f32(rot_y - vm.f32(3.1415927))
	angle = event.AngleLimit(angle) or angle
	pos_x = vm.f32(vm.f32(vm.sin(angle) * 200.0) + pos_x_2)
	pos_y = pos_y_2
	pos_z = vm.f32(vm.f32(vm.cos(angle) * 200.0) + pos_z_2)
	event.EohSetPos(1, pos_x, pos_y, pos_z)
	event.ObjsMove2(1, pos_x_2, pos_y_2, pos_z_2, 40, 2, 1.0)
	event.CmrsInit()
	event.CmrsSetPos(1514.63, 208.98, 2402.32)
	event.CmrsSetRef(1792.39, 155.32, 2165.78)
	event.AssignStack(5)
	event.ClearStack(5)
	event.EsmInitialize(5)
	event.EsmLoadBase("列車煙")
	event.EsmInitFix(5)
	event.EohSyncObj_2(1, "p01_train01")
	event.EsmCreate("列車煙")
	event.EsmSetValue(0, 1)
	event.SndSePlay(var0, 0)
	event.SetFadeIn(30)
	wait_objects(1)
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	helper_d552d8eb()
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.CmrsSetPos(1899.12, 13.68, 1889.27)
	event.CmrsSetRef(1958.62, 31.92, 1939.67)
	var11 = event.GetSndId(2) or var11
	event.SndSePlay(var11, 106)
	event.CharaActive(0)
	event.EohSetPos(1, pos_x_2, pos_y_2, pos_z_2)
	event.ObjsRotation(2, 0.0, 1.5, 0.0, 30)
	event.ObjsRotation(3, 0.0, -1.5, 0.0, 30)
	event.ObjsRotation(4, 0.0, 1.5, 0.0, 30)
	event.ObjsRotation(5, 0.0, -1.5, 0.0, 30)
	wait_frames(30)
	event.ObjsSetMotion(0, "走り")
	event.ObjsMotionDelay(0, 56)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsMove(0, 2087.08, 40.82, 2048.3, 14)
	event.ObjsMove(0, 2037.85, 0.0, 2005.99, 32)
	event.ObjsMove(0, 2017.4, 0.0, 1988.67, 10)
	wait_frames(46)
	event.EohSetFootSoundId(0, 16)
	event.SetFadeOut(15)
	wait_frames(15)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.CharaActive(8)
	event.CharaActive(9)
	event.CharaActive(10)
	event.EohSetFootSoundId(0, 0)
	event.CharaActive(0)
	helper_9dafbc83(vm.f32(2155.3), 0.0, vm.f32(1707.1), vm.f32(2.46))
	event.ResetCamera(1, 3.1415927, 10.0)
	event.EsmClear()
	event.SetFadeIn(15)
end

return helper_d520279b
