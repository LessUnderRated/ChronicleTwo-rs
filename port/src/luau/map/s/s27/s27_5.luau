--!strict
-- map/s/s27/s27_5.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_024677a1 = require("@lib/event/helper_024677a1")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local helper_249b75d1 = require("@lib/event/helper_249b75d1")
local helper_31bb617a = require("@lib/event/helper_31bb617a")
local helper_33ff74db = require("@lib/event/helper_33ff74db")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_5673b458 = require("@lib/event/helper_5673b458")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_790d496b = require("@lib/event/helper_790d496b")
local helper_7ccafde4 = require("@lib/event/helper_7ccafde4")
local helper_87196c31 = require("@lib/event/helper_87196c31")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_dfed0a42 = require("@lib/event/helper_dfed0a42")
local helper_e84b4994 = require("@lib/event/helper_e84b4994")
local helper_f5363207 = require("@lib/event/helper_f5363207")
local show_message = require("@lib/event/show_message")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	helper_31bb617a()
end

--- Helper function.
local function helper_14910(arg0: s32)
	local flag: s32 = 0
	local var2: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local argc: s32 = 0
	event.SetMesWindowMode(0, 1)
	event.SetMesShippo(0, 1)
	flag = event.GetFlag(444) or flag
	if flag == 0 then
		var2 = 0
		flag_2 = event.GetFlag(420) or flag_2
		if flag_2 == 0 then
			event.MesMake_2(
				0,
				"[UNI00bf]Podr[UNI00ed]as preguntarle a ese miembro del Laboratorio Lunar\nqu[UNI00e9] es el aparato que lleva Shingala en la cabeza?"
			)
		else
			flag_3 = event.GetFlag(438) or flag_3
			if flag_3 == 0 then
				argc = event.GetItemHaveNum(375) or argc
				if argc >= 1 then
					event.MesMake_2(0, "[UNI00a1]Corre, dale el medicamento a\nShingala!")
					var2 = 1
				else
					event.MesMake_2(
						0,
						"Quiero que vayas a la playa donde\nest[UNI00e1]n los otros Shigura y\nque traigas medicamentos para curar a Shingala."
					)
				end
			else
				event.MesMake_2(0, "[UNI00a1]Por favor! [UNI00a1]Tienes que salvar\nla aldea Shigura!")
			end
		end
		helper_87196c31(arg0, var2)
	else
		event.MesMake_2(
			0,
			"Echo de menos a Shingala. [UNI00bf]Cu[UNI00e1]nto crecer[UNI00e1]\nhasta el a[UNI00f1]o que viene?"
		)
		helper_87196c31(arg0, 0)
	end
end

--- Helper function.
local function helper_14f5c()
	local var0: s32 = 0
	local var1: s32 = 0
	event.Initialize()
	var0 = event.GetEventData_2(14) or var0
	var1 = event.GetEventData_2(13) or var1
	if var0 == 9 then
		helper_14910(var1)
	end
end

--- Helper function.
local function helper_113e8()
	local var0: s32 = 0
	local player_chara: s32 = 0
	event.SetMesPreset(0, 0)
	var0 = event.GetEventData_2(13) or var0
	helper_4e93f9fc(var0, 0, 0)
	player_chara = event.GetControlChrid() or player_chara
	event.MesMake_2(0, "Ah, sois vosotros, chicos.\nGracias por ayudarme con Shingala.\n[UNI00bf]Qu[UNI00e9] tal?")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "[UNI00bf]C[UNI00f3]mo? [UNI00bf]Quieres que os acompa[UNI00f1]e?")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "[UNI00a1]Nada de eso!<page>Me tengo que quedar aqu[UNI00ed] a esperar\na Shingala.")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Pero pasar[UNI00e1]n por lo menos\nseis meses hasta que vuelva el Shigura...")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Hasta entonces no tengo nada que hacer, as[UNI00ed]\nque creo que puedo acompa[UNI00f1]aros.")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(
		0,
		"No hay raz[UNI00f3]n para quedarse aqu[UNI00ed].\nSupongo que s[UNI00f3]lo perder[UNI00ed]a el tiempo."
	)
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "[UNI00a1]Claro! Eres humano: deber[UNI00ed]as saberlo.")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "La comida esa tan sabrosa... [UNI00bf]Sabes\nc[UNI00f3]mo se llama?")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(
		0,
		"[UNI00a1]Venga, s[UNI00ed] lo sabes!\nEs naranja y del tama[UNI00f1]o de un pez.<page>En cualquier caso es naranja y sabe requetebi[UNI00e9]n."
	)
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Me gustar[UNI00ed]a comer m[UNI00e1]s.\n[UNI00bf]Me puedes conseguir una?")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.SetMotion(var0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Pau tiene orejas y grandes colmillos,\ncomo cierto animal.\n Comida naranja que le guste..."
	)
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 5, 1)
end

