--!strict
-- map/d/d01/e01/d01e01_3.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_01df4541 = require("@lib/event/helper_01df4541")
local helper_0e75aa9e = require("@lib/event/helper_0e75aa9e")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_3e3b0d3f = require("@lib/event/helper_3e3b0d3f")
local helper_68ec7c8d = require("@lib/event/helper_68ec7c8d")
local helper_6955414c = require("@lib/event/helper_6955414c")
local helper_87adbdbf = require("@lib/event/helper_87adbdbf")
local helper_8ab07f4b = require("@lib/event/helper_8ab07f4b")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_a87eb945 = require("@lib/event/helper_a87eb945")
local helper_aaaef248 = require("@lib/event/helper_aaaef248")
local helper_ac02d4a5 = require("@lib/event/helper_ac02d4a5")
local helper_ad047ca5 = require("@lib/event/helper_ad047ca5")
local helper_be16759c = require("@lib/event/helper_be16759c")
local helper_c0be7979 = require("@lib/event/helper_c0be7979")
local helper_d05dd9db = require("@lib/event/helper_d05dd9db")
local helper_f38eabca = require("@lib/event/helper_f38eabca")
local helper_f57795f8 = require("@lib/event/helper_f57795f8")
local helper_f8bbcc57 = require("@lib/event/helper_f8bbcc57")
local helper_fe0f3321 = require("@lib/event/helper_fe0f3321")
local open_message = require("@lib/event/open_message")
local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_3da04()
	local var0: s32 = 0
	local var1: s32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFadeOut(30)
		wait_frames(30)
		event.Initialize()
		event.InitDramaScene()
		set_window_mode(0, 7)
		event.SetProjection(618.0)
		event.AssignStack(5)
		event.ClearStack(5)
		var0 = event.SndLoadSound_2(1800) or var0
		var1 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var1
		event.LoadMes(0, 5, "event/opening/p6/op6_1.txt")
		event.DelImg(0)
		block = event.LoadImg_4(5, "textures/event/opening/p6/op06.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "op0601", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetAlphab(0, 0)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(10, 0)
		event.ObjsInit(10)
		event.ObjsSyncObj(10, 10)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "op0602", block)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetAlphab(1, 0)
		event.SpriteSetDraw(1, 0)
		event.EohSyncSprite(11, 1)
		event.ObjsInit(11)
		event.ObjsSyncObj(11, 11)
		event.SpriteInit(2)
		event.SpriteSetType(2, 0)
		event.SpriteSetTexture(2, "op0603", block)
		event.SpriteSetColor(2, 128, 128, 128, 0)
		event.SpriteSetUvsize(2, 0, 0, 512, 448)
		event.SpriteSetPutsize(2, 512, 448)
		event.SpriteSetPos(2, 256, 224)
		event.SpriteSetAlphab(2, 0)
		event.SpriteSetDraw(2, 0)
		event.EohSyncSprite(12, 2)
		event.ObjsInit(12)
		event.ObjsSyncObj(12, 12)
		event.DelExtMotion(0)
		event.LoadMotion(5, "event/opening/p6/p6_mints.gltf", "info", 0)
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 3)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 103.83, 104.0, 195.7)
		event.ObjsSetRot(0, 0.0, 0.85, 0.0)
		event.ObjsSetMotion(0, "考えポーズL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "考える目")
		event.ObjsTexAnime(0, 1, "考える口")
		event.CharaActive(8)
		event.EohSyncChara(1, 8)
		event.EohSetFootSoundId(1, 3)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, 124.7, 104.0, 183.68)
		event.ObjsSetRot(1, 0.0, 0.85, 0.0)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "口閉じ")
		event.LoadItem(5, 1, "info", 10)
		event.CharaActive(0, 10)
		event.SetReference(0, "ef00", 10)
		event.LoadItem(5, 22, "info", 11)
		event.CharaActive(0, 11)
		event.SetReference(8, "donnie_gun", 11)
		event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 12)
		event.CharaActive(0, 12)
		event.EohSyncChara(2, 12)
		event.ObjsSyncObj(2, 2)
		event.ObjsSetPos(2, 110.0, 135.89, 193.52)
		event.ObjsSetRot(2, 0.0, 0.6, 0.0)
		event.ObjsSetMotion(2, "発動", 5)
		event.LoadItem(5, 359, "info", 13)
		event.SetCharaPos(13, 0.0, 0.0, 0.0)
		event.SetCharaRot(13, 0.0, 0.0, 0.0)
		event.CharaActive(0, 13)
		event.SetReference(8, "donnie_receiver", 13)
		event.CmrsInit()
		event.CmrsFadeInit()
		event.CmrsFadeIn(30)
		event.CmrsSetPos(103.9, 126.98, 225.65)
		event.CmrsSetRef(112.72, 126.94, 179.57)
		event.ObjsSetMotion(0, "ななめ前を見る", 6)
		event.ObjsNextMotion(0, "ななめ前を見るL", 4)
		event.ObjsSetMotion(1, "ミンツを見る", 2)
		event.ObjsNextMotion(1, "ミンツを見るL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "真剣目")
		vm.wait(3)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60210, -1, 10)
		event.ResetPakuAnim()
		wait_objects(0)
		event.ObjsSetPos(0, 103.83, -100.0, 195.7)
		event.CmrsSetPos(112.75, 131.05, 198.49)
		event.CmrsSetRef(163.01, 122.54, 302.27)
		event.CmrsMove(112.75, 131.05, 198.49, 87.37, 110.42, 341.57, 180)
		helper_1584c528(60220, 80)
		helper_1584c528(60230, 70)
		wait_camera()
		event.CmrsSetPos(124.82, 125.36, 251.04)
		event.CmrsSetRef(105.61, 114.01, 150.82)
		event.ObjsSetPos(0, 103.83, 104.0, 195.7)
		event.ObjsSetMotion(0, "考えポーズ", 6, -1.0, 1)
		event.ObjsNextMotion(0, "考えポーズL", 4)
		wait_frames(60)
		event.ObjsSetMotion(1, "ミンツを見る会話", 2)
		event.ObjsNextMotion(1, "ミンツを見るL", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60240, -1, 10)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60250, -1, 10)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60260, -1, 10)
		event.ObjsSetMotion(0, "ドニーを見る", 2)
		event.ObjsNextMotion(0, "ドニーを見るL", 4)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60270, -1, 10)
		event.ObjsSetMotion(1, "ミンツを見る会話", 2)
		event.ObjsNextMotion(1, "ミンツを見るL", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60280, -1, 10)
		event.ObjsMotionWait(0)
		event.ObjsSetMotion(0, "ドニーを見る会話", 2)
		event.ObjsNextMotion(0, "ドニーを見るL", 4)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60290, -1, 10)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(10, 128, 128, 128, 128, 30)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60300, -1, 10)
		event.ResetPakuAnim()
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60305, -1, 10)
		event.ResetPakuAnim()
		event.ObjsSetColor(10, 128, 128, 128, 0, 30)
		event.ObjsSetMotion(0, "考えポーズL", 4)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60310, -1, 10)
		event.SpriteSetDraw(0, 0)
		wait_objects(0)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60320, -1, 10)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60330, -1, 10)
		event.SpriteSetDraw(1, 1)
		event.ObjsSetColor(11, 128, 128, 128, 128, 30)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60340, -1, 10)
		event.ObjsSetColor(11, 128, 128, 128, 0, 30)
		event.SpriteSetDraw(2, 1)
		event.ObjsSetColor(12, 128, 128, 128, 128, 30)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60350, -1, 10)
		event.ObjsSetColor(12, 128, 128, 128, 0, 30)
		wait_frames(30)
		event.SpriteSetDraw(2, 0)
		event.ObjsSetMotion(1, "ミンツを見る戻り", 6)
		event.ObjsNextMotion(1, "立ち")
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60360, -1, 10)
		wait_objects(1)
		event.ObjsSetMotion(0, "左を向く", 2)
		event.ObjsNextMotion(0, "左を向くL")
		event.ObjsSeDelay(0, 10)
		event.ObjsSePlay(0, var0, 10)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60370, -1, 10)
		wait_objects(0)
		event.ObjsSetMotion(1, "ミンツを見る", 2)
		event.ObjsNextMotion(1, "ミンツを見るL", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60380, -1, 10)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60385, -1, 10)
		wait_objects(1)
		event.ObjsSetMotion(0, "うなづく", 6)
		event.ObjsMotionWait(0)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60390, -1, 10)
		wait_objects(0)
		event.ObjsSetMotion(1, "ミンツを見る会話", 2)
		event.ObjsNextMotion(1, "ミンツを見るL", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60400, -1, 10)
		event.ObjsSetMotion(1, "ミンツを見るL")
		event.ObjsSetMotion(0, "工具を出す", 2)
		event.ObjsNextMotion(0, "工具を出すL", 6)
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "武器おろし", 6)
		event.ObjsNextMotion(0, "武器おろしL", 4)
		event.ObjsSePlay(0, var0, 11)
		wait_frames(10)
		event.CharaActive(10)
		event.ObjsTexaDelay(1, 25)
		event.ObjsTexAnime(1, 1, "イィッ")
		event.ObjsTexAnime(0, 0, "真剣口")
		vm.wait(36)
		event.SetPakuAnim(0, "通常口パク", "得意口")
		helper_0e75aa9e(60410, -1, 10)
		wait_objects(0)
		event.ObjsTexAnime(0, 0, "得意口")
		event.ObjsTexAnime(0, 1, "真剣口")
		event.ObjsTexAnime(1, 0, "イィッ")
		wait_frames(20)
		event.ObjsSetMotion(1, "ミンツを見る会話", 2)
		event.ObjsNextMotion(1, "ミンツを見るL", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60430, -1, 10)
		event.ObjsSetMotion(1, "ミンツを見る戻り", 6)
		event.ObjsMotionWait(1)
		wait_objects(1)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMove(1, 112.5, 104.0, 138.09, 25)
		event.ObjsRotation(1, 0.0, -2.91, 0.0, 10)
		wait_frames(15)
		wait_objects(1)
		event.EohSetFootSoundId(1, 2)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 120)
		event.ObjsAddPas(1, 112.5, 104.0, 138.09)
		event.ObjsAddPas(1, 101.97, 104.0, 102.83)
		event.ObjsAddPas(1, 89.86, 104.0, 69.5)
		event.ObjsAddPas(1, 68.34, 104.0, 21.46)
		event.ObjsAddPas(1, 31.72, 104.0, -50.16)
		event.ObjsAddPas(1, 5.79, 104.0, -85.32)
		event.ObjsAddPas(1, -6.62, 104.0, -126.94)
		event.ObjsAddPas(1, 2.98, 104.0, -174.2)
		event.ObjsAddPas(1, 8.78, 104.0, -191.0)
		event.ObjsAddPas(1, 10.66, 104.0, -225.67)
		event.ObjsStartPas(1)
		event.ObjsSetMotion(0, "後ろを向く", 2)
		wait_frames(80)
		wait_frames(20)
		wait_objects(0)
		wait_objects(1)
		event.SetCrossfade(60)
		event.ObjsSetMotion(0, "待ちくたびれ", 4, -1, 1)
		event.CharaActive(11)
		event.CharaActive(0, 10)
		event.CmrsSetPos(140.01, 119.16, 248.76)
		event.CmrsSetRef(99.95, 120.89, 177.35)
		event.ObjsSetRot(0, 0.0, 0.73, 0.0)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 120)
		event.ObjsAddPas(1, 10.66, 104.0, -225.67)
		event.ObjsAddPas(1, 8.78, 104.0, -191.0)
		event.ObjsAddPas(1, 2.98, 104.0, -174.2)
		event.ObjsAddPas(1, -6.62, 104.0, -126.94)
		event.ObjsAddPas(1, 5.79, 104.0, -85.32)
		event.ObjsAddPas(1, 31.72, 104.0, -50.16)
		event.ObjsAddPas(1, 68.34, 104.0, 21.46)
		event.ObjsAddPas(1, 89.86, 104.0, 69.5)
		event.ObjsAddPas(1, 101.97, 104.0, 102.83)
		event.ObjsAddPas(1, 112.5, 104.0, 138.09)
		event.ObjsStartPas(1)
		wait_frames(100)
		event.EohSetFootSoundId(1, 3)
		wait_objects(1)
		event.ObjsMove(1, 114.43, 104.0, 184.04, 25)
		event.ObjsRotation(1, 0.0, -0.78, 0.0, 25)
		wait_objects(1)
		event.ObjsSetMotion(1, "立ち", 2)
		event.ObjsNextMotion(1, "銃を渡す", 6)
		event.ObjsMotionWait(1)
		event.ObjsSeDelay(1, 60)
		event.ObjsSePlay(1, var0, 12)
		event.ObjsSetMotion(0, "右向け右", 6)
		event.ObjsNextMotion(0, "右向け右L", 4)
		wait_objects(1)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60450, -1, 10)
		wait_objects(0)
		event.ObjsSetMotion(0, "銃を受け取る", 2)
		event.ObjsMotionDelay(0, 1)
		event.ObjsNextMotion(0, "銃を受け取るL", 6)
		event.ObjsNextMotion(0, "銃を受け取るL2", 4)
		event.ObjsSeDelay(0, 12)
		event.ObjsSePlay(0, var0, 13)
		wait_frames(20)
		event.DelReference(11)
		event.SetReference(0, "gun_hand", 11)
		wait_frames(20)
		event.ObjsSetMotion(1, "銃を渡す戻り", 6)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60460, -1, 10)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60470, -1, 10)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60475, -1, 10)
		wait_objects(0)
		event.ObjsSetMotion(0, "すごいよ", 6)
		event.ObjsNextMotion(0, "すごいよL", 4)
		event.ObjsTexAnime(0, 0, "真剣口")
		vm.wait(60)
		event.SetPakuAnim(0, "通常口パク", "得意口")
		helper_0e75aa9e(60480, -1, 10)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60490, -1, 10)
		event.ObjsSetMotion(1, "立ち")
		event.SetPakuAnim(0, "通常口パク", "得意口")
		helper_0e75aa9e(60500, -1, 10)
		wait_camera()
		wait_objects(0)
		event.ObjsSetPos(1, 0.0, 0.0, 0.0)
		event.CmrsSetPos(136.41, 122.25, 229.2)
		event.CmrsSetRef(102.5, 130.77, 197.18)
		event.CmrsMove(123.15, 123.01, 222.97, 110.99, 134.65, 195.81, 120)
		event.SetBgmVol(0)
		event.SndSePlay(var1, 0)
		event.ObjsSetMotion(0, "銃を掲げる", 6, -1.0, 1)
		event.ObjsNextMotion(0, "銃を掲げるL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsSePlay(0, var0, 14)
		event.ObjsSeDelay(0, 30)
		event.ObjsSePlay(0, var0, 15)
		event.CharaActive(1, 12)
		event.ObjsSetMotion(2, "発動", 6)
		event.ObjsMotionWait(2)
		wait_objects(2)
		event.CharaActive(0, 12)
		helper_f38eabca(22, 1)
		set_window_mode(0, 4)
		event.MesMake_2(
			0,
			"[(!)] Mit [l1] gehst du in Position \n   und greifst mit (O) an.\n   Aber wenn du zu weit weg stehst,\n   sind deine Angriffe weniger wirksam."
		)
		show_message(0, -1, 8, 0, 0)
		set_window_mode(0, 7)
		event.SetMesDrawspeed(0, 0)
		wait_objects(0)
		event.SetBgmVol(-1)
		event.ObjsTexAnime(0, 1, "真剣目")
		event.ObjsTexAnime(0, 1, "真剣口")
		event.CharaActive(0, 12)
		event.CharaActive(0, 11)
		event.CmrsSetPos(140.01, 119.16, 248.76)
		event.CmrsSetRef(99.95, 120.89, 177.35)
		event.CharaActive(1, 13)
		event.ObjsSetPos(1, 114.41, 103.98, 185.73)
		event.ObjsSetMotion(0, "右向け右L", 4)
		event.ObjsNormalDrive(0)
		event.ObjsResetDaPosition(0)
		event.SndSePlay(var0, 18)
		event.ObjsSetMotion(1, "レシーバーをあげる", 6)
		event.ObjsNextMotion(1, "レシーバーをあげるL", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60510, -1, 10)
		wait_objects(1)
		event.ObjsSetMotion(0, "レシーバーをもらう", 6)
		event.ObjsNextMotion(0, "レシーバーをもらうL", 4)
		wait_frames(14)
		event.SndSePlay(var0, 19)
		wait_objects(0)
		event.DelReference(13)
		event.SetReference(0, "ef00", 13)
		event.ObjsSetMotion(0, "レシーバーを下ろす", 6)
		event.ObjsNextMotion(0, "レシーバーを下ろすL", 4)
		event.ObjsSetMotion(1, "レシーバーをあげる戻り", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60520, -1, 10)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60530, -1, 10)
		helper_f38eabca(359, 1)
		event.CharaActive(0, 13)
		event.CmrsSetPos(0.0, 174.49, 49.35)
		event.CmrsSetRef(0.0, 126.26, 245.83)
		event.ObjsSetPos(0, 0.0, 48.0, 267.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetPos(1, 24.15, 104.0, 216.41)
		event.ObjsSetRot(1, 0.0, -0.2, 0.0)
		event.ObjsSetMotion(0, "はしご上立ち", 4)
		event.ObjsNormalDrive(0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60540, -1, 10)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60550, -1, 10)
		event.CmrsSetPos(-104.06, 146.74, 477.55)
		event.CmrsSetRef(16.01, 86.26, 244.13)
		event.ObjsSePlay(0, var0, 16)
		event.ObjsSeDelay(0, 30)
		event.ObjsSePlay(0, var0, 17)
		event.ObjsSetMotion(0, "飛び降りる", 6)
		event.ObjsMotionWait(0)
		wait_objects(0)
		event.CmrsSetPos(-45.88, 52.01, 341.35)
		event.CmrsSetRef(16.98, 101.86, 233.55)
		event.ObjsSetPos(1, 7.1, 104.0, 227.78)
		event.ObjsSetRot(1, 0.0, -0.08, 0.0)
		event.ObjsSetMotion(1, "下を見るL", 4)
		event.ObjsSetMotion(0, "振り返る", 6)
		event.ObjsMotionWait(0)
		event.SetPakuAnim(0, "通常口パク", "真剣口")
		helper_0e75aa9e(60560, -1, 10)
		wait_objects(0)
		event.ObjsSetMotion(0, "振り返る戻り", 6)
		event.ObjsMotionWait(0)
		wait_objects(0)
		event.ObjsSetMotion(0, "走り2")
		event.ObjsMove(0, 0.0, 48.0, 600.0, 140)
		event.ObjsMotionDelay(1, 120)
		event.ObjsSetMotion(1, "下を見る会話")
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_1584c528(60570, 200)
		event.CmrsSetPos(-15.79, 151.18, 139.2)
		event.CmrsSetRef(4.88, 115.54, 302.4)
		event.ObjsSetPos(0, 0.0, 48.0, 400.0)
		event.ObjsMove(0, 0.0, 48.0, 600.0, 60)
		helper_1584c528(60580, 50)
		wait_objects(0)
		event.CmrsSetPos(0.0, 61.0, 700.0)
		event.CmrsSetRef(0.0, 29.0, 850.0)
		event.EohSetFootSoundId(0, 15)
		event.ObjsSetPos(0, 0.0, 0.0, 750.0)
		event.ObjsMove(0, 0.0, 0.0, 830.0, 30)
		event.ObjsResetDaPosition(0)
		wait_objects(0)
		event.ObjsSetMotion(0, "旧・立ち")
		wait_frames(30)
		event.SetCrossfade(30)
		event.CmrsSetPos(-2.62, 29.33, 799.72)
		event.CmrsSetRef(-2.62, 22.33, 827.0)
		event.ObjsSetMotion(0, "心配ないさ", 2)
		event.ObjsNextMotion(0, "心配ないさL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目パチ")
		vm.wait(88)
		event.SetPakuAnim(0, "通常口パク")
		helper_0e75aa9e(60590, -1, 10)
		event.SetPakuAnim(0, "通常口パク")
		helper_0e75aa9e(60595, -1, 10)
		wait_objects(0)
		event.ObjsSetMotion(0, "心配ないさ戻り", 2)
		event.ObjsNextMotion(0, "旧･立ち", 4)
		wait_objects(0)
		wait_frames(6)
		event.ObjsMove(0, 0.0, 0.0, 1230.0, 120)
		event.ObjsSetMotion(0, "走り2")
		event.CmrsMove(-2.62, 26.75, 843.0, -2.62, 24.35, 939.2, 120)
		event.EohSetFootSoundId(0, 15)
		wait_frames(14)
		event.EohSetFootSoundId(0, 2)
		wait_frames(76)
		event.FadeOutBgm(30)
		event.CmrsFadeInit()
		event.CmrsFadeOut(30)
		wait_camera()
	end)
	vm.entry(97)
	event.CancelDramaScene()
	event.StreamClose(1)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.CharaActive(0)
	event.EohSetFootSoundId(0, 0)
