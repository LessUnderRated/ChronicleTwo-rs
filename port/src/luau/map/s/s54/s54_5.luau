--!strict
-- map/s/s54/s54_5.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_45a6628c = require("@lib/event/helper_45a6628c")
local helper_47084b1b = require("@lib/event/helper_47084b1b")
local helper_635196bf = require("@lib/event/helper_635196bf")
local helper_7348fd06 = require("@lib/event/helper_7348fd06")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_7d7eee8f = require("@lib/event/helper_7d7eee8f")
local helper_80ad60c2 = require("@lib/event/helper_80ad60c2")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_e412b50e = require("@lib/event/helper_e412b50e")
local helper_f0ee9a01 = require("@lib/event/helper_f0ee9a01")
local wait_frames = require("@lib/event/wait_frames")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	event.StopBgm(0)
	event.LoadSound(8684)
	flag = event.GetFlag(808) or flag
	if flag == 1 then
		helper_635196bf()
	end
end

--- Event 28010, which map data, a script or the engine runs by number.
local function event_28010()
	event.Initialize()
	event.SetFadeOut(0)
	vm.wait(1)
	event.StopBgm(0)
	wait_frames(6)
	event.LoadBgm(107)
	event.PlayBgm(0)
	event.LoadMonsterFile(628, 1)
	event.LoadMonsterFile(1006, 0)
	event.AutoSetMonster(628, 0.0, 0.0, 800.0, 0.0, 3.14, 0.0)
	helper_7d7eee8f(0.0, 0.0, 300.0, 0.0)
	event.SetCameraRef(0.0, 30.0, 300.0)
	event.SetCameraPos(0.0, 40.0, 180.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	event_99()
	helper_7d7eee8f(0.0, 0.0, 0.0, 0.0)
	event.SetCameraRef(0.0, 30.0, 0.0)
	event.SetCameraPos(0.0, 40.0, -120.0)
	event.ResetCamera(0)
	flag = event.GetFlag(808) or flag
	if flag == 0 then
		helper_e412b50e()
		event.SetBitCtrl(1, 1)
		vm.wait(2)
		helper_7d7eee8f(0.0, 0.0, 300.0, 0.0)
		event.SetCameraRef(0.0, 30.0, 300.0)
		event.SetCameraPos(0.0, 40.0, 180.0)
		event.ResetCamera(0)
		event.LoadMonsterFile(628, 1)
		event.LoadMonsterFile(1006, 0)
		event.AutoSetMonster(628, 0.0, 0.0, 800.0, 0.0, 3.14, 0.0)
	end
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 151, which map data, a script or the engine runs by number.
script.event_151 = event_28010

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	local active_chr_no: s32 = 0
	local var1: any = 0
	local stage_id: s32 = 0
	local var3: s32 = 0
	local argc: s32 = 0
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
	event.SetMesQuestionGyou(0, 0)
	event.SetMesWindowMode(0, 5)
	event.SetMesDrawspeed(0, 1)
	var1 = helper_bac0e30d(0, 10, 8, 256, 208, 2, 1)
	if var1 == 0 then
		event.SetFadeOut(30)
		wait_frames(30)
		stage_id = event.DngGetStageId() or stage_id
		var3 = event.DngGetFloorId() or var3
		argc = event.GetNextFloor(var3, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var3, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		event.LoadScript("d07/d07.stb", 1000)
	else
		event.Finish()
	end
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.FadeOutBgm(20)
		event.SetFadeOut(20)
		at = 1
		wait_frames(20)
		event.StopBgm(0)
		event.DelMonster(-1)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
		end
		at = 2
		helper_7348fd06()
		event.SetBitCtrl(1, 0)
		helper_635196bf()
		helper_7d7eee8f(0.0, 0.0, 700.0, 0.0)
		event.SetCameraRef(0.0, 30.0, 700.0)
		event.SetCameraPos(0.0, 40.0, 580.0)
		event.ResetCamera(0)
		event.SetFadeIn(30)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_7348fd06()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 0)
					helper_635196bf()
					helper_7d7eee8f(0.0, 0.0, 700.0, 0.0)
					event.SetCameraRef(0.0, 30.0, 700.0)
					event.SetCameraPos(0.0, 40.0, 580.0)
					event.ResetCamera(0)
					event.SetFadeIn(30)
					event.Finish()
					return
				end)
			end
			helper_45a6628c()
			helper_43f02c95(0.0, 0.0, 700.0, 0.0)
			return 0
		end
		return nil
	end)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(808) or flag
		flag_2 = event.GetFlag(812) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var2 = 0
			var2 = vm.float_bits(event.GetRand(100)) or var2
			if var2 < 50 then
				at = 1
				helper_47084b1b(0, 8590060)
			else
				at = 2
				helper_47084b1b(0, 8590070)
			end
			return
		end
		at = 3
		helper_f0ee9a01(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_80ad60c2(0, 8590070)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		return nil
	end)
end

--- Event 18080, which map data, a script or the engine runs by number.
function script.event_18080()
	event_99()
	helper_e412b50e()
end

--- Event 18120, which map data, a script or the engine runs by number.
function script.event_18120()
	event_99()
	helper_7348fd06()
end

script.event_28010 = event_28010

return script