--- Helper function.
local function helper_11ff8()
	local var0: s32 = 0
	local var1: s32 = 0
	local player_chara: s32 = 0
	local item: s32 = 0
	event.SetMesPreset(0, 0)
	var0 = event.GetEventData_2(14) or var0
	var1 = event.GetEventData_2(13) or var1
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(var1, 0, 0)
	player_chara = event.GetControlChrid() or player_chara
	event.MesMake_2(0, "[UNI00a1]Oh! [UNI00bf]Me la has tra[UNI00ed]do?\nLa comida naranja...")
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.GotoUseItem(315)
	vm.wait(3)
	item = vmhost.used_item() or item
	if item <= 0 then
		event.SetMotion(var1, "立ち")
		event.Finish()
		return
	end
	if item ~= 315 then
		event.MesMake_2(0, "[UNI00a1]Anda ya! [UNI00a1]No me enga[UNI00f1]es!\nNo es esto.")
		helper_0ffc2526(0, -1, var1, player_chara, 0)
		event.SetMotion(var1, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(0, "Ah... Es esto.<page>El color, el olor,\nel crujido...")
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(0, "Al parecer los humanos\nno son tan desagradables.<page>Trato hecho.\nOs acompa[UNI00f1]o.")
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(0, "La verdad, hace poco tuve\nel presentimiento de que el mundo estaba amenazado.")
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(0, "Cuando estaba Shingala, supe que\nun tal Griffon estaba tramando algo.")
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(
		0,
		"Supongo que ir[UNI00e9]is a por [UNI00e9]l.\nEn tal caso, me encantar[UNI00e1] acompa[UNI00f1]aros."
	)
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(
		0,
		"Por cierto, no os ayudo s[UNI00f3]lo\nporque me hay[UNI00e1]is dado una zanahoria.\nNo pens[UNI00e9]is eso, por favor."
	)
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.SetMotion(var1, "立ち")
	event.SetNpcStatus(var0, 130)
	helper_024677a1(var0)
	event.Finish()
	event.SetQuestEtc(1, 5, 1)
end

--- Helper function.
local function helper_12ae8()
	local var0: s32 = 0
	local var1: s32 = 0
	event.SetMesPreset(0, 0)
	var0 = event.GetEventData_2(13) or var0
	var1 = event.GetChapter() or var1
	if var1 ~= 8 then
		event.MesMake_2(0, "Pero si encontr[UNI00e1]is m[UNI00e1]s zanahorias,\nya sab[UNI00e9]is d[UNI00f3]nde estoy.")
	else
		event.MesMake_2(0, "[UNI00a1]Eh! [UNI00bf]Qu[UNI00e9] tal? [UNI00a1]Por aqu[UNI00ed] genial!")
	end
	helper_1c04a0eb(var0, -1, 0, 0)
end

--- Helper function.
local function helper_12d80()
	local var0: s32 = 0
	var0 = event.GetQuestEtc(0, 5) or var0
	if var0 == 0 then
		helper_113e8()
		return
	end
	if var0 == 1 then
		helper_11ff8()
		return
	end
	if var0 == 2 then
		helper_12ae8()
		return
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local old_map_no: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event_99()
		old_map_no = event.GetOldMapNo() or old_map_no
		if old_map_no == 2 then
			flag = event.GetFlag(404) or flag
			if flag == 0 then
				at = 1
				helper_f5363207()
				event.BgmLoadCancel()
				event.MapJump_3(-1, "g03", 500)
			else
				at = 2
				helper_790d496b()
			end
		elseif old_map_no == 84 then
			flag_2 = event.GetFlag(408) or flag_2
			if flag_2 == 0 then
				at = 3
				helper_33ff74db()
			else
				at = 4
				helper_7ccafde4()
			end
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_dfed0a42()
			end
			if at <= 2 then
				at = 3
				helper_33ff74db()
				return vm.continue_with(function()
					return
				end)
			end
			if at <= 3 then
				at = 4
				helper_7ccafde4()
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
script.key_open = helper_5673b458

--- Event 201, which map data, a script or the engine runs by number.
function script.event_201()
	if helper_e84b4994() ~= 0 then
		event.MapJump_2(-1, "g03")
	end
end

--- Event 400, which map data, a script or the engine runs by number.
function script.event_400()
	local argc: s32 = 0
	local var1: s32 = 0
	local item: s32 = 0
	local var3: s32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var8: f32 = 0
	local yaw: f32 = 0
	local var11: s32 = 0
	local flag: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		argc = event.GetItemHaveNum(375) or argc
		if argc >= 1 then
			event.SetMotion(0, "立ち")
			var1 = event.GetEventData_2(6) or var1
			if var1 == 1 then
				event.SetMesWindowMode(0, 1)
				event.SetMesShippo(0, 0)
				event.MesMake_2(
					0,
					"Shingala est[UNI00e1] herido y sufre.\nAbre el men[UNI00fa] con el bot[UNI00f3]n (#)."
				)
				at = 1
				var3 = helper_c292fa16(0, -1, 5, 256, 208, var3)
				if var3 == 1 then
					var1 = 2
				end
			end
			if var1 == 2 then
				event.GotoUseItem(375)
				at = 2
				vm.wait(2)
				item = vmhost.used_item() or item
				if item > 0 then
					if item == 375 then
						at = 3
						helper_5673b458()
						event.MapJump_3(-1, "s40", 500)
						at = 4
						vm.wait(4)
						return
					else
						at = 5
						helper_5fb66cb1()
					end
				end
			end
		else
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.EohSyncChara(1, 9)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			do
				local _, out2, _ = event.GetCharaRot(0)
				var8 = out2 or var8
			end
			yaw = event.GetRefAngle(var4, var5, var6, -76.0, 0.0, 23.0) or yaw
			var11 = event.AngleCmp(var8, yaw, 0.1) or var11
			if var11 ~= 0 then
				event.ObjsRotation(0, 0.0, yaw, 0.0, 10)
				event.ObjsSetMotion(0, "歩き")
				event.ObjsMotionDelay(0, 10)
			end
			event.ObjsSetMotion(0, "立ち")
			at = 6
			wait_frames(20)
			event.SetMesWindowMode(0, 1)
			event.SetPakuMotion(1, "鳴く", 0, "座り", 0)
			flag = event.GetFlag(438) or flag
			if flag == 0 then
				event.MesMake_2(0, "[UNI00a1]Riiiiiiiiiah!")
			else
				event.MesMake_2(0, "[UNI00a1]Raaaaa-oh!")
			end
			at = 7
			helper_0ffc2526(0, -1, 9, 0, 0)
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at == 1 then
				var3 = received[2] :: number
			end
			if at <= 1 then
				local _ = var1 == 1
				var1 = 2
			end
			if at <= 2 then
				at = 3
				helper_5673b458()
				return vm.continue_with(function()
					event.MapJump_3(-1, "s40", 500)
					at = 4
					vm.wait(4)
					return
				end)
			end
			return 0
		end
		if at <= 7 then
			if at <= 5 then
				wait_frames_skipping(20)
			end
			if at <= 6 then
				helper_249b75d1(0, -1, 9, 0, 0)
			end
			return 0
		end
		return nil
	end)
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	event_99()
	helper_33ff74db()
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local flag: s32 = 0
	local var1: s32 = 0
	flag = event.GetFlag(500) or flag
	if flag == 0 then
		helper_14f5c()
	else
		var1 = event.GetEventData_2(13) or var1
		event.CtrlcStay()
		event.SetAi(0, var1)
		helper_12d80()
		event.SetAi(1, var1)
	end
end

--- Event 14040, which map data, a script or the engine runs by number.
function script.event_14040()
	event.SetFlag(408, 0)
	event.SetFlag(420, 0)
	event.SetFlag(444, 0)
	event_99()
	helper_f5363207()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "g03", 500)
end

--- Event 14380, which map data, a script or the engine runs by number.
function script.event_14380()
	event.SetFlag(408, 1)
	event.SetFlag(420, 1)
	event.SetFlag(444, 0)
	event_99()
	helper_5673b458()
	event.MapJump_3(-1, "s40", 500)
	vm.wait(2)
end

return script
