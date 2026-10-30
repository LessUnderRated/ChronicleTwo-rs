--!strict
-- map/d/d06/b01/d06b01_1.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_47084b1b = require("@lib/event/helper_47084b1b")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_53e37a5a = require("@lib/event/helper_53e37a5a")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_7b686c6d = require("@lib/event/helper_7b686c6d")
local helper_80ad60c2 = require("@lib/event/helper_80ad60c2")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_bb1bdba7 = require("@lib/event/helper_bb1bdba7")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_e04c1ddc = require("@lib/event/helper_e04c1ddc")
local helper_f0ee9a01 = require("@lib/event/helper_f0ee9a01")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0
local global2: s32 = 0
local global3: s32 = 0

--- Event 99, which map data, a script or the engine runs by number.
local function event_99() end

--- Helper function.
local function helper_1963c()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.DngSetupMainUnit(0)
		active_chr_no = 0
	end
	if active_chr_no == 3 then
		event.DngSetupMainUnit(1)
		active_chr_no = 1
	end
	if active_chr_no == 0 then
		global0 = 0
		global1 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e700/e728/e728_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 1, "info", global1, 17)
		event.LoadEquip(5, 1, 0, "info", global1, 18)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 13)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e700/e728/e728_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 13)
	end
	if active_chr_no == 1 then
		global0 = 8
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 1, "info", global0, 17)
		event.LoadEquip(5, 0, 0, "info", global0, 18)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 13)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e700/e728/e728_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 13)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e700/e728/e728_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.LoadChara(5, "event/e700/e728/e728_boss10a.gltf", "info", 19)
	event.CharaActive(0, 19)
	event.EohSyncChara(11, 19)
	event.ObjsInit(11, 19)
	event.ObjsSyncObj(11, 11)
	event.LoadChara(5, "event/e700/e728/e728_particle.gltf", "info", 10)
	event.CharaActive(0, 10)
	event.CharaActive(1, 17)
	event.CharaActive(1, 18)
	event.LoadMes(0, 5, "event/e700/e728/e728_1.txt")
end

--- Helper function.
local function helper_22300000()
	local var0: s32 = 0
	local _ = var0 == 2
	var0 = 0
	local _ = var0 == 3
	var0 = 1
	global0 = 0
	global1 = 8
	global0 = 8
	global1 = 0
end

--- Helper function.
local function helper_19184()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(13)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(13)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(19)
	event.DeleteChara(10)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.SetStatusbarShow(1, 1.0)
	event.Finish()
end

--- Helper function.
local function helper_1a7b8()
	local var4: s32 = 0
	local projection: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(728, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		event.LoadSound(7831)
		var4 = event.SndLoadSound_2(7831) or var4
		helper_1963c()
		projection = event.GetProjection() or projection
		event.InitDramaScene()
		event.EohSyncChara(2, 1)
		event.EohSetShow(2, 0)
		event.EohSyncChara(3, 2)
		event.EohSetShow(3, 0)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 19)
		event.CmrsSetPos(-67.28, 15.66, -27.15)
		event.CmrsSetRef(-7.11, 7.02, -6.4)
		event.ObjsSetPos(11, 0.0, 0.0, 0.0)
		event.ObjsSetRot(11, 0.0, 3.12, 0.0)
		event.ObjsSetPos(0, -10.0, 0.0, -90.19)
		event.ObjsSetRot(0, 0.0, 0.12, 0.0)
		event.ObjsSetPos(1, 10.0, 0.0, -90.73)
		event.ObjsSetRot(1, 0.0, -0.12, 0.0)
		event.SetFadeIn(30)
		event.ObjsSetMotion(11, "立ち4", 4)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		at = 2
		wait_frames(15)
		event.SndSePlay(var4, 0)
		event.ObjsSetMotion(11, "ドスッ", 2)
		event.ObjsNextMotion(11, "ドスッＬ", 4)
		at = 3
		wait_frames(30)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-67.28, 15.66, -27.15, -7.11, 7.02, -6.4)
		event.CmrsAddPas(-67.28, 40.31, -27.15, -7.11, 31.68, -6.4)
		event.CmrsStartPas()
		at = 4
		helper_1584c528(7280010, -1)
		at = 5
		wait_camera()
		event.CmrsSetPos(0.0, 4.51, -46.14)
		event.CmrsSetRef(0.0, 30.71, -128.08)
		at = 6
		wait_frames(30)
		event.SndSePlay(var4, 1)
		event.SetCharaPos(10, 0.0, 0.0, 0.0)
		event.SetCharaRot(10, 0.0, 3.12, 0.0)
		event.SetMotion(10, "ドスッＬ")
		event.CharaActive(1, 10)
		event.CmrsSetPos(0.0, 18.36, -103.26)
		event.CmrsSetRef(0.0, 27.17, 0.0)
		at = 7
		wait_frames(30)
		event.SetCharaShow(10, 0, 1, 0.0033)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(300)
		event.CmrsAddPas(0.0, 18.36, -103.26, 0.0, 27.17, 0.0)
		event.CmrsAddPas(0.0, 88.44, -103.26, 0.0, 97.25, 0.0)
		event.CmrsStartPas()
		at = 8
		wait_camera()
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_22300000()
			wait_frames_skipping(15)
		end
		if at <= 2 then
			wait_frames_skipping(30)
		end
		if at <= 3 then
			helper_52aadc70(7280010, -1)
		end
		if at <= 4 then
			helper_344d6cd8()
		end
		if at <= 5 then
			wait_frames_skipping(30)
		end
		if at <= 6 then
			wait_frames_skipping(30)
		end
		if at <= 7 then
			helper_344d6cd8()
		end
		return true
	end)
	at = 9
	vm.entry(9)
	event.CancelDramaScene()
	event.CmrsFadeOut(60, 255.0, 255.0, 255.0)
	at = 10
	wait_frames(60)
	event.SndSeAllStop(4)
	event.BgmLoadCancel()
	at = 11
	vm.wait(11)
	event.SetProjection(projection)
	helper_19184()
