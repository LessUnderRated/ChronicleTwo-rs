--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_2ecccad3(se_id: s32)
	local projection: f32 = 0
	event.CmrsSetPos(-84.68, 6.96, -155.87)
	event.CmrsSetRef(-202.81, 27.8, -509.36)
	event.GetProjection(projection)
	event.SetProjection(468.9)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -121.68, -12.53, -351.93)
	event.ObjsSetRot(0, 0.0, 0.0, 0.0)
	event.CharaActive(1, 33)
	event.ObjsSetPos(1, -121.68, -12.53, -351.93)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.EohSetShow(10, 0)
	event.EohSetShow(11, 0)
	event.ObjsSetRot(12, 0.0, -1.57, 0.0)
	event.ObjsSetRot(13, 0.0, 1.57, 0.0)
	event.EohSetShow(14, 0)
	event.EohSetShow(15, 0)
	event.SetFadeOut(0)
	wait_objects(12)
	wait_objects(13)
	event.SndSePlay(se_id, 0)
	event.SetFadeIn(30)
	event.ObjsResetMotion(0)
	event.ObjsResetMotion(1)
	event.ObjsSetMotion(0, "歩き（スティーブ）", 4)
	event.ObjsSetMotion(1, "歩き（スティーブ）", 4)
	event.ObjsMove(0, -119.53, -12.53, -218.69, 100)
	event.ObjsMove(1, -119.53, -12.53, -218.69, 100)
	wait_frames(80)
	event.SndSePlay(se_id, 4)
	event.ObjsRotation(12, 0.0, 0.0, 0.0, 50)
	event.ObjsRotation(13, 0.0, 0.0, 0.0, 50)
	wait_objects(0)
	wait_objects(1)
	wait_camera()
	event.SetProjection(projection)
end

return helper_2ecccad3
