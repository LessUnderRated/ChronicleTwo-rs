--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_43769d3d()
	event.Initialize()
	event.CmrsInit()
	event.CmrsSetPos(-1356.86, 83.9, -1168.92)
	event.CmrsSetRef(-1484.75, 27.8, -1316.45)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 16)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -1627.77, 0.0, -1432.14)
	event.ObjsSetRot(0, 0.0, 1.12, 0.0)
	event.ObjsSetMotion(0, "走り", 4)
	event.ObjsInitPas(0)
	event.ObjsSetPasFrm(0, 60)
	event.ObjsAddPas(0, -1627.77, 0.0, -1432.14)
	event.ObjsAddPas(0, -1529.23, 0.0, -1370.02)
	event.ObjsAddPas(0, -1477.71, 0.0, -1329.77)
	event.ObjsStartPas(0)
	event.CmrsFadeInit()
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_frames(60)
	event.EohSetFootSoundId(0, 0)
	event.ResetCamera(0)
end

return helper_43769d3d
