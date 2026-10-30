--!strict
-- map/i/i01/h01/i01h01b.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0999bd0f = require("@lib/event/helper_0999bd0f")
local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_3936899e = require("@lib/event/helper_3936899e")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_658b1052 = require("@lib/event/helper_658b1052")
local helper_662e1f81 = require("@lib/event/helper_662e1f81")
local helper_6918037c = require("@lib/event/helper_6918037c")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_86e93423 = require("@lib/event/helper_86e93423")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8e5b8087 = require("@lib/event/helper_8e5b8087")
local helper_d61bc810 = require("@lib/event/helper_d61bc810")
local helper_ddb81958 = require("@lib/event/helper_ddb81958")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_e768(arg0: any)
	local projection: f32 = 0
	event.CmrsSetPos(-13.56, 50.69, -99.84)
	event.CmrsSetRef(47.32, 59.3, -184.47)
	projection = event.GetProjection() or projection
	event.SetProjection(471.9)
	event.ObjsSetPos(0, -17.08, -0.02, -207.87)
	event.ObjsSetRot(0, 0.0, 1.62, 0.0)
	event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
	event.ObjsSetPos(1, 34.05, -0.02, -143.69)
	event.ObjsSetRot(1, 0.0, 2.73, 0.0)
	event.ObjsSetMotion(1, "上を見るL", 4)
	event.CmrsFadeInit()
	event.CmrsFadeIn(50, 0.0, 0.0, 0.0)
	wait_camera()
	event.CmrsMove2(-13.56, 18.54, -99.84, 47.32, 27.15, -184.47, 90, 2, 0.4)
	wait_camera()
	event.ObjsSetMotion(0, "歩き", 0)
	event.ObjsMove(0, 8.7, -0.02, -189.32, 45)
	event.ObjsRotation(0, 0.0, 0.3, 0.0, 45)
	event.ObjsMove(0, 16.96, -0.02, -159.01, 45)
	wait_objects(0)
	event.ObjsRotation(0, 0.0, 1.74, 0.0, 10)
	event.ObjsMotionDelay(0, 10)
	event.ObjsSetMotion(0, "立ち")
	wait_objects(0)
	helper_888ab2a3(10)
	event.SetProjection(projection)
end

--- Helper function.
local function helper_eea4(se_id: s32)
	event.CmrsSetPos(113.96, 46.95, -138.53)
	event.CmrsSetRef(50.9, 27.15, -165.35)
	event.ObjsSetRot(0, 0.0, 2.34, 0.0)
	event.ObjsSetMotion(0, "スティーブ見L", 4)
	event.ObjsSetMotion(1, "腕組み", 4)
	helper_888ab2a3(30)
	event.ObjsSetMotion(1, "左を見る", 2)
	event.ObjsNextMotion(1, "左を見るL")
	helper_888ab2a3(9)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050010)
	event.ResetPakuAnim()
	event.ObjsSetMotion(0, "うなづく（スティーブ）", 2)
	event.ObjsNextMotion(0, "スティーブ見L")
	event.SetPakuAnim(0, "通常口パク")
	helper_4116e6bb(1050020)
	event.ResetPakuAnim()
	wait_objects(0)
	event.ObjsSetMotion(0, "右を見る", 2)
	event.ObjsNextMotion(0, "右を見るL")
	helper_888ab2a3(9)
	event.SetPakuAnim(0, "通常口パク")
	helper_4116e6bb(1050030)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050040)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050050)
	event.ResetPakuAnim()
	event.ObjsSetMotion(0, "アトラミリアをさわる", 6)
	event.ObjsNextMotion(0, "アトラミリアをさわるL")
	helper_888ab2a3(24)
	event.SndSePlay(se_id, 2)
	event.SetPakuAnim(0, "通常口パク")
	helper_4116e6bb(1050060)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050065)
	event.ResetPakuAnim()
end

