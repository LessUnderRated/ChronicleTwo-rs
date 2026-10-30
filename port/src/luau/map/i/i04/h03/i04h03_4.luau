--!strict
-- map/i/i04/h03/i04h03_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_024677a1 = require("@lib/event/helper_024677a1")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_186669aa = require("@lib/event/helper_186669aa")
local helper_5f59db59 = require("@lib/event/helper_5f59db59")
local helper_70e4ac93 = require("@lib/event/helper_70e4ac93")
local helper_809643bd = require("@lib/event/helper_809643bd")
local helper_a87eb945 = require("@lib/event/helper_a87eb945")
local helper_ad047ca5 = require("@lib/event/helper_ad047ca5")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local helper_de14f188 = require("@lib/event/helper_de14f188")
local helper_f38eabca = require("@lib/event/helper_f38eabca")
local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_38108(chara_no: s32, arg1: s32)
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
	event.MesMake_2(0, "Ciao.\nMonica, giusto?")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(0, "Mi chiamo Parn.\nSono un artista magico.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	wait_objects(1)
	event.ObjsSetMotion(1, "歩き")
	event.ObjsReference(1, 60.0, 0.0, -100.0, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話", 2)
	event.ObjsNextMotion(1, "立ち")
	event.MesMake_2(0, "Non vi ho ancora presentato, vero?<page>Ecco Julia, la mia futura moglie.")
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
		"[(!)] Monica non [UNI00e8] molto brava in queste\n   situazioni. Forse pu[UNI00f2] fare qualcosa,\n   forse no. Meglio riprovare come Max."
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
local function helper_38e0c(chara_no: s32, arg1: s32)
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
	event.MesMake_2(0, "Ehi, Max!")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	wait_objects(1)
	event.ObjsSetMotion(1, "歩き")
	event.ObjsReference(1, 60.0, 0.0, -100.0, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話", 2)
	event.ObjsNextMotion(1, "立ち")
	event.MesMake_2(0, "Non vi ho ancora presentato, vero?<page>Ecco Julia, la mia futura moglie.")
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
		"Certo, ridi pure!\nLo so che [UNI00e8] strano!<page>Chi si innamorerebbe della\nragazza di un quadro?"
	)
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(
		0,
		"Ma io sono un artista magico e\nposso dar vita ai miei quadri.<page>I miei soggetti esistono davvero,\nescluse le creature viventi..."
	)
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(0, "Neanche un artista magico pu[UNI00f2]\nricreare la vita")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsRotation(0, 0.0, 3.1415927, 0.0, 30)
	wait_objects(0)
	event.ObjsSetMotion(0, "立ち")
	event.MesMake_2(0, "In realt[UNI00e0] un modo c'[UNI00e8]: un Uovo\nd'Oro in un grande albero antico.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(0, "Pare che la sua Vernice oro dia\nvita a qualunque disegno.")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.ObjsSetMotion(1, "歩き")
	event.ObjsRotation(1, 0.0, 0.17, 0.0, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話", 2)
	event.ObjsNextMotion(1, "立ち")
	event.MesMake_2(0, "Max, stai andando fuori\ncitt[UNI00e0], vero?<page>Mi prenderesti della Vernice oro?")
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.MesMake_2(
		0,
		"Non mi aspetto che lo faccia gratis.<page>Se mi dai una mano, user[UNI00f2] i miei\nnuovi poteri per aiutarti."
	)
	helper_0ffc2526(0, -1, chara_no, arg1, 0)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Un grande albero antico...\n   con un Uovo d'Oro! Dove diavolo\n   lo trovi un albero simile?!"
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
local function helper_3a28c(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 then
		helper_38108(arg0, arg1)
		return
	end
	helper_38e0c(arg0, arg1)
	event.SetQuestEtc(0, 1, 1)
end

--- Helper function.
local function helper_3a3fc()
	event.SetMesPreset(1, 4)
	set_window_mode(1, 4)
	event.MesMake_2(1, "Julia si [UNI00e8] unita al gruppo.\nJulia [UNI00e8] tornata al treno.")
	show_message(1, -1, 8, 0, 0)
end

--- Helper function.
local function helper_3a5b0(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	local item: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 then
		event.SetMesPreset(0, 0)
		helper_c8484b43(arg0, 0, 0)
		event.MesMake_2(0, "Le ragazze non riescono a capire\nperch[UNI00e9] gli uomini inseguano\ni propri ideali.")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Ti stavo aspettando.<page>Forza, dammi la Vernice, cos[UNI00ec]\nposso dar vita al mio quadro!")
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
		event.MesMake_2(0, "Starai scherzando!<page>Mi serve la Vernice oro.\nNon sbagliare!")
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
	event.MesMake_2(0, "Cos[UNI00ec] [UNI00e8] questa la Vernice oro...\nLa provo subito.")
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
	event.MesMake_2(0, "Lei, lei... [UNI00e8] vera...<page>Incredibile, [UNI00e8] perfetta!")
	helper_0ffc2526(0, -1, var5, 0, 0)
	event.ObjsSetMotion(1, "立ち")
	event.ObjsSetMotion(2, "歩き")
	event.ObjsReference(2, 30.52, 0.2, -56.3, 30)
	wait_objects(2)
	event.ObjsSetMotion(2, "立ち")
	event.ObjsSetMotion(2, "会話")
	event.MesMake_2(0, "Ciao, mi chiamo Julia.\nPiacere di conoscerti.")
	helper_0ffc2526(0, -1, 32, 0, 0)
	event.ObjsSetMotion(2, "立ち")
	event.ObjsSetMotion(1, "歩き")
	event.ObjsReference(1, 30.52, 0.2, -56.3, 30)
	wait_objects(1)
	event.ObjsSetMotion(1, "会話")
	event.MesMake_2(0, "Grazie, Max. Non ho dimenticato\nla mia promessa. Usa pure il\nmio nuovo potere quando vuoi!")
	helper_0ffc2526(0, -1, var5, 0, 0)
	event.ObjsSetMotion(1, "立ち")
	event.SetNpcStatus(5, 128)
	helper_024677a1(5)
	event.SetNpcStatus(22, 130)
	helper_3a3fc()
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
local function helper_3c084(arg0: s32, arg1: any)
	local var2: s32 = 0
	local active_chr_no: s32 = 0
	event.SetMesPreset(0, 0)
	var2 = event.GetChapter() or var2
	if var2 ~= 8 then
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 1 then
			event.MesMake_2(
				0,
				"Le ragazze non riescono a capire\nperch[UNI00e9] gli uomini inseguano\ni propri ideali."
			)
		else
			event.MesMake_2(0, "Usa pure il mio nuovo potere\nquando vuoi.")
		end
	else
		event.MesMake_2(
			0,
			"Il mondo della pittura [UNI00e8] sconfinato.\nPotrebbe volerci tutta la vita per\nconoscerlo ma ne varrebbe la pena!"
		)
	end
	helper_70e4ac93(arg0, -1, 0, 0)
end

--- Helper function.
local function helper_3c3e4(arg0: s32)
	local player_chara: s32 = 0
	local var2: s32 = 0
	player_chara = event.GetControlChrid() or player_chara
	var2 = event.GetQuestEtc(0, 0) or var2
	if var2 ~= 2 then
		helper_de14f188(arg0, player_chara)
		return
	end
	var2 = event.GetQuestEtc(0, 1) or var2
	if var2 == 0 then
		helper_3a28c(arg0, player_chara)
		return
	end
	if var2 == 1 then
		helper_3a5b0(arg0, player_chara)
		return
	end
	if var2 == 2 then
		helper_3c084(arg0, player_chara)
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
			helper_3c3e4(var1)
			event.SetAi(1, var1)
		else
			at = 2
			helper_5f59db59()
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
