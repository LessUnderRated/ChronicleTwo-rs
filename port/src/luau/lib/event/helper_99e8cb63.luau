--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_99e8cb63()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: s32 = 0
	local var3: f32 = 0
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
		wait_frames(4)
		event.LoadBgm(112)
		event.PlayBgm(0)
		event.LoadSound(5824)
		var0 = event.SndLoadSound_2(5824) or var0
		event.CharaActive(0, 0)
		event.ChangeDir("event/e500/e536/")
		event.LoadMes(0, 5, "e536_1.txt")
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
		var1 = 0.0
		event.GetTime(var1)
		event.SetTimeStepEnable(0)
		event.SetTime(12.0)
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
		wait_frames(20)
		event.ObjsSetMotion(1, "左見る", 2)
		event.ObjsNextMotion(1, "左見るL", 4)
		at = 3
		wait_objects(0)
		at = 4
		wait_frames(12)
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
		event.StreamOpen3(1, 5360080)
		at = 10
		helper_9cbdc640(1)
		event.StreamPlay(1)
		event.MesMake_2(0, 5360080)
		event.SetMesDrawspeed(0, 0)
		open_message(0, -1, 8, 0, 0)
		at = 11
		wait_frames(80)
		close_message(0)
		event.EohSetTexAnim(0, 1, "わらい口パク")
		event.MesMake_2(0, 5360085)
		event.SetMesDrawspeed(0, 0)
		open_message(0, -1, 8, 0, 0)
		event.SetFadeOut(60, 255, 255, 255)
		at = 12
		wait_frames(60)
		close_message(0)
		event.SetMesWindowMode(0, 11)
		event.SetMesOkuri(0, 0)
		event.SetFadeIn(0)
		event.SpriteSetDraw(0, 1)
		event.MesMake_2(0, 5360090)
		event.SetMesDrawspeed(0, 0)
		open_message(0, -1, 5, 0, 0)
		var2 = 0
		var3 = 0.0
		while var2 < 30 do
			event.SetMesEtc(0, 6, 0, var3)
			event.SetMesEtc(0, 6, 1, 0)
			event.SetMesEtc(0, 6, 2, 0)
			var3 = vm.f32(var3 + vm.f32(4.266667))
			var2 = var2 + 1
			at = 13
			vm.wait(13)
		end
		at = 14
		wait_frames(10)
		var2 = 0
		var3 = 0.0
		while var2 < 30 do
			event.SetMesEtc(0, 6, 0, 128)
			event.SetMesEtc(0, 6, 1, var3)
			event.SetMesEtc(0, 6, 2, 0)
			var3 = vm.f32(var3 + vm.f32(4.266667))
			var2 = var2 + 1
			at = 15
			vm.wait(15)
		end
		at = 16
		wait_frames(10)
		var2 = 0
		var3 = 0.0
		while var2 < 30 do
			event.SetMesEtc(0, 6, 0, 128)
			event.SetMesEtc(0, 6, 1, 128)
			event.SetMesEtc(0, 6, 2, var3)
			var3 = vm.f32(var3 + vm.f32(4.266667))
			var2 = var2 + 1
			at = 17
			vm.wait(17)
		end
		at = 18
		wait_frames(40)
		var2 = 0
		var3 = 128.0
		while var2 < 30 do
			event.SetMesEtc(0, 6, 0, var3)
			event.SetMesEtc(0, 6, 1, var3)
			event.SetMesEtc(0, 6, 2, var3)
			var3 = vm.f32(var3 - vm.f32(4.266667))
			var2 = var2 + 1
			at = 19
			vm.wait(19)
		end
		close_message(0)
		event.StreamClose(1)
		event.StreamOpen3(1, 5360095)
		at = 20
		helper_9cbdc640(1)
		event.MesMake_2(0, 5360095)
		event.SetMesDrawspeed(0, 0)
		open_message(0, -1, 5, 0, 0)
		var2 = 0
		var3 = 0.0
		while var2 < 90 do
			if var2 == 30 then
				event.StreamPlay(1)
			end
			event.SetMesEtc(0, 6, 0, var3)
			var3 = vm.f32(var3 + vm.f32(1.4222223))
			var2 = var2 + 1
			at = 21
			vm.wait(21)
		end
		event.SetMesEtc(0, 6, 0, 128)
		at = 22
		wait_frames(60)
		event.FadeOutBgm(30)
		event.SetFadeOut(30, 255, 255, 255)
		at = 23
		wait_frames(30)
		close_message(0)
		event.SetMesOkuri(0, 1)
		event.StreamClose(1)
	end, function(received: { any }): boolean
		if at <= 1 then
			var1 = 0.0
			wait_frames_skipping(20)
		end
		if at <= 2 then
			helper_238b5abc(0)
		end
		if at <= 3 then
			wait_frames_skipping(12)
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
			helper_238b5abc(1)
		end
		if at <= 10 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			wait_frames_skipping(80)
		end
		if at <= 11 then
			helper_d16eef1e(0)
			helper_f018b3c0(0, -1, 8, 0, 0)
			wait_frames_skipping(60)
		end
		if at <= 12 then
			helper_d16eef1e(0)
			helper_f018b3c0(0, -1, 5, 0, 0)
			var2 = 0
			var3 = 0.0
			var3 = vm.f32(var3 + vm.f32(4.266667))
			local _ = var2 < 30
			var2 = var2 + 1
		end
		if at <= 13 then
			wait_frames_skipping(10)
		end
		if at <= 14 then
			var2 = 0
			var3 = 0.0
			var3 = vm.f32(var3 + vm.f32(4.266667))
			local _ = var2 < 30
			var2 = var2 + 1
		end
		if at <= 15 then
			wait_frames_skipping(10)
		end
		if at <= 16 then
			var2 = 0
			var3 = 0.0
			var3 = vm.f32(var3 + vm.f32(4.266667))
			local _ = var2 < 30
			var2 = var2 + 1
		end
		if at <= 17 then
			wait_frames_skipping(40)
		end
		if at <= 18 then
			var2 = 0
			var3 = 128.0
			var3 = vm.f32(var3 - vm.f32(4.266667))
			local _ = var2 < 30
			var2 = var2 + 1
		end
		if at <= 19 then
			helper_d16eef1e(0)
			helper_238b5abc(1)
		end
		if at <= 20 then
			helper_f018b3c0(0, -1, 5, 0, 0)
			var2 = 0
			var3 = 0.0
			var3 = vm.f32(var3 + vm.f32(1.4222223))
			local _ = var2 < 90
			local _ = var2 == 30
			var2 = var2 + 1
		end
		if at <= 21 then
			wait_frames_skipping(60)
		end
		if at <= 22 then
			wait_frames_skipping(30)
		end
		if at <= 23 then
			helper_d16eef1e(0)
		end
		return true
	end)
	event.CancelDramaScene()
	event.StopBgm(0)
	event.SetTimeStepEnable(1)
	event.SetTime(var1)
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

return helper_99e8cb63
