--!strict
-- map/d/d07/b01/d07b01_2.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_38cda040 = require("@lib/event/helper_38cda040")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_47084b1b = require("@lib/event/helper_47084b1b")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_7c656a4f = require("@lib/event/helper_7c656a4f")
local helper_7d7eee8f = require("@lib/event/helper_7d7eee8f")
local helper_80ad60c2 = require("@lib/event/helper_80ad60c2")
local helper_8e1771b9 = require("@lib/event/helper_8e1771b9")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_dac13067 = require("@lib/event/helper_dac13067")
local helper_dbff9fb6 = require("@lib/event/helper_dbff9fb6")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local helper_f0ee9a01 = require("@lib/event/helper_f0ee9a01")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	event.StopBgm(0)
	event.LoadSound(8693)
	flag = event.GetFlag(820) or flag
	if flag == 1 then
		event.EohSyncObj_2(0, "p04")
		event.EohSetShow(0, 0)
		event.FuncPointShow("p04", "func", 0)
	end
end

--- Event 28020, which map data, a script or the engine runs by number.
local function event_28020()
	event.Initialize()
	event.SetFadeOut(0)
	event.EohSyncObj_2(0, "p06")
	event.EohSetShow(0, 1)
	event.StopBgm(0)
	wait_frames(6)
	event.LoadBgm(40)
	event.PlayBgm(0)
	event.LoadMonsterFile(629, 1)
	event.LoadMonsterFile(630, 0)
	event.AutoSetMonster(629, -513.2, 9.0, -127.2, 0.0, 1.25, 0.0)
	helper_7d7eee8f(vm.f32(438.61), 0.0, vm.f32(192.19), vm.f32(-1.89))
	event.SetCameraRef(438.61, 30.0, 192.19)
	event.SetCameraPos(590.29, 39.11, 243.1)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	vm.wait(2)
	event.Finish()
end

