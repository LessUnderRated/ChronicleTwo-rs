--!strict
-- map/s/s49/s49.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_b8bc()
	local time: f32 = 0
	local var1: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(532, 1)
		time = event.GetTime() or time
		event.SetTime(12.0)
		event.SetTimeStepEnable(0)
		event.LoadSound(5821)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadSound(5821)
		var1 = event.SndLoadSound_2(5821) or var1
		event.CharaActive(0, 0)
		event.ChangeDir("event/e500/e532/")
		event.LoadMes(0, 5, "e532.txt")
		event.LoadChara(5, "e532_y_guil.gltf", "info", 8)
		event.CharaActive(8)
		event.EohSyncChara(0, 8)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "e532_haha.gltf", "info", 9)
		event.CharaActive(9)
		event.EohSyncChara(1, 9)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.LoadChara(5, "e532_bed.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SetReference(10, "haha", 9)
		event.ChangeDir("")
		event.EohSetPos(0, 70.0, 0.0, 10.0)
		event.EohSetRot(0, 0.0, 0.0, 0.0)
		event.EohSetMotion(0, "寝てる", 4)
		event.EohNormalDrive(0)
		event.EohResetDaPosition(0)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "泣き顔")
		event.EohSetTexAnim(0, 1, "泣き目パチ")
		event.EohSetPos(1, 0.0, 0.0, 0.0)
		event.EohSetRot(1, 0.0, 0.0, 0.0)
		event.EohSetMotion(1, "寝てる", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "わらい顔")
		event.EohSetTexAnim(1, 1, "くるし目パチ")
		event.EohSetPos(2, 70.0, 0.0, 10.0)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "寝てる", 4)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(39.84, 60.52, -60.15)
		event.CmrsSetRef(66.03, 22.1, 15.31)
		helper_888ab2a3(30)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320280)
		event.ObjsSetMotion(0, "寝てる会話", 2)
		event.ObjsNextMotion(0, "寝てる", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5320290)
		wait_objects(0)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "泣き顔")
		event.EohSetTexAnim(0, 1, "目あき～目とじ")
		event.ObjsSetMotion(0, "首ふる", 2)
		event.ObjsNextMotion(0, "寝てる", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5320295)
		wait_objects(0)
		event.CmrsSetPos(44.6, 20.65, 33.29)
		event.CmrsSetRef(64.25, 16.57, 22.61)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "泣き顔")
		event.EohSetTexAnim(0, 1, "泣き目パチ")
		event.ObjsMotionDelay(1, 60)
		event.ObjsSetMotion(1, "苦しい", 2)
		event.ObjsNextMotion(1, "寝てる", 4)
		event.ObjsTexaDelay(1, 60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "くるし目パチ２")
		event.ObjsTexaDelay(1, 60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "くるし目パチ")
		event.ObjsMotionDelay(2, 60)
		event.ObjsSetMotion(2, "苦しい", 2)
		event.ObjsNextMotion(2, "寝てる", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320300)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320305)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320310)
		wait_objects(1)
		event.ObjsMotionDelay(1, 40)
		event.ObjsSetMotion(1, "苦しい", 2)
		event.ObjsNextMotion(1, "寝てる", 4)
		event.ObjsTexaDelay(1, 60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "くるし目パチ２")
		event.ObjsTexaDelay(1, 60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "くるし目パチ")
		event.ObjsMotionDelay(2, 40)
		event.ObjsSetMotion(2, "苦しい", 2)
		event.ObjsNextMotion(2, "寝てる", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320315)
		wait_objects(1)
		event.ObjsSetMotion(1, "上向く", 2)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.ObjsSetMotion(2, "上向く", 2)
		event.ObjsNextMotion(2, "上向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320320)
		wait_objects(1)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320323)
		event.ObjsMotionDelay(1, 60)
		event.ObjsSetMotion(1, "上向く戻り", 2)
		event.ObjsNextMotion(1, "寝てる", 4)
		event.ObjsTexaDelay(1, 60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "前向き～左向き")
		event.ObjsTexAnime(1, 1, "前向き～左向き")
		event.ObjsMotionDelay(2, 60)
		event.ObjsSetMotion(2, "上向く戻り", 2)
		event.ObjsNextMotion(2, "寝てる", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320325)
		wait_objects(1)
		event.CmrsSetPos(93.32, 20.1, 22.37)
		event.CmrsSetRef(63.34, 19.1, 24.49)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "わらい顔")
		event.EohSetTexAnim(1, 1, "くるし目パチ")
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "泣き顔")
		event.EohSetTexAnim(0, 1, "泣き目パチ")
		event.EohSetTexAnim(0, 1, "半口")
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320330)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320335)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "泣き顔")
		event.EohSetTexAnim(0, 1, "泣き目パチ")
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5320340)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "泣き顔")
		event.EohSetTexAnim(0, 1, "目あき～目とじ")
		event.ObjsSetMotion(0, "首ふる", 2)
		event.ObjsNextMotion(0, "寝てる", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5320345)
		wait_objects(0)
		event.CmrsSetPos(44.6, 20.65, 33.29)
		event.CmrsSetRef(64.25, 16.57, 22.61)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5320350)
		event.ObjsSetMotion(1, "死", 2)
		event.ObjsNextMotion(1, "死L", 4)
		event.ObjsTexaDelay(1, 60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "ゆっくり目とじ")
		event.ObjsSetMotion(2, "死", 2)
		event.ObjsNextMotion(2, "死L", 4)
		event.SetPakuAnim(1, "わらい口パク２")
		helper_4116e6bb(5320360)
		wait_objects(1)
		event.CmrsSetPos(93.32, 20.1, 22.37)
		event.CmrsSetRef(63.34, 19.1, 24.49)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "死に")
		event.SndSePlay(var1, 11)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "泣き顔")
		event.EohSetTexAnim(0, 1, "泣き目～おどろき目")
		event.ObjsSetMotion(0, "母さん！！", 6)
		event.ObjsNextMotion(0, "母さん！！L", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5320370)
		wait_objects(0)
		event.SndSePlay(var1, 12)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "泣き顔")
		event.EohSetTexAnim(0, 1, "おどろき目パチ")
		event.ObjsSetMotion(0, "目を開けて", 2)
		event.ObjsNextMotion(0, "目を開けてL", 4)
		event.ObjsSetMotion(1, "目を開けて", 2)
		event.ObjsNextMotion(1, "目を開けてL", 4)
		event.ObjsSetMotion(2, "目を開けて", 2)
		event.ObjsNextMotion(2, "目を開けてL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5320375)
		vm.wait(30)
		vm.wait(31)
	end)
	vm.entry(32)
	event.CancelDramaScene()
	event.SetCrossfade(60)
	event.SetTime(time)
	event.SetTimeStepEnable(1)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.LoadMes(0, -1)
	event.CmrsInit()
	event.SetStatusbarShow(1, 1.0)
	event.CharaActive(0)
