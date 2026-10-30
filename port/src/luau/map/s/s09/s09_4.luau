--!strict
-- map/s/s09/s09_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_050c9cee = require("@lib/event/helper_050c9cee")
local helper_07039683 = require("@lib/event/helper_07039683")
local helper_13965fb3 = require("@lib/event/helper_13965fb3")
local helper_358ee3a0 = require("@lib/event/helper_358ee3a0")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_7f95a402 = require("@lib/event/helper_7f95a402")
local helper_826a3ea7 = require("@lib/event/helper_826a3ea7")
local helper_83f038b5 = require("@lib/event/helper_83f038b5")
local helper_946c0402 = require("@lib/event/helper_946c0402")
local helper_98e2328c = require("@lib/event/helper_98e2328c")
local helper_9d1e4c6a = require("@lib/event/helper_9d1e4c6a")
local helper_9e146e8b = require("@lib/event/helper_9e146e8b")
local helper_a8de6f45 = require("@lib/event/helper_a8de6f45")
local helper_ad46c277 = require("@lib/event/helper_ad46c277")
local helper_b580d4fc = require("@lib/event/helper_b580d4fc")
local helper_c161ab52 = require("@lib/event/helper_c161ab52")
local helper_c21b6dfd = require("@lib/event/helper_c21b6dfd")
local helper_c99744f1 = require("@lib/event/helper_c99744f1")
local helper_d4129194 = require("@lib/event/helper_d4129194")
local helper_d7295df9 = require("@lib/event/helper_d7295df9")
local helper_db46662e = require("@lib/event/helper_db46662e")
local helper_e5f03808 = require("@lib/event/helper_e5f03808")
local helper_e6450f0b = require("@lib/event/helper_e6450f0b")
local helper_f10d721b = require("@lib/event/helper_f10d721b")
local helper_f4ec8310 = require("@lib/event/helper_f4ec8310")
local helper_f57795f8 = require("@lib/event/helper_f57795f8")
local helper_fdad3d3b = require("@lib/event/helper_fdad3d3b")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_2f098()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 32
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e400/e448/e448_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e400/e448/e448_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 37)
	end
	if active_chr_no == 1 then
		global0 = 32
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 37)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e400/e448/e448_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e400/e448/e448_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.LoadChara(5, "chara/p01_03a.gltf", "info", 38)
	event.CharaActive(0, 38)
	event.EohSyncChara(2, 38)
	event.ObjsInit(2, 38)
	event.ObjsSyncObj(2, 2)
	event.LoadChara(5, "chara/p01_06a.gltf", "info", 39)
	event.CharaActive(0, 39)
	event.EohSyncChara(3, 39)
	event.ObjsInit(3, 39)
	event.ObjsSyncObj(3, 3)
	event.EohSyncObj_2(4, "p01_train01")
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.LoadMes(0, 5, "event/e400/e448/e448_1.txt")
end

--- Helper function.
local function helper_2ecd0()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(37)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(37)
	end
	event.DeleteChara(38)
	event.DeleteChara(39)
	event.SetCharaPos(0, -1952.44, 29.22, -304.96)
	event.SetCharaRot(0, 0.0, 1.62, 0.0)
end

