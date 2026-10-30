--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_d355d559 = require("@lib/event/helper_d355d559")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_964965bb()
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
		helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSetFootSoundId(0, 21)
	event.ObjsSetMotion(0, "走り")
	event.ObjsSetPos(0, 0.0, 0.0, 40.0)
	event.ObjsSetRot(0, 0.0, 3.14, 0.0)
	event.CmrsInit()
	event.CmrsSetPos(-96.52, 68.45, 152.82)
	event.CmrsSetRef(-32.44, 32.28, 0.35)
	event.ObjsMove(0, 0.0, 0.0, -140.0, 60)
	wait_frames(30)
	event.SetFadeOut(30)
	wait_frames(30)
	event.SetMotion(0, "立ち")
	wait_frames(60)
	event.Finish()
end

return helper_964965bb
