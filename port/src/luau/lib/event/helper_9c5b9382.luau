--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_9c5b9382()
	event.Initialize()
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 16)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, 2123.53, 0.0, -172.9)
	event.ObjsSetRot(0, 0.0, -1.54, 0.0)
	event.CmrsInit()
	event.CmrsSetPos(2113.85, 58.0, -172.0)
	event.CmrsSetRef(1961.18, 30.0, -219.86)
	event.ObjsSetPos(0, 2084.3, 0.0, -181.26)
	event.ObjsSetRot(0, 0.0, -1.87, 0.0)
	event.ObjsMove(0, 1961.18, 0.0, -219.86, 40)
	event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
	event.ObjsMotionDelay(0, 40)
	event.ObjsSetMotion(0, "立ち")
	event.SetFadeIn(15)
	wait_frames(50)
	event.EohSetFootSoundId(0, 0)
	event.ResetCamera(0)
end

return helper_9c5b9382
