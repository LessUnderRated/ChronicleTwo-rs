--!strict
-- map/f/f04/f04_1.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_01ecb208 = require("@lib/event/helper_01ecb208")
local helper_10d6108d = require("@lib/event/helper_10d6108d")
local helper_257fedcc = require("@lib/event/helper_257fedcc")
local helper_39715509 = require("@lib/event/helper_39715509")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_7cae9347 = require("@lib/event/helper_7cae9347")
local helper_7d18b8ef = require("@lib/event/helper_7d18b8ef")
local helper_8c9c4be7 = require("@lib/event/helper_8c9c4be7")
local helper_9146482d = require("@lib/event/helper_9146482d")
local helper_981c86d9 = require("@lib/event/helper_981c86d9")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c0195a7d = require("@lib/event/helper_c0195a7d")
local helper_c07d0e45 = require("@lib/event/helper_c07d0e45")
local helper_c790df92 = require("@lib/event/helper_c790df92")
local helper_cfe3f87c = require("@lib/event/helper_cfe3f87c")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_d622cd71 = require("@lib/event/helper_d622cd71")
local helper_de7d1d4b = require("@lib/event/helper_de7d1d4b")
local helper_fd37560e = require("@lib/event/helper_fd37560e")
local helper_ff7b7835 = require("@lib/event/helper_ff7b7835")
local open_message = require("@lib/event/open_message")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	if helper_c07d0e45() ~= 0 then
		event.EohSyncObj_2(0, "p10_f0401")
		event.EohSetShow(0, 0)
	end
	helper_fd37560e()
end

--- Helper function.
local function helper_2af80()
	local var0: s32 = 0
	local value: any = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetCnt(14) or var0
		event.SetMesWindowMode(1, 4)
		event.MesMake_2(1, "There are elevator buttons here.")
		open_message(1, -1, 5, 0, 0)
		event.SetMesWindowMode(0, 4)
		event.SetMesQuestionGyou(0, 0)
		event.SetMesEtc(0, 0, 1)
		event.SetMesEtc(0, 1, 1)
		event.SetMesEtc(0, 5, var0, 2)
		event.MesMake_2(0, "1st Floor\n2nd Floor\n3rd Floor")
		at = 1
		value = helper_bac0e30d(0, -1, 8, 0, 0, 3, var0)
		event.SetMesEtc(0, 0, 0)
		event.SetMesEtc(0, 1, 0)
		event.SetMesEtc(0, 5, var0, -1)
		close_message(1)
		if value < 0 or value == var0 then
			return -1
		else
			event.SetCnt(14, value)
			return value
		end
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				value = received[1] :: number
			end
			helper_d16eef1e(1)
			return -1
		end
		return nil
	end)
end

