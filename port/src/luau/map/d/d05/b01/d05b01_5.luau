--!strict
-- map/d/d05/b01/d05b01_5.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ebc8957 = require("@lib/event/helper_0ebc8957")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_47084b1b = require("@lib/event/helper_47084b1b")
local helper_4aae2296 = require("@lib/event/helper_4aae2296")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_724a67a8 = require("@lib/event/helper_724a67a8")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_80ad60c2 = require("@lib/event/helper_80ad60c2")
local helper_828a2144 = require("@lib/event/helper_828a2144")
local helper_92ffd5d7 = require("@lib/event/helper_92ffd5d7")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_eaa348bc = require("@lib/event/helper_eaa348bc")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_f0ee9a01 = require("@lib/event/helper_f0ee9a01")
local helper_f57795f8 = require("@lib/event/helper_f57795f8")
local wait_frames = require("@lib/event/wait_frames")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	local flag_2: s32 = 0
	event.StopBgm(0)
	event.LoadSound(5683)
	flag = event.GetFlag(526) or flag
	if flag == 1 then
		event.FuncPointShow("d05", "func", 0)
		event.EohSyncObj_3(0, "d05", "d05ba02-a")
		event.EohSetShow(0, 0)
		event.EohSyncObj_4(0, "d05", "d05b01_1", "takil")
		event.EohSetScale(0, 0.43, 1.0, 1.0)
		event.EohSyncObj_4(0, "d05", "d05b01_1", "takir")
		event.EohSetScale(0, 0.43, 1.0, 1.0)
		event.FuncPointShow("p01", "invent_2023-1", 1)
	end
	flag_2 = event.GetFlag(528) or flag_2
	if flag_2 == 0 then
		event.EohSyncObj_3(0, "d05", "d05ba03-a")
		event.EohSetShow(0, 1)
	else
		event.FuncPointShow("", "e528", 0)
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event.Initialize()
	event.SetFadeOut(0)
	event_99()
	event.CheckMcLoad()
	vm.wait(1)
	helper_9dafbc83(0.0, -30.0, 1600.0, vm.f32(3.14))
	event.SetCameraRef(0.0, 0.0, 1600.0)
	event.SetCameraPos(0.0, 10.0, 1700.0)
	event.ResetCamera(0)
	event.SetFadeIn(15)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_92ffd5d7

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local active_chr_no: s32 = 0
	local var1: any = 0
	event.Initialize()
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
	var1 = helper_ed4dc120(2, -1)
	if var1 == 0 then
		event.SetFadeOut(15)
		wait_frames(15)
		event.LoadScript("d05/d05.stb", 1000)
	end
	event.Finish()
end