--- Helper function.
local function helper_f6d0(arg0: any)
	event.CmrsSetPos(-17.27, 17.65, -125.13)
	event.CmrsSetRef(49.66, 25.36, -167.46)
	event.ObjsSetPos(0, 16.96, -0.02, -159.01)
	event.ObjsSetRot(0, 0.0, 1.62, 0.0)
	event.ObjsSetMotion(0, "スティーブ見L", 4)
	event.ObjsSetPos(1, 29.23, -0.02, -141.02)
	event.ObjsSetRot(1, 0.0, 2.13, 0.0)
	event.ObjsSetMotion(1, "腕組み", 4)
	helper_888ab2a3(9)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050070)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050071)
	event.ResetPakuAnim()
	event.SetPakuAnim(0, "わらい口パク")
	helper_4116e6bb(1050080)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050090)
	event.ResetPakuAnim()
	event.ObjsSetMotion(0, "右を見る", 6)
	event.ObjsNextMotion(0, "右を見るL")
	event.SetPakuAnim(0, "わらい口パク")
	helper_4116e6bb(1050100)
	event.ResetPakuAnim()
	wait_objects(0)
	event.ObjsSetMotion(1, "左を見る", 2)
	event.ObjsNextMotion(1, "左を見るL")
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050110)
	event.ResetPakuAnim()
	wait_objects(1)
	event.ObjsSetMotion(0, "右を見る会話", 6)
	event.ObjsNextMotion(0, "右を見るL")
	event.SetPakuAnim(0, "わらい口パク")
	helper_4116e6bb(1050120)
	event.ResetPakuAnim()
	wait_objects(0)
end

--- Helper function.
local function helper_ff38(se_id: s32)
	event.CmrsSetPos(-18.7, 18.74, -162.67)
	event.CmrsSetRef(41.67, 24.32, -147.28)
	event.ObjsSetRot(0, 0.0, 0.9, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4)
	event.ObjsSetRot(1, 0.0, -2.23, 0.0)
	event.ObjsSetMotion(1, "腰に手L", 4)
	helper_4116e6bb(1050130)
	helper_888ab2a3(50)
	event.ObjsSetMotion(1, "腰に手会話", 6)
	event.ObjsNextMotion(1, "腰に手L", 0)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050140)
	event.ResetPakuAnim()
	event.SndSePlay(se_id, 3)
	event.ObjsSetMotion(0, "ガッツポーズ", 6)
	event.ObjsNextMotion(0, "スターブル見L")
	event.ObjsMotionDelay(1, 18)
	event.ObjsSetMotion(1, "うなづく", 6)
	event.ObjsNextMotion(1, "腰に手L")
	helper_4116e6bb(1050150)
	wait_objects(0)
	event.ObjsSetMotion(1, "腰に手会話", 6)
	event.ObjsNextMotion(1, "腰に手L", 0)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050160)
	event.ResetPakuAnim()
	wait_objects(1)
	event.SndSePlay(se_id, 4)
	event.ObjsSetMotion(0, "うなづく", 6)
	event.ObjsNextMotion(0, "スターブル見L")
	event.SetPakuAnim(0, "通常口パク")
	helper_4116e6bb(1050170)
	event.ResetPakuAnim()
	wait_objects(0)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050180)
	event.ResetPakuAnim()
	event.CmrsFadeInit()
	event.CmrsFadeOut(50, 0.0, 0.0, 0.0)
	wait_camera()
end

--- Helper function.
local function helper_10830(se_id: s32)
	event.CmrsSetPos(-23.06, 16.81, -167.38)
	event.CmrsSetRef(22.88, 29.55, -159.05)
	event.ObjsSetRot(1, 0.0, -2.35, 0.0)
	event.CharaActive(0, 0)
	event.CmrsFadeInit()
	event.CmrsFadeIn(50, 0.0, 0.0, 0.0)
	wait_camera()
	event.SpriteSetDraw(0, 1)
	event.ObjsSetColor(3, 128.0, 128.0, 128.0, 128.0, 10)
	helper_888ab2a3(10)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050190)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050200)
	event.ResetPakuAnim()
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 1)
	event.ObjsSetColor(4, 128.0, 128.0, 128.0, 128.0, 30)
	helper_888ab2a3(10)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050210)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050211)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050212)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050213)
	event.ResetPakuAnim()
	event.SpriteSetDraw(1, 0)
	event.CmrsMove(-2.41, 23.65, -165.23, 57.71, 27.49, -130.12, 28)
	wait_camera()
	event.ObjsSetMotion(1, "カメラを出す", 6)
	event.ObjsNextMotion(1, "カメラを出すL")
	helper_8e5b8087(32, vm.f32(0.206), -1.0, 20)
	event.SndSePlay(se_id, 5)
	event.CharaActive(1, 33)
	event.SetReference(32, "camera_sta", 33)
	helper_8e5b8087(32, vm.f32(0.956), -1.0, 20)
	helper_6918037c(32)
	event.SndSePlay(se_id, 6)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050220)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050230)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050240)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050241)
	event.ResetPakuAnim()
