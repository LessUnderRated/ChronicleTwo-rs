--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_0c5f2e37()
	event.Initialize()
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 16)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
	event.ObjsInitPas(0)
	event.ObjsSetPasFrm(0, 70)
	event.ObjsAddPas(0, 2730.28, 163.23, 630.94)
	event.ObjsAddPas(0, 2674.4, 138.96, 765.84)
	event.ObjsAddPas(0, 2616.58, 125.16, 846.91)
	event.ObjsStartPas(0)
	event.CmrsInit()
	event.CmrsSetPos(2590.33, 108.76, 1218.81)
	event.CmrsSetRef(2591.54, 130.16, 1030.59)
	event.SetFadeIn(15)
	wait_frames(40)
	event.SetFadeOut(15)
	wait_frames(15)
	event.EohSetFootSoundId(0, 0)
	helper_9dafbc83(vm.f32(2358.3), 0.0, vm.f32(1357.7), vm.f32(0.06))
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

return helper_0c5f2e37
