--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_467e9642(arg0: s32, se_id: s32)
	event.CmrsSetPos(-98.46, 29.02, -221.77)
	event.CmrsSetRef(-133.84, 25.44, -219.86)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -143.53, -12.49, -220.28)
	event.ObjsSetRot(0, 0.0, 1.61, 0.0)
	event.ObjsSetPos(2, -79.25, -13.53, -223.34)
	event.ObjsSetRot(2, 0.0, -1.56, 0.0)
	event.ObjsSetPos(3, -143.53, -12.49, -220.28)
	event.ObjsSetRot(3, 0.0, 1.61, 0.0)
	event.ObjsResetMotion(0)
	event.ObjsResetMotion(3)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4, -1.0, 1)
	event.ObjsSetMotion(3, "立ち（スティーブ）", 4)
	event.SetFadeIn(30)
	wait_frames(30)
	wait_frames(45)
	event.SndSePlay(se_id, 6)
	event.SndSePlay(se_id, 8)
	event.EohSetFrameStatus(3, "light", arg0)
	wait_frames(45)
end

return helper_467e9642
