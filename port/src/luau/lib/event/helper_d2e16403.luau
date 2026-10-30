--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_d2e16403()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	event.ActchrSetDefMotion(0, 4)
	event.SetFadeOut(30)
	wait_frames(30)
	event.DngPause(1, 1)
	event.DelMonster(-1)
	wait_frames(30)
	event.Initialize()
	var0 = event.SndLoadSound_3(5, "snd2/mon/en_360.sound.json") or var0
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetStatusbarShow(0, 1.0)
	event.LoadChara(5, "dungeon/monster/b07a.gltf", "b07a", 8)
	event.CharaActive(1, 8)
	event.EohSyncChara(0, 8)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.SetFadeIn(15)
	event.SetCameraPos(-50.62, 42.66, 812.75)
	event.SetCameraRef(-50.82, 71.75, 656.03)
	event.CharaActive(0, 0)
	event.SndSePlay(var0, 24)
	event.ObjsSetPos(0, -50.62, 4.34, 553.77)
	event.ObjsSetRot(0, 0.0, 0.02, 0.0)
	event.ObjsSetMotion(0, "死に", 6)
	event.ObjsMotionWait(0)
	wait_objects(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no ~= 2 then
		event.SetCameraPos(-21.21, 14.5, 728.16)
		event.SetCameraRef(-33.94, 17.9, 751.25)
	else
		event.SetCameraPos(8.06, 23.77, 675.07)
		event.SetCameraRef(-39.51, 29.49, 761.36)
	end
	event.CharaActive(1, 0)
	event.SetCharaPos(0, -40.07, 1.76, 766.47)
	event.SetCharaRot(0, 0.0, -3.12, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.DeleteChara(8)
	event.Finish()
end

return helper_d2e16403
