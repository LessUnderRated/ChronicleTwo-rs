--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_918c322c()
	local var0: s32 = 0
	local flag: s32 = 0
	local var2: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_019.sound.json") or var0
	flag = event.GetFlag(372) or flag
	event.CharaActive(0, 24)
	if flag == 0 then
		event.CharaActive(0, 25)
		event.CharaActive(0, 26)
	end
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.CharaActive(0, 0)
	event.EohSyncObj_2(1, "p01_train01")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.EohSyncObj_3(2, "p01_train01", "s3601_12-m")
	event.ObjsSyncObj(2, 2)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(3, "p01_train01", "s3601_14-m7")
	event.ObjsSyncObj(3, 3)
	event.ObjsSetRot(3, 0.0, 0.0, 0.0)
	event.ObjsSetPos(1, 0.0, 0.0, 200.0)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsMove2(1, 0.0, 0.0, 400.0, 40, 2, 1.0)
	event.CmrsInit()
	event.CmrsSetPos(-266.11, 272.22, 848.56)
	event.CmrsSetRef(124.54, -133.73, -212.03)
	event.SetFadeIn(30)
	event.SndSePlay(var0, 0)
	wait_objects(1)
	wait_frames(10)
	event.SetCrossfade(30)
	event.CmrsSetPos(-211.1, 66.53, -316.91)
	event.CmrsSetRef(-87.12, 61.79, -127.67)
	event.EohSetPos(1, 0.0, 0.0, 400.0)
	event.CharaActive(0)
	event.ObjsSetPos(0, -41.0, 36.0, -154.0)
	event.ObjsSetRot(0, 0.0, -1.57, 0.0)
	event.ObjsRotation(2, 0.0, 0.0, -1.5707964, 30)
	event.ObjsRotation(3, 0.0, 0.0, -1.5707964, 30)
	var2 = event.GetSndId(2) or var2
	event.SndSePlay(var2, 92)
	wait_frames(15)
	event.ObjsMove(0, -130.0, 36.0, -154.0, 30)
	event.ObjsSetMotion(0, "走り", 4)
	event.EohSetFootSoundId(0, 6)
	wait_objects(0)
	event.EohSetFootSoundId(0, 0)
	event.ObjsSetMotion(0, "立ち")
	wait_frames(10)
	event.SetFadeIn(1)
	event.EohSetPos(1, 0.0, 0.0, 400.0)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.CharaActive(1, 24)
	if flag == 0 then
		event.CharaActive(1, 25)
		event.CharaActive(1, 26)
	end
	event.CharaActive(0)
	event.SetCharaPos(0, -130.0, 36.0, -154.0)
	event.SetCharaRot(0, 0.0, -1.57, 0.0)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.SetCameraPos(-79.74, 70.2, -154.0)
	event.SetCameraRef(-130.0, 66.0, -154.0)
	event.SetFadeIn(15)
end

return helper_918c322c
