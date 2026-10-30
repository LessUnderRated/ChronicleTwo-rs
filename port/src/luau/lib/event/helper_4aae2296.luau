--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_4aae2296()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local block: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(528, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 then
			event.DngSetupMainUnit(0)
			active_chr_no = 0
		end
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(190)
		event.LoadSound(5817)
		var1 = event.SndLoadSound_2(5817) or var1
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e500/e528/")
		event.LoadMes(0, 5, "e528_1.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e528_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e528_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e528_guiltoni.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		block = event.LoadImg_4(5, "e528telop01_1.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e528telop01", block)
		event.SpriteSetColor(0, 128, 128, 128, 128)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 347)
		event.SpriteSetAlphab(0, 0)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(5, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 5)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e528/e528_mints.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e528/e528_monica.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(3, 1)
		event.EohSyncChara(4, 2)
		event.EohSetShow(3, 0)
		event.EohSetShow(4, 0)
		event.EohSetPos(0, 0.0, 0.0, 500.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -100.0, 0.0, -200.0)
		event.EohSetRot(1, 0.0, 2.54, 0.0)
		event.EohSetMotion(1, "倒れ", 4)
		event.EohNormalDrive(1)
		event.EohResetDaPosition(1)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "死に")
		event.EohSetPos(2, -73.0, 0.0, -190.0)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "しゃがみ", 4)
		event.EohSetSoundId(2, var1)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "左向き目パチ")
		event.InitDramaScene()
		event.ObjsMove(0, 0.0, 0.0, 400.0, 120)
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsMotionDelay(0, 120)
		event.ObjsSetMotion(0, "立ち")
		event.CmrsInit()
		event.CmrsSetPos(224.74, 194.1, 112.15)
		event.CmrsSetRef(119.89, 90.28, 320.08)
		event.SetFadeIn(30)
		at = 3
		wait_frames(90)
		event.CmrsSetPos(23.71, 15.41, 365.52)
		event.CmrsSetRef(0.81, 20.88, 397.45)
		at = 4
		wait_objects(0)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目～おどろき目")
		event.EohSetTexAnim(0, 1, "半口")
		at = 5
		wait_frames(20)
		event.CmrsSetPos(0.0, 27.58, 241.33)
		event.CmrsSetRef(11.62, 31.84, 143.18)
		event.CmrsMove(0.0, 27.58, 241.33, -10.98, 31.84, 142.98, 60)
		at = 6
		wait_camera()
		event.SetCrossfade(30)
		event.CmrsSetPos(-62.71, 22.94, -127.1)
		event.CmrsSetRef(-79.95, 18.68, -193.59)
		event.ObjsNextMotion(2, "気がつき", 6)
		event.ObjsNextMotion(2, "起きあがり", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		at = 7
		wait_frames(46)
		event.SndSePlay(var1, 2)
		at = 8
		wait_frames(30)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "目左向き～前向き")
		at = 9
		wait_objects(2)
		event.SetCrossfade(30)
		event.CmrsSetPos(-65.53, 36.67, -170.72)
		event.CmrsSetRef(-72.23, 31.54, -186.28)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "デフォルト顔")
		event.EohSetTexAnim(2, 1, "通常目パチ")
		event.SetPakuAnim(2, "通常口パク")
		at = 10
		helper_4116e6bb(5280010)
		event.CmrsSetPos(17.17, 21.0, 369.81)
		event.CmrsSetRef(-1.57, 20.75, 398.07)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.ObjsSetMotion(0, "左前見る", 6)
		event.ObjsNextMotion(0, "左前見るL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 11
		helper_4116e6bb(5280020)
		event.CmrsSetPos(-72.45, 23.3, -129.48)
		event.CmrsSetRef(-72.45, 23.3, -169.9)
		event.PlayBgm(0)
		event.SndSePlay(var1, 3)
		event.EohSetFrameStatus(2, "sword--v0", 1)
		event.ObjsSetMotion(2, "剣だし", 6)
		event.ObjsNextMotion(2, "剣だしL", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 12
		helper_4116e6bb(5280030)
		event.CmrsSetPos(-51.78, 20.26, -260.52)
		event.CmrsSetRef(-58.41, 20.26, -190.32)
		event.SndSePlay(var1, 4)
		event.ObjsSetMotion(2, "ジャンプ", 6)
		at = 13
		wait_frames(20)
		event.CmrsSetPos(17.17, 21.0, 369.81)
		event.CmrsSetRef(-1.57, 20.75, 398.07)
		event.ObjsSetMotion(0, "上見る", 6)
		event.ObjsNextMotion(0, "上見るL", 4)
		at = 14
		wait_objects(0)
		event.CmrsSetPos(6.12, 32.14, 446.85)
		event.CmrsSetRef(-0.05, 14.21, 365.23)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "半口")
		event.ObjsSetMotion(0, "上見る戻り", 6)
		event.ObjsNextMotion(0, "モニカ見立ち", 4)
		event.SndSePlay(var1, 5)
		event.ObjsSetPos(2, 0.0, 0.0, 260.0)
		event.ObjsSetMotion(2, "着地", 6)
		event.ObjsNextMotion(2, "着地L", 4)
		at = 15
		wait_objects(2)
		event.CmrsSetPos(9.03, 31.27, 338.8)
		event.CmrsSetRef(5.32, 18.96, 267.84)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり顔")
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.ObjsSetMotion(2, "キメ", 6)
		event.ObjsNextMotion(2, "キメL", 4)
		event.SndSePlay(var1, 6)
		at = 16
		wait_frames(30)
		event.SndSePlay(var1, 7)
		at = 17
		wait_objects(2)
		event.SetPakuAnim(2, "通常口パク")
		at = 18
		helper_4116e6bb(5280040)
		event.SetCrossfade(30)
		event.CmrsSetPos(1.63, 33.52, 291.68)
		event.CmrsSetRef(1.34, 31.08, 268.48)
		event.CmrsMove(5.68, 33.52, 291.63, 5.38, 31.08, 268.43, 120)
		event.SpriteSetDraw(0, 1)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり顔")
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.EohSetTexAnim(2, 1, "わらい口とじ")
		at = 19
		wait_frames(90)
		event.SetFadeOut(30)
		at = 20
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			local _ = active_chr_no ~= 0
			active_chr_no = 0
			wait_frames_skipping(4)
		end
		if at <= 2 then
			wait_frames_skipping(90)
		end
		if at <= 3 then
			helper_238b5abc(0)
		end
		if at <= 4 then
			wait_frames_skipping(20)
		end
		if at <= 5 then
			helper_344d6cd8()
		end
		if at <= 6 then
			wait_frames_skipping(46)
		end
		if at <= 7 then
			wait_frames_skipping(30)
		end
		if at <= 8 then
			helper_238b5abc(2)
		end
		if at <= 9 then
			helper_8cd371d7(5280010)
		end
		if at <= 10 then
			helper_8cd371d7(5280020)
		end
		if at <= 11 then
			helper_8cd371d7(5280030)
		end
		if at <= 12 then
			wait_frames_skipping(20)
		end
		if at <= 13 then
			helper_238b5abc(0)
		end
		if at <= 14 then
			helper_238b5abc(2)
		end
		if at <= 15 then
			wait_frames_skipping(30)
		end
		if at <= 16 then
			helper_238b5abc(2)
		end
		if at <= 17 then
			helper_8cd371d7(5280040)
		end
		if at <= 18 then
			wait_frames_skipping(90)
		end
		if at <= 19 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 21
	vm.entry(21)
	event.CancelDramaScene()
	event.SpriteSetDraw(0, 0)
	event.PlayBgm(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(3, 1)
	event.EohSetShow(4, 1)
end

return helper_4aae2296
