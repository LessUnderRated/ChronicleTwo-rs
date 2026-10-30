--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")

--- Helper function.
local function helper_3bce1a2c(se_id: s32)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -167.59, 50.0, 2.86)
	event.ObjsSetRot(0, 0.0, 1.77, 0.0)
	event.ObjsSetMotion(0, "勝利のポーズ", 4)
	event.CharaActive(1, 9)
	event.ObjsSetPos(1, -167.59, 50.0, 2.86)
	event.ObjsSetRot(1, 0.0, 1.77, 0.0)
	event.ObjsSetMotion(1, "勝利のポーズ", 4)
	event.SetPakuAnim(0, "わらい口パク")
	helper_4116e6bb(1080010)
	event.ResetPakuAnim()
	event.SndSeStop(se_id, 0)
end

return helper_3bce1a2c
