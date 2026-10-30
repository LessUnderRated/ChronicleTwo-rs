--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_31cdc3de()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local rot_y: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var7: f32 = 0
	local pos_y_3: f32 = 0
	local var9: f32 = 0
	local var13: f32 = 0
	event.SetTime(24.0)
	event.SetTimeStepEnable(0)
	event.Initialize()
	event.AssignStack(4)
	event.ClearStack(4)
	event.AssignStack(5)
	event.ClearStack(5)
	pos_x = vm.f32(1707.99)
	pos_y = vm.f32(-8.19)
	pos_z = vm.f32(-424.51)
	rot_y = vm.f32(-2.3561945)
	event.SetMotion(0, "立ち")
	event.LoadMotion(5, "event/e400/e438/e438_mints.gltf", "info", 0)
	event.CharaActive(0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, pos_x, pos_y, pos_z)
	event.ObjsSetRot(0, 0.0, rot_y, 0.0)
	event.ObjsSetMotion(0, "上見立ち", 4)
	event.LoadChara(5, "chara/c02_base.gltf", "info", 9)
	event.LoadMotion(5, "event/e400/e438/e438_monica.gltf", "info", 9)
	event.CharaActive(9)
	event.EohSyncChara(1, 9)
	event.LoadEquip(5, 1, 4, "info", 9)
	event.LoadEquip(5, 1, 3, "info", 9)
	event.LoadEquip(5, 1, 2, "info", 9, 13)
	event.CharaActive(13)
	event.EohSyncChara(5, 13)
	event.EohSetShow(5, 1)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetPos(1, vm.f32(pos_x - 10.0) + 10.0, -5.03, vm.f32(pos_z + 10.0) + 10.0)
	event.ObjsSetRot(1, 0.0, -2.6, 0.0)
	event.ObjsSetMotion(1, "上見立ち", 4)
	event.EohResetDaPosition(1)
	event.LoadChara(5, "event/e400/e438/e438_paw.gltf", "info", 14)
	event.CharaActive(14)
	event.EohSyncChara(6, 14)
	event.ObjsInit(6)
	event.ObjsSyncObj(6, 6)
	event.ObjsSetPos(6, vm.f32(pos_x + 10.0) + 10.0, -6.28, vm.f32(pos_z - 10.0) + 10.0)
	event.ObjsSetRot(6, 0.0, -2.12, 0.0)
	event.ObjsSetMotion(6, "見上げるL", 4)
	event.EohSyncObj_2(2, "p01_battleship")
	event.EohSetShow(2, 0)
	pos_x_2 = vm.f32(1682.18)
	pos_y_2 = vm.f32(29.66)
	pos_z_2 = vm.f32(-487.46)
	var7 = vm.f32(1712.17)
	pos_y_3 = vm.f32(13.54)
	var9 = vm.f32(-420.33)
	var13 = vm.f32(19.26)
	event.CmrsInit()
	event.CmrsSetPos(pos_x_2, pos_y_2, pos_z_2)
	event.CmrsSetRef(var7, pos_y_3, var9)
	wait_frames(60)
	event.CmrsMoveRef(var7, var13, var9, 210)
	event.CmrsMoveAhd(1.47, -10.82, 76.77, 210)
	wait_frames(210)
	wait_frames(150)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.EohSetShow(2, 1)
	event.Finish()
end

return helper_31cdc3de
