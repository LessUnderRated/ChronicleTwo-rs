--!strict
-- map/s/s09/s09.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_07039683 = require("@lib/event/helper_07039683")
local helper_0d0a5438 = require("@lib/event/helper_0d0a5438")
local helper_13965fb3 = require("@lib/event/helper_13965fb3")
local helper_21d8472e = require("@lib/event/helper_21d8472e")
local helper_3efe4328 = require("@lib/event/helper_3efe4328")
local helper_4071559a = require("@lib/event/helper_4071559a")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_4cb9ff49 = require("@lib/event/helper_4cb9ff49")
local helper_5d0fc1fa = require("@lib/event/helper_5d0fc1fa")
local helper_6cc2fba1 = require("@lib/event/helper_6cc2fba1")
local helper_71aacd6c = require("@lib/event/helper_71aacd6c")
local helper_84a2c453 = require("@lib/event/helper_84a2c453")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_93cb8168 = require("@lib/event/helper_93cb8168")
local helper_946c0402 = require("@lib/event/helper_946c0402")
local helper_b7a01b67 = require("@lib/event/helper_b7a01b67")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_cce8673f = require("@lib/event/helper_cce8673f")
local helper_ce60ccd6 = require("@lib/event/helper_ce60ccd6")
local helper_cf15df04 = require("@lib/event/helper_cf15df04")
local helper_d7295df9 = require("@lib/event/helper_d7295df9")
local helper_ef001e52 = require("@lib/event/helper_ef001e52")
local helper_f1384058 = require("@lib/event/helper_f1384058")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_2a10c()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(400, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_2(4200) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e400/e400/")
		event.LoadMes(0, 5, "e400.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e400_mints.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e400_monica.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 32)
			event.LoadEquip(5, 0, 4, "info", 32)
			event.LoadEquip(5, 0, 3, "info", 32)
			event.LoadEquip(5, 0, 2, "info", 32, 33)
			event.LoadMotion(5, "event/e400/e400/e400_mints.gltf", "info", 32)
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
			event.LoadMotion(5, "event/e400/e400/e400_monica.gltf", "info", 32)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 32)
			event.EohSyncChara(1, 32)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(0, 32)
		event.CharaActive(0, 33)
		event.SetAi(0, 8)
		event.CharaActive(0, 8)
		event.EohSyncChara(7, 8)
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 7)
		event.SetAi(0, 9)
		event.CharaActive(0, 9)
		event.EohSyncChara(8, 9)
		event.ObjsInit(8)
		event.ObjsSyncObj(8, 8)
		event.SetAi(0, 10)
		event.CharaActive(0, 10)
		event.EohSyncChara(9, 10)
		event.ObjsInit(9)
		event.ObjsSyncObj(9, 9)
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
		event.EsmInitialize(5)
		event.EsmLoadBase("列車煙")
		event.EsmInitFix(5)
		event.EsmCreate("列車煙")
		event.EsmSetValue(0, 2)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetTexAnim(7, 0)
		event.EohSetTexAnim(7, 1, "デフォルト顔")
		event.EohSetTexAnim(7, 1, "通常目パチ")
		event.EohSetPos(0, -1494.0, 42.31, -35.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 6)
		event.EohSetPos(1, -1478.0, 42.31, -35.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 6)
		event.EohSetPos(7, -1485.0, 45.34, -9.42)
		event.EohSetRot(7, 0.0, 3.14, 0.0)
		event.EohSetMotion(7, "立ち", 4)
		event.EohSetPos(2, -2312.1, 0.0, 0.0)
		event.EohSetRot(2, 0.0, 1.57, 0.0)
		event.EohSetRot(3, 0.0, 0.0, 0.0)
		event.EohSetRot(4, 0.0, 0.0, 0.0)
		event.EohSetRot(5, 0.0, 0.0, 0.0)
		event.EohSetRot(6, 0.0, 0.0, 0.0)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-1481.05, 64.34, -282.56)
		event.CmrsSetRef(-1949.42, 59.22, -91.09)
		event.CmrsMove2(-1481.05, 64.34, -282.56, -1473.02, 59.22, -83.94, 80, 2, 1.0)
		event.ObjsMove2(2, -912.1, 0.0, 0.0, 80, 2, 1.0)
		event.SndSePlay(var0, 4)
		event.SndSePlay(var0, 5)
		event.SetFadeIn(30)
		wait_objects(2)
		helper_888ab2a3(20)
		event.SndSePlay(var0, 6)
		event.CharaActive(0)
		event.CharaActive(32)
		event.CharaActive(33)
		event.CharaActive(8)
		event.ObjsRotation(3, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(4, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(5, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(6, 0.0, -1.5, 0.0, 30)
		helper_888ab2a3(30)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, -1493.51, 29.22, -100.0, 60)
		helper_888ab2a3(10)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMove(1, -1478.51, 29.22, -90.0, 50)
		helper_888ab2a3(20)
		event.EohSetFootSoundId(0, 3)
		helper_888ab2a3(10)
		event.EohSetFootSoundId(1, 3)
		helper_888ab2a3(20)
		event.EsmClear()
		event.CmrsSetPos(-1510.53, 52.11, -162.67)
		event.CmrsSetRef(-1480.38, 51.06, -136.4)
		event.ObjsTexaDelay(1, 30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "目あき～目とじ")
		event.ObjsMove(1, -1478.51, 29.22, -145.0, 50)
		event.ObjsSetMotion(1, "潮歩き", 4)
		event.ObjsMotionDelay(1, 50)
		event.ObjsSetMotion(1, "潮立ち")
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(4000010)
		wait_objects(1)
		event.ObjsMove(0, -1493.51, 29.22, -135.0, 50)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMotionDelay(0, 50)
		event.ObjsSetMotion(0, "立ち")
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(4000020)
		wait_objects(0)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "目とじ～目あき")
		event.ObjsTexaDelay(1, 30)
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetMotion(1, "潮立ちから右", 6)
		event.ObjsNextMotion(1, "左向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(4000030)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(4000040)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(4000050)
		event.CmrsSetPos(-1482.95, 61.09, -180.61)
		event.CmrsSetRef(-1483.79, 47.79, -128.26)
		event.ObjsSetPos(7, -1483.61, 29.22, -91.35)
		event.SndSePlay(var0, 7)
		event.ObjsSetMotion(1, "ふりかえり", 6)
		event.ObjsNextMotion(1, "ふりかえりＬ", 4)
		event.ObjsSetMotion(0, "振り返り", 6)
		event.ObjsNextMotion(0, "振り返りL", 4)
		event.SetPakuAnim(7, "口パク")
		helper_4116e6bb(4000060)
		event.CmrsSetPos(-1563.93, 73.34, -118.52)
		event.CmrsSetRef(-1483.1, 54.11, -118.91)
		event.CharaActive(9)
		event.CharaActive(10)
		event.SetCharaPos(9, -625.34, 29.22, -99.11)
		event.SetCharaPos(10, -627.43, 29.22, -126.82)
		event.ObjsSetPos(7, -1489.0, 29.22, -98.62)
		event.ObjsSetRot(7, 0.0, 1.58, 0.0)
		event.ObjsSetPos(0, -1496.36, 29.22, -129.63)
		event.ObjsSetRot(0, 0.0, 1.46, 0.0)
		event.ObjsSetMotion(0, "立ち", 6, -1.0, 1)
		event.ObjsSetPos(1, -1478.51, 29.22, -145.0)
		event.ObjsSetRot(1, 0.0, 0.98, 0.0)
		event.ObjsSetMotion(1, "立ち", 6, -1.0, 1)
		helper_4116e6bb(4000070)
		event.ObjsSetMotion(1, "手振り", 6)
		event.ObjsNextMotion(1, "手振りＬ", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(4000080)
		wait_objects(1)
		event.CmrsSetPos(-1522.27, 54.57, -147.64)
		event.CmrsSetRef(-1483.82, 49.34, -134.4)
		event.CharaActive(0, 9)
		event.CharaActive(0, 10)
		event.CharaActive(0, 8)
		event.ObjsSetRot(0, 0.0, 1.82, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetMotion(1, "手振りから左", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(4000085)
		event.ObjsSetMotion(0, "うなづく", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		helper_888ab2a3(6)
		event.SndSePlay(var0, 8)
		wait_objects(0)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(24)
	event.CancelDramaScene()
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	event.SndSeStop(var0, 4)
	event.SndSeStop(var0, 5)
	event.EohSetPos(2, -912.1, 0.0, 0.0)
	event.EohSetRot(2, 0.0, 1.57, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.EohSetRot(6, 0.0, 0.0, 0.0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.LoadMes(0, -1)
	event.CharaActive(8)
	event.SetCharaPos(8, -2030.0, 30.0, -100.0)
	event.SetCharaRot(8, 0.0, 3.14, 0.0)
	event.SetAi(1, 8)
	event.CharaActive(9)
	event.SetCharaPos(9, -1098.0, 29.2, -100.0)
	event.SetCharaRot(9, 0.0, -1.57, 0.0)
	event.SetAi(1, 9)
	event.CharaActive(10)
	event.SetCharaPos(10, -707.6, -10.0, -172.5)
	event.SetCharaRot(10, 0.0, 0.0, 0.0)
	event.SetAi(1, 10)
	event.CharaActive(0)
	event.SetCharaPos(0, -1880.1, 29.2, -299.0)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_27d90()
	local flag: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		flag = event.GetFlag(448) or flag
		event.CharaActive(0, 8)
		if flag == 0 then
			event.CharaActive(0, 9)
			event.CharaActive(0, 10)
		end
		var1 = event.SndLoadSound_3(8, "snd2/sp/sp_018.sound.json") or var1
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, 0)
		event.EohSyncObj_2(1, "p01_train01")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, -1512.1, 0.0, 0.0)
		event.ObjsSetRot(1, 0.0, 1.57, 0.0)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.EohSyncObj_2(6, "p01_shadow")
		event.EohSetShow(6, 0)
		event.EohSyncObj_3(2, "p01_train01", "train08-m0")
		event.ObjsSyncObj(2, 2)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.EohSyncObj_3(3, "p01_train01", "train08-m1")
		event.ObjsSyncObj(3, 3)
		event.ObjsSetRot(3, 0.0, 0.0, 0.0)
		event.EohSyncObj_3(4, "p01_train01", "train10-m0")
		event.ObjsSyncObj(4, 4)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.EohSyncObj_3(5, "p01_train01", "train10-m1")
		event.ObjsSyncObj(5, 5)
		event.ObjsSetRot(5, 0.0, 0.0, 0.0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.EsmInitialize(5)
		event.EsmLoadBase("列車煙")
		event.EsmInitFix(5)
		event.EohSyncObj_2(8, "p01_train01")
		event.EsmCreate("列車煙")
		event.EsmSetValue(0, 8)
		event.SndSePlay(var1, 0)
		event.EohSetFootSoundId(0, 6)
		event.CmrsInit()
		event.CmrsSetPos(-363.94, 121.88, -75.09)
		event.CmrsSetRef(-643.14, 118.87, -58.01)
		event.SetFadeIn(30)
		event.ObjsMove2(1, -912.1, 0.0, 0.0, 40, 2, 1.0)
		wait_objects(1)
		helper_888ab2a3(10)
		event.SetCrossfade(30)
		event.CmrsSetPos(-1664.28, 105.75, -222.05)
		event.CmrsSetRef(-1452.28, 75.37, -85.42)
		var2 = event.GetSndId(2) or var2
		event.SndSePlay(var2, 66)
		event.EohSetPos(1, -912.1, 0.0, 0.0)
		event.CharaActive(0)
		event.ObjsSetPos(0, -1460.3, 33.0, -45.39)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsRotation(2, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(3, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(4, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(5, 0.0, -1.5, 0.0, 30)
		helper_888ab2a3(15)
		event.ObjsMove(0, -1460.3, 29.22, -123.59, 30)
		event.ObjsSetMotion(0, "走り", 4)
		helper_888ab2a3(10)
		event.EohSetFootSoundId(0, 3)
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		helper_888ab2a3(10)
	end)
	vm.entry(8)
	event.CancelDramaScene()
	event.EsmClear()
	event.SetFadeIn(1)
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	event.EohSetPos(1, -912.1, 0.0, 0.0)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.CmrsInit()
	event.EohSetShow(6, 1)
	event.CharaActive(0)
	event.SetCharaPos(0, -1460.3, 29.22, -123.59)
	event.SetCharaRot(0, 0.0, -1.57, 0.0)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.CharaActive(1, 8)
	if flag == 0 then
		event.CharaActive(1, 9)
		event.CharaActive(1, 10)
	end
	event.ResetCamera(1, 3.14, 10.0)
end

--- Helper function.
local function helper_26da0()
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
	helper_888ab2a3(10)
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
	helper_888ab2a3(15)
	event.ObjsMove(0, -1460.3, 29.22, -123.59, 30)
	event.ObjsSetMotion(0, "走り", 4)
	event.EohSetFootSoundId(0, 3)
	wait_objects(0)
	event.EohSetFootSoundId(0, 0)
	event.ObjsSetMotion(0, "立ち")
	helper_888ab2a3(10)
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

--- Helper function.
local function helper_260d8()
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
		event.SetMesQuestionGyou(0, 0)
		event.SetMesWindowMode(0, 5)
		event.SetMesDrawspeed(0, 1)
		event.MesMake_2(0, "『ベニーティオ』に移動しますか？")
		at = 1
		var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var0 == 0 then
			event.CmrsSetPos(-1925.42, 97.53, -285.93)
			event.CmrsSetRef(-1921.75, 57.81, -472.01)
			event.ObjsSetPos(0, -1910.95, 21.58, -466.12)
			event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 60)
			event.ObjsAddPas(0, -1910.95, 21.58, -466.12)
			event.ObjsAddPas(0, -1907.45, 17.42, -496.67)
			event.ObjsAddPas(0, -1898.74, 13.2, -528.24)
			event.ObjsAddPas(0, -1878.93, 9.61, -555.9)
			event.ObjsAddPas(0, -1854.68, 5.12, -580.59)
			event.ObjsAddPas(0, -1828.07, 1.46, -591.28)
			event.ObjsStartPas(0)
			at = 2
			helper_888ab2a3(30)
			event.SetFadeOut(30)
			at = 3
			helper_888ab2a3(30)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var1 = out1 or var1
				var2 = out2 or var2
				var3 = out3 or var3
			end
			var4 = vm.f32(vm.f32(vm.sin(0.0) * 30.0) + var1)
			var5 = 0.0
			var6 = vm.f32(vm.f32(vm.cos(0.0) * 30.0) + var3)
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
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				helper_038a2e4d(30)
			end
			if at <= 2 then
				helper_038a2e4d(30)
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
local function helper_2e3d4()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 32
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e400/e448/e448_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e400/e448/e448_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 37)
	end
	if active_chr_no == 1 then
		global0 = 32
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 37)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e400/e448/e448_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e400/e448/e448_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.LoadChara(5, "chara/p01_03a.gltf", "info", 38)
	event.CharaActive(0, 38)
	event.EohSyncChara(2, 38)
	event.ObjsInit(2, 38)
	event.ObjsSyncObj(2, 2)
	event.LoadChara(5, "chara/p01_06a.gltf", "info", 39)
	event.CharaActive(0, 39)
	event.EohSyncChara(3, 39)
	event.ObjsInit(3, 39)
	event.ObjsSyncObj(3, 3)
	event.EohSyncObj_2(4, "p01_train01")
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.LoadMes(0, 5, "event/e400/e448/e448.txt")
end

--- Helper function.
local function helper_2e00c()
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
	event.SetCharaPos(0, -1952.44, 29.22, -304.96)
	event.SetCharaRot(0, 0.0, 1.62, 0.0)
end

--- Helper function.
local function helper_2f304()
	local var6: s32 = 0
	vm.section(function()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(4220)
		var6 = event.SndLoadSound_2(4220) or var6
		helper_2e3d4()
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(1, 2)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 38)
		event.CharaActive(1, 39)
		event.CmrsSetPos(-1979.65, 91.43, -121.02)
		event.CmrsSetRef(-1941.55, 74.53, -339.62)
		event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
		event.ObjsSetMotion(1, "走り", 4, -1.0, 1)
		event.ObjsSetPos(1, -1838.01, 8.0, -560.01)
		event.ObjsSetRot(1, 0.0, -0.64, 0.0)
		event.ObjsSetPos(0, -1904.92, 17.42, -503.6)
		event.ObjsSetRot(0, 0.0, -0.64, 0.0)
		event.ObjsSetPos(2, -2186.89, 29.22, -198.9)
		event.ObjsSetRot(2, 0.0, 3.13, 0.0)
		event.ObjsSetPos(3, -2223.98, 29.22, -196.3)
		event.ObjsSetRot(3, 0.0, 3.13, 0.0)
		event.ObjsSetPos(4, -912.1, 0.0, 0.0)
		event.ObjsSetRot(4, 0.0, 1.57, 0.0)
		event.SetFadeIn(30)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 60)
		event.ObjsAddPas(0, -1904.92, 17.42, -503.6)
		event.ObjsAddPas(0, -1985.4, 29.22, -393.12)
		event.ObjsStartPas(0, 1)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 60)
		event.ObjsAddPas(1, -1838.01, 8.0, -560.01)
		event.ObjsAddPas(1, -1922.88, 29.4, -436.71)
		event.ObjsStartPas(1, 1)
		wait_objects(0)
		wait_objects(1)
		event.InitDramaScene()
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsSetMotion(1, "歩き", 4, -1.0, 1)
		event.CmrsSetPos(-2052.02, 160.14, -365.82)
		event.CmrsSetRef(-2179.63, 74.53, -268.32)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 120)
		event.ObjsAddPas(1, -2199.24, 29.22, -360.0)
		event.ObjsAddPas(1, -2199.24, 29.22, -253.55)
		event.ObjsStartPas(1)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 120)
		event.ObjsAddPas(0, -2216.55, 29.22, -360.0)
		event.ObjsAddPas(0, -2216.55, 29.22, -253.55)
		event.ObjsStartPas(0)
		wait_objects(0)
		wait_objects(1)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetMotion(1, "立ち")
		event.ObjsSetMotion(2, "会話", 2)
		event.ObjsNextMotion(2, "立ち", 4)
		helper_4116e6bb(4481130)
		event.ObjsSetMotion(2, "立ち")
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		helper_4116e6bb(4481140)
		event.ObjsSetMotion(3, "会話", 2)
		event.ObjsNextMotion(3, "立ち", 4)
		helper_4116e6bb(4481150)
		event.ObjsSetMotion(3, "立ち")
		helper_888ab2a3(30)
		event.ObjsSetPos(1, -1935.53, 29.22, -301.43)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.ObjsSetPos(0, -1952.44, 29.22, -304.96)
		event.ObjsSetRot(0, 0.0, 1.08, 0.0)
		event.CmrsSetPos(-1949.04, 34.26, -256.22)
		event.CmrsSetRef(-1934.01, 87.78, -397.48)
		event.ObjsSetMotion(1, "右向く会話", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(4481160)
		event.ResetPakuAnim()
		event.SndSePlay(var6, 25)
		event.ObjsSetMotion(0, "うなづく", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "わらい口パク")
		helper_4116e6bb(4481170)
		event.ResetPakuAnim()
		helper_888ab2a3(30)
	end)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	helper_888ab2a3(35)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	helper_2e00c()
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_33168()
	local var0: s32 = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetEventData_2(14) or var0
		if var0 == 1 then
			at = 1
			return helper_ef001e52()
		end
		if var0 == 2 then
			at = 2
			helper_4cb9ff49()
		end
		if var0 == 13 then
			at = 3
			helper_71aacd6c()
		end
		if var0 == 301 then
			at = 4
			helper_ce60ccd6()
		end
		return 0
	end, function(received: { any })
		if at <= 1 then
			return helper_5d0fc1fa()
		end
		if at <= 4 then
			if at <= 2 then
				helper_4071559a()
			end
			if at <= 3 then
				helper_21d8472e()
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_30b6c()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(452, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(4223)
		var0 = event.SndLoadSound_2(4223) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.LoadMes(0, 5, "event/e400/e452/e452.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "event/e400/e452/e452_mints.chr", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "event/e400/e452/e452_monica.chr", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "event/e200/e283/e283_starbre.gltf", "info", 34)
		event.CharaActive(34)
		event.EohSyncChara(2, 34)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 32)
			event.LoadEquip(5, 0, 4, "info", 32)
			event.LoadEquip(5, 0, 3, "info", 32)
			event.LoadEquip(5, 0, 2, "info", 32, 33)
			event.LoadMotion(5, "event/e400/e452/e452_mints.chr", "info", 32)
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
			event.LoadMotion(5, "event/e400/e452/e452_monica.chr", "info", 32)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 32)
			event.EohSyncChara(1, 32)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(0, 32)
		event.CharaActive(0, 33)
		event.CharaActive(0, 8)
		event.CharaActive(0, 9)
		event.CharaActive(0, 10)
		event.EohSetPos(0, -1960.0, 29.22, -120.0)
		event.EohSetRot(0, 0.0, -0.7853982, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetPos(1, -2000.0, 29.22, -120.0)
		event.EohSetRot(1, 0.0, 0.7853982, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetPos(2, -1980.0, 29.22, -100.0)
		event.EohSetRot(2, 0.0, 3.1415927, 0.0)
		event.EohSetMotion(2, "立ち", 4)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-1980.0, 51.24, -291.47)
		event.CmrsSetRef(-1980.0, 91.37, -49.52)
		event.CharaActive(0)
		event.CharaActive(32)
		event.CharaActive(33)
		event.CharaActive(34)
		event.SetFadeIn(30)
		helper_888ab2a3(45)
		event.ObjsSetMotion(2, "出発進行", 6)
		event.ObjsNextMotion(2, "出発進行L", 4)
		event.SndSePlay(var0, 0)
		event.SetPakuAnim(2, "わらい口パク")
		helper_4116e6bb(4520010)
		event.ResetPakuAnim()
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(5)
	event.CancelDramaScene()
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.LoadMes(0, -1)
	event.CharaActive(0)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_2927c(arg0: s32)
	local var1: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		event.LoadSound(4223)
		var1 = event.SndLoadSound_2(4223) or var1
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		event.CharaActive(0, 8)
		event.EohSyncObj_2(0, "p01_train01")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, -912.1, 0.0, 0.0)
		event.ObjsSetRot(0, 0.0, 1.5707964, 0.0)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.LoadChara(5, "event/train/steam/steam_l.gltf", "info", 11)
		event.EohSyncChara(2, 11)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ObjsSetPos(2, -120.0, 0.0, -1690.0)
		event.LoadChara(5, "event/train/steam/steam_r.gltf", "info", 12)
		event.EohSyncChara(3, 12)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ObjsSetPos(3, -120.0, 0.0, -1690.0)
		event.EsmInitialize(5)
		event.EsmLoadBase("列車煙")
		event.EsmInitFix(5)
		event.EsmCreate("列車煙")
		event.EsmSetValue(0, 0)
		event.EohSyncObj_2(1, "p01_shadow")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, 11)
		event.CharaActive(0, 12)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-480.06, 58.66, -117.78)
		event.CmrsSetRef(-569.61, 64.12, -98.79)
		event.SetFadeIn(30)
		event.SndSePlay(var1, 1)
		event.CharaActive(11)
		event.ObjsSetPos(2, -874.19, 10.0, 30.0)
		event.ObjsSetRot(2, 0.0, 1.5707964, 0.0)
		event.ObjsSetMotion(2, "ぶしゅー", 6)
		event.CharaActive(12)
		event.ObjsSetPos(3, -874.19, 10.0, 30.0)
		event.ObjsSetRot(3, 0.0, 1.5707964, 0.0)
		event.ObjsSetMotion(3, "ぶしゅー", 6)
		helper_888ab2a3(60)
		event.ObjsMove2(0, 4000.0, 0.0, 0.0, 180, 1, 1.0)
		event.ObjsMove2(1, 4500.0, 0.0, 0.0, 180, 1, 1.0)
		event.SndSePlay(var1, 2)
		wait_objects(0)
		if arg0 ~= 0 then
			event.FadeOutBgm(30)
		end
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(6)
	event.CancelDramaScene()
	if arg0 ~= 0 then
		event.StopBgm(0)
	end
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.EsmClear()
	event.CharaActive(0)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
