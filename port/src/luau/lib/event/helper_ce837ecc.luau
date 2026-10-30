--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_ce837ecc()
	event.Initialize()
	vm.wait(1)
	event.SetFadeIn(15)
	event.CmrsSetPos(-564.69, 162.76, -362.47)
	event.CmrsSetRef(-556.95, 162.37, -243.12)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 2)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -558.43, 132.37, -264.95)
	event.ObjsSetRot(0, 0.0, 0.13, 0.0)
	event.ObjsSetMotion(0, "歩き", 4)
	event.ObjsMove(0, -556.95, 132.37, -243.12, 30)
	wait_frames(30)
	event.ResetCamera(0)
end

return helper_ce837ecc
