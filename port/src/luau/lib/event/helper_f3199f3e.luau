--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_f3199f3e(se_id: s32)
	event.CmrsSetPos(-326.52, 113.91, -1579.31)
	event.CmrsSetRef(-22.58, 118.56, -2134.59)
	event.CharaActive(0, 33)
	event.CharaActive(0, 34)
	event.CharaActive(0, 35)
	event.SndSeStop(se_id, 10)
	event.SndSePlay(se_id, 12)
	event.ObjsMove(11, -200.0, 0.0, 0.0, 285)
	event.ObjsMove(12, 200.0, 0.0, 0.0, 285)
	wait_objects(11)
	wait_objects(12)
	wait_frames(30)
end

return helper_f3199f3e