end

--- Helper function.
local function helper_44dfc()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var7: f32 = 0
	local yaw: f32 = 0
	local yaw_2: f32 = 0
	local var11: s32 = 0
	local var12: any = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		set_window_mode(0, 7)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncChara(1, 8)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var0 = out1 or var0
			var1 = out2 or var1
			var2 = out3 or var2
		end
		do
			local _, out2, _ = event.GetCharaRot(0)
			var7 = out2 or var7
		end
		do
			local out1, out2, out3 = event.GetCharaPos(8)
			var3 = out1 or var3
			var4 = out2 or var4
			var5 = out3 or var5
		end
		yaw = event.GetRefAngle(var0, var1, var2, var3, var4, var5) or yaw
		yaw_2 = event.GetRefAngle(var3, var4, var5, var0, var1, var2) or yaw_2
		var11 = event.AngleCmp(var7, yaw, 0.1) or var11
		if var11 ~= 0 then
			event.ObjsRotation(0, 0.0, yaw, 0.0, 10)
			event.ObjsSetMotion(0, "歩き")
			event.ObjsMotionDelay(0, 10)
		end
		event.ObjsSetMotion(0, "立ち")
		event.ObjsRotation(1, 0.0, yaw_2, 0.0, 10)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMotionDelay(1, 10)
		event.ObjsSetMotion(1, "立ち")
		at = 1
		wait_frames(20)
		event.StreamOpen3(1, 60180)
		at = 2
		helper_9cbdc640(1)
		event.StreamPlay(1)
		event.MesMake_2(0, "Und was machst du jetzt?")
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち")
		at = 3
		helper_0ffc2526(0, -1, 8, 0, 0)
		event.StreamClose(1)
		set_window_mode(0, 1)
		event.SetMesShippo(0, 0)
		event.SetMesQuestionGyou(0, 0)
		event.MesMake_2(0, "Ich werde mich hier verstecken.\nUnterirdischer Kanal ... ...")
		at = 4
		var12 = helper_ac02d4a5(0, -1, 5, 256, 208, 2, 0)
		set_window_mode(0, 7)
		event.SetMesShippo(0, 1)
		if var12 == 1 then
			event.StreamClose(1)
			at = 5
			helper_3da04()
			return 1
		else
			event.StreamOpen3(1, 60190)
			at = 6
			helper_9cbdc640(1)
			event.StreamPlay(1)
			event.MesMake_2(0, "Ich werde mich hier verstecken.")
			at = 7
			helper_0ffc2526(0, -1, 0, 8, 0)
			event.StreamClose(1)
			event.StreamOpen3(1, 60200)
			at = 8
			helper_9cbdc640(1)
			event.StreamPlay(1)
			event.MesMake_2(0, "Bleib solang du willst.")
			at = 9
			helper_0ffc2526(0, -1, 8, 0, 0)
			event.StreamClose(1)
		end
		event.ObjsRotation(1, 0.0, 0.85, 0.0, 10)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMotionDelay(1, 10)
		event.ObjsSetMotion(1, "立ち")
		at = 10
		wait_frames(11)
		return 0
	end, function(received: { any })
		if at <= 5 then
			if at == 4 then
				var12 = received[1] :: number
			end
			if at <= 1 then
				helper_238b5abc(1)
			end
			if at <= 2 then
				helper_be16759c(0, -1, 8, 0, 0)
			end
			if at <= 3 then
				helper_8ab07f4b(0, 1)
				var12 = helper_f8bbcc57(0, -1, 5, 256, 208, 2, 0)
			end
			if at <= 4 then
				helper_8ab07f4b(0, 7)
				at = 5
				helper_3da04()
				return vm.continue_with(function()
					return 1
				end)
			end
			return 1
		end
		if at <= 10 then
			if at <= 6 then
				helper_be16759c(0, -1, 0, 8, 0)
			end
			if at <= 7 then
				helper_238b5abc(1)
			end
			if at <= 8 then
				helper_be16759c(0, -1, 8, 0, 0)
			end
			if at <= 9 then
				wait_frames_skipping(11)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_3a8c4()
	local var0: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		set_window_mode(0, 7)
		event.SetProjection(618.0)
		event.LoadSound(1800)
		event.StopBgm(0)
		wait_frames(6)
		event.LoadBgm(108)
		event.PlayBgm(0)
		event.InitDramaScene()
		var0 = event.SndLoadSound_2(1800) or var0
		helper_01df4541()
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadMes(0, 5, "event/opening/p6/op6_1.txt")
		event.DelExtMotion(0)
		event.LoadMotion(5, "event/opening/p6/p6_mints.gltf", "info", 0)
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 12)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, -464.39, 100.52, 0.0)
		event.ObjsSetRot(0, 0.0, -1.57, 0.0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "はあはあ目")
		event.ObjsTexAnime(0, 1, "はあはあ口")
		event.CharaActive(8)
		event.EohSyncChara(1, 8)
		event.EohSetFootSoundId(1, -1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, -443.0, 100.52, 8.0)
		event.ObjsSetRot(1, 0.0, -1.57, 0.0)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "口閉じ")
		event.StreamOpen3(1, 60005)
		helper_9cbdc640(1)
		event.ObjsSetMotion(0, "はしご降り", 6)
		event.ObjsSetMotion(1, "はしご降り", 6)
		event.ObjsSePlay(1, var0, 8)
		event.CmrsInit()
		event.CmrsSetPos(-173.98, 180.32, 173.33)
		event.CmrsSetRef(-478.87, 162.2, -4.22)
		event.CmrsFadeInit()
		event.CmrsFadeIn(60)
		wait_camera()
		event.ObjsSeDelay(1, 30)
		event.ObjsSePlay(1, var0, 9)
		wait_frames(16)
		event.StreamPlay(1)
		wait_frames(100)
		event.StreamClose(1)
		event.SetCrossfade(60)
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(1, 2)
		event.CmrsSetPos(-383.51, 121.05, 34.45)
		event.CmrsSetRef(-455.56, 111.89, -1.44)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetMotion(0, "はあはあL", 4, -1, 1)
		event.ObjsSetPos(0, -447.2, 100.52, -9.2)
		event.ObjsSetRot(0, 0.0, 0.47, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetPos(1, -434.79, 100.52, 18.22)
		event.ObjsSetRot(1, 0.0, -2.89, 0.0)
		wait_frames(20)
		helper_0e75aa9e(60010, -1, 10)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60020, -1, 10)
		event.ObjsSetMotion(1, "立ち")
		helper_0e75aa9e(60030, -1, 10)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "深呼吸目")
		event.ObjsTexAnime(0, 1, "深呼吸口")
		event.ObjsSetMotion(0, "深呼吸", 6)
		event.ObjsNextMotion(0, "立ち2", 4)
		wait_frames(50)
		event.ObjsTexAnime(0, 0, "深呼吸口")
		event.SetPakuAnim(0, "通常口パク", "デフォルト口")
		helper_0e75aa9e(60040, -1, 10)
		wait_objects(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目パチ")
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60050, -1, 10)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60055, -1, 10)
		event.ObjsSetMotion(0, "会話2", 2)
		event.ObjsNextMotion(0, "立ち2", 4)
		event.SetPakuAnim(0, "通常口パク", "デフォルト口")
		helper_0e75aa9e(60060, -1, 10)
		event.CmrsSetPos(-416.96, 123.15, -56.77)
		event.CmrsSetRef(-445.66, 113.41, 7.28)
		event.ObjsSetMotion(1, "指差し会話", 2)
		event.ObjsNextMotion(1, "立ち")
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60070, -1, 10)
		wait_objects(1)
		event.ObjsSetMotion(0, "会話2", 2)
		event.ObjsNextMotion(0, "立ち2", 4)
		helper_0e75aa9e(60080, -1, 10)
		helper_0e75aa9e(60090, -1, 10)
		helper_0e75aa9e(60095, -1, 10)
		event.ObjsSetMotion(0, "立ち2")
		event.ObjsSetMotion(1, "腰に手", 2)
		event.ObjsMotionWait(1)
		event.ObjsSetMotion(1, "腰に手L", 4)
		event.SetPakuAnim(1, "口パク", "口閉じ")
		helper_0e75aa9e(60100, -1, 10)
		wait_objects(1)
		event.CmrsSetPos(-306.09, 121.28, -6.32)
		event.CmrsSetRef(-334.81, 124.2, -6.72)
		event.ObjsMove(0, -334.72, 100.52, -7.62, 140)
		event.ObjsRotation(0, 0.0, 1.57, 0.0, 10)
		event.ObjsSetMotion(0, "きょろきょろ歩き", 2)
		event.ObjsNextMotion(0, "きょろきょろ歩き・上")
		event.ObjsSetMotion(1, "振り返る", 6)
		event.ObjsNextMotion(1, "振り返るL", 4)
		event.ObjsRotation(1, 0.0, -1.21, 0.0, 30)
		event.ObjsTexaDelay(0, 100)
		event.ObjsTexAnime(0, 0, "目パチ")
		event.ObjsTexAnime(0, 1, "上目")
		event.SetPakuAnim(0, "通常口パク", "ポカーン")
		helper_0e75aa9e(60110, -1, 10)
		wait_objects(0)
		event.ObjsSetMotion(0, "旧・立ち", 4)
		event.CmrsSetPos(-82.68, 160.58, 85.07)
		event.CmrsSetRef(-54.97, 205.76, 261.35)
		event.CmrsMove(-82.68, 160.58, 85.07, 60.21, 145.99, 192.66, 300)
		event.ObjsSetPos(0, 0.0, 0.0, 0.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetPos(1, 0.0, 0.0, 0.0)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		helper_1584c528(60120, 150)
		helper_1584c528(60130, 100)
		wait_camera()
		event.CmrsSetPos(393.03, 191.08, 62.48)
		event.CmrsSetRef(89.13, 151.44, 51.64)
		event.CmrsMove(393.03, 191.08, 62.48, 125.13, 148.6, -81.82, 300)
		helper_1584c528(60140, 140)
		helper_1584c528(60150, 120)
		wait_camera()
		event.CmrsSetPos(-316.41, 284.74, -17.35)
		event.CmrsSetRef(-8.6, 159.57, 242.62)
		event.CmrsMove(4.84, 184.71, 131.56, 106.14, 116.67, 193.96, 300)
		event.CmrsPrSlowing(0.96, 60)
		event.CmrsPrdelay(15)
		event.ObjsSetPos(0, -16.51, 104.0, 94.06)
		event.ObjsSetRot(0, 0.0, 0.85, 0.0)
		event.ObjsMove(0, 103.83, 104.0, 195.7, 200)
		event.ObjsSetMotion(0, "歩き", 4, -1, 1)
		event.ObjsMotionDelay(0, 200)
		event.ObjsSetMotion(0, "旧・立ち")
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsSetPos(1, -19.11, 104.0, 62.23)
		event.ObjsSetRot(1, 0.0, 0.85, 0.0)
		event.ObjsMove(1, 124.7, 104.0, 183.68, 230)
		event.ObjsMotionDelay(1, 230)
		event.ObjsSetMotion(1, "立ち")
		event.StreamOpen3(1, 60160)
		helper_9cbdc640(1)
		event.StreamPlay(1)
		event.MesMake_2(0, 60160)
		open_message(0, -1, 8, 0, 0)
		wait_frames(80)
		event.EohSetFootSoundId(0, 3)
		wait_frames(30)
		event.EohSetFootSoundId(1, 3)
		wait_frames(90)
		close_message(0)
		event.StreamClose(1)
		wait_frames(30)
		helper_1584c528(60170, 40)
		wait_camera()
		event.CmrsFadeInit()
		event.CmrsFadeOut(30)
		wait_camera()
	end)
	vm.entry(40)
	event.CancelDramaScene()
	event.StreamClose(1)
	event.DelExtMotion(0)
	event.CharaActive(0)
	event.EohSetFootSoundId(0, -1)
	event.EohSetFootSoundId(1, 3)
	event.ObjsInit(0)
	event.ObjsInit(1)
	event.SetCharaPos(0, 103.83, 104.0, 195.7)
	event.SetCharaRot(0, 0.0, 0.85, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.SetCharaPos(8, 124.7, 104.0, 183.68)
	event.SetCharaRot(8, 0.0, 0.85, 0.0)
	event.SetMotion(8, "立ち", 4)
	event.CmrsInit()
	event.SetCameraPos(22.1, 160.44, 138.08)
	event.SetCameraRef(103.83, 133.97, 195.7)
	event.ResetCamera(0)
	event.SetProjection(524.9)
	event.SetFadeIn(30)
	wait_frames(30)
	event.SetMesPreset(0, 4)
	set_window_mode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"[(!)]Sprich mit Donny, dann geht's weiter.\n   Du kannst deinen Fortschritt am\n   Speicherpunkt speichern."
	)
	show_message(0, -1, 8, 0, 0)
	event.LoadMes(0, -1)
	set_window_mode(0, 1)
	event.SetMesDrawspeed(0, 0)
