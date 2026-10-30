--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_aca6764d()
	local time: f32 = 0
	vm.section(function()
		event.SetFlag(540, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetProjection(300.0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		vm.wait(1)
		event.ChangeDir("event/e500/e540/")
		event.EohSyncObj_2(0, "p03_s55")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ChangeDir("")
		time = event.GetTime() or time
		event.SetTime(24.0)
		event.SetTimeStepEnable(0)
		event.CmrsInit()
		event.CmrsSetPos(-403.87, 5081.46, 8018.1)
		event.CmrsSetRef(-207.83, 4340.06, 7830.0)
		event.InitDramaScene()
		event.SetFadeIn(0)
		wait_frames(60)
		wait_frames(10)
		event.SetFadeOut(0)
	end)
	event.CancelDramaScene()
	event.SetProjection(524.9)
	event.EohSetShow(0, 1)
	event.SetTime(time)
	event.SetTimeStepEnable(1)
	event.CharaActive(0)
end

return helper_aca6764d
