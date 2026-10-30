--!strict
-- map/i/i01/h01/i01h01b_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_002f07c1 = require("@lib/event/helper_002f07c1")
local helper_0999bd0f = require("@lib/event/helper_0999bd0f")
local helper_113adf71 = require("@lib/event/helper_113adf71")
local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_3d7d594a = require("@lib/event/helper_3d7d594a")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_658b1052 = require("@lib/event/helper_658b1052")
local helper_6d5ac092 = require("@lib/event/helper_6d5ac092")
local helper_788a73ff = require("@lib/event/helper_788a73ff")
local helper_8197b747 = require("@lib/event/helper_8197b747")
local helper_86e93423 = require("@lib/event/helper_86e93423")
local helper_8ff1b441 = require("@lib/event/helper_8ff1b441")
local helper_a87eb945 = require("@lib/event/helper_a87eb945")
local helper_aa583625 = require("@lib/event/helper_aa583625")
local helper_b5dc508b = require("@lib/event/helper_b5dc508b")
local helper_b7c3c21b = require("@lib/event/helper_b7c3c21b")
local helper_b9156308 = require("@lib/event/helper_b9156308")
local helper_cb2597fe = require("@lib/event/helper_cb2597fe")
local helper_ee93982c = require("@lib/event/helper_ee93982c")
local helper_f2976400 = require("@lib/event/helper_f2976400")
local helper_f38eabca = require("@lib/event/helper_f38eabca")
local helper_f488989f = require("@lib/event/helper_f488989f")
local show_message = require("@lib/event/show_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_13c9c(se_id: s32, se_id_2: s32)
	event.CmrsSetPos(38.3, 34.99, -138.13)
	event.CmrsSetRef(16.02, 28.99, -153.84)
	event.CharaActive(1, 0)
	event.ObjsSetMotion(0, "カメラゲット", 4)
	event.EohSetShow(1, 0)
	event.ObjsSetRot(1, 0.0, -2.23, 0.0)
	event.DelReference(33)
	event.SetReference(0, "ef00", 33)
	event.SndPauseBgm()
	event.SndSePlay(se_id_2, 0)
	event.SndSePlay(se_id, 7)
	event.ObjsSetPos(2, -10.42, 26.48, -171.78)
	event.ObjsSetRot(2, 0.0, 1.02, 0.0)
	event.ObjsSetMotion(2, "発動", 6)
	event.EohSetShow(2, 1)
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(0, "[(!)]Hai ottenuto la Fotocamera.\n   Attivala dal Menu Oggetti.\n   Usala con il (#).")
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]Nei labirinti, puoi usare\n   la Fotocamera se [UNI00e8] equipaggiata\n   come Oggetto attivo."
	)
	show_message(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 7)
	helper_f38eabca(355, 1)
	event.PlayBgm(0)
end

