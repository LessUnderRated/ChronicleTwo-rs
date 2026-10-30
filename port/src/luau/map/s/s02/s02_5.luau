--!strict
-- map/s/s02/s02_5.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ca47ddb = require("@lib/event/helper_0ca47ddb")
local helper_1352f985 = require("@lib/event/helper_1352f985")
local helper_1b6043e0 = require("@lib/event/helper_1b6043e0")
local helper_1edf2b0f = require("@lib/event/helper_1edf2b0f")
local helper_33f5143b = require("@lib/event/helper_33f5143b")
local helper_3a1afb4d = require("@lib/event/helper_3a1afb4d")
local helper_3d122e85 = require("@lib/event/helper_3d122e85")
local helper_4541d180 = require("@lib/event/helper_4541d180")
local helper_64a94650 = require("@lib/event/helper_64a94650")
local helper_6fc8ed77 = require("@lib/event/helper_6fc8ed77")
local helper_7c327d17 = require("@lib/event/helper_7c327d17")
local helper_7f0ede20 = require("@lib/event/helper_7f0ede20")
local helper_826a3ea7 = require("@lib/event/helper_826a3ea7")
local helper_83f038b5 = require("@lib/event/helper_83f038b5")
local helper_8ab07f4b = require("@lib/event/helper_8ab07f4b")
local helper_8efad286 = require("@lib/event/helper_8efad286")
local helper_946c0402 = require("@lib/event/helper_946c0402")
local helper_a0aa94d3 = require("@lib/event/helper_a0aa94d3")
local helper_ad46c277 = require("@lib/event/helper_ad46c277")
local helper_af05d40a = require("@lib/event/helper_af05d40a")
local helper_b5812b13 = require("@lib/event/helper_b5812b13")
local helper_c6cfe9e9 = require("@lib/event/helper_c6cfe9e9")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_c99744f1 = require("@lib/event/helper_c99744f1")
local helper_d7295df9 = require("@lib/event/helper_d7295df9")
local helper_e5f03808 = require("@lib/event/helper_e5f03808")
local helper_e6450f0b = require("@lib/event/helper_e6450f0b")
local helper_ecd07d2a = require("@lib/event/helper_ecd07d2a")
local helper_f4ec8310 = require("@lib/event/helper_f4ec8310")
local helper_f57795f8 = require("@lib/event/helper_f57795f8")
local helper_f6012ebc = require("@lib/event/helper_f6012ebc")
local helper_fdad3d3b = require("@lib/event/helper_fdad3d3b")
local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_400b4()
	local active_chr_no: s32 = 0
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 32
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 38)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e200/e254/e254_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 38)
	end
	if active_chr_no == 1 then
		global0 = 32
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 38)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 38)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e200/e254/e254_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e200/e254/e254_conda.gltf", "info", 36)
	event.CharaActive(0, 36)
	event.EohSyncChara(4, 36)
	event.ObjsInit(3, 36)
	event.ObjsSyncObj(3, 4)
	event.LoadMes(0, 5, "event/e200/e254/e254.txt")
end

--- Helper function.
local function helper_24300000()
	global0 = 0
	global1 = 32
	global0 = 32
	global1 = 0
end

--- Helper function.
local function helper_3fd40()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(38)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(38)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.DeleteChara(36)
end

