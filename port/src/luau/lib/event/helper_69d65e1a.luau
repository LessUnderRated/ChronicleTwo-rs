--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_69d65e1a()
	local stage_id: s32 = 0
	local var1: s32 = 0
	local argc: s32 = 0
	stage_id = event.DngGetStageId() or stage_id
	var1 = event.DngGetFloorId() or var1
	argc = event.GetNextFloor(var1, 0) or argc
	event.DngSetFloorId(argc)
	event.SetFloorInfo(stage_id, var1, 5, 2)
	event.SetFloorInfo(stage_id, argc, 5, 1)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.SphidaInit()
	event.DngPause(8192, 0)
	event.ActchrSetDefMotion(0)
	event.SetBitCtrl(1, 0)
	event.SetCharaChangeMask(0, 1)
	event.SetCharaChangeMask(2, 1)
	event.SetCharaChangeMask(1, 1)
	event.SetCharaChangeMask(3, 1)
	event.StopBgm(0)
	event.StopEnvBgm()
	event.SndStopSrc()
	wait_frames(6)
	event.LoadBgm(17)
	event.LoadSound(3601)
	event.PlayBgm(0)
	event.LoadScript("d03/d03.stb", 1000)
end

return helper_69d65e1a