end

--- Helper function.
local function helper_39990()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: s32 = 0
	event.Initialize()
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.SetMesQuestionGyou(0, 0)
	set_window_mode(0, 5)
	event.SetMesDrawspeed(0, 1)
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
	end
	var3 = vm.f32(vm.f32(vm.sin(vm.f32(3.14)) * 30.0) + var0)
	var4 = 0.0
	var5 = vm.f32(vm.f32(vm.cos(vm.f32(3.14)) * 30.0) + var2)
	event.ObjsMove(0, var3, var4, var5, 30, 1)
	event.ObjsReference(0, var3, var4, var5, 10)
	event.ObjsSetMotion(0, "歩き")
	var6 = 0
	while var6 < 30 do
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var0 = out1 or var0
			var1 = out2 or var1
			var2 = out3 or var2
		end
		var1 = vm.f32(var1 + 30.0)
		event.SetCameraRef(var0, var1, var2)
		var6 = var6 + 1
		vm.wait(1)
	end
	event.ObjsSetMotion(0, "立ち")
	set_window_mode(0, 1)
	event.SetMesShippo(0, 0)
	event.MesMake_2(0, "Wo dieser Kanal wohl hinf[UNI00fc]hrt?\nIch werde Donny fragen.")
	show_message(0, -1, 5, 256, 208)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
