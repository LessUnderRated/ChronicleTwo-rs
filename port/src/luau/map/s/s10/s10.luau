--!strict
-- map/s/s10/s10.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_01a87d28 = require("@lib/event/helper_01a87d28")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_0d0a5438 = require("@lib/event/helper_0d0a5438")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_3efe4328 = require("@lib/event/helper_3efe4328")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_4337dd96 = require("@lib/event/helper_4337dd96")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_5d8e6e04 = require("@lib/event/helper_5d8e6e04")
local helper_6cc2fba1 = require("@lib/event/helper_6cc2fba1")
local helper_82f69831 = require("@lib/event/helper_82f69831")
local helper_84a2c453 = require("@lib/event/helper_84a2c453")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_93cb8168 = require("@lib/event/helper_93cb8168")
local helper_946c0402 = require("@lib/event/helper_946c0402")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_b76e3b36 = require("@lib/event/helper_b76e3b36")
local helper_b7a01b67 = require("@lib/event/helper_b7a01b67")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_cce8673f = require("@lib/event/helper_cce8673f")
local helper_ce60ccd6 = require("@lib/event/helper_ce60ccd6")
local helper_cf15df04 = require("@lib/event/helper_cf15df04")
local helper_d552d8eb = require("@lib/event/helper_d552d8eb")
local helper_dae6aadb = require("@lib/event/helper_dae6aadb")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	helper_4337dd96()
	helper_d552d8eb()
	helper_82f69831()
end

