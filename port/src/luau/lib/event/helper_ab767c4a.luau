--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_ab767c4a()
	local flag: s32 = 0
	local flag_2: s32 = 0
	event.Initialize()
	flag = event.GetFlag(208) or flag
	flag_2 = event.GetFlag(207) or flag_2
	if not (flag == 0 and flag_2 == 1) then
		event.CmrsInit()
		event.CmrsSetPos(324.12, 34.59, 830.75)
		event.CmrsSetRef(362.46, 42.77, 960.05)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 1)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 404.68, 0.0, 1124.89)
		event.ObjsSetRot(0, 0.0, -2.84, 0.0)
		event.CmrsMove2(324.12, 34.59, 830.75, 377.85, 23.14, 1003.73, 48, 2, 0.25)
		event.ObjsSetMotion(0, "走り", 4)
		event.ObjsMove(0, 361.74, 0.0, 957.26, 60)
		event.CmrsFadeInit()
		event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
		wait_frames(60)
		event.ResetCamera(0)
	end
end

return helper_ab767c4a
