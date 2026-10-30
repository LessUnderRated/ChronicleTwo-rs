--!strict
-- map/s/s17/s17_1.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_1a7fd8eb = require("@lib/event/helper_1a7fd8eb")
local helper_1e55e9a8 = require("@lib/event/helper_1e55e9a8")
local helper_22d6eddc = require("@lib/event/helper_22d6eddc")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_249b75d1 = require("@lib/event/helper_249b75d1")
local helper_250612f7 = require("@lib/event/helper_250612f7")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_39ab7f1f = require("@lib/event/helper_39ab7f1f")
local helper_39af59c5 = require("@lib/event/helper_39af59c5")
local helper_3a9fbd88 = require("@lib/event/helper_3a9fbd88")
local helper_3d6e13c5 = require("@lib/event/helper_3d6e13c5")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_42079db3 = require("@lib/event/helper_42079db3")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_47b9f5b8 = require("@lib/event/helper_47b9f5b8")
local helper_4b10efff = require("@lib/event/helper_4b10efff")
local helper_4e5d2821 = require("@lib/event/helper_4e5d2821")
local helper_5ac4b36d = require("@lib/event/helper_5ac4b36d")
local helper_6673bb50 = require("@lib/event/helper_6673bb50")
local helper_6813499c = require("@lib/event/helper_6813499c")
local helper_69d65e1a = require("@lib/event/helper_69d65e1a")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_779b62a3 = require("@lib/event/helper_779b62a3")
local helper_79d90c82 = require("@lib/event/helper_79d90c82")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_a87eb945 = require("@lib/event/helper_a87eb945")
local helper_ad04d185 = require("@lib/event/helper_ad04d185")
local helper_adcd807d = require("@lib/event/helper_adcd807d")
local helper_b1b0c1a6 = require("@lib/event/helper_b1b0c1a6")
local helper_b55f37c0 = require("@lib/event/helper_b55f37c0")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_bd088cc0 = require("@lib/event/helper_bd088cc0")
local helper_c2ca38b7 = require("@lib/event/helper_c2ca38b7")
local helper_cc4413ca = require("@lib/event/helper_cc4413ca")
local helper_cd17820b = require("@lib/event/helper_cd17820b")
local helper_ce85b54c = require("@lib/event/helper_ce85b54c")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_d793ae41 = require("@lib/event/helper_d793ae41")
local helper_d8e14c06 = require("@lib/event/helper_d8e14c06")
local helper_d96b1c01 = require("@lib/event/helper_d96b1c01")
local helper_dbb2323a = require("@lib/event/helper_dbb2323a")
local helper_dcf91359 = require("@lib/event/helper_dcf91359")
local helper_dfa8c909 = require("@lib/event/helper_dfa8c909")
local helper_dff48a5c = require("@lib/event/helper_dff48a5c")
local helper_e787350a = require("@lib/event/helper_e787350a")
local helper_e7afa9ca = require("@lib/event/helper_e7afa9ca")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local helper_f29372c9 = require("@lib/event/helper_f29372c9")
local open_message = require("@lib/event/open_message")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
local function default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(300) or flag
		flag_2 = event.GetFlag(320) or flag_2
		flag_3 = event.GetFlag(317) or flag_3
		if flag == 1 then
			if flag_2 == 1 then
				if flag_3 == 0 then
					at = 1
					helper_adcd807d()
					event.InitLocalCnt()
					event.DngPause(8192, 1)
					event.SetCharaChangeMask(0, 1)
					event.SetCharaChangeMask(2, 0)
					event.SetCharaChangeMask(1, 0)
					event.SetCharaChangeMask(3, 0)
					event.SetBitCtrl(1, 1)
				else
					at = 2
					helper_6673bb50()
					event.FuncPointShow("", "exit", 1)
					event.FuncPointShow("", "talk", 0)
					event.EohSyncObj_3(0, "p01_s17", "s17_02-a0_1")
					event.EohSetShow(0, 0)
					event.EohSyncObj_3(0, "p01_s17", "s17_02-c0_1")
					event.EohSetShow(0, 0)
					event.FuncPointShow("p01_s17", "invent_30001-0", 0)
					event.FuncPointShow("", "branch", 0)
					return
				end
			else
				helper_d96b1c01()
				at = 4
				helper_69d65e1a()
				return
			end
		else
			event.Initialize()
			event.SetCharaPos(0, 0.0, 62.57, 1305.0)
			event.SetCharaRot(0, 0.0, 3.14, 0.0)
			event.SetCameraPos(-0.16, 110.89, 1405.0)
			event.SetCameraRef(0.0, 92.57, 1305.0)
			event.ResetCamera(0)
			event.SetFadeIn(30)
			event.Finish()
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_6673bb50()
				return vm.continue_with(function()
					event.FuncPointShow("", "exit", 1)
					event.FuncPointShow("", "talk", 0)
					event.EohSyncObj_3(0, "p01_s17", "s17_02-a0_1")
					event.EohSetShow(0, 0)
					event.EohSyncObj_3(0, "p01_s17", "s17_02-c0_1")
					event.EohSetShow(0, 0)
					event.FuncPointShow("p01_s17", "invent_30001-0", 0)
					event.FuncPointShow("", "branch", 0)
					return
				end)
			end
			return 0
		end
		if at <= 4 then
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_2f708()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	local debug_flag: s32 = 0
	local var6: any = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(314, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		var0 = event.SndLoadSound_2(3809) or var0
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		if active_chr_no == 0 then
		else
		end
		event.ChangeDir("event/e300/e314/")
		event.UnlockStack(4)
		event.LoadMes(0, 4, "e314_1.txt")
		event.AssignStack(5)
		event.ClearStack(5)
		if active_chr_no == 0 then
			event.LoadMotion(5, "e314_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		block = event.LoadImg_4(5, "e314_1.json", 1) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e31401", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(2, 0)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e31402", block)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetDraw(1, 1)
		event.EohSyncSprite(3, 1)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SpriteInit(2)
		event.SpriteSetType(2, 0)
		event.SpriteSetTexture(2, "e31403", block)
		event.SpriteSetColor(2, 128, 128, 128, 0)
		event.SpriteSetUvsize(2, 0, 0, 512, 448)
		event.SpriteSetPutsize(2, 512, 448)
		event.SpriteSetPos(2, 256, 224)
		event.SpriteSetDraw(2, 1)
		event.EohSyncSprite(4, 2)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 13)
			event.LoadEquip(5, 0, 4, "info", 13)
			event.LoadEquip(5, 0, 3, "info", 13)
			event.LoadEquip(5, 0, 2, "info", 13, 14)
			event.LoadMotion(5, "event/e300/e314/e314_mints.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 13)
			event.EohSyncChara(0, 13)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadMotion(5, "event/e300/e314/e314_monica.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 13)
			event.EohSyncChara(1, 13)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(13)
		event.CharaActive(14)
		event.EohSetPos(0, 10.0, 40.79, 1150.0)
		event.EohSetRot(0, 0.0, -1.57, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetFootSoundId(0, 1)
		event.EohSetPos(1, -10.0, 40.79, 1150.0)
		event.EohSetRot(1, 0.0, 1.57, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetFootSoundId(1, 1)
		debug_flag = event.GetDebugFlag() or debug_flag
		if debug_flag ~= 0 then
			event.InitDramaScene()
		end
		event.CmrsInit()
		event.CmrsSetPos(0.0, 62.86, 1089.96)
		event.CmrsSetRef(0.0, 52.74, 1185.03)
		event.SetFadeIn(30)
		event.SetPakuAnim(1, "通常口パク")
		at = 2
		helper_4116e6bb(3140010)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMove(1, -10.0, 40.79, 1200.0, 40, 1)
		event.ObjsRotation(1, 0.0, 0.0, 0.0, 10)
		at = 3
		wait_frames(10)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, 10.0, 40.79, 1180.0, 30, 1)
		event.ObjsRotation(0, 0.0, 0.0, 0.0, 10)
		event.SetFadeOut(30)
		at = 4
		wait_frames(30)
		at = 5
		wait_objects(0)
		while true do
			event.SetFadeIn(30)
			event.SetMesWindowMode(0, 7)
			event.ObjsSetMotion(1, "歩き")
			event.ObjsSetRot(1, 0.0, 0.0, 0.0)
			event.ObjsResetDaPosition(1)
			event.ObjsSetMotion(0, "立ち", 4)
			event.CharaActive(0, 0)
			at = 6
			helper_b55f37c0(var0)
			at = 7
			vm.wait(7)
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			event.MesMake_2(0, "Yes\nNo")
			open_message(0, -1, 5, 0, 0)
			at = 8
			var6 = helper_39af59c5(0, 2, 0, 1)
			event.SetMesPos(0, 0)
			if var6 == 1 then
				at = 9
				vm.wait(9)
				break
			else
				event.SetFadeOut(30)
				at = 10
				wait_frames(30)
			end
		end
		event.SetMesWindowMode(0, 7)
		event.ObjsSetMotion(1, "がっつ", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ObjsSeDelay(1, 10)
		event.ObjsSePlay(1, var0, 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 11
		helper_4116e6bb(3140160)
		event.SetFadeOut(30)
		at = 12
		wait_frames(30)
	end, function(received: { any }): boolean
		if at == 8 then
			var6 = received[1] :: number
		end
		if at <= 1 then
			helper_8cd371d7(3140010)
		end
		if at <= 2 then
			wait_frames_skipping(10)
		end
		if at <= 3 then
			wait_frames_skipping(30)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_4b10efff(var0)
		end
		if at <= 7 then
			helper_f018b3c0(0, -1, 5, 0, 0)
			var6 = helper_d793ae41(0, 2, 0, 1)
		end
		if at <= 9 then
			wait_frames_skipping(30)
		end
		if at <= 10 then
			helper_8cd371d7(3140160)
		end
		if at <= 11 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 13
	vm.entry(13)
	event.CancelDramaScene()
	event.SetStatus(1, 0, 256, 0)
	event.DelExtMotion(0)
	event.DelExtMotion(13)
	event.DelImg(1)
	event.LoadMes(0, -1)
	event.SphidaSetPlayFlag(1)
	event.EohSetFootSoundId(0, 0)
	event.CharaActive(0)
	event.SetCharaPos(0, -25.0, 62.7, 1285.3)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.CharaActive(13)
	event.SetCharaPos(13, 68.04, 41.85, 1180.61)
	event.SetCharaRot(13, 0.0, 3.14, 0.0)
	event.SetMotion(13, "立ち", 4)
	event.CharaNormalDrive(13)
	event.CharaResetDa(13)
	event.SetCameraRef(-25.0, 92.7, 1285.3)
	event.SetCameraPos(-25.0, 102.7, 1385.3)
	event.ResetCamera(0)
	event.Finish()
end

--- Helper function.
local function helper_44068()
	event.Initialize()
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		'"Taking a Shot"\n1) Aim with the left analog stick\n2) Press (O) to begin swing\n3) Press (O) again to set power level\n4) Press (O) again to hit the Sphere'
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		'"The Impact Zone"\nShown as a red bar under power gauge.\nStrike sphere when in middle of\nImpact Zone for a strong hit.'
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(0, "Hitting while outside Impact Zone\nwill cause the sphere to go flying\nin the wrong direction.")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		'"Changing Point of Impact"\nBy holding the left analog stick in a\ncertain direction at the time of impact,\nyou can change where you hit the Sphere.<page>Doing this changes the following:'
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"Top - Topspins so spins easier.\nBtm - Backspins so stops easier.\nLft - Slices and curves to right.\nRt - Hooks and curves to left."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"If the Sphere ends up landing in\na place you can't get to,\npress (#) to move the Sphere to you."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(0, "[(!)]Spheda has been added to the Help\n   section of the Main Menu.")
	helper_75684dd8(0, -1, 8, 0, 0)
end

--- Helper function.
local function helper_2da78()
	event.Initialize()
	event.SetMesWindowMode(0, 1)
	event.MesMake_2(0, "See if there's some kind of stick\nhandy. Then I'll show you how to hit\nthe Sphere.")
	helper_bd088cc0(13, -1)
	event.Finish()
end

--- Helper function.
local function helper_31c78()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var8: f32 = 0
	local var11: f32 = 0
	local yaw: f32 = 0
	local yaw_2: f32 = 0
	local var15: any = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		var0 = 13
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 1)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSetFootSoundId(0, 1)
		event.EohSyncChara(1, var0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetFootSoundId(1, 1)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		do
			local _, out2, _ = event.GetCharaRot(0)
			var8 = out2 or var8
		end
		do
			local out1, out2, out3 = event.GetCharaPos(var0)
			var4 = out1 or var4
			var5 = out2 or var5
			var6 = out3 or var6
		end
		do
			local _, out2, _ = event.GetCharaRot(var0)
			var11 = out2 or var11
		end
		yaw = event.GetRefAngle(var1, var2, var3, var4, var5, var6) or yaw
		yaw_2 = event.GetRefAngle(var4, var5, var6, var1, var2, var3) or yaw_2
		var15 = event.AngleCmp(var8, yaw, 0.1) or var15
		if var15 ~= 0 then
			event.ObjsRotation(0, 0.0, yaw, 0.0, 10)
			event.ObjsSetMotion(0, "歩き")
			event.ObjsMotionDelay(0, 10)
		end
		event.ObjsSetMotion(0, "立ち")
		var15 = event.AngleCmp(var11, yaw_2, 0.1) or var15
		if var15 ~= 0 then
			event.ObjsRotation(1, 0.0, yaw_2, 0.0, 10)
			event.ObjsSetMotion(1, "歩き")
			event.ObjsMotionDelay(1, 10)
		end
		event.ObjsSetMotion(1, "立ち")
		at = 1
		wait_frames(20)
		event.SetPakuMotion(1, "会話", 0, "立ち", 0)
		event.MesMake_2(0, "What?\nYou're quitting?")
		at = 2
		helper_0ffc2526(0, -1, var0, 0, 0)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "Yes\nNo")
		open_message(0, -1, 5, 0, 0)
		at = 3
		var15 = helper_39af59c5(0, 2, 1, 0)
		event.SetMesPos(0, 0)
		event.SetMesShippo(0, 1)
		if var15 == 0 then
			event.SetFadeOut(30)
			at = 4
			wait_frames(30)
			return 1
		else
			event.MesMake_2(0, "Yeah.\nGood luck, Max!")
			at = 5
			helper_0ffc2526(0, -1, var0, 0, 0)
		end
		var15 = event.AngleCmp(var11, yaw_2, 0.1) or var15
		if var15 ~= 0 then
			event.ObjsRotation(1, 0.0, var11, 0.0, 10)
			event.ObjsSetMotion(1, "歩き")
			event.ObjsMotionDelay(1, 10)
		end
		event.ObjsSetMotion(1, "立ち")
		at = 6
		wait_objects(1)
		return 0
	end, function(received: { any })
		if at <= 4 then
			if at == 3 then
				var15 = received[1] :: number
			end
			if at <= 1 then
				helper_249b75d1(0, -1, var0, 0, 0)
			end
			if at <= 2 then
				helper_f018b3c0(0, -1, 5, 0, 0)
				var15 = helper_d793ae41(0, 2, 1, 0)
			end
			if at <= 3 then
				local _ = var15 ~= 0
				local _ = var15 ~= 0
				wait_frames_skipping(30)
			end
			return 1
		end
		if at <= 6 then
			if at <= 5 then
				helper_238b5abc(1)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_186f0()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 then
			event.SetMesWindowMode(0, 4)
			at = 1
			helper_75684dd8(0, 2000, 8, 0, 0)
			return 1
		end
		var1 = event.GetEquipItemno(0, 0) or var1
		if var1 ~= 9 and var1 ~= 10 and var1 ~= 11 and var1 ~= 12 and var1 ~= 13 and var1 ~= 14 then
			event.SetMesWindowMode(0, 4)
			event.MesMake_2(0, "Equip the Handy Stick.")
			at = 2
			helper_75684dd8(0, -1, 8, 0, 0)
			return 1
		end
		event.SetMesWindowMode(0, 1)
		event.SphidaSetCulbNo(var1)
		event.PadAutoRepeatOff()
		return 0
	end, function(received: { any })
		if at <= 1 then
			return 1
		end
		if at <= 2 then
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_1af2c()
	local tex_bank: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local level: s32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	local var21: s32 = 0
	local var22: f32 = 0
	local var23: f32 = 0
	local var24: f32 = 0
	local var25: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var29: s32 = 0
	local var30: f32 = 0
	local var31: f32 = 0
	local var32: f32 = 0
	local var33: f32 = 0
	local var34: f32 = 0
	local var35: f32 = 0
	local var36: f32 = 0
	local var37: f32 = 0
	local var38: f32 = 0
	local var39: f32 = 0
	local var40: f32 = 0
	local var41: s32 = 0
	local var42: s32 = 0
	local var43: s32 = 0
	local var44: s32 = 0
	local var45: s32 = 0
	local var46: s32 = 0
	local var47: f32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local var51: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local yaw: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		at = 1
		if helper_186f0() ~= 0 then
			event.Finish()
			return 0
		end
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetLoadbgFile_4(
			"dungeon/sphida/c01_golf.gltf",
			"dungeon/chara/c01b_miss.gltf",
			"dungeon/sphida/gool_end.gltf",
			"dungeon/sphida/mizu_eff.gltf"
		)
		at = 2
		vm.wait(2)
		at = 3
		helper_479dc9e9()
		event.LoadMotion(5, "dungeon/sphida/c01_golf.gltf", "info", 0)
		event.LoadMotion(5, "dungeon/chara/c01b_miss.gltf", "info", 0)
		tex_bank = event.SphidaGetTexb() or tex_bank
		event.LoadChara(5, "dungeon/sphida/gool_end.gltf", "info", 12)
		event.CharaActive(0, 12)
		var1 = event.SndLoadSound_3(5, "snd2/mon/en_900.sound.json") or var1
		event.CreateSwordEffect(5, 64, 16)
		event.SwordEffectColor(128, 128, 128, 80, 128, 128, 128, 80)
		event.EsmInitialize(5, 1)
		event.EsmLoadBasePack("足水パシャ", "dungeon/sphida/mizu_eff.gltf")
		event.EsmInitFix(5)
		event.EohSyncChara(0, 1)
		event.EohSetShow(0, 1)
		event.EohSyncChara(0, 2)
		event.EohSetShow(0, 0)
		event.CharaActive(0, 13)
		event.CharaActive(0, 14)
		event.SetCrossfade(15)
		event.SphidaResetPowgage()
		do
			local out1, out2, out3 = event.SphidaGetBallPos()
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		var2, var3, var4, var6 = helper_cc4413ca(var2, var3, var4, var6)
		helper_1a7fd8eb(var6)
		event.SphidaSetStatusFlag(1)
		var11 = 12.5
		event.SphidaCalcCarry(vm.f32(var11 * vm.f32(3.1415927)) / 180.0)
		var12, var13, level = helper_39ab7f1f(var12, var13, level)
		event.SphidaSetPowgageSafeLevel(level)
		do
			local out1, out2, out3 = event.ZeroVector()
			var15 = out1 or var15
			var16 = out2 or var16
			var17 = out3 or var17
		end
		while true do
			event.SphidaSetMinimapFlag(0)
			event.SphidaSetMmLineFlag(0)
			at = 4
			local t0: s32
			t0, var6, var11 = helper_47b9f5b8(var6, var11, tex_bank)
			if t0 ~= 0 then
				event.SphidaSetMinimapFlag(0)
				event.SphidaSetMmLineFlag(0)
				event.SphidaSetBallPos(pos_x, pos_y, pos_z)
				event.SetCharaPos(8, pos_x, pos_y, pos_z)
				event.SetCharaPos(9, pos_x, pos_y, pos_z)
				at = 5
				return helper_dbb2323a(0)
			end
			event.SphidaSetMinimapFlag(0)
			event.SphidaSetMmLineFlag(0)
			at = 6
			local t1: s32
			t1, var12, var6, var16, var15, level = helper_b1b0c1a6(var12, tex_bank, var6, var16, var15, var1, level)
			if t1 == 0 then
				break
			else
				at = 7
				vm.wait(7)
			end
		end
		do
			local out1, out2, out3 = event.CopyVector(var2, var3, var4)
			var18 = out1 or var18
			var19 = out2 or var19
			var20 = out3 or var20
		end
		var21 = 0
		if level ~= 1 and level ~= -1 and level ~= 4 then
			event.SpriteSetType(0, 1)
			event.SpriteSetDraw(0, 1)
			event.SpriteSetPutsize(0, 10.8, 11.6)
			event.SpriteSetPos(0, var2, var3 + 30.0, var4)
			event.SpriteSetColor(0, 128, 128, 128, 0)
			if level == 0 then
				event.SpriteSetUvsize(0, 78, 198, 54, 58)
			end
			if level == 2 or level == -2 then
				event.SpriteSetUvsize(0, 186, 190, 70, 66)
			end
			if level == 3 or level == -3 then
				event.SpriteSetUvsize(0, 132, 198, 54, 58)
			end
			event.EohSyncSprite(18, 0)
			event.ObjsInit(18)
			event.ObjsSyncObj(18, 18)
			event.ObjsSetColor(18, 128, 128, 128, 128, 4)
			event.ObjsColorDelay(18, 20)
			event.ObjsSetColor(18, 128, 128, 128, 0, 6)
			at = 8
			wait_frames(10)
		end
		if var12 <= vm.f32(0.3) then
			event.SetMotion(0, "小ショット", 2)
			at = 9
			wait_frames(25)
			if level ~= 4 then
				event.SndSePlay(var1, 3)
			end
		elseif var12 <= vm.f32(0.6) then
			event.SetMotion(0, "中ショット", 2)
			at = 10
			wait_frames(34)
			event.SndSePlay(var1, 2)
		else
			event.SetMotion(0, "大ショット", 2)
			at = 11
			wait_frames(39)
			if level == 0 then
				event.SndSePlay(var1, 12)
			else
				event.SndSePlay(var1, 1)
			end
		end
		if level == 4 then
			at = 12
			wait_frames(50)
			helper_c2ca38b7(var1)
			event.SphidaSetBallPos(pos_x, pos_y, pos_z)
			event.SetCharaPos(8, pos_x, pos_y, pos_z)
			event.SetCharaPos(9, pos_x, pos_y, pos_z)
			at = 13
			return helper_dbb2323a(0)
		end
		if level == 0 then
			event.SpriteSetType(1, 0)
			event.SpriteSetDraw(1, 1)
			event.SpriteSetPos(1, 256, 278)
			event.SpriteSetUvsize(1, 246, 104, 266, 42)
			event.SpriteSetPutsize(1, 266, 42)
			event.SpriteSetColor(1, 128, 128, 128, 0)
			event.SpriteSetScale(1, 10, 10, 10)
			event.EohSyncSprite(19, 1)
			event.ObjsInit(19)
			event.ObjsSyncObj(19, 19)
			event.ObjsJump(19, 256, 138, 0, 3.6, 20)
			event.ObjsSetScale(19, 1, 1, 1, 18)
			event.ObjsSetColor(19, 128, 128, 128, 128, 12)
			event.ObjsColorDelay(19, 30)
			event.ObjsSetColor(19, 128, 128, 128, 0, 6)
		end
		var12 = helper_dff48a5c(var12)
		var11 = vm.f32(vm.f32(var11 * vm.f32(3.1415927)) / 180.0)
		var12 = vm.f32(var12 - vm.f32(var12 * var11))
		var22 = vm.f32(vm.sin(var6) * vm.f32(var12 * vm.cos(var11)))
		var23 = vm.f32(var12 * vm.sin(var11))
		var24 = vm.f32(vm.cos(var6) * vm.f32(var12 * vm.cos(var11)))
		var16 = vm.f32(vm.f32(var16 * vm.f32(3.1415927)) / 2.0)
		var17 = vm.f32(vm.f32(vm.f32(-var24 * var13) * var15) * vm.f32(0.4))
		var15 = vm.f32(vm.f32(vm.f32(-var22 * var13) * var15) * vm.f32(0.4))
		do
			local out1, out2, out3 = event.SphidaGetPinPos()
			pos_x_2 = out1 or pos_x_2
			pos_y_2 = out2 or pos_y_2
			pos_z_2 = out3 or pos_z_2
		end
		var29 = 0
		level = 0
		var42 = 0
		var46 = 0
		while true do
			if var3 >= 180.0 then
				var22 = vm.f32(var22 * vm.f32(0.999))
				var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0098) * (var46 + 1)))
				var24 = vm.f32(var24 * vm.f32(0.999))
			else
				var41 = event.ChkIntersectionPoint_9(
					12,
					var2,
					var3,
					var4,
					var2,
					vm.f32(var3 - 3.0) - vm.f32(0.01),
					var4,
					0
				) or var41
				if level == 1 and var41 >= 0 then
					var22 = vm.f32(var22 * vm.f32(0.94))
					var23 = vm.f32(var23 + vm.f32(vm.f32(-0.00045) * (var46 + 1)))
					var24 = vm.f32(var24 * vm.f32(0.94))
					var22 = vm.f32(var22 + var15)
					var24 = vm.f32(var24 + var17)
					var15 = vm.f32(var15 * vm.f32(0.8))
					var17 = vm.f32(var17 * vm.f32(0.8))
				else
					var22 = vm.f32(var22 * vm.f32(0.999))
					var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0045) * (var46 + 1)))
					var24 = vm.f32(var24 * vm.f32(0.999))
				end
			end
			do
				local out1, out2, out3 = event.AddVector(var2, var3, var4, var22, var23, var24)
				var2 = out1 or var2
				var3 = out2 or var3
				var4 = out3 or var4
			end
			if var16 ~= 0.0 then
				var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
				var11 = vm.f32(var11 + var16)
				var11 = event.AngleLimit(var11) or var11
				var22 = vm.f32(var22 + vm.f32(vm.f32(vm.sin(var11) / 10.0) * var13))
				var24 = vm.f32(var24 + vm.f32(vm.f32(vm.cos(var11) / 10.0) * var13))
			end
			var40 = event.DistVector(var15, 0.0, var17) or var40
			if var40 > vm.f32(0.01) then
				var25 = event.DistVector(var15, 0.0, var17) or var25
				var11 = event.GetRefAngle(var18, var19, var20, var18 + var15, var19, var20 + var17) or var11
				do
					local out1, out2, out3 = event.GetCharaRot(8)
					var5 = out1 or var5
					var6 = out2 or var6
					var7 = out3 or var7
				end
				event.SetCharaRot(8, var5, var11, var7)
				event.AddCharaRot(8, var25 * 12.0, 0.0, 0.0)
				event.SetCharaRot(9, var5, var11, var7)
				event.AddCharaRot(9, var25 * 12.0, 0.0, 0.0)
			else
				var25 = event.DistVector(var22, 0.0, var24) or var25
				var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
				do
					local out1, out2, out3 = event.GetCharaRot(8)
					var5 = out1 or var5
					var6 = out2 or var6
					var7 = out3 or var7
				end
				event.SetCharaRot(8, var5, var11, var7)
				event.AddCharaRot(8, var25 / 10.0, 0.0, 0.0)
				event.SetCharaRot(9, var5, var11, var7)
				event.AddCharaRot(9, var25 / 10.0, 0.0, 0.0)
			end
			var25 = event.DistVector(var22, var23, var24) or var25
			var39 = var25
			var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
			var36 = vm.f32(vm.sin(vm.f32(var11 - vm.f32(1.5707964))) * 3.0)
			var38 = vm.f32(vm.cos(vm.f32(var11 - vm.f32(1.5707964))) * 3.0)
			event.SwordEffectAddPoint(
				var2 - var36,
				var3,
				var4 - var38,
				vm.f32(var2 + var36) + var36,
				var3,
				vm.f32(var4 + var38) + var38
			)
			do
				local out1, out2, out3 = event.CopyVector(var22, var23, var24)
				var36 = out1 or var36
				var37 = out2 or var37
				var38 = out3 or var38
			end
			do
				local out1, out2, out3 = event.NormalVector(var36, var37, var38)
				var36 = out1 or var36
				var37 = out2 or var37
				var38 = out3 or var38
			end
			do
				local out1, out2, out3 = event.ScaleVector(var36, var37, var38, 3.0)
				var36 = out1 or var36
				var37 = out2 or var37
				var38 = out3 or var38
			end
			do
				local out1, out2, out3, out4, out5 =
					event.ChkIntersectionPoint_13(0, var18, var19, var20, var2 + var36, var3 + var37, var4 + var38, 0)
				var30 = out1 or var30
				var31 = out2 or var31
				var32 = out3 or var32
				var41 = out4 or var41
				var43 = out5 or var43
			end
			if var41 >= 0 and (var43 == 1 or var43 == 7) then
				event.EsmCreate("足水パシャ")
				event.EsmSetVect1(var30, var31, var32)
				if var42 <= 0 then
					event.SndSePlay(var1, 11)
					var42 = 20
				end
			end
			do
				local out1, out2, out3, out4, out5, out6, out7 =
					event.ChkIntersectionPoint_15(12, var18, var19, var20, var2 + var36, var3 + var37, var4 + var38, 1)
				var30 = out1 or var30
				var31 = out2 or var31
				var32 = out3 or var32
				var33 = out4 or var33
				var34 = out5 or var34
				var35 = out6 or var35
				var41 = out7 or var41
			end
			if var41 < 0 then
				if var3 >= 400.0 and var23 > 0.0 then
					do
						local out1, out2, out3 = event.CopyVector(var2, var3, var4)
						var30 = out1 or var30
						var31 = out2 or var31
						var32 = out3 or var32
					end
					do
						local out1, out2, out3 = event.CopyVector(var22, -var23, var24)
						var33 = out1 or var33
						var34 = out2 or var34
						var35 = out3 or var35
					end
					do
						local out1, out2, out3 = event.NormalVector(var33, var34, var35)
						var33 = out1 or var33
						var34 = out2 or var34
						var35 = out3 or var35
					end
					var41 = 1
				end
			end
			while var41 >= 0 do
				var16 = 0.0
				if var25 > 8.0 then
					helper_79d90c82()
				end
				if var42 <= 0 then
					event.SndSePlay(var1, 6)
					var42 = 10
				end
				do
					local out1, out2, out3 = event.CopyVector(-var22, -var23, -var24)
					var22 = out1 or var22
					var23 = out2 or var23
					var24 = out3 or var24
				end
				do
					local out1, out2, out3 = event.NormalVector(var22, var23, var24)
					var22 = out1 or var22
					var23 = out2 or var23
					var24 = out3 or var24
				end
				do
					local out1, out2, out3 = event.ScaleVector(var22, var23, var24, 3.0)
					var22 = out1 or var22
					var23 = out2 or var23
					var24 = out3 or var24
				end
				do
					local out1, out2, out3 = event.AddVector(var30, var31, var32, var22, var23, var24)
					var30 = out1 or var30
					var31 = out2 or var31
					var32 = out3 or var32
				end
				do
					local out1, out2, out3 = event.SubVector(var18, var19, var20, var30, var31, var32)
					var18 = out1 or var18
					var19 = out2 or var19
					var20 = out3 or var20
				end
				var40 = event.DistVector(var18, var19, var20) or var40
				var40 = vm.f32(var39 - var40)
				if var40 <= 0.0 then
					break
				else
					var39 = var40
					do
						local out1, out2, out3 = event.CopyVector(-var22, -var23, -var24)
						var22 = out1 or var22
						var23 = out2 or var23
						var24 = out3 or var24
					end
					if var23 < 0.0 and var34 > 0.0 then
						var22 = vm.f32(var15 * 2.0)
						var23 = 0.0
						var24 = vm.f32(var17 * 2.0)
						var15 = vm.f32(var15 * vm.f32(0.2))
						var17 = vm.f32(var17 * vm.f32(0.2))
					else
						if
							var22 < 0.0 and var33 > 0.0
							or var22 > 0.0 and var33 < 0.0
							or var24 < 0.0 and var35 > 0.0
							or var24 > 0.0 and var35 < 0.0
						then
							var15 = 0.0
							var17 = 0.0
						end
						var22 = 0.0
						var23 = 0.0
						var24 = 0.0
					end
					var22 = vm.f32(vm.f32(vm.f32(var33 * var25) * vm.f32(0.9)) + var22)
					var23 = vm.f32(vm.f32(vm.f32(var34 * var25) * vm.f32(0.58)) + var23)
					var24 = vm.f32(vm.f32(vm.f32(var35 * var25) * vm.f32(0.9)) + var24)
					do
						local out1, out2, out3 = event.CopyVector(var30, var31, var32)
						var18 = out1 or var18
						var19 = out2 or var19
						var20 = out3 or var20
					end
					do
						local out1, out2, out3 = event.CopyVector(var22, var23, var24)
						var36 = out1 or var36
						var37 = out2 or var37
						var38 = out3 or var38
					end
					do
						local out1, out2, out3 = event.NormalVector(var36, var37, var38)
						var36 = out1 or var36
						var37 = out2 or var37
						var38 = out3 or var38
					end
					do
						local out1, out2, out3 = event.ScaleVector(var36, var37, var38, 3.0)
						var36 = out1 or var36
						var37 = out2 or var37
						var38 = out3 or var38
					end
					do
						local out1, out2, out3 = event.ScaleVector(var33, var34, var35, var40)
						var33 = out1 or var33
						var34 = out2 or var34
						var35 = out3 or var35
					end
					do
						local out1, out2, out3 = event.CopyVector(var30, var31, var32)
						var2 = out1 or var2
						var3 = out2 or var3
						var4 = out3 or var4
					end
					do
						local out1, out2, out3 = event.AddVector(var2, var3, var4, var33, var34, var35)
						var2 = out1 or var2
						var3 = out2 or var3
						var4 = out3 or var4
					end
					do
						local out1, out2, out3, out4, out5, out6, out7 = event.ChkIntersectionPoint_15(
							12,
							var18,
							var19,
							var20,
							var2 + var36,
							var3 + var37,
							var4 + var38,
							1
						)
						var30 = out1 or var30
						var31 = out2 or var31
						var32 = out3 or var32
						var33 = out4 or var33
						var34 = out5 or var34
						var35 = out6 or var35
						var41 = out7 or var41
					end
				end
			end
			do
				local out1, out2, out3, out4, out5, out6, out7, out8 =
					event.ChkIntersectionPoint_16(12, var2, var3, var4, var2, var3 - 3.0, var4, 1)
				var30 = out1 or var30
				var31 = out2 or var31
				var32 = out3 or var32
				var33 = out4 or var33
				var34 = out5 or var34
				var35 = out6 or var35
				var41 = out7 or var41
				var43 = out8 or var43
			end
			if var41 >= 0 then
				var16 = 0.0
				var3 = vm.f32(var31 + 3.0)
				var40 = event.DistVector(var22, 0.0, var24) or var40
				if var40 < vm.f32(2.4) or var23 >= -1.0 and var23 <= 0.0 then
					var23 = 0.0
					level = 1
				else
					var22 = vm.f32(var22 * vm.f32(0.9))
					var23 = -vm.f32(var23 * vm.f32(0.58))
					var24 = vm.f32(var24 * vm.f32(0.9))
					var22 = vm.f32(var22 + vm.f32(var15 * 2.0))
					var24 = vm.f32(var24 + vm.f32(var17 * 2.0))
					var15 = vm.f32(var15 * vm.f32(0.2))
					var17 = vm.f32(var17 * vm.f32(0.2))
					if var25 > 8.0 then
						helper_79d90c82()
					end
					if var42 <= 0 then
						event.SndSePlay(var1, 5)
						var42 = 10
					end
				end
				var40 = event.DistVector(var15, 0.0, var17) or var40
				if var23 == 0.0 and var25 < vm.f32(1.6) and var40 < vm.f32(0.4) then
					if not (var43 == 6) then
						break
					end
					var29 = 1
					break
				end
			end
			if var3 < -500.0 then
				var29 = 1
				break
			elseif var46 >= 300 then
				var29 = 1
				break
			else
				var44 = event.SphidaGetPinCol() or var44
				var45 = event.SphidaGetBallCol() or var45
				x = vm.f32(pos_x_2 - var2)
				y = vm.f32(pos_y_2 - var3)
				z = vm.f32(pos_z_2 - var4)
				var47 = event.DistVector(x, y, z) or var47
				if var45 ~= var44 then
					var51 = event.LinePointDist(var18, var19, var20, var2, var3, var4, pos_x_2, pos_y_2, pos_z_2)
						or var51
					if var51 >= 0.0 and var51 <= 30.0 then
						var21 = 1
						break
					end
					if var47 ~= 0.0 then
						if var47 <= 120.0 then
							do
								local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(vm.f32(0.6), var47))
								x = out1 or x
								y = out2 or y
								z = out3 or z
							end
							do
								local out1, out2, out3 = event.AddVector(var2, var3, var4, x, y, z)
								var2 = out1 or var2
								var3 = out2 or var3
								var4 = out3 or var4
							end
							do
								local out1, out2, out3 = event.AddVector(var22, var23, var24, x, y, z)
								var22 = out1 or var22
								var23 = out2 or var23
								var24 = out3 or var24
							end
						end
					else
						var21 = 1
						break
					end
				elseif var47 ~= 0.0 then
					if var47 <= 60.0 then
						do
							local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(1.0, var47))
							x = out1 or x
							y = out2 or y
							z = out3 or z
						end
						do
							local out1, out2, out3 = event.SubVector(var2, var3, var4, x, y, z)
							var2 = out1 or var2
							var3 = out2 or var3
							var4 = out3 or var4
						end
						do
							local out1, out2, out3 = event.SubVector(var22, var23, var24, x, y, z)
							var22 = out1 or var22
							var23 = out2 or var23
							var24 = out3 or var24
						end
					end
				end
				event.SetCharaPos(8, var2, var3, var4)
				event.SetCharaPos(9, var2, var3, var4)
				do
					local out1, out2, out3 = event.CopyVector(var2, var3, var4)
					var18 = out1 or var18
					var19 = out2 or var19
					var20 = out3 or var20
				end
				if var3 <= -70.0 then
					event.SetFcameraFollowFlag(0)
					if var29 >= 30 then
						if var29 >= 50 then
							break
						end
					else
						event.SetCameraRef(var2, var3, var4)
					end
					var29 = var29 + 1
				elseif var46 >= 20 then
					event.CtrlcMoveRange(20.0, 30.0, 60.0, 200.0)
					event.SetCameraSpeed(8.0)
					event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
					event.SetFcameraFollow(
						vm.f32(var2 + var22) + var22,
						vm.f32(var3 + var23) + var23,
						vm.f32(var4 + var24) + var24
					)
					do
						local out1, out2, out3 = event.GetCameraPos()
						pos_x_3 = out1 or pos_x_3
						pos_y_3 = out2 or pos_y_3
						pos_z_3 = out3 or pos_z_3
					end
					yaw = event.GetRefAngle(
						vm.f32(var2 + var22) + var22,
						vm.f32(var3 + var23) + var23,
						vm.f32(var4 + var24) + var24,
						pos_x_3,
						pos_y_3,
						pos_z_3
					) or yaw
					event.CtrlcSetRotate(yaw)
					event.CtrlcMoveCamera(8)
					event.CtrlcStep()
				end
				event.SphidaSetBallPos(var2, var3, var4)
				at = 14
				vm.wait(14)
				if var42 > 0 then
					var42 = var42 - 1
				end
				if var12 > 0.0 then
					var12 = vm.f32(var12 - 1.0)
				end
				var46 = var46 + 1
			end
		end
		event.SetCharaPos(8, var2, var3, var4)
		event.SetCharaPos(9, var2, var3, var4)
		at = 15
		vm.wait(15)
		event.SphidaSetStatusFlag(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var29 == 0 then
			event.SphidaSetBallPos(var2, var3, var4)
			if var21 == 1 then
				event.CharaActive(0, 0)
				event.CharaActive(0, 8)
				event.CharaActive(0, 9)
				event.CharaActive(1, 12)
				event.SetCharaPos(12, pos_x_2, pos_y_2, pos_z_2)
				event.SetMotion(12, "発動", 6)
				event.SndSePlay(var1, 17)
				var46 = 0
				while var46 < 2 do
					event.SetCameraCtrl(0)
					event.SetFcameraFollowFlag(1)
					event.SetFcameraFollowA(pos_x_2, pos_y_2, pos_z_2)
					event.SetCameraSpeed(12.0)
					event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
					event.SetFcameraHeight(0.0)
					event.SetFcameraDist(100.0)
					event.FcameraStep(1)
					var46 = var46 + 1
					at = 16
					vm.wait(16)
				end
				event.CharaActive(0, 10)
				do
					local out1, out2, out3 = event.SphidaGetPinPos()
					pos_x_2 = out1 or pos_x_2
					pos_y_2 = out2 or pos_y_2
					pos_z_2 = out3 or pos_z_2
				end
				var46 = 0
				while var46 < 100 do
					event.SetCameraCtrl(0)
					event.SetFcameraFollowFlag(1)
					event.SetFcameraFollowA(pos_x_2, pos_y_2, pos_z_2)
					event.SetCameraSpeed(12.0)
					event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
					event.SetFcameraHeight(0.0)
					event.SetFcameraDist(100.0)
					event.FcameraStep(1)
					var46 = var46 + 1
					at = 17
					vm.wait(17)
				end
				event.CharaActive(0, 11)
				var44 = event.DngGetStageId() or var44
				var45 = event.DngGetFloorId() or var45
				var41 = event.GetFloorInfo(var44, var45, 4) or var41
				do
					local out1, out2 = event.SphidaGetPrize(var41)
					var42 = out1 or var42
					var43 = out2 or var43
				end
				var41 = vm.i32(var41 + 1)
				event.SetFloorInfo(var44, var45, 4, var41)
				at = 18
				wait_frames(54)
				at = 19
				wait_frames(30)
				event.DeleteChara(8)
				event.DeleteChara(9)
				event.DeleteChara(10)
				event.DeleteChara(11)
				event.SphidaSetPlayFlag(0)
				event.SetFadeOut(30)
				at = 20
				wait_frames(30)
				event.PlayBgm(0)
				event.CmrsReleaseObj()
				event.SpriteSetDraw(0, 0)
			end
		else
			event.SndSePlay(var1, 18)
			event.SetFcameraFollowFlag(0)
			event.SetCameraCtrl(0)
			event.CmrsInit()
			event.CmrsSyncObj(0, 0.0, 15.0, 0.0, 0.0, 0.0, 80.0, "", 1)
			event.ObjsSetMotion(0, "だめだめ", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "立ち", 4)
			event.ObjsResetDaPosition(0)
			event.SpriteInit(0)
			event.SpriteSetType(0, 0)
			event.SpriteSetTexture(0, "sphida_bar", tex_bank)
			event.SpriteSetUvsize(0, 334, 54, 178, 34)
			event.SpriteSetPos(0, 256, -25)
			event.SpriteSetPutsize(0, 160, 50)
			event.SpriteSetColor(0, 128, 128, 128, 128)
			event.SpriteSetDraw(0, 1)
			event.EohSyncSprite(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.ObjsJump(1, 256.0, 208.0, 0.0, 1.2, 16)
			event.ObjsJump(1, 256.0, 208.0, 0.0, 2.0, 12)
			event.ObjsJump(1, 256.0, 208.0, 0.0, 1.5, 8)
			at = 21
			wait_objects(0)
			at = 22
			wait_frames(20)
			event.SpriteSetDraw(0, 0)
			event.SphidaSetBallPos(pos_x, pos_y, pos_z)
			event.SetCharaPos(8, pos_x, pos_y, pos_z)
			event.SetCharaPos(9, pos_x, pos_y, pos_z)
			event.CmrsReleaseObj()
		end
		if var21 == 1 then
			helper_c2ca38b7(-1)
		else
			helper_c2ca38b7(var1)
		end
		at = 23
		return helper_dbb2323a(var21)
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				local _ = received[1] :: number
				local _ = received[1] :: number
			end
			return 0
		end
		if at <= 5 then
			if at == 4 then
				local _ = received[1] :: number
				var6 = received[2] :: number
				var11 = received[3] :: number
			end
			if at <= 2 then
				helper_344d6cd8()
			end
			if at <= 3 then
				var2, var3, var4, var6 = helper_250612f7(var2, var3, var4, var6)
				helper_6813499c(var6)
				var11 = 12.5
				var12, var13, level = helper_22d6eddc(var12, var13, level)
				do
					local _: any
					_, var6, var11 = helper_f29372c9(var6, var11, tex_bank)
				end
			end
			return helper_dfa8c909(0)
		end
		if at <= 13 then
			if at == 6 then
				local _ = received[1] :: number
				var12 = received[2] :: number
				var6 = received[3] :: number
				var16 = received[4] :: number
				var15 = received[5] :: number
				level = received[6] :: number
			end
			if at <= 7 then
				var21 = 0
				wait_frames_skipping(10)
			end
			if at <= 8 then
				wait_frames_skipping(25)
			end
			if at <= 9 then
				wait_frames_skipping(34)
			end
			if at <= 10 then
				wait_frames_skipping(39)
			end
			if at <= 11 then
				wait_frames_skipping(50)
			end
			if at <= 12 then
				helper_1e55e9a8(var1)
			end
			return helper_dfa8c909(0)
		end
		if at <= 23 then
			if at <= 14 then
				local _ = var42 > 0
				var42 = var42 - 1
				local _ = var12 > 0.0
				var12 = vm.f32(var12 - 1.0)
				local _ = var46 >= 300
				local _ = var46 >= 20
				var46 = var46 + 1
			end
			if at <= 15 then
				var46 = 0
				local _ = var46 < 2
				var46 = var46 + 1
			end
			if at <= 16 then
				var46 = 0
				local _ = var46 < 100
				var46 = var46 + 1
			end
			if at <= 17 then
				local _ = var41 >= 0
				local _ = var41 >= 0
				var41 = var41 + 1
				wait_frames_skipping(54)
			end
			if at <= 18 then
				wait_frames_skipping(30)
			end
			if at <= 19 then
				wait_frames_skipping(30)
			end
			if at <= 20 then
				helper_238b5abc(0)
			end
			if at <= 21 then
				wait_frames_skipping(20)
			end
			if at <= 22 then
				helper_1e55e9a8(-1)
				helper_1e55e9a8(var1)
			end
			return helper_dfa8c909(var21)
		end
		return nil
	end)
end

--- Helper function.
local function helper_32acc()
	local var0: s32 = 0
	local var1: any = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		var0 = event.SndLoadSound_2(3809) or var0
		event.CharaActive(0, 0)
		event.LoadMotion(5, "dungeon/chara/c02a_miss.gltf", "info", 13)
		event.LoadMotion(5, "event/e300/e315/e315_monica.gltf", "info", 13)
		event.EohSyncChara(1, 13)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.CmrsInit()
		event.CmrsSetPos(67.57, 63.38, 1149.74)
		event.CmrsSetRef(67.85, 63.66, 1179.99)
		event.SetFadeIn(30)
		at = 1
		wait_frames(30)
		event.SndSePlay(var0, 5)
		event.ObjsSetMotion(1, "だめだめ", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		event.StreamOpen3(1, 3140170)
		at = 2
		helper_9cbdc640(1)
		event.MesMake_2(0, "Aw, that's too bad.\nWanna try again?")
		open_message(0, -1, 8, 0, 0)
		event.StreamPlay(1)
		at = 3
		helper_5ac4b36d(0)
		close_message(0)
		event.StreamClose(1)
		event.SetMesPos(0, 0)
		event.ResetPakuAnim()
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "Yes\nNo")
		open_message(0, -1, 5, 0, 0)
		at = 4
		var1 = helper_39af59c5(0, 2, 0, 1)
		event.SetMesPos(0, 0)
		event.SetMesWindowMode(0, 7)
		event.SetMesShippo(0, 1)
		if var1 == 0 then
			event.DelExtMotion(13)
			event.CharaActive(1, 0)
			return 1
		else
			event.ObjsSetMotion(1, "貸しなさい", 2)
			event.ObjsNextMotion(1, "貸しなさいＬ", 4)
			event.SetPakuAnim(1, "通常口パク")
			event.StreamOpen3(1, 3150010)
			at = 5
			helper_9cbdc640(1)
			event.MesMake_2(0, "You stink, Max.\nLet me do it.")
			open_message(0, -1, 8, 0, 0)
			event.StreamPlay(1)
			at = 6
			helper_5ac4b36d(0)
			close_message(0)
			event.StreamClose(1)
			event.SetMesPos(0, 0)
			event.ResetPakuAnim()
			at = 7
			wait_objects(1)
			event.SetFadeOut(30)
			at = 8
			wait_frames(30)
			event.CharaActive(1, 0)
			event.DelExtMotion(13)
			return 0
		end
	end, function(received: { any })
		if at <= 4 then
			if at == 4 then
				var1 = received[1] :: number
			end
			if at <= 1 then
				helper_238b5abc(1)
			end
			if at <= 2 then
				helper_f018b3c0(0, -1, 8, 0, 0)
				helper_42079db3(0)
			end
			if at <= 3 then
				helper_d16eef1e(0)
				helper_f018b3c0(0, -1, 5, 0, 0)
				var1 = helper_d793ae41(0, 2, 0, 1)
			end
			return 1
		end
		if at <= 8 then
			if at <= 5 then
				helper_f018b3c0(0, -1, 8, 0, 0)
				helper_42079db3(0)
			end
			if at <= 6 then
				helper_d16eef1e(0)
				helper_238b5abc(1)
			end
			if at <= 7 then
				wait_frames_skipping(30)
			end
			return 0
		end
		return nil
	end)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

