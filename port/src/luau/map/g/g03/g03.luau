--!strict
-- map/g/g03/g03.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_0855dba8 = require("@lib/event/helper_0855dba8")
local helper_2348941a = require("@lib/event/helper_2348941a")
local helper_379e93c0 = require("@lib/event/helper_379e93c0")
local helper_3e566142 = require("@lib/event/helper_3e566142")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_5bdac642 = require("@lib/event/helper_5bdac642")
local helper_6be25ed2 = require("@lib/event/helper_6be25ed2")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8c87ba09 = require("@lib/event/helper_8c87ba09")
local helper_915f68a8 = require("@lib/event/helper_915f68a8")
local helper_93cb8168 = require("@lib/event/helper_93cb8168")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_b2a07125 = require("@lib/event/helper_b2a07125")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_ebc222ab = require("@lib/event/helper_ebc222ab")
local show_message = require("@lib/event/show_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_1be54()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(402, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_2(4203) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e402/")
		event.LoadMes(0, 5, "e402.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e402_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e402_monica.gltf", "info", 0)
			event.CharaActive(0)
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
			event.LoadMotion(5, "event/e400/e402/e402_mints.gltf", "info", 32)
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
			event.LoadMotion(5, "event/e400/e402/e402_monica.gltf", "info", 32)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 32)
			event.EohSyncChara(1, 32)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(32)
		event.CharaActive(33)
		event.EohSetPos(0, 471.25, 20.66, 1748.34)
		event.EohSetRot(0, 0.0, 2.42, 0.0)
		event.EohSetMotion(0, "歩き", 4)
		event.EohSetFootSoundId(0, 3)
		event.EohSetPos(1, 465.2, 21.66, 1714.07)
		event.EohSetRot(1, 0.0, 2.06, 0.0)
		event.EohSetMotion(1, "歩き", 4)
		event.EohSetFootSoundId(1, 3)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(626.04, 342.91, 851.54, 601.54, 423.33, 982.17)
		event.CmrsAddPas(626.04, 302.51, 851.54, 601.54, 268.91, 982.17)
		event.CmrsAddPas(626.04, 292.84, 851.54, 631.34, 235.24, 1036.0)
		event.CmrsStartPas()
		event.ObjsMove(0, 658.38, 0.0, 1645.68, 200, 1)
		event.ObjsMove(1, 634.81, 0.0, 1650.64, 200, 1)
		event.SetFadeIn(30)
		helper_888ab2a3(120)
		event.EohSetFootSoundId(0, 14)
		event.EohSetFootSoundId(1, 14)
		wait_camera()
		event.CmrsSetPos(715.95, 6.25, 1348.09)
		event.CmrsSetRef(737.6, 21.29, 1394.21)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "ぼうぜん顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.ObjsSetPos(0, 742.24, 0.0, 1390.21)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetPos(1, 726.5, 0.0, 1393.6)
		event.ObjsSetRot(1, 0.0, 3.14, 0.0)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(4020010)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "ぼうぜん顔")
		event.EohSetTexAnim(0, 1, "通常目～うれし目")
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, 698.97, -14.0, 868.0, 180)
		event.SetPakuAnim(0, "わらい口パク")
		helper_0382f327(4020015, 40)
		event.CmrsMoveAhd2(0.07, 6.33, 54.89, 40, 0, 1.0)
		wait_objects(0)
		event.SndSePlay(var0, 0)
		event.ObjsSetMotion(0, "はしゃぐ", 2)
		event.ObjsNextMotion(0, "はしゃぐL", 4)
		helper_4116e6bb(4020020)
		event.CmrsSetPos(713.67, 19.27, 1363.81)
		event.CmrsSetRef(727.45, 21.29, 1389.89)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "うれし顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(4020030)
		event.CmrsSetPos(677.49, 2.27, 847.33)
		event.CmrsSetRef(696.2, 6.92, 872.39)
		event.SndSeStop(var0, 0)
		event.SndSePlay(var0, 1)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "うれし顔")
		event.EohSetTexAnim(0, 1, "うれし目パチ")
		event.ObjsSetMotion(0, "うん！", 6)
		event.ObjsNextMotion(0, "うん！L", 4)
		event.SetPakuAnim(0, "わらい口パク")
		helper_4116e6bb(4020040)
		event.CmrsSetPos(713.67, 19.27, 1363.81)
		event.CmrsSetRef(727.45, 21.29, 1389.89)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(4020050)
		event.CmrsSetPos(758.44, 28.22, 1458.62)
		event.CmrsSetRef(743.05, 21.29, 1388.25)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(0, "手をふる", 4, -1.0, 1)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMove(1, 716.1, 0.0, 1297.83, 90)
		event.StreamOpen3(1, 4020055)
		helper_9cbdc640(1)
		wait_objects(1)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.StreamPlay(1)
		event.ObjsSetMotion(0, "左向く", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		event.ObjsSetMotion(1, "はっ？！", 6)
		event.ObjsNextMotion(1, "はっ？！Ｌ", 4)
		helper_888ab2a3(40)
		event.StreamClose(1)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(4020060)
		event.CmrsSyncObj(0, 4.0, 22.0, 0.0, -2.2, 0.5, 50.0)
		event.ObjsSetPos(0, 561.8, -14.0, 1018.56)
		event.ObjsSetRot(0, 0.0, 0.48, 0.0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "指差し", 6)
		event.ObjsNextMotion(1, "指差しＬ", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(4020070)
		wait_objects(1)
		event.FadeOutBgm(30)
		event.EohSetFootSoundId(0, -1)
		event.EohSetFootSoundId(1, -1)
		event.ObjsSetMotion(0, "うなづく", 6)
		event.ObjsPosDelay(0, 60)
		event.ObjsMove(0, 1065.83, 0.0, 1080.26, 230, 1)
		event.ObjsRotDelay(0, 60)
		event.ObjsRotation(0, 0.0, 1.44, 0.0, 10)
		event.ObjsMotionDelay(0, 59)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsMotionDelay(0, 1)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 230)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsPosDelay(1, 60)
		event.ObjsMove(1, 903.05, 0.0, 1267.1, 180)
		event.ObjsRotDelay(1, 60)
		event.ObjsRotation(1, 0.0, 2.06, 0.0, 10)
		event.ObjsMotionDelay(1, 60)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMotionDelay(1, 180)
		event.ObjsSetMotion(1, "立ち")
		event.CmrsAhddelay(60)
		event.CmrsMoveAhd2(0.76, -1.0, 32.0, 30, 0, 1.0)
		helper_0382f327(4020080, 200)
		event.CmrsReleaseObj()
		event.CmrsMove2(898.96, 88.81, 1079.93, 876.98, 128.35, 1056.64, 360, 1, 1.0)
		helper_0382f327(4020090, 160)
		helper_0382f327(4020100, 120)
		helper_0382f327(4020110, 240)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(22)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.CmrsInit()
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.LoadMes(0, -1)
	event.SetSavedataEtc(0, 6)
	event.SoundAllStop()
	event.SndInReverb(0)
	event.GotoDrawChapter(4)
	vm.wait(23)
	event.SndInReverb(1)
	event.LoadSound(4000)
	event.LoadBgm(3)
	event.PlayBgm(0)
	event.CharaActive(0)
	event.SetMotion(0, "立ち")
	event.SetCharaPos(0, 1333.8, 0.0, 1013.9)
	event.SetCharaRot(0, 0.0, 1.02, 0.0)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_1a648()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: s32 = 0
	event.Initialize()
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
	end
	var3 = vm.f32(vm.f32(vm.sin(vm.f32(-1.39)) * 30.0) + var0)
	var4 = var1
	var5 = vm.f32(vm.f32(vm.cos(vm.f32(-1.39)) * 30.0) + var2)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsMove(0, var3, var4, var5, 30, 1)
	event.ObjsReference(0, var3, var4, var5, 10)
	event.ObjsSetMotion(0, "歩き")
	var6 = 0
	while var6 < 30 do
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var0 = out1 or var0
			var1 = out2 or var1
			var2 = out3 or var2
		end
		var1 = vm.f32(var1 + 30.0)
		event.SetCameraRef(var0, var1, var2)
		var6 = var6 + 1
		vm.wait(1)
	end
	event.ObjsSetMotion(0, "立ち")
	event.SetMesWindowMode(0, 1)
	event.SetMesShippo(0, 0)
	event.MesMake_2(
		0,
		"さっきの鳴き声は、なんだったんだろう？\n先にあの洞窟から行ってみよう。"
	)
	show_message(0, -1, 5, 256, 208)
end

--- Helper function.
local function helper_19ba8()
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
		event.MesMake_2(0, "『潮騒の洞窟』に移動しますか？")
		at = 1
		var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var0 == 0 then
			event.CmrsSetPos(1800.16, 21.11, -758.98)
			event.CmrsSetRef(1958.18, 16.39, -784.17)
			event.ObjsSetMotion(0, "走り", 4)
			event.ObjsSetPos(0, 1899.56, -14.0, -773.11)
			event.ObjsSetRot(0, 0.0, 1.73, 0.0)
			event.ObjsMove(0, 2107.33, -14.0, -805.09, 40)
			at = 2
			helper_888ab2a3(10)
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
			var4 = vm.f32(vm.f32(vm.sin(vm.f32(-1.39)) * 30.0) + var1)
			var5 = var2
			var6 = vm.f32(vm.f32(vm.cos(vm.f32(-1.39)) * 30.0) + var3)
			event.ObjsMove(0, var4, var5, var6, 30)
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
				helper_038a2e4d(10)
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
local function helper_185f8()
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
		event.MesMake_2(0, "『パウの家』に移動しますか？")
		at = 1
		var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var0 == 0 then
			event.CmrsSetPos(1635.73, 32.56, 1292.96)
			event.CmrsSetRef(1754.78, 30.0, 1358.67)
			event.ObjsSetPos(0, 1782.12, 0.0, 1373.78)
			event.ObjsSetRot(0, 0.0, 1.0, 0.0)
			event.ObjsSetMotion(0, "走り", 4, -1, 1)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 50)
			event.ObjsAddPas(0, 1782.12, 0.0, 1373.78)
			event.ObjsAddPas(0, 1825.81, 0.0, 1397.9)
			event.ObjsAddPas(0, 1906.73, 0.0, 1437.54)
			event.ObjsAddPas(0, 1986.2, 0.0, 1465.28)
			event.ObjsStartPas(0)
			at = 2
			helper_888ab2a3(20)
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
			var4 = vm.f32(vm.f32(vm.sin(vm.f32(-2.15)) * 30.0) + var1)
			var5 = 0.0
			var6 = vm.f32(vm.f32(vm.cos(vm.f32(-2.15)) * 30.0) + var3)
			event.ObjsMove(0, var4, var5, var6, 30)
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
				helper_038a2e4d(20)
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
local function helper_1765c()
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
		event.MesMake_2(0, "『ベニーティオ停車場』に移動しますか？")
		at = 1
		var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var0 == 0 then
			event.CmrsSetPos(-454.66, 376.79, 2105.55)
			event.CmrsSetRef(-706.43, 390.04, 2258.31)
			event.ObjsSetPos(0, -667.76, 328.93, 2241.58)
			event.ObjsSetRot(0, 0.0, -1.25, 0.0)
			event.ObjsSetMotion(0, "走り", 4, -1, 1)
			event.ObjsMove(0, -838.07, 378.91, 2297.28, 50)
			at = 2
			helper_888ab2a3(20)
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
			var4 = vm.f32(vm.f32(vm.sin(vm.f32(1.88)) * 30.0) + var1)
			var5 = 326.0
			var6 = vm.f32(vm.f32(vm.cos(vm.f32(1.88)) * 30.0) + var3)
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
				helper_038a2e4d(20)
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
local function helper_1f100()
	local active_chr_no: s32 = 0
	vm.section(function()
		event.SetFlag(404, 1)
		event.Initialize()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e400/e404/")
		event.LoadMes(0, 5, "e404.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e404_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e404_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e404_shigu.gltf", "info", 34)
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
			event.LoadMotion(5, "event/e400/e404/e404_mints.gltf", "info", 32)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 32)
			event.EohSyncChara(0, 32)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 32)
			event.LoadEquip(5, 1, 4, "info", 32)
			event.LoadEquip(5, 1, 3, "info", 32)
			event.LoadEquip(5, 1, 2, "info", 32, 33)
			event.LoadMotion(5, "event/e400/e404/e404_monica.gltf", "info", 32)
			event.EohSyncChara(1, 32)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(32)
		event.CharaActive(33)
		event.EohSetPos(0, 1580.54, 0.0, 1092.15)
		event.EohSetRot(0, 0.0, -2.4, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 14)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetPos(1, 1501.84, 0.0, 1069.09)
		event.EohSetRot(1, 0.0, -2.64, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 14)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.EohSetPos(2, 1891.0, -14.0, -716.0)
		event.EohSetRot(2, 0.0, 2.16, 0.0)
		event.ObjsMove(0, 1424.62, 0.0, 938.48, 46)
		event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
		event.ObjsMotionDelay(0, 46)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(1, 1401.25, 0.0, 947.01, 36)
		event.ObjsSetMotion(1, "走り", 4, -1.0, 1)
		event.ObjsMotionDelay(1, 36)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsRotDelay(1, 30)
		event.ObjsRotation(1, 0.0, -0.96, 0.0, 8)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(846.73, 268.48, 883.94)
		event.CmrsSetRef(1289.42, 146.71, 951.29)
		event.SetFadeIn(30)
		wait_objects(0)
		wait_objects(1)
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "指さす", 2)
		event.ObjsNextMotion(0, "指さすL", 6)
		event.ObjsRotDelay(1, 4)
		event.ObjsRotation(1, 0.0, 2.2, 0.0, 10)
		event.CmrsMove2(1059.22, 268.48, 1339.51, 1289.42, 146.71, 951.29, 30, 0, 1.0)
		event.ObjsSetMotion(2, "歩き", 4)
		event.ObjsMotionDelay(2, 90)
		event.ObjsSetMotion(2, "立ち")
		event.ObjsInitPas(2)
		event.ObjsSetPasFrm(2, 90)
		event.ObjsAddPas(2, 1787.63, -14.0, -561.29)
		event.ObjsAddPas(2, 1891.0, -14.0, -716.0)
		event.ObjsAddPas(2, 2049.12, -14.0, -873.59)
		event.ObjsAddPas(2, 2149.2, -14.0, -954.9)
		event.ObjsAddPas(2, 2250.94, -14.0, -1018.67)
		event.ObjsStartPas(2)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(4040350)
		wait_camera()
		event.CmrsSetPos(1404.09, 22.36, 896.46)
		event.CmrsSetRef(1422.53, 17.33, 974.51)
		event.ObjsSetRot(0, 0.0, 2.8, 0.0)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(4040360)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(4040370)
		event.ObjsMove(0, 1530.85, 0.0, 826.72, 60)
		event.ObjsSetMotion(0, "走り")
		helper_888ab2a3(10)
		event.ObjsMove(1, 1507.06, 0.0, 850.62, 70)
		event.ObjsSetMotion(1, "走り")
		helper_888ab2a3(20)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	event.CancelDramaScene()
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.LoadMes(0, -1)
	event.LoadSound(4000)
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(3)
	event.PlayBgm(0)
	event.CharaActive(0)
	event.SetMotion(0, "立ち")
	event.SetCharaPos(0, 1733.3, 0.0, -301.5)
	event.SetCharaRot(0, 0.0, 2.76, 0.0)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
