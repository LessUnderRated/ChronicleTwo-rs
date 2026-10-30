--!strict
-- map/s/s56.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_08ff853b = require("@lib/event/helper_08ff853b")
local helper_161be1ae = require("@lib/event/helper_161be1ae")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_52115bbf = require("@lib/event/helper_52115bbf")
local helper_57c93eff = require("@lib/event/helper_57c93eff")
local helper_76929aca = require("@lib/event/helper_76929aca")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_df618068 = require("@lib/event/helper_df618068")
local helper_e4e2e66b = require("@lib/event/helper_e4e2e66b")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local helper_f2c09b51 = require("@lib/event/helper_f2c09b51")
local open_message = require("@lib/event/open_message")
local show_message = require("@lib/event/show_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_message = require("@lib/event/wait_message")

--- Helper function.
local function helper_11630()
	local var0: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(
			0,
			"ここから過去に戻れば、クレストを助けられるはず！\n（(#)ボタンでメニューを開く）"
		)
		at = 1
		var0 = helper_c292fa16(0, -1, 5, 256, 208, var0)
		if var0 == 1 then
			return 1
		else
			return 0
		end
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				var0 = received[2] :: number
			end
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_11434()
	event.Initialize()
	event.SetFlag(352, 1)
	event.Initialize()
	event.SetMesWindowMode(0, 0)
	event.MesMake_2(0, "Ｅ３５２　～星の砂時計を使う～")
	show_message(0, -1, 5, 0, 0)
	event.SetFadeOut(30)
	helper_888ab2a3(30)
	event.Finish()
end

--- Helper function.
local function helper_2570(arg0: s32, arg1: any)
	local argc: s32 = 0
	local argc_2: s32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local loud: s32 = 0
	local var8: s32 = 0
	event.SetMesOkuri(arg0, 0)
	event.TrgPakuAnim(1)
	event.TrgPakuMotion(0)
	var5 = 0
	argc_2 = event.StreamGetStatus(1) or argc_2
	loud = 0
	var8 = 1
	while var8 ~= 0 do
		argc_2 = argc
		argc = event.StreamGetStatus(1) or argc
		if argc_2 ~= 0 and argc == 0 then
			event.TrgPakuMotion(2)
			if arg1 == -1 then
				var8 = 0
			end
		end
		var6 = loud
		loud = event.StreamSilentCheck(1) or loud
		if var6 == 0 and loud == 1 then
			event.TrgPakuAnim(1)
		end
		if var6 == 1 and loud == 0 then
			event.TrgPakuAnim(0)
		end
		vm.wait(1)
		var5 = vm.i32(var5 + 1)
		if arg1 ~= -1 then
			if arg1 <= var5 then
				var8 = 0
			end
		end
	end
	event.ResetPakuMotion()
	event.TrgPakuAnim(0)
	event.ResetPakuAnim()
	event.StreamStop(1)
	event.SetMesOkuri(arg0, 1)
end

--- Helper function.
local function helper_4560(arg0: s32, arg1: s32)
	local stream_open_state: s32 = 0
	local stream_open_state_2: s32 = 0
	event.StreamOpen3(1, arg0)
	while true do
		stream_open_state = event.StreamOpenCheck() or stream_open_state
		if stream_open_state == 0 then
			break
		else
			vm.wait(1)
		end
	end
	event.StreamStandby(1)
	while true do
		stream_open_state_2 = event.StreamOpenCheck() or stream_open_state_2
		if stream_open_state_2 == 0 then
			break
		else
			vm.wait(2)
		end
	end
	event.MesMake_2(0, arg0)
	open_message(0, -1, 8, 0, 0)
	event.StreamPlay(1)
	helper_2570(0, arg1)
	close_message(0)
	event.StreamClose(1)
	event.SetMesPos(0, 0)
end

--- Helper function.
local function helper_2c14(arg0: s32)
	local var1: s32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local loud: s32 = 0
	event.TrgPakuAnim(1)
	event.TrgPakuMotion(0)
	var1 = 0
	var5 = 0
	argc_2 = event.StreamGetStatus(1) or argc_2
	loud = 0
	while true do
		argc_2 = argc
		argc = event.StreamGetStatus(1) or argc
		if argc_2 ~= 0 and argc == 0 then
			event.TrgPakuMotion(2)
			var1 = 2
		end
		var6 = loud
		loud = event.StreamSilentCheck(1) or loud
		if var6 == 0 and loud == 1 then
			event.TrgPakuAnim(1)
		end
		if var6 == 1 and loud == 0 then
			event.TrgPakuAnim(0)
		end
		local t0: s32
		t0, var1 = helper_57c93eff(arg0, var1)
		var4 = t0
		if var4 ~= 0 then
			var5 = vm.i32(var5 + 1)
			break
		else
			vm.wait(1)
			var5 = vm.i32(var5 + 1)
		end
	end
	if var1 == 0 then
		event.TrgPakuMotion(2)
	end
	event.ResetPakuMotion()
	event.TrgPakuAnim(0)
	event.ResetPakuAnim()
	event.StreamStop(1)
end

--- Helper function.
local function helper_48bc(arg0: s32)
	local stream_open_state: s32 = 0
	local stream_open_state_2: s32 = 0
	event.StreamOpen3(1, arg0)
	while true do
		stream_open_state = event.StreamOpenCheck() or stream_open_state
		if stream_open_state == 0 then
			break
		else
			vm.wait(1)
		end
	end
	event.StreamStandby(1)
	while true do
		stream_open_state_2 = event.StreamOpenCheck() or stream_open_state_2
		if stream_open_state_2 == 0 then
			break
		else
			vm.wait(2)
		end
	end
	event.MesMake_2(0, arg0)
	open_message(0, -1, 8, 0, 0)
	event.StreamPlay(1)
	helper_2c14(0)
	close_message(0)
	event.StreamClose(1)
end

--- Helper function.
local function helper_21800000(arg0: s32, arg1: s32)
	local var5: s32 = 0
	local var8: s32 = 0
	var5 = 0
	var8 = 1
	local _ = var8
	var8 = 0
	var5 = var5 + 1
	var8 = 0
end

--- Helper function.
local function helper_21700000(arg0: s32, arg1: s32)
	helper_f018b3c0(0, -1, 8, 0, 0)
	helper_21800000(0, arg1)
	helper_d16eef1e(0)
end

--- Helper function.
local function helper_21b00000(arg0: s32)
	local var1: s32 = 0
	local var5: s32 = 0
	var1 = 0
	var5 = 0
	var1 = 2
	do
		local _: any
		_, var1 = helper_f2c09b51(arg0, var1)
	end
	var5 = var5 + 1
	var5 = var5 + 1
end

--- Helper function.
local function helper_21a00000(arg0: s32)
	helper_f018b3c0(0, -1, 8, 0, 0)
	helper_21b00000(0)
	helper_d16eef1e(0)
end

--- Helper function.
local function helper_ee14()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(348, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetProjection(524.9)
		var0 = event.SndLoadSound_2(3829) or var0
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 or active_chr_no ~= 1 then
			event.DngSetupMainUnit(0)
			event.SetActiveChrNo(0)
			active_chr_no = 0
		end
		event.ChangeDir("event/e300/e348/")
		event.LoadMes(0, 5, "e348.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e348_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e348_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e348_lin.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(2, 11)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 9)
			event.LoadEquip(5, 0, 4, "info", 9)
			event.LoadEquip(5, 0, 3, "info", 9)
			event.LoadEquip(5, 0, 2, "info", 9, 10)
			event.LoadMotion(5, "event/e300/e348/e348_mints.gltf", "info", 10)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 9)
			event.EohSyncChara(0, 9)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 9)
			event.LoadEquip(5, 1, 4, "info", 9)
			event.LoadEquip(5, 1, 3, "info", 9)
			event.LoadEquip(5, 1, 2, "info", 9, 10)
			event.LoadMotion(5, "event/e300/e348/e348_monica.gltf", "info", 9)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 9)
			event.EohSyncChara(1, 9)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(9)
		event.CharaActive(10)
		event.EohSyncChara(3, 1)
		event.EohSetShow(3, 0)
		event.EohSyncChara(4, 2)
		event.EohSetShow(4, 0)
		event.EohSetPos(0, 1521.47, -107.28, 771.74)
		event.EohSetRot(0, 0.0, -2.88, 0.0)
		event.EohSetMotion(0, "歩き", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetTexAnim(0, 1, "半口")
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, 1505.66, -106.53, 783.49)
		event.EohSetRot(1, 0.0, 3.04, 0.0)
		event.EohSetMotion(1, "歩き", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetTexAnim(1, 1, "半口")
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(2, 1506.3, -108.37, 803.96)
		event.EohSetRot(2, 0.0, -3.12, 0.0)
		event.EohSetMotion(2, "歩き", 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "無表情")
		event.EohSetTexAnim(2, 1, "通常目パチ")
		event.EohSetTexAnim(2, 1, "半口")
		event.ObjsMove(0, 1521.47, -107.28, 731.74, 80)
		event.ObjsMove(1, 1505.66, -106.53, 743.49, 80)
		event.ObjsMove(2, 1506.3, -108.37, 763.96, 80)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(1478.0, -94.44, 748.45)
		event.CmrsSetRef(1526.09, -83.38, 795.48)
		event.CmrsMove(1478.0, -94.44, 708.45, 1526.09, -83.38, 755.48, 80)
		event.SetFadeIn(30)
		at = 2
		helper_888ab2a3(80)
		event.CmrsSetPos(1635.22, -45.35, 898.95)
		event.CmrsSetRef(1509.85, -91.47, 744.47)
		event.CmrsMove2(1635.22, -45.35, 898.95, 1509.85, 36.75, 744.47, 60, 0, 1.0)
		event.ObjsSetPos(0, 1522.58, -104.86, 733.22)
		event.ObjsSetRot(0, 0.0, -2.52, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, 1508.09, -104.9, 755.07)
		event.ObjsSetRot(1, 0.0, -2.76, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetPos(2, 1536.72, -109.15, 777.79)
		event.ObjsSetRot(2, 0.0, -2.68, 0.0)
		event.ObjsMove(0, 1491.96, -99.81, 672.57, 90)
		event.ObjsMove(1, 1473.85, -100.1, 691.32, 90)
		event.ObjsMove(2, 1493.11, -100.84, 700.12, 90)
		at = 3
		helper_4560(3480010, 120)
		at = 4
		wait_camera()
		at = 5
		helper_888ab2a3(10)
		event.CmrsSetPos(1459.8, -32.33, 632.79)
		event.CmrsSetRef(1494.99, -96.61, 704.05)
		event.CmrsMove2(1475.8, -54.94, 665.2, 1494.99, -84.52, 704.05, 60, 0, 1.0)
		event.ObjsSetMotion(0, "上向くL", 4, -1.0, 1)
		event.ObjsSetMotion(1, "上向くL", 4, -1.0, 1)
		event.ObjsSetMotion(2, "上見立ち", 4)
		at = 6
		wait_camera()
		at = 7
		helper_888ab2a3(10)
		event.CmrsSetPos(1518.17, -76.49, 671.12)
		event.CmrsSetRef(1493.05, -78.0, 693.7)
		event.ObjsSetPos(2, 1501.04, -100.84, 688.87)
		event.ObjsSetRot(2, 0.0, -2.68, 0.0)
		event.SndSePlay(var0, 6)
		event.ObjsSetMotion(1, "右向く", 6, -1.0, 1)
		event.ObjsNextMotion(1, "右向くL", 4)
		at = 8
		helper_48bc(3480020)
		event.SetFadeOut(30)
		at = 9
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			local _ = active_chr_no ~= 0
			local _ = active_chr_no ~= 1
			active_chr_no = 0
			helper_038a2e4d(80)
		end
		if at <= 2 then
			helper_21700000(3480010, 120)
		end
		if at <= 3 then
			helper_344d6cd8()
		end
		if at <= 4 then
			helper_038a2e4d(10)
		end
		if at <= 5 then
			helper_344d6cd8()
		end
		if at <= 6 then
			helper_038a2e4d(10)
		end
		if at <= 7 then
			helper_21a00000(3480020)
		end
		if at <= 8 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 10
	vm.entry(10)
	event.CancelDramaScene()
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSyncChara(0, 1)
	event.EohSetShow(0, 1)
	event.EohSyncChara(0, 2)
	event.EohSetShow(0, 1)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.SetCharaPos(0, 1390.73, -76.07, 523.09)
	event.SetCharaRot(0, 0.0, -2.28, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.14, 10.0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Helper function.
local function helper_55fc(arg0: s32, arg1: any, arg2: any, arg3: s32)
	local var4: s32 = 0
	local get_pad_down: s32 = 0
	local var6: s32 = 0
	local var7: s32 = 0
	local var8: s32 = 0
	local pressed: s32 = 0
	local pressed_2: s32 = 0
	local var11: s32 = 0
	local at: number = 0
	return vm.guard(function()
		var4 = event.GetMesQuestionGyou(arg0) or var4
		event.SetMesDrawspeed(arg0, 0.0)
		var8 = 0
		var7 = 0
		var6 = 0
		event.SetMesCursor(arg0, -1)
		event.SetMesCursor(arg0, arg2)
		at = 1
		wait_message(arg0)
		while true do
			var8 = 0
			var7 = helper_08ff853b(arg0)
			if var6 == 0 and var7 == -1 then
				event.MesSePlay(2)
				var8 = -1
			end
			if var6 == 0 and var7 == 1 then
				event.MesSePlay(2)
				var8 = 1
			end
			var6 = var7
			pressed = event.CheckButton(0) or pressed
			pressed_2 = event.CheckButton(1) or pressed_2
			get_pad_down = event.GetPaddown() or get_pad_down
			var11 = event.GetMesWindowMode(arg0) or var11
			if var11 == 5 then
				if bit32.band(get_pad_down, 32768) ~= 0 then
					event.MesSePlay(2)
					var8 = -1
				end
				if bit32.band(get_pad_down, 8192) ~= 0 then
					event.MesSePlay(2)
					var8 = 1
				end
			else
				if bit32.band(get_pad_down, 4096) ~= 0 then
					event.MesSePlay(2)
					var8 = -1
				end
				if bit32.band(get_pad_down, 16384) ~= 0 then
					event.MesSePlay(2)
					var8 = 1
				end
			end
			if pressed_2 ~= 0 then
				event.MesSePlay(0)
				at = 2
				vm.wait(2)
				break
			else
				if pressed ~= 0 then
					event.MesSePlay(1)
					at = 3
					vm.wait(3)
					if arg3 == 0 then
						close_message(arg0)
						return -1
					end
				end
				if var8 == 1 then
					if arg2 < vm.wrap(vm.wrap(arg1 - 1) + var4) then
						arg2 = vm.wrap(arg2 + 1)
					else
						arg2 = vm.wrap(vm.wrap(arg1 - 1) + var4)
					end
				end
				if var8 == -1 then
					if var4 < arg2 then
						arg2 = arg2 - 1
					else
						arg2 = var4
					end
				end
				event.SetMesCursor(arg0, arg2)
				at = 4
				vm.wait(4)
			end
		end
		close_message(arg0)
		return arg2
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				var8 = 0
				var7 = helper_76929aca(arg0)
				var8 = -1
				var8 = 1
				local _ = var6 == 0
				local _ = var6 == 0
				var6 = var7
				var8 = -1
				var8 = 1
				var8 = -1
				var8 = 1
			end
			helper_d16eef1e(arg0)
			return -1
		end
		if at <= 4 then
			helper_d16eef1e(arg0)
			return arg2
		end
		return nil
	end)
end

--- Helper function.
local function helper_6314(arg0: s32, arg1: any, arg2: s32, arg3: s32, arg4: s32, arg5: s32, arg6: any)
	local var8: any = 0
	local at: number = 0
	return vm.guard(function()
		local _ = open_message(arg0, arg1, arg2, arg3, arg4)
		at = 1
		var8 = helper_55fc(arg0, arg5, arg6, 0)
		event.SetMesPos(arg0, 0)
		return var8
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				var8 = received[1] :: number
			end
			return var8
		end
		return nil
	end)
end

--- Helper function.
local function helper_11ed8()
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
		event.MesMake_2(0, "「岬の灯台」を出ますか？")
		at = 1
		var0 = helper_6314(0, -1, 8, 256, 208, 2, 1)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var0 == 0 then
			event.CmrsSetPos(1776.49, -106.69, 1400.79)
			event.CmrsSetRef(1951.33, -163.61, 1351.42)
			event.ObjsSetPos(0, 1943.88, -189.72, 1357.17)
			event.ObjsSetRot(0, 0.0, 1.21, 0.0)
			event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 60)
			event.ObjsAddPas(0, 1943.88, -189.72, 1357.17)
			event.ObjsAddPas(0, 2022.78, -189.88, 1386.95)
			event.ObjsAddPas(0, 2104.45, -195.47, 1399.2)
			event.ObjsAddPas(0, 2155.72, -202.4, 1401.26)
			event.ObjsStartPas(0)
			at = 2
			helper_888ab2a3(30)
			event.SetFadeOut(30)
			at = 3
			helper_888ab2a3(30)
			event.SetMotion(0, "立ち", 4)
			event.EohSetFootSoundId(0, -1)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var1 = out1 or var1
				var2 = out2 or var2
				var3 = out3 or var3
			end
			var4 = vm.f32(vm.f32(vm.sin(vm.f32(-2.14)) * 30.0) + var1)
			var5 = var2
			var6 = vm.f32(vm.f32(vm.cos(vm.f32(-2.14)) * 30.0) + var3)
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
			event.EohSetFootSoundId(0, -1)
			event.ResetCamera(0)
			event.Finish()
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

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
script.event_99 = helper_161be1ae

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	helper_161be1ae()
	helper_e4e2e66b()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.Initialize()
	vm.wait(1)
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local var0: s32 = 0
	local item: s32 = 0
	event.Initialize()
	var0 = event.GetEventData_2(6) or var0
	if var0 == 1 then
		if helper_11630() ~= 0 then
			var0 = 2
		end
	end
	if var0 == 2 then
		event.SetStatusbarShow(0, 0.16666667)
		helper_888ab2a3(6)
		event.GotoUseItem(371)
		vm.wait(3)
		item = vmhost.used_item() or item
		if item == 371 then
			event.FuncPointShow("", "event", 0)
			helper_11434()
			event.LoadDungeonMapFile("d03b02")
			event.LoadScript("d03b02/d03b02.stb", 500)
			return
		elseif item > 0 then
			helper_df618068()
		end
	end
	event.SetStatusbarShow(1, 0.16666667)
	helper_888ab2a3(6)
	event.Finish()
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.FuncPointShow("", "e348", 0)
		helper_52115bbf()
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		at = 2
		helper_ee14()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_ee14()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	if helper_11ed8() ~= 0 then
		event.LoadScript("d03/d03.stb", 1000)
	end
end

return script
