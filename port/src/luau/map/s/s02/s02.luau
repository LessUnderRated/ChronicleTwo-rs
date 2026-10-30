--!strict
-- map/s/s02/s02.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0226fccb = require("@lib/event/helper_0226fccb")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_042a5b29 = require("@lib/event/helper_042a5b29")
local helper_0d0a5438 = require("@lib/event/helper_0d0a5438")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_21d8472e = require("@lib/event/helper_21d8472e")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_3efe4328 = require("@lib/event/helper_3efe4328")
local helper_4071559a = require("@lib/event/helper_4071559a")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_4cb9ff49 = require("@lib/event/helper_4cb9ff49")
local helper_6cc2fba1 = require("@lib/event/helper_6cc2fba1")
local helper_6cf80642 = require("@lib/event/helper_6cf80642")
local helper_71aacd6c = require("@lib/event/helper_71aacd6c")
local helper_84a2c453 = require("@lib/event/helper_84a2c453")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8efad286 = require("@lib/event/helper_8efad286")
local helper_93cb8168 = require("@lib/event/helper_93cb8168")
local helper_946c0402 = require("@lib/event/helper_946c0402")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_b76e3b36 = require("@lib/event/helper_b76e3b36")
local helper_b7a01b67 = require("@lib/event/helper_b7a01b67")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_cce8673f = require("@lib/event/helper_cce8673f")
local helper_ce60ccd6 = require("@lib/event/helper_ce60ccd6")
local helper_cf15df04 = require("@lib/event/helper_cf15df04")
local helper_d552d8eb = require("@lib/event/helper_d552d8eb")
local helper_d7295df9 = require("@lib/event/helper_d7295df9")
local helper_ed56af24 = require("@lib/event/helper_ed56af24")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local helper_ef001e52 = require("@lib/event/helper_ef001e52")
local helper_f72a4299 = require("@lib/event/helper_f72a4299")
local helper_f97100db = require("@lib/event/helper_f97100db")
local helper_fbd9683d = require("@lib/event/helper_fbd9683d")
local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_3f33c()
	local active_chr_no: s32 = 0
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 32
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 38)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e200/e254/e254_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 38)
	end
	if active_chr_no == 1 then
		global0 = 32
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 38)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 38)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e200/e254/e254_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e200/e254/e254_conda.gltf", "info", 36)
	event.CharaActive(0, 36)
	event.EohSyncChara(4, 36)
	event.ObjsInit(3, 36)
	event.ObjsSyncObj(3, 4)
	event.LoadMes(0, 5, "event/e200/e254/e254.txt")
end

--- Helper function.
local function helper_24100000()
	global0 = 0
	global1 = 32
	global0 = 32
	global1 = 0
end

--- Helper function.
local function helper_3efc8()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(38)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(38)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.DeleteChara(36)
end

