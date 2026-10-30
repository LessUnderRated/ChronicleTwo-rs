--!strict
-- map/s/s06/s06_2.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_126fe783 = require("@lib/event/helper_126fe783")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_3bce1a2c = require("@lib/event/helper_3bce1a2c")
local helper_46574a08 = require("@lib/event/helper_46574a08")
local helper_4a9b8bc5 = require("@lib/event/helper_4a9b8bc5")
local helper_4d5f00f9 = require("@lib/event/helper_4d5f00f9")
local helper_5a05ed59 = require("@lib/event/helper_5a05ed59")
local helper_68186cf4 = require("@lib/event/helper_68186cf4")
local helper_69eefc83 = require("@lib/event/helper_69eefc83")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_78df2e5b = require("@lib/event/helper_78df2e5b")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_d4f5fdae = require("@lib/event/helper_d4f5fdae")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_fab3eef4 = require("@lib/event/helper_fab3eef4")
local helper_fc872710 = require("@lib/event/helper_fc872710")
local wait_frames = require("@lib/event/wait_frames")

--- The event run when the edit analysis found changes after a house door step or a Georama mode change.
local function edit_analyze_changed()
	local flag: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local active_chr_no: s32 = 0
	local var5: any = 0
	local stage_id: s32 = 0
	local var7: s32 = 0
	local argc: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	event.ActchrSetDefMotion(0)
	flag = event.GetFlag(7) or flag
	if flag == 0 then
		event.Initialize()
		event.DngPause(1, 1)
		var2 = event.JoinPartyMember(2) or var2
		if var2 ~= 0 then
			var1 = event.GetMesWindowMode(0) or var1
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			event.MesMake_2(0, "Pas le temps pour [UNI00e7]a !")
			helper_75684dd8(0, -1, 5, 0, 0)
			event.SetMesWindowMode(0, var1)
			vm.wait(2)
			event.DngPause(1, 0)
			event.Finish()
			return
		else
			event.SetMotion(0, "立ち")
			var1 = event.GetMesWindowMode(0) or var1
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			flag = event.GetFlag(104) or flag
			if flag == 1 then
				event.MesMake_2(0, "La porte semble verrouill[UNI00e9]e.\nRemontons pour l'instant.")
			else
				event.MesMake_2(0, "Pas le temps pour [UNI00e7]a !")
			end
			helper_75684dd8(0, -1, 5, 0, 0)
			event.SetMesWindowMode(0, var1)
			vm.wait(4)
			event.DngPause(1, 0)
			event.Finish()
			return
		end
	end
	event.Initialize()
	event.SetMotion(0, "立ち")
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "On dirait que pour pouvoir\navancer, tu dois descendre du\nRobomobil.")
		helper_75684dd8(0, -1, 8, 256, 208)
		event.Finish()
		return
	end
	if active_chr_no == 3 then
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		helper_75684dd8(0, 21, 8, 256, 208)
		event.Finish()
		return
	end
	event.SetMesWindowMode(0, 5)
	event.SetMesDrawspeed(0, 1)
	var5 = helper_ed4dc120(1, -1)
	if var5 == 0 then
		event.SetBitCtrl(1, 0)
		stage_id = event.DngGetStageId() or stage_id
		var7 = event.DngGetFloorId() or var7
		argc = event.GetNextFloor(var7, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var7, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		event.SetFadeOut(30)
		wait_frames(30)
		flag = event.GetFlag(8) or flag
		if flag == 0 then
			event.StopBgm(0)
			event.SetFlag(8, 1)
			event.BgmLoadCancel()
			event.GotoEdit(12, 540)
			vm.wait(9)
			return
		end
		event.BgmLoadCancel()
		event.GotoDng(0, 5, 1000)
		vm.wait(10)
	end
	event.Finish()
end

--- Helper function.
local function helper_17d54(arg0: any)
	local var1: s32 = 0
	event.CmrsSetPos(-276.53, 81.94, 10.07)
	event.CmrsSetRef(31.75, 72.44, -9.51)
	event.ObjsSetPos(0, -165.91, 50.0, 2.54)
	event.ObjsSetRot(0, 0.0, 1.65, 0.0)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4)
	event.ObjsSetPos(1, -165.91, 50.0, 2.54)
	event.ObjsSetRot(1, 0.0, 1.65, 0.0)
	event.ObjsSetMotion(1, "立ち（スティーブ）", 4)
	wait_frames(30)
	var1 = event.GetMesWindowMode() or var1
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(
		0,
		"[(!)]Pour utiliser le Robomobil, choisis\n   l'option Robomobil dans Personnages\n   (Menu principal).<page>Pour en descendre, choisis\nMax dans le menu Personnages."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(0, "[(!)]Tu peux demander [UNI00e0] C[UNI00e9]dric de\n   faire le plein du Robomobil.")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]Et [UNI00e0] mesure que le Robomobil\n   accumule des PEx, tu peux demander [UNI00e0]\n   C[UNI00e9]dric d'en am[UNI00e9]liorer le noyau. Le noyau<page>pourra alors supporter des accessoires\nplus nombreux et plus puissants."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]Augmente la capacit[UNI00e9] du noyau et\n   essaie d'installer des pi[UNI00e8]ces... Tu peux\n   personnaliser le Robomobil !"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, var1)
