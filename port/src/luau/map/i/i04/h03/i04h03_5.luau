--!strict
-- map/i/i04/h03/i04h03_5.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_024677a1 = require("@lib/event/helper_024677a1")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_186669aa = require("@lib/event/helper_186669aa")
local helper_3c08a2d9 = require("@lib/event/helper_3c08a2d9")
local helper_601a9055 = require("@lib/event/helper_601a9055")
local helper_70e4ac93 = require("@lib/event/helper_70e4ac93")
local helper_809643bd = require("@lib/event/helper_809643bd")
local helper_a87eb945 = require("@lib/event/helper_a87eb945")
local helper_ad047ca5 = require("@lib/event/helper_ad047ca5")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local helper_f38eabca = require("@lib/event/helper_f38eabca")
local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_39898(chara_no: s32, arg1: s32)
	event.SetMotion(arg1, "立ち")
	event.SetFadeOut(30)
	wait_frames(30)
	event.Initialize()
	event.SetMesPreset(0, 0)
	event.EohSyncChara(0, arg1)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSyncChara(1, chara_no)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.CmrsInit()
	event.CmrsSetPos(-41.63, 18.05, -20.16)
	event.CmrsSetRef(30.4, 34.28, -73.36)
	event.ObjsSetPos(0, 30.52, 0.2, -56.3)
	event.ObjsSetRot(0, 0.0, 3.1415927, 0.0)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsResetDaPosition(0)
	event.ObjsSetPos(1, 23.52, 0.2, -84.52)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "立ち")
	event.SetFadeIn(30)
	wait_frames(30)
	event.ObjsSetMotion(1, "会話", 2)
	event.ObjsNextMotion(1, "立ち")
	event.MesMake_2(0, "Hola.\n[UNI00bf]M[UNI00f3]nica, no?")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(0, "Soy Parn.\nSoy un artista m[UNI00e1]gico.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	wait_objects(1)
	event.ObjsSetMotion(1, "歩き")
	event.ObjsReference(1, 60.0, 0.0, -100.0, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話", 2)
	event.ObjsNextMotion(1, "立ち")
	event.MesMake_2(0, "No os he presentado todav[UNI00ed]a, [UNI00bf]no?<page>Esta es Julia, mi futura mujer.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsReference(0, 60.0, 0.0, -100.0, 30)
	wait_objects(0)
	event.ObjsSetMotion(0, "立ち")
	wait_frames(30)
	event.MesMake_2(0, "...")
	show_message(0, -1, 2, 341, 416)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]A M[UNI00f3]nica no se le dan muy bien\nestas situaciones. Podr[UNI00ed]a lograr algo,\npero es probable que no lo haga. Prueba m[UNI00e1]s tarde con Max."
	)
	show_message(0, -1, 8, 0, 0)
	event.SetFadeOut(30)
	wait_frames(30)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.ResetCamera(1, 3.14, 20.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_3a5cc(chara_no: s32, arg1: s32)
	event.SetMotion(arg1, "立ち")
	event.SetFadeOut(30)
	wait_frames(30)
	event.Initialize()
	event.SetMesPreset(0, 0)
	event.EohSyncChara(0, arg1)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSyncChara(1, chara_no)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.CmrsInit()
	event.CmrsSetPos(-41.63, 18.05, -20.16)
	event.CmrsSetRef(30.4, 34.28, -73.36)
	event.ObjsSetPos(0, 30.52, 0.2, -56.3)
	event.ObjsSetRot(0, 0.0, 3.1415927, 0.0)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsResetDaPosition(0)
	event.ObjsSetPos(1, 23.52, 0.2, -84.52)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "立ち")
	event.SetFadeIn(30)
	wait_frames(30)
	event.MesMake_2(0, "Hola, Max.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	wait_objects(1)
	event.ObjsSetMotion(1, "歩き")
	event.ObjsReference(1, 60.0, 0.0, -100.0, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話", 2)
	event.ObjsNextMotion(1, "立ち")
	event.MesMake_2(0, "No os he presentado todav[UNI00ed]a, [UNI00bf]no?<page>Esta es Julia, mi futura mujer.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsReference(0, 60.0, 0.0, -100.0, 30)
	wait_objects(0)
	event.ObjsSetMotion(0, "立ち")
	wait_frames(30)
	event.MesMake_2(0, "...")
	show_message(0, -1, 2, 341, 416)
	event.ObjsSetMotion(1, "会話", 2)
	event.ObjsNextMotion(1, "立ち")
	event.MesMake_2(
		0,
		"Puedes re[UNI00ed]rte lo que quieras.\nYa s[UNI00e9] que es raro.<page>[UNI00bf]Qui[UNI00e9]n se enamorar[UNI00ed]a de\nun retrato?"
	)
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(
		0,
		"Pero soy un artista m[UNI00e1]gico.\nTengo el poder de convertir en realidad las cosas que pinto.<page>Todo lo que pinto existe en el cuadro verdaderamente.\nA menos que se trate de un ser vivo..."
	)
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(0, "Ni siquiera un artista m[UNI00e1]gico puede pintar vida.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsRotation(0, 0.0, 3.1415927, 0.0, 30)
	wait_objects(0)
	event.ObjsSetMotion(0, "立ち")
	event.MesMake_2(
		0,
		"Aunque he o[UNI00ed]do que existe una forma.\nHay un Huevo dorado en un [UNI00e1]rbol grande y viejo."
	)
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(0, "Se cuenta que con el color dorado\nse puede dar vida a cualquier cosa que pintes.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.ObjsSetMotion(1, "歩き")
	event.ObjsRotation(1, 0.0, 0.17, 0.0, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話", 2)
	event.ObjsNextMotion(1, "立ち")
	event.MesMake_2(
		0,
		"Max, tengo entendido que\nte marchas de la ciudad, [UNI00bf]no?<page>[UNI00bf]Podr[UNI00ed]as traerme algo de Pintura dorada?"
	)
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(
		0,
		"Por supuesto que no espero que lo hagas a cambio de nada.<page>Si me ayudas, usar[UNI00e9]\nmi nuevo poder para devolverte el favor."
	)
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Un [UNI00e1]rbol grande y viejo...\n [UNI00a1]Con un Huevo dorado! [UNI00bf]Y d[UNI00f3]nde se supone\nque hay algo as[UNI00ed]?"
	)
	show_message(0, -1, 8, 0, 0)
	event.SetFadeOut(30)
	wait_frames(30)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.ResetCamera(1, 3.14, 20.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_3bb3c(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 then
		helper_39898(arg0, arg1)
		return
	end
	helper_3a5cc(arg0, arg1)
	event.SetQuestEtc(0, 1, 1)
end

--- Helper function.
local function helper_3bcac()
	event.SetMesPreset(1, 4)
	set_window_mode(1, 4)
	event.MesMake_2(1, "Julia se ha unido a tu grupo.\nJulia ha subido al tren.")
	show_message(1, -1, 8, 0, 0)
end

--- Helper function.
local function helper_3be50(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	local item: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 then
		event.SetMesPreset(0, 0)
		helper_c8484b43(arg0, 0, 0)
		event.MesMake_2(
			0,
			"Las chicas no deben de entender\npor qu[UNI00e9] los hombres necesitan\nperseguir sus ideales."
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Te he estado esperando.<page>R[UNI00e1]pido, dame la Pintura para\ndar vida a mi cuadro.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.GotoUseItem(376)
	vm.wait(5)
	item = vmhost.used_item() or item
	if item <= 0 then
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	if item ~= 376 then
		event.MesMake_2(
			0,
			"[UNI00a1]Est[UNI00e1]s de broma!<page>Lo que necesito es Pintura dorada.\n[UNI00a1]No te equivoques!"
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.SubItem(376)
	event.Initialize()
	event.SetFadeOut(30)
	wait_frames(30)
	event.LoadSound(2827)
	var4 = event.SndLoadSound_2(2827) or var4
	var5 = event.SearchCharaNo(5) or var5
	event.SetAi(0, var5)
	event.EohSyncChara(1, var5)
	event.ObjsInit(1, var5)
	event.ObjsSyncObj(1, 1)
	event.AssignStack(5)
	event.ClearStack(5)
	event.LoadChara(5, "chara/p01_25a.gltf", "info", 32)
	event.CharaActive(0, 32)
	event.EohSyncChara(2, 32)
	event.ObjsInit(2, 32)
	event.ObjsSyncObj(2, 2)
	event.LoadChara(5, "event/e200/e255/e255_rafhikari.gltf", "info", 33)
	event.CharaActive(0, 33)
	event.EohSyncChara(3, 33)
	event.ObjsInit(3, 33)
	event.ObjsSyncObj(3, 3)
	event.CmrsInit()
	event.CmrsSetPos(-41.63, 18.05, -20.16)
	event.CmrsSetRef(30.4, 34.28, -73.36)
	event.SetCharaPos(0, 30.52, 0.2, -56.3)
	event.SetCharaRot(0, 0.0, 3.1415927, 0.0)
	event.SetMotion(0, "立ち")
	event.ObjsSetPos(1, 23.52, 0.2, -84.52)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "立ち")
	event.SetFadeIn(30)
	wait_frames(30)
	event.ObjsSetMotion(1, "会話")
	event.MesMake_2(0, "O sea que esta es la Pintura dorada...\nLa probar[UNI00e9] ahora mismo.")
	helper_0ffc2526(0, -1, var5, 0, 0)
	event.ObjsSetMotion(1, "歩き")
	event.ObjsReference(1, 60.0, 0.0, -100.0, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話")
	wait_frames(60)
	event.ObjsSetMotion(1, "立ち")
	wait_frames(60)
	event.CharaActive(1, 33)
	event.ObjsSetPos(3, 45.0, 15.0, -90.0)
	event.ObjsSetMotion(3, "ラフレシアの光", 6)
	event.SndSePlay(var4, 2)
	wait_frames(60)
	event.SetFadeOut(30, 250.0, 250.0, 250.0)
	wait_frames(30)
	event.CharaActive(0, 33)
	event.CharaActive(1, 32)
	event.ObjsSetPos(2, 45.0, 15.0, -90.0)
	event.ObjsSetRot(2, 0.0, -0.7853982, 0.0)
	event.ObjsSetMotion(2, "立ち")
	wait_frames(30)
	event.SetFadeIn(30, 255.0, 255.0, 255.0)
	wait_frames(30)
	wait_frames(30)
	event.ObjsSetMotion(1, "会話")
	event.MesMake_2(0, "Es... Es real...<page>[UNI00a1]Incre[UNI00ed]ble, es perfecta!")
	helper_0ffc2526(0, -1, var5, 0, 0)
	event.ObjsSetMotion(1, "立ち")
	event.ObjsSetMotion(2, "歩き")
	event.ObjsReference(2, 30.52, 0.2, -56.3, 30)
	wait_objects(2)
	event.ObjsSetMotion(2, "立ち")
	event.ObjsSetMotion(2, "会話")
	event.MesMake_2(0, "Hola, soy Julia.\nEs un placer conoceros.")
	helper_0ffc2526(0, -1, 32, 0, 0)
	event.ObjsSetMotion(2, "立ち")
	event.ObjsSetMotion(1, "歩き")
	event.ObjsReference(1, 30.52, 0.2, -56.3, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話")
	event.MesMake_2(0, "Gracias, Max.\nNo he olvidado mi promesa. Usa mi\nnuevo poder cuando quieras.")
	helper_0ffc2526(0, -1, var5, 0, 0)
	event.ObjsSetMotion(1, "立ち")
	event.SetNpcStatus(5, 128)
	helper_024677a1(5)
	event.SetNpcStatus(22, 130)
	helper_3bcac()
	event.SetFadeOut(30)
	wait_frames(35)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.Finish()
	event.SetQuestEtc(1, 1, 1)
	event.SetAi(1, var5)
	event.ResetCamera(1, 3.14, 20.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_3d934(arg0: s32, arg1: any)
	local var2: s32 = 0
	local active_chr_no: s32 = 0
	event.SetMesPreset(0, 0)
	var2 = event.GetChapter() or var2
	if var2 ~= 8 then
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 1 then
			event.MesMake_2(
				0,
				"Las chicas no deben de entender\npor qu[UNI00e9] los hombres necesitan\nperseguir sus ideales."
			)
		else
			event.MesMake_2(0, "Usa mi nuevo poder\ncuando quieras.")
		end
	else
		event.MesMake_2(
			0,
			"El mundo de la pintura es muy profundo.\nPuede que me lleve toda una vida dominarlo,\npero el trayecto bien vale la pena."
		)
	end
	helper_70e4ac93(arg0, -1, 0, 0)
end

--- Helper function.
local function helper_3dc94(arg0: s32)
	local player_chara: s32 = 0
	local var2: s32 = 0
	player_chara = event.GetControlChrid() or player_chara
	var2 = event.GetQuestEtc(0, 0) or var2
	if var2 ~= 2 then
		helper_3c08a2d9(arg0, player_chara)
		return
	end
	var2 = event.GetQuestEtc(0, 1) or var2
	if var2 == 0 then
		helper_3bb3c(arg0, player_chara)
		return
	end
	if var2 == 1 then
		helper_3be50(arg0, player_chara)
		return
	end
	if var2 == 2 then
		helper_3d934(arg0, player_chara)
		return
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
script.default_event = helper_809643bd

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 400, which map data, a script or the engine runs by number.
function script.event_400()
	local flag: s32 = 0
	event.SetMotion(0, "立ち")
	flag = event.GetFlag(37) or flag
	if flag == 0 then
		event.SetFlag(37, 1)
		event.AddItem(243, 20)
		helper_f38eabca(243, 20)
		helper_186669aa(0)
		helper_a87eb945(1)
	end
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local var0: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetEventData_2(14) or var0
		if var0 == 5 then
			var1 = event.GetEventData_2(13) or var1
			event.CtrlcStay()
			event.SetAi(0, var1)
			at = 1
			helper_3dc94(var1)
			event.SetAi(1, var1)
		else
			at = 2
			helper_601a9055()
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ad047ca5()
			end
			return 0
		end
		return nil
	end)
end

return script