script.event_99 = helper_6955414c

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local mc_load: s32 = 0
	local old_map_no: s32 = 0
	local var3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(103) or flag
		event.SetBitCtrl(1, if flag == 0 then 1 else 0)
		helper_6955414c()
		mc_load = event.CheckMcLoad() or mc_load
		if mc_load == 1 then
			event.SetCharaPos(0, -112.0, 104.0, -114.0)
			event.SetCharaRot(0, 0.0, 0.0, 0.0)
			event.ResetCamera(1, 0.0, 20.0)
		else
			old_map_no = event.GetOldMapNo() or old_map_no
			var3 = event.GetMapType(old_map_no) or var3
			if var3 ~= -1 then
				if old_map_no == 15 or var3 == 7 or var3 == 8 then
					at = 1
					helper_3e3b0d3f()
				else
					helper_aaaef248()
				end
			else
				print("------  <START EVENT> OLD MAP ERR   ------\n")
				at = 2
				helper_3e3b0d3f()
			end
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_1ef0d4b2()
				print("------  <START EVENT> OLD MAP ERR   ------\n")
				helper_d05dd9db()
			end
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.SetFlag(4, 1)
	helper_44dfc()
end

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	helper_68ec7c8d()
	event.SetCnt(5, 3)
	helper_3a8c4()
