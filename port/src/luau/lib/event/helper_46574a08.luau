--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_46574a08(se_id: s32)
	event.CmrsSetPos(-158.38, 85.25, 3.62)
	event.CmrsSetRef(-34.81, 85.07, -0.49)
	event.CharaActive(0, 0)
	event.CharaActive(0, 9)
	event.CharaActive(1, 10)
	event.ObjsSetPos(2, 0.0, 50.0, 0.0)
	event.ObjsSetRot(2, 0.0, -1.56, 0.0)
	event.ObjsSetScale(2, 1.3, 1.3, 1.3)
	event.CmrsFadeInit()
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.SndSePlay(se_id, 1)
	event.ObjsSetMotion(2, "死", 6)
	event.ObjsMotionWait(2)
	wait_objects(2)
end

return helper_46574a08