--- Helper function.
local function helper_40de8()
	local at: number = 0
	vm.section(function()
		event.SetFlag(254, 1)
		event.Initialize()
		event.SetFadeOut(30)
		at = 1
		wait_frames(30)
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(49)
		helper_400b4()
		set_window_mode(0, 1)
		event.InitDramaScene()
		event.PlayBgm(0)
		event.CmrsInit()
		event.CmrsSetPos(-585.93, 175.94, -940.12)
		event.CmrsSetRef(-702.67, 128.67, -892.92)
		event.CmrsMove(-565.48, 108.18, -866.56, -690.38, 73.25, -848.03, 165)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 38)
		event.CharaActive(1, 36)
		event.SetStatus(1, global0, 8, 1)
		event.SetStatus(1, global1, 8, 1)
		event.ObjsSetPos(0, -1285.55, 14.1, -942.2)
		event.ObjsSetMotion(0, "走り", 4)
		event.ObjsReference(0, -749.29, 0.0, -826.86, 1)
		event.ObjsMove(0, -749.29, 0.0, -826.86, 165, 1)
		event.EohSetFootSoundId(0, 1)
		event.SetFadeIn(30)
		at = 3
		wait_frames(30)
		event.ObjsSetPos(1, -1285.55, 14.1, -942.2)
		event.ObjsSetMotion(1, "走り", 4)
		event.ObjsReference(1, -767.89, 0.0, -768.84, 1)
		event.ObjsMove(1, -767.89, 0.0, -768.84, 135, 1)
		event.EohSetFootSoundId(1, 1)
		at = 4
		wait_frames(135)
		event.EohSetFootSoundId(0, -1)
		event.EohSetFootSoundId(1, -1)
		event.SetStatus(1, global0, 8, 0)
		event.SetStatus(1, global1, 8, 0)
		event.CmrsInit()
		event.CmrsSetPos(-350.28, 3.09, -880.0)
		event.CmrsSetRef(-237.75, 35.02, -880.0)
		event.ObjsSetPos(3, -246.0, 0.0, -880.0)
		event.ObjsSetRot(3, 0.0, -1.57, 0.0)
		event.ObjsSetMotion(3, "おーい", 4)
		event.MesMake_2(0, "[UNI00a1]Hooola!")
		at = 5
		show_message(0, -1, 2, 256, 416)
		event.CmrsSetPos(-269.42, 43.82, -641.43)
		event.CmrsSetRef(-355.67, 8.13, -699.39)
		event.ObjsSetPos(0, -424.81, 0.0, -640.72)
		event.ObjsReference(0, -354.91, 0.0, -694.75, 1)
		event.ObjsSetMotion(0, "走り", 4)
		event.EohSetFootSoundId(0, 1)
		event.ObjsSetPos(1, -399.05, 0.0, -634.81)
		event.ObjsReference(1, -359.19, 0.0, -671.7, 1)
		event.ObjsSetMotion(1, "歩き", 4)
		event.EohSetFootSoundId(1, 1)
		event.ObjsSetPos(3, -321.61, 0.0, -694.6)
		event.ObjsSetRot(3, 0.0, -1.61, 0.0)
		event.ObjsSetMotion(3, "立ち", 4)
		event.ObjsMove(0, -354.91, 0.0, -694.75, 45)
		event.ObjsRotDelay(0, 45)
		event.ObjsRotation(0, 0.0, 1.16, 0.0, 5)
		event.ObjsMotionDelay(0, 50)
		event.ObjsSetMotion(0, "立ち")
		at = 6
		wait_frames(15)
		event.ObjsMove(1, -359.19, 0.0, -671.7, 60)
		event.ObjsRotDelay(1, 60)
		event.ObjsRotation(1, 0.0, 1.87, 0.0, 5)
		event.ObjsMotionDelay(1, 65)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsSetMotion(3, "会話2")
		event.MesMake_2(
			0,
			"[UNI00bf]Eh? Vaya. Has encontrado algunas\nGeopiedras.<page>Pues venga, [UNI00a1]a repoblar el bosque con\nel Carpenterion!"
		)
		at = 7
		show_message(0, -1, 7, 341, 208)
		event.MesMake_2(0, "Ven conmigo.")
		at = 8
		show_message(0, -1, 8, 341, 208)
		event.EohSetFootSoundId(4, 1)
		event.ObjsSetMotion(3, "歩き２")
		event.ObjsReference(3, -306.48, 0.0, -624.02, 45)
		at = 9
		wait_frames(45)
		event.ObjsMove(3, -306.48, 0.0, -624.02, 90)
		at = 10
		wait_frames(45)
		event.ObjsSetMotion(0, "走り")
		event.ObjsReference(0, -305.78, 0.0, -632.54, 8)
		at = 11
		wait_frames(8)
		event.ObjsMove(0, -305.78, 0.0, -632.54, 45)
		at = 12
		wait_frames(22)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsReference(1, -351.88, 0.0, -630.2, 30)
		at = 13
		wait_frames(30)
		event.ObjsMove(1, -351.88, 0.0, -630.2, 45)
		at = 14
		wait_frames(30)
		event.SetFadeOut(30)
		at = 15
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			wait_frames_skipping(4)
		end
		if at <= 2 then
			helper_24300000()
			helper_8ab07f4b(0, 1)
			wait_frames_skipping(30)
		end
		if at <= 3 then
			wait_frames_skipping(135)
		end
		if at <= 4 then
			helper_33f5143b(0, -1, 2, 256, 416)
		end
		if at <= 5 then
			wait_frames_skipping(15)
		end
		if at <= 6 then
			helper_33f5143b(0, -1, 7, 341, 208)
		end
		if at <= 7 then
			helper_33f5143b(0, -1, 8, 341, 208)
		end
		if at <= 8 then
			wait_frames_skipping(45)
		end
		if at <= 9 then
			wait_frames_skipping(45)
		end
		if at <= 10 then
			wait_frames_skipping(8)
		end
		if at <= 11 then
			wait_frames_skipping(22)
		end
		if at <= 12 then
			wait_frames_skipping(30)
		end
		if at <= 13 then
			wait_frames_skipping(30)
		end
		if at <= 14 then
			wait_frames_skipping(30)
		end
		return true
	end)
	event.CancelDramaScene()
	event.SetStatus(1, global0, 8, 0)
	event.SetStatus(1, global1, 8, 0)
	helper_3fd40()
	event.Finish()
	event.BgmLoadCancel()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
