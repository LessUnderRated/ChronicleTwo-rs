--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_b9156308(arg0: any)
	local projection: f32 = 0
	event.CmrsSetPos(-13.56, 50.69, -99.84)
	event.CmrsSetRef(47.32, 59.3, -184.47)
	projection = event.GetProjection() or projection
	event.SetProjection(471.9)
	event.ObjsSetPos(0, -17.08, -0.02, -207.87)
	event.ObjsSetRot(0, 0.0, 1.62, 0.0)
	event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
	event.ObjsSetPos(1, 34.05, -0.02, -143.69)
	event.ObjsSetRot(1, 0.0, 2.73, 0.0)
	event.ObjsSetMotion(1, "上を見るL", 4)
	event.CmrsFadeInit()
	event.CmrsFadeIn(50, 0.0, 0.0, 0.0)
	wait_camera()
	event.CmrsMove2(-13.56, 18.54, -99.84, 47.32, 27.15, -184.47, 90, 2, 0.4)
	wait_camera()
	event.ObjsSetMotion(0, "歩き", 0)
	event.ObjsMove(0, 8.7, -0.02, -189.32, 45)
	event.ObjsRotation(0, 0.0, 0.3, 0.0, 45)
	event.ObjsMove(0, 16.96, -0.02, -159.01, 45)
	wait_objects(0)
	event.ObjsRotation(0, 0.0, 1.74, 0.0, 10)
	event.ObjsMotionDelay(0, 10)
	event.ObjsSetMotion(0, "立ち")
	wait_objects(0)
	wait_frames(10)
	event.SetProjection(projection)
end

return helper_b9156308