--- Helper function.
local function helper_2ffc8()
	local var6: s32 = 0
	vm.section(function()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(4220)
		var6 = event.SndLoadSound_2(4220) or var6
		helper_2f098()
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(1, 2)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 38)
		event.CharaActive(1, 39)
		event.CmrsSetPos(-1979.65, 91.43, -121.02)
		event.CmrsSetRef(-1941.55, 74.53, -339.62)
		event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
		event.ObjsSetMotion(1, "走り", 4, -1.0, 1)
		event.ObjsSetPos(1, -1838.01, 8.0, -560.01)
		event.ObjsSetRot(1, 0.0, -0.64, 0.0)
		event.ObjsSetPos(0, -1904.92, 17.42, -503.6)
		event.ObjsSetRot(0, 0.0, -0.64, 0.0)
		event.ObjsSetPos(2, -2186.89, 29.22, -198.9)
		event.ObjsSetRot(2, 0.0, 3.13, 0.0)
		event.ObjsSetPos(3, -2223.98, 29.22, -196.3)
		event.ObjsSetRot(3, 0.0, 3.13, 0.0)
		event.ObjsSetPos(4, -912.1, 0.0, 0.0)
		event.ObjsSetRot(4, 0.0, 1.57, 0.0)
		event.SetFadeIn(30)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 60)
		event.ObjsAddPas(0, -1904.92, 17.42, -503.6)
		event.ObjsAddPas(0, -1985.4, 29.22, -393.12)
		event.ObjsStartPas(0, 1)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 60)
		event.ObjsAddPas(1, -1838.01, 8.0, -560.01)
		event.ObjsAddPas(1, -1922.88, 29.4, -436.71)
		event.ObjsStartPas(1, 1)
		wait_objects(0)
		wait_objects(1)
		event.InitDramaScene()
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsSetMotion(1, "歩き", 4, -1.0, 1)
		event.CmrsSetPos(-2052.02, 160.14, -365.82)
		event.CmrsSetRef(-2179.63, 74.53, -268.32)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 120)
		event.ObjsAddPas(1, -2199.24, 29.22, -360.0)
		event.ObjsAddPas(1, -2199.24, 29.22, -253.55)
		event.ObjsStartPas(1)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 120)
		event.ObjsAddPas(0, -2216.55, 29.22, -360.0)
		event.ObjsAddPas(0, -2216.55, 29.22, -253.55)
		event.ObjsStartPas(0)
		wait_objects(0)
		wait_objects(1)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetMotion(1, "立ち")
		event.ObjsSetMotion(2, "会話", 2)
		event.ObjsNextMotion(2, "立ち", 4)
		helper_4116e6bb(4481130)
		event.ObjsSetMotion(2, "立ち")
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		helper_4116e6bb(4481140)
		event.ObjsSetMotion(3, "会話", 2)
		event.ObjsNextMotion(3, "立ち", 4)
		helper_4116e6bb(4481150)
		event.ObjsSetMotion(3, "立ち")
		wait_frames(30)
		event.ObjsSetPos(1, -1935.53, 29.22, -301.43)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.ObjsSetPos(0, -1952.44, 29.22, -304.96)
		event.ObjsSetRot(0, 0.0, 1.08, 0.0)
		event.CmrsSetPos(-1949.04, 34.26, -256.22)
		event.CmrsSetRef(-1934.01, 87.78, -397.48)
		event.ObjsSetMotion(1, "右向く会話", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(4481160)
		event.ResetPakuAnim()
		event.SndSePlay(var6, 25)
		event.ObjsSetMotion(0, "うなづく", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "わらい口パク")
		helper_4116e6bb(4481170)
		event.ResetPakuAnim()
		wait_frames(30)
	end)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	wait_frames(35)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	helper_2ecd0()
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_33e2c()
	local var0: s32 = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetEventData_2(14) or var0
		if var0 == 1 then
			at = 1
			return helper_c161ab52()
		end
		if var0 == 2 then
			at = 2
			helper_358ee3a0()
		end
		if var0 == 13 then
			at = 3
			helper_9d1e4c6a()
		end
		if var0 == 301 then
			at = 4
			helper_98e2328c()
		end
		return 0
	end, function(received: { any })
		if at <= 1 then
			return helper_db46662e()
		end
		if at <= 4 then
			if at <= 2 then
				helper_ad46c277()
			end
			if at <= 3 then
				helper_e5f03808()
			end
			return 0
		end
		return nil
	end)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
