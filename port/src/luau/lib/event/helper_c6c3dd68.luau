--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_d355d559 = require("@lib/event/helper_d355d559")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_c6c3dd68()
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	local var4: s32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
		helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 11)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, 0.0, -20.0, 100.0)
	event.ObjsSetRot(0, 0.0, 3.14, 0.0)
	event.ObjsMove(0, 0.0, -20.0, 37.0, 40)
	event.ObjsMove(0, 0.0, 0.0, 0.0, 40)
	event.ObjsMove(0, 0.0, 0.0, -30.0, 40)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsMotionDelay(0, 120)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsSeDelay(0, 1)
	event.ObjsResetDaPosition(0)
	event.SetCrossfade(30)
	event.CmrsInit()
	event.CmrsSetPos(44.65, 9.01, 185.68)
	event.CmrsSetRef(9.77, 32.28, 31.49)
	wait_frames(60)
	event.EohSetFootSoundId(0, 2)
	event.CmrsFadeInit()
	event.CmrsFadeOut(60)
	wait_camera()
	wait_objects(0)
	var4 = event.GetEventData_2(9) or var4
	event.EohSyncObj_3(0, var4, "d01w10_4-m0")
	event.EohSetPos(0, 0.0, 0.0, 0.0)
	event.EohSetMotion(0, "立ち", 4)
end

return helper_c6c3dd68