end

--- Helper function.
local function helper_11388(se_id: s32, se_id_2: s32)
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
	event.MesMake_2(
		0,
		"[(!)]カメラを手に入れた。\n   アイテムメニューで「そうび」して\n   (#)ボタンで使えるぞ。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]ダンジョン内では、アクティブアイテムの\n   カーソルがカメラに合っていないと使えません。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 7)
	event.PlayBgm(0)
end

--- Helper function.
local function helper_119dc(arg0: any)
	event.DelReference(33)
	event.CharaActive(0, 33)
	event.CmrsSetPos(-33.79, 30.18, -157.21)
	event.CmrsSetRef(24.92, 17.88, -150.76)
	event.ObjsSetMotion(0, "スターブル見L", 4)
	event.EohSetShow(1, 1)
	event.EohSetShow(2, 0)
	event.ObjsSetMotion(1, "会話2", 6)
	event.ObjsNextMotion(1, "立ち", 0)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050250)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050260)
	event.ResetPakuAnim()
	event.ObjsSetMotion(1, "会話2", 2)
	event.ObjsNextMotion(1, "立ち", 0)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050261)
	event.ResetPakuAnim()
	wait_objects(1)
	event.ObjsSetMotion(1, "立ち")
	wait_objects(1)
	helper_888ab2a3(10)
	event.ObjsSetMotion(0, "うなづく", 6)
	event.ObjsMotionWait(0)
	wait_objects(0)
	helper_888ab2a3(15)
end

--- Helper function.
local function helper_11fcc()
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
		event.LoadMes(0, 5, "event/e100/e105/e105a.txt")
		event.StopBgm(0)
		helper_888ab2a3(4)
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
		helper_e768(var0)
		helper_eea4(var0)
		helper_f6d0(var0)
		helper_ff38(var0)
		helper_10830(var0)
		helper_11388(var0, var1)
		helper_119dc(var0)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
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
	helper_888ab2a3(4)
	event.LoadBgm(46)
	event.PlayBgm(0)
	event.SetCameraPos(pos_x, pos_y, pos_z)
	event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
	event.SetProjection(projection)
	event.EohSetFootSoundId(0, 0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_13634(projection: f32, se_id: s32)
	event.SetProjection(projection)
	event.CmrsSetPos(-15.15, 22.51, -151.72)
	event.CmrsSetRef(32.49, 27.39, -162.95)
	event.CharaActive(0, 0)
	event.ObjsSetPos(1, 38.77, -0.02, -147.68)
	event.ObjsSetRot(1, 0.0, -2.04, 0.0)
	event.ObjsSetMotion(1, "手に腰L", 4)
	helper_888ab2a3(30)
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.ObjsTexAnime(1, 1, "目とじ")
	event.ObjsSetMotion(1, "下を見る", 2)
	event.ObjsNextMotion(1, "下を見るL")
	helper_888ab2a3(10)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050290)
	event.ResetPakuAnim()
	event.CharaActive(0, 25)
	event.SetCrossfade(0, 0, 30)
	event.SpriteSetDraw(0, 2)
	event.ObjsSetColor(2, 128.0, 128.0, 128.0, 128.0, 0)
	helper_888ab2a3(30)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050291)
	event.ResetPakuAnim()
	wait_objects(1)
	event.SetCrossfade(30)
	event.ObjsSetColor(2, 0.0, 0.0, 0.0, 0.0, 30)
	event.SpriteSetDraw(1, 2)
	event.ObjsSetColor(3, 128.0, 128.0, 128.0, 128.0, 30)
	event.ObjsTexAnime(1, 0)
	event.ObjsTexAnime(1, 1, "デフォルト顔")
	event.ObjsTexAnime(1, 1, "目パチ")
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(1, "上を見る", 2)
	event.ObjsNextMotion(1, "上を見るL")
	helper_888ab2a3(16)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050300)
	event.ResetPakuAnim()
	event.SetCrossfade(30)
	event.ObjsSetColor(3, 0.0, 0.0, 0.0, 30)
	event.SpriteSetDraw(2, 2)
	event.ObjsSetColor(4, 128.0, 128.0, 128.0, 128.0, 30)
	event.ObjsSetColor(3, 0.0, 0.0, 0.0, 0.0, 30)
	event.SndSePlay(se_id, 3)
	event.ObjsSetMotion(1, "頭をかく", 2)
	event.ObjsNextMotion(1, "頭をかくL")
	helper_888ab2a3(28)
	event.SetPakuAnim(1, "通常口パク")
	helper_ddb81958(1050310, 32, se_id, 4, vm.f32(0.15))
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_ddb81958(1050320, 32, se_id, 4, vm.f32(0.15))
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_ddb81958(1050321, 32, se_id, 4, vm.f32(0.15))
	event.ResetPakuAnim()
	event.CharaActive(0, 32)
	event.SetCrossfade(30)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.SpriteSetDraw(2, 0)
