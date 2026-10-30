--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_fdefb770(arg0: any)
	event.CmrsSetPos(212.25, 205.2, 623.4)
	event.CmrsSetRef(236.71, 212.83, 651.45)
	event.ObjsSetPos(4, 258.83, 197.74, 677.01)
	event.ObjsSetRot(4, 0.0, -3.0, 0.0)
	event.ObjsSetMotion(4, "前を見るL", 4)
	wait_objects(4)
	event.SetPakuAnim(4, "口パク")
	helper_4116e6bb(1090320)
	event.ResetPakuAnim()
	event.CmrsInit()
	event.CmrsFadeOut(100, 0.0, 0.0, 0.0)
	wait_camera()
end

return helper_fdefb770
