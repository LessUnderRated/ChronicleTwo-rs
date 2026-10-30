--!strict
-- map/s/s66/s66_5.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_090edf9b = require("@lib/event/helper_090edf9b")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_1e0108c8 = require("@lib/event/helper_1e0108c8")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_29c7463c = require("@lib/event/helper_29c7463c")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_64cf735e = require("@lib/event/helper_64cf735e")
local helper_ac753808 = require("@lib/event/helper_ac753808")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_e948()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	event.LoadMes(0, 5, "event/e700/e736/e736_1.txt")
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 33
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e700/e736/e736_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 37)
		event.LoadMotion(5, "event/e700/e736/e736_monica.gltf", "info", global1)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 37)
	end
	if active_chr_no == 1 then
		global0 = 33
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 37)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e700/e736/e736_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 37)
		event.LoadMotion(5, "event/e700/e736/e736_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.CharaActive(0, global1)
	end
	event.AssignStack(6)
	event.ClearStack(6)
	event.LoadChara(6, "event/e700/e736/e736_c_union.gltf", "info", 44)
	event.CharaActive(0, 44)
	event.LoadChara(6, "event/e700/e736/e736_eina.gltf", "info", 38)
	event.CharaActive(0, 38)
	event.EohSyncChara(4, 38)
	event.ObjsInit(4, 38)
	event.ObjsSyncObj(4, 4)
	event.LoadChara(6, "event/e700/e736/p00_05a.gltf", "info", 39)
	event.CharaActive(0, 39)
	event.EohSyncChara(5, 39)
	event.ObjsInit(5, 39)
	event.ObjsSyncObj(5, 5)
	event.LoadChara(6, "event/e700/e736/p00_31a.gltf", "info", 40)
	event.CharaActive(0, 40)
	event.EohSyncChara(6, 40)
	event.ObjsInit(6, 40)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(6, "event/e700/e736/e736_kieru_hikari.gltf", "info", 45)
	event.CharaActive(0, 45)
	event.CopyChara(6, 45, 46)
	event.CharaActive(0, 46)
	event.CopyChara(6, 45, 47)
	event.CharaActive(0, 47)
	event.CopyChara(6, 45, 48)
	event.CharaActive(0, 48)
	event.EohSyncObj_2(14, "p01_s98")
	event.ObjsInit(14)
	event.ObjsSyncObj(14, 14)
	event.EohSetShow(14, 1)
	event.ObjsSetPos(14, -2000.0, 9000.0, -9000.0)
	event.ObjsSetRot(14, 0.0, 0.0, 0.0)
	event.EohSyncObj_2(15, "p01_gekka")
	event.EohSetShow(15, 0)
end

--- Helper function.
local function helper_21800000()
	global0 = 0
	global1 = 33
	global0 = 33
	global1 = 0
end

--- Helper function.
local function helper_e3f4()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(37)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(37)
	end
	event.DeleteChara(38)
	event.DeleteChara(39)
	event.DeleteChara(40)
	event.DeleteChara(41)
	event.DeleteChara(42)
	event.DeleteChara(43)
	event.DeleteChara(44)
	event.DeleteChara(45)
	event.DeleteChara(46)
	event.DeleteChara(47)
	event.DeleteChara(48)
	event.DeleteChara(49)
	event.DeleteChara(50)
	event.DeleteChara(51)
	event.DeleteChara(52)
	event.EohSetShow(14, 0)
	event.EohSetShow(15, 1)
end

--- Helper function.
local function helper_fdc4()
	local var4: s32 = 0
	local projection: f32 = 0
	local time: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(736, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		at = 1
		vm.wait(1)
		at = 2
		vm.wait(2)
		at = 3
		vm.wait(3)
		at = 4
		vm.wait(4)
		event.LoadBgm(118)
		event.LoadSound(6243)
		var4 = event.SndLoadSound_2(6243) or var4
		event.SetFadeOut(30)
		at = 5
		wait_frames(45)
		helper_e948()
		projection = event.GetProjection() or projection
		time = event.GetTime() or time
		event.InitDramaScene()
		event.SetTime(21.5)
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(4, 2)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "泣き顔")
		event.ObjsTexAnime(0, 1, "泣き目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "かなし顔")
		event.ObjsTexAnime(1, 1, "かなし目パチ")
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.CmrsSetPos(6.53, 80.05, 766.11)
		event.CmrsSetRef(4.76, 541.47, 211.05)
		at = 6
		wait_frames(60)
		event.CmrsMove2(6.53, 80.05, 766.11, 4.76, 64.48, 211.05, 480, 2, 0.5)
		event.ObjsSetPos(0, 6.03, -7.06, 200.37)
		event.ObjsSetRot(0, 0.0, 2.33, 0.0)
		event.ObjsSetPos(1, 24.67, -7.06, 178.01)
		event.ObjsSetRot(1, 0.0, -0.67, 0.0)
		event.ObjsSetPos(4, -39.08, -7.06, 139.45)
		event.ObjsSetRot(4, 0.0, 0.65, 0.0)
		event.ObjsSetPos(5, -63.71, -7.06, 154.12)
		event.ObjsSetRot(5, 0.0, 1.01, 0.0)
		event.ObjsSetPos(6, -79.03, -7.06, 188.9)
		event.ObjsSetRot(6, 0.0, 1.01, 0.0)
		event.SetCharaPos(44, 0.0, 3300.0, 0.0)
		event.SetScale(44, 30.0, 30.0, 30.0)
		event.SetMotion(44, "ループ", 4, -1, 1)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 38)
		event.CharaActive(1, 39)
		event.CharaActive(1, 40)
		event.CharaActive(1, 44)
		event.SndSePlay(var4, 2)
		event.SetFadeIn(30)
		event.PlayBgm(0)
		event.ObjsSetMotion(0, "モニカ見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		at = 7
		wait_frames(15)
		at = 8
		wait_camera()
		event.CmrsSetPos(23.13, 18.08, 243.15)
		event.CmrsSetRef(13.28, 16.71, 190.69)
		event.CmrsMove2(-5.38, 18.08, 240.82, 13.28, 16.71, 190.69, 360, 2, 1.0)
		event.SetPakuAnim(1, "通常口パク")
		at = 9
		helper_1584c528(7360010, -1)
		at = 10
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "かなし顔")
		event.ObjsTexAnime(1, 1, "目あき～目とじ")
		event.ObjsSetMotion(1, "うつむき", 6)
		event.ObjsNextMotion(1, "うつむきL", 4)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 11
		helper_1584c528(7360015, 120)
		at = 12
		wait_frames(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "かなし顔")
		event.ObjsTexAnime(1, 1, "目とじ～目あき")
		event.ObjsSetMotion(1, "もどり", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 13
		helper_1584c528(7360020, -1)
		event.ResetPakuAnim()
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "かなし顔")
		event.ObjsTexAnime(1, 1, "うる目")
		at = 14
		wait_frames(15)
		at = 15
		wait_camera()
		event.CmrsSetPos(9.36, 18.08, 134.06)
		event.CmrsSetRef(18.46, 16.71, 186.15)
		event.SetCrossfade(30)
		event.CmrsMove2(37.9, 18.08, 136.86, 18.46, 16.71, 186.15, 240, 2, 1.0)
		at = 16
		wait_frames(30)
		event.ObjsSetMotion(0, "モニカ見立うなづき", 6)
		event.ObjsNextMotion(0, "モニカ見立ち", 4)
		event.SetPakuAnim(0, "わらい口パク")
		at = 17
		helper_1584c528(7360030, -1)
		event.ResetPakuAnim()
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "泣き顔")
		event.ObjsTexAnime(1, 1, "泣き目パチ")
		event.SetPakuAnim(0, "わらい口パク")
		at = 18
		helper_1584c528(7360035, -1)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "泣き顔")
		event.ObjsTexAnime(1, 1, "泣き目あき～目とじ")
		event.ObjsSetMotion(1, "うなづき", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "口わらい")
		at = 19
		helper_1584c528(7360040, 90)
		event.ResetPakuAnim()
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "泣き顔")
		event.ObjsTexAnime(0, 1, "泣き目～通常目")
		at = 20
		wait_frames(15)
		at = 21
		wait_camera()
		event.CmrsSetPos(40.36, 16.65, 283.36)
		event.CmrsSetRef(10.43, 16.71, 186.62)
		event.CmrsMove2(2.3, 16.65, 295.13, -27.63, 16.71, 198.39, 210, 2, 1.0)
		event.ObjsSetMotion(0, "左", 6)
		event.ObjsNextMotion(0, "左L", 4)
		at = 22
		helper_1584c528(7360050, -1)
		at = 23
		wait_frames(30)
		at = 24
		helper_1584c528(7360060, -1)
		at = 25
		wait_camera()
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "泣き顔")
		event.ObjsTexAnime(0, 1, "通常目～かなし目")
		event.ObjsSetMotion(4, "歩き")
		event.ObjsMove(4, -8.93, -7.06, 177.8, 120)
		at = 26
		wait_frames(30)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "目あき～目とじ")
		at = 27
		wait_frames(30)
		at = 28
		wait_camera()
		event.ObjsSetPos(1, -118.41, -7.06, 31.17)
		event.ObjsSetRot(1, 0.0, 0.53, 0.0)
		event.ObjsSetPos(0, -8.93, -7.06, 177.8)
		event.ObjsSetRot(0, 0.0, 0.65, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "かなし目パチ")
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "目とじ～目あき")
		event.CmrsSetPos(-4.66, 14.22, 222.94)
		event.CmrsSetRef(-5.05, 19.91, 179.84)
		event.ObjsSetMotion(0, "エイナ見立ち", 4, -1, 1)
		at = 29
		wait_objects(4)
		event.ObjsSetMotion(4, "立ち")
		event.SetPakuAnim(4, "わらい口パク")
		at = 30
		helper_1584c528(7360070, -1)
		event.ResetPakuAnim()
		event.SetPakuAnim(0, "通常口パク")
		at = 31
		helper_1584c528(7360080, -1)
		event.ResetPakuAnim()
		at = 32
		wait_frames(30)
		event.SetPakuAnim(4, "わらい口パク")
		at = 33
		helper_1584c528(7360090, -1)
		event.ResetPakuAnim()
		at = 34
		wait_frames(30)
		event.CmrsSetPos(-45.47, 18.64, 171.07)
		event.CmrsSetRef(-4.63, 19.91, 182.55)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "通常目～泣き目")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "目あき～目とじ")
		event.ObjsSetMotion(0, "下見る", 6)
		event.ObjsNextMotion(0, "下見るL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 35
		helper_1584c528(7360100, -1)
		event.ResetPakuAnim()
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "泣き目パチ")
		at = 36
		wait_objects(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "目とじ～目あき")
		event.ObjsSetMotion(0, "下見る戻り", 6)
		event.ObjsNextMotion(0, "エイナ見立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 37
		helper_1584c528(7360110, -1)
		event.ResetPakuAnim()
		at = 38
		wait_objects(0)
		event.CmrsSetPos(-4.66, 14.22, 222.94)
		event.CmrsSetRef(-5.05, 19.91, 179.84)
		event.SetPakuAnim(4, "わらい口パク")
		at = 39
		helper_1584c528(7360120, -1)
		event.ResetPakuAnim()
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "うる目")
		event.ObjsTexAnime(0, 1, "半口")
		event.SetPakuAnim(4, "通常口パク")
		at = 40
		helper_1584c528(7360130, -1)
		event.ResetPakuAnim()
		at = 41
		wait_frames(15)
		event.CmrsSetPos(-45.47, 18.64, 171.07)
		event.CmrsSetRef(-4.63, 19.91, 182.55)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "うる目～目とじ")
		event.ObjsTexAnime(0, 1, "半口")
		event.SndSePlay(var4, 3)
		event.ObjsSetMotion(0, "涙をふく", 6)
		event.ObjsNextMotion(0, "エイナ見立ち", 4)
		event.ObjsMotionWait(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "目とじ～目あき２")
		event.SetPakuAnim(0, "通常口パク")
		at = 42
		helper_1584c528(7360140, -1)
		event.ResetPakuAnim()
		at = 43
		wait_objects(0)
		event.ObjsSetMotion(0, "手を広げる", 6)
		event.ObjsNextMotion(0, "手を広げるL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 44
		helper_1584c528(7360145, 120)
		event.ResetPakuAnim()
		at = 45
		wait_objects(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "前向き～下向き")
		event.ObjsSetMotion(0, "手を広げる戻り", 6)
		event.ObjsNextMotion(0, "エイナ見立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 46
		helper_1584c528(7360150, 90)
		event.ResetPakuAnim()
		at = 47
		wait_frames(15)
		at = 48
		wait_objects(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "下向き～目とじ")
		event.ObjsSetMotion(0, "下見る", 6)
		event.ObjsNextMotion(0, "下見るL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 49
		helper_1584c528(7360155, -1)
		event.ResetPakuAnim()
		at = 50
		wait_objects(0)
		at = 51
		wait_frames(60)
		event.ObjsSetMotion(0, "下見る戻り", 2)
		at = 52
		wait_frames(60)
		event.CmrsSetPos(-45.34, 17.5, 214.87)
		event.CmrsSetRef(37.61, 23.19, 150.26)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "泣き目あき～目とじ")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "目とじ～目あき～目とじ")
		event.ObjsTexAnime(0, 1, "口とじ～半口～口とじ")
		event.ObjsSetMotion(0, "抱く", 6)
		event.ObjsNextMotion(0, "抱くL", 4)
		event.ObjsSetMotion(4, "抱く", 6)
		event.ObjsNextMotion(4, "抱くL", 4)
		event.SndSePlay(var4, 4)
		event.SetPakuAnim(4, "わらい口パク")
		at = 53
		helper_1584c528(7360160, -1)
		event.ResetPakuAnim()
		at = 54
		wait_objects(0)
		event.SetPakuAnim(4, "わらい口パク")
		at = 55
		helper_1584c528(7360170, -1)
		event.ResetPakuAnim()
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "目とじ～泣き目あき")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "目とじ～目あき３")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsSetMotion(0, "抱く戻り", 2)
		event.ObjsNextMotion(0, "抱く戻りL", 4)
		event.ObjsSetMotion(4, "抱く戻り", 2)
		event.ObjsNextMotion(4, "抱く戻りL", 4)
		event.SetPakuAnim(4, "通常口パク")
		at = 56
		helper_1584c528(7360180, -1)
		event.ResetPakuAnim()
		at = 57
		wait_objects(0)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "うる目")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "かなし顔")
		event.ObjsTexAnime(0, 1, "うる目２")
		event.ObjsTexAnime(0, 1, "半口")
		at = 58
		wait_frames(20)
		event.ObjsSetMotion(4, "後ずさり", 2)
		event.ObjsNextMotion(4, "後ずさりL", 4)
		event.ObjsMove(4, -24.91, -7.06, 157.36, 60)
		at = 59
		wait_objects(4)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "泣き顔")
		event.ObjsTexAnime(1, 1, "泣き目パチ")
		event.ObjsTexAnime(1, 1, "口わらい")
		event.CmrsInitPas()
		event.CmrsSetPasFrm(120)
		event.CmrsAddPas(34.99, 37.57, 229.69, -39.55, 3.5, 143.97)
		event.CmrsAddPas(-14.43, 37.57, 171.71, -89.76, 3.5, 90.67)
		event.CmrsStartPas()
		event.ObjsSetRot(0, 0.0, -2.35, 0.0)
		event.ObjsSetPos(4, -68.67, -7.06, 112.54)
		event.ObjsSetRot(4, 0.0, 0.77, 0.0)
		event.ObjsSetPos(5, -139.47, -7.06, 60.43)
		event.ObjsSetRot(5, 0.0, 0.65, 0.0)
		event.ObjsSetPos(6, -144.0, -7.06, 85.39)
		event.ObjsSetRot(6, 0.0, 0.89, 0.0)
		event.SetCharaPos(45, -118.41, -7.06, 31.17)
		event.SetCharaPos(46, -68.67, -7.06, 112.54)
		event.SetCharaPos(47, -139.47, -7.06, 60.43)
		event.SetCharaPos(48, -144.0, -7.06, 85.39)
		event.ObjsSetMotion(0, "母さん！！", 6)
		event.ObjsNextMotion(0, "母さん！！L", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 60
		helper_1584c528(7360190, -1)
		event.ResetPakuAnim()
		event.SndSePlay(var4, 5)
		event.SetMotion(47, "発動", 6, -1, 1)
		event.CharaActive(1, 47)
		event.SetCharaShow(39, 0, 1, 0.025)
		at = 61
		wait_frames(3)
		event.SetMotion(48, "発動", 6, -1, 1)
		event.CharaActive(1, 48)
		event.SetCharaShow(40, 0, 1, 0.025)
		at = 62
		wait_frames(5)
		event.SetMotion(45, "発動", 6, -1, 1)
		event.CharaActive(1, 45)
		event.SetCharaShow(global1, 0, 1, 0.025)
		event.CharaActive(0, 37)
		at = 63
		wait_frames(45)
		event.SetMotion(46, "発動", 6, -1, 1)
		event.CharaActive(1, 46)
		event.SetCharaShow(38, 0, 1, 0.025)
		event.CharaActive(0, global1)
		at = 64
		wait_frames(120)
		event.CharaActive(0, 38)
		event.CharaActive(0, 39)
		event.CharaActive(0, 40)
		event.CharaActive(0, 45)
		event.CharaActive(0, 46)
		event.CharaActive(0, 47)
		event.CharaActive(0, 48)
		event.DeleteChara(38)
		event.DeleteChara(39)
		event.DeleteChara(40)
		event.DeleteChara(global1)
		event.DeleteChara(45)
		event.DeleteChara(46)
		event.DeleteChara(47)
		event.DeleteChara(48)
		event.DeleteChara(44)
		event.ClearStack(6)
		event.LoadChara(6, "event/e700/e736/e736_tojiru.gltf", "info", 44)
		event.CharaActive(0, 44)
		event.LoadChara(6, "event/e700/e736/e736_nobori_new.gltf", "info", 49)
		event.CharaActive(0, 49)
		event.EohSyncChara(10, 49)
		event.ObjsInit(10, 49)
		event.ObjsSyncObj(10, 10)
		event.CopyChara(6, 49, 50)
		event.CharaActive(0, 50)
		event.EohSyncChara(11, 50)
		event.ObjsInit(11, 50)
		event.ObjsSyncObj(11, 11)
		event.CopyChara(6, 49, 51)
		event.CharaActive(0, 51)
		event.EohSyncChara(12, 51)
		event.ObjsInit(12, 51)
		event.ObjsSyncObj(12, 12)
		event.CopyChara(6, 49, 52)
		event.CharaActive(0, 52)
		event.EohSyncChara(13, 52)
		event.ObjsInit(13, 52)
		event.ObjsSyncObj(13, 13)
		event.LoadChara(6, "event/e700/e736/e736_tom.gltf", "info", 41)
		event.CharaActive(0, 41)
		event.EohSyncChara(7, 41)
		event.ObjsInit(7, 41)
		event.ObjsSyncObj(7, 7)
		event.LoadChara(6, "event/e700/e736/e736_vorneo.gltf", "info", 42)
		event.CharaActive(0, 42)
		event.EohSyncChara(8, 42)
		event.ObjsInit(8, 42)
		event.ObjsSyncObj(8, 8)
		event.LoadChara(6, "event/e700/e736/e736_starbre.gltf", "info", 43)
		event.CharaActive(0, 43)
		event.EohSyncChara(9, 43)
		event.ObjsInit(9, 43)
		event.ObjsSyncObj(9, 9)
		event.SetCharaPos(44, 0.0, 2500.0, 0.0)
		event.SetScale(44, 10.0, 10.0, 10.0)
		event.CharaActive(1, 44)
		event.CharaActive(1, 49)
		event.CharaActive(1, 50)
		event.CharaActive(1, 51)
		event.CharaActive(1, 52)
		event.SetScale(49, 4.0, 4.0, 4.0)
		event.SetScale(50, 4.0, 4.0, 4.0)
		event.SetScale(51, 4.0, 4.0, 4.0)
		event.SetScale(52, 4.0, 4.0, 4.0)
		event.SetCharaPos(49, -150.0, -7.06, 150.0)
		event.SetCharaPos(50, -15.0, -7.06, -150.0)
		event.SetCharaPos(51, 65.0, -7.06, -150.0)
		event.SetCharaPos(52, 150.0, -7.06, 150.0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 41)
		event.CharaActive(1, 42)
		event.CharaActive(1, 43)
		event.ObjsSetPos(7, -61.65, -268.37, 2725.79)
		event.ObjsSetRot(7, 0.0, -3.12, 0.0)
		event.ObjsSetPos(8, -36.27, -268.37, 2730.68)
		event.ObjsSetRot(8, 0.0, 3.04, 0.0)
		event.ObjsSetPos(9, -11.81, -268.37, 2711.11)
		event.ObjsSetRot(9, 0.0, -3.0, 0.0)
		event.ObjsSetMotion(7, "立ち", 4)
		event.ObjsSetMotion(8, "立ち", 4)
		event.ObjsSetMotion(9, "立ち", 4)
		event.SndSePlay(var4, 6)
		event.CmrsSetPos(-26.29, -233.08, 2912.11)
		event.CmrsSetRef(-24.95, 6.64, 2652.48)
		event.CmrsMove2(-26.29, -233.08, 2912.11, -24.95, -215.15, 2652.48, 600, 0, 0.5)
		event.ObjsMove(10, 0.0, 3000.0, 0.0, 240)
		at = 65
		wait_frames(10)
		event.ObjsMove(11, 0.0, 3000.0, 0.0, 240)
		at = 66
		wait_frames(10)
		event.ObjsMove(12, 0.0, 3000.0, 0.0, 240)
		at = 67
		wait_frames(10)
		event.ObjsMove(13, 0.0, 3000.0, 0.0, 240)
		at = 68
		wait_frames(210)
		event.SetCharaShow(49, 0, 1, 0.025)
		at = 69
		wait_frames(10)
		event.SetCharaShow(50, 0, 1, 0.025)
		at = 70
		wait_frames(10)
		event.SetCharaShow(51, 0, 1, 0.025)
		at = 71
		wait_frames(10)
		event.SetCharaShow(52, 0, 1, 0.025)
		at = 72
		wait_frames(10)
		event.SetCharaShow(44, 0, 1, 0.0125)
		at = 73
		wait_objects(10)
		at = 74
		wait_objects(11)
		at = 75
		wait_objects(12)
		at = 76
		wait_objects(13)
		event.CharaActive(0, 49)
		event.CharaActive(0, 50)
		event.CharaActive(0, 51)
		event.CharaActive(0, 52)
		event.SetCrossfade(30)
		event.EohSetShow(14, 0)
		event.SetPakuAnim(9, "通常口パク")
		at = 77
		helper_1584c528(7360200, -1)
		event.ResetPakuAnim()
		at = 78
		wait_frames(30)
		event.SetPakuAnim(8, "通常口パク")
		at = 79
		helper_1584c528(7360210, -1)
		event.ResetPakuAnim()
		at = 80
		wait_frames(30)
		event.SetPakuAnim(8, "通常口パク")
		at = 81
		helper_1584c528(7360215, -1)
		event.ResetPakuAnim()
		at = 82
		wait_camera()
		event.CharaActive(0, 44)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(360)
		event.CmrsAddPas(-102.41, -105.05, 2573.33, -32.34, -245.11, 2715.49)
		event.CmrsAddPas(-50.57, -128.25, 2558.78, -32.34, -245.11, 2715.49)
		event.CmrsAddPas(11.71, -166.6, 2586.87, -32.34, -245.11, 2715.49)
		event.CmrsAddPas(30.07, -183.67, 2650.65, -32.34, -245.11, 2715.49)
		event.CmrsStartPas()
		event.SetPakuAnim(7, "口パク")
		at = 83
		helper_1584c528(7360220, -1)
		event.ResetPakuAnim()
		event.SetPakuAnim(9, "通常口パク")
		at = 84
		helper_1584c528(7360230, -1)
		event.ResetPakuAnim()
		event.ObjsSetMotion(7, "えっ？", 6)
		event.ObjsNextMotion(7, "えっ？Ｌ", 4)
		event.SetPakuAnim(7, "通常口パク")
		at = 85
		helper_1584c528(7360240, 30)
		event.ResetPakuAnim()
		at = 86
		wait_frames(15)
		event.CmrsInit()
		event.CmrsSetPos(-66.1, -251.95, 2901.4)
		event.CmrsSetRef(-26.73, -211.8, 2660.25)
		event.CmrsMove2(-66.1, -251.95, 2901.4, -26.73, 95.62, 2660.25, 540, 2, 1.0)
		event.SetPakuAnim(9, "通常口パク")
		at = 87
		helper_1584c528(7360250, -1)
		event.ResetPakuAnim()
		event.SetPakuAnim(9, "通常口パク")
		at = 88
		helper_1584c528(7360255, -1)
		event.ResetPakuAnim()
		event.SetPakuAnim(7, "通常口パク")
		at = 89
		helper_1584c528(7360260, -1)
		event.ResetPakuAnim()
		at = 90
		wait_camera()
	end, function(received: { any }): boolean
		if at <= 4 then
			wait_frames_skipping(45)
		end
		if at <= 5 then
			helper_21800000()
			wait_frames_skipping(60)
		end
		if at <= 6 then
			wait_frames_skipping(15)
		end
		if at <= 7 then
			helper_344d6cd8()
		end
		if at <= 8 then
			helper_52aadc70(7360010, -1)
		end
		if at <= 9 then
			wait_frames_skipping(30)
		end
		if at <= 10 then
			helper_52aadc70(7360015, 120)
		end
		if at <= 11 then
			wait_frames_skipping(30)
		end
		if at <= 12 then
			helper_52aadc70(7360020, -1)
		end
		if at <= 13 then
			wait_frames_skipping(15)
		end
		if at <= 14 then
			helper_344d6cd8()
		end
		if at <= 15 then
			wait_frames_skipping(30)
		end
		if at <= 16 then
			helper_52aadc70(7360030, -1)
		end
		if at <= 17 then
			helper_52aadc70(7360035, -1)
		end
		if at <= 18 then
			helper_52aadc70(7360040, 90)
		end
		if at <= 19 then
			wait_frames_skipping(15)
		end
		if at <= 20 then
			helper_344d6cd8()
		end
		if at <= 21 then
			helper_52aadc70(7360050, -1)
		end
		if at <= 22 then
			wait_frames_skipping(30)
		end
		if at <= 23 then
			helper_52aadc70(7360060, -1)
		end
		if at <= 24 then
			helper_344d6cd8()
		end
		if at <= 25 then
			wait_frames_skipping(30)
		end
		if at <= 26 then
			wait_frames_skipping(30)
		end
		if at <= 27 then
			helper_344d6cd8()
		end
		if at <= 28 then
			helper_238b5abc(4)
		end
		if at <= 29 then
			helper_52aadc70(7360070, -1)
		end
		if at <= 30 then
			helper_52aadc70(7360080, -1)
		end
		if at <= 31 then
			wait_frames_skipping(30)
		end
		if at <= 32 then
			helper_52aadc70(7360090, -1)
		end
		if at <= 33 then
			wait_frames_skipping(30)
		end
		if at <= 34 then
			helper_52aadc70(7360100, -1)
		end
		if at <= 35 then
			helper_238b5abc(0)
		end
		if at <= 36 then
			helper_52aadc70(7360110, -1)
		end
		if at <= 37 then
			helper_238b5abc(0)
		end
		if at <= 38 then
			helper_52aadc70(7360120, -1)
		end
		if at <= 39 then
			helper_52aadc70(7360130, -1)
		end
		if at <= 40 then
			wait_frames_skipping(15)
		end
		if at <= 41 then
			helper_52aadc70(7360140, -1)
		end
		if at <= 42 then
			helper_238b5abc(0)
		end
		if at <= 43 then
			helper_52aadc70(7360145, 120)
		end
		if at <= 44 then
			helper_238b5abc(0)
		end
		if at <= 45 then
			helper_52aadc70(7360150, 90)
		end
		if at <= 46 then
			wait_frames_skipping(15)
		end
		if at <= 47 then
			helper_238b5abc(0)
		end
		if at <= 48 then
			helper_52aadc70(7360155, -1)
		end
		if at <= 49 then
			helper_238b5abc(0)
		end
		if at <= 50 then
			wait_frames_skipping(60)
		end
		if at <= 51 then
			wait_frames_skipping(60)
		end
		if at <= 52 then
			helper_52aadc70(7360160, -1)
		end
		if at <= 53 then
			helper_238b5abc(0)
		end
		if at <= 54 then
			helper_52aadc70(7360170, -1)
		end
		if at <= 55 then
			helper_52aadc70(7360180, -1)
		end
		if at <= 56 then
			helper_238b5abc(0)
		end
		if at <= 57 then
			wait_frames_skipping(20)
		end
		if at <= 58 then
			helper_238b5abc(4)
		end
		if at <= 59 then
			helper_52aadc70(7360190, -1)
		end
		if at <= 60 then
			wait_frames_skipping(3)
		end
		if at <= 61 then
			wait_frames_skipping(5)
		end
		if at <= 62 then
			wait_frames_skipping(45)
		end
		if at <= 63 then
			wait_frames_skipping(120)
		end
		if at <= 64 then
			wait_frames_skipping(10)
		end
		if at <= 65 then
			wait_frames_skipping(10)
		end
		if at <= 66 then
			wait_frames_skipping(10)
		end
		if at <= 67 then
			wait_frames_skipping(210)
		end
		if at <= 68 then
			wait_frames_skipping(10)
		end
		if at <= 69 then
			wait_frames_skipping(10)
		end
		if at <= 70 then
			wait_frames_skipping(10)
		end
		if at <= 71 then
			wait_frames_skipping(10)
		end
		if at <= 72 then
			helper_238b5abc(10)
		end
		if at <= 73 then
			helper_238b5abc(11)
		end
		if at <= 74 then
			helper_238b5abc(12)
		end
		if at <= 75 then
			helper_238b5abc(13)
		end
		if at <= 76 then
			helper_52aadc70(7360200, -1)
		end
		if at <= 77 then
			wait_frames_skipping(30)
		end
		if at <= 78 then
			helper_52aadc70(7360210, -1)
		end
		if at <= 79 then
			wait_frames_skipping(30)
		end
		if at <= 80 then
			helper_52aadc70(7360215, -1)
		end
		if at <= 81 then
			helper_344d6cd8()
		end
		if at <= 82 then
			helper_52aadc70(7360220, -1)
		end
		if at <= 83 then
			helper_52aadc70(7360230, -1)
		end
		if at <= 84 then
			helper_52aadc70(7360240, 30)
		end
		if at <= 85 then
			wait_frames_skipping(15)
		end
		if at <= 86 then
			helper_52aadc70(7360250, -1)
		end
		if at <= 87 then
			helper_52aadc70(7360255, -1)
		end
		if at <= 88 then
			helper_52aadc70(7360260, -1)
		end
		if at <= 89 then
			helper_344d6cd8()
		end
		return true
	end)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	at = 91
	wait_frames(35)
	event.SndSeAllStop(4)
	event.SetProjection(projection)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(4, 0)
	event.SetTime(time)
	at = 92
	vm.wait(92)
	helper_e3f4()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 500, which map data, a script or the engine runs by number.
