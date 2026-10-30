--!strict
-- Shared event helper used by 7 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_8b00d8f9(arg0: any)
	event.CmrsSetPos(-355.99, 88.75, 12.43)
	event.CmrsSetRef(-376.3, 90.49, 31.84)
	event.CharaActive(1, 0)
	event.CharaActive(1, 9)
	event.ObjsSetMotion(0, "あれ？", 6, -1.0, 1)
	event.ObjsNextMotion(0, "あれ？L")
	event.ObjsSetMotion(1, "あれ？", 6)
	event.ObjsNextMotion(1, "あれ？L")
	event.SetPakuAnim(0, "通常口パク")
	helper_4116e6bb(1070010)
	event.ResetPakuAnim()
	wait_objects(0)
	wait_objects(1)
	event.ObjsSetPos(0, -348.51, 50.51, -12.26)
	event.ObjsSetRot(0, 0.0, 1.6, 0.0)
	event.ObjsSetPos(1, -348.51, 50.51, -12.26)
	event.ObjsSetRot(1, 0.0, 1.6, 0.0)
end

return helper_8b00d8f9
