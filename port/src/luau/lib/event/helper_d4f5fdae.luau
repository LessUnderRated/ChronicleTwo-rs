--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_d4f5fdae()
	local var0: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_040.sound.json") or var0
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetCameraPos(133.95, 349.85, 995.49)
	event.SetCameraRef(10.87, 287.26, 1174.06)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 3)
	event.CharaActive(1, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, 3.0, 263.17, 1196.78)
	event.ObjsSetRot(0, 0.0, -3.08, 0.0)
	event.ObjsSetMotion(0, "立ち", 4)
	event.EohSyncObj_3(10, "p08_s06", "s06_08-m1")
	event.EohSetShow(10, 1)
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.ObjsSetPos(10, 2.90684, 312.375, 1188.04)
	event.ObjsMove(10, 2.90684, 412.375, 1188.04, 30)
	event.SndSePlay(var0, 0)
	event.SetFadeIn(30)
	wait_frames(15)
	event.ObjsSetMotion(0, "走り")
	event.ObjsMotionDelay(0, 30)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsMove(0, 3.0, 263.17, 1131.27, 30)
	wait_objects(0)
	wait_objects(10)
	event.SndSePlay(var0, 1)
	event.ObjsJump(10, 2.90684, 312.375, 1188.04, -0.2, 10)
	event.ObjsJump(10, 2.90684, 312.375, 1188.04, -0.2, 8)
	event.ObjsJump(10, 2.90684, 312.375, 1188.04, -0.2, 5)
	wait_frames(40)
	event.SetStatusbarShow(1, 0.033333335)
	event.SetCharaPos(0, 3.0, 263.17, 1131.27)
	event.EohSetPos(10, 2.90684, 312.375, 1188.04)
	event.SetCameraRef(3.0, 293.17, 1131.27)
	event.SetCameraPos(3.0, 303.17, 1011.27)
	event.ResetCamera(0)
	event.Finish()
end

return helper_d4f5fdae