-- Defined empty, so the engine runs this instead of its default.
function script.event_99() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local mc_load: s32 = 0
	local old_map_no: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var6: s32 = 0
	local at: number = 0
	return vm.guard(function()
		print("START_EVENT----------------------------")
		helper_13965fb3()
		mc_load = event.CheckMcLoad() or mc_load
		if mc_load == 1 then
			event.SetCharaPos(0, -1820.0, 29.2, -335.0)
			event.SetCharaRot(0, 0.0, 1.57, 0.0)
			event.SetMotion(0, "立ち", 4)
			event.CharaNormalDrive(0)
			event.CharaResetDa(0)
			event.ResetCamera(1, 0.0, 20.0)
		else
			old_map_no = event.GetOldMapNo() or old_map_no
			var2 = event.GetMapType() or var2
			if var2 ~= -1 then
				if old_map_no == 2 or old_map_no == 75 then
					at = 1
					helper_07039683()
				else
					var3 = event.GetCnt(1) or var3
					if
						(old_map_no == 18 or old_map_no == 23 or old_map_no == 120 or old_map_no == 108)
						and var3 == 4
					then
						helper_946c0402()
						event.SetFadeIn(15)
						event.ResetCamera(1, 0.0)
					else
						flag = event.GetFlag(360) or flag
						flag_2 = event.GetFlag(400) or flag_2
						if flag == 1 and flag_2 == 0 then
							at = 2
							helper_c21b6dfd()
						else
							event.CharaActive(0, 9)
							var6 = event.GetChapter() or var6
							if var6 ~= 6 and var6 ~= 7 then
								at = 3
								helper_a8de6f45()
							else
								at = 4
								helper_f10d721b()
							end
							event.CharaActive(1, 9)
						end
					end
				end
			else
				print("------  <START EVENT> OLD MAP ERR   ------\n")
			end
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_d7295df9()
				at = 2
				helper_c21b6dfd()
				return vm.continue_with(function()
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_a8de6f45()
				return vm.continue_with(function()
					event.CharaActive(1, 9)
					return
				end)
			end
			if at <= 3 then
				helper_7f95a402()
			end
			print("------  <START EVENT> OLD MAP ERR   ------\n")
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_f10d721b

--- Event 201, which map data, a script or the engine runs by number.
function script.event_201()
	if helper_d4129194() ~= 0 then
		event.MapJump_2(-1, "g03")
	end
end

--- Event 250, which map data, a script or the engine runs by number.
function script.event_250()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		var0 = helper_9e146e8b()
		if var0 ~= 1 then
			return
		end
		event.SetCnt(1, 4)
		var1 = event.GetChapter() or var1
		var2 = event.GetEventData_2(3) or var2
		if var2 <= 1 then
			if var1 ~= 6 and var1 ~= 7 then
				at = 2
				helper_f4ec8310()
				event.StopBgm(0)
				at = 3
				vm.wait(3)
				event.MapJump_2(-1, "s08")
			else
				at = 4
				helper_f4ec8310()
				event.StopBgm(0)
				at = 5
				vm.wait(5)
				event.MapJump_2(-1, "s37")
			end
			at = 6
			vm.wait(6)
		elseif var1 ~= 6 and var1 ~= 7 then
			at = 7
			helper_826a3ea7(0)
			event.StopBgm(0)
			event.MapJump_2(100, "s07")
		else
			at = 8
			helper_fdad3d3b()
			event.StopBgm(0)
			event.MapJump_2(100, "s38")
		end
		return
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				var0 = received[1] :: number
			end
			return 0
		end
		if at <= 8 then
			if at <= 3 then
				helper_83f038b5()
			end
			if at <= 6 then
				helper_e6450f0b(0)
			end
			if at <= 7 then
				helper_c99744f1()
			end
			return 0
		end
		return nil
	end)
end

--- Event 400, which map data, a script or the engine runs by number.
script.event_400 = helper_f57795f8

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_13965fb3()
	helper_2ffc8()
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local var0: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		var0 = helper_33e2c()
		if var0 == 1 then
			at = 2
			helper_b580d4fc()
			at = 3
			helper_050c9cee(1)
			event.GotoMenu(13, 9)
			at = 4
			vm.wait(4)
			event.BgmLoadCancel()
			event.MapJump_2(-1, "s10")
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_b580d4fc()
				return vm.continue_with(function()
					at = 3
					helper_050c9cee(1)
					event.GotoMenu(13, 9)
					at = 4
					vm.wait(4)
					event.BgmLoadCancel()
					event.MapJump_2(-1, "s10")
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_050c9cee(1)
				return vm.continue_with(function()
					event.GotoMenu(13, 9)
					at = 4
					vm.wait(4)
					event.BgmLoadCancel()
					event.MapJump_2(-1, "s10")
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 14000, which map data, a script or the engine runs by number.
function script.event_14000()
	helper_13965fb3()
	helper_c21b6dfd()
end

--- Event 14520, which map data, a script or the engine runs by number.
function script.event_14520()
	local at: number = 0
	return vm.guard(function()
		helper_13965fb3()
		at = 1
		helper_b580d4fc()
		at = 2
		helper_050c9cee(1)
		event.GotoMenu(13, 9)
		at = 3
		vm.wait(3)
		event.BgmLoadCancel()
		event.MapJump_2(-1, "s10")
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_050c9cee(1)
				return vm.continue_with(function()
					event.GotoMenu(13, 9)
					at = 3
					vm.wait(3)
					event.BgmLoadCancel()
					event.MapJump_2(-1, "s10")
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

return script
