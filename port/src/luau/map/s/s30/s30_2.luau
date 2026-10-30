--!strict
-- map/s/s30/s30_2.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_1315f555 = require("@lib/event/helper_1315f555")
local helper_1b7c747e = require("@lib/event/helper_1b7c747e")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_278438ff = require("@lib/event/helper_278438ff")
local helper_4ba013c2 = require("@lib/event/helper_4ba013c2")
local helper_6dca11b1 = require("@lib/event/helper_6dca11b1")
local helper_6e59aa59 = require("@lib/event/helper_6e59aa59")
local helper_758eaf41 = require("@lib/event/helper_758eaf41")
local helper_778d04c1 = require("@lib/event/helper_778d04c1")
local helper_7d54f41c = require("@lib/event/helper_7d54f41c")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_9ced6ae4 = require("@lib/event/helper_9ced6ae4")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_b88762f7 = require("@lib/event/helper_b88762f7")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_bde1dfef = require("@lib/event/helper_bde1dfef")
local helper_c831193d = require("@lib/event/helper_c831193d")
local helper_d00ee03f = require("@lib/event/helper_d00ee03f")
local helper_de3682e9 = require("@lib/event/helper_de3682e9")
local helper_e4877873 = require("@lib/event/helper_e4877873")
local helper_f242e245 = require("@lib/event/helper_f242e245")
local helper_fbd9683d = require("@lib/event/helper_fbd9683d")
local set_window_mode = require("@lib/event/set_window_mode")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	helper_278438ff()
end

--- Helper function.
local function helper_2fb54(arg0: any)
	local var1: s32 = 0
	local var2: any = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: s32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 4)
	event.SetMesQuestionGyou(0, 1)
	event.SetMesEtc(0, 0, 1)
	event.SetMesEtc(0, 1, 1)
	event.MesMake_2(
		0,
		"Destination du t[UNI00e9]l[UNI00e9]porteur ?\nT[UNI00e9]l[UNI00e9]porteur - Nord\nT[UNI00e9]l[UNI00e9]porteur - Est\nT[UNI00e9]l[UNI00e9]porteur - Ouest\nDevant la Porte temporelle"
	)
	var1 = 4
	var2 = helper_bac0e30d(0, -1, 8, 0, 0, var1, 1)
	event.SetMesQuestionGyou(0, 0)
	event.SetMesEtc(0, 0, 0)
	event.SetMesEtc(0, 1, 0)
	if var2 == -1 then
		return
	end
	if vm.wrap(var2 - 1) ~= 1 and vm.wrap(var2 - 1) ~= 2 and vm.wrap(var2 - 1) ~= 3 and vm.wrap(var2 - 1) ~= 0 then
		return
	end
	event.AssignStack(5)
	event.ClearStack(5)
	event.EsmInitialize(5)
	event.EsmLoadBase("サンワープ２")
	event.EsmInitFix(5)
	event.EsmCreate("サンワープ２")
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var3 = out1 or var3
		var4 = out2 or var4
		var5 = out3 or var5
	end
	event.EsmSetVect1(var3, var4, var5)
	var6 = event.GetSndId(2) or var6
	event.SndSePlay(var6, 120)
	wait_frames(15)
	event.SetCharaShow(0, 0, 1, 0.05)
	event.SetCharaShow(1, 0, 1, 0.05)
	event.SetCharaShow(2, 0, 1, 0.05)
	event.SetCharaShow(3, 0, 1, 0.05)
	wait_frames(30)
	event.SetFadeOut(15)
	wait_frames(15)
	event.EsmClear()
	event.SetCharaShow(0, 1)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.SetCharaShow(3, 1)
	event.SetCnt(18, vm.wrap(var2 - 1))
	event.MapJump_2(-1, "f04")
	vm.wait(5)
end