end

--- Helper function.
local function helper_18570()
	local var0: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(108, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		var0 = event.SndLoadSound_2(1819) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		event.CmrsInit()
		event.SetCameraPos(6.02, 94.24, 399.23)
		event.SetCameraRef(-4.96, 118.28, 117.71)
		event.LoadMotion(5, "event/e100/e108/e108_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetCharaPos(0, 0.0, 50.0, 0.0)
		event.SetCharaRot(0, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_steve.gltf", "info", 9)
		event.CharaActive(1, 9)
		event.EohSyncChara(1, 9)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.SetCharaPos(9, 0.0, 50.0, 0.0)
		event.SetCharaRot(9, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_erephant.gltf", "info", 10)
		event.CharaActive(0, 10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SetCharaPos(10, 0.0, 50.0, 0.0)
		event.SetCharaRot(10, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_polcurse.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SetCharaPos(9, 0.0, 50.0, 0.0)
		event.SetCharaRot(9, 0.0, 0.0, 0.0)
		event.EohSyncChara(10, 1)
		event.EohSetShow(10, 0)
		event.EohSyncChara(11, 2)
		event.EohSetShow(11, 0)
		event.LoadMes(0, 5, "event/e100/e108/e108a_1.txt")
		event.StopBgm(0)
		event.InitDramaScene()
		helper_46574a08(var0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "おこり顔")
		event.ObjsTexAnime(3, 1, "通常目パチ")
		helper_fc872710(var0)
		helper_3bce1a2c(var0)
		helper_4d5f00f9(var0)
		helper_78df2e5b(var0)
		helper_17d54(var0)
		event.SetFadeOut(30)
		wait_frames(30)
	end)
	vm.entry(9)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.SndSeStop(var0, 2)
	event.CharaActive(1, 0)
	event.EohSyncChara(10, 1)
	event.EohSetShow(10, 0)
	event.EohSyncChara(11, 2)
	event.EohSetShow(11, 0)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.SetCameraPos(-276.53, 81.94, 10.07)
	event.SetCameraRef(31.75, 72.44, -9.51)
	event.ResetCamera(0)
	event.DngSetupMainUnit(2)
	event.SetActiveChrNo(2)
	event.SetCharaPos(0, -167.59, 50.0, 2.86)
	event.SetCharaRot(0, 0.0, 1.77, 0.0)
	event.SetStatusbarShow(1)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(15)
	event.PlayBgm(0)
	event.ResetCamera(1, 0.0, 20.0)
	event.SetFadeIn(30)
	vm.wait(11)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_d4f5fdae

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	event.SetCharaPos(0, -240.84, 50.0, -5.32)
	event.SetCharaRot(0, 0.0, 1.6, 0.0)
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 300, which map data, a script or the engine runs by number.
script.event_300 = edit_analyze_changed

script.edit_analyze_changed = edit_analyze_changed

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	helper_fab3eef4()
	flag = event.GetFlag(7) or flag
	if flag == 0 then
		flag = event.GetFlag(106) or flag
		flag_2 = event.GetFlag(104) or flag_2
		var2 = event.JoinPartyMember(2) or var2
		if (if flag == 1 then var2 else 0) ~= 0 or flag_2 == 0 then
			event.SetBitCtrl(1, 1)
			helper_68186cf4(1)
		end
	end
	event.FuncPointShow("", "dun_out", 0)
	flag = event.GetFlag(7) or flag
	if flag == 1 then
		event.FuncPointShow("p01_s06", "doa1", 0)
		event.FuncPointShow("p01_s06", "doa0", 1)
		flag = event.GetFlag(109) or flag
		if flag ~= 0 then
			event.FuncPointShow("", "dun_out", 1)
		end
	else
		event.FuncPointShow("p01_s06", "doa1", 0)
		event.FuncPointShow("p01_s06", "doa0", 1)
		var2 = event.JoinPartyMember(2) or var2
		if var2 == 0 then
			flag = event.GetFlag(105) or flag
			if flag == 1 then
				event.FuncPointShow("", "dun_out", 1)
			end
		else
			event.FuncPointShow("", "dun_out", 0)
		end
	end
	event.Initialize()
	event.SetFadeOut(0)
	vm.wait(1)
	flag = event.GetFlag(103) or flag
	if flag == 0 then
		helper_68186cf4(1)
		event.LoadScript("s06/s06b_1.stb", 500)
		return
	else
		var2 = event.JoinPartyMember(2) or var2
		if var2 ~= 0 then
			flag = event.GetFlag(25) or flag
			if flag == 1 then
				event.SetFlag(5, 0)
				flag = event.GetFlag(6) or flag
				if flag == 0 then
					event.SetFadeOut(0)
					event.SetFlag(6, 1)
					event.LoadScript("s06/s06b_1.stb", 510)
					return
				else
					flag = event.GetFlag(7) or flag
					if flag == 0 then
						event.SetFadeOut(0)
						event.LoadScript("s06/s06b_1.stb", 520)
						return
					else
						helper_d4f5fdae()
					end
				end
			else
				helper_d4f5fdae()
			end
		else
			event.SetFlag(5, 0)
			flag = event.GetFlag(7) or flag
			if flag == 1 then
				helper_d4f5fdae()
			else
				var2 = event.JoinPartyMember(2) or var2
				if var2 == 0 then
					flag = event.GetFlag(105) or flag
					if flag == 1 then
						helper_d4f5fdae()
					end
				else
					event.LoadMonsterFile(601, 1)
					helper_d4f5fdae()
					event.Initialize()
					event.AutoSetMonster(601, -36.31, 50.0, 1.24, 0.0, 0.0, 0.0)
					event.Finish()
				end
			end
		end
	end
	event.SetFadeIn(30)
	event.Finish()
end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	event.Initialize()
	event.LoadScript("s06/s06c_1.stb", 500)
	vm.wait(1)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(30)
		at = 1
		wait_frames(30)
		event.Initialize()
		event.SetFlag(7, 1)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		helper_68186cf4(0)
		event.DngPause(17, 1)
		at = 2
		helper_18570()
		event.DelMonster(-1)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_4a9b8bc5(0)
				at = 2
				helper_18570()
				return vm.continue_with(function()
					event.DelMonster(-1)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	local at: number = 0
	return vm.guard(function()
		event.SetBitCtrl(1, 0)
		helper_68186cf4(0)
		event.SetFadeOut(30)
		at = 1
		wait_frames(30)
		event.AddHpRate(1.0, 0)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.DngPause(17, 1)
		at = 2
		helper_69eefc83()
		event.BgmLoadCancel()
		event.GotoEdit(10, 531)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_69eefc83()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.GotoEdit(10, 531)
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

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	event.SetFadeOut(0)
	helper_126fe783()
end

--- Event 505, which map data, a script or the engine runs by number.
function script.event_505()
	event.LoadScript("s06/06c_1.stb", 500)
	vm.wait(1)
end

--- Event 506, which map data, a script or the engine runs by number.
function script.event_506()
	event.LoadScript("s06/06c_1.stb", 500)
	vm.wait(1)
end

--- Event 507, which map data, a script or the engine runs by number.
function script.event_507()
	event.SetFadeOut(0)
	event.SetFlag(6, 1)
	event.LoadScript("s06/s06b_1.stb", 510)
	vm.wait(1)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	local active_chr_no: s32 = 0
	local var1: any = 0
	event.Initialize()
	event.ActchrSetDefMotion(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.Initialize()
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		if active_chr_no == 2 then
			helper_75684dd8(0, 20, 5, 256, 208)
		else
			helper_75684dd8(0, 21, 5, 256, 208)
		end
		event.SetMesDrawspeed(0, 0)
		event.DngPause(1, 0)
		event.Finish()
		return
	end
	event.SetMesWindowMode(0, 5)
	var1 = helper_ed4dc120(2, -1)
	if var1 == 0 then
		event.SetFadeOut(30)
		wait_frames(30)
		event.SetBitCtrl(1, 0)
		event.LoadScript("d01/d01.stb", 1000)
		return
	end
	event.Finish()
end

--- Event 601, which map data, a script or the engine runs by number.
function script.event_601()
	vm.wait(1)
	helper_68186cf4(1)
	event.LoadScript("s06/s06c_1.stb", 600)
end

--- Event 630, which map data, a script or the engine runs by number.
function script.event_630()
	event.GotoEdit(12, 540)
	vm.wait(1)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local at: number = 0
	return vm.guard(function()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			flag = event.GetFlag(7) or flag
			if flag == 0 then
				event.SetFlag(6, 1)
				at = 1
				vm.wait(1)
				event.LoadScript("s06/s06.stb", 503)
			else
				at = 2
				helper_2a1e9b48(0)
			end
		else
			at = 3
			helper_2a1e9b48(0)
		end
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				helper_5a05ed59(0)
			end
			if at <= 2 then
				helper_5a05ed59(0)
			end
			return 0
		end
		return nil
	end)
end

--- Event 11030, which map data, a script or the engine runs by number.
function script.event_11030()
	event.SetFlag(103, 0)
	vm.wait(1)
	event.LoadScript("s06/s06b_1.stb", 500)
end

--- Event 11040, which map data, a script or the engine runs by number.
function script.event_11040()
	vm.wait(1)
	event.LoadScript("s06/s06c_1.stb", 500)
end

--- Event 11070, which map data, a script or the engine runs by number.
function script.event_11070()
	event.SetFlag(107, 1)
	vm.wait(1)
	event.LoadScript("s06/s06b_1.stb", 510)
end

--- Event 11081, which map data, a script or the engine runs by number.
function script.event_11081()
	local at: number = 0
	return vm.guard(function()
		event.DngPause(1, 1)
		event.SetFadeOut(15)
		at = 1
		wait_frames(15)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.DngPause(17, 1)
		at = 2
		helper_18570()
		event.SetFlag(7, 1)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_18570()
				return vm.continue_with(function()
					event.SetFlag(7, 1)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 11082, which map data, a script or the engine runs by number.
function script.event_11082()
	local at: number = 0
	return vm.guard(function()
		event.SetBitCtrl(1, 0)
		event.SetFadeOut(30)
		at = 1
		wait_frames(30)
		event.AddHpRate(1.0, 0)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.DngPause(17, 1)
		at = 2
		helper_69eefc83()
		event.BgmLoadCancel()
		event.GotoEdit(10, 531)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_69eefc83()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.GotoEdit(10, 531)
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

--- Event 21010, which map data, a script or the engine runs by number.
function script.event_21010()
	event.Initialize()
	vm.wait(1)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(190)
	event.PlayBgm(0)
	event.SetFadeIn(30)
	event.SetCharaPos(0, 0.0, 50.0, 100.0)
	event.SetCharaRot(0, 0.0, 3.1415927, 0.0)
	helper_68186cf4(1)
	event.LoadMonsterFile(601, 1)
	event.AutoSetMonster(601, 10.66, 50.0, -0.04, 0.0, -1.5707964, 0.0)
	event.Finish()
	event.ResetCamera(1, 0.0, 20.0)
end

return script
