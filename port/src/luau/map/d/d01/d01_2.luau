--!strict
-- map/d/d01/d01_2.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_03a1d6f1 = require("@lib/event/helper_03a1d6f1")
local helper_17b6d01b = require("@lib/event/helper_17b6d01b")
local helper_1a7fd8eb = require("@lib/event/helper_1a7fd8eb")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_313d0b27 = require("@lib/event/helper_313d0b27")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_35195a56 = require("@lib/event/helper_35195a56")
local helper_39ab7f1f = require("@lib/event/helper_39ab7f1f")
local helper_3cf99f2c = require("@lib/event/helper_3cf99f2c")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_49c6448e = require("@lib/event/helper_49c6448e")
local helper_4c1ba28b = require("@lib/event/helper_4c1ba28b")
local helper_55646435 = require("@lib/event/helper_55646435")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_5b28e690 = require("@lib/event/helper_5b28e690")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_6c4414ea = require("@lib/event/helper_6c4414ea")
local helper_6c7de8d8 = require("@lib/event/helper_6c7de8d8")
local helper_6c8af328 = require("@lib/event/helper_6c8af328")
local helper_705b02bc = require("@lib/event/helper_705b02bc")
local helper_74f9cdb5 = require("@lib/event/helper_74f9cdb5")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_7870f366 = require("@lib/event/helper_7870f366")
local helper_79d90c82 = require("@lib/event/helper_79d90c82")
local helper_7b560508 = require("@lib/event/helper_7b560508")
local helper_86f3f24c = require("@lib/event/helper_86f3f24c")
local helper_8ccd8f42 = require("@lib/event/helper_8ccd8f42")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_917013c0 = require("@lib/event/helper_917013c0")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_a4ceb2b8 = require("@lib/event/helper_a4ceb2b8")
local helper_a583d6cd = require("@lib/event/helper_a583d6cd")
local helper_ac9d5b12 = require("@lib/event/helper_ac9d5b12")
local helper_b1b0c1a6 = require("@lib/event/helper_b1b0c1a6")
local helper_b2cb6e46 = require("@lib/event/helper_b2cb6e46")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_c3f198dd = require("@lib/event/helper_c3f198dd")
local helper_c55efd8e = require("@lib/event/helper_c55efd8e")
local helper_c6c3dd68 = require("@lib/event/helper_c6c3dd68")
local helper_ce85b54c = require("@lib/event/helper_ce85b54c")
local helper_d1646134 = require("@lib/event/helper_d1646134")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_dff48a5c = require("@lib/event/helper_dff48a5c")
local helper_e91d3484 = require("@lib/event/helper_e91d3484")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local helper_f59747fb = require("@lib/event/helper_f59747fb")
local helper_f7c4a947 = require("@lib/event/helper_f7c4a947")
local helper_f7fba8ce = require("@lib/event/helper_f7fba8ce")
local helper_f90045b0 = require("@lib/event/helper_f90045b0")
local helper_fe9d3952 = require("@lib/event/helper_fe9d3952")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_message_answer = require("@lib/event/wait_message_answer")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_3a598()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local block: s32 = 0
	local rot_y: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(100, 1)
		event.Initialize()
		event.InitDramaScene()
		event.DngPause(1, 1)
		event.SetFadeOut(0)
		at = 2
		vm.wait(2)
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		var0 = event.GetEventData_2(9) or var0
		event.EohSyncObj_3(31, var0, "d01w09_3-m0")
		event.EohSetPos(31, 0.0, 0.0, 0.0)
		var1 = event.SndLoadSound_2(1803) or var1
		var2 = event.SndLoadSound_3(8, "snd2/sp/sp_030.sound.json") or var2
		event.AssignStack(5)
		event.ClearStack(5)
		do
			local out1, out2, out3, out4 = event.GetDunWorldCoord(2)
			var3 = out1 or var3
			var4 = out2 or var4
			var5 = out3 or var5
			var6 = out4 or var6
		end
		var6 = vm.f32(var6 + vm.f32(1.5707964))
		if var6 > vm.f32(3.1415927) then
			var6 = vm.f32(var6 - vm.f32(6.2831855))
		end
		event.SetWorldCoord(var3, var4, var5, var6)
		event.LoadMes(0, 5, "event/e100/e100/e100_1.txt")
		event.LoadMotion(5, "event/e100/e100/e100_mints.gltf", "info", 0)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadItem(5, 359, "info", 8)
		event.CharaActive(0, 8)
		event.SetReference(0, "ef00", 8)
		block = event.LoadImg_4(5, "textures/event/e100/e100/e100_2d_1.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e100_2d01", block)
		event.SpriteSetColor(0, 128, 128, 128, 128)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetAlphab(0, 0)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(4, 0)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e100_2d02", block)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetAlphab(1, 0)
		event.SpriteSetDraw(1, 0)
		event.EohSyncSprite(5, 1)
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 5)
		var0 = event.GetEventData_2(9) or var0
		event.EohSyncObj_3(1, var0, "d01w09_3-m0")
		event.EohSetShow(1, 1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, 0.0, 0.0, 0.0)
		event.EohSyncChara(2, 1)
		event.EohSetShow(2, 0)
		event.EohSyncChara(3, 2)
		event.EohSetShow(3, 0)
		event.StreamOpen3(1, 1000030)
		at = 3
		helper_9cbdc640(1)
		event.ObjsSetPos(0, 130.0, 100.0, 0.0)
		event.ObjsSetRot(0, 0.0, -1.57, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsMove(1, 0.0, 80.0, 0.0, 60)
		event.SndSePlay(var2, 1)
		event.CmrsInit()
		event.CmrsFadeInit()
		event.CmrsFadeIn(60)
		event.CmrsSetPos(-58.59, 100.6, -45.13)
		event.CmrsSetRef(32.99, 106.26, -19.26)
		event.CmrsPrdelay(30)
		event.CmrsMove2(-287.61, 29.51, -60.44, -89.85, 28.2, -4.59, 60, 0, 0.4)
		at = 4
		wait_frames(30)
		event.ObjsMove(0, 87.0, 100.0, 0.0, 20)
		event.ObjsMove(0, -80.0, 0.0, 0.0, 50)
		event.ObjsSetMotion(0, "走り")
		at = 5
		wait_frames(30)
		event.ObjsJump(1, 0.0, 0.0, 0.0, -0.2, 10)
		event.ObjsJump(1, 0.0, 0.0, 0.0, -0.8, 8)
		event.ObjsJump(1, 0.0, 0.0, 0.0, -0.4, 5)
		at = 6
		wait_frames(40)
		event.EohSetFootSoundId(0, 6)
		at = 7
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		at = 8
		wait_camera()
		at = 9
		wait_frames(20)
		do
			local _, out2, _ = event.EohGetRot(0)
			rot_y = out2 or rot_y
		end
		event.CmrsSetRef(-175.0, 30.0, 0.0)
		event.CmrsSetAhd(-rot_y, 47.61, 160.0)
		event.ObjsSetPos(0, -100.0, 0.0, 0.0)
		event.ObjsMove(0, -150.0, 0.0, 0.0, 90)
		event.ObjsSetMotion(0, "キョロキョロ歩き", 4)
		at = 10
		wait_frames(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おどろき顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.CmrsSyncObj(0, 0.0, 20.0, 0.0, -1.07, -4.02, 40.0)
		event.MesMake_2(0, 1000030)
		open_message(0, -1, 8, 0, 0)
		event.StreamPlay(1)
		at = 11
		helper_917013c0(0, 60)
		close_message(0)
		event.StreamClose(1)
		event.SetMesPos(0, 0)
		at = 12
		wait_objects(0)
		event.CmrsReleaseObj()
		event.CmrsSetPos(-150.27, 25.12, -3.38)
		event.CmrsSetRef(-229.26001, 21.67, 10.04)
		event.CmrsMoveRef(-229.26001, 21.67, -10.04, 60)
		event.ObjsSetMotion(0, "立ち", 4)
		at = 13
		wait_frames(40)
		event.SndSePlay(var1, 0)
		at = 14
		wait_camera()
		event.CmrsSetPos(-212.99, 26.89, 0.0)
		event.CmrsSetRef(-147.45, 15.75, 0.0)
		event.ObjsSetMotion(0, "レシーバーを取り出す", 6)
		event.ObjsNextMotion(0, "レシーバー立ち", 4)
		event.SndSePlay(var1, 1)
		at = 15
		wait_frames(30)
		event.CharaActive(1, 8)
		at = 16
		wait_frames(20)
		event.SndSeStop(var1, 0)
		event.SndSePlay(var1, 2)
		at = 17
		wait_objects(0)
		event.CmrsSetPos(-177.01, 19.91, -6.56)
		event.CmrsSetRef(-150.48, 23.15, 0.0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		at = 18
		helper_4116e6bb(1000040)
		event.ObjsSetMotion(0, "レシーバーキョロキョロ", 6)
		event.ObjsNextMotion(0, "レシーバー立ち", 4)
		at = 19
		vm.wait(19)
		event.SetPakuAnim(0, "通常口パク")
		event.MesMake_2(0, 1000050)
		at = 20
		helper_4116e6bb(1000050)
		at = 21
		wait_objects(0)
		event.ResetPakuAnim()
		event.CmrsSetPos(-176.71, 19.55, 0.0)
		event.CmrsSetRef(-147.45, 22.68, 0.0)
		event.ObjsTexAnime(0, 1, "右向き目パチ")
		at = 22
		helper_4116e6bb(1000060)
		at = 23
		helper_4116e6bb(1000080)
		at = 24
		helper_4116e6bb(1000090)
		event.CmrsMove2(-210.04, 24.27, -6.23, -147.11, 26.71, 10.92, 30, 0, 0.4)
		event.ObjsSetMotion(0, "腰に手(レシーバー)", 6)
		event.ObjsNextMotion(0, "腰に手L(レシーバー)", 4)
		event.ObjsTexAnime(0, 0, "右向き目パチ")
		event.SetCrossfade(30)
		event.DngPause(128, 1)
		event.SpriteSetDraw(0, 2)
		at = 25
		helper_4116e6bb(1000100)
		at = 26
		helper_4116e6bb(1000110)
		event.ObjsSetColor(4, 128.0, 128.0, 128.0, 0.0, 30)
		event.SpriteSetDraw(1, 2)
		event.ObjsSetColor(5, 128.0, 128.0, 128.0, 128.0, 30)
		at = 27
		helper_4116e6bb(1000120)
		at = 28
		helper_4116e6bb(1000125)
		event.SetCrossfade(30)
		event.DngPause(128, 0)
		event.SpriteSetDraw(0, 0)
		event.SpriteSetDraw(1, 0)
		event.ObjsSetMotion(0, "腰に手戻り(レシーバー)", 6)
		event.ObjsNextMotion(0, "レシーバー立ち", 4)
		at = 29
		wait_frames(30)
		at = 30
		wait_objects(0)
		event.CmrsSetPos(-172.33, 19.91, 18.9)
		event.CmrsSetRef(-150.48, 23.15, 0.0)
		event.ObjsSetMotion(0, "うなづく(レシーバー)", 6)
		event.ObjsNextMotion(0, "レシーバー立ち", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		at = 31
		vm.wait(31)
		event.SetPakuAnim(0, "通常口パク")
		at = 32
		helper_4116e6bb(1000130)
		event.ResetPakuAnim()
		event.ObjsSetMotion(0, "レシーバーをなおす", 6)
		event.ObjsNextMotion(0, "レシーバーをなおすL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		at = 33
		wait_frames(20)
		event.SndSePlay(var1, 3)
		at = 34
		wait_frames(30)
		event.SndSePlay(var1, 4)
		event.CharaActive(0, 8)
		at = 35
		wait_objects(0)
		event.CmrsSetPos(-189.46, 10.19, -2.57)
		event.CmrsSetRef(-147.45, 16.24, -2.57)
		event.EohSetShow(2, 1)
		event.EohSetShow(3, 1)
		at = 36
		wait_frames(30)
		event.SetFadeOut(30)
		at = 37
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 2 then
			var6 = vm.f32(var6 + vm.f32(1.5707964))
			local _ = var6 > vm.f32(3.1415927)
			var6 = vm.f32(var6 - vm.f32(6.2831855))
			helper_238b5abc(1)
		end
		if at <= 3 then
			wait_frames_skipping(30)
		end
		if at <= 4 then
			wait_frames_skipping(30)
		end
		if at <= 5 then
			wait_frames_skipping(40)
		end
		if at <= 6 then
			helper_238b5abc(0)
		end
		if at <= 7 then
			helper_344d6cd8()
		end
		if at <= 8 then
			wait_frames_skipping(20)
		end
		if at <= 9 then
			wait_frames_skipping(30)
		end
		if at <= 10 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			helper_705b02bc(0, 60)
		end
		if at <= 11 then
			helper_d16eef1e(0)
			helper_238b5abc(0)
		end
		if at <= 12 then
			wait_frames_skipping(40)
		end
		if at <= 13 then
			helper_344d6cd8()
		end
		if at <= 14 then
			wait_frames_skipping(30)
		end
		if at <= 15 then
			wait_frames_skipping(20)
		end
		if at <= 16 then
			helper_238b5abc(0)
		end
		if at <= 17 then
			helper_8cd371d7(1000040)
		end
		if at <= 19 then
			helper_8cd371d7(1000050)
		end
		if at <= 20 then
			helper_238b5abc(0)
		end
		if at <= 21 then
			helper_8cd371d7(1000060)
		end
		if at <= 22 then
			helper_8cd371d7(1000080)
		end
		if at <= 23 then
			helper_8cd371d7(1000090)
		end
		if at <= 24 then
			helper_8cd371d7(1000100)
		end
		if at <= 25 then
			helper_8cd371d7(1000110)
		end
		if at <= 26 then
			helper_8cd371d7(1000120)
		end
		if at <= 27 then
			helper_8cd371d7(1000125)
		end
		if at <= 28 then
			wait_frames_skipping(30)
		end
		if at <= 29 then
			helper_238b5abc(0)
		end
		if at <= 31 then
			helper_8cd371d7(1000130)
		end
		if at <= 32 then
			wait_frames_skipping(20)
		end
		if at <= 33 then
			wait_frames_skipping(30)
		end
		if at <= 34 then
			helper_238b5abc(0)
		end
		if at <= 35 then
			wait_frames_skipping(30)
		end
		if at <= 36 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 38
	vm.entry(38)
	event.CancelDramaScene()
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, -1)
	var0 = event.GetEventData_2(9) or var0
	event.EohSyncObj_3(31, var0, "d01w09_3-m0")
	event.EohSetPos(31, 0.0, 0.0, 0.0)
	event.SndSeStop(var2, 1)
	event.SndSeStop(var1, 0)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DelImg(0)
	event.CmrsInit()
	event.ObjsInit(0)
	event.ObjsInit(1)
	event.ObjsInit(2)
	event.ObjsInit(3)
	event.ObjsInit(4)
	event.ObjsInit(5)
	event.DngPause(128, 0)
	event.SetStatusbarShow(1, 1.0)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.EohSetPos(0, -140.0, 0.0, 0.0)
	event.EohSetRot(0, 0.0, -1.57, 0.0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetTexAnim(0, 0)
	event.EohSetTexAnim(0, "目パチ")
	event.SetCameraPos(20.0, 75.0, 0.0)
	event.SetCameraRef(-140.0, 30.0, 0.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	at = 39
	wait_frames(20)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Terminer les niveaux des d[UNI00e9]dales.\n   Pour passer au niveau suivant, trouve\n   la sortie du niveau actuel et utilise\n   la Cl[UNI00e9] de porte vol[UNI00e9]e [UNI00e0] un monstre."
	)
	at = 40
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		'En respectant certaines conditions quand\ntu [UNI00e9]limines les monstres des niveaux, tu\npeux gagner des "m[UNI00e9]dailles".'
	)
	at = 41
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"Pour afficher ces conditions,\ns[UNI00e9]lectionne Voyager (Menu principal),\npuis le niveau de ton choix."
	)
	at = 42
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"Le porte-m[UNI00e9]dailles du menu Objets montre\ncombien de M[UNI00e9]dailles tu as. Si tu en\nr[UNI00e9]unis assez, tu auras une surprise."
	)
	at = 43
	helper_75684dd8(0, -1, 8, 0, 0)
	at = 44
	vm.wait(44)
	at = 45
	vm.wait(45)
	event.LoadMes(0, -1)
	helper_ac9d5b12()
	event.DngPause(1, 0)
	event.Finish()
end

--- Helper function.
local function helper_40ca0(arg0: s32)
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: s32 = 0
	local var7: s32 = 0
	local var8: s32 = 0
	local block: s32 = 0
	local var10: s32 = 0
	local rot_y: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.InitDramaScene()
		event.DngPause(1, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		var1 = event.SndLoadSound_3(8, "snd2/sp/sp_030.sound.json") or var1
		do
			local out1, out2, out3, out4 = event.GetDunWorldCoord(2)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
			var5 = out4 or var5
		end
		var5 = vm.f32(var5 + vm.f32(1.5707964))
		if var5 > vm.f32(3.1415927) then
			var5 = vm.f32(var5 - vm.f32(6.2831855))
		end
		event.SetWorldCoord(var2, var3, var4, var5)
		if arg0 ~= 0 then
			var6 = event.DngGetFloorId() or var6
			var7 = event.DngGetPrevFloor() or var7
			event.DngmapLoad(5, 0, 0, var6, var7)
		else
			event.LoadImg_3(5, "textures/dungeon/image/s_title/logo_d00_1.json", 0)
			event.ImgSetName(0, "logo_d00")
			event.ImgSetGet(0, 0, 0, 384, 128)
			event.ImgSetPut(0, -24, 300, 384, 128)
			event.ImgSetDraw(1, 0)
			event.ImgSetColor(0, 128, 128, 128, 0)
		end
		var8 = event.GetFloorStatus() or var8
		if var8 ~= 0 then
			event.SpriteInit(0)
			event.SpriteSetType(0, 0)
			if bit32.band(var8, 1) ~= 0 then
				event.DngSetupMainUnit(1)
				block = event.LoadImg_4(5, "textures/dungeon/image/seal/aka_fuuin_1.json", 1) or block
				event.SpriteSetTexture(0, "aka_fuuin", block)
			end
			if bit32.band(var8, 2) ~= 0 then
				event.DngSetupMainUnit(0)
				block = event.LoadImg_4(5, "textures/dungeon/image/seal/ao_fuuin_1.json", 1) or block
				event.SpriteSetTexture(0, "ao_fuuin", block)
			end
			if bit32.band(var8, 4) ~= 0 then
				block = event.LoadImg_4(5, "textures/dungeon/image/seal/shiro_fuuin_1.json", 1) or block
				event.SpriteSetTexture(0, "shiro_fuuin", block)
			end
			event.SpriteSetColor(0, 128, 128, 128, 0)
			event.SpriteSetUvsize(0, 0, 0, 512, 128)
			event.SpriteSetPutsize(0, 512, 128)
			event.SpriteSetPos(0, 256, 208)
			event.SpriteSetDraw(0, 1)
			event.EohSyncSprite(30, 0)
			event.ObjsInit(30)
			event.ObjsSyncObj(30, 30)
		end
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 130.0, 100.0, 0.0)
		event.ObjsSetRot(0, 0.0, -1.57, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		var10 = event.GetEventData_2(9) or var10
		event.EohSyncObj_3(1, var10, "d01w09_3-m0")
		event.EohSetShow(1, 1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, 0.0, 0.0, 0.0)
		event.ObjsMove(1, 0.0, 80.0, 0.0, 60)
		event.SndSePlay(var1, 1)
		event.SetStatusbarShow(0, 1.0)
		event.CmrsInit()
		event.CmrsFadeInit()
		event.CmrsFadeIn(60)
		event.CmrsSetPos(-58.59, 100.6, -45.13)
		event.CmrsSetRef(32.99, 106.26, -19.26)
		event.CmrsPrdelay(30)
		event.CmrsMove2(-287.61, 29.51, -60.44, -89.85, 28.2, -4.59, 60, 0, 0.4)
		at = 2
		wait_frames(30)
		if arg0 ~= 0 then
			event.DngmapSetFade(1, 15)
		end
		event.ObjsMove(0, 87.0, 100.0, 0.0, 20)
		event.ObjsMove(0, -80.0, 0.0, 0.0, 50)
		event.ObjsMove(0, -130.0, 0.0, 0.0, 20)
		event.ObjsSetMotion(0, "走り")
		at = 3
		wait_frames(20)
		if arg0 ~= 0 then
			event.DngmapMovePiece(1)
		else
			event.ImgSetFade(0, 1, 60)
		end
		if var8 ~= 0 then
			event.ObjsSetColor(30, 128, 128, 128, 128, 60)
		end
		at = 4
		wait_frames(10)
		event.ObjsJump(1, 0.0, 0.0, 0.0, -0.2, 10)
		event.ObjsJump(1, 0.0, 0.0, 0.0, -0.8, 8)
		event.ObjsJump(1, 0.0, 0.0, 0.0, -0.4, 5)
		at = 5
		wait_frames(40)
		event.EohSetFootSoundId(0, 6)
		at = 6
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		at = 7
		wait_camera()
		at = 8
		wait_frames(10)
		event.SetCrossfade(30)
		do
			local _, out2, _ = event.EohGetRot(0)
			rot_y = out2 or rot_y
		end
		event.CmrsSetRef(-175.0, 30.0, 0.0)
		event.CmrsSetAhd(-rot_y, 47.61, 160.0)
		event.SetStatusbarShow(1)
		event.ObjsSetPos(0, -130.0, 0.0, 0.0)
		event.ObjsMove(0, -175.0, 0.0, 0.0, 40)
		event.ObjsSetMotion(0, "歩き")
		at = 9
		wait_frames(10)
		if arg0 ~= 0 then
			event.DngmapSetFade(0, 30)
		else
			event.ImgSetFade(0, 0, 30)
		end
		if var8 ~= 0 then
			event.ObjsSetColor(30, 128, 128, 128, 0, 30)
		end
		at = 10
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		at = 11
		wait_frames(10)
	end, function(received: { any }): boolean
		if at <= 1 then
			var5 = vm.f32(var5 + vm.f32(1.5707964))
			local _ = var5 > vm.f32(3.1415927)
			var5 = vm.f32(var5 - vm.f32(6.2831855))
			wait_frames_skipping(30)
		end
		if at <= 2 then
			wait_frames_skipping(20)
		end
		if at <= 3 then
			wait_frames_skipping(10)
		end
		if at <= 4 then
			wait_frames_skipping(40)
		end
		if at <= 5 then
			helper_238b5abc(0)
		end
		if at <= 6 then
			helper_344d6cd8()
		end
		if at <= 7 then
			wait_frames_skipping(10)
		end
		if at <= 8 then
			wait_frames_skipping(10)
		end
		if at <= 9 then
			helper_238b5abc(0)
		end
		if at <= 10 then
			wait_frames_skipping(10)
		end
		return true
	end)
	at = 12
	vm.entry(12)
	event.CancelDramaScene()
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, -1)
	event.SetFadeIn(0)
	event.SetStatusbarShow(1, 1.0)
	if arg0 ~= 0 then
		event.DngmapOnoff(0)
		event.DngmapDelete()
	else
		event.DelImg(0)
	end
	if var8 ~= 0 then
		event.DelImg(1)
		event.SpriteSetDraw(0, 0)
	end
	event.SndSeStop(var1, 1)
	event.EohSetPos(0, -175.0, 0.0, 0.0)
	event.EohSetRot(0, 0.0, -1.57, 0.0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohResetDaPosition(0)
	event.SetCameraPos(-15.0, 77.61, 0.13)
	event.SetCameraRef(-175.0, 30.0, 0.0)
	event.ResetCamera(0)
	event.EohSyncObj_3(1, var10, "d01w09_3-m0")
	event.EohSetPos(1, 0.0, 0.0, 0.0)
	event.Initialize()
	helper_ac9d5b12()
	if var8 ~= 0 then
		event.SetMesWindowMode(0, 4)
		if bit32.band(var8, 1) ~= 0 then
			event.MesMake_2(0, "Ce niveau a un scell[UNI00e9] rouge !")
			at = 13
			helper_75684dd8(0, -1, 8, 0, 0)
			event.MesMake_2(0, "Tu ne peux pas devenir Max.\nl'Atlamillia rouge l'a choisi !")
			at = 14
			helper_75684dd8(0, -1, 8, 0, 0)
		end
		if bit32.band(var8, 2) ~= 0 then
			event.MesMake_2(0, "Ce niveau a un scell[UNI00e9] bleu !")
			at = 15
			helper_75684dd8(0, -1, 8, 0, 0)
			event.MesMake_2(0, "Tu ne peux pas devenir Monica :\nl'Atlamillia bleue l'a choisie !")
			at = 16
			helper_75684dd8(0, -1, 8, 0, 0)
		end
		if bit32.band(var8, 4) ~= 0 then
			event.MesMake_2(0, "Ce niveau a un scell[UNI00e9] blanc !")
			at = 17
			helper_75684dd8(0, -1, 8, 0, 0)
			event.MesMake_2(0, "Tu ne peux plus r[UNI00e9]cup[UNI00e9]rer de\npoints de sant[UNI00e9] ni te soigner.")
			at = 18
			helper_75684dd8(0, -1, 8, 0, 0)
		end
	end
	event.DngPause(1, 0)
	event.Finish()
end

--- Event 1010, which map data, a script or the engine runs by number.
local function event_1010()
	local var0: s32 = 0
	local stage_id: s32 = 0
	local var2: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local flag_4: s32 = 0
	local var7: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		helper_e91d3484()
		event.SetFadeOut(1)
		at = 1
		vm.wait(1)
		event.ActchrSetDefMotion(0)
		var0 = event.DngGetFloorId() or var0
		if var0 == 20 then
			event.BgmLoadCancel()
			event.LoadDungeonMapFile("s51")
			event.LoadScript("s51/s51.stb", 500)
			return
		end
		if var0 == 21 then
			event.BgmLoadCancel()
			event.SoundLoadCancel()
			event.LoadDungeonMapFile("s43")
			event.LoadScript("s43/s43.stb", 151)
			return
		end
		event.SetLocalFlag(0, 0)
		event.SetLocalFlag(1, 0)
		event.SetLocalFlag(2, 0)
		event.SetLocalFlag(3, 0)
		stage_id = event.DngGetStageId() or stage_id
		var0 = event.DngGetFloorId() or var0
		var2 = event.GetFloorInfo(stage_id, var0, 7) or var2
		helper_d1646134(stage_id, var0)
		event.DngFloorInit()
		if var0 == 0 then
			event.SetNowMapNo(55)
			event.GotoEdit(22, 100)
			at = 2
			vm.wait(2)
			return
		end
		if var0 == 4 then
			event.LoadDungeonMapFile("s06")
			event.LoadScript("s06/s06.stb", 500)
			return
		end
		if var0 == 7 then
			flag = event.GetFlag(110) or flag
			if flag == 0 then
				event.BgmLoadCancel()
			end
			event.LoadDungeonMapFile("d01b01")
			event.LoadScript("d01b01/d01b01.stb", 500)
			return
		end
		if var0 == 8 then
			event.SetFloorInfo(stage_id, var0, 5, 2)
			flag_2 = event.GetFlag(201) or flag_2
			if flag_2 == 0 then
				event.BgmLoadCancel()
			end
			event.GotoEdit(15, 100)
			return
		end
		if var0 == 3 then
			flag_3 = event.GetFlag(102) or flag_3
			if flag_3 == 0 then
				event.DngPause(2048, 1)
				event.StopBgm(0)
				event.BgmPlayCancel()
				event.GotoEdit(41, 500)
				return
			end
		end
		if var0 == 6 then
			event.BgmLoadEnable()
			event.StopBgm(0)
			at = 3
			wait_frames(6)
			event.LoadBgm(37)
			event.PlayBgm(0)
			event.BgmLoadCancel()
		end
		event.SetMapEffectId(0)
		event.LoadDungeonMapFile("d01f01", "d01f01")
		event.LoadMonsterFile(0)
		event.AutoSetTreasureBox(-1)
		event.AutoSetMonster(-1)
		flag_4 = event.GetFlag(100) or flag_4
		if var0 == 1 and flag_4 == 0 then
			at = 4
			helper_3a598()
		elseif var0 == 1 and var2 <= 0 then
			at = 5
			helper_40ca0(0)
		else
			var7 = event.DngGetPrevFloor() or var7
			if var0 == var7 then
				at = 6
				helper_40ca0(0)
			else
				at = 7
				helper_40ca0(1)
			end
		end
		helper_6c7de8d8()
		return
	end, function(received: { any })
		if at <= 1 then
			return 0
		end
		if at <= 2 then
			return 0
		end
		if at <= 7 then
			if at <= 3 then
				at = 4
				helper_3a598()
				return vm.continue_with(function()
					helper_6c7de8d8()
					return
				end)
			end
			if at <= 4 then
				at = 5
				helper_40ca0(0)
				return vm.continue_with(function()
					helper_6c7de8d8()
					return
				end)
			end
			if at <= 5 then
				at = 6
				helper_40ca0(0)
				return vm.continue_with(function()
					helper_6c7de8d8()
					return
				end)
			end
			if at <= 6 then
				at = 7
				helper_40ca0(1)
				return vm.continue_with(function()
					helper_6c7de8d8()
					return
				end)
			end
			helper_1ef0d4b2()
			return 0
		end
		return nil
	end)
end

--- Event 1000, which map data, a script or the engine runs by number.
local function event_1000()
	local var0: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	event.Initialize()
	event.SphidaInit()
	helper_e91d3484()
	event.SetFadeOut(0)
	var0 = event.GetBgmNo() or var0
	if var0 ~= 15 then
		event.StopBgm(0)
		wait_frames(6)
		event.LoadBgm(15)
	end
	event.PlayBgm(0)
	event.LoadSound(1601)
	event.GotoDngMap(0)
	vm.wait(2)
	event.SetProjection(524.9)
	do
		local _, out2, out3, _ = event.GetMenuParam_4()
		var2 = out2 or var2
		var3 = out3 or var3
	end
	event.DngSetFloorId(var3)
	event.DngSetPrevFloor(var2)
	event_1010()
end

--- Helper function.
local function helper_450e4(index: s32)
	local argc: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local item: s32 = 0
	local active_chr_no: s32 = 0
	local var6: any = 0
	local cleared: s32 = 0
	local bonus: s32 = 0
	local stage_id: s32 = 0
	local var10: s32 = 0
	local argc_2: s32 = 0
	local flag: s32 = 0
	event.Initialize()
	event.ActchrSetDefMotion(0)
	argc = event.GetLocalFlag(index) or argc
	event.DngPause(1, 1)
	if argc == 0 then
		var2 = event.GetEventData_2(6) or var2
		if var2 == 1 then
			event.Initialize()
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			event.SetMesDrawspeed(0, 1)
			var3 = helper_c292fa16(0, 0, 5, 256, 208, var3)
			event.SetMesShippo(0, 1)
			event.SetMesDrawspeed(0, 0)
			if var3 == 1 then
				var2 = 2
			end
			event.Finish()
		end
		if var2 == 2 then
			event.SetStatusbarShow(0, 0.16666667)
			wait_frames(6)
			event.GotoUseItem(337)
			vm.wait(3)
			item = vmhost.used_item() or item
			if item == 337 then
				event.SetLocalFlag(index, 1)
				helper_8ccd8f42()
			elseif item <= 0 then
				event.Finish()
			else
				helper_5fb66cb1()
			end
			event.SetStatusbarShow(1, 0.16666667)
			wait_frames(6)
		end
	else
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.Initialize()
			helper_ce85b54c()
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				helper_75684dd8(0, 20, 5, 256, 208)
			else
				helper_75684dd8(0, 21, 5, 256, 208)
			end
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 0)
			event.DngPause(1, 0)
			event.Finish()
			return
		end
		event.SetMesQuestionGyou(0, 0)
		event.SetMesWindowMode(0, 5)
		event.SetMesDrawspeed(0, 1)
		var6 = helper_bac0e30d(0, 10, 8, 256, 208, 2, 1)
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		if var6 == 0 then
			event.DelMonster(-1)
			helper_7b560508()
			helper_c6c3dd68()
			do
				local out1, out2 = event.IsClearPractice(1)
				cleared = out1 or cleared
				bonus = out2 or bonus
			end
			if cleared == 2 or cleared == 3 then
				event.SpriteInit(0)
				event.SpriteSetType(0, 0)
				event.SpriteSetPos(0, 256, 208)
				event.SpriteSetPutsize(0, 512, 416)
				event.SpriteSetColor(0, 0, 0, 0, 128)
				event.SpriteSetDraw(0, 1)
				event.SetFadeIn(0)
				helper_f7c4a947(-1, cleared, bonus)
				vm.wait(12)
				event.SetFadeOut(0)
				event.SpriteSetDraw(0, 0)
			end
			stage_id = event.DngGetStageId() or stage_id
			var10 = event.DngGetFloorId() or var10
			argc_2 = event.GetNextFloor(var10, 0) or argc_2
			event.DngSetFloorId(argc_2)
			event.SetFloorInfo(stage_id, var10, 5, 2)
			event.SetFloorInfo(stage_id, argc_2, 5, 1)
			event.DngFloorFinish()
			if var10 == 1 then
				flag = event.GetFlag(101) or flag
				if flag == 0 then
					event.DngPause(2048, 1)
					event.BgmLoadCancel()
					event.SoundLoadCancel()
					event.GotoEdit(43, 151)
					vm.wait(13)
					return
				end
			end
			if var10 == 5 then
				flag = event.GetFlag(9) or flag
				if flag == 0 then
					event.DngPause(2048, 1)
					event.FadeOutBgm(30)
					wait_frames(30)
					event.BgmLoadCancel()
					event.SetFlag(9, 1)
					event.CancelLoadVillager()
					event.GotoEdit(38, 510)
					vm.wait(15)
					return
				end
			end
			event.Finish()
			event_1000()
		else
			event.Finish()
		end
	end
	event.DngPause(1, 0)
