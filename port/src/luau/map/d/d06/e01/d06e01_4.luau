--!strict
-- map/d/d06/e01/d06e01_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_47084b1b = require("@lib/event/helper_47084b1b")
local helper_571276f7 = require("@lib/event/helper_571276f7")
local helper_5975de44 = require("@lib/event/helper_5975de44")
local helper_624074bd = require("@lib/event/helper_624074bd")
local helper_6e3126e0 = require("@lib/event/helper_6e3126e0")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_78697792 = require("@lib/event/helper_78697792")
local helper_7df574d3 = require("@lib/event/helper_7df574d3")
local helper_80ad60c2 = require("@lib/event/helper_80ad60c2")
local helper_9cbd3d7a = require("@lib/event/helper_9cbd3d7a")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_ab1a738b = require("@lib/event/helper_ab1a738b")
local helper_abdda14b = require("@lib/event/helper_abdda14b")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_f0ee9a01 = require("@lib/event/helper_f0ee9a01")
local helper_f57795f8 = require("@lib/event/helper_f57795f8")
local helper_fc1eb830 = require("@lib/event/helper_fc1eb830")
local helper_fca78145 = require("@lib/event/helper_fca78145")
local wait_frames = require("@lib/event/wait_frames")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99() end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local mc_load: s32 = 0
	local flag: s32 = 0
	local old_map_no: s32 = 0
	local var3: s32 = 0
	event_99()
	mc_load = event.CheckMcLoad() or mc_load
	if mc_load == 1 then
		helper_9dafbc83(20.0, 280.0, -600.0, vm.f32(3.14))
		event.ResetCamera(1, 3.14, 10.0)
		event.SetFadeIn(30)
	else
		flag = event.GetFlag(702) or flag
		if flag == 0 then
			helper_78697792()
			helper_9dafbc83(vm.f32(649.7), 0.0, vm.f32(-122.2), vm.f32(1.71))
			event.ResetCamera(1, 3.14, 0.0)
			event.SetFadeIn(30)
			return
		end
		old_map_no = event.GetOldMapNo() or old_map_no
		var3 = event.GetMapType(old_map_no) or var3
		if var3 ~= -1 then
			if old_map_no == 128 or var3 == 7 or var3 == 8 then
				helper_9dafbc83(0.0, 280.0, -650.0, 0.0)
				event.ResetCamera(1, 3.14, 10.0)
				event.SetFadeIn(30)
			else
				helper_9dafbc83(0.0, 0.0, 600.0, vm.f32(3.14))
				event.ResetCamera(1, 3.14, 10.0)
				event.SetFadeIn(30)
			end
		end
	end
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	event.Initialize()
	vm.wait(1)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(36)
	event.PlayBgm(0)
	event.EohSyncObj_2(0, "p05_d06e01-0")
	event.EohSetShow(0, 1)
	event.SetFadeIn(30)
	event.LoadMonsterFile(515, 1)
	event.AutoSetMonster(515, 0.4, 62.5, -115.7, 0.0, 0.0, 0.0)
	event.Finish()
end

