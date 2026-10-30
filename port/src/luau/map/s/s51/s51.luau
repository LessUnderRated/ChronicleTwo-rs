--!strict
-- map/s/s51/s51.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_523109b8 = require("@lib/event/helper_523109b8")
local helper_53ffe901 = require("@lib/event/helper_53ffe901")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local helper_f616ba9e = require("@lib/event/helper_f616ba9e")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_ff10()
	local var0: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	vm.section(function()
		event.Initialize()
		event.SetProjection(524.9)
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		at = 1
		helper_888ab2a3(4)
		event.LoadBgm(194)
		event.LoadSound(800)
		var1 = event.SndLoadSound_2(800) or var1
		event.AtramiriaOnOff(1, 0, 0)
		event.CharaActive(0, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.ChangeDir("event/e00/e50/")
		event.LoadMes(0, 5, "e50.txt")
		event.LoadMotion(5, "e50_monica.gltf", "info", 0)
		event.CharaActive(0, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetStatus(1, 0, 256, 1)
		event.LoadChara(5, "e50_soldier.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.EohSyncChara(1, 11)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CopyChara(5, 11, 12)
		event.CharaActive(0, 12)
		event.EohSyncChara(2, 12)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.CopyChara(5, 11, 13)
		event.CharaActive(0, 13)
		event.EohSyncChara(3, 13)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.CopyChara(5, 11, 14)
		event.CharaActive(0, 14)
		event.EohSyncChara(4, 14)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.LoadChara(5, "e50_soldier_s.gltf", "info", 16)
		event.CharaActive(16)
		event.EohSyncChara(15, 16)
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 15)
		event.SetStatus(1, 16, 512, 1)
		event.CopyChara(5, 16, 17)
		event.CharaActive(17)
		event.EohSyncChara(16, 17)
		event.ObjsInit(8)
		event.ObjsSyncObj(8, 16)
		event.SetStatus(1, 17, 512, 1)
		event.LoadChara(5, "e50_glassware.gltf", "info", 15)
		event.SetStatus(1, 15, 64, 1)
		event.CharaActive(0, 15)
		event.ChangeDir("")
		event.LoadChara(5, "event/e00/e50/c02_base_e50.gltf", "info", 8)
		event.LoadEquip(5, 1, 4, "info", 8)
		event.LoadEquip(5, 1, 3, "info", 8)
		event.LoadMotion(5, "event/e00/e50/e50_monica.gltf", "info", 8)
		event.CharaActive(8)
		event.EohSyncChara(14, 8)
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 14)
		event.SetStatus(1, 8, 256, 1)
		event.SetStatus(1, 8, 512, 1)
		event.LoadEquip(5, 1, 0, "info", 0, 10)
		event.CharaActive(0, 10)
		event.EohSyncObj_3(5, "p01_s5102-0", "s510206-m0")
		event.EohSyncObj_2(7, "p11_s5102-0")
		event.EohSyncObj_2(6, "p07_s5102-0")
		event.EohSyncObj_3(8, "p08_s5102-0", "s510208-m0")
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 8)
		event.EohSyncChara(9, 1)
		event.EohSyncChara(10, 2)
		event.EohSyncObj_2(11, "p10_s5102-0")
		event.EohSyncObj_2(12, "p10_s5102-1")
		event.EohSyncObj_2(13, "p12_s5102-0")
		event.EohSyncObj_2(18, "p14_s5102-0")
		event.EohSyncObj_3(17, "p01_s5102-0", "s510213-m0")
		event.EohSetShow(9, 0)
		event.EohSetShow(10, 0)
		event.EohSetShow(8, 1)
		event.EohSetRot(8, 0.0, 0.0, 0.0)
		event.EohSetShow(5, 1)
		event.EohSetShow(7, 1)
		event.EohSetPos(7, 0.0, 0.0, 826.974)
		event.EohSetShow(6, 1)
		event.EohSetShow(13, 1)
		event.EohSetShow(18, 1)
		event.EohSetRot(11, 0.0, -0.2, 0.0)
		event.EohSetRot(12, 0.0, 0.2, 0.0)
		event.EohSetShow(17, 0)
		event.EohSetMotion(0, "走りノーマル", 4)
		event.EohSetFootSoundId(0, -1)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "半口")
		event.EohSetFootSoundId(0, 21)
		event.EohSetPos(14, -1200.0, -300.0, 260.0)
		event.EohSetRot(14, 0.0, 1.93, 0.0)
		event.EohSetScale(14, 1.2, 1.2, 1.2)
		event.EohSetMotion(14, "走り", 4)
		event.EohSetFootSoundId(14, 21)
		event.EohSetPos(15, -1280.0, -300.0, 310.0)
		event.EohSetRot(15, 0.0, 1.93, 0.0)
		event.EohSetScale(15, 1.2, 1.2, 1.2)
		event.EohSetMotion(15, "走り", 4)
		event.EohSetPos(16, -1290.0, -300.0, 300.0)
		event.EohSetRot(16, 0.0, 1.93, 0.0)
		event.EohSetScale(16, 1.2, 1.2, 1.2)
		event.EohSetMotion(16, "走り", 4)
		event.EohSetSoundId(1, var1)
		event.EohSetSoundId(2, -1)
		event.EohSetSoundId(3, -1)
		event.EohSetSoundId(4, -1)
		event.EohSetSoundId(15, var1)
		event.EohSetSoundId(16, -1)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(15.3, -241.0, 171.19)
		event.CmrsSetRef(0.41, -250.55, 204.26)
		event.CmrsMove2(15.53, -241.0, 153.53, 0.63, -250.55, 186.6, 100, 0, 1.0)
		event.ObjsMove(6, 100.0, -300.0, 210.0, 240)
		event.ObjsMove(7, 100.0, -300.0, 210.0, 260)
		event.ObjsMove(8, 100.0, -300.0, 200.0, 270)
		event.SetFadeIn(30)
		at = 2
		wait_camera()
		at = 3
		helper_888ab2a3(4)
		at = 4
		wait_objects(6)
		at = 5
		wait_objects(7)
		at = 6
		wait_objects(8)
		event.CharaActive(1, 0)
		event.CharaActive(0, 8)
		event.EohSetScale(15, 1.0, 1.0, 1.0)
		event.SetStatus(1, 16, 512, 0)
		event.EohSetScale(16, 1.0, 1.0, 1.0)
		event.SetStatus(1, 17, 512, 0)
		event.EohSetShow(13, 0)
		event.EohSetShow(18, 0)
		event.CmrsSetPos(-575.02, 45.19, 363.88)
		event.CmrsSetRef(-599.81, 35.7, 424.09)
		event.EohSetMotion(14, "立ち", 4)
		event.EohSetFootSoundId(14, -1)
		event.EohSetFootSoundId(0, 21)
		event.CharaActive(0, 16)
		event.CharaActive(0, 17)
		event.CharaActive(1, 11)
		event.CharaActive(1, 12)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 70)
		event.ObjsAddPas(0, -692.07, -0.36, 990.78)
		event.ObjsAddPas(0, -689.4, -0.36, 780.32)
		event.ObjsAddPas(0, -662.72, -0.36, 615.33)
		event.ObjsAddPas(0, -627.87, -0.36, 503.76)
		event.ObjsStartPas(0)
		event.ObjsSetMotion(1, "走り", 4)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 70)
		event.ObjsAddPas(1, -633.39, -0.17, 1210.41)
		event.ObjsAddPas(1, -698.31, -0.17, 1037.39)
		event.ObjsAddPas(1, -732.28, -0.17, 924.78)
		event.ObjsAddPas(1, -729.93, -0.17, 758.07)
		event.ObjsStartPas(1)
		event.ObjsSetMotion(2, "走り", 4)
		event.ObjsInitPas(2)
		event.ObjsSetPasFrm(2, 70)
		event.ObjsAddPas(2, -618.92, -0.17, 1090.21)
		event.ObjsAddPas(2, -655.87, -0.17, 965.4)
		event.ObjsAddPas(2, -667.3, -0.17, 891.14)
		event.ObjsAddPas(2, -667.67, -0.17, 710.72)
		event.ObjsAddPas(2, -666.43, -1.11, 671.43)
		event.ObjsStartPas(2)
		at = 7
		helper_888ab2a3(15)
		event.PlayBgm(0)
		event.StreamOpen3(1, 500003)
		at = 8
		helper_9cbdc640(1)
		at = 9
		wait_objects(0)
		event.CmrsSyncObj(0, 0.0, 23.0, -4.0, -0.6, -3.0, 36.0, "", 1)
		event.CharaActive(0, 11)
		event.CharaActive(0, 12)
		event.StreamPlay(1)
		event.ObjsSetMotion(0, "振り返り走り", 6)
		event.ObjsNextMotion(0, "走りノーマル", 4)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 50)
		event.ObjsAddPas(0, -692.07, -0.17, 990.78)
		event.ObjsAddPas(0, -683.94, -0.17, 726.33)
		event.ObjsStartPas(0)
		at = 10
		wait_objects(0)
		event.CmrsReleaseObj()
		event.CmrsSetPos(-666.42, 40.0, 654.32)
		event.CmrsSetRef(-678.61, 23.25, 716.14)
		event.CharaActive(1, 11)
		event.CharaActive(1, 12)
		event.ObjsSetMotion(0, "走りノーマル", 4)
		event.ObjsInitPas(0)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 50)
		event.ObjsAddPas(0, -689.4, -0.36, 780.32)
		event.ObjsAddPas(0, -662.72, -0.36, 615.33)
		event.ObjsAddPas(0, -627.87, -0.36, 503.76)
		event.ObjsStartPas(0)
		event.ObjsSetMotion(1, "走り", 4)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 50)
		event.ObjsAddPas(1, -698.31, -0.17, 1037.39)
		event.ObjsAddPas(1, -732.28, -0.17, 924.78)
		event.ObjsAddPas(1, -729.93, -0.17, 758.07)
		event.ObjsStartPas(1)
		event.ObjsSetMotion(2, "走り", 4)
		event.ObjsInitPas(2)
		event.ObjsSetPasFrm(2, 50)
		event.ObjsAddPas(2, -655.87, -0.17, 965.4)
		event.ObjsAddPas(2, -667.3, -0.17, 891.14)
		event.ObjsAddPas(2, -667.67, -0.17, 710.72)
		event.ObjsAddPas(2, -666.43, -1.11, 671.43)
		event.ObjsStartPas(2)
		at = 11
		wait_objects(0)
		event.CmrsSyncObj(0, 3.0, 6.0, -3.0, 3.14, 0.0, 0.1, "kao", 1)
		event.CharaActive(0, 11)
		event.CharaActive(0, 12)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 100)
		event.ObjsAddPas(0, -710.53, -0.17, 707.3)
		event.ObjsAddPas(0, -659.55, -0.17, 588.15)
		event.ObjsAddPas(0, -599.01, -0.17, 474.25)
		event.ObjsAddPas(0, -544.19, -0.17, 394.69)
		event.ObjsAddPas(0, -487.18, -0.17, 335.72)
		event.ObjsStartPas(0)
		at = 12
		helper_888ab2a3(90)
		event.StreamClose(1)
		event.StreamOpen3(1, 500010)
		at = 13
		helper_9cbdc640(1)
		at = 14
		wait_objects(0)
		event.CmrsReleaseObj()
		event.CmrsSyncObj(0, 0.0, 23.0, -4.0, -0.6, -3.0, 36.0, "", 1)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 140)
		event.ObjsAddPas(0, -710.53, -0.17, 707.3)
		event.ObjsAddPas(0, -659.55, -0.17, 588.15)
		event.ObjsAddPas(0, -599.01, -0.17, 474.25)
		event.ObjsAddPas(0, -544.19, -0.17, 394.69)
		event.ObjsAddPas(0, -493.18, -0.17, 329.72)
		event.ObjsStartPas(0)
		event.ObjsTexAnime(0, 1, "通常口パク")
		event.SetMesOkuri(0, 0)
		event.MesMake_2(0, 500010)
		open_message(0, -1, 8, 0, 0)
		event.StreamPlay(1)
		at = 15
		helper_888ab2a3(130)
		close_message(0)
		event.StreamClose(1)
		event.ObjsTexAnime(0, 0, "通常口パク")
		at = 16
		wait_objects(0)
		event.CmrsReleaseObj()
		event.CmrsSetPos(-555.36, 48.77, 420.75)
		event.CmrsSetRef(-439.22, 30.11, 269.93)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 40)
		event.ObjsAddPas(0, -504.43, -0.17, 353.14)
		event.ObjsAddPas(0, -456.02, -0.17, 290.98)
		event.ObjsAddPas(0, -432.13, -0.17, 263.55)
		event.ObjsAddPas(0, -394.89, -0.17, 226.72)
		event.ObjsStartPas(0)
		at = 17
		wait_objects(0)
		event.CmrsSetPos(-258.12, 43.64, 195.63)
		event.CmrsSetRef(-309.59, 52.1, 75.71)
		event.EohSetPos(7, 0.0, -1000.0, 826.974)
		event.ObjsSetMotion(0, "立ち", 4)
		event.CharaActive(1, 11)
		event.ObjsSetPos(1, -399.79, 36.97, -132.89)
		event.ObjsSetRot(1, 0.0, 0.42, 0.0)
		event.ObjsJump(1, -282.94, -0.17, 139.36, -0.3, 30)
		event.ObjsSetMotion(1, "飛び", 4)
		at = 18
		helper_888ab2a3(3)
		event.SndSePlay(var1, 4)
		at = 19
		helper_888ab2a3(18)
		event.CharaActive(1, 15)
		event.SetCharaPos(15, -313.12, 60.82, 67.65)
		event.SetCharaRot(15, 0.0, 0.39, 0.0)
		event.SetMotion(15, "割れ", 6)
		event.EohSetShow(5, 0)
		at = 20
		wait_objects(1)
		event.CmrsSetPos(-410.63, 15.99, 277.48)
		event.CmrsSetRef(-459.98, 22.57, 269.05)
		event.EohSetShow(17, 1)
		event.ObjsTexaDelay(0, 20)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目～おどろき目")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsSetPos(0, -478.12, -0.17, 293.36)
		event.ObjsSetRot(0, 0.0, 2.09, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsMove2(0, -438.61, -0.17, 269.74, 20, 2, 1.0)
		event.ObjsSetMotion(0, "止まる", 6)
		event.ObjsNextMotion(0, "止まるL", 4)
		event.StreamOpen3(1, 500020)
		at = 21
		var0 = helper_f616ba9e(1)
		at = 22
		helper_888ab2a3(vm.i32(20 - var0))
		at = 23
		helper_888ab2a3(10)
		event.SndSePlay(var1, 5)
		event.StreamPlay(1)
		at = 24
		helper_888ab2a3(10)
		at = 25
		wait_objects(0)
		at = 26
		helper_888ab2a3(20)
		event.StreamClose(1)
		event.CmrsSetPos(-505.04, 34.04, 374.96)
		event.CmrsSetRef(-456.55, 22.99, 297.9)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.CharaActive(1, 11)
		event.CharaActive(1, 12)
		event.CharaActive(1, 13)
		event.CharaActive(1, 14)
		event.SndSePlay(var1, 6)
		event.ObjsSetPos(1, -310.02, 28.2, 76.61)
		event.ObjsSetRot(1, 0.0, 0.25, 0.0)
		event.ObjsJump(1, -287.81, -0.17, 136.28, -0.1, 10)
		event.ObjsRotation(1, 0.0, -0.83, 0.0, 10)
		event.ObjsSetMotion(1, "着地", 6)
		event.ObjsNextMotion(1, "立ち")
		event.ObjsSetPos(2, -320.56, -0.17, 224.94)
		event.ObjsSetRot(2, 0.0, -1.19, 0.0)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetPos(3, -590.45, -0.17, 410.34)
		event.ObjsSetRot(3, 0.0, 2.28, 0.0)
		event.ObjsSetPos(4, -534.81, -0.17, 411.26)
		event.ObjsSetRot(4, 0.0, 2.53, 0.0)
		at = 27
		helper_888ab2a3(30)
		event.CmrsMoveAhd2(2.84, -5.37, 71.78, 40, 0, 1.0)
		at = 28
		helper_888ab2a3(20)
		event.ObjsSetMotion(0, "振り返り1", 2)
		event.ObjsNextMotion(0, "振り返り1L", 4)
		at = 29
		helper_888ab2a3(4)
		event.SndSePlay(var1, 7)
		event.StreamOpen3(1, 500021)
		at = 30
		var0 = helper_f616ba9e(1)
		at = 31
		helper_888ab2a3(vm.i32(30 - var0))
		event.StreamPlay(1)
		at = 32
		wait_objects(0)
		at = 33
		wait_camera()
		at = 34
		helper_888ab2a3(20)
		event.StreamClose(1)
		event.CmrsSetPos(-440.29, 24.47, 235.66)
		event.CmrsSetRef(-439.17, 22.16, 264.83)
		event.ObjsSetRot(0, 0.0, -1.15, 0.0)
		event.ObjsSetMotion(0, "振り返り2", 6, -1.0, 1)
		event.ObjsNextMotion(0, "2から身構え", 6)
		event.ObjsMotionWait(0)
		at = 35
		helper_888ab2a3(4)
		event.SndSePlay(var1, 8)
		event.StreamOpen3(1, 500032)
		at = 36
		helper_9cbdc640(1)
		at = 37
		wait_objects(0)
		event.CmrsSetPos(-481.43, 27.13, 301.91)
		event.CmrsSetRef(-425.22, 21.28, 264.03)
		event.StreamPlay(1)
		event.SndSePlay(var1, 10)
		event.ObjsSetRot(0, 0.0, 2.37, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetMotion(0, "構えL", 4, -1.0, 1)
		event.ObjsSetMotion(2, "攻撃２", 6)
		event.ObjsPosDelay(2, 6)
		event.ObjsMove(2, -436.52, -0.17, 280.2, 20)
		at = 38
		helper_888ab2a3(4)
		event.ObjsSetMotion(1, "攻撃２", 6)
		event.ObjsPosDelay(1, 6)
		event.ObjsMove(1, -423.21, -0.17, 254.95, 20)
		event.ObjsSetMotion(0, "横飛び", 2)
		at = 39
		helper_888ab2a3(4)
		event.SndSePlay(var1, 9)
		at = 40
		helper_888ab2a3(36)
		event.CmrsSetPos(-455.8, 119.67, 409.21)
		event.CmrsSetRef(-473.73, 21.28, 211.42)
		event.EohSetFootSoundId(0, 2)
		event.ObjsSetPos(0, -500.6, 0.0, 175.97)
		event.ObjsSetRot(0, 0.0, 1.0, 0.0)
		event.ObjsSetMotion(0, "壁立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetPos(1, -385.55, -0.17, 226.77)
		event.ObjsSetRot(1, 0.0, -1.67, 0.0)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetPos(2, -408.67, -0.17, 288.74)
		event.ObjsSetRot(2, 0.0, -2.39, 0.0)
		event.ObjsSetPos(3, -470.36, -0.17, 321.58)
		event.ObjsSetRot(3, 0.0, -3.04, 0.0)
		event.ObjsSetPos(4, -531.85, -0.17, 295.06)
		event.ObjsSetRot(4, 0.0, 2.77, 0.0)
		at = 41
		helper_888ab2a3(20)
		event.ObjsMove(0, -486.59, 0.0, 162.88, 80)
		event.ObjsSetMotion(0, "壁歩き", 4)
		event.ObjsMotionDelay(0, 60)
		event.ObjsNextMotion(0, "像見る", 6)
		event.ObjsNextMotion(0, "像見るL", 4)
		at = 42
		helper_888ab2a3(30)
		event.StreamClose(1)
		event.CmrsSetPos(-497.34, 28.69, 213.66)
		event.CmrsSetRef(-477.84, 8.8, 140.63)
		at = 43
		wait_objects(0)
		at = 44
		helper_888ab2a3(20)
		event.CmrsMove2(-497.34, 28.69, 213.66, -477.84, 34.1, 140.63, 20, 0, 0.4)
		event.ObjsSetMotion(0, "像上見る", 6)
		event.ObjsNextMotion(0, "像上見るL", 4)
		at = 45
		wait_camera()
		at = 46
		helper_888ab2a3(20)
		event.CmrsSetPos(-418.89, 26.37, 155.17)
		event.CmrsSetRef(-478.71, 27.36, 152.48)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "左向き目パチ")
		event.ObjsSetMotion(0, "像見戻り", 6)
		event.ObjsNextMotion(0, "像見るL", 4)
		at = 47
		helper_888ab2a3(20)
		event.CmrsSetPos(-468.82, 19.71, 169.71)
		event.CmrsSetRef(-415.85, 25.05, 200.94)
		event.SndSePlay(var1, 11)
		event.ObjsSetMotion(1, "攻撃２", 6)
		event.ObjsSetPos(1, -389.81, -0.17, 218.14)
		event.ObjsSetRot(1, 0.0, -2.15, 0.0)
		event.ObjsPosDelay(1, 6)
		event.ObjsMove(1, -423.64, -0.17, 198.07, 8)
		event.StreamOpen3(1, 500034)
		at = 48
		var0 = helper_f616ba9e(1)
		at = 49
		helper_888ab2a3(vm.i32(14 - var0))
		event.CmrsSetPos(-418.89, 26.37, 155.17)
		event.CmrsSetRef(-478.71, 27.36, 152.48)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "左向き～前向き")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsTexaDelay(0, 10)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "前向き～右向き")
		event.ObjsTexaDelay(0, 10)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "右向き～左向き")
		event.ObjsSetPos(0, -486.59, 0.0, 162.88)
		event.ObjsSetRot(0, 0.0, 1.0, 0.0)
		event.ObjsSetMotion(0, "剣飛び", 6)
		event.ObjsMotionWait(0)
		at = 50
		helper_888ab2a3(6)
		event.ObjsResetMotion(1)
		event.ObjsSetMotion(1, "攻撃２", 6)
		event.ObjsSetPos(1, -389.81, -0.17, 218.14)
		event.ObjsSetRot(1, 0.0, -2.15, 0.0)
		event.ObjsPosDelay(1, 6)
		event.ObjsMove(1, -462.48, -0.17, 175.0, 20)
		at = 51
		helper_888ab2a3(2)
		event.SndSePlay(var1, 12)
		at = 52
		helper_888ab2a3(4)
		event.StreamPlay(1)
		at = 53
		helper_888ab2a3(12)
		event.ObjsRotation(5, 0.0, 0.0, -1.57, 10)
		at = 54
		wait_objects(0)
		event.StreamClose(1)
		event.CmrsSetPos(-393.47, 16.73, 206.96)
		event.CmrsSetRef(-383.04, 20.81, 172.7)
		event.CmrsMove2(-397.16, 14.0, 219.08, -383.04, 20.81, 172.7, 60, 2, 1.0)
		event.EohSetFootSoundId(0, 21)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.CharaActive(10)
		event.ObjsSetPos(0, -369.4, 0.0, 171.56)
		event.ObjsSetRot(0, 0.0, -1.04, 0.0)
		event.ObjsSetMotion(0, "起きあがり", 6, -1.0, 1)
		event.ObjsNextMotion(0, "起きあがりL", 4)
		at = 55
		helper_888ab2a3(6)
		event.SndSePlay(var1, 13)
		at = 56
		wait_objects(0)
		at = 57
		helper_888ab2a3(30)
		event.SetFadeOut(30)
		at = 58
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at == 21 then
			var0 = received[1] :: number
		end
		if at == 30 then
			var0 = received[1] :: number
		end
		if at == 48 then
			var0 = received[1] :: number
		end
		if at <= 1 then
			helper_344d6cd8()
		end
		if at <= 2 then
			helper_038a2e4d(4)
		end
		if at <= 3 then
			helper_238b5abc(6)
		end
		if at <= 4 then
			helper_238b5abc(7)
		end
		if at <= 5 then
			helper_238b5abc(8)
		end
		if at <= 6 then
			helper_038a2e4d(15)
		end
		if at <= 7 then
			helper_238b5abc(1)
		end
		if at <= 8 then
			helper_238b5abc(0)
		end
		if at <= 9 then
			helper_238b5abc(0)
		end
		if at <= 10 then
			helper_238b5abc(0)
		end
		if at <= 11 then
			helper_038a2e4d(90)
		end
		if at <= 12 then
			helper_238b5abc(1)
		end
		if at <= 13 then
			helper_238b5abc(0)
		end
		if at <= 14 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			helper_038a2e4d(130)
		end
		if at <= 15 then
			helper_d16eef1e(0)
			helper_238b5abc(0)
		end
		if at <= 16 then
			helper_238b5abc(0)
		end
		if at <= 17 then
			helper_038a2e4d(3)
		end
		if at <= 18 then
			helper_038a2e4d(18)
		end
		if at <= 19 then
			helper_238b5abc(1)
		end
		if at <= 20 then
			var0 = helper_523109b8(1)
		end
		if at <= 21 then
			helper_038a2e4d(vm.i32(20 - var0))
		end
		if at <= 22 then
			helper_038a2e4d(10)
		end
		if at <= 23 then
			helper_038a2e4d(10)
		end
		if at <= 24 then
			helper_238b5abc(0)
		end
		if at <= 25 then
			helper_038a2e4d(20)
		end
		if at <= 26 then
			helper_038a2e4d(30)
		end
		if at <= 27 then
			helper_038a2e4d(20)
		end
		if at <= 28 then
			helper_038a2e4d(4)
		end
		if at <= 29 then
			var0 = helper_523109b8(1)
		end
		if at <= 30 then
			helper_038a2e4d(vm.i32(30 - var0))
		end
		if at <= 31 then
			helper_238b5abc(0)
		end
		if at <= 32 then
			helper_344d6cd8()
		end
		if at <= 33 then
			helper_038a2e4d(20)
		end
		if at <= 34 then
			helper_038a2e4d(4)
		end
		if at <= 35 then
			helper_238b5abc(1)
		end
		if at <= 36 then
			helper_238b5abc(0)
		end
		if at <= 37 then
			helper_038a2e4d(4)
		end
		if at <= 38 then
			helper_038a2e4d(4)
		end
		if at <= 39 then
			helper_038a2e4d(36)
		end
		if at <= 40 then
			helper_038a2e4d(20)
		end
		if at <= 41 then
			helper_038a2e4d(30)
		end
		if at <= 42 then
			helper_238b5abc(0)
		end
		if at <= 43 then
			helper_038a2e4d(20)
		end
		if at <= 44 then
			helper_344d6cd8()
		end
		if at <= 45 then
			helper_038a2e4d(20)
		end
		if at <= 46 then
			helper_038a2e4d(20)
		end
		if at <= 47 then
			var0 = helper_523109b8(1)
		end
		if at <= 48 then
			helper_038a2e4d(vm.i32(14 - var0))
		end
		if at <= 49 then
			helper_038a2e4d(6)
		end
		if at <= 50 then
			helper_038a2e4d(2)
		end
		if at <= 51 then
			helper_038a2e4d(4)
		end
		if at <= 52 then
			helper_038a2e4d(12)
		end
		if at <= 53 then
			helper_238b5abc(0)
		end
		if at <= 54 then
			helper_038a2e4d(6)
		end
		if at <= 55 then
			helper_238b5abc(0)
		end
		if at <= 56 then
			helper_038a2e4d(30)
		end
		if at <= 57 then
			helper_038a2e4d(30)
		end
		return true
	end)
	event.CancelDramaScene()
	event.PlayBgm(0)
	event.EohSetScale(0, 1.0, 1.0, 1.0)
	event.EohSetShow(13, 0)
	event.EohSetShow(18, 0)
	event.EohSetShow(8, 0)
	event.EohSetPos(7, 0.0, -1000.0, 826.974)
	event.SetStatus(1, 0, 256, 0)
	event.SetStatus(1, 8, 256, 0)
	event.SetStatus(1, 8, 512, 0)
	event.EohSetShow(5, 0)
	event.EohSetShow(17, 1)
	event.EohSetTexAnim(0, 0)
	event.EohSetTexAnim(0, 1, "通常目パチ")
	event.EohSetFootSoundId(0, 0)
	event.EohSetShow(9, 1)
	event.EohSetShow(10, 1)
	event.CharaActive(1, 0)
	event.SndSeStop(var1, 4)
	event.SndSeStop(var1, 5)
	event.SndSeStop(var1, 6)
	event.SndSeStop(var1, 7)
	event.SndSeStop(var1, 8)
	event.SndSeStop(var1, 9)
	event.SndSeStop(var1, 10)
	event.SndSeStop(var1, 11)
	event.SndSeStop(var1, 12)
	event.SndSeStop(var1, 13)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	helper_9dafbc83(vm.f32(-255.23), vm.f32(-0.17), vm.f32(130.23), vm.f32(-1.01))
	event.SetCameraPos(-136.84, 51.17, 55.65)
	event.SetCameraRef(-255.23, 29.83, 130.23)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Helper function.
