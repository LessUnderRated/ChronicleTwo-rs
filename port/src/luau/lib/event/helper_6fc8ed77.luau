--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_6fc8ed77()
	event.Initialize()
	event.CmrsSetPos(-625.66, 104.24, -868.06)
	event.CmrsSetRef(-903.96, 23.48, -831.72)
	event.CharaActive(1, 0)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 1)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -1023.6, 0.0, -838.96)
	event.ObjsSetRot(0, 0.0, 1.58, 0.0)
	event.SetFadeIn(30)
	event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
	event.ObjsMove(0, -778.4, 0.0, -836.7, 60)
	event.CmrsMove2(-625.66, 104.24, -868.06, -778.4, 20.0, -836.7, 48, 2, 0.4)
	wait_frames(60)
	event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
	event.ResetCamera(0)
end

return helper_6fc8ed77
