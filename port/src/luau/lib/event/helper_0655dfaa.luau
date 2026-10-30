--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_0655dfaa(arg0: any, arg1: any)
	event.CmrsSetPos(-38.62, 34.71, -174.94)
	event.CmrsSetRef(37.54, 15.45, -157.32)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, 16.25, -0.02, -166.37)
	event.ObjsSetRot(0, 0.0, 1.16, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4)
	event.CharaActive(1, 32)
	event.ObjsSetMotion(1, "腰に手L", 4)
	event.CharaActive(1, 25)
	wait_frames(30)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050330)
	event.ResetPakuAnim()
end

return helper_0655dfaa