-- Defined empty, so the engine runs this instead of its default.
function script.event_99() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local mc_load: s32 = 0
	local old_map_no: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var6: s32 = 0
	local at: number = 0
	return vm.guard(function()
		print("START_EVENT----------------------------")
		helper_13965fb3()
		mc_load = event.CheckMcLoad() or mc_load
		if mc_load == 1 then
			event.SetCharaPos(0, -1820.0, 29.2, -335.0)
			event.SetCharaRot(0, 0.0, 1.57, 0.0)
			event.SetMotion(0, "立ち", 4)
			event.CharaNormalDrive(0)
			event.CharaResetDa(0)
			event.ResetCamera(1, 0.0, 20.0)
		else
			old_map_no = event.GetOldMapNo() or old_map_no
			var2 = event.GetMapType() or var2
			if var2 ~= -1 then
				if old_map_no == 2 or old_map_no == 75 then
					at = 1
					helper_07039683()
				else
					var3 = event.GetCnt(1) or var3
					if
						(old_map_no == 18 or old_map_no == 23 or old_map_no == 120 or old_map_no == 108)
						and var3 == 4
					then
						helper_946c0402()
						event.SetFadeIn(15)
						event.ResetCamera(1, 0.0)
					else
						flag = event.GetFlag(360) or flag
						flag_2 = event.GetFlag(400) or flag_2
						if flag == 1 and flag_2 == 0 then
							at = 2
							helper_2a10c()
						else
							event.CharaActive(0, 9)
							var6 = event.GetChapter() or var6
							if var6 ~= 6 and var6 ~= 7 then
								at = 3
								helper_27d90()
							else
								at = 4
								helper_26da0()
							end
							event.CharaActive(1, 9)
						end
					end
				end
			else
				print("------  <START EVENT> OLD MAP ERR   ------\n")
			end
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_d7295df9()
				at = 2
				helper_2a10c()
				return vm.continue_with(function()
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_27d90()
				return vm.continue_with(function()
					event.CharaActive(1, 9)
					return
				end)
			end
			if at <= 3 then
				helper_f1384058()
			end
			print("------  <START EVENT> OLD MAP ERR   ------\n")
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_26da0

--- Event 201, which map data, a script or the engine runs by number.
function script.event_201()
	if helper_260d8() ~= 0 then
		event.MapJump_2(-1, "g03")
	end
end

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
		event.SetCnt(1, 4)
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
			helper_cce8673f(0)
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
				helper_84a2c453(0)
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

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_13965fb3()
	helper_2f304()
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local var0: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		var0 = helper_33168()
		if var0 == 1 then
			at = 2
			helper_30b6c()
			at = 3
			helper_2927c(1)
			event.GotoMenu(13, 9)
			at = 4
			vm.wait(4)
			event.BgmLoadCancel()
			event.MapJump_2(-1, "s10")
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_30b6c()
				return vm.continue_with(function()
					at = 3
					helper_2927c(1)
					event.GotoMenu(13, 9)
					at = 4
					vm.wait(4)
					event.BgmLoadCancel()
					event.MapJump_2(-1, "s10")
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_2927c(1)
				return vm.continue_with(function()
					event.GotoMenu(13, 9)
					at = 4
					vm.wait(4)
					event.BgmLoadCancel()
					event.MapJump_2(-1, "s10")
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 14000, which map data, a script or the engine runs by number.
function script.event_14000()
	helper_13965fb3()
	helper_2a10c()
end

--- Event 14520, which map data, a script or the engine runs by number.
function script.event_14520()
	local at: number = 0
	return vm.guard(function()
		helper_13965fb3()
		at = 1
		helper_30b6c()
		at = 2
		helper_2927c(1)
		event.GotoMenu(13, 9)
		at = 3
		vm.wait(3)
		event.BgmLoadCancel()
		event.MapJump_2(-1, "s10")
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_2927c(1)
				return vm.continue_with(function()
					event.GotoMenu(13, 9)
					at = 3
					vm.wait(3)
					event.BgmLoadCancel()
					event.MapJump_2(-1, "s10")
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

return script
