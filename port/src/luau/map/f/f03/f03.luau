--!strict
-- map/f/f03/f03.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_08c337b8 = require("@lib/event/helper_08c337b8")
local helper_13ff22fe = require("@lib/event/helper_13ff22fe")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_47990fb3 = require("@lib/event/helper_47990fb3")
local helper_575b46f3 = require("@lib/event/helper_575b46f3")
local helper_6ac55e60 = require("@lib/event/helper_6ac55e60")
local helper_6be25ed2 = require("@lib/event/helper_6be25ed2")
local helper_72334e82 = require("@lib/event/helper_72334e82")
local helper_72cb617b = require("@lib/event/helper_72cb617b")
local helper_7d7eee8f = require("@lib/event/helper_7d7eee8f")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_d0e95767 = require("@lib/event/helper_d0e95767")
local helper_d3e304cd = require("@lib/event/helper_d3e304cd")
local helper_fb78ba4a = require("@lib/event/helper_fb78ba4a")
local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local var0: s32 = 0
	event.EohSyncObj_2(1, "p04_f0301")
	var0 = helper_6be25ed2()
	if var0 == 0 then
		event.FuncPointShow("", "event_400", 0)
		event.FuncPointShow("", "event_401", 0)
		event.FuncPointShow("", "event_402", 0)
		event.FuncPointShow("", "event_403", 0)
		event.FuncPointShow("", "event_404", 0)
	else
		event.EohSetShow(1, 0)
	end
	if helper_13ff22fe() == 0 then
		event.EohSyncObj_2(1, "p14_f0301")
		event.EohSetShow(1, 0)
		event.EohSyncObj_2(1, "p15_f0301")
		event.EohSetShow(1, 0)
		event.EohSyncObj_2(1, "p16_f0301")
		event.EohSetShow(1, 0)
		event.EohSyncObj_2(1, "p17_f0301")
		event.EohSetShow(1, 0)
	end
	helper_d0e95767()
end

