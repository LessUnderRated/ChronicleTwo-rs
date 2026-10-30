--!strict
-- map/s/s02/s02b_1.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0226fccb = require("@lib/event/helper_0226fccb")
local helper_042a5b29 = require("@lib/event/helper_042a5b29")
local helper_09a98fcd = require("@lib/event/helper_09a98fcd")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_2000ac46 = require("@lib/event/helper_2000ac46")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_301e75ef = require("@lib/event/helper_301e75ef")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_7d730ff7 = require("@lib/event/helper_7d730ff7")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_b76e3b36 = require("@lib/event/helper_b76e3b36")
local helper_d4172c24 = require("@lib/event/helper_d4172c24")
local helper_d529ed92 = require("@lib/event/helper_d529ed92")
local helper_d552d8eb = require("@lib/event/helper_d552d8eb")
local helper_e52544df = require("@lib/event/helper_e52544df")
local helper_f38eabca = require("@lib/event/helper_f38eabca")
local helper_f41e11f3 = require("@lib/event/helper_f41e11f3")
local helper_f72a4299 = require("@lib/event/helper_f72a4299")
local show_message = require("@lib/event/show_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_27ec0()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 33
		event.LoadMotion(5, "event/e200/e207/e207_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 37)
		event.LoadMotion(5, "event/e200/e207/e207_monica.gltf", "info", global1)
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
		event.LoadMotion(5, "event/e200/e207/e207_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 37)
		event.LoadMotion(5, "event/e200/e207/e207_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.ChangeDir("event/e200/e207/")
	event.LoadChara(5, "e207_starbre.gltf", "info", 34)
	event.EohSyncChara(2, 34)
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	event.CharaActive(0, 34)
	event.LoadChara(5, "e207_vorneo.gltf", "info", 35)
	event.EohSyncChara(3, 35)
	event.ObjsInit(3)
	event.ObjsSyncObj(3, 3)
	event.CharaActive(0, 35)
	event.LoadChara(5, "e207_tom.gltf", "info", 36)
	event.EohSyncChara(4, 36)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.CharaActive(0, 36)
	event.EohSyncObj_2(5, "p01_train01")
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.ChangeDir("")
	event.LoadMes(0, 5, "event/e200/e207/e207_1.txt")
	event.SetStatus(1, global0, 256, 1)
	event.SetStatus(1, global1, 256, 1)
end

--- Helper function.
local function helper_22200000()
	global0 = 0
	global1 = 33
	global0 = 32
	global1 = 0
end

--- Helper function.
local function helper_26e74()
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
		event.DelExtMotion(global1)
		event.DelExtMotion(global0)
		event.DeleteChara(global0)
		event.DeleteChara(37)
	end
	event.DeleteChara(34)
	event.DeleteChara(36)
	event.DeleteChara(35)
	event.DeleteChara(39)
	event.DeleteChara(40)
	event.DeleteChara(41)
	event.DeleteChara(42)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.SpriteSetDraw(2, 0)
	event.SpriteSetDraw(3, 0)
	event.SpriteSetDraw(4, 0)
	event.SpriteSetDraw(5, 0)
	event.DelImg(0)
end

--- Helper function.
local function helper_28e0c()
	local var0: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(207, 1)
		event.Initialize()
		var0 = event.SndLoadSound_2(2211) or var0
		helper_27ec0()
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(59)
		event.EohSetSoundId(0, var0)
		event.EohSetSoundId(3, var0)
		event.EohSetSoundId(4, var0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.InitDramaScene()
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.SetFadeIn(30)
		event.CmrsSetPos(-434.98, 136.35, -416.59)
		event.CmrsSetRef(-204.96, 128.86, -33.25)
		at = 3
		helper_301e75ef(var0)
		event.EohSetShadow(2, 0)
		event.CharaActive(1, 34)
		event.CmrsSetPos(-186.23, 38.08, 632.43)
		event.CmrsSetRef(-133.81, 42.89, 555.58)
		event.ObjsSetPos(5, 1.3, 8.0, 707.604)
		event.ObjsSetPos(2, -7.85, 43.32, 488.75)
		event.ObjsSetRot(2, 0.0, -1.2, 0.0)
		event.SndSePlay(var0, 9)
		event.EohSyncObj_3(10, "p01_train01", "train11-m1")
		event.EohSyncObj_3(11, "p01_train01", "train12-m1")
		event.EohSyncObj_3(12, "p01_train01", "train12-m3")
		event.ObjsInit(10)
		event.ObjsInit(11)
		event.ObjsInit(12)
		event.ObjsSyncObj(10, 10)
		event.ObjsSyncObj(11, 11)
		event.ObjsSyncObj(12, 12)
		event.ObjsSetRot(10, 0.0, 0.0, 0.0)
		event.ObjsSetRot(11, 0.0, 0.0, 0.0)
		event.ObjsSetRot(12, 0.0, 0.0, 0.0)
		event.ObjsRotation(10, 0.0, -1.8, 0.0, 30)
		event.ObjsRotation(11, 0.0, -1.8, 0.0, 30)
		event.ObjsRotation(12, 0.0, -1.8, 0.0, 30)
		at = 4
		wait_frames(30)
		event.EohSetFootSoundId(2, 6)
		event.ObjsSetMotion(2, "歩き", 4)
		event.ObjsMove(2, -60.41, 43.32, 482.53, 90)
		at = 5
		wait_frames(90)
		event.EohSetFootSoundId(2, -1)
		event.SndSePlay(var0, 10)
		event.ObjsSetMotion(2, "降りL", 4)
		event.ObjsJump(2, -121.4, 0.0, 519.8, -0.3, 16)
		at = 6
		wait_frames(16)
		at = 7
		wait_objects(2)
		event.ObjsSetMotion(2, "着地", 6)
		event.ObjsSetMotion(2, "立ち", 0)
		at = 8
		wait_frames(16)
		event.ObjsSetRot(10, 0.0, 0.0, 0.0)
		event.ObjsSetRot(11, 0.0, 0.0, 0.0)
		event.ObjsSetRot(12, 0.0, 0.0, 0.0)
		event.EohSetShadow(2, 1)
		event.EsmClear()
		helper_09a98fcd()
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
		event.CharaActive(1, global0)
		event.CmrsSetPos(-173.15, 24.27, 496.1)
		event.CmrsSetRef(-105.11, 33.85, 689.64)
		event.ObjsSetPos(0, -115.15, 2.18, 481.7)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetPos(2, -137.2, 0.0, 503.69)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetFootSoundId(2, 0)
		event.EohSetFootSoundId(0, 1)
		event.EohSetFootSoundId(2, 1)
		event.EohSetFootSoundId(1, 1)
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsSetMotion(2, "歩き", 4, -1.0, 1)
		event.ObjsMove(0, -116.24, 1.91, 584.2, 120)
		event.ObjsMove(2, -136.14, 0.0, 621.84, 120)
		at = 9
		wait_frames(120)
		event.CharaActive(1, global1)
		event.CmrsSetPos(-148.61, 19.95, 659.05)
		event.CmrsSetRef(-138.99, 22.93, 629.2)
		event.ObjsSetPos(0, -141.01, 0.0, 578.41)
		event.ObjsSetRot(0, 0.0, 0.36, 0.0)
		event.ObjsSetPos(1, -158.87, 0.0, 543.98)
		event.ObjsSetRot(1, 0.0, 0.48, 0.0)
		event.ObjsSetRot(2, 0.0, 0.24, 0.0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(2, "頭をかく", 4)
		event.SetPakuAnim(2, "通常口パク")
		at = 10
		helper_4116e6bb(2070010)
		event.ResetPakuAnim()
		event.EsmSetValue(1, 0)
		event.CmrsSetPos(-157.72, 20.49, 508.51)
		event.CmrsSetRef(-155.0, 20.82, 540.27)
		event.ObjsSetMotion(1, "会話", 6, -1.0, 1)
		event.ObjsMotionDelay(0, 15)
		event.ObjsSetMotion(0, "振り返る", 6, -1.0, 1)
		event.ObjsNextMotion(0, "振り返るL", 0)
		event.ObjsSetMotion(2, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 11
		helper_4116e6bb(2070020)
		event.ResetPakuAnim()
		event.CmrsSetPos(-204.87, 17.59, 518.8)
		event.CmrsSetRef(-167.74, 18.98, 537.69)
		event.ObjsSetPos(0, -141.01, 0.0, 578.41)
		event.ObjsSetRot(0, 0.0, 0.72, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetRot(1, 0.0, -0.48, 0.0)
		event.ObjsSetMotion(1, "振り返る", 6, -1.0, 1)
		event.ObjsNextMotion(1, "振り返るL", 0)
		event.SndSePlay(var0, 11)
		event.SetPakuAnim(1, "通常口パク")
		at = 12
		helper_1584c528(2070030, 90)
		event.ResetPakuAnim()
		event.PlayBgm(0)
		at = 13
		wait_frames(3)
		event.SetPakuAnim(1, "通常口パク")
		at = 14
		helper_1584c528(2070035, 75)
		event.ResetPakuAnim()
		event.CharaActive(0, 34)
		event.ObjsSetRot(1, 0.0, -2.16, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.CmrsSetPos(-145.56, 14.05, 606.56)
		event.CmrsSetRef(-171.06, 25.18, 536.36)
		event.CmrsMoveAhd2(1.58, -11.13, 75.72, 180, 2, 0.4)
		at = 15
		wait_frames(30)
		at = 16
		helper_1584c528(2070040, 120)
		at = 17
		wait_frames(30)
		event.SetCrossfade(30)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.CmrsInit()
		event.ObjsSetRot(0, 0.0, -2.44, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.CmrsSetPos(-172.35, 21.82, 561.72)
		event.CmrsSetRef(-139.13, 21.22, 572.94)
		event.CmrsMove2(-195.67, 21.82, 534.13, -163.38, 21.22, 544.2, 300, 2, 0.4)
		at = 18
		wait_frames(45)
		at = 19
		helper_1584c528(2070045, 240)
		at = 20
		wait_frames(30)
		event.CmrsInit()
		event.CmrsSetPos(-98.17, 22.89, 602.25)
		event.CmrsSetRef(-133.12, 23.35, 577.23)
		event.ObjsSetRot(1, 0.0, 0.48, 0.0)
		event.ObjsSetRot(0, 0.0, -2.68, 0.0)
		event.CmrsMove2(-115.83, 22.89, 589.95, -133.03, 23.35, 577.11, 510, 2, 0.4)
		event.ObjsSetMotion(0, "モニカ見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "振り返る2", 6, -1.0, 1)
		event.ObjsNextMotion(1, "指差し会話", 2)
		event.ObjsNextMotion(1, "振り返る2戻り", 2)
		event.ObjsNextMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 2)
		event.ObjsNextMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 0)
		event.ObjsTexAnime(1, 1, "通常口パク")
		at = 21
		helper_1584c528(2070050, 120)
		at = 22
		helper_1584c528(2070055, 210)
		at = 23
		helper_1584c528(2070060, 180)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 0)
		event.SetPakuAnim(1, "通常口パク")
		at = 24
		helper_4116e6bb(2070070)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 25
		helper_4116e6bb(2070075)
		event.ResetPakuAnim()
		event.CmrsInit()
		event.CmrsSetPos(-185.14, 25.41, 532.33)
		event.CmrsSetRef(-163.43, 22.64, 546.85)
		event.ObjsSetRot(0, 0.0, -2.68, 0.0)
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 0)
		event.SetPakuAnim(0, "通常口パク")
		at = 26
		helper_4116e6bb(2070080)
		event.ResetPakuAnim()
		at = 27
		wait_objects(0)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(20, 128.0, 128.0, 128.0, 128.0, 15)
		at = 28
		wait_frames(45)
		event.CharaActive(0, global0)
		event.CmrsSetPos(-143.73, 21.02, 571.76)
		event.CmrsSetRef(-159.34, 21.71, 544.14)
		event.ObjsSetMotion(1, "説明", 4, -1.0, 1)
		event.ObjsSetColor(20, 128.0, 128.0, 128.0, 0.0, 15)
		at = 29
		wait_frames(15)
		event.SpriteSetDraw(0, 0)
		event.SetPakuAnim(1, "わらい口パク")
		at = 30
		helper_4116e6bb(2070090)
		event.ResetPakuAnim()
		event.SpriteSetDraw(1, 1)
		event.ObjsSetColor(21, 128.0, 128.0, 128.0, 128.0, 30)
		at = 31
		helper_4116e6bb(2070100)
		at = 32
		helper_4116e6bb(2070110)
		event.SpriteSetDraw(2, 1)
		event.ObjsSetColor(22, 128.0, 128.0, 128.0, 128.0, 15)
		at = 33
		wait_frames(15)
		event.SpriteSetDraw(1, 0)
		at = 34
		helper_4116e6bb(2070120)
		at = 35
		wait_objects(21)
		event.CharaActive(1, global0)
		event.CmrsSetPos(-147.89, 29.16, 595.33)
		event.CmrsSetRef(-145.3, 19.8, 562.12)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常口パク")
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "会話", 6, -1.0, 1)
		event.ObjsNextMotion(1, "立ち", 0)
		event.ObjsSetColor(22, 128.0, 128.0, 128.0, 0.0, 15)
		event.SetPakuAnim(1, "通常口パク")
		at = 36
		helper_4116e6bb(2070130)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 37
		helper_4116e6bb(2070140)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 38
		helper_4116e6bb(2070145)
		event.ResetPakuAnim()
		event.SpriteSetDraw(2, 0)
		event.SpriteSetDraw(3, 1)
		event.ObjsSetColor(23, 128.0, 128.0, 128.0, 128.0, 30)
		at = 39
		helper_4116e6bb(2070150)
		at = 40
		helper_4116e6bb(2070160)
		event.CmrsSetPos(-62.39, 11.55, 592.64)
		event.CmrsSetRef(-144.81, 34.83, 558.99)
		event.ObjsSetPos(0, -162.09, 0.0, 562.18)
		event.ObjsSetRot(0, 0.0, -1.84, 0.0)
		event.ObjsSetRot(1, 0.0, -2.04, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.CmrsMove2(-93.73, 11.55, 579.85, -176.14, 34.83, 546.2, 300, 2, 0.4)
		event.ObjsSetColor(23, 128.0, 128.0, 128.0, 0.0, 15)
		at = 41
		wait_frames(15)
		event.SpriteSetDraw(3, 0)
		event.SetPakuAnim(1, "通常口パク")
		at = 42
		helper_4116e6bb(2070170)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 43
		helper_4116e6bb(2070175)
		event.ResetPakuAnim()
		event.CmrsInit()
		event.CmrsSetPos(-199.01, 15.5, 557.14)
		event.CmrsSetRef(-160.33, 20.46, 548.43)
		event.ObjsSetMotion(0, "右・モニカ見", 6, -1.0, 1)
		event.ObjsNextMotion(0, "右・モニカ見L", 0)
		event.SetPakuAnim(1, "通常口パク")
		at = 44
		helper_4116e6bb(2070180)
		event.ResetPakuAnim()
		event.ObjsTexAnime(1, 1, "目あき～目とじ")
		event.ObjsSetMotion(1, "下を向く", 6, -1.0, 1)
		event.ObjsNextMotion(1, "下を向くL", 0)
		event.SetPakuAnim(1, "通常口パク")
		at = 45
		helper_4116e6bb(2070190)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 46
		helper_4116e6bb(2070200)
		event.ResetPakuAnim()
		event.CharaActive(0, global0)
		event.CmrsSetPos(-189.08, 26.03, 532.05)
		event.CmrsSetRef(-156.88, 20.88, 545.17)
		event.ObjsSetPos(1, -158.87, 0.0, 543.98)
		event.ObjsSetRot(1, 0.0, -2.04, 0.0)
		event.CmrsMove2(-186.83, 24.76, 532.98, -156.88, 20.88, 545.17, 90, 0, 0.4)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "目とじ～目あき")
		event.SetPakuAnim(1, "通常口パク")
		at = 47
		helper_4116e6bb(2070210)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 48
		helper_4116e6bb(2070220)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 49
		helper_4116e6bb(2070230)
		event.ResetPakuAnim()
		event.CmrsInit()
		event.CharaActive(1, global0)
		event.CmrsSetPos(-184.15, 26.9, 520.44)
		event.CmrsSetRef(-163.12, 22.81, 547.31)
		event.ObjsSetRot(0, 0.0, 3.0, 0.0)
		event.ObjsSetRot(1, 0.0, -0.12, 0.0)
		event.SndSePlay(var0, 12)
		event.ObjsSetMotion(0, "モニカ見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "にぎりこぶし", 6, -1.0, 1)
		event.ObjsNextMotion(1, "にぎりこぶしL", 0)
		event.SetPakuAnim(1, "通常口パク")
		at = 50
		helper_4116e6bb(2070240)
		event.ResetPakuAnim()
		event.SetPakuAnim(0, "通常口パク")
		at = 51
		helper_4116e6bb(2070250)
		event.ResetPakuAnim()
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.CmrsSetPos(-192.2, 14.16, 580.57)
		event.CmrsSetRef(-164.89, 19.98, 558.98)
		event.SetPakuAnim(1, "わらい口パク")
		at = 52
		helper_4116e6bb(2070260)
		event.ResetPakuAnim()
		event.SetPakuAnim(0, "通常口パク")
		at = 53
		helper_4116e6bb(2070270)
		event.ResetPakuAnim()
		at = 54
		wait_frames(45)
		event.ObjsSetMotion(0, "うなづく（モニカ見）", 6, -1.0, 1)
		event.ObjsNextMotion(0, "モニカ見立ち", 0)
		at = 55
		wait_frames(37)
		event.SetPakuAnim(0, "通常口パク")
		at = 56
		helper_4116e6bb(2070280)
		event.ResetPakuAnim()
		event.SndSePlay(var0, 14)
		event.ObjsSetMotion(1, "喜ぶ", 6)
		event.ObjsNextMotion(1, "喜ぶL", 0)
		event.SetPakuAnim(1, "わらい口パク")
		at = 57
		helper_4116e6bb(2070290)
		event.ResetPakuAnim()
		at = 58
		wait_objects(1)
		event.CharaActive(0, global0)
		event.CmrsSetPos(-161.91, 19.72, 571.63)
		event.CmrsSetRef(-157.59, 24.08, 543.43)
		event.SndSePlay(var0, 19)
		event.ObjsSetMotion(1, "握手", 6, -1.0, 1)
		event.ObjsNextMotion(1, "握手L", 0)
		at = 59
		wait_frames(30)
		at = 60
		wait_frames(30)
		event.FadeOutBgm(30)
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		if global0 == 0 then
			event.CharaActive(0, 37)
		end
		event.CmrsSetPos(-158.1, 29.71, 533.72)
		event.CmrsSetRef(-162.0, 22.25, 561.36)
		event.ObjsTexAnime(0, 1, "半口")
		event.CmrsMove2(-158.94, 29.71, 539.69, -162.85, 22.25, 567.33, 48, 2, 0.4)
		at = 61
		wait_camera()
		at = 62
		wait_frames(75)
		event.CharaActive(1, global1)
		event.CharaActive(1, 37)
		event.CmrsSetPos(-189.24, 15.33, 545.99)
		event.CmrsSetRef(-154.0, 23.32, 554.62)
		event.ObjsSetRot(0, 0.0, 2.88, 0.0)
		event.ObjsSetMotion(0, "握手", 6, -1.0, 1)
		event.ObjsNextMotion(0, "握手L", 0)
		at = 63
		wait_frames(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.InitSepia(-1, 0)
		event.SetCrossfade(30)
		event.StartSepia()
		at = 64
		wait_frames(30)
		at = 65
		helper_1584c528(2070300, 330)
		event.SetFadeOut(15)
		at = 66
		wait_frames(15)
		event.EndSepia()
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_22200000()
			wait_frames_skipping(4)
		end
		if at <= 2 then
			helper_f41e11f3(var0)
		end
		if at <= 3 then
			wait_frames_skipping(30)
		end
		if at <= 4 then
			wait_frames_skipping(90)
		end
		if at <= 5 then
			wait_frames_skipping(16)
		end
		if at <= 6 then
			helper_238b5abc(2)
		end
		if at <= 7 then
			wait_frames_skipping(16)
		end
		if at <= 8 then
			helper_344d6cd8()
			wait_frames_skipping(120)
		end
		if at <= 9 then
			helper_8cd371d7(2070010)
		end
		if at <= 10 then
			helper_8cd371d7(2070020)
		end
		if at <= 11 then
			helper_52aadc70(2070030, 90)
		end
		if at <= 12 then
			wait_frames_skipping(3)
		end
		if at <= 13 then
			helper_52aadc70(2070035, 75)
		end
		if at <= 14 then
			wait_frames_skipping(30)
		end
		if at <= 15 then
			helper_52aadc70(2070040, 120)
		end
		if at <= 16 then
			wait_frames_skipping(30)
		end
		if at <= 17 then
			wait_frames_skipping(45)
		end
		if at <= 18 then
			helper_52aadc70(2070045, 240)
		end
		if at <= 19 then
			wait_frames_skipping(30)
		end
		if at <= 20 then
			helper_52aadc70(2070050, 120)
		end
		if at <= 21 then
			helper_52aadc70(2070055, 210)
		end
		if at <= 22 then
			helper_52aadc70(2070060, 180)
		end
		if at <= 23 then
			helper_8cd371d7(2070070)
		end
		if at <= 24 then
			helper_8cd371d7(2070075)
		end
		if at <= 25 then
			helper_8cd371d7(2070080)
		end
		if at <= 26 then
			helper_238b5abc(0)
		end
		if at <= 27 then
			wait_frames_skipping(45)
		end
		if at <= 28 then
			wait_frames_skipping(15)
		end
		if at <= 29 then
			helper_8cd371d7(2070090)
		end
		if at <= 30 then
			helper_8cd371d7(2070100)
		end
		if at <= 31 then
			helper_8cd371d7(2070110)
		end
		if at <= 32 then
			wait_frames_skipping(15)
		end
		if at <= 33 then
			helper_8cd371d7(2070120)
		end
		if at <= 34 then
			helper_238b5abc(21)
		end
		if at <= 35 then
			helper_8cd371d7(2070130)
		end
		if at <= 36 then
			helper_8cd371d7(2070140)
		end
		if at <= 37 then
			helper_8cd371d7(2070145)
		end
		if at <= 38 then
			helper_8cd371d7(2070150)
		end
		if at <= 39 then
			helper_8cd371d7(2070160)
		end
		if at <= 40 then
			wait_frames_skipping(15)
		end
		if at <= 41 then
			helper_8cd371d7(2070170)
		end
		if at <= 42 then
			helper_8cd371d7(2070175)
		end
		if at <= 43 then
			helper_8cd371d7(2070180)
		end
		if at <= 44 then
			helper_8cd371d7(2070190)
		end
		if at <= 45 then
			helper_8cd371d7(2070200)
		end
		if at <= 46 then
			helper_8cd371d7(2070210)
		end
		if at <= 47 then
			helper_8cd371d7(2070220)
		end
		if at <= 48 then
			helper_8cd371d7(2070230)
		end
		if at <= 49 then
			helper_8cd371d7(2070240)
		end
		if at <= 50 then
			helper_8cd371d7(2070250)
		end
		if at <= 51 then
			helper_8cd371d7(2070260)
		end
		if at <= 52 then
			helper_8cd371d7(2070270)
		end
		if at <= 53 then
			wait_frames_skipping(45)
		end
		if at <= 54 then
			wait_frames_skipping(37)
		end
		if at <= 55 then
			helper_8cd371d7(2070280)
		end
		if at <= 56 then
			helper_8cd371d7(2070290)
		end
		if at <= 57 then
			helper_238b5abc(1)
		end
		if at <= 58 then
			wait_frames_skipping(30)
		end
		if at <= 59 then
			wait_frames_skipping(30)
		end
		if at <= 60 then
			helper_344d6cd8()
		end
		if at <= 61 then
			local _ = global0 == 0
			wait_frames_skipping(75)
		end
		if at <= 62 then
			wait_frames_skipping(30)
		end
		if at <= 63 then
			wait_frames_skipping(30)
		end
		if at <= 64 then
			helper_52aadc70(2070300, 330)
		end
		if at <= 65 then
			wait_frames_skipping(15)
		end
		return true
	end)
	vm.section(function()
		at = 67
		vm.entry(67)
		event.CancelDramaScene()
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
		event.EohSetShadow(2, 1)
		event.SpriteSetDraw(0, 0)
		event.SpriteSetDraw(1, 0)
		event.SpriteSetDraw(2, 0)
		event.SpriteSetDraw(3, 0)
		event.SpriteSetDraw(4, 0)
		event.SpriteInit(4)
		event.SpriteSetType(4, 0)
		event.SpriteSetPos(4, 256, 208)
		event.SpriteSetPutsize(4, 512, 416)
		event.SpriteSetColor(4, 0, 0, 0, 128)
		event.SpriteSetDraw(4, 0)
		event.EohSyncSprite(14, 4)
		event.ObjsInit(14)
		event.ObjsSyncObj(14, 14)
		event.CmrsInit()
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 7)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(0, 34)
		event.CharaActive(0, 36)
		event.CharaActive(0, 35)
		event.CharaActive(0, 39)
		event.CharaActive(0, 40)
		event.CharaActive(0, 41)
		event.CharaActive(0, 42)
		event.ObjsSetPos(0, -162.09, 0.0, 562.18)
		event.ObjsSetPos(1, -158.87, 0.0, 543.98)
		event.ObjsSetPos(5, 1.3, 8.0, 700.0)
		event.SoundAllStop()
		event.StopBgm(0)
		event.GotoDrawChapter(2)
		at = 68
		vm.wait(68)
		at = 69
		wait_frames(4)
		event.CmrsSetPos(-189.24, 15.33, 545.99)
		event.CmrsSetRef(-167.18, -44.79, 516.47)
		event.SpriteSetDraw(4, 1)
		event.ObjsSetColor(14, 0, 0, 0, 128, 0)
		event.SetFadeIn(0)
		at = 70
		vm.wait(70)
		event.SetMesWindowMode(0, 8)
		event.MesMake_2(
			0,
			"[(!)]Monica has joined you. Select Character\n   in the Main Menu to switch character.\n   Or just hold down the (L3) button."
		)
		at = 71
		show_message(0, -1, 8, 0, 0)
		at = 72
		helper_f38eabca(352, 5)
		event.SetMesWindowMode(0, 7)
		event.CmrsSetPos(-114.91, 26.7, 585.59)
		event.CmrsSetRef(-547.13, 5.01, 284.33)
		event.ObjsSetPos(0, -154.04, 0.0, 565.84)
		event.ObjsSetRot(0, 0.0, -2.44, 0.0)
		event.ObjsSetRot(1, 0.0, 0.48, 0.0)
		event.ObjsSetMotion(0, "モニカ見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "指差し立ち", 4, -1.0, 1)
		event.StopBgm(0)
		at = 73
		wait_frames(4)
		event.LoadBgm(1)
		event.PlayBgm(0)
		event.InitDramaScene()
		event.ObjsSetColor(14, 0, 0, 0, 0, 30)
		at = 74
		wait_frames(30)
		event.SpriteSetDraw(4, 0)
		event.ObjsSetMotion(1, "指差し会話", 0)
		event.SetPakuAnim(1, "わらい口パク")
		at = 75
		helper_1584c528(2070320, 75)
		event.ResetPakuAnim()
		event.CharaActive(1, 34)
		event.CmrsSetPos(-201.47, 17.91, 568.45)
		event.CmrsSetRef(-154.0, 21.06, 552.83)
		event.ObjsSetPos(0, -162.09, 0.0, 562.18)
		event.ObjsSetRot(0, 0.0, -1.96, 0.0)
		event.ObjsSetRot(1, 0.0, -1.68, 0.0)
		event.ObjsSetPos(2, -72.39, 9.71, 707.79)
		event.ObjsSetRot(2, 0.0, -2.64, 0.0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.SetPakuAnim(0, "通常口パク")
		at = 76
		helper_4116e6bb(2070330)
		event.ResetPakuAnim()
		event.ObjsSetMotion(0, "振り返る2", 6, -1.0, 1)
		event.ObjsNextMotion(0, "振り返る2L", 0)
		event.ObjsSetMotion(1, "振り返る3", 6, -1.0, 1)
		event.ObjsNextMotion(1, "振り返る3L", 0)
		event.ObjsSetMotion(2, "立ち", 0)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "わらい顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.CmrsMove(-217.49, 21.55, 521.2, -180.22, 20.7, 546.04, 33)
		at = 77
		wait_frames(33)
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "立ち", 0)
		event.SetPakuAnim(2, "わらい口パク")
		at = 78
		helper_4116e6bb(2070340)
		event.ResetPakuAnim()
		event.SetPakuAnim(2, "わらい口パク")
		at = 79
		helper_4116e6bb(2070345)
		event.ResetPakuAnim()
		event.CharaActive(1, 35)
		event.CharaActive(1, 36)
		event.CmrsSetPos(-171.0, 27.48, 601.08)
		event.CmrsSetRef(-147.93, 29.07, 706.46)
		event.ObjsSetPos(3, -154.92, 0.0, 741.22)
		event.ObjsSetRot(3, 0.0, 3.04, 0.0)
		event.ObjsSetPos(4, -183.74, 0.0, 742.29)
		event.ObjsSetRot(4, 0.0, 2.92, 0.0)
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "目パチ")
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "目パチ")
		event.ObjsSetMotion(3, "会話2", 6)
		event.ObjsNextMotion(3, "立ち", 0)
		event.ObjsSetMotion(4, "立ち", 0)
		event.SetPakuAnim(3, "口パク")
		at = 80
		helper_4116e6bb(2070350)
		event.ResetPakuAnim()
		event.SetPakuAnim(3, "口パク")
		at = 81
		helper_4116e6bb(2070360)
		event.ResetPakuAnim()
		event.SetPakuAnim(3, "口パク")
		at = 82
		helper_4116e6bb(2070370)
		event.ResetPakuAnim()
		at = 83
		wait_objects(3)
		event.ObjsSetMotion(4, "スコップ会話2", 6)
		event.ObjsNextMotion(4, "立ち", 0)
		event.SetPakuAnim(4, "口パク")
		at = 84
		helper_4116e6bb(2070380)
		event.ResetPakuAnim()
		at = 85
		wait_objects(4)
		event.EohSetFootSoundId(3, 1)
		event.EohSetFootSoundId(4, 1)
		event.ObjsSetMotion(3, "歩き", 0)
		event.ObjsRotation(3, 0.0, 0.16, 0.0, 20)
		at = 86
		wait_frames(10)
		event.ObjsSetMotion(4, "スコップ歩き", 0)
		event.ObjsRotation(4, 0.0, 0.04, 0.0, 20)
		event.ObjsPosDelay(3, 10)
		event.ObjsSetMotion(3, "走り", 0)
		event.ObjsMove(3, -107.08, 0.0, 959.69, 45, 1)
		event.ObjsPosDelay(4, 10)
		event.ObjsSetMotion(4, "スコップ走り", 0)
		event.ObjsMove(4, -137.0, 0.0, 955.7, 60, 1)
		at = 87
		wait_frames(60)
		event.CmrsSetPos(-182.22, 15.16, 581.8)
		event.CmrsSetRef(-151.21, 22.1, 543.01)
		event.ObjsSetPos(0, -141.55, 0.0, 545.23)
		event.ObjsSetRot(0, 0.0, -0.4, 0.0)
		event.ObjsSetRot(1, 0.0, 0.12, 0.0)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "手をふる", 6, -1.0, 1)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ObjsSetMotion(3, "立ち", 4)
		event.ObjsSetMotion(4, "スコップ立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 88
		helper_4116e6bb(2070390)
		event.ResetPakuAnim()
		at = 89
		wait_objects(1)
		event.SetPakuAnim(1, "通常口パク")
		at = 90
		helper_4116e6bb(2070400)
		event.ResetPakuAnim()
		event.ObjsSetMotion(0, "うなづく（モニカ見）", 6, -1.0, 1)
		at = 91
		wait_frames(38)
		event.CmrsSetPos(-105.67, 24.06, 557.69)
		event.CmrsSetRef(-158.84, 23.49, 525.23)
		event.ObjsSetPos(0, -173.5, 0.0, 515.39)
		event.ObjsSetRot(0, 0.0, -2.0, 0.0)
		event.ObjsSetPos(1, -158.87, 0.0, 543.98)
		event.ObjsSetRot(1, 0.0, -2.88, 0.0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "歩き", 4, -1.0, 1)
		event.ObjsMove(1, -170.41, 0.0, 526.61, 45)
		at = 92
		wait_frames(15)
	end)
	at = 93
	vm.entry(93)
	event.CancelDramaScene()
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EsmClear()
	event.SetFadeOut(30)
	at = 94
	wait_frames(30)
	event.SetCharaPos(0, -245.13, 0.0, -21.46)
	event.SetCharaRot(0, 0.0, -1.52, 0.0)
	helper_26e74()
	event.ResetCamera(1, 0.0, 20.0)
	event.SetCameraPos(-300.47, 19.23, -22.1)
	event.SetCameraRef(-236.15, 23.49, -21.6)
	event.SetFadeIn(30)
	at = 95
	wait_frames(30)
	var2 = event.GetMesWindowMode() or var2
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(
		0,
		"[(!)]You can now use the train to move around.\n   Choose Leave from the Train Door\n   Menu to return to Palm Brinks to do some shopping."
	)
	at = 96
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]As more people join your adventure,\n   put them on the train. You can have\n   your friends on the train immigrate<page>to the Georama areas or go into the\ndungeons with you as support\ncharacters."
	)
	at = 97
	show_message(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, var2)
end

--- Helper function.
local function helper_31b00()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 32
		event.LoadMotion(5, "event/e200/e209/e209_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 33)
		event.LoadMotion(5, "event/e200/e209/e209_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 33)
	end
	if active_chr_no == 1 then
		global0 = 32
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 33)
		event.LoadMotion(5, "event/e200/e209/e209_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 33)
		event.LoadMotion(5, "event/e200/e209/e209_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.LoadChara(5, "event/e200/e209/e209_conda.gltf", "info", 36)
	event.EohSyncChara(4, 36)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.CharaActive(0, 36)
	event.LoadChara(5, "event/e200/e209/wine.gltf", "info", 37)
	event.EohSyncChara(5, 37)
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.CharaActive(0, 37)
	event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 38)
	event.EohSyncChara(6, 38)
	event.ObjsInit(6)
	event.ObjsSyncObj(6, 6)
	event.CharaActive(0, 38)
	for var1 = 0, 4 do
		event.LoadChara(5, "event/e200/e209/e209_magic1.gltf", "info", 41 + var1)
		event.EohSyncChara(10 + var1, 41 + var1)
		event.ObjsInit(10 + var1)
		event.ObjsSyncObj(10 + var1, 10 + var1)
		event.CharaActive(0, 41 + var1)
	end
	event.LoadChara(5, "event/e200/e209/e209_magic2.gltf", "info", 42)
	event.EohSyncChara(8, 42)
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.CharaActive(0, 42)
	event.LoadChara(5, "event/e200/e209/e209_flower.gltf", "info", 40)
	event.CharaActive(1, 40)
	event.EohSyncChara(9, 40)
	event.ObjsInit(9, 9)
	event.ObjsSyncObj(9, 9)
	event.ObjsSetPos(9, -885.352, 134.434, -841.894)
	event.ObjsSetRot(9, 2.340434, -0.9010716, 1.0717125)
	print("sync obj------------------------------------------\n")
	event.EohSyncObj_2(11, "p09_s0201")
	event.EohSetShow(11, 0)
	event.EsmInitialize(5)
	event.EsmLoadBase("e209魔法")
	event.EsmInitFix(5)
	event.LoadMes(0, 5, "event/e200/e209/e209_1.txt")
end

--- Helper function.
local function helper_3166c()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(33)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(33)
	end
	event.DeleteChara(36)
	event.DeleteChara(37)
	event.DeleteChara(38)
	event.DeleteChara(40)
	for var1 = 0, 4 do
		event.DeleteChara(41 + var1)
	end
	event.DeleteChara(42)
end

--- Helper function.
local function helper_3304c()
	local var0: s32 = 0
	local var1: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: s32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(209, 1)
		event.Initialize()
		var0 = event.SndLoadSound_2(2223) or var0
		var1 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var1
		helper_31b00()
		event.StopBgm(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.SetStatus(1, global0, 256, 1)
		event.SetStatus(1, global1, 256, 1)
		event.StopBgm(0)
		at = 1
		wait_frames(4)
		event.LoadBgm(50)
		event.PlayBgm(0)
		event.InitDramaScene()
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 36)
		event.CharaActive(1, 33)
		event.CmrsSetPos(-511.68, 40.04, -655.39)
		event.CmrsSetRef(-435.03, 32.29, -719.93)
		event.ObjsSetPos(0, -633.03, 0.0, -833.81)
		event.ObjsSetRot(0, 0.0, -1.44, 0.0)
		event.ObjsSetPos(1, -635.79, 0.0, -814.6)
		event.ObjsSetRot(1, 0.0, -1.92, 0.0)
		event.ObjsSetPos(4, -661.7, 0.0, -828.21)
		event.ObjsSetRot(4, 0.0, 1.48, 0.0)
		event.ObjsSetMotion(0, "小人見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "小人見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(4, "立ち", 4)
		event.CmrsFadeInit()
		event.CmrsFadeIn(60, 0.0, 0.0, 0.0)
		event.CmrsSetPos(-531.23, 25.72, -753.68)
		event.CmrsSetRef(-442.13, 24.48, -788.67)
		event.CmrsMove2(-531.23, 25.72, -753.68, -619.77, 24.48, -800.56, 120, 2, 0.4)
		at = 2
		wait_camera()
		event.CmrsSetPos(-587.85, 29.47, -818.63)
		event.CmrsSetRef(-648.63, 21.46, -826.79)
		event.CmrsSetPos(-587.85, 29.47, -818.63)
		event.CmrsSetRef(-648.63, 21.46, -826.79)
		at = 3
		helper_4116e6bb(2090620)
		event.SndSePlay(var0, 15)
		event.ObjsSetMotion(4, "振り返る", 6)
		event.ObjsNextMotion(4, "振り返るL", 0)
		at = 4
		wait_frames(45)
		if global0 ~= 0 then
			event.CharaActive(0, 33)
		end
		event.CharaActive(0, global0)
		event.CmrsSetPos(-695.85, 6.37, -803.15)
		event.CmrsSetRef(-677.57, 12.04, -825.79)
		event.SndSePlay(var0, 16)
		event.ObjsSetMotion(4, "杖を振る", 6)
		event.ObjsSetMotion(4, "杖を振るL", 0)
		do
			local out1, out2, out3 = event.GetCharaPos(40)
			var6 = out1 or var6
			var7 = out2 or var7
			var8 = out3 or var8
		end
		var9 = 0
		while var9 < 10 do
			var11 = 0.0
			var10 = 0.0
			do
				local out1, out2, out3 = event.EohGetFramePos(4, "tue_saki")
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			pos_x = vm.f32(-694.77)
			pos_z = vm.f32(-857.66)
			var11 = event.GetRand(1.5707964) or var11
			var10 = event.GetRand(20.0) or var10
			var10 = vm.f32(var10 + 15.0)
			pos_x = vm.f32(pos_x + vm.f32(vm.sin(var11) * var10))
			pos_z = vm.f32(pos_z + vm.f32(vm.cos(var11) * var10))
			event.EsmCreate("e209魔法")
			event.EsmSetVect1(pos_x, pos_y, pos_z)
			event.EsmSetVect2(var6, var7, var8)
			at = 5
			vm.wait(5)
			var9 = var9 + 1
		end
		at = 6
		helper_4116e6bb(2090630)
		event.CharaActive(0, 41)
		event.CharaActive(1, 42)
		event.CmrsSetPos(-620.39, 17.91, -830.69)
		event.CmrsSetRef(-657.47, 26.12, -833.22)
		event.ObjsSetPos(8, -763.76, -38.88, -840.29)
		event.ObjsSetRot(8, 0.0, 1.68, 0.0)
		event.SndSePlay(var0, 17)
		event.ObjsSetMotion(8, "キラキラ", 4)
		at = 7
		wait_frames(30)
		event.ObjsSetMotion(8, "消える", 6)
		event.ObjsMotionWait(8)
		event.SetModelLightSwitch(40, 0)
		event.SetMotionBlur(1)
		var13 = 128.0
		var12 = 1.0
		while var9 < 82 do
			if var13 < vm.f32(2.1333334) then
				var13 = 0.0
			else
				var13 = vm.f32(var13 - vm.f32(2.1333334))
			end
			event.SetModelLightColor(40, 128.0, 128.0, 128.0, var13)
			event.SetScale(40, var12, var12, var12)
			var12 = vm.f32(var12 - vm.f32(0.01))
			at = 8
			vm.wait(8)
			var9 = var9 + 1
		end
		at = 9
		wait_objects(8)
		if global0 ~= 0 then
			event.CharaActive(1, 33)
		end
		event.CharaActive(1, global0)
		event.CharaActive(0, 36)
		event.CmrsSetPos(-671.41, 16.73, -811.28)
		event.CmrsSetRef(-644.75, 19.15, -824.0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		event.ObjsSetMotion(0, "驚く", 6, -1.0, 1)
		at = 10
		wait_frames(23)
		event.CharaActive(1, 36)
		event.CmrsSetPos(-607.66, 36.8, -768.32)
		event.CmrsSetRef(-624.43, 27.66, -792.8)
		event.CmrsSetPos(-620.75, 27.66, -778.33)
		event.CmrsSetRef(-631.0, 24.74, -796.76)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetMotion(0, "小人見立ち", 4, -1.0, 1)
		event.SndSePlay(var0, 18)
		event.ObjsSetMotion(4, "振り返る2", 6)
		event.ObjsNextMotion(4, "立ち", 0)
		at = 11
		wait_frames(36)
		event.ObjsSetMotion(4, "会話", 6)
		event.ObjsNextMotion(4, "立ち", 0)
		at = 12
		helper_4116e6bb(2090640)
		at = 13
		helper_4116e6bb(2090650)
		at = 14
		helper_4116e6bb(2090660)
		event.ObjsSetMotion(4, "会話", 6)
		event.ObjsNextMotion(4, "立ち", 0)
		at = 15
		helper_4116e6bb(2090670)
		event.CmrsSetPos(-686.13, 14.37, -802.47)
		event.CmrsSetRef(-665.83, 15.3, -815.79)
		event.CmrsSetPos(-683.22, 14.18, -807.51)
		event.CmrsSetRef(-662.33, 17.31, -817.61)
		event.ObjsSetRot(0, 0.0, -1.32, 0.0)
		event.ObjsSetRot(1, 0.0, -2.04, 0.0)
		event.ObjsSetMotion(0, "小人見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "小人見会話", 6, -1.0, 1)
		event.ObjsNextMotion(1, "小人見立ち", 0)
		event.ObjsSetMotion(0, "もっともだ", 6)
		event.ObjsNextMotion(0, "小人見立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 16
		helper_4116e6bb(2090680)
		event.ResetPakuAnim()
		at = 17
		wait_objects(1)
		at = 18
		helper_4116e6bb(2090690)
		event.SetPakuAnim(1, "通常口パク")
		at = 19
		helper_4116e6bb(2090700)
		event.ResetPakuAnim()
		event.CmrsSetPos(-618.98, 20.59, -766.84)
		event.CmrsSetRef(-645.79, 21.42, -821.23)
		event.CmrsSetPos(-620.75, 27.66, -778.33)
		event.CmrsSetRef(-631.0, 24.74, -796.76)
		event.ObjsResetDaPosition(0)
		at = 20
		helper_4116e6bb(2090710)
		event.ObjsTexAnime(1, 1, "目あき～目あきれ")
		event.SndSePlay(var0, 19)
		event.ObjsSetMotion(1, "はぁ？", 6)
		event.ObjsNextMotion(1, "はぁ？L", 4)
		at = 21
		helper_4116e6bb(2090720)
		event.ObjsSetMotion(1, "う・・・", 2)
		event.ObjsNextMotion(1, "う・・・L", 0)
		at = 22
		helper_4116e6bb(2090730)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetMotion(4, "会話", 6)
		event.ObjsNextMotion(4, "立ち", 0)
		at = 23
		helper_4116e6bb(2090740)
		event.CharaActive(1, 37)
		event.SetReference(36, "wine", 37)
		event.ObjsSetMotion(4, "ぶどう酒を渡す", 6)
		event.ObjsNextMotion(4, "ぶどう酒を渡すL", 0)
		at = 24
		wait_frames(27)
		event.ObjsSetMotion(0, "小人見会話", 6)
		event.ObjsNextMotion(0, "小人見立ち")
		event.SetPakuAnim(0, "通常口パク")
		at = 25
		helper_4116e6bb(2090750)
		event.ResetPakuAnim()
		at = 26
		wait_objects(0)
		at = 27
		helper_4116e6bb(2090760)
		at = 28
		helper_4116e6bb(2090765)
		event.CharaActive(1, 38)
		event.DelReference(37)
		event.SetReference(global0, "item", 37)
		event.CmrsSetPos(-665.1, 35.16, -841.27)
		event.CmrsSetRef(-637.33, 29.85, -838.63)
		event.ObjsSetPos(6, -644.57, 33.56, -840.23)
		event.ObjsSetRot(6, 0.0, -1.08, 0.0)
		event.StopBgm(0)
		event.SndSePlay(var0, 20)
		event.SndSePlay(var1, 0)
		event.ObjsSetMotion(6, "発動", 6)
		event.ObjsSetMotion(0, "ぶどう酒ゲット", 4, -1.0, 1)
		at = 29
		helper_f38eabca(370, 1)
		event.CharaActive(0, 37)
		event.CharaActive(0, 38)
		event.PlayBgm(0)
		event.ObjsSetMotion(1, "小人見立ち", 4, -1.0, 1)
		event.CmrsSetPos(-609.41, 36.37, -779.33)
		event.CmrsSetRef(-630.67, 25.71, -807.05)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(4, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(0, "小人見会話", 6)
		event.ObjsNextMotion(0, "小人見立ち")
		event.SetPakuAnim(0, "通常口パク")
		at = 30
		helper_4116e6bb(2090770)
		event.ResetPakuAnim()
		event.ObjsSetMotion(4, "会話", 6)
		event.ObjsNextMotion(4, "立ち")
		at = 31
		helper_4116e6bb(2090780)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		at = 32
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_344d6cd8()
		end
		if at <= 2 then
			helper_8cd371d7(2090620)
		end
		if at <= 3 then
			wait_frames_skipping(45)
		end
		if at <= 4 then
			var9 = 0
			var11 = 0.0
			var10 = 0.0
			pos_x = vm.f32(-694.77)
			pos_z = vm.f32(-857.66)
			var10 = vm.f32(var10 + 15.0)
			pos_x = vm.f32(pos_x + vm.f32(vm.sin(var11) * var10))
			pos_z = vm.f32(pos_z + vm.f32(vm.cos(var11) * var10))
		end
		if at <= 5 then
			local _ = var9 < 10
			var9 = var9 + 1
			helper_8cd371d7(2090630)
		end
		if at <= 6 then
			local _ = global0 ~= 0
			wait_frames_skipping(30)
		end
		if at <= 7 then
			var13 = 128.0
			var12 = 1.0
			local _ = var13 < vm.f32(2.1333334)
			var13 = 0.0
			var13 = vm.f32(var13 - vm.f32(2.1333334))
			var12 = vm.f32(var12 - vm.f32(0.01))
		end
		if at <= 8 then
			local _ = var9 < 82
			var9 = var9 + 1
			helper_238b5abc(8)
		end
		if at <= 9 then
			wait_frames_skipping(23)
		end
		if at <= 10 then
			local _ = global0 ~= 0
			wait_frames_skipping(36)
		end
		if at <= 11 then
			helper_8cd371d7(2090640)
		end
		if at <= 12 then
			helper_8cd371d7(2090650)
		end
		if at <= 13 then
			helper_8cd371d7(2090660)
		end
		if at <= 14 then
			helper_8cd371d7(2090670)
		end
		if at <= 15 then
			helper_8cd371d7(2090680)
		end
		if at <= 16 then
			helper_238b5abc(1)
		end
		if at <= 17 then
			helper_8cd371d7(2090690)
		end
		if at <= 18 then
			helper_8cd371d7(2090700)
		end
		if at <= 19 then
			helper_8cd371d7(2090710)
		end
		if at <= 20 then
			helper_8cd371d7(2090720)
		end
		if at <= 21 then
			helper_8cd371d7(2090730)
		end
		if at <= 22 then
			helper_8cd371d7(2090740)
		end
		if at <= 23 then
			wait_frames_skipping(27)
		end
		if at <= 24 then
			helper_8cd371d7(2090750)
		end
		if at <= 25 then
			helper_238b5abc(0)
		end
		if at <= 26 then
			helper_8cd371d7(2090760)
		end
		if at <= 27 then
			helper_8cd371d7(2090765)
		end
		if at <= 28 then
			helper_7d730ff7(370, 1)
		end
		if at <= 29 then
			helper_8cd371d7(2090770)
		end
		if at <= 30 then
			helper_8cd371d7(2090780)
		end
		if at <= 31 then
			wait_frames_skipping(30)
		end
		return true
	end)
	event.CancelDramaScene()
	event.EsmClear()
	helper_3166c()
	event.StopBgm(0)
	at = 33
	wait_frames(4)
	event.LoadBgm(1)
	event.PlayBgm(0)
	event.ResetCamera(1, 0.0, 20.0)
	event.SetFadeIn(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
-- Defined empty, so the engine runs this instead of its default.
function script.default_event() end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		at = 1
		helper_b76e3b36()
		helper_f72a4299()
		at = 2
		helper_28e0c()
		event.SetNpcStatus(1, 128)
		event.SetNpcStatus(2, 128)
		event.SetNpcStatus(13, 128)
		event.SetSavedataEtc(0, 4)
		event.JoinPartyMember(1, 1)
		event.SetCharaChangeFlag(1, 1)
		event.SetCharaChangeMask(1, 1)
		event.AddItem(352, 5)
		at = 3
		helper_d529ed92()
		event.SetFadeIn(30)
		event.Initialize()
		helper_d552d8eb()
		helper_0226fccb()
		at = 4
		vm.wait(4)
		event.LoadScript("s02/s02_1.stb", -1)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				helper_28e0c()
				return vm.continue_with(function()
					event.SetNpcStatus(1, 128)
					event.SetNpcStatus(2, 128)
					event.SetNpcStatus(13, 128)
					event.SetSavedataEtc(0, 4)
					event.JoinPartyMember(1, 1)
					event.SetCharaChangeFlag(1, 1)
					event.SetCharaChangeMask(1, 1)
					event.AddItem(352, 5)
					at = 3
					helper_d529ed92()
					event.SetFadeIn(30)
					event.Initialize()
					helper_d552d8eb()
					helper_0226fccb()
					at = 4
					vm.wait(4)
					event.LoadScript("s02/s02_1.stb", -1)
					return
				end)
			end
			if at <= 2 then
				helper_e52544df()
			end
			if at <= 3 then
				helper_042a5b29()
				helper_1ef0d4b2()
			end
			return 0
		end
		return nil
	end)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	helper_3304c()
	event.Initialize()
	event.AddItem(370, 1)
	helper_d529ed92()
	event.SetFadeIn(30)
	event.EohSyncObj_2(0, "p09_s0201")
	event.EohSetShow(0, 0)
	helper_d4172c24()
	helper_d552d8eb()
	vm.wait(3)
	event.LoadScript("s02/s02_1.stb", -1)
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		at = 1
		helper_b76e3b36()
		helper_f72a4299()
		at = 2
		helper_2000ac46()
		event.Initialize()
		helper_d552d8eb()
		helper_0226fccb()
		at = 3
		vm.wait(3)
		event.LoadScript("s02/s02_1.stb", 504)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				helper_2000ac46()
				return vm.continue_with(function()
					event.Initialize()
					helper_d552d8eb()
					helper_0226fccb()
					at = 3
					vm.wait(3)
					event.LoadScript("s02/s02_1.stb", 504)
					return
				end)
			end
			if at <= 2 then
				helper_042a5b29()
				helper_1ef0d4b2()
			end
			return 0
		end
		return nil
	end)
end

return script