--- Helper function.
local function helper_14910()
	local var0: s32 = 0
	local var1: s32 = 0
	local projection: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local block: s32 = 0
	vm.section(function()
		event.SetFlag(105, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(1222)
		var0 = event.SndLoadSound_2(1222) or var0
		var1 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var1
		event.LoadChara(4, "event/e100/e105/e105_steve.gltf", "info", 25)
		event.CharaActive(1, 25)
		event.SetCharaPos(25, 62.85, 11.43, -176.07)
		event.SetCharaRot(25, 0.0, -0.72, 0.0)
		event.AssignStack(5)
		event.ClearStack(5)
		do
			local out1, out2, out3 = event.GetCameraPos()
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		do
			local out1, out2, out3 = event.GetCameraRef()
			pos_x_2 = out1 or pos_x_2
			pos_y_2 = out2 or pos_y_2
			pos_z_2 = out3 or pos_z_2
		end
		projection = event.GetProjection() or projection
		event.CmrsInit()
		event.CmrsSetPos(-13.56, 50.69, -99.84)
		event.CmrsSetRef(47.32, 59.3, -184.47)
		event.LoadMotion(5, "event/e100/e105/e105_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "event/e100/e105/e105_starbre.gltf", "info", 32)
		event.CharaActive(0, 24)
		event.CharaActive(1, 32)
		event.EohSyncChara(1, 32)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.LoadItem(5, 369, "info", 33)
		event.CharaActive(0, 33)
		event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 34)
		event.CharaActive(1, 34)
		event.EohSyncChara(2, 34)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.EohSetShow(2, 0)
		block = event.LoadImg_4(5, "textures/event/e100/e105/e105a_2d.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e105a_2d01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(3, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e105a_2d02", block)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetDraw(1, 0)
		event.EohSyncSprite(4, 1)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.SetTime(7)
		event.LoadMes(0, 5, "event/e100/e105/e105a_1.txt")
		event.StopBgm(0)
		wait_frames(4)
		event.LoadBgm(193)
		event.PlayBgm(0)
		event.EohSetFootSoundId(0, 3)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.InitDramaScene()
		helper_b9156308(var0)
		helper_6d5ac092(var0)
		helper_b5dc508b(var0)
		helper_f488989f(var0)
		helper_002f07c1(var0)
		helper_13c9c(var0, var1)
		helper_ee93982c(var0)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		wait_frames(30)
	end)
	event.CancelDramaScene()
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.DelImg(0)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.SetFlag(56, 0)
	event.StopBgm(0)
	wait_frames(4)
	event.LoadBgm(46)
	event.PlayBgm(0)
	event.SetCameraPos(pos_x, pos_y, pos_z)
	event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
	event.SetProjection(projection)
	event.EohSetFootSoundId(0, 0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_1977c(se_id: s32)
	event.CmrsSetPos(16.09, 22.59, -109.83)
	event.CmrsSetRef(50.2, 23.69, -140.94)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, 55.27, -1.12, -130.46)
	event.ObjsSetRot(0, 0.0, -2.24, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4, -1.0, 1)
	event.ObjsSetMotion(1, "立ち", 4)
	wait_frames(15)
	event.SndSePlay(se_id, 3)
	event.ObjsSetMotion(1, "お金をやる", 6)
	event.ObjsNextMotion(1, "お金をやるL")
	wait_frames(14)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050400)
	event.ResetPakuAnim()
	event.SndSePlay(se_id, 4)
	event.ObjsSetMotion(0, "お金をもらう", 6)
	event.ObjsResetDaPosition(0)
	event.ObjsNextMotion(0, "お金をもらうL")
	wait_frames(60)
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(0, "Hai ottenuto 400 Gilda!")
	show_message(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 7)
	event.ObjsSetMotion(1, "お金をやる戻り", 6)
	event.ObjsNextMotion(1, "立ち")
	wait_objects(1)
end

--- Helper function.
local function helper_1b710(se_id: s32, se_id_2: s32)
	local var2: s32 = 0
	event.CmrsFadeInit()
	event.CmrsFadeOut(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.CmrsSetPos(133.98, 56.46, -175.98)
	event.CmrsSetRef(64.38, 33.46, -162.4)
	event.ObjsSetPos(0, 50.4, -0.02, -124.87)
	event.ObjsSetRot(0, 0.0, -1.94, 0.0)
	event.ObjsSetMotion(0, "右を見るL")
	event.ObjsSetPos(1, 26.91, -0.02, -138.97)
	event.ObjsSetRot(1, 0.0, 0.93, 0.0)
	event.ObjsSetMotion(1, "左を見るL")
	event.SetCharaPos(25, 62.71, 11.43, -173.15)
	event.SetCharaRot(25, 0.0, -1.52, 0.0)
	event.CharaActive(1, 36)
	event.ObjsSetPos(4, 74.43, 34.16, -174.29)
	event.ObjsSetRot(4, 0.0, -1.64, 0.0)
	event.ObjsSetPos(5, 75.19, 35.28, -173.96)
	event.ObjsSetRot(5, 0.0, -1.52, 0.0)
	event.ObjsSetMotion(5, "発動", 6)
	event.EohSetShow(5, 1)
	wait_frames(30)
	event.SndSePlay(se_id_2, 0)
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	wait_frames(15)
	event.SndSePlay(se_id, 8)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050520)
	event.ResetPakuAnim()
	var2 = event.GetMesWindowMode(0) or var2
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(
		0,
		"[(!)]Per usare il Robomobile, selezionalo\n   da Personaggi nel Menu principale\n   o premi semplicemente (R3)."
	)
	show_message(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, var2)
end