--- Helper function.
local function helper_40070()
	local at: number = 0
	vm.section(function()
		event.SetFlag(254, 1)
		event.Initialize()
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		event.StopBgm(0)
		at = 2
		helper_888ab2a3(4)
		event.LoadBgm(49)
		helper_3f33c()
		set_window_mode(0, 1)
		event.InitDramaScene()
		event.PlayBgm(0)
		event.CmrsInit()
		event.CmrsSetPos(-585.93, 175.94, -940.12)
		event.CmrsSetRef(-702.67, 128.67, -892.92)
		event.CmrsMove(-565.48, 108.18, -866.56, -690.38, 73.25, -848.03, 165)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 38)
		event.CharaActive(1, 36)
		event.SetStatus(1, global0, 8, 1)
		event.SetStatus(1, global1, 8, 1)
		event.ObjsSetPos(0, -1285.55, 14.1, -942.2)
		event.ObjsSetMotion(0, "走り", 4)
		event.ObjsReference(0, -749.29, 0.0, -826.86, 1)
		event.ObjsMove(0, -749.29, 0.0, -826.86, 165, 1)
		event.EohSetFootSoundId(0, 1)
		event.SetFadeIn(30)
		at = 3
		helper_888ab2a3(30)
		event.ObjsSetPos(1, -1285.55, 14.1, -942.2)
		event.ObjsSetMotion(1, "走り", 4)
		event.ObjsReference(1, -767.89, 0.0, -768.84, 1)
		event.ObjsMove(1, -767.89, 0.0, -768.84, 135, 1)
		event.EohSetFootSoundId(1, 1)
		at = 4
		helper_888ab2a3(135)
		event.EohSetFootSoundId(0, -1)
		event.EohSetFootSoundId(1, -1)
		event.SetStatus(1, global0, 8, 0)
		event.SetStatus(1, global1, 8, 0)
		event.CmrsInit()
		event.CmrsSetPos(-350.28, 3.09, -880.0)
		event.CmrsSetRef(-237.75, 35.02, -880.0)
		event.ObjsSetPos(3, -246.0, 0.0, -880.0)
		event.ObjsSetRot(3, 0.0, -1.57, 0.0)
		event.ObjsSetMotion(3, "おーい", 4)
		event.MesMake_2(0, "オ～イ")
		at = 5
		show_message(0, -1, 2, 256, 416)
		event.CmrsSetPos(-269.42, 43.82, -641.43)
		event.CmrsSetRef(-355.67, 8.13, -699.39)
		event.ObjsSetPos(0, -424.81, 0.0, -640.72)
		event.ObjsReference(0, -354.91, 0.0, -694.75, 1)
		event.ObjsSetMotion(0, "走り", 4)
		event.EohSetFootSoundId(0, 1)
		event.ObjsSetPos(1, -399.05, 0.0, -634.81)
		event.ObjsReference(1, -359.19, 0.0, -671.7, 1)
		event.ObjsSetMotion(1, "歩き", 4)
		event.EohSetFootSoundId(1, 1)
		event.ObjsSetPos(3, -321.61, 0.0, -694.6)
		event.ObjsSetRot(3, 0.0, -1.61, 0.0)
		event.ObjsSetMotion(3, "立ち", 4)
		event.ObjsMove(0, -354.91, 0.0, -694.75, 45)
		event.ObjsRotDelay(0, 45)
		event.ObjsRotation(0, 0.0, 1.16, 0.0, 5)
		event.ObjsMotionDelay(0, 50)
		event.ObjsSetMotion(0, "立ち")
		at = 6
		helper_888ab2a3(15)
		event.ObjsMove(1, -359.19, 0.0, -671.7, 60)
		event.ObjsRotDelay(1, 60)
		event.ObjsRotation(1, 0.0, 1.87, 0.0, 5)
		event.ObjsMotionDelay(1, 65)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsSetMotion(3, "会話2")
		event.MesMake_2(
			0,
			"オオ？ジオストーンを\n見つけたようじゃな。<page>では、カーペントリオンを使って、\n森をつくり変えてみるとするかの。"
		)
		at = 7
		show_message(0, -1, 7, 341, 208)
		event.MesMake_2(0, "ついて来なされ。")
		at = 8
		show_message(0, -1, 8, 341, 208)
		event.EohSetFootSoundId(4, 1)
		event.ObjsSetMotion(3, "歩き２")
		event.ObjsReference(3, -306.48, 0.0, -624.02, 45)
		at = 9
		helper_888ab2a3(45)
		event.ObjsMove(3, -306.48, 0.0, -624.02, 90)
		at = 10
		helper_888ab2a3(45)
		event.ObjsSetMotion(0, "走り")
		event.ObjsReference(0, -305.78, 0.0, -632.54, 8)
		at = 11
		helper_888ab2a3(8)
		event.ObjsMove(0, -305.78, 0.0, -632.54, 45)
		at = 12
		helper_888ab2a3(22)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsReference(1, -351.88, 0.0, -630.2, 30)
		at = 13
		helper_888ab2a3(30)
		event.ObjsMove(1, -351.88, 0.0, -630.2, 45)
		at = 14
		helper_888ab2a3(30)
		event.SetFadeOut(30)
		at = 15
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(4)
		end
		if at <= 2 then
			helper_24100000()
			helper_fbd9683d(0, 1)
			helper_038a2e4d(30)
		end
		if at <= 3 then
			helper_038a2e4d(135)
		end
		if at <= 4 then
			helper_ee1c51d0(0, -1, 2, 256, 416)
		end
		if at <= 5 then
			helper_038a2e4d(15)
		end
		if at <= 6 then
			helper_ee1c51d0(0, -1, 7, 341, 208)
		end
		if at <= 7 then
			helper_ee1c51d0(0, -1, 8, 341, 208)
		end
		if at <= 8 then
			helper_038a2e4d(45)
		end
		if at <= 9 then
			helper_038a2e4d(45)
		end
		if at <= 10 then
			helper_038a2e4d(8)
		end
		if at <= 11 then
			helper_038a2e4d(22)
		end
		if at <= 12 then
			helper_038a2e4d(30)
		end
		if at <= 13 then
			helper_038a2e4d(30)
		end
		if at <= 14 then
			helper_038a2e4d(30)
		end
		return true
	end)
	event.CancelDramaScene()
	event.SetStatus(1, global0, 8, 0)
	event.SetStatus(1, global1, 8, 0)
	helper_3efc8()
	event.Finish()
	event.BgmLoadCancel()
