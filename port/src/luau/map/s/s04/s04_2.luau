--!strict
-- map/s/s04/s04_2.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_00a34ef5 = require("@lib/event/helper_00a34ef5")
local helper_0c718064 = require("@lib/event/helper_0c718064")
local helper_0d806bce = require("@lib/event/helper_0d806bce")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_45aa96ff = require("@lib/event/helper_45aa96ff")
local helper_48cdfb0f = require("@lib/event/helper_48cdfb0f")
local helper_506285df = require("@lib/event/helper_506285df")
local helper_64a94650 = require("@lib/event/helper_64a94650")
local helper_7f95a402 = require("@lib/event/helper_7f95a402")
local helper_826a3ea7 = require("@lib/event/helper_826a3ea7")
local helper_83f038b5 = require("@lib/event/helper_83f038b5")
local helper_89d22243 = require("@lib/event/helper_89d22243")
local helper_918c322c = require("@lib/event/helper_918c322c")
local helper_946c0402 = require("@lib/event/helper_946c0402")
local helper_9e09c6bc = require("@lib/event/helper_9e09c6bc")
local helper_ad46c277 = require("@lib/event/helper_ad46c277")
local helper_b79fe662 = require("@lib/event/helper_b79fe662")
local helper_b9d220f5 = require("@lib/event/helper_b9d220f5")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_c99744f1 = require("@lib/event/helper_c99744f1")
local helper_d7295df9 = require("@lib/event/helper_d7295df9")
local helper_d7ee9abb = require("@lib/event/helper_d7ee9abb")
local helper_e2123063 = require("@lib/event/helper_e2123063")
local helper_e48c396e = require("@lib/event/helper_e48c396e")
local helper_e5f03808 = require("@lib/event/helper_e5f03808")
local helper_e6450f0b = require("@lib/event/helper_e6450f0b")
local helper_f4ec8310 = require("@lib/event/helper_f4ec8310")
local helper_f57795f8 = require("@lib/event/helper_f57795f8")
local helper_fab38133 = require("@lib/event/helper_fab38133")
local helper_fdad3d3b = require("@lib/event/helper_fdad3d3b")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_305ac()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 33
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e300/e372/e372_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e300/e372/e372_monica.gltf", "info", global1)
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
		event.LoadMotion(5, "event/e300/e372/e372_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 37)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e300/e372/e372_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.LoadChara(5, "chara/p01_03a.gltf", "info", 35)
	event.EohSyncChara(2, 35)
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	event.CharaActive(0, 35)
	event.LoadMes(0, 5, "event/e300/e372/e372_1.txt")
	event.SetStatus(1, global0, 256, 1)
	event.SetStatus(1, global1, 256, 1)
end

--- Helper function.
local function helper_302f8()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DeleteChara(global1)
		event.DeleteChara(37)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(37)
	end
	event.DeleteChara(35)
end

--- Helper function.
local function helper_313a4()
	vm.section(function()
		event.CharaActive(0, 24)
		event.SetFlag(372, 1)
		event.Initialize()
		event.EohSyncObj_2(20, "p01_train01")
		event.EohSetPos(20, 0.0, 0.0, 400.0)
		helper_305ac()
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "わらい顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(1, 2)
		event.StopBgm(0)
		wait_frames(4)
		event.LoadBgm(49)
		event.PlayBgm(0)
		event.InitDramaScene()
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 35)
		event.CmrsSetPos(-940.17, 88.71, -222.08)
		event.CmrsSetRef(-788.53, 51.39, -202.38)
		event.ObjsSetPos(0, -802.48, 0.0, -185.61)
		event.ObjsSetRot(0, 0.0, 1.5, 0.0)
		event.ObjsSetPos(1, -799.79, 0.0, -228.07)
		event.ObjsSetRot(1, 0.0, 1.32, 0.0)
		event.ObjsSetPos(2, -126.08, 36.0, -149.46)
		event.ObjsSetRot(2, 0.0, -1.68, 0.0)
		event.SetFadeIn(15)
		event.ObjsSetMotion(0, "走り", 0)
		event.ObjsSetMotion(1, "走り", 0)
		event.ObjsMove(0, -647.07, 0.0, -165.42, 60)
		event.ObjsMove(1, -636.31, 0.0, -204.74, 60)
		wait_objects(0)
		event.CmrsSetPos(-243.89, 55.02, -207.96)
		event.CmrsSetRef(-152.87, 61.42, -156.97)
		event.ObjsSetPos(0, -207.98, 36.0, -142.65)
		event.ObjsSetRot(0, 0.0, 1.62, 0.0)
		event.ObjsSetPos(1, -209.43, 36.0, -161.14)
		event.ObjsSetRot(1, 0.0, 1.56, 0.0)
		event.ObjsSetMotion(0, "歩き", 4)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsSetMotion(2, "会話", 2)
		event.ObjsNextMotion(2, "立ち", 4)
		event.ObjsMove(0, -155.54, 36.0, -140.71, 75)
		event.ObjsMove(1, -153.89, 36.0, -159.09, 75)
		event.SetPakuAnim(2, "口パク")
		helper_1584c528(3720500, 60)
		event.ResetPakuAnim()
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CmrsSetPos(-196.14, 62.27, -152.87)
		event.CmrsSetRef(-156.04, 61.42, -151.29)
		event.ObjsSetPos(0, -155.54, 36.0, -140.71)
		event.ObjsSetRot(0, 0.0, 1.62, 0.0)
		event.ObjsSetPos(1, -153.89, 36.0, -159.09)
		event.ObjsSetRot(1, 0.0, 1.56, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(2, "会話2", 2)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(3720505)
		event.ResetPakuAnim()
		event.SetFadeOut(30)
		wait_frames(30)
	end)
	event.CancelDramaScene()
	if global0 == 0 then
		event.SetCharaPos(0, -155.54, 36.0, -140.71)
	else
		event.SetCharaPos(0, -153.89, 36.0, -159.09)
	end
	helper_302f8()
	event.CharaActive(1, 24)
	event.SetFadeIn(30)
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
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local var7: s32 = 0
	local at: number = 0
	return vm.guard(function()
		helper_fab38133()
		mc_load = event.CheckMcLoad() or mc_load
		if mc_load == 1 then
			event.SetCharaPos(0, -357.0, 0.0, -206.0)
			event.SetCharaRot(0, 0.0, -1.57, 0.0)
			event.SetMotion(0, "立ち", 4)
			event.CharaNormalDrive(0)
			event.CharaResetDa(0)
			event.ResetCamera(1, 3.14, 20.0)
		else
			old_map_no = event.GetOldMapNo() or old_map_no
			var2 = event.GetMapType(old_map_no) or var2
			if var2 ~= -1 then
				if old_map_no == 1 then
					at = 1
					helper_e2123063()
				elseif old_map_no ~= 18 and old_map_no ~= 23 and old_map_no ~= 120 and old_map_no ~= 108 then
					flag = event.GetFlag(283) or flag
					flag_2 = event.GetFlag(300) or flag_2
					if flag == 1 and flag_2 == 0 then
						event.SetAi(0, 24)
						event.SetAi(0, 25)
						event.SetAi(0, 26)
						at = 2
						helper_0d806bce()
						helper_b79fe662()
						event.SetAi(1, 24)
						event.SetAi(1, 25)
						event.SetAi(1, 26)
					else
						event.CharaActive(0, 25)
						var5 = event.GetChapter() or var5
						if var5 ~= 6 and var5 ~= 7 then
							at = 3
							helper_9e09c6bc()
						else
							at = 4
							helper_918c322c()
						end
						event.CharaActive(25)
					end
				else
					var6 = event.GetCnt(1) or var6
					if
						(old_map_no == 18 or old_map_no == 23 or old_map_no == 120 or old_map_no == 108)
						and var6 == 3
					then
						helper_946c0402()
						event.SetFadeIn(15)
						event.ResetCamera(1, 0.0)
					else
						var7 = event.GetChapter() or var7
						if var7 ~= 6 and var7 ~= 7 then
							at = 5
							helper_9e09c6bc()
						else
							at = 6
							helper_918c322c()
						end
					end
				end
			else
				print("------  <START EVENT> OLD MAP ERR   ------\n")
			end
		end
		return
	end, function(received: { any })
		if at <= 6 then
			if at <= 1 then
				at = 2
				helper_0d806bce()
				return vm.continue_with(function()
					helper_b79fe662()
					event.SetAi(1, 24)
					event.SetAi(1, 25)
					event.SetAi(1, 26)
					return
				end)
			end
			if at <= 2 then
				helper_1ef0d4b2()
				at = 3
				helper_9e09c6bc()
				return vm.continue_with(function()
					event.CharaActive(25)
					return
				end)
			end
			if at <= 3 then
				helper_7f95a402()
			end
			if at <= 4 then
				helper_d7295df9()
				at = 5
				helper_9e09c6bc()
				return vm.continue_with(function()
					return
				end)
			end
			if at <= 5 then
				helper_7f95a402()
			end
			print("------  <START EVENT> OLD MAP ERR   ------\n")
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	local var0: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_2(3200) or var0
	vm.wait(1)
	helper_c956b4a2(64)
	event.SndSePlay(var0, 8)
	vm.wait(3)
	helper_c956b4a2(64)
end

--- Event 250, which map data, a script or the engine runs by number.
function script.event_250()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		var0 = helper_e48c396e()
		if var0 ~= 1 then
			return
		end
		event.SetCnt(1, 3)
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
	if helper_b9d220f5() ~= 0 then
		event.MapJump_3(-1, "g02", 100)
	end
end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	helper_fab38133()
	helper_313a4()
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	helper_0c718064(3)
	helper_fab38133()
	event.SetAi(0, 24)
	event.SetAi(0, 25)
	event.SetAi(0, 26)
	helper_0d806bce()
	helper_b79fe662()
	event.SetAi(1, 24)
	event.SetAi(1, 25)
	event.SetAi(1, 26)
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
			var1 = helper_48cdfb0f()
			if var1 == 1 then
				at = 2
				helper_d7ee9abb()
				at = 3
				helper_89d22243()
				event.GotoMenu(13, 8)
				at = 4
				vm.wait(4)
				event.MapJump_2(-1, "s09")
			end
		end
		if var0 == 2 then
			at = 5
			helper_00a34ef5()
		end
		if var0 == 13 then
			at = 6
			helper_45aa96ff()
		end
		if var0 == 301 then
			at = 7
			helper_506285df()
		end
		return
	end, function(received: { any })
		if at <= 7 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_d7ee9abb()
				return vm.continue_with(function()
					at = 3
					helper_89d22243()
					event.GotoMenu(13, 8)
					at = 4
					vm.wait(4)
					event.MapJump_2(-1, "s09")
					if var0 == 2 then
						at = 5
						helper_00a34ef5()
					end
					if var0 == 13 then
						at = 6
						helper_45aa96ff()
					end
					if var0 == 301 then
						at = 7
						helper_506285df()
					end
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_89d22243()
				return vm.continue_with(function()
					event.GotoMenu(13, 8)
					at = 4
					vm.wait(4)
					event.MapJump_2(-1, "s09")
					if var0 == 2 then
						at = 5
						helper_00a34ef5()
					end
					if var0 == 13 then
						at = 6
						helper_45aa96ff()
					end
					if var0 == 301 then
						at = 7
						helper_506285df()
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

--- Event 13000, which map data, a script or the engine runs by number.
function script.event_13000()
	helper_fab38133()
	event.SetAi(0, 24)
	event.SetAi(0, 25)
	event.SetAi(0, 26)
	helper_0d806bce()
	helper_b79fe662()
	event.SetAi(1, 24)
	event.SetAi(1, 25)
	event.SetAi(1, 26)
end

--- Event 13600, which map data, a script or the engine runs by number.
function script.event_13600()
	local at: number = 0
	return vm.guard(function()
		helper_fab38133()
		at = 1
		helper_d7ee9abb()
		at = 2
		helper_89d22243()
		event.GotoMenu(13, 8)
		at = 3
		vm.wait(3)
		event.MapJump_2(-1, "s09")
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_89d22243()
				return vm.continue_with(function()
					event.GotoMenu(13, 8)
					at = 3
					vm.wait(3)
					event.MapJump_2(-1, "s09")
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

return script