script.event_99 = helper_3e566142

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local mc_load: s32 = 0
	local old_map_no: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local old_sub_map_no: s32 = 0
	local var5: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local get_old_interior_map_no: s32 = 0
	local at: number = 0
	return vm.guard(function()
		helper_3e566142()
		mc_load = event.CheckMcLoad() or mc_load
		if mc_load == 1 then
			helper_9dafbc83(vm.f32(1832.4), vm.f32(-5.2), vm.f32(-406.6), vm.f32(-1.16))
			event.ResetCamera(1, 0.0, 10.0)
		else
			old_map_no = event.GetOldMapNo() or old_map_no
			var2 = event.GetMapType(old_map_no) or var2
			print("old_map = ", old_map_no, "\n")
			print("old_map_type = ", var2, "\n")
			if var2 ~= -1 then
				if var2 == 7 or var2 == 8 or old_map_no == 84 then
					at = 1
					helper_2348941a()
				else
					var3 = 0
					if old_map_no == 82 then
						helper_9dafbc83(-140.0, 165.0, 1865.0, vm.f32(2.28))
						event.ResetCamera(1, 0.0, 10.0)
						event.SetFadeIn(30)
						var3 = 1
					end
					if old_map_no == 75 then
						at = 2
						helper_379e93c0()
						var3 = 1
					end
					old_sub_map_no = event.GetOldSubmapNo() or old_sub_map_no
					var5 = event.GetMapType(old_sub_map_no) or var5
					if var3 == 0 and not (old_map_no == 2 and var5 == 2) then
						flag = event.GetFlag(402) or flag
						flag_2 = event.GetFlag(360) or flag_2
						if flag == 0 and flag_2 == 1 then
							at = 3
							helper_1be54()
						else
							at = 4
							helper_915f68a8()
						end
					end
				end
			else
				print("------  <START EVENT> OLD MAP ERR   ------\n")
				get_old_interior_map_no = event.GetOldInteriorMapNo() or get_old_interior_map_no
				if 0 <= get_old_interior_map_no then
				else
					at = 5
					helper_915f68a8()
				end
			end
		end
		at = 6
		helper_5bdac642(1)
		return
	end, function(received: { any })
		if at <= 6 then
			if at <= 1 then
				var3 = 0
				helper_43f02c95(-140.0, 165.0, 1865.0, vm.f32(2.28))
				var3 = 1
				helper_0855dba8()
			end
			if at <= 2 then
				var3 = 1
				at = 3
				helper_1be54()
				return vm.continue_with(function()
					at = 6
					helper_5bdac642(1)
					return
				end)
			end
			if at <= 3 then
				helper_b2a07125()
			end
			if at <= 4 then
				print("------  <START EVENT> OLD MAP ERR   ------\n")
				helper_b2a07125()
			end
			if at <= 5 then
				helper_ebc222ab(1)
			end
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_915f68a8

--- Event 201, which map data, a script or the engine runs by number.
function script.event_201()
	local flag: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local var7: s32 = 0
	local flag_4: s32 = 0
	local flag_5: s32 = 0
	flag = event.GetFlag(404) or flag
	if flag == 0 then
		helper_1a648()
	elseif helper_19ba8() ~= 0 then
		event.DngSetStageId(3)
		event.GotoMenu(3, 3)
		vm.wait(3)
		do
			local _, out2, out3, _ = event.GetMenuParam_4()
			var2 = out2 or var2
			var3 = out3 or var3
		end
		if var3 == 0 then
			helper_2348941a()
			return
		end
		if var3 == 20 then
			flag_2 = event.GetFlag(438) or flag_2
			flag_3 = event.GetFlag(444) or flag_3
			if flag_2 == 1 and flag_3 == 0 then
				event.GotoDng(3, var3, 1010)
			else
				var2 = 3
				var3 = 20
				var7 = event.GetFloorInfo(var2, var3, 7) or var7
				var7 = vm.i32(var7 + 1)
				event.SetFloorInfo(var2, var3, 7, var7)
				event.MapJump_3(-1, "d04b01", 100)
			end
		else
			flag_4 = event.GetFlag(406) or flag_4
			flag_5 = event.GetFlag(424) or flag_5
			if var3 == 2 and flag_4 == 0 or var3 == 17 and flag_5 == 0 or var3 == 19 then
				event.BgmLoadCancel()
			end
			event.GotoDng(3, var3, 1010)
		end
	end
end

--- Event 202, which map data, a script or the engine runs by number.
function script.event_202()
	local flag: s32 = 0
	if helper_185f8() ~= 0 then
		flag = event.GetFlag(404) or flag
		if flag == 0 then
			event.BgmLoadCancel()
		end
		event.MapJump_2(-1, "s27")
	end
end

--- Event 203, which map data, a script or the engine runs by number.
function script.event_203()
	if helper_1765c() ~= 0 then
		event.MapJump_2(-1, "s09")
	end
end

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	helper_8c87ba09(vm.f32(-136.7), 165.0, vm.f32(1866.8), 0.0)
	event.MapJump_2(-1, "f03")
	vm.wait(2)
end

--- The event run when the edit analysis found changes after a house door step or a Georama mode change.
function script.edit_analyze_changed()
	helper_5bdac642(0)
end

--- Event 400, which map data, a script or the engine runs by number.
script.event_400 = helper_93cb8168

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_3e566142()
	helper_1f100()
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	helper_3e566142()
	event.Initialize()
	vm.wait(1)
	event.SetCharaPos(0, 1425.7, 0.0, 1034.8)
	event.SetCharaRot(0, 0.0, -2.37, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.14, 10.0)
	event.SetFadeIn(30)
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	local var0: s32 = 0
	helper_3e566142()
	event.Initialize()
	vm.wait(1)
	event.SetCharaPos(0, -140.0, 165.0, 1800.0)
	event.SetCharaRot(0, 0.0, 0.0, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.14, 10.0)
	event.SetFadeIn(30)
	var0 = helper_6be25ed2()
	if var0 == 0 then
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.MesMake_2(
			0,
			"[(!)]ジオラマの条件を満たして、ルナ研の\n   センターラボを復活させると、物語が\n   進行します。"
		)
		show_message(0, -1, 8, 0, 0)
		event.SetMesPreset(0, 0)
	end
	helper_5bdac642(1)
end

--- Event 14020, which map data, a script or the engine runs by number.
function script.event_14020()
	helper_3e566142()
	helper_1be54()
end

return script
