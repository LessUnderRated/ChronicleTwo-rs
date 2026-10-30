--!strict
-- Shared event helper used by 7 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_bd115051(arg0: any)
	event.CmrsSetPos(-221.89, 93.35, -18.76)
	event.CmrsSetRef(-248.13, 94.53, -3.27)
	event.ObjsSetPos(0, -245.08, 50.51, -6.05)
	event.ObjsSetRot(0, 0.0, 1.6, 0.0)
	event.ObjsSetPos(1, -245.08, 50.51, -6.05)
	event.ObjsSetRot(1, 0.0, 1.6, 0.0)
	event.ObjsResetDaPosition(0)
	event.ObjsSetMotion(0, "驚く", 6)
	event.ObjsSetMotion(1, "驚く", 6)
	event.SetPakuAnim(0, "通常口パク")
	helper_4116e6bb(1070030)
	event.ResetPakuAnim()
	wait_objects(0)
	wait_objects(1)
end

return helper_bd115051
