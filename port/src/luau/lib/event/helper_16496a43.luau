--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0e75aa9e = require("@lib/event/helper_0e75aa9e")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_a518823a = require("@lib/event/helper_a518823a")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_16496a43()
	local var0: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	vm.section(function()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(1213)
		event.LoadBgm(103)
		event.PlayBgm(0)
		event.AssignStack(4)
		event.ClearStack(4)
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadMes(0, 5, "event/opening/p1/op1ch8_1.txt")
		var0 = event.SndLoadSound_2(1213) or var0
		event.LoadMotion(5, "event/opening/p1/p1_mints4.gltf", "info", 0)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 3)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 0.0, -540.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.EohSyncChara(2, 1)
		event.EohSetShow(2, 0)
		event.EohSyncChara(3, 2)
		event.EohSetShow(3, 0)
		event.LoadChara(5, "event/opening/p1/p1_people.gltf", "info", 8)
		event.CharaActive(8)
		event.SetCharaPos(8, 0.0, 0.0, -405.0)
		event.LoadChara(5, "event/opening/p1/p1_onna1.gltf", "info", 9)
		event.CharaActive(9)
		event.SetCharaPos(9, 18.39, 0.0, -421.29)
		event.LoadChara(5, "event/opening/p1/p1_otoko1.gltf", "info", 10)
		event.CharaActive(10)
		event.SetCharaPos(10, 27.92, 0.0, -433.74)
		event.LoadChara(5, "event/opening/p1/p1_otoko2.gltf", "info", 11)
		event.CharaActive(11)
		event.SetCharaPos(11, -25.29, 0.0, -426.67)
		event.LoadChara(5, "event/opening/p1/p2_macho.gltf", "info", 12)
		event.CharaActive(12)
		event.EohSyncChara(5, 12)
		event.EohSetFrameShow(5, "sphere1", 0)
		event.EohSetFrameShow(5, "sphere1_1", 0)
		event.EohSetFrameShow(5, "sphere1_2", 0)
		event.EohSetFrameShow(5, "sphere1_3", 0)
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 5)
		event.ObjsSetPos(5, 0.0, 11.23, 0.0)
		event.ObjsSetRot(5, 0.0, 3.14, 0.0)
		event.EohSetShadow(5, 0)
		event.LoadChara(5, "event/opening/p1/p2_pierrot.gltf", "info", 13)
		event.CharaActive(13)
		event.SetMotion(13, "回転1", 4)
		event.SetReference(12, "sphere1", 13)
		event.CopyChara(5, 13, 14)
		event.CharaActive(14)
		event.SetMotion(14, "回転1", 4)
		event.SetReference(12, "sphere1_1", 14)
		event.CopyChara(5, 13, 15)
		event.CharaActive(15)
		event.SetMotion(15, "回転1", 4)
		event.SetReference(12, "sphere1_2", 15)
		event.CopyChara(5, 13, 16)
		event.CharaActive(16)
		event.SetMotion(16, "回転1", 4)
		event.SetReference(12, "sphere1_3", 16)
		event.ObjsSetMotion(0, "歩き", 4)
		event.ObjsMove(0, 0.0, 0.0, -440.0, 120)
		event.ObjsSetMotion(5, "投げ4回", 4)
		event.EohSyncObj_2(31, "p01_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p02_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p04_i03h02a-1")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p04_i03h02a-2")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p04_i03h02a-3")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p04_i03h02a-4")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p04_i03h02a-5")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p04_i03h02a-6")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p04_i03h02a-7")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p05_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p06_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p07_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p08_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p11_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p13_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p14_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p15_i03h02a")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p10_i03h02a-1")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p10_i03h02a-2")
		event.EohSetShow(31, 0)
		event.EohSyncObj_2(31, "p10_i03h02a-3")
		event.EohSetShow(31, 0)
		event.SetActiveLight(1)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(0.0, 18.72, -581.27)
		event.CmrsSetRef(0.0, -0.38, -526.54)
		event.CmrsMove(0.0, 21.63, -581.27, 0.0, 38.43, -476.49, 120)
		event.CmrsFadeInit()
		event.CmrsFadeIn(60)
		at = 1
		wait_camera()
		at = 2
		wait_objects(0)
		event.ObjsSetMotion(0, "旧・立ち")
		var1 = 0
		at = 3
		wait_frames(30 - var1)
		event.CmrsSetPos(-17.16, 17.61, -542.92)
		event.CmrsSetRef(2.33, 20.36, -409.98)
		at = 4
		wait_frames(30)
		event.ObjsSetMotion(0, "見えないよ", 2)
		event.ObjsNextMotion(0, "見えないよL", 4)
		event.ObjsSeDelay(0, 10)
		event.ObjsSePlay(0, var0, 4)
		event.ObjsSeDelay(0, 110)
		event.ObjsSePlay(0, var0, 5)
		at = 5
		wait_frames(200)
		event.ObjsSePlay(0, var0, 6)
		at = 6
		helper_0e75aa9e(10710, -1, 10)
		at = 7
		wait_objects(0)
		event.ObjsSetMotion(0, "見えないよ戻り", 2)
		event.ObjsNextMotion(0, "旧・立ち", 4)
		at = 8
		wait_objects(0)
		at = 9
		wait_frames(10)
		event.ObjsSetMotion(0, "キョロキョロ", 6)
		event.ObjsNextMotion(0, "旧・立ち", 4)
		at = 10
		wait_objects(0)
		at = 11
		wait_frames(10)
		event.CmrsSetPos(-54.54, 71.63, -344.23)
		event.CmrsSetRef(5.47, 6.56, -479.98)
		event.ObjsSetMotion(0, "走り")
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 80)
		event.ObjsAddPas(0, 0.0, 0.0, -440.0)
		event.ObjsAddPas(0, 25.41, 0.0, -505.85)
		event.ObjsAddPas(0, 59.73, 0.0, -569.39)
		event.ObjsAddPas(0, 107.09, 0.0, -622.8)
		event.ObjsAddPas(0, 163.05, 0.0, -656.61)
		event.ObjsAddPas(0, 223.93, 0.0, -656.14)
		event.ObjsStartPas(0)
		at = 12
		wait_objects(0)
		event.SetActiveLight(0)
		at = 13
		vm.wait(13)
		event.CmrsSetPos(385.44, 20.74, -469.02)
		event.CmrsSetRef(478.52, 20.25, -405.79)
		event.ObjsSetPos(0, 431.02, 0.0, -509.53)
		event.ObjsSetRot(0, 0.0, 0.36, 0.0)
		event.ObjsMove(0, 457.0, 0.0, -428.0, 40)
		event.ObjsRotDelay(0, 35)
		event.ObjsRotation(0, 0.0, 0.72, 0.0, 5)
		at = 14
		wait_objects(0)
		event.ObjsSetMotion(0, "旧・立ち")
		at = 15
		wait_frames(10)
		event.ObjsSetMotion(0, "はしご登り", 2)
		at = 16
		wait_frames(40)
		event.EohSetFootSoundId(0, 9)
		event.CmrsMove(385.44, 20.74, -469.02, 478.52, 129.61, -405.79, 180)
		event.ObjsMotionWait(0)
		at = 17
		wait_objects(0)
		at = 18
		wait_camera()
		event.CmrsSetPos(499.02, 167.79, -314.86)
		event.CmrsSetRef(424.99, 140.47, -326.88)
		event.CharaActive(0, 8)
		event.CharaActive(0, 9)
		event.CharaActive(0, 10)
		event.CharaActive(0, 11)
		event.CharaActive(0, 9)
		event.CharaActive(0, 10)
		event.CharaActive(0, 11)
		event.ObjsSetPos(0, 441.37, 133.45, -339.86)
		event.ObjsSetRot(0, 0.0, 0.41, 0.0)
		event.ObjsMove(0, 459.04, 133.45, -308.23, 40)
		event.EohSetShadow(5, 1)
		event.EohSetFootSoundId(0, 3)
		event.ObjsSetMotion(0, "右向き歩き", 6)
		event.ObjsNormalDrive(0)
		event.ObjsNextMotion(0, "右を向く", 6)
		event.ObjsNextMotion(0, "右を向くL", 4)
		event.ObjsResetDaPosition(0)
		event.ObjsSeDelay(0, 40)
		event.ObjsSePlay(0, var0, 9)
		event.CmrsMove2(499.02, 167.79, -314.86, 407.46, 142.42, -261.94, 60, 2, 0.6)
		at = 19
		helper_1584c528(10720, 60)
		at = 20
		wait_objects(0)
		at = 21
		wait_camera()
		at = 22
		wait_frames(30)
		event.CmrsFadeInit()
		event.CmrsFadeOut(60)
		at = 23
		wait_camera()
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_238b5abc(0)
		end
		if at <= 2 then
			var1 = 0
			wait_frames_skipping(30 - var1)
		end
		if at <= 3 then
			wait_frames_skipping(30)
		end
		if at <= 4 then
			wait_frames_skipping(200)
		end
		if at <= 5 then
			helper_a518823a(10710, -1, 10)
		end
		if at <= 6 then
			helper_238b5abc(0)
		end
		if at <= 7 then
			helper_238b5abc(0)
		end
		if at <= 8 then
			wait_frames_skipping(10)
		end
		if at <= 9 then
			helper_238b5abc(0)
		end
		if at <= 10 then
			wait_frames_skipping(10)
		end
		if at <= 11 then
			helper_238b5abc(0)
		end
		if at <= 13 then
			helper_238b5abc(0)
		end
		if at <= 14 then
			wait_frames_skipping(10)
		end
		if at <= 15 then
			wait_frames_skipping(40)
		end
		if at <= 16 then
			helper_238b5abc(0)
		end
		if at <= 17 then
			helper_344d6cd8()
		end
		if at <= 18 then
			helper_52aadc70(10720, 60)
		end
		if at <= 19 then
			helper_238b5abc(0)
		end
		if at <= 20 then
			helper_344d6cd8()
		end
		if at <= 21 then
			wait_frames_skipping(30)
		end
		if at <= 22 then
			helper_344d6cd8()
		end
		return true
	end)
	at = 24
	vm.entry(24)
	event.CancelDramaScene()
	event.LoadMes(0, -1)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.EohSyncObj_2(31, "p01_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p02_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p04_i03h02a-1")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p04_i03h02a-2")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p04_i03h02a-3")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p04_i03h02a-4")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p04_i03h02a-5")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p04_i03h02a-6")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p04_i03h02a-7")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p05_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p06_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p07_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p08_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p11_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p13_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p14_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p15_i03h02a")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p10_i03h02a-1")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p10_i03h02a-2")
	event.EohSetShow(31, 1)
	event.EohSyncObj_2(31, "p10_i03h02a-3")
	event.EohSetShow(31, 1)
	event.SetActiveLight(0)
	event.CharaActive(0)
end

return helper_16496a43