end

--- Event 502, which map data, a script or the engine runs by number.
local function event_502()
	local active_chr_no: s32 = 0
	local active_chr_no_2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.FadeOutBgm(20)
		event.SetFadeOut(20)
		at = 1
		wait_frames(20)
		event.SoundAllStop()
		at = 2
		vm.wait(2)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetCharaCondition(active_chr_no, 8, 1)
		event.DelMonster(-1)
		active_chr_no_2 = event.GetActiveChrNo() or active_chr_no_2
		if active_chr_no_2 == 2 then
			event.DngSetupMainUnit(0)
		end
		if active_chr_no_2 == 3 then
			event.DngSetupMainUnit(1)
		end
		at = 3
		wait_frames(30)
		at = 4
		helper_1a7b8()
		event.BgmLoadCancel()
		event.LoadDungeonMapFile("s44")
		event.LoadScript("s44/s44.stb", 510)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 2 then
				wait_frames_skipping(30)
			end
			if at <= 3 then
				at = 4
				helper_1a7b8()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.LoadDungeonMapFile("s44")
					event.LoadScript("s44/s44.stb", 510)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_1be60()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.DngSetupMainUnit(0)
		active_chr_no = 0
	end
	if active_chr_no == 3 then
		event.DngSetupMainUnit(1)
		active_chr_no = 1
	end
	if active_chr_no == 0 then
		global2 = 0
		global3 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global2)
		event.LoadMotion(5, "event/e700/e728/e728_mints.gltf", "info", global2)
		event.EohSyncChara(0, global2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global2)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global3)
		event.LoadEquip(5, 1, 1, "info", global3, 17)
		event.LoadEquip(5, 1, 0, "info", global3, 18)
		event.LoadEquip(5, 1, 4, "info", global3)
		event.LoadEquip(5, 1, 3, "info", global3)
		event.LoadEquip(5, 1, 2, "info", global3, 13)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global3)
		event.LoadMotion(5, "event/e700/e728/e728_monica.gltf", "info", global3)
		event.EohSyncChara(1, global3)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global3)
		event.CharaActive(1, 13)
	end
	if active_chr_no == 1 then
		global2 = 8
		global3 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global2)
		event.LoadEquip(5, 0, 1, "info", global2, 17)
		event.LoadEquip(5, 0, 0, "info", global2, 18)
		event.LoadEquip(5, 0, 4, "info", global2)
		event.LoadEquip(5, 0, 3, "info", global2)
		event.LoadEquip(5, 0, 2, "info", global2, 13)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global2)
		event.LoadMotion(5, "event/e700/e728/e728_mints.gltf", "info", global2)
		event.EohSyncChara(0, global2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global2)
		event.CharaActive(1, 13)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global3)
		event.LoadMotion(5, "event/e700/e728/e728_monica.gltf", "info", global3)
		event.EohSyncChara(1, global3)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global3)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e700/e728/e728_sun.gltf", "info", 9)
	event.CharaActive(0, 9)
	event.EohSyncChara(4, 9)
	event.ObjsInit(2, 9)
	event.ObjsSyncObj(2, 4)
	event.CharaActive(1, 17)
	event.CharaActive(1, 18)
	event.LoadMes(0, 5, "event/e700/e728/e728_1.txt")
	event.AssignStack(6)
	event.ClearStack(6)
	event.LoadChara(6, "event/e700/e728/atora_red.gltf", "atora_red", 19)
	event.CharaActive(0, 19)
	event.EohSyncChara(11, 19)
	event.ObjsInit(11, 19)
	event.ObjsSyncObj(11, 11)
	event.LoadChara(6, "event/e700/e728/atora_blue.gltf", "atora_blue", 20)
	event.CharaActive(0, 20)
	event.EohSyncChara(12, 20)
	event.ObjsInit(12, 20)
	event.ObjsSyncObj(12, 12)
	event.LoadChara(6, "event/e700/e728/atora_yellow.gltf", "a_yellow", 21)
	event.CharaActive(0, 21)
	event.EohSyncChara(13, 21)
	event.ObjsInit(13, 21)
	event.ObjsSyncObj(13, 13)
	event.LoadChara(6, "event/e700/e728/e728_dark_smoke.gltf", "info", 10, 1)
	event.CharaActive(0, 10)
	event.EohSyncChara(5, 10)
	event.ObjsInit(5, 10)
	event.ObjsSyncObj(5, 5)
	event.LoadChara(6, "event/e700/e728/e728_desmoke2.gltf", "info", 12)
	event.CharaActive(0, 12)
	event.SetCharaType(12, 4)
	event.LoadChara(6, "event/e700/e728/e728_desmoke.gltf", "info", 11)
	event.CharaActive(0, 11)
	event.SetCharaType(11, 4)
	event.LoadChara(6, "event/e700/e728/e728_smoky_haze.gltf", "info", 22)
	event.CharaActive(0, 22)
	event.SetCharaType(22, 4)
	event.LoadChara(6, "event/e700/e728/e728_eleki.gltf", "info", 23)
	event.CharaActive(0, 23)
	event.SetCharaType(23, 4)
end