--- Helper function.
local function helper_26034()
	event.Initialize()
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 16)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
	event.ObjsInitPas(0)
	event.ObjsSetPasFrm(0, 70)
	event.ObjsAddPas(0, 2730.28, 163.23, 630.94)
	event.ObjsAddPas(0, 2674.4, 138.96, 765.84)
	event.ObjsAddPas(0, 2616.58, 125.16, 846.91)
	event.ObjsStartPas(0)
	event.CmrsInit()
	event.CmrsSetPos(2590.33, 108.76, 1218.81)
	event.CmrsSetRef(2591.54, 130.16, 1030.59)
	event.SetFadeIn(15)
	helper_888ab2a3(40)
	event.SetFadeOut(15)
	helper_888ab2a3(15)
	event.EohSetFootSoundId(0, 0)
	helper_9dafbc83(vm.f32(2358.3), 0.0, vm.f32(1357.7), vm.f32(0.06))
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_28f5c()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(500, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		event.LoadSound(5200)
		var0 = event.SndLoadSound_2(5200) or var0
		event.SndSePlay(var0, 0)
		event.SndSeStop(var0, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e500/e500/")
		event.LoadMes(0, 5, "e500.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e500_mints.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e500_monica.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "steam_slow_l.gltf", "info", 34)
		event.CharaActive(0, 34)
		event.EohSyncChara(17, 34)
		event.ObjsInit(17)
		event.ObjsSyncObj(17, 17)
		event.ObjsSetPos(17, -120.0, 0.0, -1690.0)
		event.LoadChara(5, "steam_slow_r.gltf", "info", 35)
		event.CharaActive(0, 35)
		event.EohSyncChara(18, 35)
		event.ObjsInit(18)
		event.ObjsSyncObj(18, 18)
		event.ObjsSetPos(18, -120.0, 0.0, -1690.0)
		event.LoadChara(5, "train_hibana.gltf", "info", 36)
		event.CharaActive(0, 36)
		event.EohSyncChara(19, 36)
		event.ObjsInit(19)
		event.ObjsSyncObj(19, 19)
		event.CopyChara(5, 36, 37)
		event.CharaActive(0, 37)
		event.EohSyncChara(20, 37)
		event.ObjsInit(20)
		event.ObjsSyncObj(20, 20)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 32)
			event.LoadEquip(5, 0, 4, "info", 32)
			event.LoadEquip(5, 0, 3, "info", 32)
			event.LoadEquip(5, 0, 2, "info", 32, 33)
			event.LoadMotion(5, "event/e500/e500/e500_mints.gltf", "info", 32)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 32)
			event.EohSyncChara(0, 32)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 32)
			event.LoadEquip(5, 1, 4, "info", 32)
			event.LoadEquip(5, 1, 3, "info", 32)
			event.LoadEquip(5, 1, 2, "info", 32, 33)
			event.LoadMotion(5, "event/e500/e500/e500_monica.gltf", "info", 32)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 32)
			event.EohSyncChara(1, 32)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(0, 32)
		event.CharaActive(0, 33)
		event.LoadChara(5, "chara/p01_03a.gltf", "info", 8)
		event.CharaActive(0, 8)
		event.EohSyncChara(10, 8)
		event.ObjsInit(10)
		event.ObjsSyncObj(10, 10)
		event.LoadChara(5, "event/e500/e500/e207_vorneo.gltf", "info", 9)
		event.CharaActive(0, 9)
		event.EohSyncChara(11, 9)
		event.ObjsInit(11)
		event.ObjsSyncObj(11, 11)
		event.LoadChara(5, "event/e500/e500/e207_tom.gltf", "info", 10)
		event.CharaActive(0, 10)
		event.EohSyncChara(12, 10)
		event.ObjsInit(12)
		event.ObjsSyncObj(12, 12)
		event.EohSyncObj_2(2, "p01_train01")
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.EohSyncObj_3(3, "p01_train01", "train08-m0")
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.EohSyncObj_3(4, "p01_train01", "train08-m1")
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.EohSyncObj_3(5, "p01_train01", "train10-m0")
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 5)
		event.EohSyncObj_3(6, "p01_train01", "train10-m1")
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 6)
		event.EohSyncObj_3(7, "p01_train01", "train07-m3")
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 7)
		event.EohSyncObj_3(8, "p01_train01", "train07-m4")
		event.ObjsInit(8)
		event.ObjsSyncObj(8, 8)
		event.EohSyncObj_3(9, "p01_train01", "train07-m5")
		event.ObjsInit(9)
		event.ObjsSyncObj(9, 9)
		event.EohSyncObj_3(13, "p01_train01", "train05-m17")
		event.ObjsInit(13)
		event.ObjsSyncObj(13, 13)
		event.EohSyncObj_3(14, "p01_train01", "train05-m16")
		event.ObjsInit(14)
		event.ObjsSyncObj(14, 14)
		event.EohSyncObj_3(15, "p01_train01", "train06-m1")
		event.ObjsInit(15)
		event.ObjsSyncObj(15, 15)
		event.EohSyncObj_3(16, "p01_train01", "train06-m0")
		event.ObjsInit(16)
		event.ObjsSyncObj(16, 16)
		event.EohSyncObj_2(21, "p01_shadow-0")
		event.ObjsInit(21)
		event.ObjsSyncObj(21, 21)
		event.CharaActive(0, 122)
		event.CharaActive(0, 123)
		event.EohSetPos(0, 2382.27, 41.01, 1705.74)
		event.EohSetRot(0, 0.0, -2.3, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 6)
		event.EohSetPos(1, 2384.06, 42.55, 1716.02)
		event.EohSetRot(1, 0.0, -2.3, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 6)
		event.EohSetPos(10, 2397.6, 43.23, 1711.52)
		event.EohSetRot(10, 0.0, -2.3, 0.0)
		event.EohSetMotion(10, "立ち", 4)
		event.EohSetFootSoundId(10, 6)
		event.EohSetPos(2, 2128.3, 9.0, 2080.6)
		event.EohSetRot(2, 0.0, 2.495821, 0.0)
		event.EohSetRot(3, 0.0, 0.0, 0.0)
		event.EohSetRot(4, 0.0, 0.0, 0.0)
		event.EohSetRot(5, 0.0, 0.0, 0.0)
		event.EohSetRot(6, 0.0, 0.0, 0.0)
		event.EohSetRot(13, 0.0, 0.0, 0.0)
		event.EohSetRot(14, 0.0, 0.0, 0.0)
		event.EohSetRot(15, 0.0, 0.0, 0.0)
		event.EohSetRot(16, 0.0, 0.0, 0.0)
		event.EohSetShow(7, 0)
		event.EohSetShow(8, 0)
		event.EohSetShow(9, 0)
		event.EohSetShow(21, 0)
		event.EohSetPos(17, 2128.3, 9.0, 2080.6)
		event.EohSetPos(18, 2128.3, 9.0, 2080.6)
		event.SetStatus(1, 0, 8, 1)
		event.SetStatus(1, 32, 8, 1)
		event.SetStatus(1, 8, 8, 1)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.CmrsInit()
		event.CmrsSetPos(3045.82, 154.0, 603.5)
		event.CmrsSetRef(2536.0, 67.0, 2000.0)
		event.ObjsSetPos(17, 2105.42, 31.57, 2072.94)
		event.ObjsSetRot(17, 0.0, 2.44, 0.0)
		event.ObjsSetPos(18, 2136.76, 22.97, 2082.99)
		event.ObjsSetRot(18, 0.0, 2.44, 0.0)
		event.ObjsSetRot(19, 0.0, 2.44, 0.0)
		event.ObjsSetPos(19, 2136.76, 22.97, 2082.99)
		event.ObjsSetRot(19, 0.0, 2.44, 0.0)
		event.ObjsSetPos(20, 2136.76, 22.97, 2082.99)
		event.ObjsSetRot(20, 0.0, 2.2, 0.0)
		event.CmrsMove2(2704.05, 126.34, 969.56, 3385.02, 64.22, 713.94, 110, 2, 1.0)
		event.ObjsMove2(2, 3139.7, 6.0, 918.2, 90, 2, 1.0)
		event.ObjsMove2(17, 3031.0, 44.52, 961.3, 90, 2, 1.0)
		event.ObjsMove2(18, 3155.72, 91.2, 940.8, 90, 2, 1.0)
		event.ObjsMove2(19, 3113.06, 16.05, 850.16, 90, 2, 1.0)
		event.ObjsMove2(20, 3066.8, 16.05, 937.56, 90, 2, 1.0)
		event.ObjsRotDelay(13, 70)
		event.ObjsRotation2(13, 6.108652, 0.0, 0.0, 40, 2, 1.0)
		event.ObjsRotDelay(14, 70)
		event.ObjsRotation2(14, 6.108652, 0.0, 0.0, 40, 2, 1.0)
		event.ObjsRotDelay(15, 70)
		event.ObjsRotation2(15, 6.108652, 0.0, 0.0, 40, 2, 1.0)
		event.ObjsRotDelay(16, 70)
		event.ObjsRotation2(16, 6.108652, 0.0, 0.0, 40, 2, 1.0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(10, 0)
		event.EsmInitialize(5)
		event.EsmLoadBase("列車煙")
		event.EsmInitFix(5)
		event.EohSyncObj_2(2, "p01_train01")
		event.EsmCreate("列車煙")
		event.EsmSetValue(0, 2)
		event.SetFadeIn(30)
		event.ObjsSeDelay(2, 30)
		event.ObjsSePlay(2, var0, 6)
		helper_888ab2a3(90)
		event.EohSetShow(19, 1)
		event.EohSetShow(20, 1)
		event.CharaActive(36)
		event.CharaActive(37)
		event.ObjsSetMotion(19, "ｴﾌｪｸﾄ_火花", 4)
		event.ObjsSetMotion(20, "ｴﾌｪｸﾄ_火花", 4)
		helper_888ab2a3(30)
		event.SetCharaShow(36, 0, 1, 0.1)
		event.SetCharaShow(37, 0, 1, 0.1)
		event.CharaActive(34)
		event.CharaActive(35)
		event.EohSetShow(17, 1)
		event.EohSetShow(18, 1)
		event.ObjsSetMotion(17, "ぶしゅー", 6)
		event.ObjsSetMotion(18, "ぶしゅー", 6)
		event.ObjsMotionWait(17)
		wait_objects(2)
		helper_888ab2a3(75)
		event.CharaActive(0, 34)
		event.CharaActive(0, 35)
		event.SetFadeOut(20)
		helper_888ab2a3(20)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
		event.SoundAllStop()
		event.SndInReverb(0)
		event.GotoDrawChapter(5)
		vm.wait(7)
		event.SndInReverb(1)
		helper_888ab2a3(30)
		event.InitDramaScene()
		event.SetFadeIn(20)
		event.EohSetShow(7, 1)
		event.EohSetShow(8, 1)
		event.EohSetShow(9, 1)
		event.EohSetShow(21, 1)
		event.ObjsSetPos(2, 2786.4, 6.0, 1333.3)
		event.EohSetRot(2, 0.0, 2.422517, 0.0)
		event.StopBgm(0)
		event.LoadBgm(4)
		event.PlayBgm(0)
		event.CmrsSetPos(2066.31, 175.05, 1569.8)
		event.CmrsSetRef(2394.41, 50.17, 1680.51)
		event.CharaActive(0)
		event.CharaActive(32)
		event.CharaActive(33)
		event.CharaActive(8)
		helper_888ab2a3(5)
		event.SndSePlay(var0, 7)
		event.ObjsRotation(3, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(4, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(5, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(6, 0.0, -1.5, 0.0, 30)
		helper_888ab2a3(25)
		helper_888ab2a3(30)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, 2374.17, 41.99, 1697.89, 30)
		event.ObjsPosDelay(1, 30)
		event.ObjsMotionDelay(1, 30)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMove(1, 2362.0, 42.55, 1698.53, 45)
		event.ObjsPosDelay(10, 90)
		event.ObjsMotionDelay(10, 90)
		event.ObjsSetMotion(10, "歩き")
		event.ObjsMove(10, 2370.1, 42.05, 1695.1, 50)
		helper_888ab2a3(30)
		event.CmrsSetPos(2287.78, 88.48, 1626.22)
		event.CmrsSetRef(2356.53, 39.11, 1685.03)
		event.CmrsMove2(2290.62, 70.54, 1629.19, 2345.8, 32.47, 1678.44, 90, 2, 1.0)
		event.ObjsSetMotion(0, "上見歩き", 4)
		event.ObjsMove(0, 2315.09, 0.0, 1657.75, 180)
		event.ObjsMove(0, 2279.82, 0.0, 1641.44, 60)
		event.ObjsSetMotion(1, "上見歩き", 4)
		event.ObjsPosDelay(1, 15)
		event.ObjsMotionDelay(1, 15)
		event.ObjsMove(1, 2327.23, 0.0, 1646.23, 175)
		event.ObjsMove(1, 2299.73, 0.0, 1624.52, 90)
		event.ObjsPosDelay(10, 50)
		event.ObjsMotionDelay(10, 50)
		event.ObjsMove(10, 2317.79, 0.0, 1657.54, 160)
		event.ObjsMotionDelay(10, 160)
		event.ObjsNextMotion(10, "立ち")
		helper_888ab2a3(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.SetPakuAnim(0, "通常口パク")
		helper_0382f327(5000020, 60)
		event.ResetPakuAnim()
		helper_888ab2a3(30)
		event.CmrsSetPos(2276.95, 8.29, 1699.56)
		event.CmrsSetRef(2299.83, 22.14, 1634.76)
		event.CmrsMove2(2284.38, 11.92, 1696.16, 2289.11, 21.16, 1630.83, 90, 2, 1.0)
		event.EohSetFootSoundId(0, 16)
		event.ObjsNextMotion(0, "歩き", 4)
		event.ObjsMotionDelay(0, 60)
		event.ObjsNextMotion(0, "立ち")
		event.ObjsMotionDelay(1, 30)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMotionDelay(1, 135)
		event.ObjsNextMotion(1, "立ち")
		helper_888ab2a3(30)
		event.SetStatus(1, 0, 8, 0)
		event.SetStatus(1, 32, 8, 0)
		event.SetStatus(1, 8, 8, 0)
		event.EohSetFootSoundId(1, 16)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.SetPakuAnim(1, "通常口パク")
		helper_0382f327(5000030, 180)
		event.ResetPakuAnim()
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.SetPakuAnim(1, "通常口パク")
		helper_0382f327(5000040, 150)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		helper_4116e6bb(5000045)
		event.ResetPakuAnim()
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		helper_4116e6bb(5000050)
		wait_objects(0)
		event.CharaActive(9)
		event.CharaActive(10)
		event.SetCharaPos(9, 2428.11, 1.16, 1553.04)
		event.SetCharaRot(9, 0.0, -1.07, 0.0)
		event.SetCharaPos(10, 2407.91, 0.0, 1529.52)
		event.SetCharaRot(10, 0.0, -1.08, 0.0)
		event.ObjsSetPos(0, 2290.27, 0.0, 1646.13)
		event.ObjsSetRot(0, 0.0, -2.3, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, 2307.29, 0.0, 1634.49)
		event.ObjsSetRot(1, 0.0, -2.42, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsResetDaPosition(1)
		event.ObjsSetRot(10, 0.0, -2.78, 0.0)
		event.CmrsSetPos(2182.37, 51.29, 1680.81)
		event.CmrsSetRef(2393.77, -7.42, 1580.11)
		event.ObjsSetMotion(10, "会話", 6)
		event.ObjsNextMotion(10, "立ち", 4)
		event.ObjsTexAnime(10, 0)
		event.ObjsTexAnime(10, 1, "デフォルト顔")
		event.ObjsTexAnime(10, 1, "通常目パチ")
		event.SetPakuAnim(10, "通常口パク")
		helper_4116e6bb(5000060)
		event.ObjsSetMotion(11, "会話")
		event.ObjsMotionDelay(11, 30)
		event.ObjsNextMotion(11, "立ち", 4)
		event.ObjsMotionDelay(1, 15)
		event.ObjsSetMotion(1, "右向く", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.ObjsTexAnime(11, 0)
		event.ObjsTexAnime(11, 1, "目パチ")
		event.SetPakuAnim(11, "口パク")
		helper_0382f327(5000070, 200)
		event.ObjsSetMotion(12, "会話", 6)
		event.ObjsNextMotion(12, "立ち", 4)
		event.ObjsTexAnime(12, 0)
		event.ObjsTexAnime(12, 1, "目パチ")
		event.SetPakuAnim(12, "口パク")
		helper_4116e6bb(5000080)
		event.ResetPakuAnim()
		event.SetMesPreset(1, 4)
		set_window_mode(1, 4)
		event.MesMake_2(1, "ボルネオとトムは、ジオラマに\n配置できるようになった。")
		show_message(1, -1, 8, 0, 0)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(27)
	event.CancelDramaScene()
	event.EohSetPos(2, 2837.4, 6.0, 1289.1)
	event.EohSetRot(2, 0.0, 2.4260077, 0.0)
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	event.EohSetShow(21, 1)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.EohSetRot(6, 0.0, 0.0, 0.0)
	event.SetStatus(1, 0, 8, 0)
	event.SetStatus(1, 32, 8, 0)
	event.SetStatus(1, 8, 8, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.CharaActive(1, 122)
	event.CharaActive(1, 123)
	event.SndSeStop(var0, 6)
	event.SndSeStop(var0, 7)
	event.EsmClear()
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(34)
	event.DeleteChara(35)
	event.DeleteChara(36)
	event.DeleteChara(37)
	event.DeleteChara(8)
	event.LoadMes(0, -1)
	event.SetSavedataEtc(0, 7)
	helper_9dafbc83(vm.f32(2155.3), 0.0, vm.f32(1707.1), vm.f32(2.46))
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_2798c()
	local var0: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local rot_y: f32 = 0
	local angle: f32 = 0
	local var11: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_018.sound.json") or var0
	helper_b76e3b36()
	event.CharaActive(0, 8)
	event.CharaActive(0, 9)
	event.CharaActive(0, 10)
	event.CharaActive(0, 0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSyncObj_2(1, "p01_train01")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
	event.EohSyncObj_3(2, "p01_train01", "train08-m4")
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	event.EohSyncObj_3(3, "p01_train01", "train08-m5")
	event.ObjsInit(3)
	event.ObjsSyncObj(3, 3)
	event.EohSyncObj_3(4, "p01_train01", "train10-m4")
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.EohSyncObj_3(5, "p01_train01", "train10-m5")
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.EohSetPos(0, 2101.51, 40.82, 2060.52)
	event.EohSetRot(0, 0.0, -2.26, 0.0)
	event.EohResetDaPosition(0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetFootSoundId(0, 6)
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	do
		local _, out2, _ = event.EohGetRot(1)
		rot_y = out2 or rot_y
	end
	angle = vm.f32(rot_y - vm.f32(3.1415927))
	angle = event.AngleLimit(angle) or angle
	pos_x = vm.f32(vm.f32(vm.sin(angle) * 200.0) + pos_x_2)
	pos_y = pos_y_2
	pos_z = vm.f32(vm.f32(vm.cos(angle) * 200.0) + pos_z_2)
	event.EohSetPos(1, pos_x, pos_y, pos_z)
	event.ObjsMove2(1, pos_x_2, pos_y_2, pos_z_2, 40, 2, 1.0)
	event.CmrsInit()
	event.CmrsSetPos(1514.63, 208.98, 2402.32)
	event.CmrsSetRef(1792.39, 155.32, 2165.78)
	event.AssignStack(5)
	event.ClearStack(5)
	event.EsmInitialize(5)
	event.EsmLoadBase("列車煙")
	event.EsmInitFix(5)
	event.EohSyncObj_2(1, "p01_train01")
	event.EsmCreate("列車煙")
	event.EsmSetValue(0, 1)
	event.SndSePlay(var0, 0)
	event.SetFadeIn(30)
	wait_objects(1)
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	helper_d552d8eb()
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.CmrsSetPos(1899.12, 13.68, 1889.27)
	event.CmrsSetRef(1958.62, 31.92, 1939.67)
	var11 = event.GetSndId(2) or var11
	event.SndSePlay(var11, 106)
	event.CharaActive(0)
	event.EohSetPos(1, pos_x_2, pos_y_2, pos_z_2)
	event.ObjsRotation(2, 0.0, 1.5, 0.0, 30)
	event.ObjsRotation(3, 0.0, -1.5, 0.0, 30)
	event.ObjsRotation(4, 0.0, 1.5, 0.0, 30)
	event.ObjsRotation(5, 0.0, -1.5, 0.0, 30)
	helper_888ab2a3(30)
	event.ObjsSetMotion(0, "走り")
	event.ObjsMotionDelay(0, 56)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsMove(0, 2087.08, 40.82, 2048.3, 14)
	event.ObjsMove(0, 2037.85, 0.0, 2005.99, 32)
	event.ObjsMove(0, 2017.4, 0.0, 1988.67, 10)
	helper_888ab2a3(46)
	event.EohSetFootSoundId(0, 16)
	event.SetFadeOut(15)
	helper_888ab2a3(15)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.CharaActive(8)
	event.CharaActive(9)
	event.CharaActive(10)
	event.EohSetFootSoundId(0, 0)
	event.CharaActive(0)
	helper_9dafbc83(vm.f32(2155.3), 0.0, vm.f32(1707.1), vm.f32(2.46))
	event.ResetCamera(1, 3.1415927, 10.0)
	event.EsmClear()
	event.SetFadeIn(15)
end

--- Helper function.
local function helper_26514()
	local var0: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local rot_y: f32 = 0
	local angle: f32 = 0
	local var14: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_019.sound.json") or var0
	event.CharaActive(0, 8)
	event.CharaActive(0, 9)
	event.CharaActive(0, 10)
	event.CharaActive(0, 0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSyncObj_2(1, "p01_train01")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.EohSyncObj_3(2, "p01_train01", "s3601_12-m5")
	event.ObjsSyncObj(2, 2)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(3, "p01_train01", "s3601_14-m10")
	event.ObjsSyncObj(3, 3)
	event.ObjsSetRot(3, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(4, "p01_train01", "s3601_16-m4")
	event.ObjsSyncObj(4, 4)
	event.ObjsSetRot(4, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(5, "p01_train01", "s3601_17-m2")
	do
		local out1, out2, out3 = event.EohGetPos(5)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.ObjsSyncObj(5, 5)
	event.ObjsSetRot(5, 0.0, 0.0, 0.0)
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_3 = out1 or pos_x_3
		pos_y_3 = out2 or pos_y_3
		pos_z_3 = out3 or pos_z_3
	end
	do
		local _, out2, _ = event.EohGetRot(1)
		rot_y = out2 or rot_y
	end
	angle = vm.f32(rot_y - vm.f32(3.1415927))
	angle = event.AngleLimit(angle) or angle
	pos_x_2 = vm.f32(vm.f32(vm.sin(angle) * 200.0) + pos_x_3)
	pos_y_2 = pos_y_3
	pos_z_2 = vm.f32(vm.f32(vm.cos(angle) * 200.0) + pos_z_3)
	event.EohSetPos(1, pos_x_2, pos_y_2, pos_z_2)
	event.ObjsMove2(1, pos_x_3, pos_y_3, pos_z_3, 40, 2, 1.0)
	event.CmrsInit()
	event.CmrsSetPos(1514.63, 208.98, 2402.32)
	event.CmrsSetRef(1792.39, 155.32, 2165.78)
	event.SetFadeIn(30)
	event.SndSePlay(var0, 0)
	wait_objects(1)
	event.CmrsSetPos(1890.88, 13.68, 2033.57)
	event.CmrsSetRef(1970.25, 31.92, 2037.52)
	event.CharaActive(0)
	event.EohSetPos(1, pos_x_3, pos_y_3, pos_z_3)
	event.ObjsSetPos(0, 2125.0, 40.0, 2080.0)
	event.ObjsSetRot(0, 0.0, -2.26, 0.0)
	event.ObjsRotation(2, 0.0, 0.0, 1.5707964, 30)
	event.ObjsRotation(3, 0.0, 0.0, 1.5707964, 30)
	event.ObjsRotation(4, 0.0, 0.0, -0.3926991, 30)
	event.ObjsRotation(5, 0.0, 0.0, -0.3926991, 30)
	var14 = event.GetSndId(2) or var14
	event.SndSePlay(var14, 92)
	helper_888ab2a3(30)
	event.ObjsMove(5, pos_x + 11.25, pos_y - 4.75, pos_z, 30)
	helper_888ab2a3(20)
	event.ObjsMove(0, 2050.0, 0.0, 2015.0, 30)
	event.ObjsSetMotion(0, "走り", 4)
	event.EohSetFootSoundId(0, 6)
	wait_objects(0)
	event.EohSetFootSoundId(0, 0)
	event.ObjsSetMotion(0, "立ち")
	helper_888ab2a3(10)
	event.SetFadeIn(1)
	event.EohSetPos(1, pos_x_3, pos_y_3, pos_z_3)
	event.EohSetRot(1, 0.0, rot_y, 0.0)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetPos(5, pos_x, pos_y, pos_z)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.CharaActive(8)
	event.CharaActive(9)
	event.CharaActive(10)
	event.CharaActive(0)
	helper_9dafbc83(vm.f32(2155.3), 0.0, vm.f32(1707.1), vm.f32(2.46))
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(15)
end

--- Helper function.
local function helper_23400000()
	helper_238b5abc(1)
	helper_038a2e4d(30)
	helper_038a2e4d(20)
	helper_238b5abc(0)
	helper_038a2e4d(10)
	helper_43f02c95(vm.f32(2155.3), 0.0, vm.f32(1707.1), vm.f32(2.46))
end

--- Helper function.
local function helper_25644()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		at = 1
		var0 = helper_ed4dc120(5, 3)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 16)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var0 == 0 then
			event.CmrsSetPos(2590.33, 108.76, 1218.81)
			event.CmrsSetRef(2591.54, 130.16, 1030.59)
			event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 70)
			event.ObjsAddPas(0, 2616.58, 125.16, 846.91)
			event.ObjsAddPas(0, 2674.4, 138.96, 765.84)
			event.ObjsAddPas(0, 2730.28, 163.23, 630.94)
			event.ObjsStartPas(0)
			at = 2
			helper_888ab2a3(50)
			event.SetFadeOut(20)
			at = 3
			helper_888ab2a3(20)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var1 = out1 or var1
				var2 = out2 or var2
				var3 = out3 or var3
			end
			var4 = vm.f32(vm.f32(vm.sin(vm.f32(-0.42)) * 30.0) + var1)
			var5 = 0.0
			var6 = vm.f32(vm.f32(vm.cos(vm.f32(-0.42)) * 30.0) + var3)
			event.ObjsMove(0, var4, var5, var6, 30, 1)
			event.ObjsReference(0, var4, var5, var6, 10)
			event.ObjsSetMotion(0, "歩き")
			var7 = 0
			while var7 < 30 do
				do
					local out1, out2, out3 = event.GetCharaPos(0)
					var1 = out1 or var1
					var2 = out2 or var2
					var3 = out3 or var3
				end
				var2 = vm.f32(var2 + 30.0)
				event.SetCameraRef(var1, var2, var3)
				var7 = var7 + 1
				at = 4
				vm.wait(4)
			end
		end
		event.EohSetFootSoundId(0, 0)
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				helper_038a2e4d(50)
			end
			if at <= 2 then
				helper_038a2e4d(20)
			end
			return 1
		end
		if at <= 4 then
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_24064()
	local var0: s32 = 0
	local var1: s32 = 0
	local now_map_no: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local flag_4: s32 = 0
	local flag_5: s32 = 0
	local flag_6: s32 = 0
	local var9: f32 = 0
	local player_chara: s32 = 0
	local var11: any = 0
	local now_party_chara_id: s32 = 0
	local now_map_no_2: s32 = 0
	local flag_7: s32 = 0
	local flag_8: s32 = 0
	local flag_9: s32 = 0
	local var17: s32 = 0
	var0 = event.GetEventData_2(13) or var0
	var1 = 0
	now_map_no = event.GetNowMapNo() or now_map_no
	if now_map_no == 16 then
		flag = event.GetFlag(280) or flag
		flag_2 = event.GetFlag(283) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var1 = 1
		end
	end
	if now_map_no == 54 then
		flag_3 = event.GetFlag(372) or flag_3
		flag_4 = event.GetFlag(360) or flag_4
		if flag_3 ~= 0 and flag_4 == 0 then
			var1 = 1
		end
	end
	if now_map_no == 83 then
		flag_5 = event.GetFlag(448) or flag_5
		flag_6 = event.GetFlag(452) or flag_6
		if flag_5 ~= 0 and flag_6 == 0 then
			var1 = 1
		end
	end
	if var1 == 1 then
		set_window_mode(0, 1)
		var9 = helper_4e93f9fc(var0, 0, 0)
		player_chara = event.GetControlChrid() or player_chara
		event.MesMake_2(0, "出発するか？")
		helper_0ffc2526(0, -1, var0, player_chara, 0)
		event.SetMotion(var0, "立ち")
		event.SetMesShippo(0, 0)
		event.SetMesQuestionGyou(0, 0)
		event.SetMesEtc(0, 0, 1)
		event.MesMake_2(0, "うん！\nもう少しここにいるよ。")
		var11 = helper_bac0e30d(0, -1, 5, 256, 208, 2, 0)
		event.SetMesEtc(0, 0, 0)
		event.SetMesShippo(0, 1)
		if var11 ~= 0 then
			event.SetMotion(var0, "会話")
			event.MesMake_2(0, "うむ、しっかりがんばるんじゃぞ。")
			helper_0ffc2526(0, -1, var0, player_chara, 0)
		end
		helper_5d8e6e04(var0, var9, 0, 0)
		if var11 == 0 then
			return
		else
			return
		end
	end
	now_party_chara_id = event.GetNowPartyChara() or now_party_chara_id
	if now_party_chara_id == 1 then
		set_window_mode(0, 1)
		event.MesMake_2(0, "二人とも気をつけてな。")
		now_map_no_2 = event.GetNowMapNo() or now_map_no_2
		flag_7 = event.GetFlag(300) or flag_7
		if now_map_no_2 == 16 and flag_7 == 0 then
			event.MesMake_2(0, "まだ出発はできんなぁ・・・\nもう少し待ってくれ。")
		end
		flag_8 = event.GetFlag(400) or flag_8
		if now_map_no_2 == 54 and flag_8 == 0 then
			event.MesMake_2(0, "まだ出発はできんなぁ・・・\nもう少し待ってくれ。")
		end
		flag_9 = event.GetFlag(500) or flag_9
		if now_map_no_2 == 83 and flag_9 == 0 then
			event.MesMake_2(0, "まだ出発はできんなぁ・・・\nもう少し待ってくれ。")
		end
		helper_1c04a0eb(var0, -1, 0, 0)
	else
		var17 = event.GetEventData_2(13) or var17
		helper_dae6aadb(var17, 1)
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local old_map_no: s32 = 0
	local var1: s32 = 0
	local mc_load: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event_99()
		old_map_no = event.GetOldMapNo() or old_map_no
		var1 = event.GetMapType() or var1
		mc_load = event.CheckMcLoad() or mc_load
		if mc_load == 1 then
			helper_9dafbc83(vm.f32(2373.8), 0.0, vm.f32(1497.9), vm.f32(-2.17))
			event.ResetCamera(1, 0.0, 20.0)
		elseif var1 ~= -1 then
			if old_map_no == 3 then
				at = 1
				helper_26034()
			else
				flag = event.GetFlag(452) or flag
				flag_2 = event.GetFlag(500) or flag_2
				if flag == 1 and flag_2 == 0 then
					at = 2
					helper_28f5c()
					helper_82f69831()
					event.SetNpcStatus(2, 130)
					event.SetNpcStatus(13, 130)
					return
				end
				var5 = event.GetCnt(1) or var5
				if (old_map_no == 18 or old_map_no == 23 or old_map_no == 120 or old_map_no == 108) and var5 == 5 then
					helper_946c0402()
					event.SetFadeIn(15)
					event.ResetCamera(1, 0.0)
				else
					var6 = event.GetChapter() or var6
					if var6 ~= 6 and var6 ~= 7 then
						at = 3
						helper_2798c()
					else
						at = 4
						helper_26514()
					end
				end
			end
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_28f5c()
				return vm.continue_with(function()
					helper_82f69831()
					event.SetNpcStatus(2, 130)
					event.SetNpcStatus(13, 130)
					return
				end)
			end
			helper_01a87d28()
			return 0
		end
		if at <= 4 then
			if at <= 3 then
				helper_23400000()
			end
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_26514

--- Event 250, which map data, a script or the engine runs by number.
function script.event_250()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		var0 = helper_3efe4328()
		if var0 ~= 1 then
			return
		end
		event.SetCnt(1, 5)
		var1 = event.GetChapter() or var1
		var2 = event.GetEventData_2(3) or var2
		if var2 <= 1 then
			if var1 ~= 6 and var1 ~= 7 then
				at = 2
				helper_cf15df04()
				event.StopBgm(0)
				at = 3
				vm.wait(3)
				event.MapJump_2(-1, "s08")
			else
				at = 4
				helper_cf15df04()
				event.StopBgm(0)
				at = 5
				vm.wait(5)
				event.MapJump_2(-1, "s37")
			end
			at = 6
			vm.wait(6)
		elseif var1 ~= 6 and var1 ~= 7 then
			at = 7
			helper_cce8673f(1)
			event.StopBgm(0)
			event.MapJump_2(100, "s07")
		else
			at = 8
			helper_0d0a5438()
			event.StopBgm(0)
			event.MapJump_2(100, "s38")
		end
		return
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				var0 = received[1] :: number
			end
			return 0
		end
		if at <= 8 then
			if at <= 3 then
				helper_6cc2fba1()
			end
			if at <= 6 then
				helper_84a2c453(1)
			end
			if at <= 7 then
				helper_b7a01b67()
			end
			return 0
		end
		return nil
	end)
end

--- Event 400, which map data, a script or the engine runs by number.
script.event_400 = helper_93cb8168

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	event_99()
	helper_9dafbc83(2288.0, 0.0, 1488.0, vm.f32(0.87))
	event.ResetCamera(1, 3.14, 10)
	event.SetFadeIn(30)
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	local flag: s32 = 0
	if helper_25644() ~= 0 then
		flag = event.GetFlag(504) or flag
		if flag == 0 then
			event.MapJump_3(-1, "s41", 501)
			vm.wait(2)
		else
			event.MapJump_2(-1, "g04")
			vm.wait(3)
		end
	end
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local var0: s32 = 0
	var0 = event.GetEventData_2(14) or var0
	if var0 == 1 then
		helper_24064()
	end
	if var0 == 301 then
		helper_ce60ccd6()
	end
end

--- Event 15000, which map data, a script or the engine runs by number.
function script.event_15000()
	event.SetFlag(500, 0)
	event_99()
	helper_28f5c()
	helper_82f69831()
end

return script