--- Event 152, which map data, a script or the engine runs by number.
function script.event_152()
	event.Initialize()
	vm.wait(1)
	event.DngPause(15, 1)
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetPos(0, 256, 208)
	event.SpriteSetPutsize(0, 512, 416)
	event.SpriteSetColor(0, 0, 0, 0, 128)
	event.SpriteSetDraw(0, 0)
	event.EohSyncSprite(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetColor(0, 128.0, 128.0, 128.0, 0.0, 30)
	event.SpriteSetDraw(0, 1)
	event.ObjsSetColor(0, 0.0, 0.0, 0.0, 128.0)
	event.SetMesWindowMode(0, 7)
	event.SetFadeIn(15)
	event.MesMake_2(0, "e610『グリフォンの言い分』")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.ObjsSetColor(0, 0.0, 0.0, 0.0, 0.0, 30)
	wait_frames(30)
	event.SpriteSetDraw(0, 0)
	event.DngPause(15, 0)
	event.Finish()
end

--- Event 153, which map data, a script or the engine runs by number.
function script.event_153()
	event.Initialize()
	vm.wait(1)
	event.SetMesWindowMode(0, 7)
	event.SetFadeIn(15)
	event.MesMake_2(0, "勝利")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.Finish()
end

--- Event 154, which map data, a script or the engine runs by number.
function script.event_154()
	event.Initialize()
	vm.wait(1)
	event.AddItem(19, 1)
	event.AddItem(8, 1)
	event.AddItem(30, 1)
	event.AddItem(33, 1)
	event.AddItem(38, 1)
	event.AddItem(77, 1)
	event.AddItem(80, 1)
	event.AddItem(59, 1)
	event.AddItem(87, 1)
	event.AddItem(55, 1)
	event.AddItem(72, 1)
	event.AddItem(84, 1)
	event.AddItem(63, 1)
	event.AddItem(107, 1)
	event.AddItem(96, 1)
	event.AddItem(99, 1)
	event.AddItem(105, 1)
	event.Finish()
end

--- Event 155, which map data, a script or the engine runs by number.
function script.event_155()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 160, which map data, a script or the engine runs by number.
function script.event_160()
	event.SetCameraPos(0.0, 0.0, 0.0)
	event.SetCameraRef(0.0, 0.0, 0.0)
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local argc: s32 = 0
	argc = event.GetNowLoopNo() or argc
	if argc == 1 then
		if helper_624074bd() ~= 0 then
			event.MapJump_2(-1, "g05")
			vm.wait(2)
		end
	elseif helper_6e3126e0() ~= 0 then
		event.SetBitCtrl(1, 0)
		event.GotoEdit(177, 100)
	end
end

--- Event 210, which map data, a script or the engine runs by number.
function script.event_210()
	local var2: s32 = 0
	if helper_fca78145() ~= 0 then
		event.DngSetStageId(5)
		event.GotoMenu(3, 5)
		vm.wait(2)
		do
			local _, _, out3, _ = event.GetMenuParam_4()
			var2 = out3 or var2
		end
		if var2 == 0 then
			event.SetFadeIn(30)
			return
		else
			if var2 == 26 then
				event.BgmLoadCancel()
			end
			event.GotoDng(5, var2, 1010)
		end
	end
end

--- Event 400, which map data, a script or the engine runs by number.
script.event_400 = helper_f57795f8

--- Event 401, which map data, a script or the engine runs by number.
function script.event_401()
	helper_fc1eb830(0)
end

--- Event 402, which map data, a script or the engine runs by number.
function script.event_402()
	helper_fc1eb830(1)
end

--- Event 403, which map data, a script or the engine runs by number.
function script.event_403()
	helper_fc1eb830(2)
end

--- Event 404, which map data, a script or the engine runs by number.
function script.event_404()
	helper_fc1eb830(3)
end

--- Event 405, which map data, a script or the engine runs by number.
function script.event_405()
	helper_fc1eb830(4)
end

--- Event 406, which map data, a script or the engine runs by number.
function script.event_406()
	helper_fc1eb830(5)
end

--- Event 407, which map data, a script or the engine runs by number.
function script.event_407()
	helper_fc1eb830(6)
end

--- Event 408, which map data, a script or the engine runs by number.
function script.event_408()
	helper_fc1eb830(7)
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_5975de44()
	event.FuncPointShow("", "exit", 0)
	event.FuncPointShow("", "in_dng", 0)
	helper_abdda14b()
	event.SetBitCtrl(1, 1)
	vm.wait(2)
	event.EohSyncObj_2(0, "p05_d06e01-0")
	event.EohSetShow(0, 1)
	event.LoadMonsterFile(515, 1)
	event.AutoSetMonster(515, 0.4, 62.5, -115.7, 0.0, 0.0, 0.0)
	helper_9dafbc83(0.0, 0.0, 600.0, vm.f32(3.14))
	event.SetCameraRef(0.0, 30.0, 600.0)
	event.SetCameraPos(0.0, 40.0, 720.0)
	event.ResetCamera(0)
	event.SetFadeIn(20)
	event.Finish()
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(10)
		at = 1
		wait_frames(10)
		event.SndSeAllStop(5)
		event.DngPause(1041, 1)
		event.DngEffectAllClear()
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var0 = out1 or var0
			var1 = out2 or var1
			var2 = out3 or var2
		end
		do
			local out1, out2, out3 = event.GetCharaRot(0)
			var3 = out1 or var3
			var4 = out2 or var4
			var5 = out3 or var5
		end
		do
			local out1, out2, out3 = event.GetCameraPos()
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		do
			local out1, out2, out3 = event.GetCameraRef()
			pos_x_2 = out1 or pos_x_2
			pos_y_2 = out2 or pos_y_2
			pos_z_2 = out3 or pos_z_2
		end
		at = 2
		helper_9cbd3d7a()
		event.SetCharaPos(0, var0, var1, var2)
		event.SetCharaRot(0, var3, var4, var5)
		event.SetCameraPos(pos_x, pos_y, pos_z)
		event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
		event.ResetCamera(0)
		event.DngPause(1041, 0)
		event.SetFadeIn(10)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_9cbd3d7a()
				return vm.continue_with(function()
					event.SetCharaPos(0, var0, var1, var2)
					event.SetCharaRot(0, var3, var4, var5)
					event.SetCameraPos(pos_x, pos_y, pos_z)
					event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
					event.ResetCamera(0)
					event.DngPause(1041, 0)
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

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	local active_chr_no: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(10)
		at = 1
		wait_frames(10)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
		end
		event.DelMonster(-1)
		at = 2
		helper_7df574d3()
		event.SetBitCtrl(8, 1)
		event.LoadDungeonMapFile("s31")
		event.LoadScript("s31/s31.stb", 510)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_7df574d3()
				return vm.continue_with(function()
					event.SetBitCtrl(8, 1)
					event.LoadDungeonMapFile("s31")
					event.LoadScript("s31/s31.stb", 510)
					at = 3
					vm.wait(3)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 506, which map data, a script or the engine runs by number.
function script.event_506()
	helper_ab1a738b()
	event.LoadDungeonMapFile("s35")
	event.LoadScript("s35/s35.stb", 502)
	vm.wait(2)
end

--- Event 508, which map data, a script or the engine runs by number.
function script.event_508()
	helper_571276f7()
	event.SetBitCtrl(1, 0)
	event.GotoEdit(187, 100)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(608) or flag
		flag_2 = event.GetFlag(612) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var3 = vm.float_bits(event.GetRand(100)) or var3
			if var3 < 50 then
				at = 1
				helper_47084b1b(0, 8550080)
			else
				at = 2
				helper_47084b1b(0, 8550090)
			end
			return
		end
		at = 3
		helper_f0ee9a01(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_80ad60c2(0, 8550090)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		return nil
	end)
end

--- Event 16080, which map data, a script or the engine runs by number.
script.event_16080 = helper_5975de44

--- Event 16100, which map data, a script or the engine runs by number.
script.event_16100 = helper_9cbd3d7a

--- Event 16120, which map data, a script or the engine runs by number.
function script.event_16120()
	helper_7df574d3()
	event.SetBitCtrl(8, 1)
	event.LoadDungeonMapFile("s31")
	event.LoadScript("s31/s31.stb", 510)
	vm.wait(2)
end

--- Event 17020, which map data, a script or the engine runs by number.
script.event_17020 = helper_78697792

return script