end

--- Helper function.
local function helper_14444(arg0: any, arg1: any)
	event.CmrsSetPos(-38.62, 34.71, -174.94)
	event.CmrsSetRef(37.54, 15.45, -157.32)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, 16.25, -0.02, -166.37)
	event.ObjsSetRot(0, 0.0, 1.16, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4)
	event.CharaActive(1, 32)
	event.ObjsSetMotion(1, "腰に手L", 4)
	event.CharaActive(1, 25)
	helper_888ab2a3(30)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050330)
	event.ResetPakuAnim()
end

--- Helper function.
local function helper_147ac()
	local var0: s32 = 0
	local projection: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(105, 1)
		event.Initialize()
		event.InitDramaScene()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_3(4, 1225) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		projection = event.GetProjection() or projection
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
		event.LoadMotion(5, "event/e100/e105/e105_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetCharaPos(0, 72.86, 57.47, 35.39)
		event.LoadChara(5, "event/e100/e105/e105_starbre.gltf", "info", 32)
		event.CharaActive(1, 32)
		event.EohSyncChara(1, 32)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, 67.74, -59.99, 63.26)
		event.ObjsSetRot(1, 0.0, 3.04, 0.0)
		block = event.LoadImg_4(5, "textures/event/e100/e105/e105b_2d.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e105b_2d01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetDraw(0, 0)
		event.SpriteSetAlphab(0, 0)
		event.EohSyncSprite(2, 0)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e105b_2d02", block)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetDraw(1, 0)
		event.SpriteSetAlphab(1, 0)
		event.EohSyncSprite(3, 1)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SpriteInit(2)
		event.SpriteSetType(2, 0)
		event.SpriteSetTexture(2, "e105b_2d03", block)
		event.SpriteSetColor(2, 128, 128, 128, 0)
		event.SpriteSetUvsize(2, 0, 0, 512, 448)
		event.SpriteSetPutsize(2, 512, 448)
		event.SpriteSetPos(2, 256, 224)
		event.SpriteSetDraw(2, 0)
		event.SpriteSetAlphab(2, 0)
		event.EohSyncSprite(4, 2)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.LoadMes(0, 5, "event/e100/e105/e105b.txt")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		helper_13634(projection, var0)
		helper_14444(projection, var0)
	end)
	vm.entry(4)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	helper_888ab2a3(30)
	event.CharaActive(1, 0)
	event.CharaActive(1, 25)
	event.SetProjection(projection)
	event.SetCameraPos(pos_x, pos_y, pos_z)
	event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.SpriteSetDraw(2, 0)
	event.DelImg(0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_15a7c(arg0: any)
	event.CmrsSetPos(-33.29, 24.37, -167.32)
	event.CmrsSetRef(40.27, 15.44, -159.28)
	event.ObjsSetPos(0, 18.58, -1.12, -168.14)
	event.ObjsSetRot(0, 0.0, 0.92, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4, -1.0, 1)
	event.ObjsSetPos(1, 38.77, -0.02, -147.68)
	event.ObjsSetRot(1, 0.0, -2.16, 0.0)
	helper_888ab2a3(20)
	event.CmrsFadeInit()
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	helper_888ab2a3(15)
	event.ObjsSetMotion(1, "会話2", 6)
	event.ObjsNextMotion(1, "立ち", 0)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050340)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050341)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050350)
	event.ResetPakuAnim()
