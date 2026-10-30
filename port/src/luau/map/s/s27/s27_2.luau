--!strict
-- map/s/s27/s27_2.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

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
local function helper_14890(arg0: s32)
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
				"Vous pourriez questionner le type\ndu Labo psy au sujet de l'appareil\nque Shingala a sur la t[UNI00ea]te."
			)
		else
			flag_3 = event.GetFlag(438) or flag_3
			if flag_3 == 0 then
				argc = event.GetItemHaveNum(375) or argc
				if argc >= 1 then
					event.MesMake_2(
						0,
						"D[UNI00e9]p[UNI00ea]chez-vous de donner ce\nm[UNI00e9]dicament [UNI00e0] Shingala !"
					)
					var2 = 1
				else
					event.MesMake_2(
						0,
						"Allez [UNI00e0] la plage o[UNI00f9] se trouvent\nles autres Shiguras et trouvez un\nrem[UNI00e8]de qui gu[UNI00e9]rira Shingala."
					)
				end
			else
				event.MesMake_2(0, "Je vous en prie ! Vous devez\nsauver le village des Shiguras !")
			end
		end
		helper_87196c31(arg0, var2)
	else
		event.MesMake_2(
			0,
			"Shingala me manque... J'ai h[UNI00e2]te\nde voir [UNI00e0] quel point il aura grandi\nl'an prochain."
		)
		helper_87196c31(arg0, 0)
	end
end

--- Helper function.
local function helper_14eec()
	local var0: s32 = 0
	local var1: s32 = 0
	event.Initialize()
	var0 = event.GetEventData_2(14) or var0
	var1 = event.GetEventData_2(13) or var1
	if var0 == 9 then
		helper_14890(var1)
	end
end

--- Helper function.
local function helper_113b8()
	local var0: s32 = 0
	local player_chara: s32 = 0
	event.SetMesPreset(0, 0)
	var0 = event.GetEventData_2(13) or var0
	helper_4e93f9fc(var0, 0, 0)
	player_chara = event.GetControlChrid() or player_chara
	event.MesMake_2(0, "Oh, salut !\nMerci de m'avoir aid[UNI00e9] avec Shingala.\nAlors, quoi de neuf ?")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Quoi ? Moi, venir avec toi ?")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Non, non pas question !<page>Je dois rester ici pour\nattendre Shingala.")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Cela dit, les Shiguras ne\nreviendront probablement pas avant\nsix mois...")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Au lieu de rester ici en attendant,\nje pourrais t'accompagner.")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Je n'ai rien [UNI00e0] faire ici. Si je\nreste, je vais perdre mon temps.")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Ah ouais ! T'es un humain, tu dois\nsavoir [UNI00e7]a !")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "Cet aliment d[UNI00e9]licieux... tu sais\ncomment [UNI00e7]a s'appelle ?")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(
		0,
		"Mais si, tu sais ! C'est orange, et\nen gros, de la taille d'un poisson.<page>Bref, c'est orange et d[UNI00e9]licieux."
	)
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.MesMake_2(0, "J'aimerais vraiment en ravoir.\nTu pourrais faire [UNI00e7]a pour moi ?")
	helper_0ffc2526(0, -1, var0, player_chara, 0)
	event.SetMotion(var0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Pau a de longues oreilles et de\n   grandes dents. [UNI00c7]a rappelle un certain\n   animal, qui adore un aliment orange..."
	)
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 5, 1)
end

--- Helper function.
local function helper_11f68()
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
	event.MesMake_2(0, "Oh ! Tu m'en as apport[UNI00e9] ?\nCet aliment orange...")
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
		event.MesMake_2(0, "Allez ! Ne me fais pas marcher !\nC'est pas [UNI00e7]a !")
		helper_0ffc2526(0, -1, var1, player_chara, 0)
		event.SetMotion(var1, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(0, "Ah... C'est [UNI00e7]a !<page>La couleur, l'odeur,\nle croquant...")
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(
		0,
		"Je suppose que vivre avec des\nhommes n'est pas si mal que [UNI00e7]a.<page>Bon, c'est d'accord.\nJe viens avec toi."
	)
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(0, "En fait, j'ai eu l'intuition\nr[UNI00e9]cemment que le monde avait\ndes probl[UNI00e8]mes.")
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(
		0,
		"Quand Shingala [UNI00e9]tait l[UNI00e0], je savais\nqu'un certain Griffon causait bien\ndes soucis."
	)
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(
		0,
		"Je suppose que tu dois essayer\nde l'arr[UNI00ea]ter. Dans ce cas, je serais\nheureux de t'aider."
	)
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.MesMake_2(
		0,
		"Au fait, je ne t'aide pas seulement\nparce que tu m'as donn[UNI00e9] une\ncarotte. Ne va pas t'imaginer [UNI00e7]a."
	)
	helper_0ffc2526(0, -1, var1, player_chara, 0)
	event.SetMotion(var1, "立ち")
	event.SetNpcStatus(var0, 130)
	helper_024677a1(var0)
	event.Finish()
	event.SetQuestEtc(1, 5, 1)
end

--- Helper function.
local function helper_12a98()
	local var0: s32 = 0
	local var1: s32 = 0
	event.SetMesPreset(0, 0)
	var0 = event.GetEventData_2(13) or var0
	var1 = event.GetChapter() or var1
	if var1 ~= 8 then
		event.MesMake_2(0, "Mais si jamais tu en trouves\nd'autres, tu sais o[UNI00f9] me trouver !")
	else
		event.MesMake_2(0, "H[UNI00e9], [UNI00e7]a roule ? Moi, c'est l'top !")
	end
	helper_1c04a0eb(var0, -1, 0, 0)
end

--- Helper function.
local function helper_12d00()
	local var0: s32 = 0
	var0 = event.GetQuestEtc(0, 5) or var0
	if var0 == 0 then
		helper_113b8()
		return
	end
	if var0 == 1 then
		helper_11f68()
		return
	end
	if var0 == 2 then
		helper_12a98()
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
				event.MesMake_2(0, "Le Shingala bless[UNI00e9] souffre.\nOuvrir le menu : (#).")
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
				event.MesMake_2(0, "Weeeeeeah !")
			else
				event.MesMake_2(0, "Waaaa-oh !")
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
		helper_14eec()
	else
		var1 = event.GetEventData_2(13) or var1
		event.CtrlcStay()
		event.SetAi(0, var1)
		helper_12d00()
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
