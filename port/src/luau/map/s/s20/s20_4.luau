--!strict
-- map/s/s20/s20_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_402d163f = require("@lib/event/helper_402d163f")
local helper_43d1778f = require("@lib/event/helper_43d1778f")
local helper_55215ed6 = require("@lib/event/helper_55215ed6")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_d86a01e1 = require("@lib/event/helper_d86a01e1")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	local flag_2: s32 = 0
	event.StopBgm(0)
	event.LoadSound(5684)
	event.FuncPointShow("", "useitem_00", 0)
	event.FuncPointShow("", "dun_entrance", 1)
	event.FuncPointShow("", "entrance", 1)
	flag = event.GetFlag(516) or flag
	event.GetItemNum(372)
	if flag == 0 then
		event.FuncPointShow("", "useitem_00", 1)
	end
	if flag == 1 then
		event.EohSyncObj_2(0, "p03_s2001")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(0, "p04_s2001")
		event.EohSetShow(0, 1)
	end
	event.EohSyncObj_2(0, "p01_battleship")
	event.EohSetShow(0, 0)
	flag_2 = event.GetFlag(520) or flag_2
	if flag_2 ~= 0 then
		event.EohSyncObj_3(0, "p04_s2001", "s2006-m0")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(0, "firesquall")
		event.EohSetShow(0, 0)
		event.FuncPointShow("p04_s2001", "eff_s20ef-0", 0)
		event.FuncPointShow("p04_s2001", "eff_s20ef-1", 0)
		event.FuncPointShow("p04_s2001", "eff_s20ef-2", 0)
		event.FuncPointShow("p04_s2001", "eff_s20ef-3", 0)
	end
end