end

--- Helper function.
local function helper_16004(se_id: s32)
	event.CmrsSetPos(50.99, 20.54, -99.77)
	event.CmrsSetRef(50.2, 23.69, -140.94)
	event.ObjsSetPos(0, 59.55, -1.12, -135.97)
	event.ObjsSetRot(0, 0.0, -2.24, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4, -1.0, 1)
	event.ObjsSetPos(1, 38.77, -0.02, -147.68)
	event.ObjsSetRot(1, 0.0, 0.72, 0.0)
	event.ObjsSetMotion(1, "立ち", 4)
	event.ObjsSetPos(2, 62.85, 11.43, -176.07)
	event.ObjsSetRot(2, 0.0, -0.72, 0.0)
	helper_888ab2a3(30)
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(1, "ガッツポーズ", 2)
	event.ObjsNextMotion(1, "立ち")
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050360)
	event.ResetPakuAnim()
end

--- Helper function.
local function helper_1655c(arg0: any)
	local block: s32 = 0
	event.CmrsInit()
	event.CmrsFadeOut(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.CmrsSetPos(91.52, 19.06, -115.56)
	event.CmrsSetRef(36.75, 33.39, -130.18)
	event.CharaActive(0, 0)
	event.ObjsSetMotion(1, "腰に手L", 4)
	block = event.LoadImg_4(5, "textures/event/e100/e105/e105c_2d.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "e105c_2d01", block)
	event.SpriteSetColor(0, 128, 128, 128, 0)
	event.SpriteSetUvsize(0, 0, 0, 512, 448)
	event.SpriteSetPutsize(0, 512, 448)
	event.SpriteSetPos(0, 256, 224)
	event.SpriteSetAlphab(0, 0)
	event.SpriteSetDraw(0, 0)
	event.EohSyncSprite(10, 0)
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	helper_888ab2a3(30)
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.SpriteSetDraw(0, 1)
	event.ObjsSetColor(10, 128.0, 128.0, 128.0, 128.0, 10)
	helper_888ab2a3(30)
	event.ObjsSetMotion(1, "腰に手会話", 4)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050370)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050380)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050390)
	event.ResetPakuAnim()
	event.SpriteSetDraw(0, 0)
	event.DelImg(0)
end

--- Helper function.
local function helper_16dcc(se_id: s32)
	event.CmrsSetPos(16.09, 22.59, -109.83)
	event.CmrsSetRef(50.2, 23.69, -140.94)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, 55.27, -1.12, -130.46)
	event.ObjsSetRot(0, 0.0, -2.24, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4, -1.0, 1)
	event.ObjsSetMotion(1, "立ち", 4)
	helper_888ab2a3(15)
	event.SndSePlay(se_id, 3)
	event.ObjsSetMotion(1, "お金をやる", 6)
	event.ObjsNextMotion(1, "お金をやるL")
	helper_888ab2a3(14)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050400)
	event.ResetPakuAnim()
	event.SndSePlay(se_id, 4)
	event.ObjsSetMotion(0, "お金をもらう", 6)
	event.ObjsResetDaPosition(0)
	event.ObjsNextMotion(0, "お金をもらうL")
	helper_888ab2a3(60)
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(0, "４００ギルダを手に入れた。")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 7)
	event.ObjsSetMotion(1, "お金をやる戻り", 6)
	event.ObjsNextMotion(1, "立ち")
	wait_objects(1)
