--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_ecd07d2a()
	event.Initialize()
	event.SetFadeOut(0)
	event.CmrsInit()
	event.CmrsSetPos(-971.07, 66.21, -121.97)
	event.CmrsSetRef(-826.79, 21.3, 58.4)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 1)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -949.3, 0.0, 34.7)
	event.ObjsSetRot(0, 0.0, 1.36, 0.0)
	event.ObjsSetMotion(0, "走り", 4)
	event.ObjsMove(0, -806.69, 0.0, 85.01, 60)
	event.CmrsFadeInit()
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_frames(60)
	event.ObjsSetMotion(0, "立ち", 4)
	event.ResetCamera(0)
end

return helper_ecd07d2a
