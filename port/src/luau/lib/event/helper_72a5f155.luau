--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_72a5f155()
	event.Initialize()
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
	event.AssignStack(5)
	event.ClearStack(5)
	event.CharaActive(0, 0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -215.0, 12.66, 60.0)
	event.ObjsSetRot(0, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(0, "走り")
	event.ObjsTexAnime(0, 0)
	event.EohSyncObj_2(1, "p01_train01")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetPos(1, 0.0, -24.0, -1800.0)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.SetTime(7.0)
	event.SetTimeStepEnable(1)
	event.CmrsInit()
	event.CmrsSetPos(-746.57, 16.36, 156.44)
	event.CmrsSetRef(-199.21, 142.65, 471.29)
	wait_frames(30)
	event.CmrsMove(-701.67, 16.36, 428.3, -154.32, 142.65, 743.14, 400)
	event.ObjsMove(0, -215.0, 12.66, 1700.0, 460)
	event.ObjsMove(1, 0.0, -24.0, 5000.0, 260)
	wait_camera()
	helper_c956b4a2(64)
end

return helper_72a5f155
