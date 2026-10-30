--!strict
-- map/s/s16/s16_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_598cb659 = require("@lib/event/helper_598cb659")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_80827cc3 = require("@lib/event/helper_80827cc3")
local helper_926d0569 = require("@lib/event/helper_926d0569")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_frames = require("@lib/event/wait_frames")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	event.StopBgm(0)
	event.LoadSound(5694)
	flag = event.GetFlag(636) or flag
	if flag == 1 then
		helper_926d0569()
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	event.Initialize()
	event_99()
	flag = event.GetFlag(636) or flag
	if flag == 0 then
		helper_598cb659()
		event.FuncPointShow("", "rapis", 0)
		event.LoadMonsterFile(613, 1)
		event.AutoSetMonster(613, 0.0, 0.0, -200.0, 0.0, 0.0, 0.0)
	end
	event.SetBitCtrl(1, if flag == 0 then 1 else 0)
	helper_9dafbc83(0.0, vm.f32(33.9), vm.f32(1530.4), vm.f32(3.14))
	event.SetCameraRef(0.0, 63.9, 1530.4)
	event.SetCameraPos(0.0, 83.9, 1650.4)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_598cb659

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local var2: any = 0
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
	flag = event.GetFlag(636) or flag
	if flag == 0 then
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		event.MesMake_2(0, "Non hai ancora la gemma!")
		helper_75684dd8(0, -1, 5, 256, 208)
		event.Finish()
		return
	end
	var2 = helper_ed4dc120(2, -1)
	if var2 == 0 then
		event.SetFadeOut(15)
		wait_frames(15)
		event.DelMonster(-1)
		event.LoadScript("d05/d05.stb", 1000)
	end
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local stage_id: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				at = 1
				helper_75684dd8(0, 22, 5, 256, 208)
			else
				at = 2
				helper_75684dd8(0, 23, 5, 256, 208)
			end
			event.Finish()
			return
		end
		event.AddItem(368, 1)
		event.SetFadeOut(10)
		at = 3
		wait_frames(10)
		stage_id = event.DngGetStageId() or stage_id
		var2 = event.DngGetFloorId() or var2
		event.SetFloorInfo(stage_id, var2, 5, 2)
		at = 4
		helper_80827cc3()
		event.SetBitCtrl(1, 0)
		event.SetFadeIn(10)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ee1c51d0(0, 23, 5, 256, 208)
			end
			return 0
		end
		if at <= 4 then
			if at <= 3 then
				at = 4
				helper_80827cc3()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 0)
					event.SetFadeIn(10)
					event.Finish()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- The dungeon system event run when every monster on the floor has been defeated.
function script.floor_clear()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.DelMonster(-1)
	event.FuncPointShow("", "rapis", 1)
	event.SetLoadbgFile_1("snd2/bgm/bg_193.sound.json")
	helper_479dc9e9()
	event.LoadBgmPack(193)
	event.PlayBgm(0)
	event.Finish()
end

--- Event 26040, which map data, a script or the engine runs by number.
function script.event_26040()
	event.Initialize()
	vm.wait(1)
	event.LoadMonsterFile(613, 1)
	event.AutoSetMonster(613, 0.0, 0.0, -200.0, 0.0, 0.0, 0.0)
	event.DngPause(16384, 1)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(190)
	event.PlayBgm(0)
	event.SetFadeIn(30)
	event.Finish()
end

return script