end

--- Helper function.
local function helper_20b0c()
	local active_chr_no: s32 = 0
	local stage_id: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local flag: s32 = 0
	local is_play_sub_game: s32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	local is_clear_most_fast_destroy: s32 = 0
	local cleared: s32 = 0
	local bonus: s32 = 0
	local var12: s32 = 0
	local var13: s32 = 0
	local at: number = 0
	return vm.guard(function()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		helper_ce85b54c()
		event.DngPause(512, 1)
		event.SetStatusbarShow(0, 0.16666667)
		at = 1
		wait_frames(10)
		event.DngPause(16384, 1)
		event.DelMonster(-1)
		if active_chr_no == 0 then
			at = 2
			helper_4c1ba28b(1)
		end
		if active_chr_no == 1 then
			at = 3
			helper_6c8af328(1)
		end
		if active_chr_no == 2 or active_chr_no == 3 then
			at = 4
			helper_fe9d3952(active_chr_no)
		end
		event.DngPause(16384, 0)
		helper_a4ceb2b8()
		event.ActchrSetDefMotion(0, 4)
		event.CharaNormalDrive(0)
		event.CharaResetDa(0)
		event.SetStatusbarShow(1, 0.16666667)
		stage_id = event.DngGetStageId() or stage_id
		var2 = event.DngGetFloorId() or var2
		event.SetFloorInfo(stage_id, var2, 5, 2)
		event.SetFloorInfo(stage_id, var2, 5, 1024)
		flag = event.GetFlag(220) or flag
		flag = event.GetFlag(317) or flag
		is_play_sub_game = event.IsPlaySubGame() or is_play_sub_game
		if (if flag == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
			event.ClearRndStone()
			helper_c3f198dd(0, -1)
		end
		do
			local out1, out2, out3 = event.GetBeforeCameraNextPos()
			position_x = out1 or position_x
			position_y = out2 or position_y
			position_z = out3 or position_z
		end
		event.SetCameraPos(position_x, position_y, position_z)
		do
			local out1, out2, out3 = event.GetBeforeCameraNextRef()
			position_x = out1 or position_x
			position_y = out2 or position_y
			position_z = out3 or position_z
		end
		event.SetCameraRef(position_x, position_y, position_z)
		is_clear_most_fast_destroy = event.IsClearDestroy() or is_clear_most_fast_destroy
		do
			local out1, out2 = event.IsClearPractice(0)
			cleared = out1 or cleared
			bonus = out2 or bonus
		end
		at = 5
		helper_f7c4a947(is_clear_most_fast_destroy, cleared, bonus)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		var12 = event.GetTrialVersion() or var12
		var13 = event.GetFloorStatus() or var13
		if
			(if (if bit32.band(var13, 1) ~= 0 then 1 else bit32.band(var13, 2)) ~= 0 then 1 else bit32.band(var13, 4))
			~= 0
		then
			event.SetFloorStatus(7, 0)
			if bit32.band(var13, 1) ~= 0 then
				event.MesMake_2(0, "Le scell[UNI00e9] rouge a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
			end
			if bit32.band(var13, 2) ~= 0 then
				event.MesMake_2(0, "Le scell[UNI00e9] bleu a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
			end
			if bit32.band(var13, 4) ~= 0 then
				event.MesMake_2(0, "Le scell[UNI00e9] blanc a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
			end
			at = 6
			helper_75684dd8(0, -1, 8, 0, 0)
		end
		at = 7
		helper_75684dd8(0, 2130, 8, 0, 0)
		if var12 ~= 1 then
			if var3 == 1 and flag == 1 and bit32.band(is_play_sub_game, 3) == 3 then
				at = 8
				helper_75684dd8(0, 2120, 8, 0, 0)
				at = 9
				helper_c55efd8e()
			else
				if (if var3 == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
					at = 10
					helper_75684dd8(0, 2110, 8, 0, 0)
				end
				if (if flag == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
					at = 11
					helper_75684dd8(0, 2100, 8, 0, 0)
					at = 12
					helper_c55efd8e()
				end
			end
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		event.DngPause(512, 0)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 12 then
			if at <= 1 then
				at = 2
				helper_4c1ba28b(1)
				return vm.continue_with(function()
					if active_chr_no == 1 then
						at = 3
						helper_6c8af328(1)
					end
					if active_chr_no == 2 or active_chr_no == 3 then
						at = 4
						helper_fe9d3952(active_chr_no)
					end
					event.DngPause(16384, 0)
					helper_a4ceb2b8()
					event.ActchrSetDefMotion(0, 4)
					event.CharaNormalDrive(0)
					event.CharaResetDa(0)
					event.SetStatusbarShow(1, 0.16666667)
					stage_id = event.DngGetStageId() or stage_id
					var2 = event.DngGetFloorId() or var2
					event.SetFloorInfo(stage_id, var2, 5, 2)
					event.SetFloorInfo(stage_id, var2, 5, 1024)
					flag = event.GetFlag(220) or flag
					flag = event.GetFlag(317) or flag
					is_play_sub_game = event.IsPlaySubGame() or is_play_sub_game
					if (if flag == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
						event.ClearRndStone()
						helper_c3f198dd(0, -1)
					end
					do
						local out1, out2, out3 = event.GetBeforeCameraNextPos()
						position_x = out1 or position_x
						position_y = out2 or position_y
						position_z = out3 or position_z
					end
					event.SetCameraPos(position_x, position_y, position_z)
					do
						local out1, out2, out3 = event.GetBeforeCameraNextRef()
						position_x = out1 or position_x
						position_y = out2 or position_y
						position_z = out3 or position_z
					end
					event.SetCameraRef(position_x, position_y, position_z)
					is_clear_most_fast_destroy = event.IsClearDestroy() or is_clear_most_fast_destroy
					do
						local out1, out2 = event.IsClearPractice(0)
						cleared = out1 or cleared
						bonus = out2 or bonus
					end
					at = 5
					helper_f7c4a947(is_clear_most_fast_destroy, cleared, bonus)
					event.SetMesWindowMode(0, 4)
					event.SetMesDrawspeed(0, 1)
					var12 = event.GetTrialVersion() or var12
					var13 = event.GetFloorStatus() or var13
					if
						(
							if (if bit32.band(var13, 1) ~= 0 then 1 else bit32.band(var13, 2)) ~= 0
								then 1
								else bit32.band(var13, 4)
						) ~= 0
					then
						event.SetFloorStatus(7, 0)
						if bit32.band(var13, 1) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] rouge a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						if bit32.band(var13, 2) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] bleu a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						if bit32.band(var13, 4) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] blanc a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						at = 6
						helper_75684dd8(0, -1, 8, 0, 0)
					end
					at = 7
					helper_75684dd8(0, 2130, 8, 0, 0)
					if var12 ~= 1 then
						if var3 == 1 and flag == 1 and bit32.band(is_play_sub_game, 3) == 3 then
							at = 8
							helper_75684dd8(0, 2120, 8, 0, 0)
							at = 9
							helper_c55efd8e()
						else
							if (if var3 == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
								at = 10
								helper_75684dd8(0, 2110, 8, 0, 0)
							end
							if (if flag == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
								at = 11
								helper_75684dd8(0, 2100, 8, 0, 0)
								at = 12
								helper_c55efd8e()
							end
						end
					end
					event.SetMesWindowMode(0, 1)
					event.SetMesDrawspeed(0, 0)
					event.DngPause(512, 0)
					event.Finish()
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_6c8af328(1)
				return vm.continue_with(function()
					if active_chr_no == 2 or active_chr_no == 3 then
						at = 4
						helper_fe9d3952(active_chr_no)
					end
					event.DngPause(16384, 0)
					helper_a4ceb2b8()
					event.ActchrSetDefMotion(0, 4)
					event.CharaNormalDrive(0)
					event.CharaResetDa(0)
					event.SetStatusbarShow(1, 0.16666667)
					stage_id = event.DngGetStageId() or stage_id
					var2 = event.DngGetFloorId() or var2
					event.SetFloorInfo(stage_id, var2, 5, 2)
					event.SetFloorInfo(stage_id, var2, 5, 1024)
					flag = event.GetFlag(220) or flag
					flag = event.GetFlag(317) or flag
					is_play_sub_game = event.IsPlaySubGame() or is_play_sub_game
					if (if flag == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
						event.ClearRndStone()
						helper_c3f198dd(0, -1)
					end
					do
						local out1, out2, out3 = event.GetBeforeCameraNextPos()
						position_x = out1 or position_x
						position_y = out2 or position_y
						position_z = out3 or position_z
					end
					event.SetCameraPos(position_x, position_y, position_z)
					do
						local out1, out2, out3 = event.GetBeforeCameraNextRef()
						position_x = out1 or position_x
						position_y = out2 or position_y
						position_z = out3 or position_z
					end
					event.SetCameraRef(position_x, position_y, position_z)
					is_clear_most_fast_destroy = event.IsClearDestroy() or is_clear_most_fast_destroy
					do
						local out1, out2 = event.IsClearPractice(0)
						cleared = out1 or cleared
						bonus = out2 or bonus
					end
					at = 5
					helper_f7c4a947(is_clear_most_fast_destroy, cleared, bonus)
					event.SetMesWindowMode(0, 4)
					event.SetMesDrawspeed(0, 1)
					var12 = event.GetTrialVersion() or var12
					var13 = event.GetFloorStatus() or var13
					if
						(
							if (if bit32.band(var13, 1) ~= 0 then 1 else bit32.band(var13, 2)) ~= 0
								then 1
								else bit32.band(var13, 4)
						) ~= 0
					then
						event.SetFloorStatus(7, 0)
						if bit32.band(var13, 1) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] rouge a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						if bit32.band(var13, 2) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] bleu a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						if bit32.band(var13, 4) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] blanc a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						at = 6
						helper_75684dd8(0, -1, 8, 0, 0)
					end
					at = 7
					helper_75684dd8(0, 2130, 8, 0, 0)
					if var12 ~= 1 then
						if var3 == 1 and flag == 1 and bit32.band(is_play_sub_game, 3) == 3 then
							at = 8
							helper_75684dd8(0, 2120, 8, 0, 0)
							at = 9
							helper_c55efd8e()
						else
							if (if var3 == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
								at = 10
								helper_75684dd8(0, 2110, 8, 0, 0)
							end
							if (if flag == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
								at = 11
								helper_75684dd8(0, 2100, 8, 0, 0)
								at = 12
								helper_c55efd8e()
							end
						end
					end
					event.SetMesWindowMode(0, 1)
					event.SetMesDrawspeed(0, 0)
					event.DngPause(512, 0)
					event.Finish()
					return
				end)
			end
			if at <= 3 then
				at = 4
				helper_fe9d3952(active_chr_no)
				return vm.continue_with(function()
					event.DngPause(16384, 0)
					helper_a4ceb2b8()
					event.ActchrSetDefMotion(0, 4)
					event.CharaNormalDrive(0)
					event.CharaResetDa(0)
					event.SetStatusbarShow(1, 0.16666667)
					stage_id = event.DngGetStageId() or stage_id
					var2 = event.DngGetFloorId() or var2
					event.SetFloorInfo(stage_id, var2, 5, 2)
					event.SetFloorInfo(stage_id, var2, 5, 1024)
					flag = event.GetFlag(220) or flag
					flag = event.GetFlag(317) or flag
					is_play_sub_game = event.IsPlaySubGame() or is_play_sub_game
					if (if flag == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
						event.ClearRndStone()
						helper_c3f198dd(0, -1)
					end
					do
						local out1, out2, out3 = event.GetBeforeCameraNextPos()
						position_x = out1 or position_x
						position_y = out2 or position_y
						position_z = out3 or position_z
					end
					event.SetCameraPos(position_x, position_y, position_z)
					do
						local out1, out2, out3 = event.GetBeforeCameraNextRef()
						position_x = out1 or position_x
						position_y = out2 or position_y
						position_z = out3 or position_z
					end
					event.SetCameraRef(position_x, position_y, position_z)
					is_clear_most_fast_destroy = event.IsClearDestroy() or is_clear_most_fast_destroy
					do
						local out1, out2 = event.IsClearPractice(0)
						cleared = out1 or cleared
						bonus = out2 or bonus
					end
					at = 5
					helper_f7c4a947(is_clear_most_fast_destroy, cleared, bonus)
					event.SetMesWindowMode(0, 4)
					event.SetMesDrawspeed(0, 1)
					var12 = event.GetTrialVersion() or var12
					var13 = event.GetFloorStatus() or var13
					if
						(
							if (if bit32.band(var13, 1) ~= 0 then 1 else bit32.band(var13, 2)) ~= 0
								then 1
								else bit32.band(var13, 4)
						) ~= 0
					then
						event.SetFloorStatus(7, 0)
						if bit32.band(var13, 1) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] rouge a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						if bit32.band(var13, 2) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] bleu a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						if bit32.band(var13, 4) ~= 0 then
							event.MesMake_2(0, "Le scell[UNI00e9] blanc a [UNI00e9]t[UNI00e9] bris[UNI00e9].")
						end
						at = 6
						helper_75684dd8(0, -1, 8, 0, 0)
					end
					at = 7
					helper_75684dd8(0, 2130, 8, 0, 0)
					if var12 ~= 1 then
						if var3 == 1 and flag == 1 and bit32.band(is_play_sub_game, 3) == 3 then
							at = 8
							helper_75684dd8(0, 2120, 8, 0, 0)
							at = 9
							helper_c55efd8e()
						else
							if (if var3 == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
								at = 10
								helper_75684dd8(0, 2110, 8, 0, 0)
							end
							if (if flag == 1 then bit32.band(is_play_sub_game, 1) else 0) ~= 0 then
								at = 11
								helper_75684dd8(0, 2100, 8, 0, 0)
								at = 12
								helper_c55efd8e()
							end
						end
					end
					event.SetMesWindowMode(0, 1)
					event.SetMesDrawspeed(0, 0)
					event.DngPause(512, 0)
					event.Finish()
					return
				end)
			end
			if at <= 4 then
				helper_35195a56()
				helper_a583d6cd(0, -1)
				helper_7870f366(is_clear_most_fast_destroy, cleared, bonus)
			end
			if at <= 5 then
				helper_ee1c51d0(0, -1, 8, 0, 0)
			end
			if at <= 6 then
				helper_ee1c51d0(0, 2130, 8, 0, 0)
			end
			if at <= 7 then
				helper_ee1c51d0(0, 2120, 8, 0, 0)
			end
			if at <= 8 then
				helper_74f9cdb5()
			end
			if at <= 9 then
				helper_ee1c51d0(0, 2110, 8, 0, 0)
			end
			if at <= 10 then
				helper_ee1c51d0(0, 2100, 8, 0, 0)
			end
			if at <= 11 then
				helper_74f9cdb5()
			end
			return 0
		end
		return nil
	end)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	helper_4c1ba28b(0)
end

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local argc: s32 = 0
	event.Initialize()
	vm.wait(1)
	event.AddItem(305, 1)
	event.AddItem(306, 1)
	argc = event.GetItemHaveNum(10) or argc
	if argc <= 0 then
		event.AddItem(10, 1)
	end
	argc = event.GetItemHaveNum(302) or argc
	if argc <= 0 then
		event.AddItem(302, 1)
	end
	event.SetFlag(220, 1)
	event.SetFlag(317, 1)
	event.DelMonster(-1)
	event.Finish()
end

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	helper_450e4(0)
end

--- Event 348, which map data, a script or the engine runs by number.
function script.event_348()
	local now_party_chara_id: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local item: s32 = 0
	event.Initialize()
	event.DngPause(1, 1)
	helper_ce85b54c()
	now_party_chara_id = event.GetNowPartyChara() or now_party_chara_id
	if now_party_chara_id == 4 then
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "Tu veux juste passer ici, non ?")
		helper_75684dd8(0, -1, 5, 0, 0)
		event.SetStatusbarShow(0, 0.16666667)
		helper_f59747fb()
		event.SetStatusbarShow(1, 0.16666667)
		wait_frames(6)
		event.DngPause(1, 0)
		event.Finish()
		return
	end
	var1 = event.GetEventData_2(6) or var1
	if var1 == 1 then
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.SetMesDrawspeed(0, 1)
		var2 = helper_c292fa16(0, 2500, 5, 256, 208, var2)
		event.SetMesShippo(0, 1)
		event.SetMesDrawspeed(0, 0)
		if var2 == 1 then
			var1 = 2
		end
	end
	if var1 == 2 then
		event.SetStatusbarShow(0, 0.16666667)
		wait_frames(6)
		event.GotoUseItem(338)
		vm.wait(6)
		item = vmhost.used_item() or item
		if item == 338 then
			helper_f59747fb()
		elseif item <= 0 then
		else
			helper_5fb66cb1()
		end
		event.SetStatusbarShow(1, 0.16666667)
		wait_frames(6)
	end
	event.DngPause(1, 0)
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	event.SetStatusbarShow(0, 1.0)
	event.Initialize()
	event.LoadDungeonMapFile("d01f01", "d01f01")
	event.LoadMonsterFile(0)
	event.AutoSetTreasureBox(-1)
	event.AutoSetMonster(-1)
	helper_6c4414ea()
	helper_6c7de8d8()
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	event.Initialize()
	event.CmrsInit()
	event.SetFadeOut(0)
	event.BgmPlayCancel()
	event.LoadDungeonMapFile("s06")
	event.LoadScript("s06/s06_1.stb", 500)
	vm.wait(1)
end

script.event_1000 = event_1000

script.event_1010 = event_1010

--- The dungeon system event run when the player opens a treasure box.
script.treasure_box = helper_5b28e690

--- The dungeon system event run when the player steps into a random circle.
function script.random_circle()
	local active_chr_no: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local yaw: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var11: s32 = 0
	local weight: f32 = 0
	local var14: f32 = 0
	local now_party_chara_id: s32 = 0
	local circle_id: s32 = 0
	local var18: s32 = 0
	local var19: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local pos_x_4: f32 = 0
	local pos_y_4: f32 = 0
	local pos_z_4: f32 = 0
	local var26: f32 = 0
	local var27: s32 = 0
	local angle: f32 = 0
	local var29: s32 = 0
	local var30: s32 = 0
	local bright_rate: f32 = 0
	local var32: s32 = 0
	local result: f32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	event.Initialize()
	event.DngPause(513, 1)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		helper_ce85b54c()
		if active_chr_no == 2 then
			helper_75684dd8(0, 22, 8, 0, 0)
		else
			helper_75684dd8(0, 23, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		do
			local out1, out2, out3 = event.RandomCircleGetPos(-1)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		yaw = event.GetRefAngle(pos_x, pos_y, pos_z, var1, var2, var3) or yaw
		var1 = vm.f32(vm.f32(vm.sin(yaw) * 25.0) + pos_x)
		var2 = pos_y
		var3 = vm.f32(vm.f32(vm.cos(yaw) * 25.0) + pos_z)
		event.SetCharaPos(0, var1, var2, var3)
		event.DngPause(513, 0)
		event.Finish()
		return
	end
	event.SetLoadbgFile_1("snd2/sp/sp_011.sound.json")
	vm.wait(3)
	helper_ce85b54c()
	do
		local out1, out2, out3 = event.RandomCircleGetPos(-1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	event.SetCameraCtrl(0)
	event.SetFcameraFollowFlag(1)
	event.SetFcameraFollowA(pos_x_2, pos_y_2 + 30.0, pos_z_2)
	event.SetCameraSpeed(8.0)
	event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
	event.SetFcameraHeight(0.0)
	event.SetFcameraDist(80.0)
	event.AssignStack(5)
	event.ClearStack(5)
	helper_479dc9e9()
	var11 = event.SndLoadSound_3(8, "snd2/sp/sp_011.sound.json") or var11
	event.ChangeDir("event/dng/")
	event.SetLoadbgFile_2("ring.gltf", "randomcoin.gltf")
	vm.wait(5)
	helper_479dc9e9()
	weight = event.GetRndcMotNowt() or weight
	event.RandomCircleOff(-1)
	event.LoadChara(5, "ring.gltf", "info", 12)
	event.CharaActive(1, 12)
	event.SetCharaPos(12, pos_x_2, pos_y_2, pos_z_2)
	event.SetMotion(12, "ループ", 6)
	event.CharaNormalDrive(12)
	event.SetCharaMotNowt(12, weight)
	event.EohSyncChara(4, 12)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.ObjsNextMotion(4, "消滅", 6)
	event.LoadChara(5, "randomcoin.gltf", "info", 13)
	event.CharaActive(1, 13)
	event.SetCharaPos(13, pos_x_2, pos_y_2 - 30.0, pos_z_2)
	var14 = event.GetRand(6.2831855) or var14
	var14 = vm.f32(var14 - vm.f32(3.1415927))
	var14 = event.AngleLimit(var14) or var14
	event.SetCharaRot(13, 0.0, var14, 0.0)
	event.ChangeDir("")
	now_party_chara_id = event.GetNowPartyChara() or now_party_chara_id
	event.EohSyncChara(5, 13)
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.ObjsSetScale(5, 0.0, 0.0, 0.0)
	event.ObjsSetScale(5, 1.0, 1.0, 1.0, 40)
	event.ObjsMove2(5, pos_x_2, pos_y_2 + 40.0, pos_z_2, 30, 2, 0.5)
	var18 = 0
	var19 = vm.f32(0.6)
	while true do
		do
			local _, out2, _ = event.GetCharaRot(13)
			var14 = out2 or var14
		end
		var14 = vm.f32(var14 + var19)
		var14 = event.AngleLimit(var14) or var14
		event.SetCharaRot(13, 0.0, var14, 0.0)
		if var18 == 10 then
			event.SndSePlay(var11, 0)
		end
		if var18 == 30 then
			helper_55646435()
		end
		if (if var18 >= 30 then helper_581cb30c(0) else 0) ~= 0 or var18 > 300 then
			event.SndSeStop(var11, 0)
			event.SndSePlay(var11, 3)
			vm.wait(7)
			break
		else
			var18 = var18 + 1
			vm.wait(8)
		end
	end
	helper_3cf99f2c()
	event.EohSyncChara(5, 13)
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x_3 = out1 or pos_x_3
		pos_y_3 = out2 or pos_y_3
		pos_z_3 = out3 or pos_z_3
	end
	do
		local out1, out2, out3 = event.GetCameraRef()
		pos_x_4 = out1 or pos_x_4
		pos_y_4 = out2 or pos_y_4
		pos_z_4 = out3 or pos_z_4
	end
	var26 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var26
	var27 = 0
	var27 = vm.float_bits(event.GetRand(10)) or var27
	var27 = vm.i32(var27 + 4)
	var18 = 0
	while true do
		do
			local _, out2, _ = event.GetCharaRot(13)
			var14 = out2 or var14
		end
		var14 = vm.f32(var14 + var19)
		var14 = event.AngleLimit(var14) or var14
		event.SetCharaRot(13, 0.0, var14, 0.0)
		vm.wait(9)
		if var18 >= var27 then
			if var19 > vm.f32(0.08) then
				var19 = vm.f32(var19 * vm.f32(0.9))
			end
			angle = var26
			angle = event.AngleLimit(angle) or angle
			if var14 < angle and helper_f7fba8ce(var14, angle, vm.f32(0.08)) == 0 then
				event.SetCharaRot(13, 0.0, angle, 0.0)
				circle_id = 0
				break
			end
			angle = vm.f32(var26 - vm.f32(3.1415927))
			angle = event.AngleLimit(angle) or angle
			if var14 < angle and helper_f7fba8ce(var14, angle, vm.f32(0.08)) == 0 then
				event.SetCharaRot(13, 0.0, angle, 0.0)
				circle_id = 1
				break
			end
		end
		var18 = vm.i32(var18 + 1)
	end
	var26 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var26
	do
		local _, out2, _ = event.GetCharaRot(13)
		var14 = out2 or var14
	end
	if helper_f7fba8ce(var14, var26, 1.0) == 0 then
		circle_id = 0
	else
		circle_id = 1
	end
	var26 = var14
	wait_frames(20)
	var29 = vm.float_bits(event.GetRand(10)) or var29
	if now_party_chara_id == 24 then
		var30 = 100
	else
		var30 = 6
	end
	if var29 < var30 then
		var29 = vm.float_bits(event.GetRand(10)) or var29
		if circle_id == 0 then
			if now_party_chara_id == 24 then
				var30 = 0
			else
				var30 = 2
			end
		elseif now_party_chara_id == 24 then
			var30 = 100
		else
			var30 = 4
		end
		if var29 < var30 then
			var26 = vm.f32(var26 + vm.f32(3.14))
			var26 = event.AngleLimit(var26) or var26
			event.ObjsRotation(5, 0.0, var26, 0.0, 8)
			if circle_id == 0 then
				circle_id = 1
			else
				circle_id = 0
			end
			wait_frames(10)
		else
			var29 = vm.float_bits(event.GetRand(10)) or var29
			if var29 < 1 then
				var26 = vm.f32(var26 + vm.f32(3.14))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 6)
				var26 = vm.f32(var26 + vm.f32(1.57))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 3)
				var26 = vm.f32(var26 + vm.f32(1.57))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 3)
				wait_frames(20)
			end
		end
	end
	var26 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var26
	do
		local _, out2, _ = event.GetCharaRot(13)
		var14 = out2 or var14
	end
	if helper_f7fba8ce(var14, var26, 1.0) == 0 then
		circle_id = 0
	else
		circle_id = 1
	end
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	bright_rate = 1.0
	var18 = 0
	var32 = event.GetRndCircleTrapid(circle_id) or var32
	if circle_id == 0 then
		event.SndSePlay(var11, 1)
		while var18 < 30 do
			event.BscnSetBlightRate(bright_rate)
			bright_rate = vm.f32(bright_rate + vm.f32(0.03))
			var18 = var18 + 1
			vm.wait(13)
		end
		helper_75684dd8(0, 2310, 8, 0, 0)
		result = event.SetRndCircleStatus(var32) or result
		if var32 == 1 then
			helper_75684dd8(0, 2311, 8, 0, 0)
		end
		if var32 == 2 then
			helper_75684dd8(0, 2312, 8, 0, 0)
		end
		if var32 == 3 then
			helper_75684dd8(0, 2313, 8, 0, 0)
		end
		if var32 == 4 then
			event.PostTreasureBox(pos_x_2, pos_y_2, pos_z_2, var26, 294)
			helper_75684dd8(0, 2314, 8, 0, 0)
		end
	else
		event.SndSePlay(var11, 2)
		while var18 < 30 do
			event.BscnSetBlightRate(bright_rate)
			bright_rate = vm.f32(bright_rate - vm.f32(0.03))
			var18 = var18 + 1
			vm.wait(19)
		end
		helper_75684dd8(0, 2320, 8, 0, 0)
		result = event.SetRndCircleStatus(var32) or result
		if var32 == 5 then
			if active_chr_no == 0 or active_chr_no == 2 then
				helper_75684dd8(0, 2321, 8, 0, 0)
			end
			if active_chr_no == 1 or active_chr_no == 3 then
				helper_75684dd8(0, 2322, 8, 0, 0)
			end
		end
		if var32 == 6 then
			if active_chr_no == 0 then
				helper_75684dd8(0, 2323, 8, 0, 0)
			end
			if active_chr_no == 1 or active_chr_no == 3 then
				helper_75684dd8(0, 2324, 8, 0, 0)
			end
			if active_chr_no == 2 then
				helper_75684dd8(0, 2325, 8, 0, 0)
			end
		end
		if var32 == 8 then
			helper_75684dd8(0, 2328, 8, 0, 0)
		end
		if var32 == 9 then
			helper_75684dd8(0, 2326, 8, 0, 0)
		end
		if var32 == 10 then
			helper_75684dd8(0, 2329, 8, 0, 0)
		end
		if var32 == 11 then
			helper_75684dd8(0, 2327, 8, 0, 0)
		end
		if var32 == 12 then
			helper_75684dd8(0, 2330, 8, 0, 0)
		end
	end
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.BscnSetBlightRate(1.0)
	if var32 == 1 then
		event.SetPullItem(pos_x_2, pos_y_2, pos_z_2, 1, 10, result / 10.0)
	end
	event.DngPause(513, 0)
	event.SetCameraCtrl(1)
	do
		local out1, out2, out3 = event.GetBeforeCameraNextPos()
		position_x = out1 or position_x
		position_y = out2 or position_y
		position_z = out3 or position_z
	end
	event.SetCameraPos(position_x, position_y, position_z)
	do
		local out1, out2, out3 = event.GetBeforeCameraNextRef()
		position_x = out1 or position_x
		position_y = out2 or position_y
		position_z = out3 or position_z
	end
	event.SetCameraRef(position_x, position_y, position_z)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.SetCrossfade(15)
	event.Finish()
end

--- The dungeon system event run when the player uses the geostone.
function script.geostone()
	local active_chr_no: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var17: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local argc: s32 = 0
	local stage_id: s32 = 0
	local var23: s32 = 0
	event.Initialize()
	event.DngPause(513, 1)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		helper_ce85b54c()
		if active_chr_no == 2 then
			helper_75684dd8(0, 22, 8, 0, 0)
		else
			helper_75684dd8(0, 23, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		event.DngPause(513, 0)
		event.Finish()
		return
	end
	event.DngPause(16, 1)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetFlag(31, 1)
	event.SetMotion(0, "立ち")
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var1 = out1 or var1
		var2 = out2 or var2
		var3 = out3 or var3
	end
	if active_chr_no == 0 then
		event.SetLoadbgFile_3(
			"dungeon/chara/c01_gio.gltf",
			"event/itemget_ev/itemget_ev.gltf",
			"snd2/sp/sp_012.sound.json"
		)
		vm.wait(3)
		helper_479dc9e9()
		event.LoadMotion(5, "dungeon/chara/c01_gio.gltf", "info", 0)
	end
	if active_chr_no == 1 then
		event.SetLoadbgFile_3(
			"dungeon/chara/c02_gio.gltf",
			"event/itemget_ev/itemget_ev.gltf",
			"snd2/sp/sp_012.sound.json"
		)
		vm.wait(5)
		helper_479dc9e9()
		event.LoadMotion(5, "dungeon/chara/c02_gio.gltf", "info", 0)
	end
	var4 = event.SndLoadSound_3(8, "snd2/sp/sp_012.sound.json") or var4
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var8 = out1 or var8
		var9 = out2 or var9
		var10 = out3 or var10
	end
	event.CopyVector(var8, var9, var10)
	event.GeostoneAnimeOff()
	event.EohSyncGeostone(1)
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	pos_y_2 = vm.f32(var9 + 18.0)
	event.EohSetPos(1, pos_x_2, pos_y_2, pos_z_2)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	var17 = event.GetRefAngle(pos_x_2, pos_y_2, pos_z_2, pos_x, pos_y, pos_z) or var17
	var17 = event.AngleLimit(var17) or var17
	if active_chr_no == 0 then
		var17 = vm.f32(var17 + vm.f32(2.9))
	end
	if active_chr_no == 1 then
		var17 = vm.f32(var17 + vm.f32(2.4))
	end
	var17 = event.AngleLimit(var17) or var17
	var8 = vm.f32(vm.f32(vm.sin(var17) * 14.0) + pos_x_2)
	var10 = vm.f32(vm.f32(vm.cos(var17) * 14.0) + pos_z_2)
	event.SetCharaPos(0, var8, var9, var10)
	var17 = vm.f32(var17 - vm.f32(3.1415927))
	var17 = event.AngleLimit(var17) or var17
	event.SetCharaRot(0, 0.0, var17, 0.0)
	event.EohResetDaPosition(0)
	event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 12)
	event.CharaActive(0, 12)
	if active_chr_no == 0 then
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(var8, var9 + 18.0, var10)
		event.SetCameraSpeed(16.0)
		event.SetFcameraFollowOfs(0.0, 6.0, 0.0)
		event.SetFcameraHeight(-14.0)
		event.SetFcameraDist(54.0)
		event.SetCharaPos(12, var8, var9 + 36.0, var10)
	end
	if active_chr_no == 1 then
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(var8, var9 + 18.0, var10)
		event.SetCameraSpeed(16.0)
		event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
		event.SetFcameraHeight(-5.0)
		event.SetFcameraDist(34.0)
		pos_x_3 = vm.f32(vm.f32(vm.sin(var17) * 8.0) + var8)
		pos_y_3 = vm.f32(var9 + 18.0)
		pos_z_3 = vm.f32(vm.f32(vm.cos(var17) * 8.0) + var10)
		event.SetCharaPos(12, pos_x_3, pos_y_3, pos_z_3)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.SetCrossfade(30)
	event.ObjsSetMotion(0, "取る", 6)
	event.ObjsNextMotion(0, "取るL", 4)
	wait_frames(16)
	event.SndSePlay(var4, 0)
	wait_frames(2)
	event.EohSetPos(1, 0.0, 0.0, 0.0)
	event.GeostoneSetReference(0, "item")
	wait_frames(10)
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var17 = event.GetRefAngle(var8, var9, var10, pos_x, pos_y, pos_z) or var17
	event.SetCharaRot(12, 0.0, var17, 0.0)
	event.CharaActive(1, 12)
	event.EohSyncChara(4, 12)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.ObjsSetMotion(4, "発動", 6, 1.2)
	event.ObjsMotionWait(4)
	event.ObjsResetMotion(4)
	event.ObjsSetMotion(4, "発動", 5)
	wait_frames(20)
	event.SndSePlay(var4, 1)
	wait_objects(0)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	argc = event.GetSysSndId() or argc
	event.SndSePlay(argc, 18)
	helper_75684dd8(0, 2400, 8, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	stage_id = event.DngGetStageId() or stage_id
	var23 = event.DngGetFloorId() or var23
	event.SetFloorInfo(stage_id, var23, 5, 256)
	event.SetCrossfade(10)
	if active_chr_no == 1 then
		event.SetMotion(0, "取る戻り", 6)
		vm.wait(13)
	end
	event.DngPause(529, 0)
	event.SetMotion(0, "立ち", 4)
	event.SetCharaPos(0, var1, var2, var3)
	event.EohResetDaPosition(0)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.GeostoneDelReference()
	event.GeostoneSetFlag(0)
	event.EohSetScale(1, 1.0, 1.0, 1.0)
	event.DelExtMotion(0)
	event.DeleteChara(12)
	event.SetCameraCtrl(1)
	event.Finish()
end

--- The dungeon system event run for a monster that can be talked to.
script.monster_talk = helper_313d0b27

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- The dungeon system event run when every monster on the floor has been defeated.
script.floor_clear = helper_20b0c

--- Event 2000, which map data, a script or the engine runs by number.
-- Defined empty, so the engine runs this instead of its default.
function script.event_2000() end

--- The dungeon system event run on the first examination of a random stone.
function script.random_stone_guide()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.DngPause(513, 1)
	event.SetFlag(50, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	helper_75684dd8(0, 2600, 8, 0, 0)
	vm.wait(2)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(513, 0)
	event.Finish()
end

--- Event 2510, which map data, a script or the engine runs by number.
function script.event_2510()
	local var0: s32 = 0
	event.Initialize()
	event.DngPause(515, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	open_message(0, 2610, 8, 0, 0)
	wait_frames(30)
	do
		local _: any
		_, var0 = wait_message_answer(0, 0, var0)
	end
	close_message(0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(515, 0)
	event.Finish()
end

--- The dungeon system event run the first time the player levels up.
function script.level_up_guide()
	local var0: s32 = 0
	event.Initialize()
	event.DngPause(515, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	open_message(0, 2620, 8, 0, 0)
	wait_frames(30)
	do
		local _: any
		_, var0 = wait_message_answer(0, 0, var0)
	end
	close_message(0)
	helper_75684dd8(0, 2621, 8, 0, 0)
	helper_75684dd8(0, 2622, 8, 0, 0)
	helper_75684dd8(0, 2623, 8, 0, 0)
	event.MesMake_2(0, "Voir Aide (Menu principal) pour infos")
	helper_75684dd8(0, -1, 8, 0, 0)
	vm.wait(7)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(515, 0)
	event.Finish()
end

--- The dungeon system event run the first time the ridepod's wheels are used.
function script.robo_bike_guide()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.DngPause(513, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"[(!)]Conduire le Tout-terrain\n   Acc[UNI00e9]l[UNI00e8]re avec (L)↑ - Ralentis avec (L)↓.\n   Tourne avec (L) ← ou →.\n   Virages serr[UNI00e9]s : [l1] + (L) ← ou →."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	vm.wait(2)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(513, 0)
	event.Finish()
end

--- The dungeon system event run the first time the magic sword counter fills.
function script.magic_sword_guide()
	event.Initialize()
	event.DngPause(515, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(0, "[(!)]Tu ma[UNI00ee]trises d[UNI00e9]sormais la Lame Absomagie.")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"La Lame Absomagie permet d'absorber\nl'[UNI00e9]nergie des attaques [UNI00e9]l[UNI00e9]mentales\n(ex : feu) en parant. Pour renvoyer\nl'[UNI00e9]nergie, il suffit d'attaquer."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"Tu peux sans cesse accumuler de\nl'[UNI00e9]nergie d'un m[UNI00ea]me type [UNI00e9]l[UNI00e9]mental.\nMais si tu absorbes un autre type\nd'[UNI00e9]nergie, ton arme se d[UNI00e9]chargera."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"La quantit[UNI00e9] maximale d'[UNI00e9]nergie\n[UNI00e9]l[UNI00e9]mentale absorb[UNI00e9]e par une arme\nd[UNI00e9]pend de la solidit[UNI00e9] de celle-ci."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"Pour rel[UNI00e2]cher l'[UNI00e9]nergie [UNI00e9]l[UNI00e9]mentale\naccumul[UNI00e9]e, appuie sur [l1] tout en\nparant avec [r1]."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	vm.wait(6)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(515, 0)
	event.Finish()
end

--- The Sphida event run when the player stands at the ball and presses the action button.
function script.sphida_shot()
	local tex_bank: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local level: s32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	local var21: s32 = 0
	local var22: f32 = 0
	local var23: f32 = 0
	local var24: f32 = 0
	local var25: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var29: s32 = 0
	local var30: f32 = 0
	local var31: f32 = 0
	local var32: f32 = 0
	local var33: f32 = 0
	local var34: f32 = 0
	local var35: f32 = 0
	local var36: f32 = 0
	local var37: f32 = 0
	local var38: f32 = 0
	local var39: f32 = 0
	local var40: f32 = 0
	local var41: s32 = 0
	local var42: s32 = 0
	local var43: s32 = 0
	local var44: s32 = 0
	local var45: s32 = 0
	local var46: s32 = 0
	local var47: f32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local var51: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local yaw: f32 = 0
	local count: s32 = 0
	local var57: any = 0
	vm.wait(1)
	event.Initialize()
	helper_ce85b54c()
	event.SetMotion(0, "立ち")
	if helper_17b6d01b() ~= 0 then
		event.Finish()
		return
	end
	event.SetStatusbarShow(0, 0.1)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_4(
		"dungeon/sphida/c01_golf.gltf",
		"dungeon/chara/c01b_miss.gltf",
		"dungeon/sphida/gool_end.gltf",
		"dungeon/sphida/mizu_eff.gltf"
	)
	vm.wait(3)
	helper_479dc9e9()
	event.LoadMotion(5, "dungeon/sphida/c01_golf.gltf", "info", 0)
	event.LoadMotion(5, "dungeon/chara/c01b_miss.gltf", "info", 0)
	tex_bank = event.SphidaGetTexb() or tex_bank
	event.LoadChara(5, "dungeon/sphida/gool_end.gltf", "info", 12)
	event.CharaActive(0, 12)
	var1 = event.SndLoadSound_3(5, "snd2/mon/en_900.sound.json") or var1
	event.CreateSwordEffect(5, 64, 16)
	event.SwordEffectColor(128, 128, 128, 80, 128, 128, 128, 80)
	event.EsmInitialize(5, 1)
	event.EsmLoadBasePack("足水パシャ", "dungeon/sphida/mizu_eff.gltf")
	event.EsmInitFix(5)
	event.EohSyncChara(0, 2)
	event.EohSetShow(0, 0)
	event.SetCrossfade(15)
	event.SphidaResetPowgage()
	do
		local out1, out2, out3 = event.SphidaGetBallPos()
		var8 = out1 or var8
		var9 = out2 or var9
		var10 = out3 or var10
	end
	var2, var3, var4, var6 = helper_49c6448e(var2, var3, var4, var6)
	helper_1a7fd8eb(var6)
	event.SphidaSetStatusFlag(1)
	var11 = 12.5
	event.SphidaCalcCarry(vm.f32(var11 * vm.f32(3.1415927)) / 180.0)
	var12, var13, level = helper_39ab7f1f(var12, var13, level)
	event.SphidaSetPowgageSafeLevel(level)
	do
		local out1, out2, out3 = event.ZeroVector()
		var15 = out1 or var15
		var16 = out2 or var16
		var17 = out3 or var17
	end
	while true do
		event.SphidaSetMinimapFlag(1)
		event.SphidaSetMmLineFlag(1)
		local t0: s32
		t0, var6, var11 = helper_86f3f24c(var6, var11, tex_bank)
		if t0 ~= 0 then
			event.SphidaSetMinimapFlag(0)
			event.SphidaSetMmLineFlag(0)
			event.SphidaSetBallPos(var8, var9, var10)
			event.SetCharaPos(8, var8, var9, var10)
			event.SetCharaPos(9, var8, var9, var10)
			helper_03a1d6f1(0)
			return
		end
		event.SphidaSetMinimapFlag(0)
		event.SphidaSetMmLineFlag(0)
		local t1: s32
		t1, var12, var6, var16, var15, level = helper_b1b0c1a6(var12, tex_bank, var6, var16, var15, var1, level)
		if t1 == 0 then
			break
		else
			vm.wait(8)
		end
	end
	do
		local out1, out2, out3 = event.CopyVector(var2, var3, var4)
		var18 = out1 or var18
		var19 = out2 or var19
		var20 = out3 or var20
	end
	var21 = 0
	if level ~= 1 and level ~= -1 and level ~= 4 then
		event.SpriteSetType(0, 1)
		event.SpriteSetDraw(0, 1)
		event.SpriteSetPutsize(0, 10.8, 11.6)
		event.SpriteSetPos(0, var2, var3 + 30.0, var4)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		if level == 0 then
			event.SpriteSetUvsize(0, 78, 198, 54, 58)
		end
		if level == 2 or level == -2 then
			event.SpriteSetUvsize(0, 186, 190, 70, 66)
		end
		if level == 3 or level == -3 then
			event.SpriteSetUvsize(0, 132, 198, 54, 58)
		end
		event.EohSyncSprite(18, 0)
		event.ObjsInit(18)
		event.ObjsSyncObj(18, 18)
		event.ObjsSetColor(18, 128, 128, 128, 128, 4)
		event.ObjsColorDelay(18, 20)
		event.ObjsSetColor(18, 128, 128, 128, 0, 6)
		wait_frames(10)
	end
	if var12 <= vm.f32(0.3) then
		event.SetMotion(0, "小ショット", 2)
		wait_frames(25)
		if level ~= 4 then
			event.SndSePlay(var1, 3)
		end
	elseif var12 <= vm.f32(0.6) then
		event.SetMotion(0, "中ショット", 2)
		wait_frames(34)
		event.SndSePlay(var1, 2)
	else
		event.SetMotion(0, "大ショット", 2)
		wait_frames(39)
		if level == 0 then
			event.SndSePlay(var1, 12)
		else
			event.SndSePlay(var1, 1)
		end
	end
	if level == 4 then
		wait_frames(50)
		helper_f90045b0(var1)
		event.SphidaSetBallPos(var8, var9, var10)
		event.SetCharaPos(8, var8, var9, var10)
		event.SetCharaPos(9, var8, var9, var10)
		helper_03a1d6f1(0)
		return
	end
	if level == 0 then
		event.SpriteSetType(1, 0)
		event.SpriteSetDraw(1, 1)
		event.SpriteSetPos(1, 256, 278)
		event.SpriteSetUvsize(1, 246, 104, 266, 42)
		event.SpriteSetPutsize(1, 266, 42)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetScale(1, 10, 10, 10)
		event.EohSyncSprite(19, 1)
		event.ObjsInit(19)
		event.ObjsSyncObj(19, 19)
		event.ObjsJump(19, 256, 138, 0, 3.6, 20)
		event.ObjsSetScale(19, 1, 1, 1, 18)
		event.ObjsSetColor(19, 128, 128, 128, 128, 12)
		event.ObjsColorDelay(19, 30)
		event.ObjsSetColor(19, 128, 128, 128, 0, 6)
	end
	var12 = helper_dff48a5c(var12)
	var11 = vm.f32(vm.f32(var11 * vm.f32(3.1415927)) / 180.0)
	var12 = vm.f32(var12 - vm.f32(var12 * var11))
	var22 = vm.f32(vm.sin(var6) * vm.f32(var12 * vm.cos(var11)))
	var23 = vm.f32(var12 * vm.sin(var11))
	var24 = vm.f32(vm.cos(var6) * vm.f32(var12 * vm.cos(var11)))
	var16 = vm.f32(vm.f32(var16 * vm.f32(3.1415927)) / 2.0)
	var17 = vm.f32(vm.f32(vm.f32(-var24 * var13) * var15) * vm.f32(0.4))
	var15 = vm.f32(vm.f32(vm.f32(-var22 * var13) * var15) * vm.f32(0.4))
	do
		local out1, out2, out3 = event.SphidaGetPinPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var29 = 0
	level = 0
	var42 = 0
	do
		local out1, out2, out3, out4, out5 =
			event.ChkIntersectionPoint_13(0, var2, var3 + 5.0, var4, var2, var3, var4, 0)
		var30 = out1 or var30
		var31 = out2 or var31
		var32 = out3 or var32
		var41 = out4 or var41
		var43 = out5 or var43
	end
	if var41 >= 0 and (var43 == 1 or var43 == 7) then
		print("----------------START_MIZU-------------------\n")
		var12 = 1.0
	else
		print("----------------START_SOTO-------------------\n")
		var12 = 0.0
	end
	var46 = 0
	while true do
		if var3 >= 180.0 then
			var22 = vm.f32(var22 * vm.f32(0.999))
			var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0098) * (var46 + 1)))
			var24 = vm.f32(var24 * vm.f32(0.999))
		else
			var41 = event.ChkIntersectionPoint_9(12, var2, var3, var4, var2, vm.f32(var3 - 3.0) - vm.f32(0.01), var4, 0)
				or var41
			if level == 1 and var41 >= 0 then
				var22 = vm.f32(var22 * vm.f32(0.94))
				var23 = vm.f32(var23 + vm.f32(vm.f32(-0.00045) * (var46 + 1)))
				var24 = vm.f32(var24 * vm.f32(0.94))
				var22 = vm.f32(var22 + var15)
				var24 = vm.f32(var24 + var17)
				var15 = vm.f32(var15 * vm.f32(0.8))
				var17 = vm.f32(var17 * vm.f32(0.8))
			else
				var22 = vm.f32(var22 * vm.f32(0.999))
				var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0045) * (var46 + 1)))
				var24 = vm.f32(var24 * vm.f32(0.999))
			end
		end
		do
			local out1, out2, out3 = event.AddVector(var2, var3, var4, var22, var23, var24)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
		end
		if var16 ~= 0.0 then
			var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
			var11 = vm.f32(var11 + var16)
			var11 = event.AngleLimit(var11) or var11
			var22 = vm.f32(var22 + vm.f32(vm.f32(vm.sin(var11) / 10.0) * var13))
			var24 = vm.f32(var24 + vm.f32(vm.f32(vm.cos(var11) / 10.0) * var13))
		end
		var40 = event.DistVector(var15, 0.0, var17) or var40
		if var40 > vm.f32(0.01) then
			var25 = event.DistVector(var15, 0.0, var17) or var25
			var11 = event.GetRefAngle(var18, var19, var20, var18 + var15, var19, var20 + var17) or var11
			do
				local out1, out2, out3 = event.GetCharaRot(8)
				var5 = out1 or var5
				var6 = out2 or var6
				var7 = out3 or var7
			end
			event.SetCharaRot(8, var5, var11, var7)
			event.AddCharaRot(8, var25 * 12.0, 0.0, 0.0)
			event.SetCharaRot(9, var5, var11, var7)
			event.AddCharaRot(9, var25 * 12.0, 0.0, 0.0)
		else
			var25 = event.DistVector(var22, 0.0, var24) or var25
			var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
			do
				local out1, out2, out3 = event.GetCharaRot(8)
				var5 = out1 or var5
				var6 = out2 or var6
				var7 = out3 or var7
			end
			event.SetCharaRot(8, var5, var11, var7)
			event.AddCharaRot(8, var25 / 10.0, 0.0, 0.0)
			event.SetCharaRot(9, var5, var11, var7)
			event.AddCharaRot(9, var25 / 10.0, 0.0, 0.0)
		end
		var25 = event.DistVector(var22, var23, var24) or var25
		var39 = var25
		var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
		var36 = vm.f32(vm.sin(vm.f32(var11 - vm.f32(1.5707964))) * 3.0)
		var38 = vm.f32(vm.cos(vm.f32(var11 - vm.f32(1.5707964))) * 3.0)
		event.SwordEffectAddPoint(
			var2 - var36,
			var3,
			var4 - var38,
			vm.f32(var2 + var36) + var36,
			var3,
			vm.f32(var4 + var38) + var38
		)
		do
			local out1, out2, out3 = event.CopyVector(var22, var23, var24)
			var36 = out1 or var36
			var37 = out2 or var37
			var38 = out3 or var38
		end
		do
			local out1, out2, out3 = event.NormalVector(var36, var37, var38)
			var36 = out1 or var36
			var37 = out2 or var37
			var38 = out3 or var38
		end
		do
			local out1, out2, out3 = event.ScaleVector(var36, var37, var38, 3.0)
			var36 = out1 or var36
			var37 = out2 or var37
			var38 = out3 or var38
		end
		do
			local out1, out2, out3, out4, out5 =
				event.ChkIntersectionPoint_13(0, var18, var19, var20, var2 + var36, var3 + var37, var4 + var38, 0)
			var30 = out1 or var30
			var31 = out2 or var31
			var32 = out3 or var32
			var41 = out4 or var41
			var43 = out5 or var43
		end
		if var41 >= 0 and (var43 == 1 or var43 == 7) then
			event.EsmCreate("足水パシャ")
			event.EsmSetVect1(var30, var31, var32)
			if var42 <= 0 then
				event.SndSePlay(var1, 11)
				var42 = 10
			end
			if var12 == 0.0 then
				var12 = 1.0
				var22 = vm.f32(var22 * vm.f32(0.4))
				var23 = vm.f32(var23 * vm.f32(0.4))
				var24 = vm.f32(var24 * vm.f32(0.4))
				var15 = 0.0
				var17 = 0.0
				event.DeleteSwordEffect()
				print("----------------SE OFF-------------------\n")
			else
				var12 = 0.0
				print("----------------SE ON-------------------\n")
			end
		end
		do
			local out1, out2, out3, out4, out5, out6, out7 =
				event.ChkIntersectionPoint_15(12, var18, var19, var20, var2 + var36, var3 + var37, var4 + var38, 1)
			var30 = out1 or var30
			var31 = out2 or var31
			var32 = out3 or var32
			var33 = out4 or var33
			var34 = out5 or var34
			var35 = out6 or var35
			var41 = out7 or var41
		end
		if var41 < 0 then
			if var3 >= 380.0 and var23 > 0.0 then
				do
					local out1, out2, out3 = event.CopyVector(var2, var3, var4)
					var30 = out1 or var30
					var31 = out2 or var31
					var32 = out3 or var32
				end
				do
					local out1, out2, out3 = event.CopyVector(var22, -var23, var24)
					var33 = out1 or var33
					var34 = out2 or var34
					var35 = out3 or var35
				end
				do
					local out1, out2, out3 = event.NormalVector(var33, var34, var35)
					var33 = out1 or var33
					var34 = out2 or var34
					var35 = out3 or var35
				end
				var41 = 1
			end
		end
		while var41 >= 0 do
			var16 = 0.0
			if var25 > 8.0 then
				helper_79d90c82()
			end
			if var12 ~= 1.0 and var42 <= 0 then
				event.SndSePlay(var1, 6)
				var42 = 10
			end
			do
				local out1, out2, out3 = event.CopyVector(-var22, -var23, -var24)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.NormalVector(var22, var23, var24)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.ScaleVector(var22, var23, var24, 3.0)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.AddVector(var30, var31, var32, var22, var23, var24)
				var30 = out1 or var30
				var31 = out2 or var31
				var32 = out3 or var32
			end
			do
				local out1, out2, out3 = event.SubVector(var18, var19, var20, var30, var31, var32)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			var40 = event.DistVector(var18, var19, var20) or var40
			var40 = vm.f32(var39 - var40)
			if var40 <= 0.0 then
				break
			else
				var39 = var40
				do
					local out1, out2, out3 = event.CopyVector(-var22, -var23, -var24)
					var22 = out1 or var22
					var23 = out2 or var23
					var24 = out3 or var24
				end
				if var23 < 0.0 and var34 > 0.0 then
					var22 = vm.f32(var15 * 2.0)
					var23 = 0.0
					var24 = vm.f32(var17 * 2.0)
					var15 = vm.f32(var15 * vm.f32(0.2))
					var17 = vm.f32(var17 * vm.f32(0.2))
				else
					if
						var22 < 0.0 and var33 > 0.0
						or var22 > 0.0 and var33 < 0.0
						or var24 < 0.0 and var35 > 0.0
						or var24 > 0.0 and var35 < 0.0
					then
						var15 = 0.0
						var17 = 0.0
					end
					var22 = 0.0
					var23 = 0.0
					var24 = 0.0
				end
				if var12 == 0.0 then
					var22 = vm.f32(vm.f32(vm.f32(var33 * var25) * vm.f32(0.9)) + var22)
					var23 = vm.f32(vm.f32(vm.f32(var34 * var25) * vm.f32(0.58)) + var23)
					var24 = vm.f32(vm.f32(vm.f32(var35 * var25) * vm.f32(0.9)) + var24)
				else
					print("MIZU______1--------------------------------------------------------------------\n")
					var22 = vm.f32(vm.f32(vm.f32(var33 * var25) * vm.f32(0.8)) + var22)
					var23 = vm.f32(vm.f32(vm.f32(var34 * var25) * vm.f32(0.4)) + var23)
					var24 = vm.f32(vm.f32(vm.f32(var35 * var25) * vm.f32(0.8)) + var24)
				end
				do
					local out1, out2, out3 = event.CopyVector(var30, var31, var32)
					var18 = out1 or var18
					var19 = out2 or var19
					var20 = out3 or var20
				end
				do
					local out1, out2, out3 = event.CopyVector(var22, var23, var24)
					var36 = out1 or var36
					var37 = out2 or var37
					var38 = out3 or var38
				end
				do
					local out1, out2, out3 = event.NormalVector(var36, var37, var38)
					var36 = out1 or var36
					var37 = out2 or var37
					var38 = out3 or var38
				end
				do
					local out1, out2, out3 = event.ScaleVector(var36, var37, var38, 3.0)
					var36 = out1 or var36
					var37 = out2 or var37
					var38 = out3 or var38
				end
				do
					local out1, out2, out3 = event.ScaleVector(var33, var34, var35, var40)
					var33 = out1 or var33
					var34 = out2 or var34
					var35 = out3 or var35
				end
				do
					local out1, out2, out3 = event.CopyVector(var30, var31, var32)
					var2 = out1 or var2
					var3 = out2 or var3
					var4 = out3 or var4
				end
				do
					local out1, out2, out3 = event.AddVector(var2, var3, var4, var33, var34, var35)
					var2 = out1 or var2
					var3 = out2 or var3
					var4 = out3 or var4
				end
				do
					local out1, out2, out3, out4, out5, out6, out7, out8 = event.ChkIntersectionPoint_16(
						12,
						var18,
						var19,
						var20,
						var2 + var36,
						var3 + var37,
						var4 + var38,
						1
					)
					var30 = out1 or var30
					var31 = out2 or var31
					var32 = out3 or var32
					var33 = out4 or var33
					var34 = out5 or var34
					var35 = out6 or var35
					var41 = out7 or var41
					var43 = out8 or var43
				end
			end
		end
		do
			local out1, out2, out3, out4, out5, out6, out7, out8 =
				event.ChkIntersectionPoint_16(12, var2, var3, var4, var2, var3 - 3.0, var4, 1)
			var30 = out1 or var30
			var31 = out2 or var31
			var32 = out3 or var32
			var33 = out4 or var33
			var34 = out5 or var34
			var35 = out6 or var35
			var41 = out7 or var41
			var43 = out8 or var43
		end
		if var41 >= 0 then
			var16 = 0.0
			var3 = vm.f32(var31 + 3.0)
			var40 = event.DistVector(var22, 0.0, var24) or var40
			if var40 < vm.f32(2.6) or var23 >= -1.0 and var23 <= 0.0 then
				var23 = 0.0
				level = 1
			else
				if var12 == 0.0 then
					var22 = vm.f32(var22 * vm.f32(0.9))
					var23 = -vm.f32(var23 * vm.f32(0.58))
					var24 = vm.f32(var24 * vm.f32(0.9))
					var22 = vm.f32(var22 + vm.f32(var15 * 2.0))
					var24 = vm.f32(var24 + vm.f32(var17 * 2.0))
					var15 = vm.f32(var15 * vm.f32(0.2))
					var17 = vm.f32(var17 * vm.f32(0.2))
				else
					print("MIZU______2--------------------------------------------------------------------\n")
					var22 = vm.f32(var22 * vm.f32(0.8))
					var23 = -vm.f32(var23 * vm.f32(0.4))
					var24 = vm.f32(var24 * vm.f32(0.8))
					var15 = 0.0
					var17 = 0.0
				end
				if var25 > 8.0 then
					helper_79d90c82()
				end
				if var12 ~= 1.0 and var42 <= 0 then
					event.SndSePlay(var1, 5)
					var42 = 10
				end
			end
			var40 = event.DistVector(var15, 0.0, var17) or var40
			if var23 == 0.0 and var25 < vm.f32(1.6) and var40 < vm.f32(0.4) then
				if var43 == 6 then
					var29 = 1
					break
				end
				var43 = event.AmgGetAttrStatus(var2, var3, var4) or var43
				if not (var43 == 1) then
					break
				end
				var29 = 1
				break
			end
		end
		if var3 < -500.0 then
			var29 = 1
			break
		elseif var46 >= 480 then
			var29 = 1
			break
		else
			var44 = event.SphidaGetPinCol() or var44
			var45 = event.SphidaGetBallCol() or var45
			x = vm.f32(pos_x - var2)
			y = vm.f32(pos_y - var3)
			z = vm.f32(pos_z - var4)
			var47 = event.DistVector(x, y, z) or var47
			if var45 ~= var44 then
				var51 = event.LinePointDist(var18, var19, var20, var2, var3, var4, pos_x, pos_y, pos_z) or var51
				if var51 >= 0.0 and var51 <= 30.0 then
					var21 = 1
					break
				end
				if var47 ~= 0.0 then
					if var47 <= 120.0 then
						do
							local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(vm.f32(0.6), var47))
							x = out1 or x
							y = out2 or y
							z = out3 or z
						end
						do
							local out1, out2, out3 = event.AddVector(var2, var3, var4, x, y, z)
							var2 = out1 or var2
							var3 = out2 or var3
							var4 = out3 or var4
						end
						do
							local out1, out2, out3 = event.AddVector(var22, var23, var24, x, y, z)
							var22 = out1 or var22
							var23 = out2 or var23
							var24 = out3 or var24
						end
					end
				else
					var21 = 1
					break
				end
			elseif var47 ~= 0.0 then
				if var47 <= 60.0 then
					do
						local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(1.0, var47))
						x = out1 or x
						y = out2 or y
						z = out3 or z
					end
					do
						local out1, out2, out3 = event.SubVector(var2, var3, var4, x, y, z)
						var2 = out1 or var2
						var3 = out2 or var3
						var4 = out3 or var4
					end
					do
						local out1, out2, out3 = event.SubVector(var22, var23, var24, x, y, z)
						var22 = out1 or var22
						var23 = out2 or var23
						var24 = out3 or var24
					end
				end
			end
			event.SetCharaPos(8, var2, var3, var4)
			event.SetCharaPos(9, var2, var3, var4)
			do
				local out1, out2, out3 = event.CopyVector(var2, var3, var4)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			if var3 <= -50.0 then
				event.SetFcameraFollowFlag(0)
				if var29 >= 30 then
					if var29 >= 50 then
						break
					end
				else
					event.SetCameraRef(var2, var3, var4)
				end
				var29 = var29 + 1
			elseif var46 >= 20 then
				event.CtrlcMoveRange(20.0, 30.0, 60.0, 200.0)
				event.SetCameraSpeed(8.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				event.SetFcameraFollow(
					vm.f32(var2 + var22) + var22,
					vm.f32(var3 + var23) + var23,
					vm.f32(var4 + var24) + var24
				)
				do
					local out1, out2, out3 = event.GetCameraPos()
					pos_x_2 = out1 or pos_x_2
					pos_y_2 = out2 or pos_y_2
					pos_z_2 = out3 or pos_z_2
				end
				yaw = event.GetRefAngle(
					vm.f32(var2 + var22) + var22,
					vm.f32(var3 + var23) + var23,
					vm.f32(var4 + var24) + var24,
					pos_x_2,
					pos_y_2,
					pos_z_2
				) or yaw
				event.CtrlcSetRotate(yaw)
				event.CtrlcMoveCamera(8)
				event.CtrlcStep()
			end
			event.SphidaSetBallPos(var2, var3, var4)
			vm.wait(15)
			if var42 > 0 then
				var42 = var42 - 1
			end
			var46 = var46 + 1
		end
	end
	event.SetCharaPos(8, var2, var3, var4)
	event.SetCharaPos(9, var2, var3, var4)
	event.SphidaSetStatusFlag(0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	if var29 == 0 then
		event.SphidaSetBallPos(var2, var3, var4)
		count = event.SphidaGetParCount() or count
		if var21 == 1 then
			event.CharaActive(0, 0)
			event.CharaActive(0, 8)
			event.CharaActive(0, 9)
			event.CharaActive(1, 12)
			event.SetCharaPos(12, pos_x, pos_y, pos_z)
			event.SetMotion(12, "発動", 6)
			event.SndSePlay(var1, 17)
			var46 = 0
			while var46 < 2 do
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetFcameraFollowA(pos_x, pos_y, pos_z)
				event.SetCameraSpeed(12.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				event.SetFcameraHeight(0.0)
				event.SetFcameraDist(100.0)
				event.FcameraStep(1)
				var46 = var46 + 1
				vm.wait(16)
			end
			event.CharaActive(0, 10)
			do
				local out1, out2, out3 = event.SphidaGetPinPos()
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			var46 = 0
			while var46 < 100 do
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetFcameraFollowA(pos_x, pos_y, pos_z)
				event.SetCameraSpeed(12.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				event.SetFcameraHeight(0.0)
				event.SetFcameraDist(100.0)
				event.FcameraStep(1)
				var46 = var46 + 1
				vm.wait(17)
			end
			event.CharaActive(0, 11)
			var44 = event.DngGetStageId() or var44
			var45 = event.DngGetFloorId() or var45
			var41 = event.GetFloorInfo(var44, var45, 4) or var41
			do
				local out1, out2 = event.SphidaGetPrize(var41)
				var42 = out1 or var42
				var43 = out2 or var43
			end
			var41 = vm.i32(var41 + 1)
			event.SetFloorInfo(var44, var45, 4, var41)
			event.PostTreasureBox(pos_x, pos_y - 30.0, pos_z, var11, var42, var43)
			wait_frames(54)
			wait_frames(30)
			event.DeleteChara(8)
			event.DeleteChara(9)
			event.DeleteChara(10)
			event.DeleteChara(11)
			event.SphidaSetPlayFlag(0)
			var1 = event.SndLoadSound_3(8, "snd2/sp/sp_000.sound.json") or var1
			event.StopBgm(0)
			event.SndSePlay(var1, 0)
			event.CharaActive(1, 0)
			event.SetFcameraFollowFlag(0)
			event.SetCameraCtrl(0)
			event.CmrsInit()
			event.CmrsSyncObj(0, 0.0, 15.0, 0.0, 0.0, 0.0, 80.0, "", 1)
			event.ObjsSetMotion(0, "カップインポーズ", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "カップインポーズL", 4)
			event.ObjsResetDaPosition(0)
			var42 = event.GetLanguage() or var42
			if var42 == 0 then
				event.SpriteInit(0)
				event.SpriteSetType(0, 0)
				event.SpriteSetTexture(0, "sphida_bar", tex_bank)
				event.SpriteSetUvsize(0, 258, 0, 254, 54)
				event.SpriteSetPos(0, 256, 208)
				event.SpriteSetPutsize(0, 254, 54)
				event.SpriteSetColor(0, 128, 128, 128, 0)
				event.SpriteSetScale(0, 5.0, 5.0)
				event.SpriteSetDraw(0, 1)
			else
				event.SpriteInit(0)
				event.SpriteSetType(0, 0)
				event.SpriteSetTexture(0, "sphida_bar", tex_bank)
				event.SpriteSetUvsize(0, 206, 0, 306, 54)
				event.SpriteSetPos(0, 256, 208)
				event.SpriteSetPutsize(0, 254, 54)
				event.SpriteSetColor(0, 128, 128, 128, 0)
				event.SpriteSetScale(0, 5.0, 5.0)
				event.SpriteSetDraw(0, 1)
			end
			event.EohSyncSprite(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.ObjsSetScale(1, 1.0, 1.0, 0.0, 60)
			event.ObjsSetColor(1, 128, 128, 128, 128, 60)
			wait_objects(0)
			wait_frames(90)
			vm.wait(22)
			event.PlayBgm(0)
			event.CmrsReleaseObj()
			event.SpriteSetDraw(0, 0)
		elseif count >= 2 then
			event.SetMesWindowMode(0, 5)
			event.SetMesQuestionGyou(0, 0)
			var57 = helper_bac0e30d(0, 2002, 8, 256, 208, 2, 0)
			vm.wait(24)
			if var57 == 0 then
				do
					local out1, out2, out3, out4 = event.GetPartsFuncPos(var2, var3, var4, 100.0, "point")
					var41 = out1 or var41
					var8 = out2 or var8
					var9 = out3 or var9
					var10 = out4 or var10
				end
				if var41 == 0 then
					do
						local out1, out2, out3 = event.GetPartsOrigin(var2, var3, var4, 100.0)
						var8 = out1 or var8
						var9 = out2 or var9
						var10 = out3 or var10
					end
				end
				do
					local out1, out2, out3 = event.SphidaGetPinPos()
					pos_x = out1 or pos_x
					pos_y = out2 or pos_y
					pos_z = out3 or pos_z
				end
				var25 = event.DistVector2(var8, var9, var10, pos_x, pos_y, pos_z) or var25
				if var25 < 40.0 then
					var11 = event.GetRand(6.2831855) or var11
					var11 = vm.f32(var11 - vm.f32(3.1415927))
					var8 = vm.f32(var8 + vm.f32(vm.sin(var11) * 50.0))
					var10 = vm.f32(var10 + vm.f32(vm.cos(var11) * 50.0))
				else
					do
						local out1, out2, out3, out4 = event.GetNearTboxPos(var8, var9, var10)
						var30 = out1 or var30
						var31 = out2 or var31
						var32 = out3 or var32
						var41 = out4 or var41
					end
					var46 = 0
					while var41 >= 0 do
						do
							local out1, out2, out3 = event.CopyVector(var8, var9, var10)
							var18 = out1 or var18
							var19 = out2 or var19
							var20 = out3 or var20
						end
						do
							local out1, out2, out3 = event.SubVector(var18, var19, var20, var30, var31, var32)
							var18 = out1 or var18
							var19 = out2 or var19
							var20 = out3 or var20
						end
						var18 = vm.f32(var18 + 1.0)
						var20 = vm.f32(var20 + 1.0)
						do
							local out1, out2, out3 = event.NormalVector(var18, var19, var20)
							var18 = out1 or var18
							var19 = out2 or var19
							var20 = out3 or var20
						end
						do
							local out1, out2, out3 = event.ScaleVector(var18, var19, var20, 30.1)
							var18 = out1 or var18
							var19 = out2 or var19
							var20 = out3 or var20
						end
						do
							local out1, out2, out3 = event.CopyVector(var30, var31, var32)
							var8 = out1 or var8
							var9 = out2 or var9
							var10 = out3 or var10
						end
						do
							local out1, out2, out3 = event.AddVector(var8, var9, var10, var18, var19, var20)
							var8 = out1 or var8
							var9 = out2 or var9
							var10 = out3 or var10
						end
						var46 = var46 + 1
						if var46 > 6 then
							break
						end
						do
							local out1, out2, out3, out4 = event.GetNearTboxPos(var8, var9, var10)
							var30 = out1 or var30
							var31 = out2 or var31
							var32 = out3 or var32
							var41 = out4 or var41
						end
					end
				end
				var6 = event.GetRefAngle(var8, var9, var10, var2, var3, var4) or var6
				event.SetCharaPos(0, var8, var9, var10)
				event.SetCharaRot(0, 0.0, var6, 0.0)
				event.SetCameraRef(var8, var9 + 30.0, var10)
				var6 = vm.f32(var6 - vm.f32(3.1415927))
				var6 = event.AngleLimit(var6) or var6
				var8 = vm.f32(vm.f32(vm.sin(var6) * 100.0) + var8)
				var9 = vm.f32(var9 + 30.0)
				var10 = vm.f32(vm.f32(vm.cos(var6) * 100.0) + var10)
				event.SetCameraPos(var8, var9, var10)
				event.ResetCamera(0)
			end
		end
	else
		event.SndSePlay(var1, 18)
		event.SetFcameraFollowFlag(0)
		event.SetCameraCtrl(0)
		event.CmrsInit()
		event.CmrsSyncObj(0, 0.0, 15.0, 0.0, 0.0, 0.0, 80.0, "", 1)
		event.ObjsSetMotion(0, "だめだめ", 6)
		event.ObjsNormalDrive(0)
		event.ObjsNextMotion(0, "立ち", 4)
		event.ObjsResetDaPosition(0)
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "sphida_bar", tex_bank)
		event.SpriteSetUvsize(0, 334, 54, 178, 34)
		event.SpriteSetPos(0, 256, -25)
		event.SpriteSetPutsize(0, 160, 50)
		event.SpriteSetColor(0, 128, 128, 128, 128)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(1, 0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 1.2, 16)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 2.0, 12)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 1.5, 8)
		wait_objects(0)
		wait_frames(20)
		event.SpriteSetDraw(0, 0)
		event.SphidaSetBallPos(var8, var9, var10)
		event.SetCharaPos(8, var8, var9, var10)
		event.SetCharaPos(9, var8, var9, var10)
		event.CmrsReleaseObj()
	end
	if var21 == 1 then
		helper_f90045b0(-1)
	else
		helper_f90045b0(var1)
	end
	helper_03a1d6f1(var21)
end

--- The Sphida event run when the menu button is pressed near the ball.
function script.sphida_near_ball()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	event.Initialize()
	helper_ce85b54c()
	event.SetMesWindowMode(0, 5)
	event.SetMesQuestionGyou(0, 0)
	var0 = helper_bac0e30d(0, 2004, 8, 0, 0, 2, 1)
	if var0 == 0 then
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		event.SphidaSetBallPos(var1, var2 + 3.0, var3)
		event.SetCharaPos(8, var1, var2 + 3.0, var3)
		event.SetCharaPos(9, var1, var2 + 3.0, var3)
		helper_f90045b0(-1)
		event.SetCrossfade(15)
	end
	vm.wait(2)
	event.Finish()
end

--- The Sphida event run when the menu button is pressed near the ball with fewer than two shots of par left.
function script.sphida_near_ball_last()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	event.Initialize()
	helper_ce85b54c()
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(0, "C'est la derni[UNI00e8]re fois que tu\npeux amener la sph[UNI00e8]re [UNI00e0] toi.")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 5)
	event.SetMesQuestionGyou(0, 0)
	event.MesMake_2(0, "Amener la sph[UNI00e8]re jusqu'[UNI00e0] toi ?")
	var0 = helper_bac0e30d(0, -1, 8, 0, 0, 2, 1)
	if var0 == 0 then
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		event.SphidaSetBallPos(var1, var2 + 3.0, var3)
		event.SetCharaPos(8, var1, var2 + 3.0, var3)
		event.SetCharaPos(9, var1, var2 + 3.0, var3)
		event.SphidaSetLastChallenge(1)
		event.SetCrossfade(15)
	end
	vm.wait(3)
	event.Finish()
end

--- Event 5000, which map data, a script or the engine runs by number.
function script.event_5000()
	event.Initialize()
	event.SetFadeOut(0)
	event.SetActiveChrNo(0)
	event.BgmLoadCancel()
	event.SetFlag(10, 0)
	event.LoadDungeonMapFile("d01b01")
	event.LoadScript("d01b01/d01b01.stb", 500)
	vm.wait(1)
end

--- Event 10030, which map data, a script or the engine runs by number.
function script.event_10030()
	helper_b2cb6e46()
	event.BgmLoadCancel()
	event.SoundLoadCancel()
	event.LoadDungeonMapFile("s43")
	event.LoadScript("s43/s43.stb", 8000)
end

--- Event 10040, which map data, a script or the engine runs by number.
function script.event_10040()
	helper_b2cb6e46()
	event.BgmLoadCancel()
	event.SoundLoadCancel()
	event.LoadDungeonMapFile("s43")
	event.LoadScript("s43/s43.stb", 8001)
end

--- Event 10050, which map data, a script or the engine runs by number.
function script.event_10050()
	helper_b2cb6e46()
	event.BgmLoadCancel()
	event.SoundLoadCancel()
	event.LoadDungeonMapFile("s43")
	event.LoadScript("s43/s43.stb", 8002)
end

--- Event 10500, which map data, a script or the engine runs by number.
function script.event_10500()
	helper_b2cb6e46()
	event.StopBgm(0)
	event.BgmLoadCancel()
	event.SoundLoadCancel()
	event.LoadDungeonMapFile("s51")
	event.LoadScript("s51/s51.stb", 10500)
end

--- Event 11000, which map data, a script or the engine runs by number.
function script.event_11000()
	local at: number = 0
	return vm.guard(function()
		at = 1
		helper_b2cb6e46()
		event.LoadDungeonMapFile("d01f01", "d01f01")
		at = 2
		helper_3a598()
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_3a598()
				return vm.continue_with(function()
					event.Finish()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 11030, which map data, a script or the engine runs by number.
function script.event_11030()
	event.SetSavedataEtc(0, 3)
	helper_b2cb6e46()
	event.LoadDungeonMapFile("s06")
	vm.wait(2)
	event.LoadScript("s06/s06b_1.stb", 500)
end

--- Event 11040, which map data, a script or the engine runs by number.
function script.event_11040()
	event.SetSavedataEtc(0, 3)
	helper_b2cb6e46()
	event.LoadDungeonMapFile("s06")
	vm.wait(2)
	event.LoadScript("s06/s06c_1.stb", 500)
end

--- Event 11070, which map data, a script or the engine runs by number.
function script.event_11070()
	event.SetSavedataEtc(0, 3)
	helper_b2cb6e46()
	event.LoadDungeonMapFile("s06")
	vm.wait(2)
	event.LoadScript("s06/s06b_1.stb", 510)
end

--- Event 11081, which map data, a script or the engine runs by number.
function script.event_11081()
	event.SetSavedataEtc(0, 3)
	helper_b2cb6e46()
	event.LoadDungeonMapFile("s06")
	vm.wait(2)
	event.LoadScript("s06/s06_1.stb", 11081)
end

--- Event 11082, which map data, a script or the engine runs by number.
function script.event_11082()
	event.SetSavedataEtc(0, 3)
	helper_b2cb6e46()
	event.LoadDungeonMapFile("s06")
	vm.wait(2)
	event.LoadScript("s06/s06_1.stb", 11082)
end

--- Event 11100, which map data, a script or the engine runs by number.
function script.event_11100()
	helper_b2cb6e46()
	event.SetFlag(10, 0)
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("d01b01")
	event.LoadScript("d01b01/d01b01.stb", 500)
	event.Finish()
end

--- Event 11110, which map data, a script or the engine runs by number.
function script.event_11110()
	helper_b2cb6e46()
	event.LoadDungeonMapFile("d01b01")
	event.LoadScript("d01b01/d01b01.stb", 600)
	event.Finish()
end

--- Event 21010, which map data, a script or the engine runs by number.
function script.event_21010()
	helper_b2cb6e46()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("s06")
	event.LoadScript("s06/s06_1.stb", 21010)
	event.Finish()
end

--- Event 21020, which map data, a script or the engine runs by number.
function script.event_21020()
	helper_b2cb6e46()
	event.BgmLoadCancel()
	event.LoadDungeonMapFile("d01b01")
	event.LoadScript("d01b01/d01b01.stb", 21020)
	event.Finish()
end

return script