function script.event_99()
	event.Initialize()
	helper_8efad286()
	event.SetCameraPos(-368.0, 50.0, 62.1)
	event.SetCameraRef(-368.0, 30.0, -57.9)
	event.SetCharaPos(0, -368.0, 0.0, -57.9)
	event.SetCharaRot(0, 0.0, 0.0, 0.0)
	event.SetFadeIn(15)
end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local mc_load: s32 = 0
	local old_map_no: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		helper_8efad286()
		print("start_event--------------------------------------------\n")
		flag = event.GetFlag(31) or flag
		flag_2 = event.GetFlag(254) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			helper_40de8()
			event.MapJump_3(-1, "s47", 505)
			return
		end
		mc_load = event.CheckMcLoad() or mc_load
		if mc_load == 1 then
			event.SetCharaPos(0, -750.0, 0.0, -75.0)
			event.SetCharaRot(0, 0.0, 1.57, 0.0)
			event.SetMotion(0, "立ち", 4)
			event.CharaNormalDrive(0)
			event.CharaResetDa(0)
			event.ResetCamera(1, 0.0, 20.0)
		else
			old_map_no = event.GetOldMapNo() or old_map_no
			var4 = event.GetMapType(old_map_no) or var4
			if var4 ~= -1 then
				if var4 == 7 or var4 == 8 then
					at = 2
					helper_6fc8ed77()
					event.SetMotion(0, "立ち")
					return
				else
					if old_map_no == 53 then
						at = 3
						helper_a0aa94d3()
						return
					end
					if old_map_no == 0 then
						at = 4
						helper_ecd07d2a()
					else
						var5 = event.GetCnt(1) or var5
						if
							(old_map_no == 18 or old_map_no == 23 or old_map_no == 120 or old_map_no == 108)
							and var5 == 2
						then
							helper_946c0402()
							event.SetFadeIn(15)
							event.ResetCamera(1, 0.0)
						else
							var6 = event.GetChapter() or var6
							if var6 ~= 6 and var6 ~= 7 then
								at = 5
								helper_1b6043e0()
							else
								at = 6
								helper_7c327d17()
							end
						end
					end
				end
			end
			event.SetMotion(0, "立ち")
		end
		return
	end, function(received: { any })
		if at <= 2 then
			return 0
		end
		if at <= 3 then
			return 0
		end
		if at <= 6 then
			if at <= 4 then
				helper_d7295df9()
				at = 5
				helper_1b6043e0()
				return vm.continue_with(function()
					event.SetMotion(0, "立ち")
					return
				end)
			end
			if at <= 5 then
				helper_b5812b13()
			end
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.SetMesStr(0, 16, "なかみ")
	event.MesMake_2(0, "ここから[文字列１６]ここまで")
	show_message(0, -1, 5, 0, 0)