-- Defined empty, so the engine runs this instead of its default.
function script.event_500() end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	event.SetFadeOut(0)
	helper_fdc4()
	event.MapJump_3(-1, "i04h01", 530)
	vm.wait(2)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	helper_090edf9b()
	event.MapJump_3(-1, "s30", 610)
	vm.wait(2)
end

--- Event 610, which map data, a script or the engine runs by number.
function script.event_610()
	helper_29c7463c()
	event.MapJump_3(-1, "s30", 630)
	vm.wait(2)
end

--- Event 620, which map data, a script or the engine runs by number.
function script.event_620()
	helper_ac753808()
	event.MapJump_3(-1, "s30", 640)
	vm.wait(2)
end

--- Event 630, which map data, a script or the engine runs by number.
function script.event_630()
	helper_1e0108c8()
	event.MapJump_3(-1, "s30", 650)
	vm.wait(2)
end

--- Event 650, which map data, a script or the engine runs by number.
function script.event_650()
	helper_64cf735e()
	event.MapJump_3(-1, "s11", 510)
	vm.wait(2)
end

--- Event 16400, which map data, a script or the engine runs by number.
function script.event_16400()
	helper_090edf9b()
	event.MapJump_3(-1, "s30", 610)
	vm.wait(2)
end

--- Event 17360, which map data, a script or the engine runs by number.
function script.event_17360()
	event.SetFadeOut(0)
	event.SetSavedataEtc(0, 10)
	event.MapJump_3(-1, "s66", 17370)
	vm.wait(1)
end

--- Event 17370, which map data, a script or the engine runs by number.
function script.event_17370()
	event.SetFadeOut(0)
	helper_fdc4()
	event.MapJump_3(-1, "i04h01", 530)
	vm.wait(2)
end

return script