end

--- Event 400, which map data, a script or the engine runs by number.
function script.event_400()
	local flag: s32 = 0
	flag = event.GetFlag(4) or flag
	if flag == 1 then
		event.SetSavedataEtc(3, 1)
	end
	helper_f57795f8()
	if flag == 1 then
		event.SetSavedataEtc(3, 0)
	end
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local flag: s32 = 0
	flag = event.GetFlag(103) or flag
	if flag == 0 then
		event.Initialize()
		event.SetMotion(0, "立ち")
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "Flotsam sucht noch nach mir.\nIch geh besser nicht zur[UNI00fc]ck nach\nPalm Brinks.")
		show_message(0, -1, 5, 256, 208)
	elseif helper_c0be7979() ~= 0 then
		event.MapJump_3(-1, "m01", 100)
	end
end

--- Event 530, which map data, a script or the engine runs by number.
function script.event_530()
	local flag: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local flag_2: s32 = 0
	local var6: s32 = 0
	flag = event.GetFlag(4) or flag
	if flag == 1 then
		helper_39990()
	elseif helper_87adbdbf() ~= 0 then
		event.DngSetStageId(0)
		event.GotoMenu(3, 0)
		vm.wait(3)
		do
			local _, out2, out3, _ = event.GetMenuParam_4()
			var2 = out2 or var2
			var3 = out3 or var3
		end
		if var3 == 0 then
			helper_3e3b0d3f()
		else
			flag_2 = event.GetFlag(102) or flag_2
			if var3 == 3 and flag_2 == 0 then
				var2 = 0
				var6 = event.GetFloorInfo(var2, var3, 7) or var6
				var6 = vm.i32(var6 + 1)
				event.SetFloorInfo(var2, var3, 7, var6)
				event.StopBgm(0)
				event.BgmPlayCancel()
				event.GotoEdit(41, 500)
				return
			end
			if var3 == 6 then
				event.BgmLoadCancel()
			end
			event.SetBitCtrl(1, 0)
			event.GotoDng(0, var3, 1010)
		end
	end
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	event.Initialize()
	event.FuncPointShow("", "memo", 0)
	do
		local out1, out2, out3 = event.GetEventData_4(10)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
	end
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsMotionDelay(0, 10)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsReference(0, var0, var1, var2, 10)
	wait_frames(10)
	event.EohSyncObj_2(1, "memo")
	event.EohSetShow(1, 0)
	event.AddItem(386)
	helper_f38eabca(386, 1)
	helper_a87eb945(1)
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local flag: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(4) or flag
		if flag == 1 then
			at = 1
			if helper_44dfc() ~= 0 then
				event.SetFlag(4, 0)
				event.SetSavedataEtc(0, 2)
				event.AddItem(22)
				event.SetCharaEquip(0, 22)
				event.AddItem(359)
				event.SetTimeStepEnable(1)
				event.SoundAllStop()
				event.SndInReverb(0)
				event.GotoDrawChapter(1)
				at = 2
				vm.wait(2)
				event.SndInReverb(1)
				event.SetBitCtrl(1, 0)
				event.GotoDng(0, -1, 1000)
				at = 3
				vm.wait(3)
			end
		else
			at = 4
			helper_fe0f3321()
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at == 1 then
				local _ = received[1] :: number
			end
			if at <= 3 then
				helper_ad047ca5()
			end
			return 0
		end
		return nil
	end)
end

--- Event 10070, which map data, a script or the engine runs by number.
function script.event_10070()
	local at: number = 0
	return vm.guard(function()
		event.StopBgm(0)
		event.StopEnvBgm()
		at = 1
		wait_frames(6)
		helper_68ec7c8d()
		event.SetFlag(4, 1)
		at = 2
		helper_3a8c4()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_344d6cd8()
				at = 2
				helper_3a8c4()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

return script