--- Helper function.
local function helper_17358()
	local language_code: s32 = 0
	local block: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(0)
		event.SoundAllStop()
		at = 1
		wait_frames(6)
		event.SetFadeIn(0)
		event.AssignStack(5)
		event.ClearStack(5)
		language_code = event.GetLanguage() or language_code
		print("GET_LANGUAGE=", language_code, "\n")
		if language_code ~= 1 then
			event.SetMovieCc(0, 0)
			event.SetMovieCc(1, 2, vm.ftoi(vm.f32(109.8)), "Mes amis, mes amis...", vm.ftoi(vm.f32(50.7)))
			event.SetMovieCc(
				1,
				4,
				vm.ftoi(vm.f32(241.80002)),
				"Aujourd'hui, le train Noirpierre va partir pour un \nnouveau voyage dans toute notre r[UNI00e9]gion.",
				vm.ftoi(vm.f32(160.20001))
			)
			event.SetMovieCc(
				1,
				5,
				vm.ftoi(vm.f32(555.9)),
				"J'esp[UNI011d]re que le monde va suivre cet exemple et\nrecommencer [UNI0155] se d[UNI00e9]velopper.",
				vm.ftoi(vm.f32(143.40001))
			)
			event.SetMovieCc(
				1,
				6,
				vm.ftoi(vm.f32(788.4)),
				"Eh bien, le maire a retrouv[UNI00e9] de l'aplomb.",
				vm.ftoi(vm.f32(99.299995))
			)
			event.SetMovieCc(1, 7, vm.ftoi(vm.f32(897.3)), "Oui, c'est vrai.", vm.ftoi(vm.f32(33.6)))
			event.SetMovieCc(
				1,
				8,
				vm.ftoi(937.5),
				"Nous serons s[UNI0171]rement confront[UNI00e9]s [UNI0155] des difficult[UNI00e9]s,\nmais je suis certain qu'en travaillant ensemble,\nnous les r[UNI00e9]glerons sans probl[UNI011d]me !",
				vm.ftoi(vm.f32(234.6))
			)
			event.SetMovieCc(
				1,
				10,
				vm.ftoi(1294.5),
				"Vous, habitants de Palm Brinks, vous avez surmont[UNI00e9] tant\nde temp[UNI0129]tes et su faire face [UNI0155] l'adversit[UNI00e9]...\nCette victoire est enti[UNI011d]rement la v[UNI00f4]tre !!!",
				vm.ftoi(vm.f32(311.1))
			)
			event.SetMovieCc(
				1,
				12,
				vm.ftoi(vm.f32(1611.6001)),
				"Il fut un temps o[UNI017f] notre monde [UNI00e9]tait plong[UNI00e9] dans les t[UNI00e9]n[UNI011d]bres.",
				vm.ftoi(vm.f32(96.6))
			)
			event.SetMovieCc(
				1,
				13,
				vm.ftoi(vm.f32(1820.7)),
				"Les hommes de cette [UNI00e9]poque ont r[UNI00e9]sist[UNI00e9] et ont reconquis leur avenir.",
				vm.ftoi(vm.f32(99.299995))
			)
			event.SetMovieCc(
				1,
				14,
				vm.ftoi(vm.f32(2121.6)),
				"Mais le r[UNI00e9]cit de leur combat n'a jamais pu [UNI0129]tre transmis\naux g[UNI00e9]n[UNI00e9]rations futures.",
				vm.ftoi(vm.f32(128.40001))
			)
			event.SetMovieCc(
				1,
				15,
				vm.ftoi(vm.f32(2328.6)),
				"Cette [UNI00e9]tonnante aventure [UNI00e9]tait-elle r[UNI00e9]elle ou non ?\nPersonne ne le sait.",
				vm.ftoi(vm.f32(209.09999))
			)
			event.SetMovieCc(
				1,
				16,
				vm.ftoi(vm.f32(2623.2002)),
				"Mais...\nQuand vous vous prom[UNI011d]nerez la nuit, parlez-en [UNI0155] la lune...\nIl est bien possible qu'elle vous raconte notre [UNI00e9]trange histoire.",
				vm.ftoi(vm.f32(242.70001))
			)
			event.SetMovieCc(0, 1)
		end
		event.LoadMovie(5, "movie/end2.mp4")
		at = 2
		vm.wait(2)
		if language_code ~= 1 then
			event.SetMovieCc(0, 0)
		end
		event.PauseEnableFlag(0)
		block = event.LoadImg_4(5, "textures/event/e800/e824/e82401_1.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetColor(0, 0, 0, 0, 128)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetDraw(0, 1)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e82401", block)
		event.SpriteSetColor(1, 128, 128, 128, 128)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetDraw(1, 1)
		event.SetFadeIn(60)
		at = 3
		wait_frames(90)
		while true do
			if helper_581cb30c(0) ~= 0 then
				break
			else
				at = 4
				vm.wait(4)
			end
		end
		event.SetFadeOut(30)
		at = 5
		wait_frames(30)
		return
	end, function(received: { any })
		if at <= 5 then
			if at <= 1 then
				print("GET_LANGUAGE=", language_code, "\n")
			end
			if at <= 2 then
				wait_frames_skipping(90)
			end
			if at <= 4 then
				wait_frames_skipping(30)
			end
			local _ = helper_dbff9fb6(0)
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
	event_99()
	helper_7d7eee8f(vm.f32(972.08), vm.f32(-72.14), vm.f32(1770.23), vm.f32(-2.36))
	event.SetCameraRef(972.08, -42.14, 1770.23)
	event.SetCameraPos(1061.01, -40.06, 1860.38)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 151, which map data, a script or the engine runs by number.
script.event_151 = event_28020