--- Helper function.
local function helper_130b0(arg0: s32)
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
	local var15: s32 = 0
	local var16: any = 0
	local at: number = 0
	return vm.guard(function()
		set_window_mode(0, 7)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncChara(1, arg0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
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
			local out1, out2, out3 = event.GetCharaPos(arg0)
			var4 = out1 or var4
			var5 = out2 or var5
			var6 = out3 or var6
		end
		do
			local _, out2, _ = event.GetCharaRot(arg0)
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
		event.StreamOpen3(1, 5400010)
		at = 2
		helper_9cbdc640(1)
		event.StreamPlay(1)
		event.SetPakuMotion(1, "会話", 0, "立ち", 0)
		event.MesMake_2(0, "Notre contre-attaque contre Griffon\nva bient[UNI00f4]t commencer.")
		at = 3
		helper_0ffc2526(0, -1, arg0, 0, 0)
		event.StreamClose(1)
		event.StreamOpen3(1, 5400015)
		at = 4
		helper_9cbdc640(1)
		event.StreamPlay(1)
		event.MesMake_2(0, "Vous [UNI00ea]tes pr[UNI00ea]ts ?")
		at = 5
		helper_0ffc2526(0, -1, arg0, 0, 0)
		event.StreamClose(1)
		set_window_mode(0, 1)
		event.MesMake_2(0, "Oui.\nNon.")
		at = 6
		var16 = helper_bac0e30d(0, -1, 5, 256, 208, 2, 0)
		if var16 == 0 then
			return 1
		else
			set_window_mode(0, 7)
			event.StreamOpen3(1, 5400020)
			at = 7
			helper_9cbdc640(1)
			event.StreamPlay(1)
			event.SetPakuMotion(1, "会話", 0, "立ち", 0)
			event.MesMake_2(0, "Leurs Golems arrivent droit sur nous.\nLe temps presse.")
			at = 8
			helper_0ffc2526(0, -1, arg0, 0, 0)
			event.StreamClose(1)
			var15 = event.AngleCmp(var11, yaw_2, 0.1) or var15
			if var15 ~= 0 then
				event.ObjsRotation(1, 0.0, var11, 0.0, 10)
				event.ObjsSetMotion(1, "歩き")
				event.ObjsMotionDelay(1, 10)
			end
			event.ObjsSetMotion(1, "立ち")
			at = 9
			wait_frames(11)
			return 0
		end
	end, function(received: { any })
		if at <= 6 then
			if at == 6 then
				var16 = received[1] :: number
			end
			if at <= 1 then
				helper_238b5abc(1)
			end
			if at <= 2 then
				helper_9ced6ae4(0, -1, arg0, 0, 0)
			end
			if at <= 3 then
				helper_238b5abc(1)
			end
			if at <= 4 then
				helper_9ced6ae4(0, -1, arg0, 0, 0)
			end
			if at <= 5 then
				helper_fbd9683d(0, 1)
				var16 = helper_7d54f41c(0, -1, 5, 256, 208, 2, 0)
			end
			return 1
		end
		if at <= 9 then
			if at <= 7 then
				helper_9ced6ae4(0, -1, arg0, 0, 0)
			end
			if at <= 8 then
				wait_frames_skipping(11)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_237ec()
	local var0: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		vm.entry(1)
		event.SetFlag(540, 1)
		at = 2
		helper_778d04c1()
		at = 3
		vm.wait(3)
		event.CharaActive(0, 8)
		event.LoadBgm(116)
		event.PlayBgm(0)
		event.SetMovieCc(0, 0)
		event.SetMovieCc(1, 0, 570, "Paznos... D[UNI00e9]collage !", 60)
		event.SetMovieCc(0, 1)
		event.LoadSound(5513)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetFadeIn(10)
		event.LoadMovie(5, "movie/e54001.mp4", 0)
		at = 4
		vm.wait(4)
		event.SetMovieCc(0, 0)
		event.SetFadeOut(0)
		at = 5
		helper_6dca11b1()
		at = 6
		vm.wait(6)
		event.SeAllStop()
		event.SetFadeIn(10)
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadMovie(5, "movie/e54002.mp4", 0)
		at = 7
		vm.wait(7)
		event.SetFadeOut(0)
		at = 8
		helper_c831193d()
		at = 9
		vm.wait(9)
		event.SeAllStop()
		var0 = event.GetEventInfoSndid(4) or var0
		event.SndSePlay(var0, 11)
		event.SetFadeIn(10)
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadMovie(5, "movie/e54003.mp4", 0)
		at = 10
		vm.wait(10)
		event.SndSeStop(var0, 11)
		event.SetFadeOut(0)
		at = 11
		helper_d00ee03f()
		at = 12
		vm.wait(12)
		event.SeAllStop()
		event.SetFadeIn(10)
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadMovie(5, "movie/e54004.mp4")
		at = 13
		vm.wait(13)
		event.SetFadeOut(0)
		at = 14
		helper_f242e245()
		event.BgmLoadCancel()
		event.MapJump_3(-1, "s29", 600)
		return
	end, function(received: { any })
		if at <= 14 then
			if at <= 1 then
				at = 2
				helper_778d04c1()
				return vm.continue_with(function()
					at = 3
					vm.wait(3)
					event.CharaActive(0, 8)
					event.LoadBgm(116)
					event.PlayBgm(0)
					event.SetMovieCc(0, 0)
					event.SetMovieCc(1, 0, 570, "Paznos... D[UNI00e9]collage !", 60)
					event.SetMovieCc(0, 1)
					event.LoadSound(5513)
					event.AssignStack(5)
					event.ClearStack(5)
					event.SetFadeIn(10)
					event.LoadMovie(5, "movie/e54001.mp4", 0)
					at = 4
					vm.wait(4)
					event.SetMovieCc(0, 0)
					event.SetFadeOut(0)
					at = 5
					helper_6dca11b1()
					at = 6
					vm.wait(6)
					event.SeAllStop()
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54002.mp4", 0)
					at = 7
					vm.wait(7)
					event.SetFadeOut(0)
					at = 8
					helper_c831193d()
					at = 9
					vm.wait(9)
					event.SeAllStop()
					var0 = event.GetEventInfoSndid(4) or var0
					event.SndSePlay(var0, 11)
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54003.mp4", 0)
					at = 10
					vm.wait(10)
					event.SndSeStop(var0, 11)
					event.SetFadeOut(0)
					at = 11
					helper_d00ee03f()
					at = 12
					vm.wait(12)
					event.SeAllStop()
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54004.mp4")
					at = 13
					vm.wait(13)
					event.SetFadeOut(0)
					at = 14
					helper_f242e245()
					event.BgmLoadCancel()
					event.MapJump_3(-1, "s29", 600)
					return
				end)
			end
			if at <= 4 then
				at = 5
				helper_6dca11b1()
				return vm.continue_with(function()
					at = 6
					vm.wait(6)
					event.SeAllStop()
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54002.mp4", 0)
					at = 7
					vm.wait(7)
					event.SetFadeOut(0)
					at = 8
					helper_c831193d()
					at = 9
					vm.wait(9)
					event.SeAllStop()
					var0 = event.GetEventInfoSndid(4) or var0
					event.SndSePlay(var0, 11)
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54003.mp4", 0)
					at = 10
					vm.wait(10)
					event.SndSeStop(var0, 11)
					event.SetFadeOut(0)
					at = 11
					helper_d00ee03f()
					at = 12
					vm.wait(12)
					event.SeAllStop()
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54004.mp4")
					at = 13
					vm.wait(13)
					event.SetFadeOut(0)
					at = 14
					helper_f242e245()
					event.BgmLoadCancel()
					event.MapJump_3(-1, "s29", 600)
					return
				end)
			end
			if at <= 7 then
				at = 8
				helper_c831193d()
				return vm.continue_with(function()
					at = 9
					vm.wait(9)
					event.SeAllStop()
					var0 = event.GetEventInfoSndid(4) or var0
					event.SndSePlay(var0, 11)
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54003.mp4", 0)
					at = 10
					vm.wait(10)
					event.SndSeStop(var0, 11)
					event.SetFadeOut(0)
					at = 11
					helper_d00ee03f()
					at = 12
					vm.wait(12)
					event.SeAllStop()
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54004.mp4")
					at = 13
					vm.wait(13)
					event.SetFadeOut(0)
					at = 14
					helper_f242e245()
					event.BgmLoadCancel()
					event.MapJump_3(-1, "s29", 600)
					return
				end)
			end
			if at <= 10 then
				at = 11
				helper_d00ee03f()
				return vm.continue_with(function()
					at = 12
					vm.wait(12)
					event.SeAllStop()
					event.SetFadeIn(10)
					event.AssignStack(5)
					event.ClearStack(5)
					event.LoadMovie(5, "movie/e54004.mp4")
					at = 13
					vm.wait(13)
					event.SetFadeOut(0)
					at = 14
					helper_f242e245()
					event.BgmLoadCancel()
					event.MapJump_3(-1, "s29", 600)
					return
				end)
			end
			if at <= 13 then
				at = 14
				helper_f242e245()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.MapJump_3(-1, "s29", 600)
					return
				end)
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

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event_99()
	helper_9dafbc83(-155.0, vm.f32(76.3), -205.0, vm.f32(0.9))
	event.ResetCamera(1, 3.14, 10)
	event.SetFadeIn(30)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 560, which map data, a script or the engine runs by number.
function script.event_560()
	helper_2fb54(4)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	helper_4ba013c2()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "f04", 601)
