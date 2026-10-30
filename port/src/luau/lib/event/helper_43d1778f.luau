--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_43d1778f()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local result: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(520, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(35)
		event.LoadSound(5806)
		var0 = event.SndLoadSound_2(5806) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		print("1--------------------------------\n")
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
			active_chr_no = 0
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
			active_chr_no = 1
		end
		event.ChangeDir("event/e500/e520/")
		event.LoadMes(0, 5, "e520_1.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e520_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e520_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 9)
			event.LoadEquip(5, 0, 4, "info", 9)
			event.LoadEquip(5, 0, 3, "info", 9)
			event.LoadEquip(5, 0, 2, "info", 9, 10)
			event.LoadMotion(5, "event/e500/e520/e520_mints.gltf", "info", 9)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 9)
			event.EohSyncChara(0, 9)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 9)
			event.LoadEquip(5, 1, 4, "info", 9)
			event.LoadEquip(5, 1, 3, "info", 9)
			event.LoadEquip(5, 1, 2, "info", 9, 10)
			event.LoadEquip(5, 1, 0, "info", 9, 14)
			event.LoadMotion(5, "event/e500/e520/e520_monica.gltf", "info", 9)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 9)
			event.EohSyncChara(1, 9)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.EohSyncChara(5, 14)
			event.ObjsInit(5)
			event.ObjsSyncObj(5, 5)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(9)
		event.CharaActive(10)
		event.LoadChara(5, "event/e500/e520/e520_guiltoni.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(2, 11)
		event.ObjsInit(2, 11)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "event/e500/e520/e520_dsmoke.gltf", "info", 12)
		event.CharaActive(12)
		event.EohSyncChara(3, 12)
		event.ObjsInit(3, 12)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "event/e500/e520/e520_mahou_h.gltf", "info", 13)
		event.CharaActive(13)
		event.EohSyncChara(4, 13)
		event.ObjsInit(4, 13)
		event.ObjsSyncObj(4, 4)
		event.EohSyncObj_2(16, "p01_battleship")
		event.ObjsInit(16)
		event.ObjsSyncObj(16, 16)
		event.EohSyncObj_2(17, "p03_s2001")
		event.ObjsInit(17)
		event.ObjsSyncObj(17, 17)
		event.EohSyncObj_2(18, "p04_s2001")
		event.ObjsInit(18)
		event.ObjsSyncObj(18, 18)
		event.EohSyncObj_2(19, "firesquall")
		event.ObjsInit(19)
		event.ObjsSyncObj(19, 19)
		event.EohSyncObj_2(20, "p01_s2001")
		event.ObjsInit(20)
		event.ObjsSyncObj(20, 20)
		event.EohSetShow(20, 1)
		event.SweInit(14, 0, 5, 16, 8)
		event.SweSetTexture(14, 0, 74, "sweff", 0, 0, 64, 32)
		event.SweInit(14, 1, 5, 16, 8)
		event.SweSetTexture(14, 1, 74, "sweff", 0, 0, 64, 32)
		event.EsmInitialize(5)
		event.EsmLoadBase("EVモニカ魔法－火")
		event.EsmLoadBase("EVモニカ魔法－火ヒット")
		event.EsmLoadBase("モニカ魔法－溜め")
		event.EsmInitFix(5)
		event.CharaActive(0, 14)
		event.EohSetPos(0, -3391.16, 181.07, 100.69)
		event.EohSetRot(0, 0.0, -1.89, 0.0)
		event.EohSetMotion(0, "爆弾セット", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, -792.45, 0.0, 2890.7)
		event.EohSetRot(1, 0.0, -2.13, 0.0)
		event.EohSetMotion(1, "走り", 4)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(2, -1961.74, 308.38, 537.92)
		event.EohSetRot(2, 0.0, 0.51, 0.0)
		event.EohSetMotion(2, "ガキどもめ", 4)
		event.EohSetFootSoundId(2, 2)
		event.EohSetPos(16, 1209.2, 1334.3, 0.0)
		event.EohSetRot(16, 0.0, -1.5707964, 0.0)
		event.EohSetPos(3, 1209.2, 1334.3, 0.0)
		event.EohSetRot(3, 0.0, -2.65, 0.0)
		event.EohSetShow(2, 1)
		event.EohSetShow(3, 1)
		event.EohSetShow(4, 0)
		event.EohSetShow(16, 1)
		event.EohSetShow(17, 0)
		event.EohSetShow(18, 1)
		event.EohSetShow(19, 0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-1069.43, 18.8, 3159.35)
		event.CmrsSetRef(-1009.32, 43.21, 3030.33)
		event.SetProjection(524.9)
		event.CharaActive(0)
		event.CharaActive(9)
		event.CharaActive(10)
		event.ObjsMove(16, -389.1, 820, 0.0, 120)
		event.ObjsMove(3, -389.1, 820, 0.0, 120)
		event.ObjsSetMotion(1, "右向き走り")
		event.ObjsMove(1, -985.05, 0.0, 2803.03, 120, 1)
		event.EohSetFrameShow(2, "obj89", 0)
		event.SetStatus(1, 0, 8, 1)
		event.SetStatus(1, 9, 8, 1)
		event.SetStatus(1, 11, 8, 1)
		event.SetFadeIn(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		print("2--------------------------------\n")
		event.SndSePlay(var0, 2)
		at = 3
		wait_frames(120)
		print("3--------------------------------\n")
		event.CmrsSetPos(-1986.48, 333.67, 558.59)
		event.CmrsSetRef(-1965.0, 337.43, 540.26)
		event.SndSeStop(var0, 2)
		event.SndSePlay(var0, 3)
		print("4--------------------------------\n")
		event.ObjsSetPos(16, -1947.7, 307.5, 101.3)
		event.ObjsSetRot(16, 0.0, -2.1031218, 0.0)
		event.ObjsSetPos(3, 1209.2, 1334.3, 0.0)
		event.ObjsSetRot(3, 0.0, -2.1031218, 0.0)
		event.ObjsSetPos(1, -2813.58, 84.71, 768.64)
		event.ObjsSetRot(1, 0.0, 2.47, 0.0)
		x = vm.f32(-2438.17)
		y = vm.f32(332.67)
		z = 341.25
		do
			local out1, out2, out3 = event.SubVector(x, y, z, -2380.18, 330.38, 324.27)
			x = out1 or x
			y = out2 or y
			z = out3 or z
		end
		event.SetWind(10, x, y, z)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "おこり顔")
		event.ObjsTexAnime(2, 1, "下目パチ")
		event.SetPakuAnim(2, "通常口パク")
		at = 4
		helper_1584c528(5200010, -1)
		event.SndSeStop(var0, 3)
		event.SndSePlay(var0, 4)
		event.CmrsQuake(0.0, 1.0, 0.0, 30)
		event.ObjsSetMotion(2, "落ちる", 6)
		event.ObjsNextMotion(2, "落ちるL", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "おこり顔")
		event.ObjsTexAnime(2, 1, "下向き～上向き")
		at = 5
		wait_frames(10)
		at = 6
		wait_camera()
		event.SndSeStop(var0, 4)
		event.PlayBgm(0)
		event.CmrsSetPos(-2696.98, 45.16, 871.07)
		event.CmrsSetRef(-2807.7, 201.06, 594.2)
		event.SndSePlay(var0, 5)
		event.SndSePlay(var0, 6)
		event.CmrsQuake(0.0, 1.0, 0.0, 30)
		event.EohSetFootSoundId(1, 6)
		event.ObjsMove(1, -2763.63, 157.55, 674.32, 60)
		at = 7
		wait_frames(60)
		event.SndSeStop(var0, 6)
		event.ObjsMove(1, -2672.25, 236.43, 545.71, 60)
		at = 8
		wait_frames(60)
		event.SndSeStop(var0, 5)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 1, "大口")
		event.ObjsSetPos(2, -1997.03, 308.38, 480.43)
		event.ObjsSetRot(2, 0.0, -2.61, 0.0)
		event.ObjsSetMotion(2, "なに？")
		event.ObjsSetPos(1, -2470.35, 281.36, 358.2)
		event.ObjsSetRot(1, 0.0, 1.99, 0.0)
		event.ObjsResetDaPosition(1)
		event.SetProjection(350.9)
		event.CmrsSetPos(-2437.16, 269.25, 417.91)
		event.CmrsSetRef(-2453.36, 309.91, 353.75)
		event.SndSePlay(var0, 7)
		event.ObjsSetMotion(1, "飛び", 6)
		event.ObjsNextMotion(1, "飛びL", 4)
		event.ObjsMove(1, -2414.26, 303.6, 328.1, 60)
		event.CmrsMove(-2415.91, 282.04, 390.68, -2416.07, 304.55, 359.36, 60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.SetPakuAnim(1, "大口パク")
		at = 9
		helper_1584c528(5200020, 50)
		at = 10
		wait_frames(5)
		event.ObjsSetPos(1, -2282.71, 308.37, 346.12)
		event.CmrsSetPos(-2025.37, 340.27, 478.9)
		event.CmrsSetRef(-1996.22, 338.59, 478.94)
		event.SetProjection(524.9)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "おこり顔")
		event.ObjsTexAnime(2, 1, "下目～おどろき目")
		event.SetPakuAnim(2, "大口パク")
		at = 11
		helper_1584c528(5200030, -1)
		event.CmrsSetPos(-1937.42, 385.84, 606.52)
		event.CmrsSetRef(-2052.1, 341.76, 476.36)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.EohSetFootSoundId(1, 2)
		event.ObjsSeDelay(1, 30)
		event.ObjsSePlay(1, var0, 9)
		event.ObjsSetMotion(1, "着地2", 4)
		event.ObjsSetStep(1, 0.25)
		event.ObjsNextMotion(1, "着地立ち", 6)
		event.ObjsSetRot(1, 0.0, 1.99, 0.0)
		at = 12
		wait_frames(30)
		event.SetCrossfade(30)
		event.CmrsSetPos(-2045.44, 316.91, 227.14)
		event.CmrsSetRef(-2093.8, 322.86, 203.57)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.CharaActive(14)
		event.ObjsSetPos(1, -2098.82, 307.87, 203.15)
		event.ObjsSetRot(1, 0.0, 3.07, 0.0)
		event.ObjsResetDaPosition(1)
		at = 13
		wait_frames(90)
		event.ObjsSetMotion(2, "ガード連スタート", 4)
		event.ObjsSetMotion(1, "魔法構え", 6)
		event.ObjsNextMotion(1, "魔法構えL", 4)
		event.ObjsSetPos(2, -2098.82, 307.87, 203.15)
		event.ObjsSetRot(2, 0.0, 1.27, 0.0)
		at = 14
		wait_objects(1)
		event.SndSePlay(var0, 10)
		do
			local out1, out2, out3 = event.EohGetFramePos(1, "item")
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		result = event.EsmCreate_3("モニカ魔法－溜め", 9) or result
		event.EsmSetVect1(pos_x, pos_y, pos_z)
		event.EsmSetVect2(128, 64, 64)
		event.SetPakuAnim(1, "通常口パク")
		at = 15
		helper_1584c528(5200040, -1)
		at = 16
		wait_frames(30)
		event.ObjsSetMotion(1, "魔法撃つ", 4)
		event.SndSeStop(var0, 10)
		event.SndSePlay(var0, 11)
		event.EsmCreate_2("EVモニカ魔法－火", 9)
		event.EsmSetVect1(pos_x, pos_y, pos_z)
		event.EsmSetTargetId(-1)
		event.EsmFinish(9, result)
		at = 17
		wait_frames(20)
		event.ObjsSetMotion(1, "魔法撃つ", 4)
		event.SndSePlay(var0, 11)
		event.EsmCreate_2("EVモニカ魔法－火", 9)
		event.EsmSetVect1(pos_x, pos_y, pos_z)
		event.EsmSetTargetId(-1)
		event.EsmFinish(9, result)
		at = 18
		wait_frames(10)
		event.ObjsSetMotion(1, "魔法撃つ", 4)
		event.SndSePlay(var0, 11)
		event.EsmCreate_2("EVモニカ魔法－火", 9)
		event.EsmSetVect1(pos_x, pos_y, pos_z)
		event.EsmSetTargetId(-1)
		event.EsmFinish(9, result)
		at = 19
		wait_frames(10)
		event.EohSetShow(20, 0)
		event.CmrsSetPos(-1961.75, 323.59, 207.69)
		event.CmrsSetRef(-2049.52, 323.57, 217.76)
		event.ObjsSetRot(1, 0.0, 1.27, 0.0)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "おこり顔")
		event.ObjsTexAnime(2, 1, "おこり目パチ")
		event.SndSePlay(var0, 12)
		event.SetCharaType(13, 4)
		event.EohSetShow(4, 1)
		event.ObjsSetPos(4, -2039.14, 327.12, 209.19)
		event.ObjsSetMotion(4, "魔法ヒット", 6)
		at = 20
		wait_objects(4)
		at = 21
		wait_frames(30)
		event.SndSePlay(var0, 13)
		event.ObjsSetMotion(1, "よけ2つ")
		event.ObjsMotionWait(1)
		event.ObjsSetMotion(2, "よけ2つ")
		event.ObjsMotionWait(2)
		at = 22
		wait_frames(15)
		event.SweStartEffect(14, 0, "dcol00", "dcol01", 94, 6, 6)
		at = 23
		wait_frames(15)
		event.SweStartEffect(14, 0, "dcol00", "dcol01", 94, 6, 6)
		at = 24
		wait_frames(10)
		event.SweStartEffect(14, 0, "dcol00", "dcol01", 94, 6, 6)
		at = 25
		wait_frames(20)
		event.EohSetFrameShow(2, "obj88", 0)
		event.EohSetFrameShow(2, "obj89", 1)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 1, "大口")
		event.CmrsSetPos(-2063.52, 323.93, 286.2)
		event.CmrsSetRef(-2027.6, 321.15, 217.1)
		event.ObjsSetPos(2, -2027.94, 307.87, 217.37)
		event.ObjsSetRot(2, 0.0, -0.41, 0.0)
		event.ObjsResetDaPosition(2)
		event.ObjsSetPos(1, -2027.94, 307.87, 217.37)
		event.ObjsSetRot(1, 0.0, -0.41, 0.0)
		event.ObjsResetDaPosition(1)
		event.SndSePlay(var0, 14)
		event.ObjsSetMotion(1, "ムーンサルト", 6)
		event.ObjsMotionWait(1)
		event.ObjsSetMotion(2, "ムーンサルト", 6)
		event.ObjsMotionWait(2)
		at = 26
		wait_frames(10)
		event.SweStartEffect(14, 0, "dcol00", "dcol01", 94, 6, 6)
		at = 27
		wait_objects(1)
		event.CmrsSetPos(-2082.67, 325.7, 160.89)
		event.CmrsSetRef(-2021.3, 327.3, 209.89)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.SndSePlay(var0, 15)
		event.ObjsSetMotion(1, "ぐらっ", 6)
		event.ObjsSetStep(1, 0.7)
		event.ObjsNextMotion(1, "ぐらっL", 4)
		event.ObjsSetMotion(2, "ぐらっ", 6)
		event.ObjsSetStep(1, 0.7)
		event.ObjsNextMotion(2, "ぐらっL", 4)
		event.SndSePlay(var0, 16)
		event.CmrsQuakeDelay(15)
		event.CmrsQuake(0.0, 1.0, 0.0, 30)
		at = 28
		wait_frames(15)
		event.SetPakuAnim(1, "通常口パク")
		at = 29
		helper_1584c528(5200050, -1)
		event.CmrsSetPos(-2043.31, 334.08, 203.6)
		event.CmrsSetRef(-2013.93, 336.49, 194.04)
		event.ObjsSeDelay(2, 8)
		event.ObjsSePlay(2, var0, 20)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "わらい顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.SetPakuAnim(2, "わらい口パク")
		at = 30
		helper_1584c528(5200060, -1)
		event.CmrsSetPos(-2058.89, 312.45, 158.48)
		event.CmrsSetRef(-2022.95, 325.53, 214.99)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目～かはっ目")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "わらい顔")
		event.ObjsTexAnime(2, 1, "下目パチ")
		event.ObjsSetMotion(1, "殴り", 6)
		event.ObjsNextMotion(1, "殴りL", 4)
		event.ObjsSetMotion(2, "殴り", 6)
		event.ObjsNextMotion(2, "殴りL", 4)
		at = 31
		wait_frames(10)
		event.ObjsTexAnime(1, 1, "口とじ～大口")
		at = 32
		helper_1584c528(5200070, -1)
		event.ObjsMotionWait(2)
		at = 33
		wait_objects(1)
		event.CmrsSetPos(-2025.6, 317.11, 283.22)
		event.CmrsSetRef(-2022.52, 324.9, 217.92)
		at = 34
		wait_frames(20)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "くるし顔")
		event.DelReference(14)
		event.ObjsSetPos(5, -2016.36, 313.05, 230.26)
		event.ObjsSetRot(5, 0.5, 1.67, 0.8)
		event.CmrsSetPos(-2038.22, 330.43, 198.53)
		event.CmrsSetRef(-2027.97, 333.86, 219.66)
		event.ObjsSetMotion(1, "殴られ顔", 4)
		event.ObjsResetDaPosition(1)
		at = 35
		wait_frames(30)
		event.CmrsSetPos(-2063.52, 323.93, 286.2)
		event.CmrsSetRef(-2027.6, 321.15, 217.1)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "くるし顔")
		event.ObjsTexAnime(1, 1, "かはっ目～目とじ")
		event.ObjsTexAnime(1, 1, "口あけ～口とじ")
		event.SndSePlay(var0, 21)
		event.SndSePlay(var0, 22)
		event.ObjsMove(5, -2016.36, 308.85, 230.26, 6)
		event.ObjsRotation(5, 0.0, 1.67, 0.0, 6)
		event.ObjsMove(5, -2016.36, 310.0, 230.26, 6)
		event.ObjsRotation(5, 0.4, 1.67, 0.5, 6)
		event.ObjsMove(5, -2016.36, 308.85, 230.26, 5)
		event.ObjsRotation(5, 0.0, 1.67, 0.0, 5)
		event.ObjsSetMotion(1, "かかえ", 6)
		event.ObjsNextMotion(1, "かかえL", 4)
		event.ObjsSetMotion(2, "かかえ", 6)
		event.ObjsNextMotion(2, "かかえL", 4)
		event.ObjsMotionWait(2)
		at = 36
		wait_frames(60)
		event.ObjsSetPos(0, -2213.52, 0.0, 1691.84)
		event.ObjsSetRot(0, 0.0, 2.83, 0.0)
		event.CmrsSetPos(-2040.48, 335.59, 231.83)
		event.CmrsSetRef(-2021.29, 337.31, 214.72)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "死に")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "下目パチ")
		event.SetPakuAnim(2, "通常口パク")
		at = 37
		helper_1584c528(5200080, -1)
		event.CmrsQuakeDelay(30)
		event.CmrsQuake(0.0, 0.2, 0.0, -1)
		event.SndSePlay(var0, 23)
		at = 38
		wait_frames(60)
		event.ObjsSetMotion(2, "上見", 6)
		event.ObjsNextMotion(2, "上見L", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "おこり目パチ")
		event.SetPakuAnim(2, "おこり口パク")
		at = 39
		helper_1584c528(5200090, -1)
		event.SndSeStop(var0, 8)
		event.SndSeStop(var0, 23)
		event.SetWind(-1)
		event.CmrsInit()
		event.EohSetShow(20, 1)
		event.CmrsSetPos(-2307.42, 27.19, 1937.3)
		event.CmrsSetRef(-2258.86, 36.53, 1808.93)
		at = 40
		wait_frames(10)
		event.SndSePlay(var0, 24)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.EohSetShow(2, 0)
		event.EohSetShow(1, 0)
		event.EohSetShow(5, 0)
		event.ObjsMove2(16, -604.5, -2501, 66.7, 360, 1, 0.7)
		event.ObjsRotation2(16, 0.0, -1.9024088, -0.6894051, 210, 1, 0.7)
		event.ObjsMove2(3, -604.5, -2501, 66.7, 360, 1, 0.7)
		event.ObjsRotation2(3, 0.0, -1.6057029, -0.6894051, 210, 1, 0.7)
		at = 41
		wait_frames(90)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.SetPakuAnim(0, "大口パク")
		at = 42
		helper_1584c528(5200100, 60)
		event.CmrsMove2(-2198.1, 30.55, 1580.48, -2105.26, 29.78, 1380.32, 120, 1, 0.5)
		event.CmrsMove2(-2085.28, 88.8, 1337.19, -1972.16, 302.92, 1093.31, 90, 2, 1.0)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, -2112.56, 0.0, 1396.51, 160)
		event.ObjsMotionDelay(0, 160)
		event.ObjsSetMotion(0, "立ち")
		at = 43
		wait_frames(90)
		event.FadeOutBgm(90)
		event.SetPakuAnim(0, "大口パク")
		at = 44
		helper_1584c528(5200110, 90)
		event.SetFadeOut(30)
		at = 45
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			wait_frames_skipping(4)
		end
		if at <= 2 then
			print("1--------------------------------\n")
			local _ = active_chr_no == 2
			active_chr_no = 0
			local _ = active_chr_no == 3
			active_chr_no = 1
			print("2--------------------------------\n")
			wait_frames_skipping(120)
		end
		if at <= 3 then
			print("3--------------------------------\n")
			print("4--------------------------------\n")
			x = vm.f32(-2438.17)
			y = vm.f32(332.67)
			z = 341.25
			helper_52aadc70(5200010, -1)
		end
		if at <= 4 then
			wait_frames_skipping(10)
		end
		if at <= 5 then
			helper_344d6cd8()
		end
		if at <= 6 then
			wait_frames_skipping(60)
		end
		if at <= 7 then
			wait_frames_skipping(60)
		end
		if at <= 8 then
			helper_52aadc70(5200020, 50)
		end
		if at <= 9 then
			wait_frames_skipping(5)
		end
		if at <= 10 then
			helper_52aadc70(5200030, -1)
		end
		if at <= 11 then
			wait_frames_skipping(30)
		end
		if at <= 12 then
			wait_frames_skipping(90)
		end
		if at <= 13 then
			helper_238b5abc(1)
		end
		if at <= 14 then
			helper_52aadc70(5200040, -1)
		end
		if at <= 15 then
			wait_frames_skipping(30)
		end
		if at <= 16 then
			wait_frames_skipping(20)
		end
		if at <= 17 then
			wait_frames_skipping(10)
		end
		if at <= 18 then
			wait_frames_skipping(10)
		end
		if at <= 19 then
			helper_238b5abc(4)
		end
		if at <= 20 then
			wait_frames_skipping(30)
		end
		if at <= 21 then
			wait_frames_skipping(15)
		end
		if at <= 22 then
			wait_frames_skipping(15)
		end
		if at <= 23 then
			wait_frames_skipping(10)
		end
		if at <= 24 then
			wait_frames_skipping(20)
		end
		if at <= 25 then
			wait_frames_skipping(10)
		end
		if at <= 26 then
			helper_238b5abc(1)
		end
		if at <= 27 then
			wait_frames_skipping(15)
		end
		if at <= 28 then
			helper_52aadc70(5200050, -1)
		end
		if at <= 29 then
			helper_52aadc70(5200060, -1)
		end
		if at <= 30 then
			wait_frames_skipping(10)
		end
		if at <= 31 then
			helper_52aadc70(5200070, -1)
		end
		if at <= 32 then
			helper_238b5abc(1)
		end
		if at <= 33 then
			wait_frames_skipping(20)
		end
		if at <= 34 then
			wait_frames_skipping(30)
		end
		if at <= 35 then
			wait_frames_skipping(60)
		end
		if at <= 36 then
			helper_52aadc70(5200080, -1)
		end
		if at <= 37 then
			wait_frames_skipping(60)
		end
		if at <= 38 then
			helper_52aadc70(5200090, -1)
		end
		if at <= 39 then
			wait_frames_skipping(10)
		end
		if at <= 40 then
			wait_frames_skipping(90)
		end
		if at <= 41 then
			helper_52aadc70(5200100, 60)
		end
		if at <= 42 then
			wait_frames_skipping(90)
		end
		if at <= 43 then
			helper_52aadc70(5200110, 90)
		end
		if at <= 44 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 46
	vm.entry(46)
	event.CancelDramaScene()
	event.SetStatus(1, 0, 8, 0)
	event.SetStatus(1, 9, 8, 0)
	event.SetStatus(1, 11, 8, 0)
	event.SetWind(-1)
	event.EohSetShow(3, 0)
	event.EohSetShow(16, 0)
	event.StopBgm(0)
	event.SndSeStop(var0, 2)
	event.SndSeStop(var0, 3)
	event.SndSeStop(var0, 4)
	event.SndSeStop(var0, 5)
	event.SndSeStop(var0, 6)
	event.SndSeStop(var0, 8)
	event.SndSeStop(var0, 9)
	event.SndSeStop(var0, 10)
	event.SndSeStop(var0, 16)
	event.SndSeStop(var0, 23)
	event.SndSeStop(var0, 24)
	event.EohSetShow(16, 0)
	event.EohSetShow(20, 1)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSetPos(16, 3139.7, 9.0, 918.2)
	event.Ext(703, 16, 2.4260077, 0.0) -- retail: the handler rejects 3 arguments
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.LoadMes(0, -1)
	event.DelImg(0)
	event.DelImg(1)
	event.EsmClear()
	event.CharaActive(0)
	event.SetCharaPos(0, -2213.52, 0.0, 1691.84)
	event.SetCharaRot(0, 0.0, 2.59, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetStatusbarShow(1, 1.0)
	event.SetFadeIn(30)
end

return helper_43d1778f