end

--- Helper function.
local function helper_17520(se_id: s32)
	event.CmrsSetPos(35.49, 25.34, -101.59)
	event.CmrsSetRef(50.2, 23.69, -140.94)
	event.ObjsSetPos(0, 59.55, -1.12, -135.97)
	event.ObjsSetRot(0, 0.0, -2.0, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4)
	event.ObjsSetPos(1, 38.77, -0.02, -147.68)
	event.ObjsSetRot(1, 0.0, 0.96, 0.0)
	event.ObjsSetMotion(1, "立ち", 4)
	event.ObjsSetPos(2, 62.85, 11.43, -176.07)
	event.ObjsSetRot(2, 0.0, -0.72, 0.0)
	helper_888ab2a3(30)
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	helper_888ab2a3(10)
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(1, "ガッツポーズ", 6)
	event.ObjsNextMotion(1, "立ち")
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050420)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050421)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050430)
	event.ResetPakuAnim()
	event.ObjsResetMotion(1)
end

--- Helper function.
local function helper_17b9c(se_id: s32)
	event.CmrsSetPos(-13.13, 19.21, -128.25)
	event.CmrsSetRef(60.53, 17.71, -147.9)
	event.ObjsSetPos(0, 77.34, -0.02, -128.37)
	event.ObjsSetRot(0, 0.0, -1.94, 0.0)
	event.ObjsSetMotion(0, "バックパック歩き", 4, -1.0, 1)
	event.ObjsSetPos(1, 24.24, -0.02, -152.65)
	event.ObjsSetRot(1, 0.0, 0.93, 0.0)
	event.ObjsSetPos(2, 62.85, 11.43, -176.07)
	event.ObjsSetRot(2, 0.0, -0.72, 0.0)
	event.SetReference(0, "ef00", 35)
	event.ObjsSetPos(4, 0.0, 0.0, 0.0)
	event.ObjsSetRot(4, 0.0, 1.12, 0.0)
	event.CharaActive(0, 24)
	event.SetFadeIn(15)
	event.ObjsMove(0, 58.55, -0.02, -130.49, 35)
	wait_objects(0)
	event.ObjsSetMotion(0, "バックパック持ち")
	helper_888ab2a3(15)
	event.SetPakuAnim(0, "通常口パク")
	helper_4116e6bb(1050440)
	event.ResetPakuAnim()
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(1, "ガッツポーズ", 2)
	event.ObjsNextMotion(1, "立ち")
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050450)
	event.ResetPakuAnim()
	event.ObjsSetMotion(0, "バックパックを置く", 2)
	event.ObjsNextMotion(0, "スターブル見L")
	for var1 = 0, 41 do
		if var1 == 12 then
			event.SndSePlay(se_id, 5)
			event.DelReference(35)
			event.ObjsSetPos(4, 44.54, 6.47, -135.54)
		end
		helper_888ab2a3(1)
	end
	event.ObjsTexAnime(0, 1, "ためいき")
	helper_888ab2a3(70)
	event.ObjsTexAnime(0, 0)
	event.ObjsTexAnime(0, 1, "デフォルト顔")
	event.ObjsTexAnime(0, 1, "通常目パチ")
	event.ObjsSetMotion(1, "腰に手", 2)
	event.ObjsNextMotion(1, "腰に手L")
	helper_888ab2a3(14)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050460)
	event.ResetPakuAnim()
	event.SndSePlay(se_id, 6)
	event.ObjsSetMotion(0, "うなづく", 6)
	event.ObjsResetDaPosition(0)
	event.ObjsNextMotion(0, "スターブル見L")
	helper_888ab2a3(10)
	event.SetPakuAnim(0, "通常口パク")
	helper_4116e6bb(1050470)
	event.ResetPakuAnim()
	helper_888ab2a3(10)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050480)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050490)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050491)
	event.ResetPakuAnim()
	event.SndSePlay(se_id, 7)
	event.ObjsSetMotion(0, "ガッツポーズ", 6, -1.0, 1)
	event.ObjsNextMotion(0, "スターブル見L")
	event.SetPakuAnim(0, "わらい口パク")
	helper_4116e6bb(1050500)
	event.ResetPakuAnim()
	event.SndSePlay(se_id, 6)
	event.ObjsSetMotion(1, "うなづく", 6)
	event.ObjsNextMotion(1, "腰に手L")
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050510)
	event.ResetPakuAnim()