end

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 209, which map data, a script or the engine runs by number.
function script.event_209()
	local flag: s32 = 0
	if helper_0ca47ddb() ~= 0 then
		event.SetFadeOut(0)
		vm.wait(2)
		flag = event.GetFlag(208) or flag
		if flag == 0 then
			event.BgmPlayCancel()
		end
		event.MapJump_2(-1, "g01")
		return
	end
end

--- Event 210, which map data, a script or the engine runs by number.
function script.event_210()
	if helper_3a1afb4d() ~= 0 then
		helper_4541d180()
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
		var0 = helper_f6012ebc()
		if var0 ~= 1 then
			return
		end
		event.SetCnt(1, 2)
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
			helper_826a3ea7(1)
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
				helper_e6450f0b(1)
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

--- Event 499, which map data, a script or the engine runs by number.
script.event_499 = helper_1b6043e0

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	event.Initialize()
	event.SetFadeOut(0)
	vm.wait(1)
	event.LoadScript("s02/s02b_1.stb", 501)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	event.Initialize()
	vm.wait(1)
	event.LoadScript("s02/s02b_1.stb", 502)
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	event.Initialize()
	vm.wait(1)
	event.LoadScript("s02/s02b_1.stb", 503)
end

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	event.Initialize()
	helper_8efad286()
	helper_ecd07d2a()
	event.SetMotion(0, "立ち")
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local var0: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetEventData_2(14) or var0
		if var0 == 1 then
			at = 1
			var1 = helper_7f0ede20()
			if var1 == 1 then
				at = 2
				helper_af05d40a()
				at = 3
				helper_3d122e85()
				event.GotoMenu(13, 4)
				at = 4
				vm.wait(4)
				event.MapJump_2(-1, "s04")
			end
		end
		if var0 == 2 then
			at = 5
			helper_c6cfe9e9()
		end
		if var0 == 13 then
			at = 6
			helper_1352f985()
		end
		if var0 == 301 then
			at = 7
			helper_1edf2b0f()
		end
		return
	end, function(received: { any })
		if at <= 7 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_af05d40a()
				return vm.continue_with(function()
					at = 3
					helper_3d122e85()
					event.GotoMenu(13, 4)
					at = 4
					vm.wait(4)
					event.MapJump_2(-1, "s04")
					if var0 == 2 then
						at = 5
						helper_c6cfe9e9()
					end
					if var0 == 13 then
						at = 6
						helper_1352f985()
					end
					if var0 == 301 then
						at = 7
						helper_1edf2b0f()
					end
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_3d122e85()
				return vm.continue_with(function()
					event.GotoMenu(13, 4)
					at = 4
					vm.wait(4)
					event.MapJump_2(-1, "s04")
					if var0 == 2 then
						at = 5
						helper_c6cfe9e9()
					end
					if var0 == 13 then
						at = 6
						helper_1352f985()
					end
					if var0 == 301 then
						at = 7
						helper_1edf2b0f()
					end
					return
				end)
			end
			if at <= 4 then
				helper_64a94650()
			end
			if at <= 5 then
				helper_ad46c277()
			end
			if at <= 6 then
				helper_e5f03808()
			end
			return 0
		end
		return nil
	end)
end

--- Event 12070, which map data, a script or the engine runs by number.
function script.event_12070()
	event.Initialize()
	event.SetFadeOut(0)
	vm.wait(1)
	event.LoadScript("s02/s02b_1.stb", 501)
end

--- Event 12541, which map data, a script or the engine runs by number.
function script.event_12541()
	event.SetFloorInfo(1, 7, 5, 256)
	helper_40de8()
	event.MapJump_3(-1, "s47", 505)
end

--- Event 12830, which map data, a script or the engine runs by number.
function script.event_12830()
	local at: number = 0
	return vm.guard(function()
		at = 1
		helper_af05d40a()
		at = 2
		helper_3d122e85()
		event.GotoMenu(13, 4)
		at = 3
		vm.wait(3)
		event.MapJump_2(-1, "s04")
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_3d122e85()
				return vm.continue_with(function()
					event.GotoMenu(13, 4)
					at = 3
					vm.wait(3)
					event.MapJump_2(-1, "s04")
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

return script
