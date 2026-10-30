--!strict
-- map/s/s13/s13_3.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_5f7fbd09 = require("@lib/event/helper_5f7fbd09")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_874b82cd = require("@lib/event/helper_874b82cd")
local helper_926d0569 = require("@lib/event/helper_926d0569")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_ccc74d93 = require("@lib/event/helper_ccc74d93")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	event.StopBgm(0)
	event.LoadSound(2694)
	flag = event.GetFlag(624) or flag
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
	flag = event.GetFlag(624) or flag
	if flag == 0 then
		helper_ccc74d93()
		event.FuncPointShow("", "rapis", 0)
		event.LoadMonsterFile(609, 1)
		event.LoadMonsterFile(610, 0)
		event.AutoSetMonster(609, 0.0, 0.0, -800.0, 0.0, 0.0, 0.0)
	end
	event.SetBitCtrl(1, if flag == 0 then 1 else 0)
	helper_9dafbc83(0.0, 0.0, 1000.0, vm.f32(3.14))
	event.SetCameraRef(0.0, 30.0, 1000.0)
	event.SetCameraPos(0.0, 40.0, 1120.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_ccc74d93

--- Event 160, which map data, a script or the engine runs by number.
function script.event_160()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 161, which map data, a script or the engine runs by number.
function script.event_161()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		at = 1
		vm.wait(1)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetStatus(1, 0, 256, 1)
		event.LoadMotion(5, "event/time_gate/blue/c02a_warp.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetCharaPos(0, 91.79, 22.67, -311.8)
		event.SetCharaRot(0, 0.0, 2.52, 0.0)
		event.LoadChara(5, "event/time_gate/blue/atora_shine2.gltf", "info", 8)
		event.CharaActive(1, 8)
		event.SetCharaPos(0, 91.79, -0.0, -311.8)
		event.SetCharaRot(0, 0.0, 2.52, 0.0)
		event.SetCharaPos(8, 93.06, 22.75, -313.0)
		event.SetCharaRot(8, 0.0, 2.44, 0.0)
		event.SetMotion(8, "発動", 4)
		at = 2
		wait_frames(6)
		event.SetMotion(8, "発動", 1)
		event.ObjsSetMotion(0, "タイムワープ", 6)
		event.ObjsNextMotion(0, "タイムワープL", 5)
		at = 3
		wait_objects(0)
		do
			local out1, out2, out3 = event.EohGetFramePos(0, "atoramiria")
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		print("pos[0]=", vm.float(pos_x), "---------------\n")
		print("pos[1]=", vm.float(pos_y), "---------------\n")
		print("pos[2]=", vm.float(pos_z), "---------------\n")
		event.SetCharaPos(0, 91.79, -0.0, -311.8)
		event.SetCharaRot(0, 0.0, 2.52, 0.0)
		at = 4
		vm.wait(4)
		at = 5
		helper_c956b4a2(64)
		event.DelExtMotion(0)
		event.DeleteChara(8)
		event.SetStatus(1, 0, 256, 0)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 5 then
			if at <= 1 then
				wait_frames_skipping(6)
			end
			if at <= 2 then
				helper_238b5abc(0)
			end
			if at <= 3 then
				print("pos[0]=", vm.float(pos_x), "---------------\n")
				print("pos[1]=", vm.float(pos_y), "---------------\n")
				print("pos[2]=", vm.float(pos_z), "---------------\n")
			end
			if at <= 4 then
				helper_874b82cd(64)
			end
			return 0
		end
		return nil
	end)
end

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
	flag = event.GetFlag(624) or flag
	if flag == 0 then
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		event.MesMake_2(0, "Du hast den Edelstein\nnoch nicht!")
		helper_75684dd8(0, -1, 5, 256, 208)
		event.Finish()
		return
	end
	var2 = helper_ed4dc120(2, -1)
	if var2 == 0 then
		event.SetFadeOut(15)
		wait_frames(15)
		event.DelMonster(-1)
		event.LoadScript("d02/d02.stb", 1000)
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
		event.AddItem(365, 1)
		event.SetFadeOut(10)
		at = 3
		wait_frames(10)
		stage_id = event.DngGetStageId() or stage_id
		var2 = event.DngGetFloorId() or var2
		event.SetFloorInfo(stage_id, var2, 5, 2)
		at = 4
		helper_5f7fbd09()
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
				helper_5f7fbd09()
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

--- Event 550, which map data, a script or the engine runs by number.
-- Defined empty, so the engine runs this instead of its default.
function script.event_550() end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	event.Initialize()
	event.DelMonster(-1)
	event.ActchrSetDefMotion(0)
	event.FuncPointShow("", "rapis", 1)
	event.SetLoadbgFile_1("snd2/bgm/bg_193.sound.json")
	helper_479dc9e9()
	event.LoadBgmPack(193)
	event.PlayBgm(0)
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- Event 26010, which map data, a script or the engine runs by number.
function script.event_26010()
	event.Initialize()
	vm.wait(1)
	event.LoadMonsterFile(609, 1)
	event.LoadMonsterFile(610, 0)
	event.AutoSetMonster(609, 0.0, 0.0, -800.0, 0.0, 0.0, 0.0)
	event.DngPause(16384, 1)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(190)
	event.PlayBgm(0)
	event.SetFadeIn(30)
	event.Finish()
end

return script
