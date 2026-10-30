--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_f10d721b()
	local var0: s32 = 0
	local flag: s32 = 0
	local var2: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_019.sound.json") or var0
	flag = event.GetFlag(448) or flag
	event.CharaActive(0, 8)
	if flag == 0 then
		event.CharaActive(0, 9)
		event.CharaActive(0, 10)
	end
	event.CharaActive(0, 0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSyncObj_2(1, "p01_train01")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.EohSyncObj_2(4, "p01_shadow")
	event.EohSetShow(4, 0)
	event.EohSyncObj_3(2, "p01_train01", "s3601_12-m1")
	event.ObjsSyncObj(2, 2)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(3, "p01_train01", "s3601_14-m1")
	event.ObjsSyncObj(3, 3)
	event.ObjsSetRot(3, 0.0, 0.0, 0.0)
	event.ObjsSetPos(1, -1512.1, 0.0, 0.0)
	event.ObjsSetRot(1, 0.0, 1.57, 0.0)
	event.ObjsMove2(1, -912.1, 0.0, 0.0, 40, 2, 1.0)
	event.CmrsInit()
	event.CmrsSetPos(-363.94, 121.88, -75.09)
	event.CmrsSetRef(-643.14, 118.87, -58.01)
	event.SetFadeIn(30)
	event.SndSePlay(var0, 0)
	wait_objects(1)
	wait_frames(10)
	event.SetCrossfade(30)
	event.CmrsSetPos(-1664.28, 105.75, -222.05)
	event.CmrsSetRef(-1452.28, 75.37, -85.42)
	event.EohSetPos(1, -912.1, 0.0, 0.0)
	event.CharaActive(0)
	event.ObjsSetPos(0, -1460.3, 33.0, -45.39)
	event.ObjsSetRot(0, 0.0, 3.14, 0.0)
	event.ObjsRotation(2, 0.0, 0.0, 1.5707964, 30)
	event.ObjsRotation(3, 0.0, 0.0, 1.5707964, 30)
	var2 = event.GetSndId(2) or var2
	event.SndSePlay(var2, 92)
	wait_frames(15)
	event.ObjsMove(0, -1460.3, 29.22, -123.59, 30)
	event.ObjsSetMotion(0, "走り", 4)
	event.EohSetFootSoundId(0, 3)
	wait_objects(0)
	event.EohSetFootSoundId(0, 0)
	event.ObjsSetMotion(0, "立ち")
	wait_frames(10)
	event.SetFadeIn(1)
	event.EohSetPos(1, -912.1, 0.0, 0.0)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetShow(4, 1)
	event.CharaActive(1, 8)
	if flag == 0 then
		event.CharaActive(1, 9)
		event.CharaActive(1, 10)
	end
	event.CharaActive(0)
	event.SetCharaPos(0, -1460.3, 29.22, -123.59)
	event.SetCharaRot(0, 0.0, -1.57, 0.0)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(15)
end

return helper_f10d721b
