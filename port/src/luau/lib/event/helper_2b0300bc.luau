--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_2b0300bc(se_id: s32)
	event.CmrsSetPos(-1.63, 28.5, -58.54)
	event.CmrsSetRef(-1.54, 28.17, -29.76)
	event.SetCharaPos(33, -1.6, 4.14, -22.85)
	event.SetCharaRot(33, 0.0, -3.12, 0.0)
	event.ObjsSetMotion(1, "腕組み", 4)
	wait_objects(1)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1090100)
	event.ResetPakuAnim()
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(1, "腕組み会話", 6)
	event.ObjsNextMotion(1, "腕組み", 0)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1090110)
	event.ResetPakuAnim()
	wait_objects(1)
end

return helper_2b0300bc