--- Helper function.
local function helper_22700000()
	local var0: s32 = 0
	local _ = var0 == 2
	var0 = 0
	local _ = var0 == 3
	var0 = 1
	global2 = 0
	global3 = 8
	global2 = 8
	global3 = 0
end

--- Helper function.
local function helper_1b834()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global2)
		event.CharaActive(0, global3)
		event.DelExtMotion(global2)
		event.DelExtMotion(global3)
		event.DeleteChara(global3)
		event.DeleteChara(13)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global3)
		event.CharaActive(0, global2)
		event.DelExtMotion(global2)
		event.DelExtMotion(global3)
		event.DeleteChara(global2)
		event.DeleteChara(13)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(22)
	event.DeleteChara(23)
	event.DeleteChara(19)
	event.DeleteChara(20)
	event.DeleteChara(21)
	event.SetStatus(1, 0, 256, 0)
	event.DelImg(0)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.SetStatusbarShow(1, 1.0)
	vm.wait(1)
	event.Finish()
end

--- Helper function.
local function helper_1d868()
	local var4: s32 = 0
	local projection: f32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	local at: number = 0
	vm.section(function()
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
		event.LoadBgm(33)
		event.LoadSound(7833)
		var4 = event.SndLoadSound_2(7833) or var4
		helper_1be60()
		event.SetStatus(1, 0, 256, 1)
		projection = event.GetProjection() or projection
		event.InitDramaScene()
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(1, 2)
		event.EohSyncChara(2, 1)
		event.EohSetShow(2, 0)
		event.EohSyncChara(3, 2)
		event.EohSetShow(3, 0)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "目とじ")
		event.CharaActive(1, global2)
		event.CharaActive(1, global3)
		event.CharaActive(1, 9)
		event.CharaActive(1, 19)
		event.CharaActive(1, 20)
		event.CharaActive(1, 21)
		event.CmrsSetPos(-32.56, 15.66, -127.35)
		event.CmrsSetRef(3.81, 7.02, -6.74)
		event.ObjsSetMotion(0, "かまえるL", 4, -1.0, 1)
		event.ObjsSetMotion(1, "構えるL", 4, -1.0, 1)
		event.ObjsSetMotion(2, "倒れ", 4)
		event.ObjsSetMotion(13, "ループ", 4)
		event.ObjsSetPos(5, 0.0, 0.0, 0.0)
		event.ObjsSetRot(5, 0.0, 3.12, 0.0)
		event.ObjsSetPos(2, 0.0, 0.0, 0.0)
		event.ObjsSetRot(2, 0.0, 3.12, 0.0)
		event.ObjsSetPos(0, -10.0, 0.0, -120.19)
		event.ObjsSetRot(0, 0.0, 0.12, 0.0)
		event.ObjsSetPos(1, 10.0, 0.0, -120.73)
		event.ObjsSetRot(1, 0.0, -0.12, 0.0)
		event.ObjsSetPos(11, -13.5, 2.0, -18.9)
		event.ObjsSetPos(12, 14.39, 2.0, -20.63)
		event.ObjsSetPos(13, 0.92, 2.0, -40.58)
		event.SetCharaPos(11, 0.0, 0.0, 0.0)
		event.SetCharaRot(11, 0.0, 3.12, 0.0)
		event.CmrsFadeIn(60, 255.0, 255.0, 255.0)
		at = 5
		wait_frames(60)
		event.CmrsSetPos(-32.93, 11.56, -74.72)
		event.CmrsSetRef(2.53, 23.99, -128.27)
		at = 6
		wait_frames(60)
		event.SndSePlay(var4, 0)
		event.PlayBgm(0)
		event.CmrsSetPos(-9.32, 6.57, -86.8)
		event.CmrsSetRef(-1.8, 11.05, -21.29)
		event.SetMotion(11, "倒れ")
		event.CharaActive(1, 11)
		at = 7
		wait_frames(60)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(120)
		event.CmrsAddPas(-9.32, 6.57, -86.8, -1.8, 11.05, -21.29)
		event.CmrsAddPas(-9.32, 74.82, -86.8, -1.8, 79.3, -21.29)
		event.CmrsStartPas()
		at = 8
		wait_camera()
		event.SndSeStop(var4, 0)
		event.CmrsSetPos(0.0, 39.3, -81.55)
		event.CmrsSetRef(0.0, 43.79, 47.97)
		event.SetCrossfade(30)
		event.SetCharaPos(12, 0.0, 0.0, 0.0)
		event.SetCharaRot(12, 0.0, 0.0, 0.0)
		event.SetReference(10, "tama", 12)
		event.CharaActive(0, 11)
		event.CharaActive(1, 12)
		event.CharaActive(1, 10)
		event.ObjsSetMotion(5, "頭出る", 2)
		event.ObjsNextMotion(5, "頭出るL", 4)
		event.SetMotion(12, "煙", 4)
		at = 9
		wait_frames(60)
		at = 10
		helper_1584c528(7280130, -1)
		at = 11
		wait_frames(15)
		event.SndSePlay(var4, 1)
		event.ObjsSetPos(5, -9.28, 0.0, 92.69)
		event.ObjsSetRot(5, 0.0, 3.12, 0.0)
		event.CmrsSetPos(2.87, 91.44, 141.96)
		event.CmrsSetRef(-29.58, -87.11, -60.47)
		event.ObjsSetMotion(5, "手出る", 2)
		event.ObjsNextMotion(5, "手出るL", 4)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(60)
		event.CmrsAddPas(-2.01, 89.39, 130.66, -44.03, -87.11, -58.36)
		event.CmrsAddPas(11.99, 89.39, 127.55, -30.02, -87.11, -61.48)
		event.CmrsStartPas()
		at = 12
		wait_camera()
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 1, "口とじ～大口")
		event.CmrsSetPos(-13.15, 15.34, -65.86)
		event.CmrsSetRef(-0.08, 23.99, -128.89)
		at = 13
		wait_frames(30)
		event.ObjsSetPos(5, 4.78, 0.0, 53.85)
		event.ObjsSetRot(5, 0.0, 3.12, 0.0)
		event.CmrsSetPos(-57.13, 39.76, -179.68)
		event.CmrsSetRef(-1.0, 27.1, -92.85)
		event.SndSePlay(var4, 2)
		event.ObjsSetMotion(5, "手を上げる", 2)
		event.ObjsNextMotion(5, "手を上げるL", 4)
		at = 14
		wait_objects(5)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(30)
		event.CmrsAddPas(-9.42, 77.41, 0.77, 18.74, 30.15, 60.29)
		event.CmrsAddPas(-9.42, 110.88, 0.77, 18.74, 63.62, 60.29)
		event.CmrsStartPas()
		event.SndSePlay(var4, 2)
		event.ObjsSetMotion(5, "手を上げる", 6)
		event.ObjsNextMotion(5, "手を上げるL", 4)
		at = 15
		wait_objects(5)
		at = 16
		wait_camera()
		event.SetProjection(2000.0)
		event.ObjsSetPos(5, -1.85, 0.0, 111.08)
		event.ObjsSetRot(5, 0.0, 3.12, 0.0)
		event.CmrsSetPos(-65.42, 178.12, 284.97)
		event.CmrsSetRef(1.97, 9.98, -1.2)
		event.ObjsSetMotion(5, "刺す", 6)
		event.ObjsSetMotionNowTime(5, 7.3)
		event.ObjsSetStep(5, 0.0)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(30)
		event.CmrsAddPas(-93.52, 235.35, 238.15, 10.9, 0.71, 16.2)
		event.CmrsAddPas(-51.36, 154.32, 132.67, 1.44, 0.71, -4.66)
		event.CmrsStartPas()
		at = 17
		wait_camera()
		event.SetProjection(projection)
		event.ObjsSetPos(0, 0.0, 0.0, 0.0)
		event.ObjsSetRot(0, 0.0, 3.12, 0.0)
		event.ObjsSetPos(2, 0.0, 0.0, 0.0)
		event.ObjsSetRot(2, 0.0, 3.12, 0.0)
		event.CmrsSetPos(-4.32, 54.48, 94.69)
		event.CmrsSetRef(14.36, 29.4, 225.15)
		event.ObjsSetMotionNowTime(5, 0.0)
		event.ObjsSetStep(5, 0.2)
		event.ObjsSetMotion(0, "助ける", 6)
		event.ObjsNextMotion(0, "助けるL", 4)
		event.ObjsSetMotion(2, "助ける", 6)
		event.ObjsNextMotion(2, "助けるL", 4)
		at = 18
		wait_frames(20)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsSetMotion(5, "手を上げるL", 4)
		event.ObjsSetPos(5, 2.97, 0.0, 29.69)
		event.ObjsSetRot(5, 0.0, 3.12, 0.0)
		event.CmrsSetPos(-6.23, 29.14, -137.75)
		event.CmrsSetRef(7.05, 22.23, 28.01)
		event.ObjsSetMotion(5, "刺す", 6)
		event.ObjsNextMotion(5, "刺すL", 4)
		event.SndSePlay(var4, 3)
		at = 19
		wait_frames(15)
		event.CharaActive(1, 23)
		event.SetCharaPos(23, 0.0, 0.0, 0.0)
		event.SetCharaRot(23, 0.0, 0.0, 0.0)
		event.SetMotion(23, "暗黒エレキ", 6, -1, 1)
		event.CmrsQuake(0.0, 0.6, 0.0, 30)
		at = 20
		wait_camera()
		at = 21
		wait_frames(30)
		event.ObjsSetPos(2, 35.51, 0.0, -10.86)
		event.ObjsSetRot(2, 0.0, 1.68, 0.0)
		event.ObjsSetPos(0, 35.51, 0.0, -10.86)
		event.ObjsSetRot(0, 0.0, 1.68, 0.0)
		event.ObjsSetMotion(0, "抱え", 4)
		event.ObjsSetMotion(2, "抱え", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "目とじ～目あき")
		event.CharaActive(0, 23)
		event.ObjsSetMotion(5, "刺すL", 4)
		event.ObjsSetPos(2, 200.0, 0.0, 0.0)
		event.ObjsSetRot(2, 0.0, -1.44, 0.0)
		event.ObjsSetPos(0, 200.0, 0.0, 0.0)
		event.ObjsSetRot(0, 0.0, -1.44, 0.0)
		event.CmrsSetPos(130.67, 16.54, 1.06)
		event.CmrsSetRef(202.0, 15.78, 1.22)
		at = 22
		helper_1584c528(7280140, 30)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.ObjsSetMotion(0, "寝かせる", 2)
		event.ObjsNextMotion(0, "寝かせるL", 4)
		event.ObjsSetMotion(2, "寝かせる", 2)
		event.ObjsNextMotion(2, "寝かせるL", 4)
		at = 23
		wait_objects(2)
		at = 24
		wait_objects(0)
		at = 25
		wait_frames(15)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "前向き～下向き")
		event.ObjsSetMotion(0, "うなづく", 2)
		event.ObjsNextMotion(0, "寝かせるL", 4)
		at = 26
		wait_objects(0)
		event.SndSePlay(var4, 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "下向き～前向き")
		event.SndSePlay(var4, 5)
		event.ObjsSetMotion(0, "立つ", 2)
		event.ObjsNextMotion(0, "立ち", 4)
		at = 27
		wait_objects(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsSetPos(5, 2.97, 0.0, 29.69)
		event.ObjsSetRot(5, 0.0, 1.8, 0.0)
		event.ObjsSetPos(0, 81.45, 0.0, 21.84)
		event.ObjsSetRot(0, 0.0, -1.44, 0.0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 1 then
			event.CharaActive(1, 17)
			event.CharaActive(1, 18)
		else
			event.EohSyncChara(2, 1)
			event.EohSetShow(2, 1)
			event.EohSyncChara(3, 2)
			event.EohSetShow(3, 1)
		end
		event.SndSePlay(var4, 6)
		event.ObjsSetMotion(0, "かまえる", 6)
		event.ObjsNextMotion(0, "かまえるL", 4)
		event.CmrsSetPos(166.63, 38.2, -13.18)
		event.CmrsSetRef(70.91, 29.78, 10.61)
		at = 28
		helper_1584c528(7280150, -1)
		event.FadeOutBgm(60)
		at = 29
		wait_frames(60)
		event.StopBgm(0)
		at = 30
		vm.wait(30)
		at = 31
		vm.wait(31)
		at = 32
		vm.wait(32)
		at = 33
		vm.wait(33)
		event.LoadBgm(167)
		event.PlayBgm(0)
		event.ObjsSetPos(5, 2.97, 0.0, 29.69)
		event.ObjsSetRot(5, 0.0, 3.12, 0.0)
		event.ObjsSetPos(0, -10.0, 0.0, -120.19)
		event.ObjsSetRot(0, 0.0, 0.12, 0.0)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(60)
		event.CmrsAddPas(0.1, 17.53, -95.17, 5.91, 10.61, 34.67)
		event.CmrsAddPas(-1.18, 22.61, -123.61, 5.91, 32.94, 34.67)
		event.CmrsStartPas()
		event.SndSePlay(var4, 7)
		event.ObjsSetMotion(5, "杖かざす", 6)
		event.ObjsNextMotion(5, "杖かざすL", 4)
		event.ObjsMove2(11, -22.49, 36.0, -50.18, 40, 0, 1.0)
		event.ObjsMove2(12, 14.15, 32.65, -67.78, 40, 0, 1.0)
		event.ObjsMove2(13, -7.3, 24.54, -54.27, 40, 0, 1.0)
		at = 34
		wait_frames(90)
		event.CmrsSetPos(14.08, 134.04, -46.86)
		event.CmrsSetRef(3.49, 46.6, 27.57)
		event.SetReference(22, "red", 19)
		event.SetReference(22, "blue", 20)
		event.SetReference(22, "yellow", 21)
		event.ObjsSetPos(11, 0.0, 0.0, 0.0)
		event.ObjsSetPos(12, 0.0, 0.0, 0.0)
		event.ObjsSetPos(13, 0.0, 0.0, 0.0)
		event.CharaActive(0, 12)
		event.SetCharaPos(22, 2.97, 0.0, 29.69)
		event.SetCharaRot(22, 0.0, 3.12, 0.0)
		event.CharaActive(1, 22)
		event.SetMotion(22, "ブルブル", 2, -1, 1)
		at = 35
		wait_frames(30)
		event.ObjsSetMotion(5, "ブルブル", 4)
		event.CharaActive(0, 19)
		event.CharaActive(0, 20)
		event.CharaActive(0, 21)
		at = 36
		wait_frames(90)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 1, "半口")
		event.CmrsSetPos(-34.37, 35.47, -57.39)
		event.CmrsSetRef(-2.38, 20.71, -112.3)
		event.ObjsSetMotion(1, "おどろき", 2, -1.0, 1)
		event.ObjsNextMotion(1, "おどろきL", 4)
		event.ObjsSetMotion(0, "驚く", 2, -1.0, 1)
		event.ObjsNextMotion(0, "驚くL", 4)
		event.CharaActive(0, 10)
		event.CharaActive(0, 22)
		at = 37
		wait_frames(60)
		event.DeleteChara(10)
		event.DeleteChara(11)
		event.DeleteChara(12)
		event.DeleteChara(22)
		event.DeleteChara(19)
		event.DeleteChara(20)
		event.DeleteChara(21)
		event.ClearStack(6)
		event.LoadChara(6, "event/e700/e728/e728_dark.gltf", "info", 10, 1)
		event.CharaActive(0, 10)
		event.EohSyncChara(15, 10)
		event.ObjsInit(15, 10)
		event.ObjsSyncObj(15, 15)
		event.LoadChara(6, "event/e700/e728/e728_power.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.SetCharaType(11, 4)
		event.LoadChara(6, "event/e700/e728/e728_deeye.gltf", "info", 12)
		event.CharaActive(0, 12)
		event.SetCharaType(12, 4)
		event.LoadChara(6, "event/e700/e728/e728_gokou.gltf", "info", 22)
		event.CharaActive(0, 22)
		event.EohSyncChara(9, 22)
		event.ObjsInit(9, 22)
		event.ObjsSyncObj(9, 9)
		event.SetCharaType(22, 4)
		event.LoadChara(6, "event/e700/e728/b11a_hikari_blue.gltf", "info", 23)
		event.CharaActive(0, 23)
		event.SetCharaType(23, 4)
		event.LoadChara(6, "event/e700/e728/e728_gokou2.gltf", "info", 19)
		event.CharaActive(0, 19)
		event.SetCharaType(19, 4)
		event.LoadChara(6, "event/e700/e728/e728_deobi_y.gltf", "info", 20)
		event.CharaActive(0, 20)
		event.EohSyncChara(8, 20)
		event.ObjsInit(8, 20)
		event.ObjsSyncObj(8, 8)
		event.LoadChara(6, "event/e700/e728/e728_deobi_m.gltf", "info", 21)
		event.CharaActive(0, 21)
		event.EohSyncChara(7, 21)
		event.ObjsInit(7, 21)
		event.ObjsSyncObj(7, 7)
		block = event.LoadImg_4(6, "textures/event/e700/e728/e728telop06_1.json", 0) or block
		event.SpriteInit(4)
		event.SpriteSetType(4, 0)
		event.SpriteSetTexture(4, "e728telop06", block)
		event.SpriteSetUvsize(4, 0, 0, 512, 128)
		event.SpriteSetPutsize(4, 512, 128)
		event.SpriteSetPos(4, 320, 334)
		event.SpriteSetColor(4, 128, 128, 128, 0)
		event.SpriteSetScale(4, 1.0, 1.0)
		event.SpriteSetDraw(4, 0)
		event.EohSyncSprite(14, 4)
		event.ObjsInit(14)
		event.ObjsSyncObj(14, 14)
		event.SetReference(10, "tama", 23)
		event.CharaActive(1, 23)
		event.CharaActive(1, 10)
		event.ObjsSetPos(15, 0.0, 0.0, 0.0)
		event.ObjsSetRot(15, 0.0, 3.12, 0.0)
		event.ObjsSetMotion(15, "立ち", 6)
		event.CharaActive(0, global2)
		if active_chr_no == 1 then
			event.CharaActive(0, 17)
			event.CharaActive(0, 18)
		else
			event.EohSyncChara(2, 1)
			event.EohSetShow(2, 0)
			event.EohSyncChara(3, 2)
			event.EohSetShow(3, 0)
		end
		event.CmrsInitPas()
		event.CmrsSetPasFrm(120)
		event.CmrsAddPas(-10.71, 26.07, -68.91, 0.0, 43.32, 0.0)
		event.CmrsAddPas(-18.68, 7.34, -120.21, 0.0, 43.32, 0.0)
		event.CmrsStartPas()
		event.SpriteSetDraw(4, 1)
		event.ObjsSetColor(14, 128, 128, 128, 128, 30)
		at = 38
		wait_camera()
		event.ObjsSetColor(14, 128, 128, 128, 0, 30)
		event.SetCharaPos(11, 0.0, 36.79, 0.0)
		event.SetCharaRot(11, 0.0, 3.12, 0.0)
		event.CharaActive(1, 11)
		event.SndSePlay(var4, 8)
		event.ObjsSetMotion(15, "手を広げる", 6)
		event.ObjsNextMotion(15, "手を広げるL", 4)
		at = 39
		wait_frames(60)
		event.SetMotion(11, "手を広げるL", 4, -1, 1)
		at = 40
		wait_frames(90)
		event.SetCharaPos(12, 0.0, 54.76, 0.0)
		event.SetCharaRot(12, 0.0, 3.12, 0.0)
		event.CharaActive(1, 12)
		event.SndSePlay(var4, 9)
		event.SetMotion(12, "光る", 2, -1, 1)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(120)
		event.CmrsAddPas(3.2, 65.86, -18.65, 0.0, 49.46, 0.0)
		event.CmrsAddPas(-6.36, 65.86, -20.29, -9.56, 49.46, -1.64)
		event.CmrsStartPas()
		event.SetCrossfade(30)
		at = 41
		wait_camera()
		event.SndSeStop(var4, 8)
		event.CharaActive(0, 12)
		event.CharaActive(0, 11)
		event.ObjsSetPos(0, -15.0, 0.0, -120.19)
		event.ObjsSetRot(0, 0.0, 0.12, 0.0)
		event.ObjsSetPos(1, 15.0, 0.0, -120.73)
		event.ObjsSetRot(1, 0.0, -0.12, 0.0)
		event.SetCharaPos(21, 15.0, 0.0, -120.73)
		event.SetCharaRot(21, 0.0, -0.12, 0.0)
		event.SetProjection(1400.0)
		event.CmrsSetPos(0.56, 50.63, -367.73)
		event.CmrsSetRef(0.5, 17.72, -1.34)
		event.CmrsMove(0.58, 50.63, -514.46, 0.5, 17.72, -1.34, 60)
		event.CharaActive(1, global2)
		event.SndSePlay(var4, 10)
		event.SetCharaPos(22, 0.0, 35.0, 240.0)
		event.SetCharaRot(22, 0.0, 3.12, 0.0)
		event.CharaActive(1, 22)
		event.ObjsSetMotion(15, "後光", 6)
		event.ObjsNextMotion(15, "後光L", 4)
		event.ObjsSetMotion(9, "後光", 6)
		event.ObjsNextMotion(9, "後光L", 4)
		event.ObjsSetMotion(1, "まぶしい", 2, -1.0, 1)
		event.ObjsNextMotion(1, "まぶしいL", 4)
		event.ObjsSetMotion(0, "まぶしい", 2, -1.0, 1)
		event.ObjsNextMotion(0, "まぶしいL", 4)
		at = 42
		wait_camera()
		event.SetReference(global2, "ground", 20)
		event.SetCharaPos(19, -40.51, 35.0, -103.49)
		event.SetCharaRot(19, 0.0, -1.2, 0.0)
		event.CmrsSetPos(-119.45, 31.61, -18.57)
		event.CmrsSetRef(-14.55, 16.86, -108.78)
		event.SetCrossfade(30)
		event.CharaActive(1, 19)
		event.SetMotion(19, "後光2", 4, -1, 1)
		at = 43
		wait_frames(60)
		event.CharaActive(1, 21)
		event.CharaActive(1, 20)
		event.SndSePlay(var4, 11)
		event.ObjsSetMotion(1, "まきつき", 6)
		event.ObjsNextMotion(1, "ひっぱられ", 6)
		event.ObjsSetMotion(0, "まきつく", 6)
		event.ObjsNextMotion(0, "引きずり込まれる", 6)
		event.ObjsSetMotion(7, "まきつきL", 6)
		event.ObjsNextMotion(7, "ひっぱられ", 6)
		event.ObjsSetMotion(8, "まきつくL", 6)
		event.ObjsNextMotion(8, "引きずり込まれる", 6)
		at = 44
		wait_frames(60)
	end, function(received: { any }): boolean
		if at <= 4 then
			helper_22700000()
			wait_frames_skipping(60)
		end
		if at <= 5 then
			wait_frames_skipping(60)
		end
		if at <= 6 then
			wait_frames_skipping(60)
		end
		if at <= 7 then
			helper_344d6cd8()
		end
		if at <= 8 then
			wait_frames_skipping(60)
		end
		if at <= 9 then
			helper_52aadc70(7280130, -1)
		end
		if at <= 10 then
			wait_frames_skipping(15)
		end
		if at <= 11 then
			helper_344d6cd8()
		end
		if at <= 12 then
			wait_frames_skipping(30)
		end
		if at <= 13 then
			helper_238b5abc(5)
		end
		if at <= 14 then
			helper_238b5abc(5)
		end
		if at <= 15 then
			helper_344d6cd8()
		end
		if at <= 16 then
			helper_344d6cd8()
		end
		if at <= 17 then
			wait_frames_skipping(20)
		end
		if at <= 18 then
			wait_frames_skipping(15)
		end
		if at <= 19 then
			helper_344d6cd8()
		end
		if at <= 20 then
			wait_frames_skipping(30)
		end
		if at <= 21 then
			helper_52aadc70(7280140, 30)
		end
		if at <= 22 then
			helper_238b5abc(2)
		end
		if at <= 23 then
			helper_238b5abc(0)
		end
		if at <= 24 then
			wait_frames_skipping(15)
		end
		if at <= 25 then
			helper_238b5abc(0)
		end
		if at <= 26 then
			helper_238b5abc(0)
		end
		if at <= 27 then
			helper_52aadc70(7280150, -1)
		end
		if at <= 28 then
			wait_frames_skipping(60)
		end
		if at <= 33 then
			wait_frames_skipping(90)
		end
		if at <= 34 then
			wait_frames_skipping(30)
		end
		if at <= 35 then
			wait_frames_skipping(90)
		end
		if at <= 36 then
			wait_frames_skipping(60)
		end
		if at <= 37 then
			helper_344d6cd8()
		end
		if at <= 38 then
			wait_frames_skipping(60)
		end
		if at <= 39 then
			wait_frames_skipping(90)
		end
		if at <= 40 then
			helper_344d6cd8()
		end
		if at <= 41 then
			helper_344d6cd8()
		end
		if at <= 42 then
			wait_frames_skipping(60)
		end
		if at <= 43 then
			wait_frames_skipping(60)
		end
		return true
	end)
	event.CancelDramaScene()
	event.CmrsFadeOut(60, 255.0, 255.0, 255.0)
	at = 45
	wait_frames(65)
	event.SetProjection(projection)
	event.BgmLoadCancel()
	event.SndSeAllStop(4)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	at = 46
	vm.wait(46)
	at = 47
	helper_1b834()
	at = 48
	vm.wait(48)
	event.ResetCamera(0)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	event_99()
	flag = event.GetFlag(58) or flag
	if flag == 1 then
		helper_7b686c6d()
		event.SetBitCtrl(1, 1)
		helper_9dafbc83(0.0, 0.0, -200.0, 0.0)
		event.SetCameraRef(0.0, 30.0, -200.0)
		event.SetCameraPos(0.0, 40.0, -320.0)
		event.ResetCamera(0)
		vm.wait(2)
		event.LoadMonsterFile(615, 1)
		event.LoadMonsterFile(618, 0)
		event.LoadMonsterFile(619, 0)
		event.LoadMonsterFile(620, 0)
		event.AutoSetMonster(615, 0.0, 50.0, 0.0, 0.0, 3.14, 0.0)
	end
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		at = 1
		vm.wait(1)
		event.SetFadeIn(30)
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(41)
		event.PlayBgm(0)
		event.LoadMonsterFile(615, 1)
		event.LoadMonsterFile(618, 0)
		event.LoadMonsterFile(619, 0)
		event.LoadMonsterFile(620, 0)
		event.AutoSetMonster(615, 0.0, 50.0, 0.0, 0.0, 0.0, 0.0)
		print("Autoset---------------------------------------\n")
		at = 3
		vm.wait(3)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				wait_frames_skipping(4)
			end
			if at <= 2 then
				print("Autoset---------------------------------------\n")
			end
			return 0
		end
		return nil
	end)