end

--- Event 601, which map data, a script or the engine runs by number.
function script.event_601()
	helper_6dca11b1()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "s55", 601)
end

--- Event 602, which map data, a script or the engine runs by number.
function script.event_602()
	helper_c831193d()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "s55", 602)
end

--- Event 603, which map data, a script or the engine runs by number.
function script.event_603()
	helper_d00ee03f()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "s55", 603)
end

--- Event 604, which map data, a script or the engine runs by number.
function script.event_604()
	helper_f242e245()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "s29", 600)
end

--- Event 605, which map data, a script or the engine runs by number.
function script.event_605()
	helper_bde1dfef()
	event.MapJump_3(-1, "s10", 510)
end

--- Event 610, which map data, a script or the engine runs by number.
function script.event_610()
	helper_b88762f7()
	event.MapJump_3(-1, "d06b01", 600)
	vm.wait(2)
end

--- Event 620, which map data, a script or the engine runs by number.
function script.event_620()
	helper_1315f555()
	event.MapJump_3(-1, "s32", 610)
	vm.wait(2)
end

--- Event 630, which map data, a script or the engine runs by number.
function script.event_630()
	helper_e4877873()
	event.MapJump_3(-1, "s32", 620)
	vm.wait(2)
end

--- Event 640, which map data, a script or the engine runs by number.
function script.event_640()
	helper_6e59aa59()
	event.MapJump_3(-1, "s32", 630)
	vm.wait(2)