local function helper_18074()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		var0 = event.SndLoadSound_2(802) or var0
		event.SetStatus(1, 0, 256, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		event.ChangeDir("event/e00/e50/")
		event.LoadMes(0, 5, "e50.txt")
		event.LoadMotion(5, "e50_monica.gltf", "info", 0)
		event.LoadMotion(5, "e50_monica2.gltf", "info", 0)
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "e50_guiltoni.gltf", "info", 18)
		event.CharaActive(18)
		event.EohSyncChara(2, 18)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e50_timegate_f.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.LoadChara(5, "e50_ou.gltf", "info", 13)
		event.CharaActive(1, 13)
		event.ChangeDir("")
		event.LoadChara(5, "event/time_gate/blue/tg_maru_blue.gltf", "info", 9)
		event.CharaActive(0, 9)
		event.EohSyncChara(7, 9)
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 7)
		event.LoadEquip(5, 1, 0, "info", 0, 12)
		event.CharaActive(12)
		event.EohSyncChara(1, 12)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSyncChara(5, 1)
		event.EohSyncChara(6, 2)
		event.EohSyncObj_2(3, "p10_s5102-0")
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.EohSyncObj_2(4, "p10_s5102-1")
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.EohSetShow(5, 0)
		event.EohSetShow(6, 0)
		event.EohSetPos(0, -494.38, -0.17, 247.95)
		event.EohSetRot(0, 0.0, 2.01, 0.0)
		event.EohSetMotion(0, "走り", 4)
		event.EohSetFootSoundId(0, 21)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.EohSetPos(2, 0.0, 0.0, -250.0)
		event.EohSetRot(2, 0.0, 3.14, 0.0)
		event.EohSetSoundId(2, var0)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "わらい顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.EohSetRot(3, 0.0, -0.2, 0.0)
		event.EohSetRot(4, 0.0, 0.2, 0.0)
		event.EohSetPos(7, 0.0, 30.0, -300.0)
		event.SetCharaPos(11, 0.0, 30.0, -300.0)
		event.SetCharaPos(13, 18.0, 0.0, -220.0)
		event.SetCharaRot(13, 0.0, -1.57, 0.0)
		event.SetMotion(13, "倒れ", 4)
		event.InitDramaScene()
		event.ObjsMove(0, -368.53, -0.17, 185.7, 50)
		event.CmrsInit()
		event.CmrsSetPos(-467.79, 15.29, 271.35)
		event.CmrsSetRef(-445.52, 25.45, 209.11)
		event.SetFadeIn(30)
		at = 2
		wait_objects(0)
		event.CmrsSetPos(-134.51, 100.78, 136.35)
		event.CmrsSetRef(-54.64, 52.81, 37.61)
		event.ObjsSetPos(0, -117.35, -0.17, 66.54)
		event.ObjsMove(0, -9.29, -0.17, 0.77, 30)
		event.ObjsRotDelay(0, 22)
		event.ObjsRotation(0, 0.0, 0.12, 0.0, 8)
		event.ObjsMotionDelay(0, 28)
		event.ObjsSetMotion(0, "壁立ち")
		at = 3
		helper_888ab2a3(10)
		event.EohSetFootSoundId(0, 2)
		at = 4
		helper_888ab2a3(12)
		event.SndSePlay(var0, 14)
		at = 5
		wait_objects(0)
		at = 6
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "像見る", 2)
		event.ObjsNextMotion(0, "像見るL", 4)
		at = 7
		helper_888ab2a3(40)
		event.EohSetFootSoundId(0, 21)
		event.CmrsSetPos(-95.58, 18.43, -157.01)
		event.CmrsSetRef(0.23, 35.57, -22.29)
		event.SndSePlay(var0, 15)
		event.ObjsRotation(3, 0.0, -1.8, 0.0, 16)
		event.ObjsRotation2(3, 0.0, -1.7, 0.0, 20, 2, 1.0)
		event.ObjsRotation(4, 0.0, 1.8, 0.0, 16)
		event.ObjsRotation2(4, 0.0, 1.7, 0.0, 20, 2, 1.0)
		event.ObjsSetPos(0, 0.0, -0.17, 0.0)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsSetMotion(0, "あたりドア開け", 6)
		event.ObjsNextMotion(0, "構え", 4)
		at = 8
		helper_888ab2a3(30)
		event.CmrsSetPos(-12.11, 17.82, -20.43)
		event.CmrsSetRef(1.71, 21.68, 0.96)
		event.SndSePlay(var0, 16)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目～おどろき目")
		event.ObjsTexAnime(0, 1, "口とじ～大口")
		event.ObjsSetMotion(0, "ショック", 6)
		event.ObjsNextMotion(0, "ショックL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 9
		helper_0382f327(500045, 100)
		event.CmrsSetPos(0.0, 20.0, -80.0)
		event.CmrsSetRef(0.0, 20.0, -160.0)
		event.CmrsMove(0.0, 20.0, -120.0, 0.0, 20.0, -200.0, 120.0)
		at = 10
		wait_camera()
		event.SetCrossfade(40)
		event.CmrsSetPos(0.0, 30.0, -210.0)
		event.CmrsSetRef(0.0, 30.0, -245.0)
		event.CmrsMoveAhd2(-1.2, 0.0, 35.0, 90, 0, 1.0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "ショック顔")
		event.ObjsTexAnime(0, 1, "ショック目パチ")
		event.ObjsSetMotion(0, "立ちN", 4, -1.0, 1)
		event.SndSePlay(var0, 17)
		event.ObjsSetMotion(2, "振り返り", 6)
		event.ObjsNextMotion(2, "振り返りL", 4)
		at = 11
		wait_objects(2)
		event.StreamOpen3(1, 500050)
		at = 12
		helper_888ab2a3(40)
		at = 13
		helper_9cbdc640(1)
		event.StreamPlay(1)
		at = 14
		wait_camera()
		event.CmrsSetPos(0.0, 30.0, -210.0)
		event.CmrsSetRef(0.0, 30.0, -290.0)
		event.CmrsMove2(0.0, 20.0, -160.0, 0.0, 20.0, -280.0, 120, 0, 0.4)
		event.SndSePlay(var0, 18)
		event.ObjsSetMotion(2, "振り返り戻り", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		at = 15
		wait_objects(2)
		event.SndSePlay(var0, 19)
		event.CharaActive(1, 11)
		event.SetMotion(11, "発生", 6)
		at = 16
		helper_888ab2a3(10)
		event.CharaActive(1, 9)
		event.SetCharaShow(9, 1, 1, 0.1)
		at = 17
		helper_888ab2a3(30)
		event.ObjsSetMotion(2, "歩き")
		event.ObjsMove(2, 0.0, 0.0, -300.0, 60)
		at = 18
		helper_888ab2a3(30)
		event.SetCharaShow(18, 0, 1, 0.033333335)
		at = 19
		helper_888ab2a3(30)
		event.SetCharaShow(9, 0, 1, 0.05)
		var1 = 1.0
		var2 = vm.f32(0.01)
		var3 = vm.f32(-0.002)
		var4 = 0
		while var4 < 20 do
			var1 = vm.f32(var1 + var2)
			var2 = vm.f32(var2 + var3)
			event.SetScale(9, var1, var1, var1)
			var4 = var4 + 1
			at = 20
			vm.wait(20)
		end
		at = 21
		helper_888ab2a3(30)
		event.StreamClose(1)
		event.CmrsSetPos(0.0, 23.0, -34.0)
		event.CmrsSetRef(0.0, 23.0, 0.0)
		event.CmrsMove2(0.0, 23.0, -24.0, 0.0, 23.0, 0.0, 60, 2, 1.0)
		at = 22
		wait_camera()
		at = 23
		helper_888ab2a3(20)
		event.CmrsSetPos(0.0, 23.0, -297.58)
		event.CmrsSetRef(0.0, 23.0, -273.58)
		event.SndSePlay(var0, 20)
		event.DelReference(12)
		event.ObjsSetPos(1, 10.0, 8.0, 0.0)
		event.ObjsSetRot(1, 0.4, 2.88, 0.0)
		event.ObjsMove(1, 10.0, 1.0, 0.0, 10)
		event.ObjsRotation(1, 0.0, 2.88, 0.0, 8)
		event.ObjsRotation(1, 0.0, 2.88, 0.3, 6)
		event.ObjsRotation(1, 0.0, 2.88, -0.2, 4)
		event.ObjsRotation(1, 0.0, 2.88, 0.1, 3)
		event.ObjsRotation(1, 0.0, 2.88, -0.05, 2)
		event.ObjsRotation(1, 0.0, 2.88, 0.0, 2)
		at = 24
		wait_objects(1)
		at = 25
		helper_888ab2a3(40)
		event.ObjsSetMotion(0, "ヨロあるき")
		event.ObjsChengeStep(0, 0.05)
		event.ObjsMove(0, 0.0, -0.17, -80.0, 120)
		at = 26
		helper_888ab2a3(90)
		event.SetFadeOut(30)
		at = 27
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_238b5abc(0)
		end
		if at <= 2 then
			helper_038a2e4d(10)
		end
		if at <= 3 then
			helper_038a2e4d(12)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_038a2e4d(10)
		end
		if at <= 6 then
			helper_038a2e4d(40)
		end
		if at <= 7 then
			helper_038a2e4d(30)
		end
		if at <= 8 then
			helper_53ffe901(500045, 100)
		end
		if at <= 9 then
			helper_344d6cd8()
		end
		if at <= 10 then
			helper_238b5abc(2)
		end
		if at <= 11 then
			helper_038a2e4d(40)
		end
		if at <= 12 then
			helper_238b5abc(1)
		end
		if at <= 13 then
			helper_344d6cd8()
		end
		if at <= 14 then
			helper_238b5abc(2)
		end
		if at <= 15 then
			helper_038a2e4d(10)
		end
		if at <= 16 then
			helper_038a2e4d(30)
		end
		if at <= 17 then
			helper_038a2e4d(30)
		end
		if at <= 18 then
			helper_038a2e4d(30)
		end
		if at <= 19 then
			var1 = 1.0
			var2 = vm.f32(0.01)
			var3 = vm.f32(-0.002)
			var4 = 0
			var1 = vm.f32(var1 + var2)
			var2 = vm.f32(var2 + var3)
			local _ = var4 < 20
			var4 = var4 + 1
		end
		if at <= 20 then
			helper_038a2e4d(30)
		end
		if at <= 21 then
			helper_344d6cd8()
		end
		if at <= 22 then
			helper_038a2e4d(20)
		end
		if at <= 23 then
			helper_238b5abc(1)
		end
		if at <= 24 then
			helper_038a2e4d(40)
		end
		if at <= 25 then
			helper_038a2e4d(90)
		end
		if at <= 26 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 28
	vm.entry(28)
	event.CancelDramaScene()
	event.SetStatus(1, 0, 256, 0)
	event.EohSetTexAnim(0, 0)
	event.EohSetTexAnim(0, 1, "通常目パチ")
	event.EohSetFootSoundId(0, 0)
	event.EohSetShow(5, 1)
	event.EohSetShow(6, 1)
	event.SndSeStop(var0, 14)
	event.SndSeStop(var0, 15)
	event.SndSeStop(var0, 16)
	event.SndSeStop(var0, 17)
	event.SndSeStop(var0, 18)
	event.SndSeStop(var0, 19)
	event.SndSeStop(var0, 20)
	event.DelExtMotion(0)
	event.DeleteChara(18)
	event.DeleteChara(9)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_ff10()
	event.LoadMonsterFile(523, 1)
	event.AutoSetMonster(523, -382.5, -0.2, 120.2, 0.0, 1.61, 0.0)
	event.AutoSetMonster(523, -428.0, -0.2, 202.7, 0.0, 1.71, 0.0)
	event.AutoSetMonster(523, -452.5, -0.2, 287.0, 0.0, 1.98, 0.0)
	event.AutoSetMonster(523, -324.2, -0.2, 260.5, 0.0, 2.34, 0.0)
	vm.wait(2)
	event.DngPause(16385, 1)
	event.SetFadeIn(20)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"(O)ボタン・・・攻撃\n[r1]ボタン・・・ガード\n(X)ボタン・・・ロックオン\n[l1]＋(O)ボタン・・・魔法"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.DngPause(1, 0)
	event.Finish()
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		event.DelMonster(-1)
		at = 2
		helper_18074()
		event.CheckEquepChange(1)
		event.SetActiveChrNo(0)
		event.JoinPartyMember(0, 1)
		event.JoinPartyMember(1, 0)
		event.AddItem(353)
		event.AddItem(311)
		event.AddItem(268, 5)
		event.AddItem(294, 3)
		event.AddItem(298, 3)
		event.AddItem(425, 3)
		event.AddItem(275, 2)
		event.SetFlag(54, 1)
		event.BgmLoadCancel()
		event.GotoEdit(19, 151)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_18074()
				return vm.continue_with(function()
					event.CheckEquepChange(1)
					event.SetActiveChrNo(0)
					event.JoinPartyMember(0, 1)
					event.JoinPartyMember(1, 0)
					event.AddItem(353)
					event.AddItem(311)
					event.AddItem(268, 5)
					event.AddItem(294, 3)
					event.AddItem(298, 3)
					event.AddItem(425, 3)
					event.AddItem(275, 2)
					event.SetFlag(54, 1)
					event.BgmLoadCancel()
					event.GotoEdit(19, 151)
					at = 3
					vm.wait(3)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- Event 10500, which map data, a script or the engine runs by number.
function script.event_10500()
	event.AddItem(110)
	event.AddItem(127)
	event.AddItem(133)
	event.AddItem(266)
	event.SetCharaEquip(1, 110)
	event.SetCharaEquip(1, 127)
	event.SetCharaEquip(1, 133)
	event.SetCharaEquip(1, 266)
	event.DngSetupMainUnit(1)
	helper_ff10()
	event.DngPause(16384, 1)
	event.LoadMonsterFile(523, 1)
	event.AutoSetMonster(523, -382.5, -0.2, 120.2, 0.0, 1.61, 0.0)
	event.AutoSetMonster(523, -428.0, -0.2, 202.7, 0.0, 1.71, 0.0)
	event.AutoSetMonster(523, -452.5, -0.2, 287.0, 0.0, 1.98, 0.0)
	event.AutoSetMonster(523, -324.2, -0.2, 260.5, 0.0, 2.34, 0.0)
	vm.wait(2)
	event.SetFadeIn(20)
	event.Finish()
end

return script