script.default_event = default_event

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_2f708

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local flag: s32 = 0
	local argc: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(314) or flag
		if flag == 0 then
			argc = event.GetItemHaveNum(9) or argc
			if argc >= 1 then
				event.SetMotion(0, "立ち")
				event.SetFadeOut(30)
				at = 1
				wait_frames(30)
				at = 2
				helper_2f708()
				event.SetFadeIn(30)
				at = 3
				wait_frames(30)
				at = 4
				helper_44068()
			else
				at = 5
				helper_2da78()
			end
		elseif (function()
			at = 6
			return helper_31c78()
		end)() ~= 0 then
			at = 7
			helper_779b62a3()
			event.AddItem(10)
			event.AddItem(363)
			at = 8
			helper_dcf91359(10)
			at = 9
			helper_69d65e1a()
			return
		end
		at = 10
		vm.wait(10)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 9 then
			if at == 6 then
				local _ = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_2f708()
				return vm.continue_with(function()
					event.SetFadeIn(30)
					at = 3
					wait_frames(30)
					at = 4
					helper_44068()
					at = 10
					vm.wait(10)
					event.Finish()
					return
				end)
			end
			if at <= 2 then
				wait_frames_skipping(30)
			end
			if at <= 3 then
				helper_d8e14c06()
			end
			if at <= 4 then
				helper_ad04d185()
			end
			if at <= 5 then
				local _ = helper_3d6e13c5()
			end
			if at <= 6 then
				at = 7
				helper_779b62a3()
				return vm.continue_with(function()
					event.AddItem(10)
					event.AddItem(363)
					at = 8
					helper_dcf91359(10)
					at = 9
					helper_69d65e1a()
					return
				end)
			end
			if at <= 7 then
				at = 8
				helper_dcf91359(10)
				return vm.continue_with(function()
					at = 9
					helper_69d65e1a()
					return
				end)
			end
			if at <= 8 then
				helper_cd17820b()
			end
			return 0
		end
		if at <= 10 then
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	event.Initialize()
	vm.wait(1)
	event.SetMotion(0, "立ち")
	event.FuncPointShow("", "branch", 0)
	event.AddItem(9)
	helper_e787350a(9, 1)
	event.CharaActive(0, 15)
	helper_a87eb945(1)
	event.Finish()
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	local active_chr_no: s32 = 0
	local var1: any = 0
	event.Initialize()
	vm.wait(1)
	event.ActchrSetDefMotion(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		if active_chr_no == 2 then
			helper_75684dd8(0, 20, 5, 256, 208)
		else
			helper_75684dd8(0, 21, 5, 256, 208)
		end
		event.Finish()
		return
	end
	event.SetMesQuestionGyou(0, 0)
	event.SetMesWindowMode(0, 5)
	event.SetMesDrawspeed(0, 1)
	var1 = helper_bac0e30d(0, 10, 8, 256, 208, 2, 1)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	if var1 == 0 then
		event.SetFadeOut(30)
		wait_frames(30)
		helper_69d65e1a()
		return
	end
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- The Sphida event run when the player stands at the ball and presses the action button.
function script.sphida_shot()
	local var0: s32 = 0
	local argc: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		var0 = helper_1af2c()
		if var0 == 1 then
			at = 2
			helper_4e5d2821()
			event.AddItem(11)
			event.AddItem(363)
			at = 3
			helper_dcf91359(11)
			at = 4
			helper_69d65e1a()
			return
		end
		if var0 == 2 then
			argc = event.GetLocalCnt(0) or argc
			argc = vm.i32(argc + 1)
			event.SetLocalCnt(0, argc)
			if argc >= 10 then
				at = 5
				helper_3a9fbd88()
				event.AddItem(10)
				event.AddItem(363)
				at = 6
				helper_dcf91359(10)
				at = 7
				helper_69d65e1a()
				return
			elseif (function()
				at = 8
				return helper_32acc()
			end)() == 0 then
				at = 9
				helper_e7afa9ca()
				event.AddItem(10)
				event.AddItem(363)
				at = 10
				helper_dcf91359(10)
				at = 11
				helper_69d65e1a()
				return
			else
				event.CharaActive(0)
				event.SetCharaPos(0, -25.0, 62.7, 1285.3)
				event.SetCharaRot(0, 0.0, 3.14, 0.0)
				event.SetMotion(0, "立ち", 4)
				event.CharaNormalDrive(0)
				event.CharaResetDa(0)
				event.SphidaSetPlayFlag(1)
				event.SphidaSetParCount(3)
				event.SphidaSetBallPos(0.0, 65.57, 1305.04)
				event.SphidaSetBallCol(0)
				event.SphidaSetLastChallenge(0)
				event.SetCharaPos(8, 0.0, 65.57, 1305.04)
				event.CharaActive(0, 8)
				event.SetCharaPos(9, 0.0, 65.57, 1305.04)
				event.CharaActive(1, 9)
				event.SetCameraRef(-25.0, 92.7, 1285.3)
				event.SetCameraPos(-25.0, 102.7, 1385.3)
				event.ResetCamera(0)
				event.Finish()
			end
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_4e5d2821()
				return vm.continue_with(function()
					event.AddItem(11)
					event.AddItem(363)
					at = 3
					helper_dcf91359(11)
					at = 4
					helper_69d65e1a()
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_dcf91359(11)
				return vm.continue_with(function()
					at = 4
					helper_69d65e1a()
					return
				end)
			end
			if at <= 3 then
				helper_cd17820b()
			end
			return 0
		end
		if at <= 7 then
			if at <= 5 then
				at = 6
				helper_dcf91359(10)
				return vm.continue_with(function()
					at = 7
					helper_69d65e1a()
					return
				end)
			end
			if at <= 6 then
				helper_cd17820b()
			end
			return 0
		end
		if at <= 11 then
			if at <= 8 then
				at = 9
				helper_e7afa9ca()
				return vm.continue_with(function()
					event.AddItem(10)
					event.AddItem(363)
					at = 10
					helper_dcf91359(10)
					at = 11
					helper_69d65e1a()
					return
				end)
			end
			if at <= 9 then
				at = 10
				helper_dcf91359(10)
				return vm.continue_with(function()
					at = 11
					helper_69d65e1a()
					return
				end)
			end
			if at <= 10 then
				helper_cd17820b()
			end
			return 0
		end
		return nil
	end)
end

--- The Sphida event run when the menu button is pressed near the ball.
function script.sphida_near_ball()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local debug_flag: s32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 5)
	event.SetMesQuestionGyou(0, 0)
	var0 = helper_bac0e30d(0, 2004, 8, 256, 208, 2, 0)
	if var0 == 0 then
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		event.SphidaSetBallPos(var1, var2 + 3.0, var3)
		event.SetCharaPos(8, var1, var2 + 3.0, var3)
		event.SetCharaPos(9, var1, var2 + 3.0, var3)
		debug_flag = event.GetDebugFlag() or debug_flag
		if debug_flag == 0 then
			helper_c2ca38b7(-1)
		end
		event.SetCrossfade(15)
	end
	vm.wait(2)
	event.Finish()
