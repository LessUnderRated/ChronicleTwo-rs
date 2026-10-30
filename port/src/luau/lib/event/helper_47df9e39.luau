--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_47df9e39()
	event.Initialize()
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 1)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, 2492.28, 5.66, 457.27)
	event.ObjsSetRot(0, 0.0, -2.76, 0.0)
	event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
	event.ObjsMove(0, 2466.56, 6.63, 395.9, 60)
	event.CmrsSetRef(2466.56, 36.63, 395.98)
	event.CmrsSetPos(2513.1, 56.63, 506.94)
	event.SetFadeIn(30)
	wait_frames(60)
	event.ObjsSetMotion(0, "立ち")
	wait_frames(2)
	event.EohSetFootSoundId(0, 0)
end

return helper_47df9e39
