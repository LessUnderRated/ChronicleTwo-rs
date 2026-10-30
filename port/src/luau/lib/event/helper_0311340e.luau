--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_0311340e()
	event.Initialize()
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 1)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.CmrsSetPos(-1091.22, 50.0, -610.47)
	event.CmrsSetRef(-951.89, 30.0, -531.81)
	event.ObjsSetPos(0, -996.5, 0.0, -556.99)
	event.ObjsSetRot(0, 0.0, 1.06, 0.0)
	event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
	event.ObjsMove(0, -951.89, 0.0, -531.81, 45)
	event.SetFadeIn(30)
	wait_frames(30)
	event.EohSetFootSoundId(0, 0)
end

return helper_0311340e
