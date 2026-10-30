--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_82c10d6b(se_id: s32)
	event.CmrsSetPos(-408.29, 60.12, 94.13)
	event.CmrsSetRef(-475.86, 71.34, 81.15)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -492.64, 50.09, 76.79)
	event.ObjsSetRot(0, 0.0, 1.2, 0.0)
	event.ObjsSetMotion(0, "プルプル", 4, -1.0, 1)
	event.CharaActive(1, 9)
	event.ObjsSetPos(1, -492.64, 50.09, 76.79)
	event.ObjsSetRot(1, 0.0, 1.2, 0.0)
	event.ObjsSetMotion(1, "プルプル", 4)
	event.SndSePlay(se_id, 0)
	wait_frames(50)
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(0, "ジャンプ", 6, 0.4)
	event.ObjsSetMotion(1, "ジャンプ", 6, 0.4)
	event.ObjsPosDelay(0, 3)
	event.ObjsPosDelay(1, 3)
	event.ObjsJump(0, -739.96, 133.89, -9.49, -0.28, 33)
	event.ObjsJump(1, -739.96, 133.89, -9.49, -0.28, 33)
	event.ObjsMotionWait(0)
	event.ObjsMotionWait(1)
	event.CmrsMove2(-408.29, 60.12, 94.13, -709.98, 167.81, 0.97, 25, 0, 0.4)
	wait_objects(0)
	wait_objects(1)
	event.SndSeStop(se_id, 0)
end

return helper_82c10d6b