--- Helper function.
local function helper_1c470(arg0: s32)
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	vm.section(function()
		vm.entry(1)
		do
			local out1, out2, out3 = event.GetCharaPos(25)
			var3 = out1 or var3
			var4 = out2 or var4
			var5 = out3 or var5
		end
		do
			local out1, out2, out3 = event.GetCharaRot(25)
			var6 = out1 or var6
			var7 = out2 or var7
			var8 = out3 or var8
		end
		event.SetFlag(105, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var1 = event.SndLoadSound_2(1228) or var1
		var2 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var2
		event.AssignStack(5)
		event.ClearStack(5)
		do
			local out1, out2, out3 = event.GetCameraPos()
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		do
			local out1, out2, out3 = event.GetCameraRef()
			pos_x_2 = out1 or pos_x_2
			pos_y_2 = out2 or pos_y_2
			pos_z_2 = out3 or pos_z_2
		end
		event.CmrsInit()
		event.LoadChara(5, "event/e100/e105/e105_starbre.gltf", "info", 33)
		event.CharaActive(1, 33)
		event.EohSyncChara(1, 33)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.LoadMotion(5, "event/e100/e105/e105_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSetSoundId(0, var1)
		event.LoadChara(5, "event/e100/e105/e105_back.gltf", "info", 35)
		event.CharaActive(1, 35)
		event.LoadChara(5, "event/e100/e105/back01.gltf", "info", 36)
		event.CharaActive(1, 36)
		event.EohSyncChara(4, 36)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 37)
		event.CharaActive(1, 37)
		event.EohSyncChara(5, 37)
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 5)
		event.EohSetShow(5, 0)
		event.LoadMes(0, 5, "event/e100/e105/e105c_1.txt")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.InitDramaScene()
		if arg0 == 1 then
			event.ObjsResetDaPosition(0)
			helper_3d7d594a(var1)
		end
		if arg0 == 2 then
			event.ObjsResetDaPosition(0)
			helper_cb2597fe(var1)
			event.ObjsResetDaPosition(0)
			helper_8197b747(var1)
			event.ObjsResetDaPosition(0)
			helper_1977c(var1)
		end
		if arg0 == 3 then
			event.ObjsResetDaPosition(0)
			helper_1ef0d4b2()
		end
		if arg0 == 4 then
			event.ObjsResetDaPosition(0)
			helper_f2976400(var1)
		end
		if arg0 == 5 then
			event.StopBgm(0)
			event.ObjsResetDaPosition(0)
			helper_8ff1b441(var1)
			event.ObjsResetDaPosition(0)
			helper_1b710(var1, var2)
			event.ObjsResetDaPosition(0)
			helper_113adf71(var1)
		end
	end)
	vm.entry(10)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	wait_frames(30)
	if arg0 == 5 then
		event.PlayBgm(0)
	end
	event.SetCharaPos(25, var3, var4, var5)
	event.SetCharaRot(25, var6, var7, var8)
	event.SetCameraPos(pos_x, pos_y, pos_z)
	event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
	event.DelExtMotion(0)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.DeleteChara(35)
	event.DeleteChara(36)
	event.DeleteChara(37)
	event.ResetCamera(1, 0.0, 20.0)
	event.SpriteSetDraw(0, 0)
	event.DelImg(0)
	event.CharaActive(1, 0)
	vm.wait(12)
	event.SetFadeIn(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 200, which map data, a script or the engine runs by number.
script.event_200 = helper_0999bd0f

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_86e93423()
	event.SetFlag(18, 1)
	event.SetFlag(21, 1)
	helper_14910()
	helper_658b1052()
	event.SetCharaPos(0, 16.25, -0.02, -166.37)
	event.SetCharaRot(0, 0.0, 1.16, 0.0)
	event.SetMotion(0, "立ち")
	event.SetAi(0, 24)
	event.SetCharaPos(24, 38.77, -0.02, -147.68)
	event.SetCharaRot(24, 0.0, -2.04, 0.0)
	event.SetMotion(24, "立ち")
	event.SetAi(1, 24)
	event.SetSavedataEtc(0, 3)
	event.AddItem(369, 1)
	event.AddItem(355, 1)
	helper_a87eb945(1)
	vm.wait(3)
	event.LoadScript("i01h01/i01h01_1.stb", -1)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(10, 0.0, 0.0, 0.0)
		at = 1
		wait_frames(10)
		helper_86e93423()
		at = 2
		helper_b7c3c21b()
		helper_658b1052()
		event.SetCharaPos(0, 16.25, -0.02, -166.37)
		event.SetCharaRot(0, 0.0, 1.16, 0.0)
		event.SetMotion(0, "立ち")
		event.SetAi(0, 24)
		event.SetCharaPos(24, 38.77, -0.02, -147.68)
		event.SetCharaRot(24, 0.0, -2.04, 0.0)
		event.SetMotion(24, "立ち")
		at = 3
		vm.wait(3)
		event.SetAi(1, 24)
		at = 4
		vm.wait(4)
		event.LoadScript("i01h01/i01h01_1.stb", -1)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				helper_b7c3c21b()
				return vm.continue_with(function()
					helper_658b1052()
					event.SetCharaPos(0, 16.25, -0.02, -166.37)
					event.SetCharaRot(0, 0.0, 1.16, 0.0)
					event.SetMotion(0, "立ち")
					event.SetAi(0, 24)
					event.SetCharaPos(24, 38.77, -0.02, -147.68)
					event.SetCharaRot(24, 0.0, -2.04, 0.0)
					event.SetMotion(24, "立ち")
					at = 3
					vm.wait(3)
					event.SetAi(1, 24)
					at = 4
					vm.wait(4)
					event.LoadScript("i01h01/i01h01_1.stb", -1)
					return
				end)
			end
			if at <= 2 then
				helper_1ef0d4b2()
			end
			return 0
		end
		return nil
	end)
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	local var0: s32 = 0
	local flag: s32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local argc_3: s32 = 0
	local argc_4: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.SetMotion(0, "立ち")
		event.SetFlag(21, 0)
		event.SetFadeOut(30, 0.0, 0.0, 0.0)
		at = 1
		wait_frames(30)
		helper_86e93423()
		flag = event.GetFlag(13) or flag
		if flag == 1 then
			at = 2
			helper_1c470(5)
			helper_658b1052()
			event.SetCharaPos(0, 16.25, -0.02, -166.37)
			event.SetCharaRot(0, 0.0, 1.16, 0.0)
			event.SetMotion(0, "立ち")
			event.SetAi(0, 24)
			event.SetCharaPos(24, 38.77, -0.02, -147.68)
			event.SetCharaRot(24, 0.0, -2.04, 0.0)
			event.SetMotion(24, "立ち")
			at = 3
			vm.wait(3)
			event.SetAi(1, 24)
			event.SetFlag(20, 1)
			event.CharaActive(1, 26)
			event.SetReference(25, "back", 26)
			event.SubItem(165, 1)
			at = 4
			vm.wait(4)
			event.LoadScript("i01h01/i01h01_1.stb", -1)
			return
		else
			flag = event.GetFlag(19) or flag
			if flag == 1 then
				argc = event.GetItemNum(224) or argc
				argc_2 = event.GetItemNum(245) or argc_2
				argc_3 = event.GetItemNum(227) or argc_3
				if argc >= 20 and argc_2 >= 1 and argc_3 >= 2 then
					var0 = event.GetItemNum(165) or var0
					print("backpack num =", var0, "---------------\n")
					if var0 == 0 then
						at = 5
						helper_1c470(4)
						helper_658b1052()
						event.SetCharaPos(0, 59.55, -1.12, -135.97)
						event.SetCharaRot(0, 0.0, -2.24, 0.0)
						event.SetMotion(0, "立ち")
						event.SetAi(0, 24)
						event.SetCharaPos(24, 38.77, -0.02, -147.68)
						event.SetCharaRot(24, 0.0, 0.72, 0.0)
						event.SetMotion(24, "立ち")
						at = 6
						vm.wait(6)
						event.SetAi(1, 24)
						event.LoadScript("i01h01/i01h01_1.stb", -1)
						return
					end
				else
					event.SetFadeIn(0)
					event.SetAi(0, 24)
					event.MesMake_2(
						0,
						"Smettila di perder tempo!\nL'Emporio [UNI00e8] dall'altra parte\ndella strada. Forza, muoviti!"
					)
					at = 7
					helper_1c04a0eb(24, -1, 0, 0)
					event.SetAi(1, 24)
					at = 8
					vm.wait(8)
					event.LoadScript("i01h01/i01h01_1.stb", -1)
				end
			else
				var0 = event.CheckInventItem(165) or var0
				if var0 == 1 then
					argc_4 = event.GetInventionId(165) or argc_4
					if argc_4 ~= -1 then
						event.SetFlag(19, 1)
						event.AddMoney(400)
						at = 9
						helper_1c470(2)
						helper_658b1052()
						event.SetAi(0, 24)
						event.SetCharaPos(24, 38.77, -0.02, -147.68)
						event.SetCharaRot(24, 0.0, 0.72, 0.0)
						event.SetMotion(24, "立ち")
						at = 10
						vm.wait(10)
						event.SetAi(1, 24)
						event.LoadScript("i01h01/i01h01_1.stb", -1)
						return
					else
						at = 11
						helper_1c470(1)
						helper_658b1052()
						event.SetCharaPos(0, 16.25, -0.02, -166.37)
						event.SetCharaRot(0, 0.0, 1.16, 0.0)
						event.SetMotion(0, "立ち")
						event.SetAi(0, 24)
						event.SetCharaPos(24, 38.77, -0.02, -147.68)
						event.SetCharaRot(24, 0.0, -2.04, 0.0)
						event.SetMotion(24, "立ち")
						at = 12
						vm.wait(12)
						event.SetAi(1, 24)
						event.LoadScript("i01h01/i01h01_1.stb", -1)
						return
					end
				else
					at = 13
					vm.wait(13)
					event.LoadScript("i01h01/i01h01c_1.stb", 500)
					return
				end
			end
		end
		event.SetFadeIn(15)
		event.MesMake_2(0, "Max, non puoi saltare il lavoro,\ncapito?")
		at = 14
		helper_1c04a0eb(24, -1, 0, 0)
		at = 15
		vm.wait(15)
		event.LoadScript("i01h01/i01h01_1.stb", -1)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				helper_1c470(5)
				return vm.continue_with(function()
					helper_658b1052()
					event.SetCharaPos(0, 16.25, -0.02, -166.37)
					event.SetCharaRot(0, 0.0, 1.16, 0.0)
					event.SetMotion(0, "立ち")
					event.SetAi(0, 24)
					event.SetCharaPos(24, 38.77, -0.02, -147.68)
					event.SetCharaRot(24, 0.0, -2.04, 0.0)
					event.SetMotion(24, "立ち")
					at = 3
					vm.wait(3)
					event.SetAi(1, 24)
					event.SetFlag(20, 1)
					event.CharaActive(1, 26)
					event.SetReference(25, "back", 26)
					event.SubItem(165, 1)
					at = 4
					vm.wait(4)
					event.LoadScript("i01h01/i01h01_1.stb", -1)
					return
				end)
			end
			if at <= 2 then
				helper_1ef0d4b2()
			end
			return 0
		end
		if at <= 6 then
			if at <= 5 then
				helper_1ef0d4b2()
			end
			return 0
		end
		if at <= 10 then
			if at <= 8 then
				at = 9
				helper_1c470(2)
				return vm.continue_with(function()
					helper_658b1052()
					event.SetAi(0, 24)
					event.SetCharaPos(24, 38.77, -0.02, -147.68)
					event.SetCharaRot(24, 0.0, 0.72, 0.0)
					event.SetMotion(24, "立ち")
					at = 10
					vm.wait(10)
					event.SetAi(1, 24)
					event.LoadScript("i01h01/i01h01_1.stb", -1)
					return
				end)
			end
			if at <= 9 then
				helper_1ef0d4b2()
			end
			return 0
		end
		if at <= 12 then
			if at <= 11 then
				helper_1ef0d4b2()
			end
			return 0
		end
		if at <= 13 then
			return 0
		end
		if at <= 15 then
			return 0
		end
		return nil
	end)
