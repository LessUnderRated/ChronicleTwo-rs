--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local set_window_mode = require("@lib/event/set_window_mode")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_5c274fcd()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	local at: number = 0
	do
		local ret = vm.section(function()
			event.SetFlag(111, 1)
			event.Initialize()
			event.SetStatusbarShow(0, 0.033333335)
			active_chr_no = event.GetActiveChrNo() or active_chr_no
			if active_chr_no == 2 then
				var1 = event.GetRoboMoveType() or var1
				if var1 == 1 then
					event.SetMotion(0, "立ち-足")
				end
				if var1 == 2 then
					event.SetMotion(0, "立ち-キャタピラ")
				end
			else
				event.SetMotion(0, "バトル立ち")
			end
			var2 = event.GetTrialVersion() or var2
			if var2 == 1 then
				event.FadeOutBgm(30)
			end
			event.SetFadeOut(30)
			at = 1
			wait_frames(30)
			if active_chr_no == 2 then
				event.DngSetupMainUnit(0)
				event.SetActiveChrNo(0)
			end
			event.ChangeDir("event/e100/e111/")
			event.SetLoadbgFile_9(
				"e111_mints.gltf",
				"e111_Halloween.gltf",
				"e111_polcurse.gltf",
				"e111_pierrot.gltf",
				"e111baku.gltf",
				"e111pikipiki.gltf",
				"e111_hahen01.gltf",
				"e111_hahen02.gltf",
				"e111_1.txt"
			)
			event.SndSeAllStop(7)
			event.DngPause(17, 1)
			var4 = event.GetTrialVersion() or var4
			if var4 == 1 then
				event.AssignStack(5)
				event.ClearStack(5)
				event.CharaActive(0, 0)
				at = 2
				helper_479dc9e9()
				event.LoadChara(5, "e111_Halloween.gltf", "info", 9)
				event.CharaActive(9)
				event.EohSyncChara(1, 9)
				event.ObjsInit(1)
				event.ObjsSyncObj(1, 1)
				event.ObjsSetPos(1, 0.0, 0.0, 0.0)
				event.ObjsSetRot(1, 0.0, 1.8, 0.0)
				event.ObjsSetMotion(1, "立ち", 4)
				event.LoadChara(5, "e111pikipiki.gltf", "info", 13)
				event.CharaActive(0, 13)
				event.SetCharaPos(13, 0.0, 0.0, 0.0)
				event.SetCharaRot(13, 0.0, 1.8, 0.0)
				event.LoadChara(5, "e111baku.gltf", "info", 14)
				event.CharaActive(0, 14)
				event.SetCharaPos(14, 0.0, 0.0, 0.0)
				event.SetCharaRot(14, 0.0, 1.8, 0.0)
				event.SetMotion(14, "爆発", 5)
				event.SetCurrentDir("")
				var3 = event.SndLoadSound_2(1831) or var3
				event.ObjsSetMotion(1, "倒れ", 6)
				event.ObjsMotionWait(1)
				event.CmrsInit()
				event.CmrsSetPos(229.93, 23.29, -84.91)
				event.CmrsSetRef(-23.55, 60.99, 1.2)
				event.CmrsFadeInit()
				event.CmrsFadeIn(30)
				at = 3
				wait_camera()
				at = 4
				wait_frames(12)
				event.SndSePlay(var3, 18)
				at = 5
				wait_objects(1)
				event.CharaActive(13)
				event.ObjsSePlay(1, var3, 31)
				event.ObjsSeDelay(1, 20)
				event.ObjsSePlay(1, var3, 32)
				event.ObjsSeDelay(1, 8)
				event.ObjsSePlay(1, var3, 31)
				at = 6
				wait_frames(30)
				event.CharaActive(14)
				event.SetMotion(14, "爆発", 6)
				at = 7
				wait_frames(10)
				event.SndSePlay(var3, 33)
				at = 8
				wait_frames(45)
				event.FadeOutBgm(90)
				event.SetFadeOut(30)
				at = 9
				wait_frames(30)
				at = 10
				wait_frames(60)
				event.SndSeStop(var3, 31)
				event.SndSeStop(var3, 32)
				event.SndSeStop(var3, 33)
				event.CharaActive(0)
				event.SetExitFlag(1)
				return table.pack()
			end
			event.StopBgm(0)
			set_window_mode(0, 7)
			event.AssignStack(5)
			event.ClearStack(5)
			at = 11
			helper_479dc9e9()
			event.LoadMes(0, 5, "e111_1.txt")
			event.LoadMotion(5, "e111_mints.gltf", "info", 0)
			event.SetCharaPos(0, 202.87, 0.0, -74.61)
			event.SetCharaRot(0, 0.0, -1.2, 0.0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.EohSetFootSoundId(0, 2)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.ObjsSetPos(0, 202.87, 0.0, -74.61)
			event.ObjsSetRot(0, 0.0, -1.2, 0.0)
			event.ObjsSetMotion(0, "旧・立ち", 4, -1, 1)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目パチ")
			event.LoadChara(5, "e111_Halloween.gltf", "info", 9)
			event.CharaActive(9)
			event.EohSyncChara(1, 9)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.ObjsSetPos(1, 0.0, 0.0, 0.0)
			event.ObjsSetRot(1, 0.0, 1.8, 0.0)
			event.ObjsSetMotion(1, "立ち", 4)
			event.LoadChara(5, "e111_polcurse.gltf", "info", 10)
			event.CharaActive(10)
			event.EohSyncChara(2, 10)
			event.ObjsInit(2)
			event.ObjsSyncObj(2, 2)
			event.ObjsSetPos(2, 0.0, 170.0, 0.0)
			event.ObjsSetRot(2, 0.0, 1.8, 0.0)
			event.ObjsSetMotion(2, "浮遊２", 4)
			event.ObjsTexAnime(2, 0)
			event.ObjsTexAnime(2, 1, "目・こまり")
			event.ObjsTexAnime(2, 1, "口・こまり")
			event.LoadChara(5, "e111_pierrot.gltf", "info", 11)
			event.CharaActive(0, 11)
			event.EohSyncChara(3, 11)
			event.ObjsInit(3)
			event.ObjsSyncObj(3, 3)
			event.ObjsSetPos(3, 0.0, 0.0, 0.0)
			event.ObjsSetRot(3, 0.0, 0.0, 0.0)
			event.ObjsSetMotion(3, "立ち", 4)
			event.CopyChara(5, 11, 12)
			event.CharaActive(0, 12)
			event.EohSyncChara(4, 12)
			event.ObjsInit(4)
			event.ObjsSyncObj(4, 4)
			event.ObjsSetPos(4, 0.0, 0.0, 0.0)
			event.ObjsSetRot(4, 0.0, 0.0, 0.0)
			event.ObjsSetMotion(4, "立ち", 4)
			event.LoadChara(5, "e111pikipiki.gltf", "info", 13)
			event.CharaActive(0, 13)
			event.SetCharaPos(13, 0.0, 0.0, 0.0)
			event.SetCharaRot(13, 0.0, 1.8, 0.0)
			event.LoadChara(5, "e111baku.gltf", "info", 14)
			event.CharaActive(0, 14)
			event.SetCharaPos(14, 0.0, 0.0, 0.0)
			event.SetCharaRot(14, 0.0, 1.8, 0.0)
			event.SetMotion(14, "爆発", 5)
			event.LoadChara(5, "e111_hahen01.gltf", "info", 15)
			event.CharaActive(0, 15)
			event.SetCharaPos(15, 0.0, 0.0, 0.0)
			event.SetCharaRot(15, 0.0, 1.0, 0.0)
			event.EohSyncChara(7, 15)
			event.ObjsInit(7)
			event.ObjsSyncObj(7, 7)
			event.CopyChara(5, 15, 16)
			event.CharaActive(0, 16)
			event.SetCharaPos(16, 0.0, 0.0, 0.0)
			event.SetCharaRot(16, 0.0, 3.0, 0.0)
			event.EohSyncChara(8, 16)
			event.ObjsInit(8)
			event.ObjsSyncObj(8, 8)
			event.LoadChara(5, "e111_hahen02.gltf", "info", 17)
			event.CharaActive(0, 17)
			event.SetCharaPos(17, 0.0, 0.0, 0.0)
			event.SetCharaRot(17, 0.0, 0.0, 0.0)
			event.EohSyncChara(9, 17)
			event.ObjsInit(9)
			event.ObjsSyncObj(9, 9)
			event.SetCurrentDir("")
			var3 = event.SndLoadSound_2(1831) or var3
			event.EohSetSoundId(2, var3)
			event.EohSetSoundId(3, var3)
			event.EohSetSoundId(4, var3)
			event.EohSetSoundId(7, -1)
			event.EohSetSoundId(8, -1)
			event.EohSetSoundId(9, -1)
			event.EohSyncChara(5, 1)
			event.EohSetShow(5, 0)
			event.EohSyncChara(6, 2)
			event.EohSetShow(6, 0)
			event.ObjsSetMotion(1, "倒れ", 6)
			event.ObjsMotionWait(1)
			event.InitDramaScene()
			event.CmrsInit()
			event.CmrsSetPos(315.53, 60.49, -68.59)
			event.CmrsSetRef(-19.71, 69.17, 0.25)
			event.CmrsFadeInit()
			event.CmrsFadeIn(30)
			at = 12
			wait_camera()
			at = 13
			wait_frames(12)
			event.SndSePlay(var3, 18)
			at = 14
			wait_objects(1)
			event.CharaActive(13)
			event.ObjsSePlay(1, var3, 31)
			event.ObjsSeDelay(1, 20)
			event.ObjsSePlay(1, var3, 32)
			event.ObjsSeDelay(1, 8)
			event.ObjsSePlay(1, var3, 31)
			at = 15
			wait_frames(30)
			event.CmrsSetPos(44.03, 197.99, -10.5)
			event.CmrsSetRef(0.02, 199.41, -0.53)
			event.ObjsSetMotion(2, "両手広げる", 6)
			event.ObjsNextMotion(2, "両手広げるL", 4)
			event.EohSetTexAnim(2, 0, "口・こまり")
			event.SetPakuAnim(2, "口パク２", "口・こまり")
			at = 16
			helper_4116e6bb(1110010)
			event.ResetPakuAnim()
			at = 17
			wait_objects(2)
			event.CmrsSetPos(238.32, 116.37, -106.27)
			event.CmrsSetRef(-6.37, 50.07, -17.02)
			event.ObjsSetPos(2, 0.0, 0.0, 0.0)
			event.ObjsSetRot(2, 0.0, 1.8, 0.0)
			event.ObjsSetMotion(2, "抱き着き", 6)
			event.ObjsNextMotion(2, "抱き着きL", 4)
			event.EohSetTexAnim(2, 0, "口・こまり")
			event.SetPakuAnim(2, "口パク２", "口・こまり")
			at = 18
			helper_4116e6bb(1110020)
			event.ResetPakuAnim()
			at = 19
			wait_objects(2)
			event.CmrsSetPos(230.72, 15.98, -98.52)
			event.CmrsSetRef(28.12, 61.49, 12.32)
			event.CharaActive(0)
			event.CharaActive(14)
			event.SetMotion(14, "爆発", 6)
			at = 20
			wait_frames(4)
			event.SndSePlay(var3, 33)
			var5 = 0
			at = 21
			wait_frames(16 - var5)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・フクザツ")
			event.ObjsTexAnime(0, 1, "口・フクザツ")
			event.ObjsSetMotion(0, "爆発", 6)
			event.ObjsNextMotion(0, "爆発L", 4)
			at = 22
			wait_frames(60)
			event.CmrsSetPos(224.0, 20.06, -43.69)
			event.CmrsSetRef(253.55, 21.35, -49.32)
			event.ObjsSetPos(0, 250.0, 0.0, -50.0)
			event.ObjsSetRot(0, 0.0, -1.32, 0.0)
			event.ObjsResetMotion(0)
			event.ObjsSetMotion(0, "爆発L", 4, -1.0, 1)
			event.ObjsResetDaPosition(0)
			event.CharaActive(0, 9)
			event.CharaActive(0, 10)
			event.CharaActive(0, 13)
			event.CharaActive(0, 14)
			event.CharaActive(1, 15)
			event.CharaActive(1, 16)
			event.CharaActive(1, 17)
			at = 23
			wait_frames(40)
			event.ObjsResetMotion(7)
			event.ObjsSetMotion(7, "破片", 6)
			at = 24
			wait_frames(5)
			event.ObjsResetMotion(8)
			event.ObjsSetMotion(8, "破片", 6)
			event.ObjsResetMotion(9)
			event.ObjsSetMotion(9, "破片", 6)
			at = 25
			wait_frames(15)
			event.CmrsSetPos(47.2, 92.89, -142.19)
			event.CmrsSetRef(85.43, 16.34, 45.38)
			event.ObjsSetPos(7, -22.38, 0.0, -1.68)
			event.ObjsSetPos(8, -5.05, 0.0, -21.05)
			event.ObjsSetPos(9, -0.08, 0.0, -45.14)
			event.ObjsTexAnime(2, 0)
			event.ObjsTexAnime(2, 1, "目・閉じ")
			event.ObjsTexAnime(2, 1, "口・こまり")
			event.CharaActive(10)
			event.SetCharaShow(10, 1)
			event.ObjsSetRot(2, 0.0, -2.08, 0.0)
			event.ObjsMove2(2, 84.29, 0.0, 53.13, 40, 2, 0.2)
			event.ObjsSetMotion(2, "倒れる", 6)
			event.ObjsNextMotion(2, "倒れるL", 4)
			event.ObjsMove(7, 221.23, 0.0, 41.5, 80)
			at = 26
			wait_frames(5)
			event.ObjsMove(8, 31.26, 0.0, 224.79, 68)
			event.ObjsMove(9, 85.17, 0.0, 135.16, 60)
			at = 27
			wait_frames(2)
			event.SndSePlay(var3, 37)
			at = 28
			wait_objects(2)
			at = 29
			wait_frames(30)
			event.CmrsSetPos(198.72, 10.01, -8.33)
			event.CmrsSetRef(245.11, 19.47, -50.58)
			event.ObjsSetMotion(0, "ポルカスに近づく")
			event.ObjsChengeStep(0, 0.04)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・真剣")
			event.ObjsTexAnime(0, 1, "口・フクザツ")
			at = 30
			wait_frames(20)
			event.ObjsMove2(0, 218.58, 0.0, -35.53, 40, 1, 0.4)
			at = 31
			wait_frames(47)
			event.CmrsSetPos(109.18, 34.69, -86.0)
			event.CmrsSetRef(83.61, 7.22, 47.83)
			event.ObjsSetPos(0, 71.02, 0.0, -22.65)
			event.ObjsSetRot(0, 0.0, 0.36, 0.0)
			event.ObjsMove(0, 77.52, 0.0, 8.58, 50)
			event.ObjsResetMotion(0)
			event.ObjsSetMotion(0, "ポルカスに近づく", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "振り向く", 6)
			event.ObjsNextMotion(0, "振り向くL", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexaDelay(0, 30)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・振り向き")
			event.ObjsTexAnime(0, 1, "口・フクザツ")
			at = 32
			wait_frames(40)
			at = 33
			helper_4116e6bb(1110030)
			event.EohSetTexAnim(0, 0, "口・フクザツ")
			event.SetPakuAnim(0, "通常口パク", "口・フクザツ")
			at = 34
			helper_4116e6bb(1110040)
			event.ResetPakuAnim()
			event.CmrsSetPos(204.37, 31.72, 9.99)
			event.CmrsSetRef(264.2, 27.01, -5.8)
			event.CharaActive(11)
			event.CharaActive(12)
			event.ObjsSetPos(3, 375.73, 0.0, -22.37)
			event.ObjsSetRot(3, 0.0, -1.32, 0.0)
			event.ObjsMove(3, 224.72, 0.0, 9.78, 30)
			event.ObjsSetMotion(3, "走り", 4)
			event.ObjsSetPos(4, 436.56, 0.0, -64.46)
			event.ObjsSetRot(4, 0.0, -1.32, 0.0)
			event.ObjsMove(4, 268.47, 0.0, -20.1, 30)
			event.ObjsSetMotion(4, "走り", 4)
			event.ObjsSetMotionNowTime(4, 5.7)
			at = 35
			wait_objects(3)
			event.CmrsSetPos(80.24, 21.69, -11.79)
			event.CmrsSetRef(80.02, 22.6, 6.87)
			event.EohSetTexAnim(0, 0, "口・フクザツ")
			event.SetPakuAnim(0, "通常口パク", "口・フクザツ")
			at = 36
			helper_1584c528(1110050, -1)
			event.ResetPakuAnim()
			event.CmrsSetPos(169.2, 49.46, -43.53)
			event.CmrsSetRef(78.35, 3.24, 42.02)
			event.ObjsSetMotion(0, "こける", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "こけるL", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・ビックリ")
			event.ObjsTexAnime(0, 1, "口・ビックリ")
			event.ObjsSetPos(3, 139.55, 0.0, -50.54)
			event.ObjsSetRot(3, 0.0, -0.24, 0.0)
			event.ObjsMove(3, 112.86, 0.0, 70.42, 30)
			event.ObjsRotDelay(3, 20)
			event.ObjsRotation(3, 0.0, -2.16, 0.0, 10)
			event.ObjsMotionDelay(3, 30)
			event.ObjsSetMotion(3, "立ち")
			event.ObjsSetPos(4, 41.41, 0.0, -20.18)
			event.ObjsSetRot(4, 0.0, 0.24, 0.0)
			event.ObjsMove(4, 68.8, 0.0, 44.59, 30)
			event.ObjsRotDelay(4, 20)
			event.ObjsRotation(4, 0.0, 1.08, 0.0, 10)
			event.ObjsMotionDelay(4, 30)
			event.ObjsSetMotion(4, "立ち")
			at = 37
			wait_objects(3)
			at = 38
			wait_objects(4)
			at = 39
			wait_frames(2)
			event.ObjsSetMotion(2, "持ち上げ", 6)
			event.ObjsSetMotion(3, "頭持ち上げ", 6)
			event.ObjsSetMotion(4, "足持ち上げ", 6)
			at = 40
			wait_frames(78)
			event.ObjsSetMotion(0, "見送る", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "見送るL", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目パチ")
			event.ObjsTexAnime(0, 1, "口・フクザツ")
			event.ObjsSetMotion(2, "運ばれる")
			event.ObjsSetMotion(3, "頭持ち歩きL")
			event.ObjsSetMotion(4, "足持ち歩き")
			event.ObjsMove2(2, 140.22, 0.0, -53.49, 60, 1, 0.1)
			event.ObjsMove2(3, 174.0, 0.0, -35.88, 60, 1, 0.1)
			event.ObjsMove2(4, 128.99, 0.0, -59.89, 60, 1, 0.1)
			at = 41
			helper_1584c528(1110060, 60)
			at = 42
			wait_objects(2)
			event.CmrsSetPos(12.04, 19.34, -2.84)
			event.CmrsSetRef(163.83, 7.62, -48.59)
			event.ObjsSetPos(0, 71.02, 0.0, -22.65)
			event.ObjsSetRot(0, 0.0, -1.08, 0.0)
			event.ObjsResetDaPosition(0)
			event.ObjsSetPos(2, 233.65, 0.0, -50.46)
			event.ObjsSetRot(2, 0.0, -2.92, 0.0)
			event.ObjsSetPos(3, 241.55, 0.0, -12.36)
			event.ObjsSetRot(3, 0.0, -3.0, 0.0)
			event.ObjsSetPos(4, 230.89, 0.0, -63.54)
			event.ObjsSetRot(4, 0.0, 0.24, 0.0)
			event.ObjsMove(2, 671.22, 0.0, -131.94, 160)
			event.ObjsMove(3, 678.84, 0.0, -94.13, 160)
			event.ObjsMove(4, 668.34, 0.0, -144.99, 160)
			at = 43
			helper_1584c528(1110060, 60)
			event.EohSetTexAnim(0, 0, "口・フクザツ")
			event.SetPakuAnim(0, "通常口パク", "口・フクザツ")
			at = 44
			helper_1584c528(1110080, 90)
			event.ResetPakuAnim()
			at = 45
			wait_objects(2)
			event.CharaActive(0, 10)
			event.CharaActive(0, 11)
			event.CharaActive(0, 12)
			event.CmrsSetPos(115.02, 23.5, 34.8)
			event.CmrsSetRef(83.65, 15.41, -18.49)
			event.ObjsSetPos(0, 83.74, 0.0, -19.9)
			event.ObjsSetRot(0, 0.0, 0.84, 0.0)
			event.ObjsSetMotion(0, "立ちあがる", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "ため息", 6)
			event.ObjsNextMotion(0, "旧・立ち", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexaDelay(0, 34)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目パチ")
			event.ObjsTexAnime(0, 1, "口・ため息")
			at = 46
			wait_frames(34)
			at = 47
			helper_4116e6bb(1110090)
			at = 48
			wait_objects(0)
			event.CmrsSetPos(157.76, 23.5, -3.06)
			event.CmrsSetRef(61.27, 16.36, -2.61)
			event.ObjsSetRot(0, 0.0, -1.32, 0.0)
			event.ObjsSetMotion(0, "振り返る", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "旧・立ち", 4)
			event.ObjsResetDaPosition(0)
			event.ObjsTexAnime(0, 0)
			event.ObjsTexAnime(0, 1, "目・真剣")
			event.ObjsTexAnime(0, 1, "口・真剣")
			at = 49
			wait_objects(0)
			at = 50
			wait_frames(30)
			event.CmrsSetPos(-430.32, 64.84, 57.91)
			event.CmrsSetRef(-921.56, 67.83, 181.76)
			event.CmrsMove(-526.57, 64.84, 82.17, -921.56, 67.83, 181.76, 120)
			at = 51
			wait_camera()
			event.CmrsSetPos(58.55, 16.4, 0.48)
			event.CmrsSetRef(82.64, 21.24, -20.55)
			event.EohSetTexAnim(0, 0, "口・真剣")
			event.SetPakuAnim(0, "通常口パク", "口・真剣")
			at = 52
			helper_4116e6bb(1110100)
			event.ResetPakuAnim()
			event.SetCrossfade(60)
			event.CmrsSetPos(69.71, 21.68, -9.26)
			event.CmrsSetRef(82.64, 24.57, -20.55)
			at = 53
			wait_frames(120)
			event.CmrsFadeInit()
			event.CmrsFadeOut(30)
			at = 54
			wait_camera()
			return nil
		end, function(received: { any }): boolean
			if at <= 10 then
				return false
			end
			if at <= 11 then
				helper_344d6cd8()
			end
			if at <= 12 then
				wait_frames_skipping(12)
			end
			if at <= 13 then
				helper_238b5abc(1)
			end
			if at <= 14 then
				wait_frames_skipping(30)
			end
			if at <= 15 then
				helper_8cd371d7(1110010)
			end
			if at <= 16 then
				helper_238b5abc(2)
			end
			if at <= 17 then
				helper_8cd371d7(1110020)
			end
			if at <= 18 then
				helper_238b5abc(2)
			end
			if at <= 19 then
				wait_frames_skipping(4)
			end
			if at <= 20 then
				var5 = 0
				wait_frames_skipping(16 - var5)
			end
			if at <= 21 then
				wait_frames_skipping(60)
			end
			if at <= 22 then
				wait_frames_skipping(40)
			end
			if at <= 23 then
				wait_frames_skipping(5)
			end
			if at <= 24 then
				wait_frames_skipping(15)
			end
			if at <= 25 then
				wait_frames_skipping(5)
			end
			if at <= 26 then
				wait_frames_skipping(2)
			end
			if at <= 27 then
				helper_238b5abc(2)
			end
			if at <= 28 then
				wait_frames_skipping(30)
			end
			if at <= 29 then
				wait_frames_skipping(20)
			end
			if at <= 30 then
				wait_frames_skipping(47)
			end
			if at <= 31 then
				wait_frames_skipping(40)
			end
			if at <= 32 then
				helper_8cd371d7(1110030)
			end
			if at <= 33 then
				helper_8cd371d7(1110040)
			end
			if at <= 34 then
				helper_238b5abc(3)
			end
			if at <= 35 then
				helper_52aadc70(1110050, -1)
			end
			if at <= 36 then
				helper_238b5abc(3)
			end
			if at <= 37 then
				helper_238b5abc(4)
			end
			if at <= 38 then
				wait_frames_skipping(2)
			end
			if at <= 39 then
				wait_frames_skipping(78)
			end
			if at <= 40 then
				helper_52aadc70(1110060, 60)
			end
			if at <= 41 then
				helper_238b5abc(2)
			end
			if at <= 42 then
				helper_52aadc70(1110060, 60)
			end
			if at <= 43 then
				helper_52aadc70(1110080, 90)
			end
			if at <= 44 then
				helper_238b5abc(2)
			end
			if at <= 45 then
				wait_frames_skipping(34)
			end
			if at <= 46 then
				helper_8cd371d7(1110090)
			end
			if at <= 47 then
				helper_238b5abc(0)
			end
			if at <= 48 then
				helper_238b5abc(0)
			end
			if at <= 49 then
				wait_frames_skipping(30)
			end
			if at <= 50 then
				helper_344d6cd8()
			end
			if at <= 51 then
				helper_8cd371d7(1110100)
			end
			if at <= 52 then
				wait_frames_skipping(120)
			end
			if at <= 53 then
				helper_344d6cd8()
			end
			return true
		end)
		if ret ~= nil then
			return
		end
	end
	event.CancelDramaScene()
	event.LoadMes(0, -1)
	event.DelMonster(-1)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, -1)
	event.EohSyncChara(5, 1)
	event.EohSetShow(5, 1)
	event.EohSyncChara(6, 2)
	event.EohSetShow(6, 1)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.CharaActive(0)
	event.SetCharaPos(0, 83.74, 0.0, -19.9)
	event.SetCharaRot(0, 0.0, -1.32, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ActchrSetDefMotion(0)
	event.SetCameraPos(209.67, 35.0, -52.16)
	event.SetCameraRef(83.74, 30.0, -19.9)
	event.ResetCamera(0)
	event.LoadSound(1683)
	event.SetStatusbarShow(1)
	event.SetFadeIn(30)
	event.Finish()
end

return helper_5c274fcd