end

--- Helper function.
local function helper_2bb50()
	event.Initialize()
	event.CmrsSetPos(-625.66, 104.24, -868.06)
	event.CmrsSetRef(-903.96, 23.48, -831.72)
	event.CharaActive(1, 0)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 1)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -1023.6, 0.0, -838.96)
	event.ObjsSetRot(0, 0.0, 1.58, 0.0)
	event.SetFadeIn(30)
	event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
	event.ObjsMove(0, -778.4, 0.0, -836.7, 60)
	event.CmrsMove2(-625.66, 104.24, -868.06, -778.4, 20.0, -836.7, 48, 2, 0.4)
	helper_888ab2a3(60)
	event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
	event.ResetCamera(0)
end

--- Helper function.
local function helper_44928()
	local flag: s32 = 0
	flag = event.GetFlag(207) or flag
	if flag == 0 then
		vm.wait(1)
		event.LoadScript("s02/s02b.stb", 501)
		return
	end
end

--- Helper function.
local function helper_2b6c8()
	event.Initialize()
	event.SetFadeOut(0)
	event.CmrsInit()
	event.CmrsSetPos(-971.07, 66.21, -121.97)
	event.CmrsSetRef(-826.79, 21.3, 58.4)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 1)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -949.3, 0.0, 34.7)
	event.ObjsSetRot(0, 0.0, 1.36, 0.0)
	event.ObjsSetMotion(0, "走り", 4)
	event.ObjsMove(0, -806.69, 0.0, 85.01, 60)
	event.CmrsFadeInit()
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	helper_888ab2a3(60)
	event.ObjsSetMotion(0, "立ち", 4)
	event.ResetCamera(0)
end