end

--- Event 650, which map data, a script or the engine runs by number.
function script.event_650()
	helper_758eaf41()
	event.MapJump_3(-1, "s32", 640)
	vm.wait(2)
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local var0: s32 = 0
	local var1: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		var0 = event.GetEventData_2(14) or var0
		var1 = event.GetEventData_2(13) or var1
		if var0 == 400 then
			flag = event.GetFlag(536) or flag
			flag_2 = event.GetFlag(540) or flag_2
			if flag == 1 and flag_2 == 0 then
				at = 1
				if helper_130b0(var1) == 1 then
					event.FadeOutBgm(15)
					event.SetFadeOut(15)
					at = 2
					wait_frames(15)
					at = 3
					helper_237ec()
				end
			else
				at = 4
				helper_1b7c747e()
			end
		else
			at = 5
			helper_1b7c747e()
		end
		return
	end, function(received: { any })
		if at <= 5 then
			if at <= 1 then
				wait_frames_skipping(15)
			end
			if at <= 2 then
				at = 3
				helper_237ec()
				return vm.continue_with(function()
					return
				end)
			end
			if at <= 3 then
				helper_de3682e9()
			end
			if at <= 4 then
				helper_de3682e9()
			end
			return 0
		end
		return nil
	end)
end

--- Event 15400, which map data, a script or the engine runs by number.
function script.event_15400()
	event.SetFlag(536, 1)
	event.SetFlag(540, 0)
	event_99()
	helper_237ec()
end

return script
