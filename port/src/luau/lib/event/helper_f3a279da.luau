--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_f3a279da(arg0: any)
	event.CmrsSetPos(-245.6, 62.76, -1902.65)
	event.CmrsSetRef(-246.75, 59.85, -1937.73)
	event.CharaActive(1, 33)
	event.ObjsSetPos(1, -247.36, 36.72, -1936.73)
	event.ObjsSetRot(1, 0.0, 0.04, 0.0)
	event.PlayBgm(1)
	event.ObjsSetMotion(1, "出発じゃ！", 6)
	event.ObjsNextMotion(1, "出発じゃ！L", 2)
	event.SetPakuAnim(1, "大口パク")
	helper_4116e6bb(1090310)
	event.ResetPakuAnim()
	wait_objects(1)
end

return helper_f3a279da