--- Event 152, which map data, a script or the engine runs by number.
function script.event_152()
	event.SetCameraRef(0.0, 0.0, 0.0)
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	local active_chr_no: s32 = 0
	local var1: any = 0
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
	var1 = helper_ed4dc120(2, -1)
	if var1 == 0 then
		event.SetFadeOut(30)
		wait_frames(30)
		event.LoadScript("d07/d07.stb", 1000)
	else
		event.Finish()
	end
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local item: s32 = 0
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
			event.Finish()
			return
		end
		event.ActchrSetDefMotion(0)
		var1 = event.GetEventData_2(6) or var1
		if var1 == 1 then
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			event.SetMesDrawspeed(0, 1)
			event.MesMake_2(0, "Il y a un rocher sur le chemin.\n(Pour ouvrir le menu : (#).)")
			at = 3
			var2 = helper_c292fa16(0, -1, 5, 256, 208, var2)
			event.SetMesShippo(0, 1)
			event.SetMesDrawspeed(0, 0)
			if var2 == 1 then
				var1 = 2
			end
		end
		if var1 == 2 then
			event.SetStatusbarShow(0, 0.16666667)
			at = 4
			wait_frames(6)
			event.GotoUseItem(173)
			at = 5
			vm.wait(5)
			item = vmhost.used_item() or item
			if item == 173 then
				event.FadeOutBgm(20)
				event.SetFadeOut(20)
				at = 6
				wait_frames(20)
				event.FuncPointShow("p04", "func", 0)
				at = 7
				helper_dac13067()
				at = 8
				vm.wait(8)
				event.Initialize()
				event.EohSyncObj_2(0, "p05")
				event.EohSetShow(0, 1)
				event.EohSyncObj_2(1, "p06")
				event.EohSetShow(1, 1)
				event.SetBitCtrl(1, 1)
				event.LoadMonsterFile(629, 1)
				event.LoadMonsterFile(630, 0)
				event.AutoSetMonster(629, -513.2, 9.0, -127.2, 0.0, 1.25, 0.0)
				helper_7d7eee8f(vm.f32(438.61), 0.0, vm.f32(192.19), vm.f32(-1.89))
				event.SetCameraRef(438.61, 30.0, 192.19)
				event.SetCameraPos(590.29, 39.11, 243.1)
				event.ResetCamera(0)
				event.SetFadeIn(30)
				event.Finish()
			elseif item <= 0 then
			else
				at = 9
				helper_5fb66cb1()
			end
			event.SetStatusbarShow(1, 0.16666667)
			at = 10
			wait_frames(6)
		end
		event.DngPause(1, 0)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ee1c51d0(0, 21, 5, 256, 208)
			end
			return 0
		end
		if at <= 10 then
			if at == 3 then
				var2 = received[2] :: number
			end
			if at <= 3 then
				local _ = var1 == 1
				var1 = 2
				wait_frames_skipping(6)
			end
			if at <= 5 then
				wait_frames_skipping(20)
			end
			if at <= 6 then
				at = 7
				helper_dac13067()
				return vm.continue_with(function()
					at = 8
					vm.wait(8)
					event.Initialize()
					event.EohSyncObj_2(0, "p05")
					event.EohSetShow(0, 1)
					event.EohSyncObj_2(1, "p06")
					event.EohSetShow(1, 1)
					event.SetBitCtrl(1, 1)
					event.LoadMonsterFile(629, 1)
					event.LoadMonsterFile(630, 0)
					event.AutoSetMonster(629, -513.2, 9.0, -127.2, 0.0, 1.25, 0.0)
					helper_7d7eee8f(vm.f32(438.61), 0.0, vm.f32(192.19), vm.f32(-1.89))
					event.SetCameraRef(438.61, 30.0, 192.19)
					event.SetCameraPos(590.29, 39.11, 243.1)
					event.ResetCamera(0)
					event.SetFadeIn(30)
					event.Finish()
					event.SetStatusbarShow(1, 0.16666667)
					at = 10
					wait_frames(6)
					event.DngPause(1, 0)
					event.Finish()
					return
				end)
			end
			if at <= 8 then
				helper_43f02c95(vm.f32(438.61), 0.0, vm.f32(192.19), vm.f32(-1.89))
				helper_7c656a4f()
			end
			if at <= 9 then
				wait_frames_skipping(6)
			end
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local active_chr_no: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.FadeOutBgm(20)
		event.SetFadeOut(20)
		at = 1
		wait_frames(20)
		event.DelMonster(-1)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
		end
		event.EohSyncObj_2(0, "p05")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(1, "p06")
		event.EohSetShow(1, 0)
		event.SetBitCtrl(1, 0)
		at = 2
		helper_38cda040()
		at = 3
		helper_17358()
		event.SetExitFlag(1)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_38cda040()
				return vm.continue_with(function()
					at = 3
					helper_17358()
					event.SetExitFlag(1)
					return
				end)
			end
			if at <= 2 then
				helper_8e1771b9()
			end
			return 0
		end
		return nil
	end)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(816) or flag
		flag_2 = event.GetFlag(820) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var2 = 0
			var2 = vm.float_bits(event.GetRand(100)) or var2
			if var2 < 50 then
				at = 1
				helper_47084b1b(0, 8600060)
			else
				at = 2
				helper_47084b1b(0, 8600070)
			end
			return
		end
		at = 3
		helper_f0ee9a01(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_80ad60c2(0, 8600070)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		return nil
	end)
end

--- Event 18160, which map data, a script or the engine runs by number.
script.event_18160 = helper_dac13067

--- Event 18200, which map data, a script or the engine runs by number.
function script.event_18200()
	local at: number = 0
	return vm.guard(function()
		at = 1
		helper_38cda040()
		at = 2
		helper_17358()
		event.SetExitFlag(1)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_8e1771b9()
			end
			return 0
		end
		return nil
	end)
end

script.event_28020 = event_28020

return script
