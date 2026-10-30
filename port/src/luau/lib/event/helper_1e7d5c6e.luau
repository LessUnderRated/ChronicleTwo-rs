--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_1e7d5c6e(arg0: any)
	event.CmrsSetPos(3.57, 18.33, -44.95)
	event.CmrsSetRef(-13.94, 26.79, -26.13)
	event.SetCharaPos(33, -12.31, 3.85, -22.31)
	event.SetCharaRot(33, 0.0, -3.12, 0.0)
	event.ObjsSetMotion(1, "そうじゃ！", 6)
	event.ObjsNextMotion(1, "そうじゃ！L", 0)
	event.SetPakuAnim(1, "大口パク")
	helper_4116e6bb(1090180)
	event.ResetPakuAnim()
	wait_objects(1)
end

return helper_1e7d5c6e