end

--- Helper function.
local function helper_e6dc()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(536, 1)
		event.LoadSound(5824)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.StopBgm(0)
		at = 1
		helper_888ab2a3(4)
		event.LoadBgm(112)
		event.PlayBgm(0)
		event.LoadSound(5824)
		var0 = event.SndLoadSound_2(5824) or var0
		event.CharaActive(0, 0)
		event.ChangeDir("event/e500/e536/")
		event.LoadMes(0, 5, "e536.txt")
		event.LoadChara(5, "e536_y_guil.gltf", "info", 8)
		event.CharaActive(8)
		event.EohSyncChara(0, 8)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "e536_haha.gltf", "info", 9)
		event.CharaActive(9)
		event.EohSyncChara(1, 9)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.LoadChara(5, "e536_door.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e536_chair.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ChangeDir("")
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetPos(0, 256, 208)
		event.SpriteSetPutsize(0, 512, 416)
		event.SpriteSetColor(0, 255, 255, 255, 255)
		event.SpriteSetDraw(0, 0)
		event.EohSyncObj_2(4, "p01_s4901")
		event.EohSetShow(4, 0)
		event.EohSyncObj_2(5, "p08_ai02a")
		event.EohSetPos(5, 0.0, 0.0, 10.0)
		event.EohSyncObj_3(5, "p08_ai02a", "ai020801-m")
		event.EohSetShow(5, 0)
		event.SetStatus(1, 10, 64, 1)
		event.SetStatus(1, 11, 64, 1)
		event.EohSetPos(0, -33.0, 0.0, 71.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohNormalDrive(0)
		event.EohResetDaPosition(0)
		event.EohSetSoundId(0, var0)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "わらい顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, 15.0, 0.0, -24.400002)
		event.EohSetRot(1, 0.0, -1.57, 0.0)
		event.EohSetMotion(1, "座り", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, -33.0, 0.0, 71.0)
		event.EohSetRot(2, 0.0, 3.14, 0.0)
		event.EohSetPos(3, 10.0, 0.0, 4.0)
		event.EohSetRot(3, 0.0, -2.41, 0.0)
		event.InitDramaScene()
		event.SndSePlay(var0, 7)
		event.ObjsSetMotion(0, "ドア開け", 6)
		event.ObjsNextMotion(0, "ドア開けL", 4)
		event.ObjsSetMotion(2, "ドア開け", 6)
		event.ObjsNextMotion(2, "待機", 4)
		event.CmrsInit()
		event.CmrsSetPos(61.97, 46.56, -61.97)
		event.CmrsSetRef(15.12, 25.71, 12.05)
		event.CmrsMove2(61.97, 46.56, -61.97, -5.06, 25.71, -5.5, 60, 2, 1.0)
		event.SetFadeIn(30)
		at = 2
		helper_888ab2a3(20)
		event.ObjsSetMotion(1, "左見る", 2)
		event.ObjsNextMotion(1, "左見るL", 4)
		at = 3
		wait_objects(0)
		at = 4
		helper_888ab2a3(12)
		event.SndSePlay(var0, 8)
		event.SetPakuAnim(0, "わらい口パク")
		at = 5
		helper_4116e6bb(5360060)
		at = 6
		wait_camera()
		event.CmrsSetPos(-34.76, 39.67, -42.6)
		event.CmrsSetRef(21.19, 24.21, -4.58)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "わらい顔")
		event.EohSetTexAnim(0, 1, "目あき～目とじ")
		event.SndSePlay(var0, 9)
		event.ObjsSetPos(0, 10.0, 0.0, 4.0)
		event.ObjsSetRot(0, 0.0, -2.41, 0.0)
		event.ObjsSetMotion(0, "座る", 6)
		event.ObjsNextMotion(0, "座るL", 4)
		at = 7
		wait_objects(0)
		event.ObjsSetMotion(0, "下向く", 2)
		event.ObjsNextMotion(0, "下向くL", 4)
		event.SetPakuAnim(0, "わらい口パク")
		at = 8
		helper_4116e6bb(5360070)
		event.SetPakuAnim(0, "わらい口パク")
		at = 9
		helper_4116e6bb(5360075)
		event.CmrsSetPos(34.3, 21.14, 15.6)
		event.CmrsSetRef(11.3, 24.63, -18.3)
		event.CmrsMove2(34.3, 21.14, 15.6, 3.12, 20.97, -11.09, 120, 2, 1.0)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "わらい顔")
		event.EohSetTexAnim(0, 1, "目とじ～目あき")
		event.ObjsSetMotion(0, "座り会話入り", 2)
		event.ObjsNextMotion(0, "座り会話", 4)
		event.ObjsTexaDelay(0, 20)
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.SetPakuAnim(0, "わらい口パク")
		at = 10
		helper_4116e6bb(5360080)
		event.StreamOpen3(1, 5360093)
		at = 11
		helper_9cbdc640(1)
		event.StreamPlay(1)
		event.EohSetTexAnim(0, 1, "わらい口パク")
		event.MesMake_2(0, 5360085)
		open_message(0, -1, 8, 0, 0)
		at = 12
		helper_888ab2a3(30)
		event.SetFadeOut(80, 255, 255, 255)
		at = 13
		helper_888ab2a3(80)
		close_message(0)
		event.SetMesWindowMode(0, 11)
		event.SetMesOkuri(0, 0)
		event.SetFadeIn(0)
		event.SpriteSetDraw(0, 1)
		event.MesMake_2(0, 5360090)
		event.SetMesDrawspeed(0, 0)
		open_message(0, -1, 5, 0, 0)
		var1 = 0
		var2 = 0.0
		while var1 < 40 do
			event.SetMesEtc(0, 6, 0, var2)
			event.SetMesEtc(0, 6, 1, 0)
			event.SetMesEtc(0, 6, 2, 0)
			var2 = vm.f32(var2 + vm.f32(3.2))
			var1 = var1 + 1
			at = 14
			vm.wait(14)
		end
		at = 15
		helper_888ab2a3(30)
		var1 = 0
		var2 = 0.0
		while var1 < 30 do
			event.SetMesEtc(0, 6, 0, 128)
			event.SetMesEtc(0, 6, 1, var2)
			event.SetMesEtc(0, 6, 2, 0)
			var2 = vm.f32(var2 + vm.f32(4.266667))
			var1 = var1 + 1
			at = 16
			vm.wait(16)
		end
		at = 17
		helper_888ab2a3(30)
		var1 = 0
		var2 = 0.0
		while var1 < 30 do
			event.SetMesEtc(0, 6, 0, 128)
			event.SetMesEtc(0, 6, 1, 128)
			event.SetMesEtc(0, 6, 2, var2)
			var2 = vm.f32(var2 + vm.f32(4.266667))
			var1 = var1 + 1
			at = 18
			vm.wait(18)
		end
		at = 19
		helper_888ab2a3(60)
		close_message(0)
		event.StreamClose(1)
		at = 20
		helper_888ab2a3(30)
		event.StreamOpen3(1, 5360095)
		at = 21
		helper_9cbdc640(1)
		event.MesMake_2(0, 5360095)
		event.SetMesDrawspeed(0, 0)
		open_message(0, -1, 5, 0, 0)
		var1 = 0
		var2 = 0.0
		while var1 < 90 do
			if var1 == 30 then
				event.StreamPlay(1)
			end
			event.SetMesEtc(0, 6, 0, var2)
			var2 = vm.f32(var2 + vm.f32(1.4222223))
			var1 = var1 + 1
			at = 22
			vm.wait(22)
		end
		event.SetMesEtc(0, 6, 0, 128)
		at = 23
		helper_888ab2a3(60)
		event.FadeOutBgm(30)
		event.SetFadeOut(30, 255, 255, 255)
		at = 24
		helper_888ab2a3(30)
		close_message(0)
		event.SetMesOkuri(0, 1)
		event.StreamClose(1)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(20)
		end
		if at <= 2 then
			helper_238b5abc(0)
		end
		if at <= 3 then
			helper_038a2e4d(12)
		end
		if at <= 4 then
			helper_8cd371d7(5360060)
		end
		if at <= 5 then
			helper_344d6cd8()
		end
		if at <= 6 then
			helper_238b5abc(0)
		end
		if at <= 7 then
			helper_8cd371d7(5360070)
		end
		if at <= 8 then
			helper_8cd371d7(5360075)
		end
		if at <= 9 then
			helper_8cd371d7(5360080)
		end
		if at <= 10 then
			helper_238b5abc(1)
		end
		if at <= 11 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			helper_038a2e4d(30)
		end
		if at <= 12 then
			helper_038a2e4d(80)
		end
		if at <= 13 then
			helper_d16eef1e(0)
			helper_f018b3c0(0, -1, 5, 0, 0)
			var1 = 0
			var2 = 0.0
			var2 = vm.f32(var2 + vm.f32(3.2))
			local _ = var1 < 40
			var1 = var1 + 1
		end
		if at <= 14 then
			helper_038a2e4d(30)
		end
		if at <= 15 then
			var1 = 0
			var2 = 0.0
			var2 = vm.f32(var2 + vm.f32(4.266667))
			local _ = var1 < 30
			var1 = var1 + 1
		end
		if at <= 16 then
			helper_038a2e4d(30)
		end
		if at <= 17 then
			var1 = 0
			var2 = 0.0
			var2 = vm.f32(var2 + vm.f32(4.266667))
			local _ = var1 < 30
			var1 = var1 + 1
		end
		if at <= 18 then
			helper_038a2e4d(60)
		end
		if at <= 19 then
			helper_d16eef1e(0)
			helper_038a2e4d(30)
		end
		if at <= 20 then
			helper_238b5abc(1)
		end
		if at <= 21 then
			helper_f018b3c0(0, -1, 5, 0, 0)
			var1 = 0
			var2 = 0.0
			var2 = vm.f32(var2 + vm.f32(1.4222223))
			local _ = var1 < 90
			local _ = var1 == 30
			var1 = var1 + 1
		end
		if at <= 22 then
			helper_038a2e4d(60)
		end
		if at <= 23 then
			helper_038a2e4d(30)
		end
		if at <= 24 then
			helper_d16eef1e(0)
		end
		return true
	end)
	event.CancelDramaScene()
	event.StopBgm(0)
	event.SpriteSetDraw(0, 0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.LoadMes(0, -1)
	event.CmrsInit()
	event.SetStatusbarShow(1, 1.0)
	event.CharaActive(0)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local at: number = 0
	return vm.guard(function()
		at = 1
		helper_888ab2a3(30)
		at = 2
		helper_b8bc()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_b8bc()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	local at: number = 0
	return vm.guard(function()
		at = 1
		helper_888ab2a3(30)
		at = 2
		helper_b8bc()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_b8bc()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_b8bc()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("d05b01")
	event.LoadScript("d05b01/d05b01.stb", 561)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	helper_e6dc()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("d05b01")
	event.LoadScript("d05b01/d05b01.stb", 571)
end

return script
