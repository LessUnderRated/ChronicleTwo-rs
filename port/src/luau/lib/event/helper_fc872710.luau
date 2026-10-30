--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local wait_camera = require("@lib/event/wait_camera")

--- Helper function.
local function helper_fc872710(se_id: s32)
	event.SndSePlay(se_id, 0)
	event.CmrsSetPos(39.97, 95.45, -42.29)
	event.CmrsSetRef(-401.26, 72.44, 58.46)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -167.59, 50.0, 2.86)
	event.ObjsSetRot(0, 0.0, 1.77, 0.0)
	event.ObjsSetMotion(0, "勝利のポーズ", 4)
	event.CharaActive(1, 9)
	event.ObjsSetPos(1, -167.59, 50.0, 2.86)
	event.ObjsSetRot(1, 0.0, 1.77, 0.0)
	event.ObjsSetMotion(1, "勝利のポーズ", 4)
	event.CharaActive(0, 10)
	event.CmrsMove2(-117.38, 95.45, -6.36, -401.26, 72.44, 58.46, 20, 2, 0.4)
	wait_camera()
end

return helper_fc872710