--- Helper function.
local function helper_1d55c()
	local active_chr_no: s32 = 0
	vm.section(function()
		event.SetFlag(456, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e456/")
		event.LoadMes(0, 5, "e456.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e456_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e456_monica.gltf", "info", 0)
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
			event.LoadMotion(5, "event/e400/e456/e456_mints.gltf", "info", 32)
			event.EohSyncChara(0, 32)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 32)
			event.LoadEquip(5, 1, 4, "info", 32)
			event.LoadEquip(5, 1, 3, "info", 32)
			event.LoadEquip(5, 1, 2, "info", 32, 33)
			event.LoadMotion(5, "event/e400/e456/e456_monica.gltf", "info", 32)
			event.EohSyncChara(1, 32)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.CharaActive(32)
		event.CharaActive(33)
		event.EohSetPos(0, -15.0, 190.0, 980.0)
		event.EohSetRot(0, 0.0, 2.42, 0.0)
		event.EohSetFootSoundId(0, 6)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, 10.0, 190.0, 1010.0)
		event.EohSetRot(1, 0.0, 2.66, 0.0)
		event.EohSetFootSoundId(1, 6)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-121.94, 324.32, 1079.66)
		event.CmrsSetRef(60.51, 330.31, 947.34)
		event.CmrsMove2(-121.94, 324.32, 1079.66, -127.07, 330.31, 851.61, 60, 0, 1.0)
		event.SetFadeIn(30)
		wait_camera()
		event.CmrsSetPos(-43.47, 251.31, 889.38)
		event.CmrsSetRef(0.73, 198.66, 1005.94)
		event.ObjsSetMotion(0, "指さし", 6)
		event.ObjsNextMotion(0, "指さしL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(4560010)
		wait_objects(0)
		event.ObjsSetMotion(0, "指さし戻り", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(4560020)
		wait_objects(0)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, -15.0, 190.0, 820.0, 60)
		event.ObjsRotation(0, 0.0, 3.14, 0.0, 10)
		helper_888ab2a3(4)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMove(1, 10.0, 190.0, 870.0, 56)
		event.ObjsRotation(1, 0.0, 3.14, 0.0, 10)
		helper_888ab2a3(26)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(9)
	event.CancelDramaScene()
	event.CharaActive(0)
	event.CharaActive(32)
	event.CharaActive(33)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.LoadMes(0, -1)
	helper_9dafbc83(0.0, 190.0, 500.0, vm.f32(-3.14))
	event.ResetCamera(1, 3.14, 10)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_1ec20()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(460, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(4514)
		var0 = event.SndLoadSound_2(4514) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e460/")
		event.LoadMes(0, 5, "e460.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e460_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e460_monica.gltf", "info", 0)
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
			event.LoadMotion(5, "event/e400/e460/e460_mints.gltf", "info", 32)
			event.EohSyncChara(0, 32)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 32)
			event.LoadEquip(5, 1, 4, "info", 32)
			event.LoadEquip(5, 1, 3, "info", 32)
			event.LoadEquip(5, 1, 2, "info", 32, 33)
			event.LoadMotion(5, "event/e400/e460/e460_monica.gltf", "info", 32)
			event.EohSyncChara(1, 32)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.CharaActive(32)
		event.CharaActive(33)
		event.EohSetPos(0, 10.0, 190.0, 1010.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetFootSoundId(0, 6)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -15.0, 190.0, 980.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetFootSoundId(1, 6)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(1.18, 274.82, 1359.97)
		event.CmrsSetRef(120.59, 276.91, 1224.84)
		event.CmrsMove2(1.18, 274.82, 1359.97, -53.13, 276.91, 1185.49, 60, 0, 1.0)
		event.ObjsSetMotion(0, "歩き", 4)
		event.ObjsMotionDelay(0, 70)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, 10.0, 190.0, 950.0, 70)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMotionDelay(1, 80)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsMove(1, -15.0, 190.0, 900.0, 60)
		event.SetFadeIn(30)
		wait_camera()
		wait_objects(0)
		wait_objects(1)
		event.CmrsSetPos(-86.36, 229.97, 864.78)
		event.CmrsSetRef(-1.3, 198.75, 922.91)
		event.ObjsSetRot(0, 0.0, -2.54, 0.0)
		event.ObjsResetDaPosition(0)
		event.SndSePlay(var0, 0)
		event.ObjsSetRot(1, 0.0, -2.18, 0.0)
		event.ObjsSetMotion(1, "遠見", 6, -1.0, 1)
		event.ObjsNextMotion(1, "遠見Ｌ", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(4600010)
		wait_objects(1)
		event.SndSePlay(var0, 1)
		event.ObjsSetMotion(1, "遠見戻り", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(4600020)
		wait_objects(1)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMove(1, -15.0, 190.0, 740.0, 60)
		event.ObjsRotation(1, 0.0, 3.14, 0.0, 10)
		helper_888ab2a3(4)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, 10.0, 190.0, 790.0, 56)
		event.ObjsRotation(0, 0.0, 3.14, 0.0, 10)
		helper_888ab2a3(26)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(12)
	event.CancelDramaScene()
	event.CharaActive(0)
	event.CharaActive(32)
	event.CharaActive(33)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.LoadMes(0, -1)
	helper_9dafbc83(0.0, 190.0, 500.0, vm.f32(-3.14))
	event.ResetCamera(1, 3.14, 10)
	event.SetFadeIn(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local var1: s32 = 0
	local old_map_no: s32 = 0
	local var3: s32 = 0
	local old_sub_map_no: s32 = 0
	local get_old_interior_map_no: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event_99()
		helper_d0e95767()
		event.GetDioramaPercent(2)
		var1 = 0
		if helper_72334e82() ~= 0 then
			var1 = 1
			at = 1
			helper_1d55c()
		end
		if helper_72cb617b() ~= 0 then
			var1 = 1
			at = 2
			helper_1ec20()
		end
		if helper_08c337b8() ~= 0 then
			var1 = 1
			event.BgmPlayCancel()
			event.MapJump_3(-1, "f03i0301", 504)
			at = 3
			vm.wait(3)
		end
		if var1 == 1 then
			return
		end
		old_map_no = event.GetOldMapNo() or old_map_no
		if old_map_no == 2 then
			event.Initialize()
			at = 4
			vm.wait(4)
			helper_7d7eee8f(160.0, vm.f32(286.2), 1849.5, vm.f32(-2.87))
			event.ResetCamera(1, 3.14, 2.0)
			event.SetFadeIn(30)
		end
		if old_map_no == 110 then
			event.Initialize()
			at = 5
			vm.wait(5)
			var3 = event.GetCnt(2) or var3
			if var3 == 0 then
				helper_7d7eee8f(0.0, 360.0, -755.0, 0.0)
			end
			if var3 == 1 then
				helper_7d7eee8f(-315.0, 280.0, -885.0, vm.f32(-0.7853982))
			end
			if var3 == 2 then
				helper_7d7eee8f(-315.0, 280.0, -1515.0, vm.f32(-2.3561945))
			end
			if var3 == 3 then
				helper_7d7eee8f(315.0, 280.0, -1515.0, vm.f32(2.3561945))
			end
			if var3 == 4 then
				helper_7d7eee8f(315.0, 280.0, -885.0, vm.f32(0.7853982))
			end
			event.ResetCamera(1, 0.0, 2.0)
			event.SetFadeIn(30)
		end
		if old_map_no == 113 then
			event.Initialize()
			at = 6
			vm.wait(6)
			helper_7d7eee8f(1080.0, 190.0, -120.0, vm.f32(-2.355))
			event.ResetCamera(1, 0.0, 2.0)
			event.SetFadeIn(30)
		end
		if old_map_no == 141 then
			event.Initialize()
			at = 7
			vm.wait(7)
			helper_7d7eee8f(vm.f32(-1080.6), 190.0, vm.f32(-2277.9), vm.f32(0.77))
			event.ResetCamera(1, 0.0, 2.0)
			event.SetFadeIn(30)
		end
		if old_map_no == 142 then
			event.Initialize()
			at = 8
			vm.wait(8)
			helper_7d7eee8f(vm.f32(1050.1), 190.0, vm.f32(-2249.6), vm.f32(-0.77))
			event.ResetCamera(1, 0.0, 2.0)
			event.SetFadeIn(30)
		end
		if old_map_no == 114 then
			event.Initialize()
			at = 9
			vm.wait(9)
			helper_7d7eee8f(vm.f32(-1078.3), 190.0, -117.5, vm.f32(2.36))
			event.ResetCamera(1, 0.0, 2.0)
			event.SetFadeIn(30)
		end
		old_sub_map_no = event.GetOldSubmapNo() or old_sub_map_no
		get_old_interior_map_no = event.GetOldInteriorMapNo() or get_old_interior_map_no
		print("map_no=", old_map_no, "##############\n")
		print("old_submap_no=", old_sub_map_no, "##############\n")
		print("old_interior_map_no=", get_old_interior_map_no, "##############\n")
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				local _ = helper_575b46f3()
				var1 = 1
				at = 2
				helper_1ec20()
				return vm.continue_with(function()
					if helper_08c337b8() ~= 0 then
						var1 = 1
						event.BgmPlayCancel()
						event.MapJump_3(-1, "f03i0301", 504)
						at = 3
						vm.wait(3)
					end
					if var1 == 1 then
						return
					end
					old_map_no = event.GetOldMapNo() or old_map_no
					if old_map_no == 2 then
						event.Initialize()
						at = 4
						vm.wait(4)
						helper_7d7eee8f(160.0, vm.f32(286.2), 1849.5, vm.f32(-2.87))
						event.ResetCamera(1, 3.14, 2.0)
						event.SetFadeIn(30)
					end
					if old_map_no == 110 then
						event.Initialize()
						at = 5
						vm.wait(5)
						var3 = event.GetCnt(2) or var3
						if var3 == 0 then
							helper_7d7eee8f(0.0, 360.0, -755.0, 0.0)
						end
						if var3 == 1 then
							helper_7d7eee8f(-315.0, 280.0, -885.0, vm.f32(-0.7853982))
						end
						if var3 == 2 then
							helper_7d7eee8f(-315.0, 280.0, -1515.0, vm.f32(-2.3561945))
						end
						if var3 == 3 then
							helper_7d7eee8f(315.0, 280.0, -1515.0, vm.f32(2.3561945))
						end
						if var3 == 4 then
							helper_7d7eee8f(315.0, 280.0, -885.0, vm.f32(0.7853982))
						end
						event.ResetCamera(1, 0.0, 2.0)
						event.SetFadeIn(30)
					end
					if old_map_no == 113 then
						event.Initialize()
						at = 6
						vm.wait(6)
						helper_7d7eee8f(1080.0, 190.0, -120.0, vm.f32(-2.355))
						event.ResetCamera(1, 0.0, 2.0)
						event.SetFadeIn(30)
					end
					if old_map_no == 141 then
						event.Initialize()
						at = 7
						vm.wait(7)
						helper_7d7eee8f(vm.f32(-1080.6), 190.0, vm.f32(-2277.9), vm.f32(0.77))
						event.ResetCamera(1, 0.0, 2.0)
						event.SetFadeIn(30)
					end
					if old_map_no == 142 then
						event.Initialize()
						at = 8
						vm.wait(8)
						helper_7d7eee8f(vm.f32(1050.1), 190.0, vm.f32(-2249.6), vm.f32(-0.77))
						event.ResetCamera(1, 0.0, 2.0)
						event.SetFadeIn(30)
					end
					if old_map_no == 114 then
						event.Initialize()
						at = 9
						vm.wait(9)
						helper_7d7eee8f(vm.f32(-1078.3), 190.0, -117.5, vm.f32(2.36))
						event.ResetCamera(1, 0.0, 2.0)
						event.SetFadeIn(30)
					end
					old_sub_map_no = event.GetOldSubmapNo() or old_sub_map_no
					get_old_interior_map_no = event.GetOldInteriorMapNo() or get_old_interior_map_no
					print("map_no=", old_map_no, "##############\n")
					print("old_submap_no=", old_sub_map_no, "##############\n")
					print("old_interior_map_no=", get_old_interior_map_no, "##############\n")
					return
				end)
			end
			if at <= 2 then
				local _ = helper_fb78ba4a()
				var1 = 1
			end
			return 0
		end
		if at <= 9 then
			if at <= 4 then
				helper_43f02c95(160.0, vm.f32(286.2), 1849.5, vm.f32(-2.87))
			end
			if at <= 5 then
				helper_43f02c95(0.0, 360.0, -755.0, 0.0)
				helper_43f02c95(-315.0, 280.0, -885.0, vm.f32(-0.7853982))
				helper_43f02c95(-315.0, 280.0, -1515.0, vm.f32(-2.3561945))
				helper_43f02c95(315.0, 280.0, -1515.0, vm.f32(2.3561945))
				helper_43f02c95(315.0, 280.0, -885.0, vm.f32(0.7853982))
			end
			if at <= 6 then
				helper_43f02c95(1080.0, 190.0, -120.0, vm.f32(-2.355))
			end
			if at <= 7 then
				helper_43f02c95(vm.f32(-1080.6), 190.0, vm.f32(-2277.9), vm.f32(0.77))
			end
			if at <= 8 then
				helper_43f02c95(vm.f32(1050.1), 190.0, vm.f32(-2249.6), vm.f32(-0.77))
			end
			helper_43f02c95(vm.f32(-1078.3), 190.0, -117.5, vm.f32(2.36))
			print("map_no=", old_map_no, "##############\n")
			print("old_submap_no=", old_sub_map_no, "##############\n")
			print("old_interior_map_no=", get_old_interior_map_no, "##############\n")
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	helper_6ac55e60(160.0, vm.f32(286.2), 1849.5, 0.0)
	event.MapJump_2(-1, "g03")
	vm.wait(2)
end

--- Event 400, which map data, a script or the engine runs by number.
function script.event_400()
	helper_47990fb3(vm.f32(3.1415927), 1)
	event.SetCnt(2, 0)
	event.MapJump_2(-1, "f03i04")
	vm.wait(2)
end

--- Event 401, which map data, a script or the engine runs by number.
function script.event_401()
	helper_47990fb3(vm.f32(0.7853982), 0)
	event.SetCnt(2, 2)
	event.MapJump_2(-1, "f03i04")
	vm.wait(2)
end

--- Event 402, which map data, a script or the engine runs by number.
function script.event_402()
	helper_47990fb3(vm.f32(2.3561945), 0)
	event.SetCnt(2, 1)
	event.MapJump_2(-1, "f03i04")
	vm.wait(2)
end

--- Event 403, which map data, a script or the engine runs by number.
function script.event_403()
	helper_47990fb3(vm.f32(-2.3561945), 0)
	event.SetCnt(2, 4)
	event.MapJump_2(-1, "f03i04")
	vm.wait(2)
end

--- Event 404, which map data, a script or the engine runs by number.
function script.event_404()
	helper_47990fb3(vm.f32(-0.7853982), 0)
	event.SetCnt(2, 3)
	event.MapJump_2(-1, "f03i04")
	vm.wait(2)
end

--- Event 405, which map data, a script or the engine runs by number.
function script.event_405()
	local flag: s32 = 0
	local flag_2: s32 = 0
	helper_47990fb3(vm.f32(0.7853982), 0)
	flag = event.GetFlag(408) or flag
	flag_2 = event.GetFlag(412) or flag_2
	if flag == 1 and flag_2 == 0 then
		event.BgmLoadCancel()
	end
	event.MapJump_3(-1, "f03i0301", 100)
	vm.wait(2)
end

--- Event 406, which map data, a script or the engine runs by number.
function script.event_406()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	flag = event.GetFlag(400) or flag
	flag_2 = event.GetFlag(420) or flag_2
	if flag == 1 and flag_2 == 0 then
		event.SetMotion(0, "立ち")
		set_window_mode(0, 1)
		event.MesMake_2(0, "開かない。後で来てみよう。")
		show_message(0, -1, 5, 256, 208)
		return
	else
		flag_3 = event.GetFlag(428) or flag_3
		if flag_3 == 0 then
			event.BgmLoadCancel()
		end
	end
	helper_47990fb3(vm.f32(-2.3561945), 0)
	event.MapJump_3(-1, "f03i0302", 100)
	vm.wait(3)
end

--- Event 407, which map data, a script or the engine runs by number.
function script.event_407()
	helper_47990fb3(vm.f32(2.3561945), 0)
	event.MapJump_3(-1, "f03i0303", 100)
	vm.wait(2)
end

--- Event 408, which map data, a script or the engine runs by number.
function script.event_408()
	helper_47990fb3(vm.f32(-0.7853982), 0)
	event.MapJump_3(-1, "f03i0304", 100)
	vm.wait(2)
end

--- Event 1000, which map data, a script or the engine runs by number.
script.event_1000 = helper_d3e304cd

--- Event 14560, which map data, a script or the engine runs by number.
function script.event_14560()
	event.DbgSetAnalyzeFlag(2, 2, 0)
	event.DbgSetAnalyzeFlag(2, 3, 0)
	event.DbgSetAnalyzeFlag(2, 4, 0)
	event.DbgSetAnalyzeFlag(2, 5, 0)
	event.DbgSetAnalyzeFlag(2, 6, 0)
	event.DbgSetAnalyzeFlag(2, 7, 0)
	event.DbgSetAnalyzeFlag(2, 8, 0)
	event.DbgSetAnalyzeFlag(2, 9, 0)
	event.DbgSetAnalyzeFlag(2, 0, 1)
	event.DbgSetAnalyzeFlag(2, 1, 1)
	event.SetFlag(456, 0)
	event.SetFlag(460, 1)
	event.MapJump_3(-1, 82, 100)
	vm.wait(1)
end

--- Event 14600, which map data, a script or the engine runs by number.
function script.event_14600()
	event.DbgSetAnalyzeFlag(2, 3, 0)
	event.DbgSetAnalyzeFlag(2, 4, 0)
	event.DbgSetAnalyzeFlag(2, 5, 0)
	event.DbgSetAnalyzeFlag(2, 6, 0)
	event.DbgSetAnalyzeFlag(2, 7, 0)
	event.DbgSetAnalyzeFlag(2, 8, 0)
	event.DbgSetAnalyzeFlag(2, 9, 0)
	event.DbgSetAnalyzeFlag(2, 0, 1)
	event.DbgSetAnalyzeFlag(2, 1, 1)
	event.DbgSetAnalyzeFlag(2, 2, 1)
	event.SetFlag(456, 1)
	event.SetFlag(460, 0)
	event.MapJump_3(-1, 82, 100)
	vm.wait(1)
end

return script
