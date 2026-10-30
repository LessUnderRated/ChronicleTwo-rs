--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0226fccb = require("@lib/event/helper_0226fccb")
local helper_042a5b29 = require("@lib/event/helper_042a5b29")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_6cf80642 = require("@lib/event/helper_6cf80642")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_b76e3b36 = require("@lib/event/helper_b76e3b36")
local helper_d552d8eb = require("@lib/event/helper_d552d8eb")
local helper_f72a4299 = require("@lib/event/helper_f72a4299")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_1b6043e0()
	local flag: s32 = 0
	local time: f32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetFlag(30, 0)
		at = 2
		helper_b76e3b36()
		helper_f72a4299()
		event.AssignStack(5)
		event.ClearStack(5)
		var2 = event.SndLoadSound_3(8, "snd2/sp/sp_018.sound.json") or var2
		event.SndSePlay(var2, 0)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 6)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 0.0, 0.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.CharaActive(0, 0)
		time = event.GetTime() or time
		if time > 0.0 and time < 5.5 then
			event.EohSetShadow(0, 0)
		end
		event.EohSyncObj_2(1, "p01_train01")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, 1.3, 8.0, 500.0)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.EohSyncObj_2(9, "p01_shadow-0")
		event.EohSetShow(9, 0)
		event.EohSyncObj_3(2, "p01_train01", "train08-m6")
		event.ObjsSyncObj(2, 2)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.EohSyncObj_3(3, "p01_train01", "train08-m7")
		event.ObjsSyncObj(3, 3)
		event.ObjsSetRot(3, 0.0, 0.0, 0.0)
		event.EohSyncObj_3(4, "p01_train01", "train10-m18")
		event.ObjsSyncObj(4, 4)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.EohSyncObj_3(5, "p01_train01", "train10-m19")
		event.ObjsSyncObj(5, 5)
		event.ObjsSetRot(5, 0.0, 0.0, 0.0)
		event.EohSyncObj_3(6, "p01_train01", "train10-m6")
		event.ObjsSyncObj(6, 6)
		event.EohSyncObj_3(7, "p01_train01", "train10-m7")
		event.ObjsSyncObj(7, 7)
		event.EsmInitialize(5)
		event.EsmLoadBase("列車煙")
		event.EsmInitFix(5)
		event.EohSyncObj_2(8, "p01_train01")
		event.EsmCreate("列車煙")
		event.EsmSetValue(0, 8)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.CmrsInit()
		event.CmrsSetPos(-185.19, 68.62, 1049.53)
		event.CmrsSetRef(140.3, 63.52, 109.43)
		event.SetFadeIn(30)
		event.InitDramaScene()
		event.ObjsMove2(1, 1.3, 8.0, 700.0, 40, 2, 1.0)
		at = 3
		wait_objects(1)
		at = 4
		wait_frames(10)
		event.SetCrossfade(30)
		event.EohSetPos(1, 1.3, 8.0, 700.0)
		helper_d552d8eb()
		event.SetFlag(30, 1)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CmrsSetPos(-254.85, 60.24, -455.84)
		event.CmrsSetRef(-89.19, 67.53, -382.63)
		event.CharaActive(1, 0)
		event.ObjsSetPos(0, -40.0, 45.6, -366.0)
		event.ObjsSetRot(0, 0.0, -1.56, 0.0)
		at = 5
		wait_frames(15)
		var3 = event.GetSndId(2) or var3
		event.SndSePlay(var3, 106)
		event.ObjsRotation(2, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(3, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(4, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(5, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(6, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(7, 0.0, 1.5, 0.0, 30)
		at = 6
		wait_frames(15)
		event.ObjsSetMotion(0, "走り", 0, -1.0, 1)
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, -68.89, 43.64, -366.0, 10)
		event.ObjsMove(0, -131.89, 0.0, -366.0, 30)
		at = 7
		wait_frames(40)
		event.SetFadeOut(10)
		at = 8
		wait_frames(10)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_6cf80642()
		end
		if at <= 2 then
			helper_1ef0d4b2()
			helper_238b5abc(1)
		end
		if at <= 3 then
			wait_frames_skipping(10)
		end
		if at <= 4 then
			helper_042a5b29()
			wait_frames_skipping(15)
		end
		if at <= 5 then
			wait_frames_skipping(15)
		end
		if at <= 6 then
			wait_frames_skipping(40)
		end
		if at <= 7 then
			wait_frames_skipping(10)
		end
		return true
	end)
	at = 9
	vm.entry(9)
	event.CancelDramaScene()
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	event.CmrsInit()
	event.SndSeStop(var2, 0)
	event.EsmClear()
	event.EohSetPos(1, 1.3, 8.0, 700.0)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.EohSetRot(6, 0.0, 0.0, 0.0)
	event.EohSetRot(7, 0.0, 0.0, 0.0)
	event.EohSetShow(9, 1)
	event.CharaActive(1, 0)
	helper_9dafbc83(-130.0, 0.0, -366.0, vm.f32(-1.57))
	event.SetCameraRef(-130.0, 30.0, -366.0)
	event.SetCameraPos(-270.0, 40.0, -366.0)
	flag = event.GetFlag(30) or flag
	if flag == 0 then
		helper_d552d8eb()
	end
	helper_0226fccb()
	event.SetFadeIn(15)
end

return helper_1b6043e0
