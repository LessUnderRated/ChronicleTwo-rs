--!strict
-- map/s/s19/s19_3.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_013b7e59 = require("@lib/event/helper_013b7e59")
local helper_0f67d486 = require("@lib/event/helper_0f67d486")
local helper_3d13e6aa = require("@lib/event/helper_3d13e6aa")
local helper_3e84c83c = require("@lib/event/helper_3e84c83c")
local helper_47084b1b = require("@lib/event/helper_47084b1b")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_4a9b8bc5 = require("@lib/event/helper_4a9b8bc5")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_7d6d40d6 = require("@lib/event/helper_7d6d40d6")
local helper_80432060 = require("@lib/event/helper_80432060")
local helper_80ad60c2 = require("@lib/event/helper_80ad60c2")
local helper_8e4884b7 = require("@lib/event/helper_8e4884b7")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_d2e16403 = require("@lib/event/helper_d2e16403")
local helper_f0ee9a01 = require("@lib/event/helper_f0ee9a01")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	event.LoadSound(4684)
	flag = event.GetFlag(408) or flag
	flag_2 = event.GetFlag(420) or flag_2
	var2 = event.GetSavedataEtc(2) or var2
	if flag == 1 and flag_2 == 0 and var2 == 1 then
	else
		event.StopBgm(0)
		wait_frames(4)
		event.LoadBgm(167)
		event.PlayBgm(0)
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local var3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		event_99()
		flag = event.GetFlag(400) or flag
		flag_2 = event.GetFlag(408) or flag_2
		flag_3 = event.GetFlag(420) or flag_3
		if flag == 1 then
			if flag_2 == 0 then
				at = 2
				helper_0f67d486()
				event.GotoEdit(75, 500)
				return
			end
			if flag_3 == 0 then
				var3 = event.GetSavedataEtc(2) or var3
				if var3 ~= 0 then
					at = 3
					helper_3d13e6aa(1)
					at = 4
					helper_80432060()
					event.SetBitCtrl(1, 1)
					return
				else
					at = 5
					helper_013b7e59()
					event.SoundAllStop()
					at = 6
					wait_frames(6)
					event.LoadBgm(18)
					event.LoadSound(4601)
					event.PlayBgm(0)
					event.LoadScript("d04/d04.stb", 1000)
					return
				end
			else
				at = 7
				helper_8e4884b7()
			end
		else
			at = 8
			helper_8e4884b7()
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_0f67d486()
				return vm.continue_with(function()
					event.GotoEdit(75, 500)
					return
				end)
			end
			return 0
		end
		if at <= 4 then
			if at <= 3 then
				at = 4
				helper_80432060()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 1)
					return
				end)
			end
			return 0
		end
		if at <= 6 then
			if at <= 5 then
				wait_frames_skipping(6)
			end
			return 0
		end
		if at <= 8 then
			if at <= 7 then
				at = 8
				helper_8e4884b7()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_0f67d486

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	event.SetFadeIn(30)
	event.Initialize()
	vm.wait(1)
	event.SetCharaPos(0, -29.1, 1.4, 787.9)
	event.DngPause(17, 0)
	event.LoadMonsterFile(516, 1)
	event.LoadMonsterFile(1001, 0)
	event.AutoSetMonster(516, -50.0, -46.69, 202.57, 0.0, 0.0, 0.0)
	event.GetCharaPos(0)
	event.Finish()
end

--- Event 152, which map data, a script or the engine runs by number.
function script.event_152()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 153, which map data, a script or the engine runs by number.
function script.event_153()
	local at: number = 0
	return vm.guard(function()
		event.DngPause(1, 1)
		event.SetFadeOut(0)
		event.DngPause(16, 1)
		at = 1
		wait_frames(30)
		event.SetFadeIn(30)
		event.DelMonster(-1)
		at = 2
		helper_7d6d40d6()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_7d6d40d6()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 154, which map data, a script or the engine runs by number.
function script.event_154()
	event.SetCameraRef(-33.22, 3.88, 763.5)
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 155, which map data, a script or the engine runs by number.
script.event_155 = helper_80432060

--- Event 160, which map data, a script or the engine runs by number.
function script.event_160()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	event.Initialize()
	var0 = event.GetBitCtrl(1) or var0
	if var0 == 1 then
		event.DngPause(9, 1)
		event.ActchrSetDefMotion(0)
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "F[UNI00fc]ttere Shingala mit\ndiesem Fisch - schnell!")
		helper_75684dd8(0, -1, 5, 0, 0)
		event.DngPause(9, 0)
		return
	end
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.SetMotion(0, "立ち")
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
	if helper_3e84c83c(0) ~= 0 then
		event.LoadScript("d04/d04.stb", 1000)
	end