end

--- Helper function.
local function helper_18d28(se_id: s32, se_id_2: s32)
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
	helper_888ab2a3(30)
	event.SndSePlay(se_id_2, 0)
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	helper_888ab2a3(15)
	event.SndSePlay(se_id, 8)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050520)
	event.ResetPakuAnim()
	var2 = event.GetMesWindowMode(0) or var2
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(
		0,
		"[(!)]メインメニューの『キャラクター』でライドポッドを\n   選択すれば、乗り込むことができるぞ。\n   また、(R)を押し込むことでもチェンジできる。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, var2)
end

--- Helper function.
local function helper_19648(arg0: any)
	event.CmrsSetPos(51.28, 21.78, -97.62)
	event.CmrsSetRef(50.16, 19.92, -141.52)
	event.ObjsSetPos(0, 58.4, -0.02, -135.54)
	event.ObjsSetRot(0, 0.0, -2.3, 0.0)
	event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
	event.ObjsSetPos(1, 36.44, -0.02, -151.98)
	event.ObjsSetRot(1, 0.0, 0.69, 0.0)
	event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
	event.SetCharaPos(25, 62.85, 11.43, -176.07)
	event.SetCharaRot(25, 0.0, -0.72, 0.0)
	helper_888ab2a3(15)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050530)
	event.ResetPakuAnim()
end

