--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_11a8d6f3()
	event.Initialize()
	event.CmrsInit()
	event.CmrsSetPos(118.52, 56.61, 357.81)
	event.CmrsSetRef(114.8, 23.48, 466.86)
	event.SetCharaPos(0, 47.34, -13.91, 606.83)
	event.SetCharaRot(0, 0.0, 2.82, 0.0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSetFootSoundId(0, 16)
	event.SetFadeIn(30)
	event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
	event.ObjsMove(0, 112.99, 3.46, 468.16, 60, 1)
	wait_frames(60)
	event.EohSetFootSoundId(0, 0)
end

return helper_11a8d6f3
