--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_b5a4da39(se_id: s32)
	event.CmrsSetPos(-120.34, 23.49, -175.84)
	event.CmrsSetRef(-120.44, 21.93, -203.94)
	event.ObjsSetPos(0, -119.53, -12.53, -229.18)
	event.ObjsSetRot(0, 0.0, 0.0, 0.0)
	event.ObjsResetMotion(0)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4)
	event.ObjsSetPos(1, -119.53, -12.53, -229.18)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsResetMotion(1)
	event.ObjsSetMotion(1, "立ち（スティーブ）", 4)
	event.CmrsFadeInit()
	event.CmrsFadeIn(50, 0.0, 0.0, 0.0)
	wait_camera()
	wait_objects(0)
	wait_objects(1)
	event.SndSePlay(se_id, 1)
	wait_frames(50)
end

return helper_b5a4da39
