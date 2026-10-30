--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_7ebf20c8 = require("@lib/event/helper_7ebf20c8")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_bed17389 = require("@lib/event/helper_bed17389")
local helper_d977cd5f = require("@lib/event/helper_d977cd5f")
local helper_e7468727 = require("@lib/event/helper_e7468727")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_8a5b59a2()
	local projection: f32 = 0
	local projection_2: f32 = 0
	local var3: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	local var6: f32 = 0
	local projection_3: f32 = 0
	local var9: s32 = 0
	local var10: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(104, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		var4 = event.SndLoadSound_3(4, 1813) or var4
		event.AssignStack(5)
		event.ClearStack(5)
		projection = event.GetProjection() or projection
		event.LoadMotion(5, "event/e100/e104/e104_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "event/e100/e104/e104_ste_sta.gltf", "info", 8)
		event.CharaActive(0, 8)
		event.EohSyncChara(1, 8)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetSoundId(1, var4)
		event.LoadChara(5, "event/e100/e104/e104_erephant.gltf", "info", 9)
		event.CharaActive(0, 9)
		event.EohSyncChara(2, 9)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.EohSetSoundId(2, var4)
		event.LoadChara(5, "event/e100/e104/e104_polcurse.gltf", "info", 10)
		event.CharaActive(0, 10)
		event.EohSyncChara(3, 10)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "event/e100/e104/e104_iwa.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.EohSyncChara(4, 11)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.LoadChara(5, "event/e100/e104/e104_iwakudake.gltf", "info", 12)
		event.CharaActive(0, 12)
		event.EohSyncChara(7, 12)
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 7)
		event.ObjsSetPos(7, 0.0, 0.0, 0.0)
		event.ObjsSetRot(7, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e104/e104_naguru.gltf", "info", 14)
		event.CharaActive(0, 14)
		event.EohSyncChara(8, 14)
		event.ObjsInit(8)
		event.ObjsSyncObj(8, 8)
		event.ObjsSetPos(8, 0.0, 0.0, 0.0)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e104/e104_naguru_hyaku.gltf", "info", 15)
		event.CharaActive(0, 15)
		event.EohSyncChara(9, 15)
		event.ObjsInit(9)
		event.ObjsSyncObj(9, 9)
		event.ObjsSetPos(9, 0.0, 0.0, 0.0)
		event.ObjsSetRot(9, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e104/e104_naguru_upper.gltf", "info", 16)
		event.CharaActive(0, 16)
		event.EohSyncChara(10, 16)
		event.ObjsInit(10)
		event.ObjsSyncObj(10, 10)
		event.ObjsSetPos(10, 0.0, 0.0, 0.0)
		event.ObjsSetRot(10, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e104/e104_smoke.gltf", "info", 17)
		event.CharaActive(0, 17)
		event.EohSyncChara(11, 17)
		event.ObjsInit(11)
		event.ObjsSyncObj(11, 11)
		event.ObjsSetPos(11, 0.0, 0.0, 0.0)
		event.ObjsSetRot(11, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e104/e104_overheat.gltf", "info", 18)
		event.CharaActive(0, 18)
		event.EohSyncChara(12, 18)
		event.ObjsInit(12)
		event.ObjsSyncObj(12, 12)
		event.ObjsSetPos(12, 0.0, 0.0, 0.0)
		event.ObjsSetRot(12, 0.0, 0.0, 0.0)
		event.EohSetSoundId(3, var4)
		event.LoadMes(0, 5, "event/e100/e104/e104_1.txt")
		event.EsmInitialize(5, 1)
		event.EsmLoadBase("e110ポル回転キラ")
		event.EsmInitFix(5)
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(193)
		event.SetStatus(1, 0, 256, 1)
		event.InitDramaScene()
		event.CharaActive(1, 0)
		event.EohSetShow(0, 1)
		event.EohSyncChara(10, 1)
		event.EohSyncChara(11, 2)
		event.EohSyncChara(12, 3)
		event.EohSetShow(10, 1)
		event.EohSetShow(11, 1)
		event.EohSetShow(12, 1)
		event.CmrsSetPos(-20.33, 70.25, 59.65)
		event.CmrsSetRef(102.39, 53.16, 234.79)
		event.ObjsSetPos(0, 1.77, 50.0, 89.12)
		event.ObjsSetRot(0, 0.0, -3.0, 0.0)
		event.SetFadeIn(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsSetMotion(0, "だめだL", 4, -1.0, 1)
		at = 3
		wait_frames(15)
		event.SetPakuAnim(0, "通常口パク")
		at = 4
		helper_4116e6bb(1040010)
		event.ResetPakuAnim()
		event.CharaActive(1, 9)
		event.CmrsSetPos(2.83, 72.97, 182.21)
		event.CmrsSetRef(1.93, 81.57, -215.48)
		event.ObjsSetPos(2, 3.65, 50.0, -40.62)
		event.ObjsSetRot(2, 0.0, -0.03, 0.0)
		event.ObjsSetScale(2, 1.2, 1.2, 1.2)
		projection_2 = event.GetProjection() or projection_2
		event.ObjsSetMotion(2, "歩き")
		at = 5
		vm.wait(5)
		var10 = 40
		var9 = 1
		var6 = vm.f32(vm.fdiv(vm.f32(vm.f32(867.9) - projection_2), var10))
		while var9 < var10 do
			projection_3 = vm.f32(var6 * var9)
			projection_3 = vm.f32(projection_2 + projection_3)
			event.SetProjection(projection_3)
			at = 6
			vm.wait(6)
			var9 = var9 + 1
		end
		event.SetProjection(projection_2)
		event.CharaActive(1, 10)
		event.CmrsSetPos(62.56, 161.62, 59.5)
		event.CmrsSetRef(3.61, 179.88, 37.58)
		event.ObjsSetPos(3, 1.97, 159.88, 33.85)
		event.ObjsSetRot(3, 0.0, 0.04, 0.0)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "おこりわらい顔")
		event.ObjsTexAnime(3, 1, "おこり目パチ")
		event.ObjsSetMotion(3, "浮遊", 4, -1.0, 1)
		at = 7
		wait_frames(15)
		event.SetPakuAnim(3, "わらい口パク")
		at = 8
		helper_4116e6bb(1040020)
		event.ResetPakuAnim()
		event.CmrsSetPos(15.68, 76.92, 110.24)
		event.CmrsSetRef(5.46, 70.74, 129.29)
		event.ObjsSetPos(0, 6.33, 49.45, 128.85)
		event.ObjsSetRot(0, 0.0, 2.44, 0.0)
		event.ObjsTexAnime(0, 1, "くいしばり")
		event.ObjsSetMotion(0, "だめだL", 4, -1.0, 1)
		at = 9
		wait_frames(15)
		event.SetPakuAnim(0, "通常口パク")
		at = 10
		helper_1584c528(1040030, 30)
		event.ResetPakuAnim()
		event.CmrsSetPos(-97.35, 80.94, 117.92)
		event.CmrsSetRef(-40.6, 80.11, 79.05)
		event.ObjsSetPos(0, 4.49, 50.0, 81.42)
		event.ObjsSetRot(0, 0.0, 2.89, 0.0)
		event.ObjsSetPos(2, -5.42, 50.0, -60.99)
		event.ObjsSetScale(2, 1.2, 1.2, 1.2)
		event.ObjsSetMotion(0, "だめだL", 4, -1.0, 1)
		event.ObjsSetMotion(2, "歩き", 4, -1.0, 1)
		event.ObjsMove(2, -0.37, 50.0, -5.7, 50)
		event.ObjsRotation(2, 0.0, -0.03, 0.0, 20)
		at = 11
		helper_d977cd5f(50, var5)
		event.CharaActive(0, 9)
		event.CmrsSetPos(15.68, 76.92, 110.24)
		event.CmrsSetRef(5.46, 70.74, 129.29)
		event.ObjsSetPos(0, 6.33, 49.45, 128.85)
		event.ObjsSetRot(0, 0.0, 2.44, 0.0)
		event.ObjsTexAnime(0, 1, "くいしばり")
		event.ObjsSetMotion(0, "だめだL", 4, -1.0, 1)
		at = 12
		wait_frames(15)
		event.SetPakuAnim(0, "通常口パク")
		at = 13
		helper_1584c528(1040040, 30)
		event.ResetPakuAnim()
		event.CharaActive(1, 9)
		event.CmrsSetPos(2.83, 72.48, 182.21)
		event.CmrsSetRef(1.93, 128.72, -215.48)
		event.ObjsSetPos(0, 3.24, 50.0, 118.73)
		event.ObjsSetRot(0, 0.0, -3.0, 0.0)
		event.ObjsSetPos(2, 3.84, 50.0, 41.34)
		event.ObjsSetMotion(0, "だめだL", 4, -1.0, 1)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetMotion(2, "ふりかぶる", 6)
		event.ObjsMotionWait(2)
		event.SndSePlay(var4, 1)
		at = 14
		wait_objects(2)
		event.CharaActive(1, 12)
		event.CharaActive(1, 11)
		event.ObjsSetPos(4, -61.22, 96.72, 70.37)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.ObjsSetPos(7, -61.22, 96.72, 70.37)
		event.ObjsSetRot(7, 0.0, 1.72, 0.0)
		event.ObjsSetMotion(7, "岩", 4)
		event.CharaActive(0, 11)
		event.ObjsJump(7, -17.07, 99.51, 70.08, -0.4, 3)
		at = 15
		wait_objects(7)
		event.ObjsSetMotion(2, "岩があたる", 6)
		event.ObjsMotionWait(2)
		event.SndSePlay(var4, 2)
		event.ObjsSetMotion(7, "砕ける岩", 0)
		at = 16
		wait_frames(28)
		event.CharaActive(0, 12)
		at = 17
		wait_objects(2)
		event.ObjsSetPos(0, 2.81, 50.0, 110.3)
		event.ObjsSetRot(0, 0.0, -3.0, 0.0)
		event.CharaActive(0, 9)
		event.CmrsSetPos(-17.42, 72.3, 95.02)
		event.CmrsSetRef(8.94, 73.07, 115.98)
		event.SetTexAnim(0, 0, "怒り目")
		event.SetTexAnim(0, 0, "怒り口")
		event.ObjsTexAnime(0, 1, "振り向き顔")
		event.ObjsSetMotion(0, "左を見る", 6, -1.0, 1)
		event.ObjsNextMotion(0, "左を見るL")
		event.SetPakuAnim(0, "通常口パク")
		at = 18
		helper_1584c528(1040050, 30)
		event.ResetPakuAnim()
		event.CmrsSetPos(-36.29, 169.1, 79.75)
		event.CmrsSetRef(1.07, 187.01, 33.65)
		event.ObjsTexAnime(3, 1, "おどろき口")
		event.SndSePlay(var4, 3)
		event.ObjsSetMotion(3, "驚く", 6)
		event.ObjsNextMotion(3, "驚くL")
		event.SetPakuAnim(3, "わらい口パク")
		at = 19
		helper_1584c528(1040060, 25)
		event.ResetPakuAnim()
		event.CharaActive(1, 8)
		event.CmrsSetPos(-472.64, 157.68, -14.51)
		event.CmrsSetRef(-374.9, 159.09, -138.37)
		event.ObjsSetPos(1, -698.91, 120.39, -1.62)
		event.ObjsSetRot(1, 0.0, 1.6, 0.0)
		event.ObjsSetScale(1, 1.2, 1.2, 1.2)
		event.PlayBgm(1)
		event.CmrsMove(-489.82, 157.68, 2.84, -669.99, 159.09, 0.82, 14)
		event.ObjsSetMotion(1, "岩抱えL", 4)
		at = 20
		wait_camera()
		at = 21
		wait_frames(30)
		event.CmrsSetPos(-649.06, 178.83, 1.06)
		event.CmrsSetRef(-739.64, 160.75, -2.5)
		event.SndSePlay(var4, 4)
		event.SetPakuAnim(1, "口パク")
		at = 22
		helper_4116e6bb(1040070)
		event.ResetPakuAnim()
		event.CharaActive(0, 9)
		event.CmrsSetPos(-16.05, 82.67, 94.68)
		event.CmrsSetRef(0.78, 74.43, 106.59)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.SndSePlay(var4, 5)
		event.EohSyncChara(5, 1)
		event.EohSetShow(5, 0)
		event.EohSyncChara(6, 2)
		event.EohSetShow(6, 0)
		event.ObjsSetMotion(0, "すごいよ", 6, -1.0, 1)
		event.ObjsNextMotion(0, "すごいよL")
		at = 23
		wait_frames(3)
		event.SetPakuAnim(0, "わらい口パク")
		at = 24
		helper_4116e6bb(1040080)
		event.ResetPakuAnim()
		event.CharaActive(1, 9)
		event.CmrsSetPos(-595.13, 165.27, -0.58)
		event.CmrsSetRef(-680.32, 162.11, -0.34)
		event.ObjsSetMotion(1, "構え", 4)
		event.SetPakuAnim(1, "口パク")
		at = 25
		helper_4116e6bb(1040090)
		event.ResetPakuAnim()
		event.SndSeStop(var4, 4)
		event.SndSePlay(var4, 6)
		event.CmrsSetPos(-487.31, 136.74, -141.75)
		event.CmrsSetRef(-782.31, 197.24, 86.51)
		event.ObjsSetMotion(1, "ジャンプ", 6, 0.4)
		event.ObjsNextMotion(1, "ジャンプL")
		at = 26
		wait_frames(3)
		event.ObjsJump(1, -410.14, 169.27, 125.29, -0.35, 33)
		var3 = 1
		while var3 < 33 do
			do
				local out1, out2, out3 = event.EohGetPos(1)
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			event.CmrsSetRef(pos_x, pos_y + 60.0, pos_z)
			at = 27
			vm.wait(27)
			var3 = var3 + 1
		end
		event.CharaActive(1, 9)
		event.CmrsInit()
		event.CharaActive(0, 0)
		event.CharaActive(0, 10)
		event.CmrsSetPos(123.01, 102.6, 37.52)
		event.CmrsSetRef(-195.66, 44.82, 141.63)
		event.ObjsSetPos(1, 73.03, 63.16, 18.93)
		event.ObjsSetRot(1, 0.0, -0.56, 0.0)
		event.ObjsSetPos(2, -8.8, 50.0, 120.29)
		event.ObjsSetRot(2, 0.0, 3.13, 0.0)
		event.ObjsSetScale(2, 1.2, 1.2, 1.2)
		event.ObjsSetPos(1, 3.84, 50.0, 41.34)
		event.ObjsSetRot(1, 0.0, -0.03, 0.0)
		event.ObjsSetPos(2, 3.84, 50.0, 41.34)
		event.ObjsSetRot(2, 0.0, -0.03, 0.0)
		event.CharaActive(1, 14)
		event.ObjsSetPos(8, 73.03, 63.16, 18.93)
		event.ObjsSetRot(8, 0.0, -0.56, 0.0)
		event.ObjsSetMotion(8, "エフェクト_殴る", 6)
		event.ObjsSetMotion(1, "殴る", 6)
		event.ObjsSetMotion(2, "殴る", 6)
		event.ObjsMotionWait(1)
		event.ObjsMotionWait(2)
		event.SndSePlay(var4, 7)
		event.SndSePlay(var4, 8)
		at = 28
		wait_objects(1)
		at = 29
		wait_objects(2)
		event.CharaActive(0, 14)
		event.CharaActive(1, 8)
		event.CharaActive(1, 9)
		event.CmrsSetPos(-96.23, 106.65, 44.67)
		event.CmrsSetRef(-84.09, 104.44, 47.57)
		event.ObjsSetPos(1, 3.84, 50.0, 41.34)
		event.ObjsSetRot(1, 0.0, -0.03, 0.0)
		event.ObjsSetPos(2, 3.84, 50.0, 41.34)
		event.ObjsSetRot(2, 0.0, -0.03, 0.0)
		event.ObjsSetScale(2, 1.0, 1.0, 1.0)
		event.CharaActive(1, 15)
		event.ObjsSetPos(9, 3.84, 50.0, 41.34)
		event.ObjsSetRot(9, 0.0, -0.03, 0.0)
		event.ObjsSetMotion(9, "エフェクト_百烈拳", 6)
		event.ObjsSetMotion(1, "百烈拳", 6)
		event.ObjsSetMotion(2, "百烈拳", 6)
		event.ObjsNextMotion(1, "アッパー", 6)
		event.ObjsNextMotion(2, "アッパー", 6)
		event.ObjsMotionWait(1)
		event.ObjsMotionWait(2)
		event.CmrsPrdelay(50)
		event.CmrsSetPos(-84.59, 72.69, -23.68)
		event.CmrsSetRef(65.91, 125.55, 145.6)
		event.CmrsPrdelay(49)
		event.CmrsSetPos(49.52, 88.47, 17.44)
		event.CmrsSetRef(1.9, 49.55, 248.07)
		var3 = 0
		while var3 < 75 do
			at = 30
			vm.wait(30)
			if var3 < 55 then
				if vm.imod(var3, 4) == 0 then
					event.SndSePlay(var4, 7)
					event.SndSePlay(var4, 8)
				end
			end
			if var3 == 57 then
				event.SndSePlay(var4, 9)
			end
			var3 = var3 + 1
		end
		event.CharaActive(0, 15)
		event.CharaActive(1, 16)
		event.SetCharaPos(16, 3.84, 50.0, 41.34)
		event.SetCharaRot(16, 0.0, -0.03, 0.0)
		event.SetMotion(16, "エフェクト_アッパー", 6)
		at = 31
		wait_objects(1)
		at = 32
		wait_objects(2)
		at = 33
		wait_camera()
		event.CharaActive(0, 16)
		event.ObjsSetScale(2, 1.2, 1.2, 1.2)
		event.CharaActive(1, 8)
		event.CharaActive(0, 9)
		event.CmrsSetPos(2.43, 89.98, -21.91)
		event.CmrsSetRef(3.78, 84.72, 87.51)
		event.ObjsSetPos(1, 2.05, 50.0, 102.48)
		event.ObjsSetRot(1, 0.0, 3.13, 0.0)
		event.CharaActive(1, 17)
		event.ObjsSetPos(11, 2.05, 50.0, 102.48)
		event.SetCharaPos(17, 2.05, 50.0, 102.48)
		event.SetCharaRot(17, 0.0, 3.13, 0.0)
		event.ObjsSetMotion(11, "エフェクト_湯気", 4)
		event.ObjsSetMotion(1, "どうじゃ！", 4)
		at = 34
		wait_frames(15)
		event.SndSePlay(var4, 10)
		event.SetPakuAnim(1, "口パク")
		at = 35
		helper_4116e6bb(1040100)
		event.ResetPakuAnim()
		event.CharaActive(0, 17)
		event.CharaActive(1, 0)
		event.CmrsSetPos(-45.51, 69.87, 128.53)
		event.CmrsSetRef(-45.74, 88.49, 287.42)
		event.ObjsSetPos(0, -45.61, 50.0, 154.61)
		event.ObjsSetRot(0, 0.0, 2.53, 0.0)
		event.SndSeStop(var4, 10)
		event.SndSePlay(var4, 11)
		event.ObjsSetMotion(0, "すごいよ", 6, -1.0, 1)
		event.ObjsNextMotion(0, "すごいよL")
		at = 36
		wait_frames(3)
		event.SetPakuAnim(0, "わらい口パク")
		at = 37
		helper_4116e6bb(1040110)
		event.ResetPakuAnim()
		event.CharaActive(1, 10)
		event.CmrsSetPos(2.48, 180.08, 53.9)
		event.CmrsSetRef(-2.43, 189.74, -146.57)
		event.ObjsSetPos(3, -6.54, 165.12, -24.91)
		event.ObjsSetRot(3, 0.0, 0.37, 0.0)
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "わらい顔")
		event.ObjsTexAnime(3, 1, "通常目パチ")
		event.ObjsSetMotion(3, "光をためるL", 4)
		event.ObjsSetMotion(3, "光をためるL")
		at = 38
		wait_objects(3)
		event.SetPakuAnim(3, "わらい口パク")
		at = 39
		helper_4116e6bb(1040120)
		event.ResetPakuAnim()
		event.CmrsSetPos(2.48, 211.26, 53.9)
		event.CmrsSetRef(-2.43, 150.53, -146.57)
		event.ObjsSetMotion(3, "光を放つ", 6)
		event.ObjsMotionWait(3)
		at = 40
		wait_objects(3)
		event.SndSePlay(var4, 12)
		event.CharaActive(0, 0)
		event.CharaActive(0, 8)
		event.CharaActive(1, 9)
		event.CmrsSetPos(-117.37, 146.51, -35.46)
		event.CmrsSetRef(103.37, 9.39, 23.71)
		event.ObjsSetPos(2, -18.78, 50.0, -55.26)
		event.ObjsSetRot(2, 0.0, 0.09, 0.0)
		event.EsmCreate_2("e110ポル回転キラ", 9)
		event.EsmSetVect1(160.0, 140.0, 160.0)
		event.ObjsSetPos(2, 0.86, 50.0, -22.64)
		event.ObjsSetRot(2, 0.0, -0.87, 0.0)
		event.ObjsSetMotion(2, "復活", 6)
		at = 41
		wait_frames(100)
		event.SndSePlay(var4, 13)
		event.CmrsSetPos(-87.08, 95.61, 51.87)
		event.CmrsSetRef(83.1, 98.77, -93.27)
		event.ObjsSetMotion(2, "ブルブル", 6)
		event.ObjsNextMotion(2, "立ち", 0)
		at = 42
		wait_frames(50)
		event.SndSePlay(var4, 14)
		event.CmrsSetPos(-79.4, 118.39, 76.29)
		event.CmrsSetRef(-11.32, 84.25, -20.1)
		event.ObjsSetPos(2, -10.22, 50.0, -0.34)
		event.ObjsSetRot(2, 0.0, -0.87, 0.0)
		at = 43
		vm.wait(43)
		at = 44
		wait_frames(30)
		event.CharaActive(1, 8)
		event.CharaActive(0, 9)
		event.CmrsSetPos(-14.86, 110.63, -24.65)
		event.CmrsSetRef(-30.63, 87.29, 63.28)
		event.ObjsSetPos(1, -33.56, 49.19, 71.0)
		event.ObjsSetRot(1, 0.0, 2.93, 0.0)
		event.ObjsSetMotion(1, "構え", 4)
		event.SndSePlay(var4, 15)
		event.SetPakuAnim(1, "口パク")
		at = 45
		helper_4116e6bb(1040130)
		event.ResetPakuAnim()
		event.EohSetFrameShow(3, "cyl2", 0)
		event.CmrsSetPos(29.47, 85.69, 10.08)
		event.CmrsSetRef(-135.3, 106.15, 168.51)
		event.SndSePlay(var4, 16)
		event.SndSePlay(var4, 17)
		event.SndSePlay(var4, 18)
		event.ObjsSetMotion(1, "手をまわす", 6)
		event.ObjsNextMotion(1, "手をまわすL")
		at = 46
		wait_objects(1)
		at = 47
		wait_camera()
		event.SetPakuAnim(1, "口パク")
		at = 48
		helper_4116e6bb(1040140)
		event.ResetPakuAnim()
		event.CharaActive(1, 18)
		event.SetCharaPos(18, -33.56, 49.19, 71.0)
		event.SetCharaRot(18, 0.0, 2.93, 0.0)
		event.SetScale(18, 1.2, 1.2, 1.2)
		event.ObjsSetMotion(12, "オーバーヒート\t", 4)
		event.FadeOutBgm(30)
		event.SndSeStop(var4, 15)
		event.SndSePlay(var4, 19)
		event.ObjsSetMotion(1, "ガコン", 6)
		event.ObjsNextMotion(1, "ガコンL")
		at = 49
		wait_objects(1)
		event.SndSePlay(var4, 20)
		event.SetPakuAnim(1, "口パク")
		at = 50
		helper_4116e6bb(1040150)
		event.ResetPakuAnim()
		event.CharaActive(0, 18)
		event.CharaActive(1, 0)
		event.CmrsSetPos(-84.61, 67.09, 17.57)
		event.CmrsSetRef(46.83, 120.54, 229.76)
		event.ObjsSetPos(0, -51.32, 49.7, 99.35)
		event.ObjsSetRot(0, 0.0, 1.48, 0.0)
		event.SetCharaPos(0, -51.32, 49.7, 99.35)
		event.SetCharaRot(0, 0.0, 1.48, 0.0)
		event.ObjsSetPos(1, -18.48, 49.19, 89.15)
		event.ObjsSetRot(1, 0.0, -2.87, 0.0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetMotion(0, "上見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "ガコンL", 4)
		event.ObjsSetMotion(0, "上見会話", 2)
		event.ObjsNextMotion(0, "上見立ち")
		event.SetPakuAnim(0, "通常口パク")
		at = 51
		helper_4116e6bb(1040160)
		event.ResetPakuAnim()
		at = 52
		helper_4116e6bb(1040170)
		event.ObjsSetMotion(1, "ミンツを見る", 6, -1.0, 1)
		event.ObjsNextMotion(1, "ミンツを見るL")
		at = 53
		wait_objects(1)
		event.SetPakuAnim(1, "口パク")
		at = 54
		helper_4116e6bb(1040171)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "口パク")
		at = 55
		helper_4116e6bb(1040172)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "口パク")
		at = 56
		helper_4116e6bb(1040180)
		event.ResetPakuAnim()
		event.CmrsSetPos(-26.67, 89.04, 100.9)
		event.CmrsSetRef(-181.84, -8.6, 101.99)
		event.ObjsSetMotion(0, "上見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "ガコンL", 4)
		event.ObjsSetMotion(0, "上見会話", 2)
		event.ObjsNextMotion(0, "上見立ち")
		event.SetPakuAnim(0, "通常口パク")
		at = 57
		helper_4116e6bb(1040190)
		event.ResetPakuAnim()
		event.CmrsSetPos(3.1, 137.71, 121.7)
		event.CmrsSetRef(-96.45, -19.65, 33.14)
		event.ObjsSetPos(0, -52.15, 49.3, 100.27)
		event.ObjsSetRot(0, 0.0, 1.6, 0.0)
		event.ObjsSetMotion(0, "上見立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "ガコンL", 4)
		event.SetPakuAnim(1, "口パク")
		at = 58
		helper_4116e6bb(1040200)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "ミンツを見る戻り", 6)
		event.SndSePlay(var4, 21)
		at = 59
		wait_frames(15)
		event.SndSeStop(var4, 20)
		event.SetPakuAnim(1, "口パク")
		at = 60
		helper_4116e6bb(1040201)
		event.ResetPakuAnim()
		at = 61
		wait_objects(1)
		event.CmrsSetPos(-35.68, 98.0, 30.68)
		event.CmrsSetRef(10.9, 100.95, 171.17)
		event.ObjsSetPos(0, -18.48, 49.19, 89.15)
		event.ObjsSetRot(0, 0.0, -2.87, 0.0)
		event.ObjsSetScale(0, 1.2, 1.2, 1.2)
		event.ObjsSetPos(1, -18.48, 49.19, 89.15)
		event.ObjsSetRot(1, 0.0, -2.87, 0.0)
		event.SndSePlay(var4, 15)
		event.SndSePlay(var4, 22)
		event.ObjsSetMotion(0, "スティーブに乗る", 6, -1.0, 1)
		event.ObjsNextMotion(0, "スティーブに乗るL")
		at = 62
		wait_objects(0)
		at = 63
		wait_frames(15)
		event.CharaActive(0, 8)
		event.CharaActive(0, 0)
		event.CharaActive(1, 9)
		event.CharaActive(1, 10)
		event.CmrsSetPos(-155.09, 107.3, 7.35)
		event.CmrsSetRef(-110.59, 116.9, -6.56)
		event.ObjsSetPos(2, -21.45, 49.19, 21.76)
		event.ObjsSetRot(2, 0.0, -1.87, 0.0)
		event.ObjsSetScale(2, 1.2, 1.2, 1.2)
		event.ObjsSetPos(3, -69.17, 111.79, -20.32)
		event.ObjsSetRot(3, 0.0, -1.75, 0.0)
		event.ObjsSetMotion(3, "浮遊", 4)
		event.SetPakuAnim(3, "わらい口パク")
		at = 64
		helper_4116e6bb(1040210)
		event.ResetPakuAnim()
		event.SndSePlay(var4, 23)
		event.ObjsSetMotion(3, "殺っておしまい", 6)
		event.ObjsNextMotion(3, "殺っておしまいL")
		event.SetPakuAnim(3, "わらい口パク")
		at = 65
		helper_4116e6bb(1040211)
		event.ResetPakuAnim()
		at = 66
		wait_objects(3)
		event.CharaActive(0, 10)
		event.CmrsSetPos(-166.8, 110.8, 7.81)
		event.CmrsSetRef(-73.91, 78.74, 3.61)
		event.ObjsSetPos(2, -20.92, 49.19, 0.18)
		event.ObjsSetRot(2, 0.0, -1.51, 0.0)
		projection_2 = event.GetProjection() or projection_2
		event.ObjsSetMotion(2, "突進", 4)
		event.CmrsQuake(0.0, 1.0, 0.0, 60)
		event.CmrsMove(-524.07, 92.61, 14.81, -374.2, 78.74, 8.04, 60)
		event.ObjsMove(2, -408.03, 50.0, 7.63, 60)
		at = 67
		helper_7ebf20c8(projection_2, vm.f32(524.9), 60, var5)
		event.SetProjection(projection_2)
		event.CharaActive(1, 0)
		event.CharaActive(1, 8)
		event.CmrsInit()
		event.CmrsSetPos(-289.45, 186.74, -103.76)
		event.CmrsSetRef(-436.94, 140.81, -26.0)
		event.ObjsSetPos(0, 0.0, 0.0, 0.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetScale(0, 1.0, 1.0, 1.0)
		event.SetReference(8, "mints", 0)
		event.ObjsSetPos(1, -504.42, 50.21, 25.83)
		event.ObjsSetRot(1, 0.0, 1.48, 0.0)
		event.ObjsSetScale(1, 1.0, 1.0, 1.0)
		event.ObjsSetPos(2, -316.2, 45.22, 44.35)
		event.ObjsSetRot(2, 0.0, -1.56, 0.0)
		event.ObjsSetMotion(0, "スティーブに乗るL", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(2, "突進", 4)
		event.ObjsMotionDelay(2, 10)
		event.ObjsSetMotion(2, "立ち")
		event.ObjsMove(2, -366.82, 45.22, 14.07, 15)
		event.ObjsSetMotion(1, "バックジャンプ", 6, 0.4)
		event.SndSePlay(var4, 24)
		event.ObjsJump(1, -744.89, 134.13, 0.74, -0.35, 33)
		at = 68
		wait_objects(2)
		at = 69
		wait_objects(1)
		event.CmrsSetPos(-640.55, 176.56, -6.9)
		event.CmrsSetRef(-739.25, 169.31, -1.66)
		event.ObjsSetPos(1, -734.79, 134.97, -2.3)
		event.ObjsSetRot(1, 0.0, 1.64, 0.0)
		event.ObjsSetMotion(0, "スティーブに乗るL", 4, -1.0, 1)
		event.ObjsSetMotion(1, "立ち", 4)
		at = 70
		wait_frames(15)
		event.ObjsSetMotion(1, "さらばじゃ", 2)
		event.SndSePlay(var4, 25)
		event.SetPakuAnim(1, "口パク")
		at = 71
		helper_4116e6bb(1040220)
		event.ResetPakuAnim()
		event.SndSePlay(var4, 26)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsRotation(1, 0.0, -1.6, 0.0, 30)
		at = 72
		wait_objects(1)
		event.ObjsMove(1, -937.66, 134.97, -0.71, 60)
		at = 73
		wait_objects(1)
		event.CharaActive(1, 10)
		event.CmrsSetPos(-326.4, 171.06, 5.03)
		event.CmrsSetRef(87.54, 136.02, -63.19)
		event.ObjsSetPos(2, -343.04, 49.6, -15.01)
		event.ObjsSetRot(2, 0.0, 0.12, 0.0)
		event.ObjsSetPos(3, -286.2, 134.97, -1.83)
		event.ObjsSetRot(3, 0.0, -1.72, 0.0)
		event.ObjsSetMotion(1, "立ち", 4)
		event.SndSeStop(var4, 15)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetMotion(3, "あらあら", 4)
		event.SetPakuAnim(3, "わらい口パク")
		at = 74
		helper_4116e6bb(1040230)
		event.ResetPakuAnim()
		at = 75
		wait_objects(3)
		event.CmrsSetPos(-584.1, 136.54, 9.53)
		event.CmrsSetRef(87.54, 80.4, -63.19)
		event.ObjsSetPos(3, -344.47, 145.98, -65.24)
		event.ObjsSetRot(3, 0.0, -1.36, 0.0)
		event.ObjsSetMotion(2, "立ち", 4)
		event.SndSePlay(var4, 27)
		event.CmrsFadeInit()
		event.CmrsFadeDelay(18)
		event.CmrsFadeOut(100, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(2, "パオーン", 6)
		at = 76
		wait_objects(2)
		at = 77
		wait_camera()
	end, function(received: { any }): boolean
		if at <= 1 then
			wait_frames_skipping(4)
		end
		if at <= 2 then
			wait_frames_skipping(15)
		end
		if at <= 3 then
			helper_8cd371d7(1040010)
		end
		if at <= 5 then
			var10 = 40
			var9 = 1
			var6 = vm.f32(vm.fdiv(vm.f32(vm.f32(867.9) - projection_2), var10))
			projection_3 = vm.f32(var6 * var9)
			projection_3 = vm.f32(projection_2 + projection_3)
		end
		if at <= 6 then
			local _ = var9 < var10
			var9 = var9 + 1
			wait_frames_skipping(15)
		end
		if at <= 7 then
			helper_8cd371d7(1040020)
		end
		if at <= 8 then
			wait_frames_skipping(15)
		end
		if at <= 9 then
			helper_52aadc70(1040030, 30)
		end
		if at <= 10 then
			helper_bed17389(50, var5)
		end
		if at <= 11 then
			wait_frames_skipping(15)
		end
		if at <= 12 then
			helper_52aadc70(1040040, 30)
		end
		if at <= 13 then
			helper_238b5abc(2)
		end
		if at <= 14 then
			helper_238b5abc(7)
		end
		if at <= 15 then
			wait_frames_skipping(28)
		end
		if at <= 16 then
			helper_238b5abc(2)
		end
		if at <= 17 then
			helper_52aadc70(1040050, 30)
		end
		if at <= 18 then
			helper_52aadc70(1040060, 25)
		end
		if at <= 19 then
			helper_344d6cd8()
		end
		if at <= 20 then
			wait_frames_skipping(30)
		end
		if at <= 21 then
			helper_8cd371d7(1040070)
		end
		if at <= 22 then
			wait_frames_skipping(3)
		end
		if at <= 23 then
			helper_8cd371d7(1040080)
		end
		if at <= 24 then
			helper_8cd371d7(1040090)
		end
		if at <= 25 then
			wait_frames_skipping(3)
		end
		if at <= 26 then
			var3 = 1
		end
		if at <= 27 then
			local _ = var3 < 33
			var3 = var3 + 1
			helper_238b5abc(1)
		end
		if at <= 28 then
			helper_238b5abc(2)
		end
		if at <= 29 then
			var3 = 0
		end
		if at <= 30 then
			local _ = var3 < 75
			local _ = var3 < 55
			local _ = vm.imod(var3, 4) == 0
			local _ = var3 == 57
			var3 = var3 + 1
			helper_238b5abc(1)
		end
		if at <= 31 then
			helper_238b5abc(2)
		end
		if at <= 32 then
			helper_344d6cd8()
		end
		if at <= 33 then
			wait_frames_skipping(15)
		end
		if at <= 34 then
			helper_8cd371d7(1040100)
		end
		if at <= 35 then
			wait_frames_skipping(3)
		end
		if at <= 36 then
			helper_8cd371d7(1040110)
		end
		if at <= 37 then
			helper_238b5abc(3)
		end
		if at <= 38 then
			helper_8cd371d7(1040120)
		end
		if at <= 39 then
			helper_238b5abc(3)
		end
		if at <= 40 then
			wait_frames_skipping(100)
		end
		if at <= 41 then
			wait_frames_skipping(50)
		end
		if at <= 43 then
			wait_frames_skipping(30)
		end
		if at <= 44 then
			helper_8cd371d7(1040130)
		end
		if at <= 45 then
			helper_238b5abc(1)
		end
		if at <= 46 then
			helper_344d6cd8()
		end
		if at <= 47 then
			helper_8cd371d7(1040140)
		end
		if at <= 48 then
			helper_238b5abc(1)
		end
		if at <= 49 then
			helper_8cd371d7(1040150)
		end
		if at <= 50 then
			helper_8cd371d7(1040160)
		end
		if at <= 51 then
			helper_8cd371d7(1040170)
		end
		if at <= 52 then
			helper_238b5abc(1)
		end
		if at <= 53 then
			helper_8cd371d7(1040171)
		end
		if at <= 54 then
			helper_8cd371d7(1040172)
		end
		if at <= 55 then
			helper_8cd371d7(1040180)
		end
		if at <= 56 then
			helper_8cd371d7(1040190)
		end
		if at <= 57 then
			helper_8cd371d7(1040200)
		end
		if at <= 58 then
			wait_frames_skipping(15)
		end
		if at <= 59 then
			helper_8cd371d7(1040201)
		end
		if at <= 60 then
			helper_238b5abc(1)
		end
		if at <= 61 then
			helper_238b5abc(0)
		end
		if at <= 62 then
			wait_frames_skipping(15)
		end
		if at <= 63 then
			helper_8cd371d7(1040210)
		end
		if at <= 64 then
			helper_8cd371d7(1040211)
		end
		if at <= 65 then
			helper_238b5abc(3)
		end
		if at <= 66 then
			helper_e7468727(projection_2, vm.f32(524.9), 60, var5)
		end
		if at <= 67 then
			helper_238b5abc(2)
		end
		if at <= 68 then
			helper_238b5abc(1)
		end
		if at <= 69 then
			wait_frames_skipping(15)
		end
		if at <= 70 then
			helper_8cd371d7(1040220)
		end
		if at <= 71 then
			helper_238b5abc(1)
		end
		if at <= 72 then
			helper_238b5abc(1)
		end
		if at <= 73 then
			helper_8cd371d7(1040230)
		end
		if at <= 74 then
			helper_238b5abc(3)
		end
		if at <= 75 then
			helper_238b5abc(2)
		end
		if at <= 76 then
			helper_344d6cd8()
		end
		return true
	end)
	at = 78
	vm.entry(78)
	event.CancelDramaScene()
	event.StopBgm(0)
	at = 79
	wait_frames(4)
	event.EsmClear()
	event.SndSeStop(var4, 4)
	event.SndSeStop(var4, 10)
	event.SndSeStop(var4, 15)
	event.SndSeStop(var4, 20)
	event.SndSeStop(var4, 28)
	event.SetScale(0, 1.0, 1.0, 1.0)
	event.SetProjection(projection)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.DeleteChara(18)
end

return helper_8a5b59a2