end

--- Event 201, which map data, a script or the engine runs by number.
function script.event_201()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local stage_id: s32 = 0
	local var3: s32 = 0
	local argc: s32 = 0
	event.Initialize()
	var0 = event.GetBitCtrl(1) or var0
	if var0 == 1 then
		event.DngPause(9, 1)
		event.ActchrSetDefMotion(0)
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "F[UNI00fc]ttere Shingala mit\ndiesem Fisch - schnell!")
		helper_75684dd8(0, -1, 5, 0, 0)
		event.DngPause(9, 0)
		return
	end
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.SetMotion(0, "立ち")
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
	if helper_3e84c83c(1) ~= 0 then
		stage_id = event.DngGetStageId() or stage_id
		var3 = event.DngGetFloorId() or var3
		argc = event.GetNextFloor(var3, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var3, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		event.StopBgm(0)
		event.StopEnvBgm()
		event.SndStopSrc()
		wait_frames(6)
		event.LoadBgm(18)
		event.LoadSound(4601)
		event.PlayBgm(0)
		event.LoadScript("d04/d04.stb", 1000)
	end
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetFadeOut(0)
		at = 1
		vm.wait(1)
		at = 2
		vm.wait(2)
		event.DelMonster(-1)
		event.SetSavedataEtc(4)
		event.SetBitCtrl(1, 0)
		at = 3
		helper_3d13e6aa(0)
		at = 4
		helper_7d6d40d6()
		event.BgmLoadCancel()
		event.GotoEdit(75, 100)
		at = 5
		vm.wait(5)
		return
	end, function(received: { any })
		if at <= 5 then
			if at <= 2 then
				helper_4a9b8bc5(0)
			end
			if at <= 3 then
				at = 4
				helper_7d6d40d6()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.GotoEdit(75, 100)
					at = 5
					vm.wait(5)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local var0: s32 = 0
	local var1: s32 = 0
	local argc: s32 = 0
	local battle_bgm_vol: s32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	local debug_flag: s32 = 0
	local load_no: s32 = 0
	local boss_map: s32 = 0
	helper_d2e16403()
	event.DngPause(1, 0)
	var0 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	event.DngPause(16384, 1)
	event.GetActiveBgmStatus(-1)
	var1 = event.GetEventInfoSndid(4) or var1
	argc = event.GetSeStatus(var1, 0) or argc
	battle_bgm_vol = event.GetBtlBgmVol() or battle_bgm_vol
	event.SndSeStop(var1, 0)
	event.StopBgm(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	event.SetLoadbgFile_2("snd2/bgm/bg_060.sound.json", "textures/dungeon/image/gameover/gameover_1.json")
	wait_frames(30)
	helper_479dc9e9()
	event.LoadBgmPack(60)
	event.PlayBgm(0)
	wait_frames(30)
	event.DngPause(1, 1)
	event.DngCollisionAllClr()
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(
		0,
		"Oh nein! Shingala ist tot ...\nWir brauchten ihn doch, um die Zukunft\nwieder in Ordnung zu bringen ..."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	block = event.LoadImg_4(5, "textures/dungeon/image/gameover/gameover_1.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "gameover1", block)
	event.SpriteSetColor(0, 128, 128, 128, 128)
	event.SpriteSetUvsize(0, 0, 0, 576, 128)
	event.SpriteSetPutsize(0, 576, 128)
	event.SpriteSetPos(0, -320, 208)
	event.SpriteSetDraw(0, 1)
	event.EohSyncSprite(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsMove(0, 288, 208, 0.0, 20)
	wait_frames(30)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "gameover1", block)
	event.SpriteSetColor(1, 128, 128, 128, 0)
	event.SpriteSetUvsize(1, 0, 128, 576, 64)
	event.SpriteSetPutsize(1, 576, 64)
	event.SpriteSetPos(1, 256, 208)
	event.SpriteSetDraw(1, 1)
	event.EohSyncSprite(1, 1)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetColor(1, 128, 128, 128, 128, 120)
	wait_frames(120)
	while true do
		if helper_581cb30c(0) ~= 0 then
			break
		else
			vm.wait(8)
		end
	end
	debug_flag = event.GetDebugFlag() or debug_flag
	debug_flag = 0
	if debug_flag == 1 then
		event.DngDebugCommand(0)
		event.ActchrSetDefMotion(0, 4)
	else
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		wait_frames(30)
		if active_chr_no == 2 then
			event.EsmClear()
		end
		event.StopBgm(0)
		event.SpriteSetDraw(0, 0)
		event.SpriteSetDraw(1, 0)
		event.DelImg(0)
		if var0 == 1 then
			event.AddHpRate(1.0, 0)
			event.AddWhp(0, 999)
			event.AddWhp(1, 999)
			event.DngRunEvent(-1)
			event.DelMonster(-1)
			event.DngPause(1, 0)
			event.Finish()
			return 1
		else
			event.SetExitFlag(1)
			event.Finish()
			return 0
		end
	end
	event.StopBgm(0)
	wait_frames(4)
	load_no = event.GetBgmStatusNowNo() or load_no
	event.LoadBgm(load_no)
	event.SetActiveBgmStatus(-1)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.DelImg(0)
	boss_map = event.DngCheckBossMap() or boss_map
	if boss_map ~= 1 then
		if argc == 1 then
			event.SndSePlay(var1, 0)
			event.SndSetSeVol(var1, 0, battle_bgm_vol)
		end
	end
	event.SetCameraCtrl(1)
	event.SetStatusbarShow(1, 1.0)
	if debug_flag ~= 1 then
		event.SetFadeIn(30)
	end
	event.DngPause(16385, 0)
	event.Finish()
	return 0
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	event.Initialize()
	event.DngPause(3, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"[(!)]Wenn du Shingala verletzt, wird er\n   w[UNI00fc]tend und st[UNI00fc]rmt auf dich zu.\n   Dann rei[UNI00df]t er den Mund auf,<page>   und du kannst den Elektro-Fisch\n   hineinwerfen!"
	)
	helper_75684dd8(0, -1, 5, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(3, 0)
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(416) or flag
		flag_2 = event.GetFlag(420) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var2 = vm.float_bits(event.GetRand(100)) or var2
			if var2 < 50 then
				at = 1
				helper_47084b1b(0, 8610060)
			else
				at = 2
				helper_47084b1b(0, 8610070)
			end
			return
		end
		at = 3
		helper_f0ee9a01(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_80ad60c2(0, 8610070)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		return nil
	end)
end

--- Event 14080, which map data, a script or the engine runs by number.
function script.event_14080()
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(0)
		event.SetFlag(400, 1)
		event.SetFlag(402, 1)
		event.SetFlag(404, 1)
		event.SetFlag(406, 1)
		event.SetFlag(408, 0)
		at = 1
		event_99()
		at = 2
		helper_0f67d486()
		event.ResetEventTrg()
		event.GotoEdit(75, 500)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_0f67d486()
				return vm.continue_with(function()
					event.ResetEventTrg()
					event.GotoEdit(75, 500)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 14100, which map data, a script or the engine runs by number.
function script.event_14100()
	local at: number = 0
	return vm.guard(function()
		event.SetFlag(400, 1)
		event.SetFlag(402, 1)
		event.SetFlag(404, 1)
		event.SetFlag(406, 1)
		event.SetFlag(408, 1)
		event.SetFlag(410, 0)
		at = 1
		event_99()
		at = 2
		helper_013b7e59()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_013b7e59()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 14160, which map data, a script or the engine runs by number.
function script.event_14160()
	local at: number = 0
	return vm.guard(function()
		at = 1
		event_99()
		event.SetFlag(400, 1)
		event.SetFlag(402, 1)
		event.SetFlag(404, 1)
		event.SetFlag(406, 1)
		event.SetFlag(408, 1)
		at = 2
		helper_80432060()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_80432060()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 14200, which map data, a script or the engine runs by number.
function script.event_14200()
	local at: number = 0
	return vm.guard(function()
		event.SetFlag(400, 1)
		event.SetFlag(402, 1)
		event.SetFlag(404, 1)
		event.SetFlag(406, 1)
		event.SetFlag(408, 1)
		event.SetFlag(416, 1)
		at = 1
		event_99()
		at = 2
		helper_7d6d40d6()
		event.ResetEventTrg()
		event.BgmLoadCancel()
		event.GotoEdit(75, 100)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_7d6d40d6()
				return vm.continue_with(function()
					event.ResetEventTrg()
					event.BgmLoadCancel()
					event.GotoEdit(75, 100)
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

return script
