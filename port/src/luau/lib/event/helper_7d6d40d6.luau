--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_523109b8 = require("@lib/event/helper_523109b8")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_f616ba9e = require("@lib/event/helper_f616ba9e")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_7d6d40d6()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(420, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		event.LoadSound(4811)
		var0 = event.SndLoadSound_2(4811) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e420/")
		event.LoadMes(0, 5, "e420_1.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e420_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e420_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e420_paw.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e420_shigu.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "mariometto_a.gltf", "info", 12)
		event.CharaActive(12)
		event.SetReference(11, "metto_null", 12)
		event.EohSyncChara(6, 12)
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 6)
		event.LoadChara(5, "e420_kanden.gltf", "info", 13)
		event.CharaActive(0, 13)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e400/e420/e420_mints.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e400/e420/e420_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetPos(0, -50.18, 3.08, 671.54)
		event.EohSetRot(0, 0.0, -2.9, 0.0)
		event.EohSetMotion(0, "上向くL", 4)
		event.EohSetFootSoundId(0, 16)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -96.49, 3.79, 674.91)
		event.EohSetRot(1, 0.0, 2.78, 0.0)
		event.EohSetMotion(1, "上向くL", 4)
		event.EohSetFootSoundId(1, 16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "無表情")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, -72.89, 2.34, 770.75)
		event.EohSetRot(2, 0.0, -3.02, 0.0)
		event.EohSetMotion(2, "立ち", 4)
		event.EohSetFootSoundId(2, 16)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.EohSetPos(3, -78.16, -9.08, 455.31)
		event.EohSetRot(3, 0.0, 0.0, 0.0)
		event.EohSetMotion(3, "立ち2", 4)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "赤目パチ")
		event.SetCharaPos(13, -78.16, -9.08, 455.31)
		event.SetCharaRot(13, 0.0, 0.0, 0.0)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.InitDramaScene()
		event.CmrsSetPos(-91.15, 8.06, 663.16)
		event.CmrsSetRef(-79.05, 47.63, 524.91)
		event.ObjsSetMotion(3, "感電", 6)
		event.ObjsNextMotion(3, "感電L", 4)
		event.SetFadeIn(30)
		event.SetMesOkuri(0, 0)
		event.StreamOpen3(1, 4200010)
		at = 2
		var2 = helper_f616ba9e(1)
		at = 3
		wait_frames(vm.i32(10 - var2))
		event.StreamPlay(1)
		at = 4
		wait_frames(vm.i32(30 - var2))
		at = 5
		wait_objects(3)
		event.FuncPointShow("", "e420_lg", 1)
		event.SndSePlay(var0, 4)
		event.CharaActive(1, 13)
		at = 6
		wait_frames(80)
		event.CharaActive(0, 13)
		event.StreamClose(1)
		event.SetMesOkuri(0, 1)
		event.FuncPointShow("", "e420_lg", 0)
		event.CmrsSetPos(-39.38, 84.75, 556.88)
		event.CmrsSetRef(-82.55, -1.03, 671.45)
		event.ObjsMove(2, -72.44, 3.87, 634.26, 40, 1)
		event.ObjsSetMotion(2, "上見走り", 4)
		event.ObjsMotionDelay(2, 40)
		event.ObjsSetMotion(2, "上見立ち")
		at = 7
		helper_4116e6bb(4200020)
		at = 8
		wait_objects(2)
		event.CmrsSetPos(-81.13, -20.11, 556.35)
		event.CmrsSetRef(-83.71, 9.43, 543.03)
		event.SndSeStop(var0, 4)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "赤目～赤目とじ")
		event.ObjsSetMotion(3, "メット落ちる", 6)
		event.ObjsNextMotion(3, "倒れる", 6)
		event.ObjsMotionWait(3)
		event.ObjsSeDelay(3, 60)
		event.ObjsSePlay(3, var0, 6)
		event.ObjsMove2(6, -75.71, -140.18, 221.57, 30, 1, 1.0)
		event.ObjsRotation2(6, 0.0, 0.0, 1.8, 30, 0, 1.0)
		event.ObjsSeDelay(6, 50)
		event.ObjsSePlay(6, var0, 5)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		at = 9
		wait_frames(60)
		event.CharaActive(0, 12)
		at = 10
		wait_objects(3)
		event.CmrsSetPos(-266.34, 202.78, 745.86)
		event.CmrsSetRef(-86.65, 17.8, 537.9)
		event.CmrsSetPos(-77.85, 7.32, 623.69)
		event.CmrsSetRef(-79.23, 12.59, 599.39)
		event.CmrsQuake(0.0, 2.0, 0.0, 25)
		at = 11
		wait_frames(25)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "苦痛目とじ")
		event.ObjsSetMotion(3, "ぐったり", 6)
		event.CmrsSetPos(-266.34, 202.78, 745.86)
		event.CmrsSetRef(-86.65, 17.8, 537.9)
		at = 12
		helper_4116e6bb(4200030)
		event.ObjsMove(2, -49.93, 4.12, 578.82, 30, 1)
		event.ObjsRotation(2, 0.0, 2.78, 0.0, 10)
		event.ObjsSetMotion(2, "走り")
		event.ObjsMotionDelay(2, 30)
		event.ObjsSetMotion(2, "立ち")
		at = 13
		helper_4116e6bb(4200040)
		at = 14
		wait_objects(2)
		event.CmrsInit()
		event.CmrsSetPos(-126.48, 23.27, 645.95)
		event.CmrsSetRef(-48.09, 21.64, 692.16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.SetPakuAnim(1, "わらい口パク")
		at = 15
		helper_4116e6bb(4200050)
		event.SetPakuAnim(0, "通常口パク")
		at = 16
		helper_4116e6bb(4200060)
		event.ObjsMove(0, -73.29, 4.2, 606.39, 40, 1)
		event.ObjsRotDelay(0, 30)
		event.ObjsRotation(0, 0.0, 2.9, 0.0, 10)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		at = 17
		wait_frames(8)
		event.ObjsMove(1, -89.41, 4.65, 588.63, 40, 1)
		event.ObjsRotDelay(1, 30)
		event.ObjsRotation(1, 0.0, 2.18, 0.0, 10)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMotionDelay(1, 40)
		event.ObjsSetMotion(1, "立ち")
		at = 18
		wait_frames(30)
		event.CmrsSetPos(-23.86, 87.25, 654.66)
		event.CmrsSetRef(-59.69, 21.64, 584.77)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "半目パチ")
		at = 19
		wait_objects(1)
		at = 20
		helper_4116e6bb(4200070)
		at = 21
		helper_4116e6bb(4200080)
		at = 22
		helper_4116e6bb(4200090)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		at = 23
		helper_4116e6bb(4200100)
		event.SetFadeOut(30)
		at = 24
		wait_frames(30)
	end, function(received: { any }): boolean
		if at == 2 then
			var2 = received[1] :: number
		end
		if at <= 1 then
			var2 = helper_523109b8(1)
		end
		if at <= 2 then
			wait_frames_skipping(vm.i32(10 - var2))
		end
		if at <= 3 then
			wait_frames_skipping(vm.i32(30 - var2))
		end
		if at <= 4 then
			helper_238b5abc(3)
		end
		if at <= 5 then
			wait_frames_skipping(80)
		end
		if at <= 6 then
			helper_8cd371d7(4200020)
		end
		if at <= 7 then
			helper_238b5abc(2)
		end
		if at <= 8 then
			wait_frames_skipping(60)
		end
		if at <= 9 then
			helper_238b5abc(3)
		end
		if at <= 10 then
			wait_frames_skipping(25)
		end
		if at <= 11 then
			helper_8cd371d7(4200030)
		end
		if at <= 12 then
			helper_8cd371d7(4200040)
		end
		if at <= 13 then
			helper_238b5abc(2)
		end
		if at <= 14 then
			helper_8cd371d7(4200050)
		end
		if at <= 15 then
			helper_8cd371d7(4200060)
		end
		if at <= 16 then
			wait_frames_skipping(8)
		end
		if at <= 17 then
			wait_frames_skipping(30)
		end
		if at <= 18 then
			helper_238b5abc(1)
		end
		if at <= 19 then
			helper_8cd371d7(4200070)
		end
		if at <= 20 then
			helper_8cd371d7(4200080)
		end
		if at <= 21 then
			helper_8cd371d7(4200090)
		end
		if at <= 22 then
			helper_8cd371d7(4200100)
		end
		if at <= 23 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 25
	vm.entry(25)
	event.CancelDramaScene()
	event.FuncPointShow("", "e420_lg", 0)
	event.SndSeStop(var0, 4)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetMotion(1, "立ち", 4)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(4, 1)
	event.EohSetShow(5, 1)
	event.Finish()
end

return helper_7d6d40d6