--- Helper function.
local function helper_11618()
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var3: any = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: s32 = 0
	local active_chr_no_2: s32 = 0
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
				helper_75684dd8(0, 20, 5, 256, 208)
			else
				at = 2
				helper_75684dd8(0, 21, 5, 256, 208)
			end
			event.SetFadeOut(10)
			at = 3
			wait_frames(10)
			event.SetCharaPos(0, -2074.0, -7.0, 3098.8)
			event.SetCharaRot(0, 0.0, 3.05, 0.0)
			event.SetCameraPos(-2086.23, 51.55, 3226.23)
			event.SetCameraRef(-2074.0, 22.99, 3098.82)
			event.ResetCamera(0)
			event.SetFadeIn(10)
			event.Finish()
			return 0
		end
		flag = event.GetFlag(516) or flag
		flag_2 = event.GetFlag(520) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var3 = 1
		else
			at = 4
			var3 = helper_ed4dc120(2, -1)
		end
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var3 == 0 then
			event.CmrsInit()
			event.CmrsSetPos(-2067.37, 112.9, 2821.78)
			event.CmrsSetRef(-2002.24, 24.33, 3103.52)
			event.ObjsSetMotion(0, "走り", 4)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 60)
			event.ObjsAddPas(0, -2000.28, 0.23, 3105.85)
			event.ObjsAddPas(0, -2010.93, -14.79, 3194.18)
			event.ObjsAddPas(0, -2000.43, -24.24, 3288.22)
			event.ObjsAddPas(0, -1957.41, -49.2, 3404.27)
			event.ObjsStartPas(0)
			at = 5
			wait_frames(40)
			event.SetFadeOut(20)
			at = 6
			wait_frames(20)
			event.EohSetFootSoundId(0, 0)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			var7 = vm.f32(vm.f32(vm.sin(vm.f32(3.14)) * 40.0) + var4)
			var8 = 0.0
			var9 = vm.f32(vm.f32(vm.cos(vm.f32(3.14)) * 40.0) + var6)
			event.ObjsMove(0, var7, var8, var9, 30, 1)
			event.ObjsReference(0, var7, var8, var9, 10)
			event.ObjsSetMotion(0, "歩き")
			var10 = 0
			while var10 < 30 do
				do
					local out1, out2, out3 = event.GetCharaPos(0)
					var4 = out1 or var4
					var5 = out2 or var5
					var6 = out3 or var6
				end
				var5 = vm.f32(var5 + 30.0)
				event.SetCameraRef(var4, var5, var6)
				var10 = var10 + 1
				at = 7
				vm.wait(7)
			end
			event.ObjsSetMotion(0, "立ち")
		end
		if flag ~= 0 and flag_2 == 0 then
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			active_chr_no_2 = event.GetActiveChrNo() or active_chr_no_2
			if active_chr_no_2 == 0 then
				event.MesMake_2(0, "[UNI00c8] ora di contrattaccare sul Robomobile!")
			else
				event.MesMake_2(0, "Max, [UNI00e8] ora di contrattaccare\ncon il Robomobile!")
			end
			at = 8
			helper_75684dd8(0, -1, 5, 256, 208)
		end
		event.EohSetFootSoundId(0, 0)
		event.ResetCamera(0)
		event.Finish()
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				helper_ee1c51d0(0, 21, 5, 256, 208)
			end
			if at <= 2 then
				wait_frames_skipping(10)
			end
			return 0
		end
		if at <= 6 then
			if at == 4 then
				var3 = received[1] :: number
			end
			if at <= 4 then
				wait_frames_skipping(40)
			end
			if at <= 5 then
				wait_frames_skipping(20)
			end
			return 1
		end
		if at <= 8 then
			if at <= 7 then
				helper_ee1c51d0(0, -1, 5, 256, 208)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_1293c()
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var3: any = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: s32 = 0
	local flag_3: s32 = 0
	local active_chr_no_2: s32 = 0
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
				helper_75684dd8(0, 20, 5, 256, 208)
			else
				at = 2
				helper_75684dd8(0, 21, 5, 256, 208)
			end
			event.SetFadeOut(10)
			at = 3
			wait_frames(10)
			event.SetCharaPos(0, 1459.7, -279.01, 2009.85)
			event.SetCharaRot(0, 0.0, -1.77, 0.0)
			event.SetCameraPos(1584.28, -250.6, 2035.61)
			event.SetCameraRef(1459.7, -249.01, 2009.85)
			event.ResetCamera(0)
			event.SetFadeIn(10)
			event.Finish()
			return 0
		end
		flag = event.GetFlag(516) or flag
		flag_2 = event.GetFlag(520) or flag_2
		if flag == 0 or flag_2 == 0 then
			var3 = 1
		else
			at = 4
			var3 = helper_ed4dc120(1, -1)
		end
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var3 == 0 then
			event.CmrsInit()
			event.CmrsSetPos(1237.07, -178.87, 1868.72)
			event.CmrsSetRef(1400.74, -221.62, 1965.01)
			event.ObjsSetMotion(0, "走り", 4)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 60)
			event.ObjsAddPas(0, 1494.73, -279.24, 2020.78)
			event.ObjsAddPas(0, 1549.77, -279.45, 2063.4)
			event.ObjsAddPas(0, 1615.07, -279.45, 2101.81)
			event.ObjsAddPas(0, 1681.3, -279.46, 2136.65)
			event.ObjsStartPas(0)
			at = 5
			wait_frames(40)
			event.SetFadeOut(20)
			at = 6
			wait_frames(20)
			event.EohSetFootSoundId(0, 0)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			var7 = vm.f32(vm.f32(vm.sin(-2.0) * 50.0) + var4)
			var8 = 0.0
			var9 = vm.f32(vm.f32(vm.cos(-2.0) * 50.0) + var6)
			event.ObjsMove(0, var7, var8, var9, 30, 1)
			event.ObjsReference(0, var7, var8, var9, 10)
			event.ObjsSetMotion(0, "歩き")
			event.ObjsMotionDelay(0, 30)
			event.ObjsSetMotion(0, "立ち")
			var10 = 0
			while var10 < 30 do
				do
					local out1, out2, out3 = event.GetCharaPos(0)
					var4 = out1 or var4
					var5 = out2 or var5
					var6 = out3 or var6
				end
				var5 = vm.f32(var5 + 30.0)
				event.SetCameraRef(var4, var5, var6)
				var10 = var10 + 1
				at = 7
				vm.wait(7)
			end
		end
		if flag == 0 or flag_2 == 0 then
			flag_3 = event.GetFlag(508) or flag_3
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			active_chr_no_2 = event.GetActiveChrNo() or active_chr_no_2
			if active_chr_no_2 == 0 then
				if flag == 0 then
					if flag_3 == 0 then
						event.MesMake_2(
							0,
							"Sembra che sia quella macchina\na far piovere fuoco.<page>Devi fare qualcosa!\nMa cosa?"
						)
					else
						event.MesMake_2(0, "Dobbiamo distruggere la Sputa Fuoco!")
					end
				else
					event.MesMake_2(0, "[UNI00c8] ora di contrattaccare sul Robomobile!")
				end
			elseif flag == 0 then
				if flag_3 == 0 then
					event.MesMake_2(
						0,
						"Sembra che sia quella macchina\na far piovere fuoco.<page>Devi fare qualcosa!\nMa cosa?"
					)
				else
					event.MesMake_2(0, "La Sputa Fuoco non [UNI00e8] qui.")
				end
			else
				event.MesMake_2(0, "Max, [UNI00e8] ora di contrattaccare\ncon il Robomobile!")
			end
			at = 8
			helper_75684dd8(0, -1, 5, 256, 208)
		end
		event.EohSetFootSoundId(0, 0)
		event.ResetCamera(0)
		event.Finish()
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				helper_ee1c51d0(0, 21, 5, 256, 208)
			end
			if at <= 2 then
				wait_frames_skipping(10)
			end
			return 0
		end
		if at <= 6 then
			if at == 4 then
				var3 = received[1] :: number
			end
			if at <= 4 then
				wait_frames_skipping(40)
			end
			if at <= 5 then
				wait_frames_skipping(20)
			end
			return 1
		end
		if at <= 8 then
			if at <= 7 then
				helper_ee1c51d0(0, -1, 5, 256, 208)
			end
			return 0
		end
		return nil
	end)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	event_99()
	flag = event.GetFlag(508) or flag
	flag_2 = event.GetFlag(512) or flag_2
	if flag == 1 and flag_2 == 0 then
		helper_d86a01e1()
	else
		helper_402d163f()
	end
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	vm.wait(1)
	helper_c956b4a2(64)
	event.Finish()
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local item: s32 = 0
	local argc: s32 = 0
	local var4: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.SetMesPreset(0, 4)
			event.SetMesWindowMode(0, 4)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				at = 1
				helper_75684dd8(0, 22, 8, 0, 0)
			else
				at = 2
				helper_75684dd8(0, 23, 8, 0, 0)
			end
			event.Finish()
			return
		end
		var1 = event.GetEventData_2(6) or var1
		if var1 == 1 then
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			argc = event.GetItemNum(372) or argc
			if argc <= 0 then
				event.MesMake_2(
					0,
					"Dobbiamo trovare qualcosa\nche riesca a distruggerlo.\n(Premi (#) per usare gli Oggetti.)"
				)
			else
				event.MesMake_2(0, "La Sputa Fuoco.\n(Premi (#) per accedere al Menu)")
			end
			at = 3
			var4 = helper_c292fa16(0, -1, 5, 256, 208, var4)
			if var4 == 1 then
				var1 = 2
			end
		end
		if var1 == 2 then
			event.GotoUseItem(372)
			at = 4
			vm.wait(4)
			item = vmhost.used_item() or item
			if item > 0 then
				if item == 372 then
					event.SetFadeOut(15)
					at = 5
					wait_frames(15)
					event.DngSetupMainUnit(0)
					at = 6
					helper_55215ed6()
					event.SetBitCtrl(1, 1)
					event.FuncPointShow("", "dun_entrance", 0)
					event.FuncPointShow("", "entrance", 0)
					event.SetCharaChangeFlag(3, 0)
					event.SetCharaChangeMask(3, 0)
					event.SetCharaChangeFlag(1, 0)
					event.SetCharaChangeMask(1, 0)
					event.Initialize()
					at = 7
					vm.wait(7)
					event.EohSyncObj_2(0, "p01_battleship")
					event.EohSetShow(0, 1)
					event.LoadMonsterFile(517, 1)
					event.LoadMonsterFile(518, 0)
					event.LoadMonsterFile(519, 0)
					event.AutoSetMonster(517, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.SetFadeIn(15)
					return
				else
					at = 8
					helper_5fb66cb1()
				end
			end
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ee1c51d0(0, 23, 8, 0, 0)
			end
			return 0
		end
		if at <= 7 then
			if at == 3 then
				var4 = received[2] :: number
			end
			if at <= 3 then
				local _ = var1 == 1
				var1 = 2
			end
			if at <= 4 then
				wait_frames_skipping(15)
			end
			if at <= 5 then
				at = 6
				helper_55215ed6()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 1)
					event.FuncPointShow("", "dun_entrance", 0)
					event.FuncPointShow("", "entrance", 0)
					event.SetCharaChangeFlag(3, 0)
					event.SetCharaChangeMask(3, 0)
					event.SetCharaChangeFlag(1, 0)
					event.SetCharaChangeMask(1, 0)
					event.Initialize()
					at = 7
					vm.wait(7)
					event.EohSyncObj_2(0, "p01_battleship")
					event.EohSetShow(0, 1)
					event.LoadMonsterFile(517, 1)
					event.LoadMonsterFile(518, 0)
					event.LoadMonsterFile(519, 0)
					event.AutoSetMonster(517, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.SetFadeIn(15)
					return
				end)
			end
			return 0
		end
		if at <= 8 then
			return 0
		end
		return nil
	end)
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		wait_frames(20)
		event.DelMonster(-1)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.LeaveMonicaItemCheck()
		event.JoinPartyMember(3, 0)
		event.SetCharaChangeFlag(3, 0)
		event.SetCharaChangeMask(3, 0)
		event.JoinPartyMember(1, 0)
		event.SetCharaChangeFlag(1, 0)
		event.SetCharaChangeMask(1, 0)
		at = 2
		helper_43d1778f()
		event.SetBitCtrl(1, 0)
		event.FuncPointShow("", "dun_entrance", 1)
		event.FuncPointShow("", "entrance", 1)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_43d1778f()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 0)
					event.FuncPointShow("", "dun_entrance", 1)
					event.FuncPointShow("", "entrance", 1)
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
function script.event_550()
	if helper_11618() ~= 0 then
		event.LoadScript("d05/d05.stb", 1000)
	end
end

--- Event 551, which map data, a script or the engine runs by number.
function script.event_551()
	local stage_id: s32 = 0
	local var1: s32 = 0
	local argc: s32 = 0
	if helper_1293c() ~= 0 then
		stage_id = event.DngGetStageId() or stage_id
		var1 = event.DngGetFloorId() or var1
		argc = event.GetNextFloor(var1, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var1, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		event.LoadScript("d05/d05.stb", 1000)
	end
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	event.Initialize()
	event.SetMesWindowMode(0, 0)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(32)
	event.PlayBgm(0)
	event.SetCharaPos(0, -1755.3, 0.0, 2614.3)
	event.EohSyncObj_2(0, "p01_battleship")
	event.EohSetShow(0, 1)
	event.LoadMonsterFile(517, 1)
	event.LoadMonsterFile(518, 0)
	event.LoadMonsterFile(519, 0)
	event.AutoSetMonster(517, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	vm.wait(2)
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- Event 15120, which map data, a script or the engine runs by number.
script.event_15120 = helper_d86a01e1

--- Event 15160, which map data, a script or the engine runs by number.
script.event_15160 = helper_55215ed6

--- Event 15200, which map data, a script or the engine runs by number.
script.event_15200 = helper_43d1778f

return script