--- Helper function.
local function helper_2c708(arg0: s32)
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: any = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: s32 = 0
	var1 = helper_c07d0e45()
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 4)
	event.SetMesQuestionGyou(0, 1)
	event.SetMesEtc(0, 0, 1)
	event.SetMesEtc(0, 1, 1)
	if var1 ~= 0 then
		event.MesMake_2(
			0,
			"Select Jump Gate Destination\nJump Gate -- North\nJump Gate -- East\nJump Gate -- West\nIn front of Time Gate\nPaznos, Bridge"
		)
		var2 = 5
	else
		event.MesMake_2(
			0,
			"Select Jump Gate Destination\nJump Gate -- North\nJump Gate -- East\nJump Gate -- West\nIn front of Time Gate"
		)
		var2 = 4
	end
	var3 = helper_bac0e30d(0, -1, 8, 0, 0, var2, vm.i32(arg0 + 1))
	event.SetMesQuestionGyou(0, 0)
	event.SetMesEtc(0, 0, 0)
	event.SetMesEtc(0, 1, 0)
	if var3 == -1 then
		return
	end
	if vm.wrap(var3 - 1) == arg0 then
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
		var4 = out1 or var4
		var5 = out2 or var5
		var6 = out3 or var6
	end
	event.EsmSetVect1(var4, var5, var6)
	var7 = event.GetSndId(2) or var7
	event.SndSePlay(var7, 120)
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
	if vm.wrap(var3 - 1) == 1 then
		helper_9dafbc83(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
	end
	if vm.wrap(var3 - 1) == 2 then
		helper_9dafbc83(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
	end
	if vm.wrap(var3 - 1) == 3 then
		helper_9dafbc83(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
	end
	if vm.wrap(var3 - 1) == 0 then
		helper_9dafbc83(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
	end
	if vm.wrap(var3 - 1) == 4 then
		event.MapJump_2(-1, "s30")
		vm.wait(5)
		return
	end
	event.ResetCamera(1, 3.1415927)
	event.SetFadeIn(15)
end

--- Helper function.
local function helper_2bfc4()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: s32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 5)
	event.MesMake_2(0, "Move to Paznos, Bridge?")
	var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
	if var0 ~= 0 then
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
		var1 = out1 or var1
		var2 = out2 or var2
		var3 = out3 or var3
	end
	event.EsmSetVect1(var1, var2, var3)
	var4 = event.GetSndId(2) or var4
	event.SndSePlay(var4, 120)
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
	event.MapJump_2(-1, "s30")
	vm.wait(5)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local old_map_no: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		old_map_no = event.GetOldMapNo() or old_map_no
		event.SetFadeIn(15)
		if old_map_no == 3 then
			event.SetCnt(14, 0)
		end
		event_99()
		helper_9146482d()
		if helper_d622cd71() ~= 0 then
			at = 1
			helper_8c9c4be7()
		end
		if helper_10d6108d() ~= 0 then
			at = 2
			helper_01ecb208()
		end
		if helper_981c86d9() ~= 0 then
			at = 3
			helper_7cae9347()
		end
		if old_map_no == 3 then
			helper_9dafbc83(0.0, 0.0, 0.0, 0.0)
		end
		if old_map_no == 105 then
			var1 = event.GetCnt(18) or var1
			event.SetCnt(14, 0)
			helper_9146482d()
			if var1 == 1 then
				helper_9dafbc83(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
			end
			if var1 == 2 then
				helper_9dafbc83(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
			end
			if var1 == 3 then
				helper_9dafbc83(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
			end
			if var1 == 0 then
				helper_9dafbc83(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
			end
		end
		if old_map_no == 107 then
			event.SetCnt(14, 2)
			helper_9146482d()
			helper_9dafbc83(0.0, 2460.0, 6000.0, vm.f32(3.14))
		end
		event.ResetCamera(1, 0.0, 10.0)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				local _ = helper_257fedcc()
				at = 2
				helper_01ecb208()
				return vm.continue_with(function()
					if helper_981c86d9() ~= 0 then
						at = 3
						helper_7cae9347()
					end
					if old_map_no == 3 then
						helper_9dafbc83(0.0, 0.0, 0.0, 0.0)
					end
					if old_map_no == 105 then
						var1 = event.GetCnt(18) or var1
						event.SetCnt(14, 0)
						helper_9146482d()
						if var1 == 1 then
							helper_9dafbc83(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
						end
						if var1 == 2 then
							helper_9dafbc83(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
						end
						if var1 == 3 then
							helper_9dafbc83(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
						end
						if var1 == 0 then
							helper_9dafbc83(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
						end
					end
					if old_map_no == 107 then
						event.SetCnt(14, 2)
						helper_9146482d()
						helper_9dafbc83(0.0, 2460.0, 6000.0, vm.f32(3.14))
					end
					event.ResetCamera(1, 0.0, 10.0)
					return
				end)
			end
			if at <= 2 then
				local _ = helper_257fedcc()
				at = 3
				helper_7cae9347()
				return vm.continue_with(function()
					if old_map_no == 3 then
						helper_9dafbc83(0.0, 0.0, 0.0, 0.0)
					end
					if old_map_no == 105 then
						var1 = event.GetCnt(18) or var1
						event.SetCnt(14, 0)
						helper_9146482d()
						if var1 == 1 then
							helper_9dafbc83(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
						end
						if var1 == 2 then
							helper_9dafbc83(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
						end
						if var1 == 3 then
							helper_9dafbc83(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
						end
						if var1 == 0 then
							helper_9dafbc83(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
						end
					end
					if old_map_no == 107 then
						event.SetCnt(14, 2)
						helper_9146482d()
						helper_9dafbc83(0.0, 2460.0, 6000.0, vm.f32(3.14))
					end
					event.ResetCamera(1, 0.0, 10.0)
					return
				end)
			end
			local _ = helper_257fedcc()
			helper_43f02c95(0.0, 0.0, 0.0, 0.0)
			helper_c790df92()
			helper_43f02c95(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
			helper_43f02c95(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
			helper_43f02c95(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
			helper_43f02c95(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
			helper_c790df92()
			helper_43f02c95(0.0, 2460.0, 6000.0, vm.f32(3.14))
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_8c9c4be7

--- Event 151, which map data, a script or the engine runs by number.
script.event_151 = helper_39715509

--- Event 152, which map data, a script or the engine runs by number.
function script.event_152()
	event.DbgSetAnalyzeFlag(3, 3, 0)
	event.DbgSetAnalyzeFlag(3, 4, 0)
	event.DbgSetAnalyzeFlag(3, 5, 0)
	event.DbgSetAnalyzeFlag(3, 6, 0)
	event.DbgSetAnalyzeFlag(3, 7, 0)
	event.DbgSetAnalyzeFlag(3, 8, 0)
	event.DbgSetAnalyzeFlag(3, 9, 0)
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.SetFlag(548, 0)
	event.SetFlag(552, 1)
	event.SetFlag(556, 1)
	helper_8c9c4be7()
end

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	helper_de7d1d4b(0.0, 0.0, 0.0, vm.f32(6.2831855))
	event.MapJump_2(-1, "g04")
	vm.wait(2)
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	local var0: s32 = 0
	local var1: any = 0
	local at: number = 0
	local t0: s32 = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		var0 = event.GetSndId(2) or var0
		at = 1
		var1 = helper_2af80()
		if var1 >= 0 then
			event.SndSePlay(var0, 70)
			event.SetFadeOut(10)
			at = 2
			wait_frames(10)
			if var1 == 0 then
				helper_9dafbc83(vm.f32(684.8), 0.0, vm.f32(6024.3), vm.f32(-2.87))
			end
			if var1 == 1 then
				helper_9dafbc83(vm.f32(684.8), 1160.0, vm.f32(6024.3), vm.f32(-2.87))
				at = 3
				if helper_c0195a7d() ~= 0 then
					helper_9146482d()
					event.ResetCamera(1, 0.0, 10.0)
					event.SetFadeIn(10)
					return
				end
			end
			if var1 == 2 then
				helper_9dafbc83(vm.f32(684.8), 2320.0, vm.f32(6024.3), vm.f32(-2.87))
			end
			event.SndSePlay(var0, 71)
			helper_9146482d()
			event.ResetCamera(1, 0.0, 10.0)
			event.SetFadeIn(10)
		end
		return
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at == 3 then
				t0 = received[1] :: number
			end
			if at <= 1 then
				wait_frames_skipping(10)
			end
			if at <= 2 then
				helper_43f02c95(vm.f32(684.8), 0.0, vm.f32(6024.3), vm.f32(-2.87))
				helper_43f02c95(vm.f32(684.8), 1160.0, vm.f32(6024.3), vm.f32(-2.87))
				at = 3
				t0 = helper_c0195a7d()
				return vm.continue_with(function()
					if t0 ~= 0 then
						helper_9146482d()
						event.ResetCamera(1, 0.0, 10.0)
						event.SetFadeIn(10)
						return
					end
					if var1 == 2 then
						helper_9dafbc83(vm.f32(684.8), 2320.0, vm.f32(6024.3), vm.f32(-2.87))
					end
					event.SndSePlay(var0, 71)
					helper_9146482d()
					event.ResetCamera(1, 0.0, 10.0)
					event.SetFadeIn(10)
					return
				end)
			end
			helper_c790df92()
			return 0
		end
		return nil
	end)
end

--- Event 551, which map data, a script or the engine runs by number.
function script.event_551()
	local var0: s32 = 0
	local var1: any = 0
	local at: number = 0
	local t0: s32 = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		var0 = event.GetSndId(2) or var0
		at = 1
		var1 = helper_2af80()
		if var1 >= 0 then
			event.SndSePlay(var0, 70)
			event.SetFadeOut(10)
			at = 2
			wait_frames(10)
			if var1 == 0 then
				helper_9dafbc83(vm.f32(-2553.7), 0.0, vm.f32(3882.6), vm.f32(1.55))
			end
			if var1 == 1 then
				helper_9dafbc83(vm.f32(-2553.7), 1160.0, vm.f32(3882.6), vm.f32(1.55))
				at = 3
				if helper_c0195a7d() ~= 0 then
					helper_9146482d()
					event.ResetCamera(1, 0.0, 10.0)
					event.SetFadeIn(10)
					return
				end
			end
			if var1 == 2 then
				helper_9dafbc83(vm.f32(-2553.7), 2320.0, vm.f32(3882.6), vm.f32(1.55))
			end
			event.SndSePlay(var0, 71)
			helper_9146482d()
			event.ResetCamera(1, 0.0, 10.0)
			event.SetFadeIn(10)
		end
		return
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at == 3 then
				t0 = received[1] :: number
			end
			if at <= 1 then
				wait_frames_skipping(10)
			end
			if at <= 2 then
				helper_43f02c95(vm.f32(-2553.7), 0.0, vm.f32(3882.6), vm.f32(1.55))
				helper_43f02c95(vm.f32(-2553.7), 1160.0, vm.f32(3882.6), vm.f32(1.55))
				at = 3
				t0 = helper_c0195a7d()
				return vm.continue_with(function()
					if t0 ~= 0 then
						helper_9146482d()
						event.ResetCamera(1, 0.0, 10.0)
						event.SetFadeIn(10)
						return
					end
					if var1 == 2 then
						helper_9dafbc83(vm.f32(-2553.7), 2320.0, vm.f32(3882.6), vm.f32(1.55))
					end
					event.SndSePlay(var0, 71)
					helper_9146482d()
					event.ResetCamera(1, 0.0, 10.0)
					event.SetFadeIn(10)
					return
				end)
			end
			helper_c790df92()
			return 0
		end
		return nil
	end)
end

--- Event 552, which map data, a script or the engine runs by number.
function script.event_552()
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetFadeOut(15)
	wait_frames(15)
	event.MapJump_2(-1, "s39")
	vm.wait(2)
end

--- Event 560, which map data, a script or the engine runs by number.
function script.event_560()
	helper_2c708(1)
end

--- Event 561, which map data, a script or the engine runs by number.
function script.event_561()
	helper_2c708(3)
end

--- Event 562, which map data, a script or the engine runs by number.
function script.event_562()
	event.SetCnt(13, 2)
	helper_2bfc4()
end

--- Event 563, which map data, a script or the engine runs by number.
function script.event_563()
	event.SetCnt(13, 3)
	helper_2bfc4()
end

--- Event 564, which map data, a script or the engine runs by number.
function script.event_564()
	event.SetCnt(13, 4)
	helper_2bfc4()
end

--- Event 565, which map data, a script or the engine runs by number.
function script.event_565()
	event.SetCnt(13, 5)
	helper_2bfc4()
end

--- Event 566, which map data, a script or the engine runs by number.
function script.event_566()
	helper_2c708(2)
end

--- Event 567, which map data, a script or the engine runs by number.
function script.event_567()
	helper_2c708(0)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	helper_7d18b8ef()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "s30", 600)
end

--- Event 601, which map data, a script or the engine runs by number.
function script.event_601()
	helper_ff7b7835()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "s55", 600)
end

--- Event 1000, which map data, a script or the engine runs by number.
script.event_1000 = helper_cfe3f87c

--- Event 15080, which map data, a script or the engine runs by number.
function script.event_15080()
	event.DbgSetAnalyzeFlag(3, 3, 0)
	event.DbgSetAnalyzeFlag(3, 4, 0)
	event.DbgSetAnalyzeFlag(3, 5, 0)
	event.DbgSetAnalyzeFlag(3, 6, 0)
	event.DbgSetAnalyzeFlag(3, 7, 0)
	event.DbgSetAnalyzeFlag(3, 8, 0)
	event.DbgSetAnalyzeFlag(3, 9, 0)
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.SetFlag(508, 0)
	event.MapJump_3(-1, 102, 151)
	vm.wait(1)
end

--- Event 15220, which map data, a script or the engine runs by number.
function script.event_15220()
	event.SetFlag(520, 1)
	event.SetFlag(522, 0)
	event.JoinPartyMember(1, 0)
	helper_de7d1d4b(0.0, 0.0, 0.0, vm.f32(6.2831855))
	event.MapJump_2(-1, "g04")
	vm.wait(2)
end

--- Event 15480, which map data, a script or the engine runs by number.
function script.event_15480()
	event.DbgSetAnalyzeFlag(3, 3, 0)
	event.DbgSetAnalyzeFlag(3, 4, 0)
	event.DbgSetAnalyzeFlag(3, 5, 0)
	event.DbgSetAnalyzeFlag(3, 6, 0)
	event.DbgSetAnalyzeFlag(3, 7, 0)
	event.DbgSetAnalyzeFlag(3, 8, 0)
	event.DbgSetAnalyzeFlag(3, 9, 0)
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.SetFlag(548, 0)
	event.SetFlag(552, 1)
	event.SetFlag(556, 1)
	helper_8c9c4be7()
	event.MapJump_3(-1, 102, 100)
	vm.wait(2)
end

--- Event 15520, which map data, a script or the engine runs by number.
function script.event_15520()
	event.DbgSetAnalyzeFlag(3, 7, 0)
	event.DbgSetAnalyzeFlag(3, 8, 0)
	event.DbgSetAnalyzeFlag(3, 9, 0)
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.DbgSetAnalyzeFlag(3, 3, 1)
	event.DbgSetAnalyzeFlag(3, 4, 1)
	event.DbgSetAnalyzeFlag(3, 5, 1)
	event.DbgSetAnalyzeFlag(3, 6, 1)
	event.SetFlag(548, 1)
	event.SetFlag(552, 0)
	event.SetFlag(556, 1)
	event.MapJump_3(-1, 102, 100)
	vm.wait(1)
end

--- Event 15560, which map data, a script or the engine runs by number.
function script.event_15560()
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.DbgSetAnalyzeFlag(3, 3, 1)
	event.DbgSetAnalyzeFlag(3, 4, 1)
	event.DbgSetAnalyzeFlag(3, 5, 1)
	event.DbgSetAnalyzeFlag(3, 6, 1)
	event.DbgSetAnalyzeFlag(3, 7, 1)
	event.DbgSetAnalyzeFlag(3, 8, 1)
	event.DbgSetAnalyzeFlag(3, 9, 1)
	event.DbgSetAnalyzeFlag(3, 10, 1)
	event.SetFlag(548, 1)
	event.SetFlag(552, 1)
	event.SetFlag(556, 0)
	event.MapJump_3(-1, 102, 100)
	vm.wait(1)
end

return script