--- Helper function.
local function helper_19aa8(arg0: s32)
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
		event.LoadMes(0, 5, "event/e100/e105/e105c.txt")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.InitDramaScene()
		if arg0 == 1 then
			event.ObjsResetDaPosition(0)
			helper_15a7c(var1)
		end
		if arg0 == 2 then
			event.ObjsResetDaPosition(0)
			helper_16004(var1)
			event.ObjsResetDaPosition(0)
			helper_1655c(var1)
			event.ObjsResetDaPosition(0)
			helper_16dcc(var1)
		end
		if arg0 == 3 then
			event.ObjsResetDaPosition(0)
			helper_1ef0d4b2()
		end
		if arg0 == 4 then
			event.ObjsResetDaPosition(0)
			helper_17520(var1)
		end
		if arg0 == 5 then
			event.StopBgm(0)
			event.ObjsResetDaPosition(0)
			helper_17b9c(var1)
			event.ObjsResetDaPosition(0)
			helper_18d28(var1, var2)
			event.ObjsResetDaPosition(0)
			helper_19648(var1)
		end
	end)
	vm.entry(10)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	helper_888ab2a3(30)
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
	helper_11fcc()
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
	helper_d61bc810(1)
	vm.wait(3)
	event.LoadScript("i01h01/i01h01.stb", -1)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(10, 0.0, 0.0, 0.0)
		at = 1
		helper_888ab2a3(10)
		helper_86e93423()
		at = 2
		helper_147ac()
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
		event.LoadScript("i01h01/i01h01.stb", -1)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				helper_147ac()
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
					event.LoadScript("i01h01/i01h01.stb", -1)
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
		helper_888ab2a3(30)
		helper_86e93423()
		flag = event.GetFlag(13) or flag
		if flag == 1 then
			at = 2
			helper_19aa8(5)
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
			event.LoadScript("i01h01/i01h01.stb", -1)
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
						helper_19aa8(4)
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
						event.LoadScript("i01h01/i01h01.stb", -1)
						return
					end
				else
					event.SetFadeIn(0)
					event.SetAi(0, 24)
					event.MesMake_2(
						0,
						"何をしておる。\nアイテム屋は、うちの目の前じゃ。\n早く買ってくるのじゃ。"
					)
					at = 7
					helper_1c04a0eb(24, -1, 0, 0)
					event.SetAi(1, 24)
					at = 8
					vm.wait(8)
					event.LoadScript("i01h01/i01h01.stb", -1)
				end
			else
				var0 = event.CheckInventItem(165) or var0
				if var0 == 1 then
					argc_4 = event.GetInventionId(165) or argc_4
					if argc_4 ~= -1 then
						event.SetFlag(19, 1)
						event.AddMoney(400)
						at = 9
						helper_19aa8(2)
						helper_658b1052()
						event.SetAi(0, 24)
						event.SetCharaPos(24, 38.77, -0.02, -147.68)
						event.SetCharaRot(24, 0.0, 0.72, 0.0)
						event.SetMotion(24, "立ち")
						at = 10
						vm.wait(10)
						event.SetAi(1, 24)
						event.LoadScript("i01h01/i01h01.stb", -1)
						return
					else
						at = 11
						helper_19aa8(1)
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
						event.LoadScript("i01h01/i01h01.stb", -1)
						return
					end
				else
					at = 13
					vm.wait(13)
					event.LoadScript("i01h01/i01h01c.stb", 500)
					return
				end
			end
		end
		event.SetFadeIn(15)
		event.MesMake_2(0, "ユリス、バイトをサボるんじゃないぞ。\nわかったな！")
		at = 14
		helper_1c04a0eb(24, -1, 0, 0)
		at = 15
		vm.wait(15)
		event.LoadScript("i01h01/i01h01.stb", -1)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				helper_19aa8(5)
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
					event.LoadScript("i01h01/i01h01.stb", -1)
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
				helper_19aa8(2)
				return vm.continue_with(function()
					helper_658b1052()
					event.SetAi(0, 24)
					event.SetCharaPos(24, 38.77, -0.02, -147.68)
					event.SetCharaRot(24, 0.0, 0.72, 0.0)
					event.SetMotion(24, "立ち")
					at = 10
					vm.wait(10)
					event.SetAi(1, 24)
					event.LoadScript("i01h01/i01h01.stb", -1)
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
	helper_19aa8(2)
	vm.wait(2)
	event.LoadScript("i01h01/i01h01.stb", -1)
end

--- Event 1000, which map data, a script or the engine runs by number.
function script.event_1000()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		at = 1
		vm.wait(1)
		at = 2
		helper_662e1f81()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_3936899e()
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
		helper_888ab2a3(30)
		helper_86e93423()
		argc_2 = event.GetItemNum(165) or argc_2
		if argc_2 >= 1 then
			at = 2
			helper_19aa8(5)
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
			event.LoadScript("i01h01/i01h01.stb", -1)
			return
		end
		argc_3 = event.GetItemNum(224) or argc_3
		argc_4 = event.GetItemNum(245) or argc_4
		argc_5 = event.GetItemNum(227) or argc_5
		if argc_3 >= 20 and argc_4 >= 1 and argc_5 >= 2 then
			at = 5
			helper_19aa8(4)
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
			event.LoadScript("i01h01/i01h01.stb", -1)
			return
		end
		argc = event.GetInventionId(165) or argc
		if argc ~= -1 then
			at = 8
			helper_19aa8(2)
			event.SetAi(0, 24)
			event.SetCharaPos(24, 38.77, -0.02, -147.68)
			event.SetCharaRot(24, 0.0, 0.72, 0.0)
			event.SetMotion(24, "立ち")
			at = 9
			vm.wait(9)
			event.SetAi(1, 24)
			at = 10
			vm.wait(10)
			event.LoadScript("i01h01/i01h01.stb", -1)
			return
		end
		if argc == -1 then
			at = 11
			helper_19aa8(1)
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
			event.LoadScript("i01h01/i01h01.stb", -1)
			return
		end
		event.SetFadeIn(30)
		at = 14
		vm.wait(14)
		event.LoadScript("i01h01/i01h01.stb", -1)
		return
	end, function(received: { any })
		if at <= 4 then
			if at <= 1 then
				helper_1ef0d4b2()
				at = 2
				helper_19aa8(5)
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
					event.LoadScript("i01h01/i01h01.stb", -1)
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