--- Helper function.
local function helper_28ec8()
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
		helper_888ab2a3(10)
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
		helper_888ab2a3(15)
		var3 = event.GetSndId(2) or var3
		event.SndSePlay(var3, 106)
		event.ObjsRotation(2, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(3, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(4, 0.0, 1.5, 0.0, 30)
		event.ObjsRotation(5, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(6, 0.0, -1.5, 0.0, 30)
		event.ObjsRotation(7, 0.0, 1.5, 0.0, 30)
		at = 6
		helper_888ab2a3(15)
		event.ObjsSetMotion(0, "走り", 0, -1.0, 1)
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, -68.89, 43.64, -366.0, 10)
		event.ObjsMove(0, -131.89, 0.0, -366.0, 30)
		at = 7
		helper_888ab2a3(40)
		event.SetFadeOut(10)
		at = 8
		helper_888ab2a3(10)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_6cf80642()
		end
		if at <= 2 then
			helper_1ef0d4b2()
			helper_238b5abc(1)
		end
		if at <= 3 then
			helper_038a2e4d(10)
		end
		if at <= 4 then
			helper_042a5b29()
			helper_038a2e4d(15)
		end
		if at <= 5 then
			helper_038a2e4d(15)
		end
		if at <= 6 then
			helper_038a2e4d(40)
		end
		if at <= 7 then
			helper_038a2e4d(10)
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

--- Helper function.
local function helper_27ae8()
	local var0: s32 = 0
	local time: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var5: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_019.sound.json") or var0
	helper_f72a4299()
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
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
	event.EohSyncObj_2(6, "p01_shadow-0")
	event.EohSetShow(6, 0)
	event.EohSyncObj_3(2, "p01_train01", "s3601_12-m4")
	event.ObjsSyncObj(2, 2)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(3, "p01_train01", "s3601_14-m2")
	event.ObjsSyncObj(3, 3)
	event.ObjsSetRot(3, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(4, "p01_train01", "s3601_16-m2")
	event.ObjsSyncObj(4, 4)
	event.ObjsSetRot(4, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(5, "p01_train01", "s3601_17-m3")
	do
		local out1, out2, out3 = event.EohGetPos(5)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.ObjsSyncObj(5, 5)
	event.ObjsSetRot(5, 0.0, 0.0, 0.0)
	event.CmrsInit()
	event.CmrsSetPos(-185.19, 68.62, 1049.53)
	event.CmrsSetRef(140.3, 63.52, 109.43)
	event.SetFadeIn(30)
	event.ObjsMove2(1, 1.3, 8.0, 700.0, 40, 2, 1.0)
	event.SndSePlay(var0, 0)
	wait_objects(1)
	helper_888ab2a3(10)
	event.SetCrossfade(30)
	event.CmrsSetPos(-254.85, 60.24, -455.84)
	event.CmrsSetRef(-89.19, 67.53, -382.63)
	event.EohSetPos(1, 1.3, 8.0, 700.0)
	event.CharaActive(0)
	event.ObjsSetPos(0, -20.0, 40.0, -365.0)
	event.ObjsSetRot(0, 0.0, -1.57, 0.0)
	event.ObjsRotation(2, 0.0, 0.0, -1.5707964, 30)
	event.ObjsRotation(3, 0.0, 0.0, -1.5707964, 30)
	event.ObjsRotation(4, 0.0, 0.0, 0.3926991, 30)
	event.ObjsRotation(5, 0.0, 0.0, 0.3926991, 30)
	var5 = event.GetSndId(2) or var5
	event.SndSePlay(var5, 92)
	helper_888ab2a3(30)
	event.ObjsMove(5, pos_x - 22.5, pos_y - 9.5, pos_z, 30)
	helper_888ab2a3(20)
	event.ObjsMove(0, -130.0, 0.0, -365.0, 30)
	event.ObjsSetMotion(0, "走り", 4)
	event.EohSetFootSoundId(0, 6)
	wait_objects(0)
	event.EohSetFootSoundId(0, 0)
	event.ObjsSetMotion(0, "立ち")
	helper_888ab2a3(10)
	event.SetFadeIn(1)
	event.EohSetPos(1, 1.3, 8.0, 700.0)
	event.EohSetRot(1, 0.0, 0.0, 0.0)
	event.EohSetRot(2, 0.0, 0.0, 0.0)
	event.EohSetRot(3, 0.0, 0.0, 0.0)
	event.EohSetRot(4, 0.0, 0.0, 0.0)
	event.EohSetPos(5, pos_x, pos_y, pos_z)
	event.EohSetRot(5, 0.0, 0.0, 0.0)
	event.EohSetShow(6, 1)
	event.CharaActive(0)
	helper_9dafbc83(-130.0, 0.0, -365.0, vm.f32(-1.57))
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.SetCameraRef(-130.0, 30.0, -366.0)
	event.SetCameraPos(-270.0, 40.0, -366.0)
	helper_0226fccb()
	event.SetFadeIn(15)
end

--- Helper function.
local function helper_24a00000()
	helper_1ef0d4b2()
	helper_238b5abc(1)
	helper_038a2e4d(10)
	helper_038a2e4d(30)
	helper_038a2e4d(20)
	helper_238b5abc(0)
	helper_038a2e4d(10)
	helper_43f02c95(-130.0, 0.0, -365.0, vm.f32(-1.57))
	helper_1ef0d4b2()
end

--- Helper function.
local function helper_262a4()
	local var0: any = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMesWindowMode(0, 5)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetMotion(0, "立ち", 4)
		event.MesMake_2(0, "『シャーロット』に移動しますか？")
		at = 1
		var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
		if var0 == 0 then
			event.ObjsSetPos(0, -936.47, 0.0, -23.84)
			event.ObjsSetRot(0, 0.0, -1.65, 0.0)
			event.ObjsSetMotion(0, "走り", 4)
			event.CmrsInit()
			event.CmrsSetPos(-751.82, 79.08, -27.15)
			event.CmrsSetRef(-928.2, 36.53, -26.64)
			flag = event.GetFlag(207) or flag
			flag_2 = event.GetFlag(208) or flag_2
			if flag == 1 and flag_2 == 0 then
				event.BgmLoadCancel()
			end
			event.ObjsMove(0, -1142.09, 0.0, -28.24, 60)
			event.CmrsMove(-751.82, 79.08, -27.15, -921.16, 65.58, -20.12, 60)
			at = 2
			helper_888ab2a3(30)
			event.SetFadeOut(30)
			at = 3
			helper_888ab2a3(30)
			return 1
		end
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var3 = out1 or var3
			var4 = out2 or var4
			var5 = out3 or var5
		end
		var3 = vm.f32(var3 + vm.f32(30.0 * vm.sin(vm.f32(1.57))))
		var5 = vm.f32(var5 + vm.f32(30.0 * vm.cos(vm.f32(1.57))))
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsRotation(0, 0.0, 1.57, 0.0, 15)
		event.ObjsMove(0, var3, var4, var5, 45)
		for var6_i = 0, 44 do
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var3 = out1 or var3
				var4 = out2 or var4
				var5 = out3 or var5
			end
			event.CmrsSetRef(var3, var4 + 30.0, var5)
			at = 4
			vm.wait(4)
		end
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.SetMesWindowMode(0, 7)
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
			local _ = var6 < 45
			var6 = var6 + 1
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_26ea4()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local angle: f32 = 0
	local var8: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMesWindowMode(0, 5)
		event.SetMotion(0, "立ち", 4)
		event.MesMake_2(0, "『七色蝶の森』に移動しますか？")
		at = 1
		var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
		if var0 == 0 then
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.ObjsSetPos(0, -836.17, 0.0, -823.5)
			event.ObjsSetRot(0, 0.0, -1.66, 0.0)
			event.ObjsSetMotion(0, "走り", 4)
			event.CmrsInit()
			event.CmrsSetPos(-668.11, 97.09, -886.72)
			event.CmrsSetRef(-839.94, 44.81, -838.79)
			event.ObjsMove(0, -1044.71, 0.0, -836.63, 60)
			event.CmrsMove(-668.11, 97.09, -886.72, -881.32, 61.14, -861.93, 60)
			at = 2
			helper_888ab2a3(30)
			event.SetFadeOut(30)
			at = 3
			helper_888ab2a3(30)
			return 1
		end
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetMotion(0, "歩き", 4)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		do
			local out1, out2, out3 = event.GetCharaRot(0)
			var4 = out1 or var4
			var5 = out2 or var5
			var6 = out3 or var6
		end
		angle = vm.f32(vm.f32(3.1415927) + var5)
		angle = event.AngleLimit(angle) or angle
		angle = vm.f32(1.5707964)
		var1 = vm.f32(var1 + vm.f32(30.0 * vm.sin(angle)))
		var3 = vm.f32(var3 + vm.f32(30.0 * vm.cos(angle)))
		event.ObjsRotation(0, var4, angle, var6, 15)
		event.ObjsMove(0, var1, var2, var3, 45)
		for var8_i = 0, 44 do
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var1 = out1 or var1
				var2 = out2 or var2
				var3 = out3 or var3
			end
			event.CmrsSetRef(var1, var2 + 30.0, var3)
			at = 4
			vm.wait(4)
		end
		event.SetMesWindowMode(0, 7)
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
			local _ = var8 < 45
			var8 = var8 + 1
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_2c054()
	local var2: s32 = 0
	local flag: s32 = 0
	event.DngSetStageId(1)
	event.GotoMenu(3, 1)
	vm.wait(1)
	do
		local _, _, out3, _ = event.GetMenuParam_4()
		var2 = out3 or var2
	end
	vm.wait(2)
	if var2 == 0 then
		helper_2bb50()
	else
		if var2 == 6 then
			event.MapJump_3(-1, "s05", 100)
			vm.wait(4)
			return
		end
		flag = event.GetFlag(212) or flag
		if var2 == 2 and flag == 0 or var2 == 14 then
			event.BgmLoadCancel()
		end
		event.GotoDng(1, var2, 1010)
	end
end

--- Helper function.
local function helper_430b4()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(283, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(2237)
		var0 = event.SndLoadSound_2(2237) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e200/e283/")
		event.LoadMes(0, 5, "e283.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e283_mints.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e283_monica.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e283_starbre.gltf", "info", 34)
		event.CharaActive(34)
		event.EohSyncChara(2, 34)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 32)
			event.LoadEquip(5, 0, 4, "info", 32)
			event.LoadEquip(5, 0, 3, "info", 32)
			event.LoadEquip(5, 0, 2, "info", 32, 33)
			event.LoadMotion(5, "event/e200/e283/e283_mints.gltf", "info", 32)
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
			event.LoadMotion(5, "event/e200/e283/e283_monica.gltf", "info", 32)
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
		event.EohSetPos(0, -160.79, 0.0, -340.48)
		event.EohSetRot(0, 0.0, 2.9, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 3)
		event.EohSetPos(1, -187.76, 0.0, -348.73)
		event.EohSetRot(1, 0.0, 2.18, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 3)
		event.EohSetPos(2, -143.76, 0.0, -369.25)
		event.EohSetRot(2, 0.0, -1.46, 0.0)
		event.EohSetMotion(2, "立ち", 4)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-254.7, 9.64, -441.04)
		event.CmrsSetRef(-145.97, 41.38, -347.02)
		event.CharaActive(0)
		event.CharaActive(32)
		event.CharaActive(33)
		event.CharaActive(34)
		event.SetFadeIn(30)
		event.StopBgm(0)
		helper_888ab2a3(45)
		event.ObjsSetMotion(2, "出発進行", 6)
		event.ObjsNextMotion(2, "出発進行L", 4)
		event.SndSePlay(var0, 2)
		helper_4116e6bb(2830010)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(5)
	event.CancelDramaScene()
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.LoadMes(0, -1)
	event.CharaActive(0)
	event.SetCharaPos(0, 2290.27, 0.0, 1646.13)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_2a840()
	local var0: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetFadeOut(30)
		at = 2
		helper_888ab2a3(30)
		event.LoadSound(2237)
		var0 = event.SndLoadSound_2(2237) or var0
		event.CharaActive(0, 0)
		event.CharaActive(0, 8)
		event.CharaActive(0, 9)
		event.CharaActive(0, 10)
		helper_f97100db()
		at = 3
		helper_b76e3b36()
		event.EohSyncObj_2(0, "p01_train01")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 0.0, 400.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.EohSyncObj_2(1, "p01_shadow-0")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadChara(5, "event/train/steam/steam_l.gltf", "info", 32)
		event.CharaActive(0, 32)
		event.EohSyncChara(2, 32)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "event/train/steam/steam_r.gltf", "info", 33)
		event.CharaActive(0, 33)
		event.EohSyncChara(3, 33)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.EsmInitialize(5)
		event.EsmLoadBase("列車煙")
		event.EsmInitFix(5)
		event.EohSyncObj_2(0, "p01_train01")
		event.EsmCreate("列車煙")
		event.EsmSetValue(0, 0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-304.68, 110.91, -288.45)
		event.CmrsSetRef(-158.49, 89.18, -46.7)
		event.SetFadeIn(30)
		at = 4
		helper_888ab2a3(30)
		event.CharaActive(1, 32)
		event.ObjsSetPos(2, 30.0, 20.0, 380.0)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(2, "ぶしゅー", 6)
		event.CharaActive(1, 33)
		event.ObjsSetPos(3, -30.0, 20.0, 380.0)
		event.ObjsSetRot(3, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(3, "ぶしゅー", 6)
		event.ObjsMove2(0, 0.0, 0.0, 6000.0, 210, 1, 1.0)
		event.ObjsMove2(1, 0.0, 0.0, 6000.0, 210, 1, 1.0)
		event.ObjsMove2(2, 0.0, 0.0, 6000.0, 210, 1, 1.0)
		event.ObjsMove2(3, 0.0, 0.0, 6000.0, 210, 1, 1.0)
		event.SndSePlay(var0, 3)
		at = 5
		wait_objects(0)
		event.SetFadeOut(30)
		at = 6
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(30)
		end
		if at <= 2 then
			helper_1ef0d4b2()
			helper_6cf80642()
		end
		if at <= 3 then
			helper_038a2e4d(30)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 7
	vm.entry(7)
	event.CancelDramaScene()
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	event.EsmClear()
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.EohSetShadow(0, 1)
	event.CharaActive(0)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
function script.event_99()
	event.Initialize()
	helper_8efad286()
	event.SetCameraPos(-368.0, 50.0, 62.1)
	event.SetCameraRef(-368.0, 30.0, -57.9)
	event.SetCharaPos(0, -368.0, 0.0, -57.9)
	event.SetCharaRot(0, 0.0, 0.0, 0.0)
	event.SetFadeIn(15)
end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local mc_load: s32 = 0
	local old_map_no: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		helper_8efad286()
		print("start_event--------------------------------------------\n")
		flag = event.GetFlag(31) or flag
		flag_2 = event.GetFlag(254) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			helper_40070()
			event.MapJump_3(-1, "s47", 505)
			return
		end
		mc_load = event.CheckMcLoad() or mc_load
		if mc_load == 1 then
			event.SetCharaPos(0, -750.0, 0.0, -75.0)
			event.SetCharaRot(0, 0.0, 1.57, 0.0)
			event.SetMotion(0, "立ち", 4)
			event.CharaNormalDrive(0)
			event.CharaResetDa(0)
			event.ResetCamera(1, 0.0, 20.0)
		else
			old_map_no = event.GetOldMapNo() or old_map_no
			var4 = event.GetMapType(old_map_no) or var4
			if var4 ~= -1 then
				if var4 == 7 or var4 == 8 then
					at = 2
					helper_2bb50()
					event.SetMotion(0, "立ち")
					return
				else
					if old_map_no == 53 then
						at = 3
						helper_44928()
						return
					end
					if old_map_no == 0 then
						at = 4
						helper_2b6c8()
					else
						var5 = event.GetCnt(1) or var5
						if
							(old_map_no == 18 or old_map_no == 23 or old_map_no == 120 or old_map_no == 108)
							and var5 == 2
						then
							helper_946c0402()
							event.SetFadeIn(15)
							event.ResetCamera(1, 0.0)
						else
							var6 = event.GetChapter() or var6
							if var6 ~= 6 and var6 ~= 7 then
								at = 5
								helper_28ec8()
							else
								at = 6
								helper_27ae8()
							end
						end
					end
				end
			end
			event.SetMotion(0, "立ち")
		end
		return
	end, function(received: { any })
		if at <= 2 then
			return 0
		end
		if at <= 3 then
			return 0
		end
		if at <= 6 then
			if at <= 4 then
				helper_d7295df9()
				at = 5
				helper_28ec8()
				return vm.continue_with(function()
					event.SetMotion(0, "立ち")
					return
				end)
			end
			if at <= 5 then
				helper_24a00000()
			end
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.SetMesStr(0, 16, "なかみ")
	event.MesMake_2(0, "ここから[文字列１６]ここまで")
	show_message(0, -1, 5, 0, 0)
end

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	vm.wait(1)
	helper_c956b4a2(32)
end

--- Event 209, which map data, a script or the engine runs by number.
function script.event_209()
	local flag: s32 = 0
	if helper_262a4() ~= 0 then
		event.SetFadeOut(0)
		vm.wait(2)
		flag = event.GetFlag(208) or flag
		if flag == 0 then
			event.BgmPlayCancel()
		end
		event.MapJump_2(-1, "g01")
		return
	end
end

--- Event 210, which map data, a script or the engine runs by number.
function script.event_210()
	if helper_26ea4() ~= 0 then
		helper_2c054()
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
		event.SetCnt(1, 2)
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

--- Event 499, which map data, a script or the engine runs by number.
script.event_499 = helper_28ec8

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	event.Initialize()
	event.SetFadeOut(0)
	vm.wait(1)
	event.LoadScript("s02/s02b.stb", 501)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	event.Initialize()
	vm.wait(1)
	event.LoadScript("s02/s02b.stb", 502)
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	event.Initialize()
	vm.wait(1)
	event.LoadScript("s02/s02b.stb", 503)
end

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	event.Initialize()
	helper_8efad286()
	helper_2b6c8()
	event.SetMotion(0, "立ち")
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local var0: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetEventData_2(14) or var0
		if var0 == 1 then
			at = 1
			var1 = helper_ef001e52()
			if var1 == 1 then
				at = 2
				helper_430b4()
				at = 3
				helper_2a840()
				event.GotoMenu(13, 4)
				at = 4
				vm.wait(4)
				event.MapJump_2(-1, "s04")
			end
		end
		if var0 == 2 then
			at = 5
			helper_4cb9ff49()
		end
		if var0 == 13 then
			at = 6
			helper_71aacd6c()
		end
		if var0 == 301 then
			at = 7
			helper_ce60ccd6()
		end
		return
	end, function(received: { any })
		if at <= 7 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_430b4()
				return vm.continue_with(function()
					at = 3
					helper_2a840()
					event.GotoMenu(13, 4)
					at = 4
					vm.wait(4)
					event.MapJump_2(-1, "s04")
					if var0 == 2 then
						at = 5
						helper_4cb9ff49()
					end
					if var0 == 13 then
						at = 6
						helper_71aacd6c()
					end
					if var0 == 301 then
						at = 7
						helper_ce60ccd6()
					end
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_2a840()
				return vm.continue_with(function()
					event.GotoMenu(13, 4)
					at = 4
					vm.wait(4)
					event.MapJump_2(-1, "s04")
					if var0 == 2 then
						at = 5
						helper_4cb9ff49()
					end
					if var0 == 13 then
						at = 6
						helper_71aacd6c()
					end
					if var0 == 301 then
						at = 7
						helper_ce60ccd6()
					end
					return
				end)
			end
			if at <= 4 then
				helper_ed56af24()
			end
			if at <= 5 then
				helper_4071559a()
			end
			if at <= 6 then
				helper_21d8472e()
			end
			return 0
		end
		return nil
	end)
end

--- Event 12070, which map data, a script or the engine runs by number.
function script.event_12070()
	event.Initialize()
	event.SetFadeOut(0)
	vm.wait(1)
	event.LoadScript("s02/s02b.stb", 501)
end

--- Event 12541, which map data, a script or the engine runs by number.
function script.event_12541()
	event.SetFloorInfo(1, 7, 5, 256)
	helper_40070()
	event.MapJump_3(-1, "s47", 505)
end

--- Event 12830, which map data, a script or the engine runs by number.
function script.event_12830()
	local at: number = 0
	return vm.guard(function()
		at = 1
		helper_430b4()
		at = 2
		helper_2a840()
		event.GotoMenu(13, 4)
		at = 3
		vm.wait(3)
		event.MapJump_2(-1, "s04")
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_2a840()
				return vm.continue_with(function()
					event.GotoMenu(13, 4)
					at = 3
					vm.wait(3)
					event.MapJump_2(-1, "s04")
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

return script