--- Event 400, which map data, a script or the engine runs by number.
function script.event_400()
	helper_f57795f8()
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local item: s32 = 0
	event.Initialize()
	event.ActchrSetDefMotion(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		if active_chr_no == 2 then
			helper_75684dd8(0, 22, 8, 0, 0)
		else
			helper_75684dd8(0, 23, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		event.Finish()
		return
	end
	var1 = event.GetEventData_2(6) or var1
	if var1 == 1 then
		event.Initialize()
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		var2 = helper_c292fa16(0, 2507, 5, 256, 208, var2)
		event.SetMesWindowMode(0, 7)
		event.SetMesDrawspeed(0, 0)
		if var2 == 1 then
			var1 = 2
		end
	end
	if var1 == 2 then
		event.SetStatusbarShow(0, 0.16666667)
		wait_frames(6)
		event.GotoUseItem(354)
		vm.wait(5)
		item = vmhost.used_item() or item
		if item == 354 then
			event.FuncPointShow("d05", "func", 0)
			event.EohSyncObj_3(0, "d05", "d05ba02-a")
			event.EohSetShow(0, 0)
			event.FuncPointShow("p01", "invent_2023-1", 1)
			helper_eaa348bc()
			return
		elseif item <= 0 then
			event.Finish()
		else
			helper_5fb66cb1()
		end
		event.SetStatusbarShow(1, 0.16666667)
		wait_frames(6)
	end
	event.Finish()
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetBitCtrl(1, 1)
		event.SetFadeOut(15)
		at = 1
		wait_frames(15)
		event.FuncPointShow("", "e528", 0)
		at = 2
		helper_4aae2296()
		at = 3
		vm.wait(3)
		event.LoadMonsterFile(512, 1)
		event.AutoSetMonster(512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		helper_9dafbc83(0.0, 0.0, 300.0, vm.f32(3.14))
		event.SetCameraRef(0.0, 30.0, 300.0)
		event.SetCameraPos(0.0, 40.0, 400.0)
		event.ResetCamera(0)
		event.SetFadeIn(15)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_4aae2296()
				return vm.continue_with(function()
					at = 3
					vm.wait(3)
					event.LoadMonsterFile(512, 1)
					event.AutoSetMonster(512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					helper_9dafbc83(0.0, 0.0, 300.0, vm.f32(3.14))
					event.SetCameraRef(0.0, 30.0, 300.0)
					event.SetCameraPos(0.0, 40.0, 400.0)
					event.ResetCamera(0)
					event.SetFadeIn(15)
					event.Finish()
					return
				end)
			end
			helper_43f02c95(0.0, 0.0, 300.0, vm.f32(3.14))
			return 0
		end
		return nil
	end)
end

--- Event 560, which map data, a script or the engine runs by number.
function script.event_560()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(15)
		at = 1
		wait_frames(15)
		event.DelMonster(-1)
		event.JoinPartyMember(1, 1)
		event.SetCharaChangeFlag(1, 1)
		event.SetCharaChangeMask(1, 1)
		event.JoinPartyMember(3, 1)
		event.SetCharaChangeFlag(3, 1)
		event.SetCharaChangeMask(3, 1)
		at = 2
		helper_828a2144()
		event.BgmLoadCancel()
		event.LoadDungeonMapFile("s49")
		event.LoadScript("s49/s49.stb", 500)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_828a2144()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.LoadDungeonMapFile("s49")
					event.LoadScript("s49/s49.stb", 500)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 561, which map data, a script or the engine runs by number.
function script.event_561()
	event.ResetEventTrg()
	helper_0ebc8957()
	event.FuncPointShow("", "e528", 0)
	event.FuncPointShow("d05", "func", 0)
	event.FuncPointShow("p01", "invent_2023-1", 1)
	event.EohSyncObj_3(0, "d05", "d05ba03-a")
	event.EohSetShow(0, 1)
	event.EohSyncObj_4(0, "d05", "d05b01_1", "takil")
	event.EohSetTranslate(0, -330.0, 0.0, 200.0)
	event.EohSyncObj_4(0, "d05", "d05b01_1", "takir")
	event.EohSetTranslate(0, 330.0, 0.0, 200.0)
	event.LoadMonsterFile(511, 1)
	event.AutoSetMonster(511, 0.0, 0.0, -200.0, 0.0, 0.0, 0.0)
	event.SetCharaPos(0, 0.0, 0.0, 300.0)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.SetCameraPos(0.0, 40.0, 420.0)
	event.SetCameraRef(0.0, 30.0, 300.0)
	event.ResetCamera(0)
	event.SetFadeIn(15)
	event.Finish()
end

--- Event 570, which map data, a script or the engine runs by number.
function script.event_570()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.FadeOutBgm(0)
		event.SetFadeOut(15)
		at = 1
		wait_frames(15)
		event.StopBgm(0)
		event.DelMonster(-1)
		at = 2
		helper_724a67a8()
		event.SetFloorInfo(4, 22, 5, 2)
		event.BgmLoadCancel()
		event.LoadDungeonMapFile("s49")
		event.LoadScript("s49/s49.stb", 510)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_724a67a8()
				return vm.continue_with(function()
					event.SetFloorInfo(4, 22, 5, 2)
					event.BgmLoadCancel()
					event.LoadDungeonMapFile("s49")
					event.LoadScript("s49/s49.stb", 510)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 571, which map data, a script or the engine runs by number.
function script.event_571()
	event.SetBitCtrl(1, 0)
	event.ResetEventTrg()
	helper_92ffd5d7()
	event.GotoEdit(3, 500)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	event.Initialize()
	vm.wait(1)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(35)
	event.PlayBgm(0)
	event.FuncPointShow("d05", "func", 0)
	event.FuncPointShow("", "e528", 0)
	event.LoadMonsterFile(511, 1)
	event.AutoSetMonster(511, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local var1: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(532) or flag
		flag_2 = event.GetFlag(536) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var1 = 0
			var1 = vm.float_bits(event.GetRand(100)) or var1
			if var1 < 50 then
				at = 1
				helper_47084b1b(0, 8540060)
			else
				at = 2
				helper_47084b1b(0, 8540070)
			end
			return
		end
		flag_3 = event.GetFlag(528) or flag_3
		if flag_3 ~= 0 and flag == 0 then
			var1 = 0
			var1 = vm.float_bits(event.GetRand(100)) or var1
			if var1 < 50 then
				at = 3
				helper_47084b1b(0, 8530100)
			else
				at = 4
				helper_47084b1b(0, 8530110)
			end
			return
		end
		at = 5
		helper_f0ee9a01(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_80ad60c2(0, 8540070)
			end
			return 0
		end
		if at <= 4 then
			if at <= 3 then
				helper_80ad60c2(0, 8530110)
			end
			return 0
		end
		if at <= 5 then
			return 0
		end
		return nil
	end)
end

--- Event 15260, which map data, a script or the engine runs by number.
function script.event_15260()
	event.StopBgm(0)
	helper_eaa348bc()
end

--- Event 15280, which map data, a script or the engine runs by number.
script.event_15280 = helper_4aae2296

--- Event 15320, which map data, a script or the engine runs by number.
function script.event_15320()
	helper_828a2144()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("s49")
	event.LoadScript("s49/s49.stb", 500)
end

--- Event 15360, which map data, a script or the engine runs by number.
function script.event_15360()
	helper_724a67a8()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("s49")
	event.LoadScript("s49/s49.stb", 510)
end

--- Event 25020, which map data, a script or the engine runs by number.
function script.event_25020()
	event.Initialize()
	vm.wait(1)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(190)
	event.PlayBgm(0)
	event.FuncPointShow("", "e528", 0)
	event.LoadMonsterFile(512, 1)
	event.AutoSetMonster(512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.Finish()
end

return script