end

--- The Sphida event run when the menu button is pressed near the ball with fewer than two shots of par left.
function script.sphida_near_ball_last()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	event.Initialize()
	helper_ce85b54c()
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(0, "This is the last time you'll be\nable to move the Sphere to you.")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 5)
	event.SetMesQuestionGyou(0, 0)
	event.MesMake_2(0, "Move the Sphere to you?")
	var0 = helper_bac0e30d(0, -1, 8, 0, 0, 2, 1)
	if var0 == 0 then
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		event.SphidaSetBallPos(var1, var2 + 3.0, var3)
		event.SetCharaPos(8, var1, var2 + 3.0, var3)
		event.SetCharaPos(9, var1, var2 + 3.0, var3)
		event.SphidaSetLastChallenge(1)
		event.SetCrossfade(15)
	end
	vm.wait(3)
	event.Finish()
end

--- Event 13080, which map data, a script or the engine runs by number.
function script.event_13080()
	event_99()
	event.SetFlag(300, 1)
	event.SetFlag(320, 0)
	default_event()
end

--- Event 13120, which map data, a script or the engine runs by number.
function script.event_13120()
	event_99()
	event.SetFlag(300, 1)
	event.SetFlag(320, 1)
	event.SetFlag(312, 0)
	event.SetFlag(314, 0)
	event.SetFlag(315, 0)
	event.SetFlag(316, 0)
	event.SetFlag(317, 0)
	default_event()
end

--- Event 13170, which map data, a script or the engine runs by number.
function script.event_13170()
	event_99()
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(4)
	event.ClearStack(4)
	event.LoadChara(4, "chara/c02_base.gltf", "info", 13)
	event.LoadEquip(4, 1, 4, "info", 13)
	event.LoadEquip(4, 1, 3, "info", 13)
	event.LoadEquip(4, 1, 2, "info", 13, 14)
	helper_dcf91359(10)
end

return script
