--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_bf310715(se_id: s32)
	event.CmrsSetPos(-3.62, 25.14, -51.33)
	event.CmrsSetRef(12.22, 28.93, -35.31)
	event.ObjsSetPos(1, 12.17, 5.43, -29.98)
	event.ObjsSetRot(1, 0.0, -3.12, 0.0)
	event.SndSePlay(se_id, 3)
	event.ObjsSetMotion(1, "バカもん！", 6)
	event.ObjsNextMotion(1, "バカもん！L", 6)
	event.ObjsNextMotion(1, "バカもん！戻り", 6)
	event.ObjsNextMotion(1, "立ち", 0)
	event.SetPakuAnim(1, "大口パク")
	helper_4116e6bb(1090130)
	event.ResetPakuAnim()
	wait_objects(1)
	event.SetPakuAnim(1, "大口パク")
	helper_4116e6bb(1090131)
	event.ResetPakuAnim()
	wait_objects(1)
end

return helper_bf310715