end

--- Event 521, which map data, a script or the engine runs by number.
function script.event_521()
	event.CharaActive(0, 24)
	helper_1c470(2)
	vm.wait(2)
	event.LoadScript("i01h01/i01h01_1.stb", -1)
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		at = 1
		vm.wait(1)
		at = 2
		helper_aa583625()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_788a73ff()
			end
			return 0
		end
		return nil
	end)
end

--- Event 11053, which map data, a script or the engine runs by number.
function script.event_11053()
	local argc: s32 = 0
	local argc_2: s32 = 0
	local argc_3: s32 = 0
	local argc_4: s32 = 0
	local argc_5: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.SetMotion(0, "立ち")
		event.SetFlag(21, 0)
		event.SetFadeOut(30)
		at = 1
		wait_frames(30)
		helper_86e93423()
		argc_2 = event.GetItemNum(165) or argc_2
		if argc_2 >= 1 then
			event.SubItem(165, 1)
			at = 2
			helper_1c470(5)
			helper_658b1052()
			event.SetCharaPos(0, 16.25, -0.02, -166.37)
			event.SetCharaRot(0, 0.0, 1.16, 0.0)
			event.SetMotion(0, "立ち")
			event.SetAi(0, 24)
			event.SetCharaPos(24, 38.77, -0.02, -147.68)
			event.SetCharaRot(24, 0.0, -2.04, 0.0)
			event.SetMotion(24, "立ち")
			at = 3
			vm.wait(3)
			event.SetAi(1, 24)
			event.SetFlag(20, 1)
			event.CharaActive(1, 26)
			event.SetReference(25, "back", 26)
			at = 4
			vm.wait(4)
			event.LoadScript("i01h01/i01h01_1.stb", -1)
			return
		end
		argc_3 = event.GetItemNum(224) or argc_3
		argc_4 = event.GetItemNum(245) or argc_4
		argc_5 = event.GetItemNum(227) or argc_5
		if argc_3 >= 20 and argc_4 >= 1 and argc_5 >= 2 then
			at = 5
			helper_1c470(4)
			helper_658b1052()
			event.SetCharaPos(0, 59.55, -1.12, -135.97)
			event.SetCharaRot(0, 0.0, -2.24, 0.0)
			event.SetMotion(0, "立ち")
			event.SetAi(0, 24)
			event.SetCharaPos(24, 38.77, -0.02, -147.68)
			event.SetCharaRot(24, 0.0, 0.72, 0.0)
			event.SetMotion(24, "立ち")
			at = 6
			vm.wait(6)
			event.SetAi(1, 24)
			at = 7
			vm.wait(7)
			event.LoadScript("i01h01/i01h01_1.stb", -1)
			return
		end
		argc = event.GetInventionId(165) or argc
		if argc ~= -1 then
			at = 8
			helper_1c470(2)
			event.SetAi(0, 24)
			event.SetCharaPos(24, 38.77, -0.02, -147.68)
			event.SetCharaRot(24, 0.0, 0.72, 0.0)
			event.SetMotion(24, "立ち")
			at = 9
			vm.wait(9)
			event.SetAi(1, 24)
			at = 10
			vm.wait(10)
			event.LoadScript("i01h01/i01h01_1.stb", -1)
			return
		end
		if argc == -1 then
			at = 11
			helper_1c470(1)
			helper_658b1052()
			event.SetCharaPos(0, 16.25, -0.02, -166.37)
			event.SetCharaRot(0, 0.0, 1.16, 0.0)
			event.SetMotion(0, "立ち")
			event.SetAi(0, 24)
			event.SetCharaPos(24, 38.77, -0.02, -147.68)
			event.SetCharaRot(24, 0.0, -2.04, 0.0)
			event.SetMotion(24, "立ち")
			at = 12
			vm.wait(12)
			event.SetAi(1, 24)
			at = 13
			vm.wait(13)
			event.LoadScript("i01h01/i01h01_1.stb", -1)
			return
		end
		event.SetFadeIn(30)
		at = 14
		vm.wait(14)
		event.LoadScript("i01h01/i01h01_1.stb", -1)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				helper_1c470(5)
				return vm.continue_with(function()
					helper_658b1052()
					event.SetCharaPos(0, 16.25, -0.02, -166.37)
					event.SetCharaRot(0, 0.0, 1.16, 0.0)
					event.SetMotion(0, "立ち")
					event.SetAi(0, 24)
					event.SetCharaPos(24, 38.77, -0.02, -147.68)
					event.SetCharaRot(24, 0.0, -2.04, 0.0)
					event.SetMotion(24, "立ち")
					at = 3
					vm.wait(3)
					event.SetAi(1, 24)
					event.SetFlag(20, 1)
					event.CharaActive(1, 26)
					event.SetReference(25, "back", 26)
					at = 4
					vm.wait(4)
					event.LoadScript("i01h01/i01h01_1.stb", -1)
					return
				end)
			end
			if at <= 2 then
				helper_1ef0d4b2()
			end
			return 0
		end
		if at <= 7 then
			if at <= 5 then
				helper_1ef0d4b2()
			end
			return 0
		end
		if at <= 10 then
			return 0
		end
		if at <= 13 then
			if at <= 11 then
				helper_1ef0d4b2()
			end
			return 0
		end
		if at <= 14 then
			return 0
		end
		return nil
	end)
end

return script