end

--- Event 152, which map data, a script or the engine runs by number.
function script.event_152()
	event.Initialize()
	vm.wait(1)
	event.SetFadeOut(30)
	wait_frames(30)
	event.DngPause(15, 1)
	event.DelMonster(-1)
	event.SetFadeIn(30)
	vm.wait(3)
	event.MesMake_2(0, "e720 戦闘中回想１")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.DngPause(15, 0)
	event.LoadMonsterFile(616, 1)
	event.AutoSetMonster(616, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	vm.wait(5)
	event.Finish()
end

--- Event 153, which map data, a script or the engine runs by number.
function script.event_153()
	event.Initialize()
	vm.wait(1)
	event.SetFadeOut(30)
	wait_frames(30)
	event.DngPause(15, 1)
	event.DelMonster(-1)
	event.SetFadeIn(30)
	vm.wait(3)
	event.MesMake_2(0, "e724 戦闘中回想２")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.DngPause(15, 0)
	event.LoadMonsterFile(617, 1)
	event.AutoSetMonster(617, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	vm.wait(5)
	event.Finish()
end

--- Event 154, which map data, a script or the engine runs by number.
function script.event_154()
	event.LoadDungeonMapFile("d06b02")
	event.LoadScript("d06/d06b02.stb", 100)
end

--- Event 155, which map data, a script or the engine runs by number.
script.event_155 = event_502

--- Event 160, which map data, a script or the engine runs by number.
function script.event_160()
	event.Initialize()
	vm.wait(1)
	event.AddItem(20, 1)
	event.AddItem(21, 1)
	event.AddItem(39, 1)
	event.AddItem(40, 1)
	event.AddItem(34, 1)
	event.AddItem(79, 1)
	event.AddItem(81, 1)
	event.AddItem(60, 1)
	event.AddItem(83, 1)
	event.AddItem(78, 1)
	event.AddItem(57, 1)
	event.AddItem(89, 1)
	event.AddItem(88, 1)
	event.AddItem(101, 1)
	event.AddItem(102, 1)
	event.AddItem(109, 1)
	event.AddItem(108, 1)
	vm.wait(2)
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.SetFadeOut(10)
	wait_frames(10)
	event.SetCharaShow(1, 0)
	event.SetCharaShow(2, 0)
	event.SetStatusbarShow(0, 1.0)
	event.DelMonster(-1)
	event.BgmLoadCancel()
	event.SoundLoadCancel()
	event.LoadDungeonMapFile("s64")
	event.LoadScript("s64/s64.stb", 500)
end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.SetFadeOut(10)
	wait_frames(10)
	event.SetCharaShow(1, 0)
	event.SetCharaShow(2, 0)
	event.SetStatusbarShow(0, 1.0)
	event.DelMonster(-1)
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("s31")
	event.LoadScript("s31/s31.stb", 520)
end

script.event_502 = event_502

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	helper_e04c1ddc()
	helper_9dafbc83(0.0, 0.0, -200.0, 0.0)
	event.SetCameraRef(0.0, 30.0, -200.0)
	event.SetCameraPos(0.0, 40.0, -320.0)
	event.ResetCamera(0)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.SetStatusbarShow(1, 1.0)
	vm.wait(2)
	event.LoadMonsterFile(616, 1)
	event.AutoSetMonster(616, 0.0, 0.0, 150.0, 0.0, 3.14, 0.0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Event 511, which map data, a script or the engine runs by number.
function script.event_511()
	helper_53e37a5a()
	helper_9dafbc83(0.0, 0.0, -200.0, 0.0)
	event.SetCameraRef(0.0, 30.0, -150.0)
	event.SetCameraPos(0.0, 40.0, -270.0)
	event.ResetCamera(0)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.SetStatusbarShow(1, 1.0)
	vm.wait(2)
	event.LoadMonsterFile(617, 1)
	event.AutoSetMonster(617, 0.0, 0.0, 150.0, 0.0, 3.14, 0.0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Event 512, which map data, a script or the engine runs by number.
function script.event_512()
	local var0: s32 = 0
	helper_1d868()
	var0 = event.GetBgmNo() or var0
	if var0 ~= 167 then
		event.StopBgm(0)
		wait_frames(4)
		event.LoadBgm(167)
		event.PlayBgm(0)
	end
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("d06b03")
	event.LoadScript("d06b03/d06b03.stb", 550)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	helper_bb1bdba7()
	event.MapJump_3(-1, "s32", 600)
	vm.wait(2)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(716) or flag
		flag_2 = event.GetFlag(728) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var2 = vm.float_bits(event.GetRand(100)) or var2
			if var2 < 50 then
				at = 1
				helper_47084b1b(0, 8560060)
			else
				at = 2
				helper_47084b1b(0, 8560070)
			end
			return
		end
		at = 3
		helper_f0ee9a01(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_80ad60c2(0, 8560070)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		return nil
	end)
end

--- Event 17160, which map data, a script or the engine runs by number.
script.event_17160 = helper_7b686c6d

--- Event 17200, which map data, a script or the engine runs by number.
function script.event_17200()
	event.SetCharaShow(1, 0)
	event.SetCharaShow(2, 0)
	event.SetStatusbarShow(0, 1.0)
	event.LoadDungeonMapFile("s64")
	event.LoadScript("s64/s64.stb", 500)
	vm.wait(1)
end

--- Event 17240, which map data, a script or the engine runs by number.
function script.event_17240()
	event.SetCharaShow(1, 0)
	event.SetCharaShow(2, 0)
	event.SetStatusbarShow(0, 1.0)
	event.LoadDungeonMapFile("s31")
	event.LoadScript("s31/s31.stb", 520)
	vm.wait(1)
end

--- Event 17280, which map data, a script or the engine runs by number.
function script.event_17280()
	helper_1a7b8()
	event.LoadDungeonMapFile("s44")
	event.LoadScript("s44/s44.stb", 510)
end

return script
