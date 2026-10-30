--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_55215ed6()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local var6: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(516, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(30)
		event.PlayBgm(0)
		event.LoadSound(5803)
		var0 = event.SndLoadSound_2(5803) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e500/e516/")
		event.LoadMes(0, 5, "e516_1.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e516_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e516_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		block = event.LoadImg_4(5, "e516telop01_1.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e516telop01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(29, 0)
		event.ObjsInit(29)
		event.ObjsSyncObj(29, 29)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 9)
			event.LoadEquip(5, 0, 4, "info", 9)
			event.LoadEquip(5, 0, 3, "info", 9)
			event.LoadEquip(5, 0, 2, "info", 9, 10)
			event.LoadMotion(5, "event/e500/e516/e516_mints.gltf", "info", 9)
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
			event.LoadMotion(5, "event/e500/e516/e516_monica.gltf", "info", 9)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 9)
			event.EohSyncChara(1, 9)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(9)
		event.CharaActive(10)
		event.LoadChara(5, "event/e500/e516/e516_guiltoni.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(2, 11)
		event.ObjsInit(2, 11)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "event/e500/e516/e516_daibaku.gltf", "info", 15)
		event.CharaActive(15)
		event.EohSyncChara(6, 15)
		event.ObjsInit(6, 15)
		event.ObjsSyncObj(6, 6)
		event.CopyChara(5, 15, 16)
		event.CharaActive(16)
		event.EohSyncChara(7, 16)
		event.ObjsInit(7, 16)
		event.ObjsSyncObj(7, 7)
		event.CopyChara(5, 16, 17)
		event.CharaActive(17)
		event.EohSyncChara(8, 17)
		event.ObjsInit(8, 17)
		event.ObjsSyncObj(8, 8)
		event.LoadChara(5, "event/e500/e516/e352_gun_f.gltf", "info", 12)
		event.CharaActive(12)
		event.EohSyncChara(3, 12)
		event.ObjsInit(3, 12)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "event/e500/e516/e516_hou_tyaku.gltf", "info", 18)
		event.CharaActive(18)
		event.EohSyncChara(9, 18)
		event.ObjsInit(9, 18)
		event.ObjsSyncObj(9, 9)
		event.LoadChara(5, "event/e500/e516/e516_gun_s.gltf", "info", 13)
		event.CharaActive(13)
		event.EohSyncChara(4, 13)
		event.ObjsInit(4, 13)
		event.ObjsSyncObj(4, 4)
		event.CopyChara(5, 13, 14)
		event.CharaActive(14)
		event.EohSyncChara(5, 14)
		event.ObjsInit(5, 14)
		event.ObjsSyncObj(5, 5)
		event.LoadChara(5, "event/e500/e516/e516_gun_tyaku.gltf", "info", 19)
		event.CharaActive(19)
		event.EohSyncChara(10, 19)
		event.ObjsInit(10, 19)
		event.ObjsSyncObj(10, 10)
		event.CopyChara(5, 19, 20)
		event.CharaActive(20)
		event.EohSyncChara(11, 20)
		event.ObjsInit(11, 20)
		event.ObjsSyncObj(11, 11)
		event.LoadChara(5, "event/e500/e516/e516_bakufu.gltf", "info", 23)
		event.CharaActive(23)
		event.EohSyncChara(14, 23)
		event.ObjsInit(14, 23)
		event.ObjsSyncObj(14, 14)
		event.EohSyncObj_2(17, "p01_battleship")
		event.ObjsInit(17)
		event.ObjsSyncObj(17, 17)
		event.EohSyncObj_3(18, "p01_battleship", "kikan-m0")
		event.ObjsInit(18)
		event.ObjsSyncObj(18, 18)
		event.EohSyncObj_3(19, "p01_battleship", "kikan-m1")
		event.ObjsInit(19)
		event.ObjsSyncObj(19, 19)
		event.EohSyncObj_3(20, "p01_battleship", "kikan-m2")
		event.ObjsInit(20)
		event.ObjsSyncObj(20, 20)
		event.EohSyncObj_3(21, "p01_battleship", "kikan-m3")
		event.ObjsInit(21)
		event.ObjsSyncObj(21, 21)
		event.EohSyncObj_3(22, "p01_battleship", "battleship_6-m0")
		event.ObjsInit(22)
		event.ObjsSyncObj(22, 22)
		event.EohSyncObj_3(23, "p01_battleship", "battleship_7-m0")
		event.ObjsInit(23)
		event.ObjsSyncObj(23, 23)
		event.EohSyncObj_3(24, "p01_battleship", "battleship_8-m0")
		event.ObjsInit(24)
		event.ObjsSyncObj(24, 24)
		event.EohSyncObj_3(25, "p01_battleship", "battleship_9-m0")
		event.ObjsInit(25)
		event.ObjsSyncObj(25, 25)
		event.EohSyncObj_2(26, "p03_s2001")
		event.ObjsInit(26)
		event.ObjsSyncObj(26, 26)
		event.EohSyncObj_2(27, "p04_s2001")
		event.ObjsInit(27)
		event.ObjsSyncObj(27, 27)
		event.EohSyncObj_2(28, "firesquall")
		event.ObjsInit(28)
		event.ObjsSyncObj(28, 28)
		event.EohSetShow(28, 1)
		event.SetCharaShow(1, 0)
		event.SetCharaShow(2, 0)
		event.EohSetPos(0, -3378.46, 181.07, 33.61)
		event.EohSetRot(0, 0.0, -1.89, 0.0)
		event.EohSetMotion(0, "爆弾セット", 4)
		event.EohSetFootSoundId(0, 6)
		event.EohSetPos(1, -3071, 105.8, 2.85)
		event.EohSetRot(1, 0.0, -1.29, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 6)
		event.EohSetPos(2, -1676.01, 1691.67, -4853.66)
		event.EohSetRot(2, 0.0, -0.93, 0.0)
		event.EohSetMotion(2, "下向き立ち", 4)
		event.EohSetFootSoundId(2, 2)
		event.EohSetPos(17, 0.0, 0.0, 0.0)
		event.EohSetRot(17, 0.0, -1.186824, 0.0)
		event.EohSetPos(18, 367.1, -137.116, 64.3)
		event.EohSetRot(18, 0.0, 1.57, 0.0)
		event.EohSetPos(19, 367.4, -137.116, -25.8)
		event.EohSetRot(19, 0.0, 1.57, 0.0)
		event.EohSetPos(20, 291.6, -137.116, -207.3)
		event.EohSetRot(20, 0.0, 2.26, 0.0)
		event.EohSetPos(21, 232.8, -137.116, -295.9)
		event.EohSetRot(21, 0.0, 2.26, 0.0)
		event.EohSetScale(22, 1.0, 1.0, 1.0)
		event.EohSetScale(23, 1.0, 1.0, 1.0)
		event.EohSetScale(24, 1.0, 1.0, 1.0)
		event.EohSetScale(25, 1.0, 1.0, 1.0)
		event.EohSetShow(2, 0)
		event.EohSetShow(3, 0)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.EohSetShow(6, 0)
		event.EohSetShow(7, 0)
		event.EohSetShow(8, 0)
		event.EohSetShow(9, 0)
		event.EohSetShow(10, 0)
		event.EohSetShow(11, 0)
		event.EohSetShow(17, 1)
		event.EohSetShow(26, 1)
		event.EohSetShow(27, 0)
		event.EohSetShow(14, 0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-3300.38, 202.19, 148.68)
		event.CmrsSetRef(-3383.16, 195.14, 32.14)
		event.CharaActive(0)
		event.CharaActive(9)
		event.CharaActive(10)
		event.SetFadeIn(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		at = 3
		wait_frames(30)
		event.SndSePlay(var0, 2)
		at = 4
		wait_frames(60)
		event.ObjsSetMotion(0, "セット完了", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		at = 5
		wait_objects(0)
		event.SndSeStop(var0, 2)
		event.CmrsSetPos(-2977.95, 148.16, -54.81)
		event.CmrsSetRef(-3086.93, 135.01, -12.38)
		event.ObjsPosDelay(0, 60)
		event.ObjsRotDelay(0, 60)
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "走り")
		event.ObjsRotation(0, 0.0, 1.63, 0.0, 12)
		event.ObjsMove(0, -3286.64, 181.07, 20.0, 30, 1)
		event.ObjsMove(0, -3109.88, 105.8, 15.86, 100, 1)
		event.ObjsRotDelay(0, 130)
		event.ObjsMotionDelay(0, 130)
		event.ObjsRotation(0, 0.0, 0.07, 0.0, 12)
		event.ObjsMove(0, -3070.97, 65.59, 178.73, 90, 1)
		event.SetPakuAnim(0, "通常口パク")
		at = 6
		helper_1584c528(5160010, 90)
		event.ObjsSetMotion(1, "走り")
		event.ObjsRotation(1, 0.0, 0.03, 0.0, 12)
		event.ObjsMove(1, -3035.41, 56.31, 201.54, 90, 1)
		event.ObjsMotionDelay(1, 90)
		at = 7
		wait_frames(90)
		event.CmrsReleaseObj()
		event.CmrsSetPos(-1434.28, 46.52, 2276.43)
		event.CmrsSetRef(-1767.75, 128.39, 1914.88)
		event.ObjsSetPos(17, 3172.3, 1692, -5181.7)
		event.ObjsSetRot(17, 0.0, -1.65, 0.0)
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(1, 2)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, -1847.62, 0.0, 2036.63)
		event.ObjsSetRot(1, 0.0, 2.11, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, -1896.36, 0.0, 2049.25)
		event.ObjsSetRot(0, 0.0, 1.79, 0.0)
		event.ObjsRotation(1, 0.0, -2.97, 0.0, 45)
		event.ObjsMove(1, -1803.2, 0.0, 1972.96, 45, 1)
		event.ObjsMotionDelay(1, 45)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsRotation(0, 0.0, -2.45, 0.0, 45)
		event.ObjsMove(0, -1824.29, 0.0, 1990.37, 45, 1)
		event.ObjsMotionDelay(0, 45)
		event.ObjsSetMotion(0, "立ち")
		at = 8
		wait_frames(10)
		event.ObjsSetMotion(0, "爆発", 6)
		event.ObjsNextMotion(0, "爆発L", 4)
		event.ObjsSetMotion(1, "爆発", 6)
		event.ObjsNextMotion(1, "爆発L", 4)
		at = 9
		wait_frames(80)
		event.EohSetShow(6, 1)
		event.EohSetShow(7, 1)
		event.EohSetShow(8, 1)
		event.CmrsQuake2(1.0, 1.0, 0.0, -1)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(6, 2.0, 2.0, 2.0)
		event.ObjsSetPos(6, -2984.05, 97.41, 475.09)
		event.ObjsSetMotion(6, "大爆発", 6)
		at = 10
		wait_frames(20)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(7, 3.0, 3.0, 3.0)
		event.ObjsSetPos(7, -3204.45, 289.83, 709.72)
		event.ObjsSetMotion(7, "大爆発", 6)
		at = 11
		wait_frames(10)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(8, 3.0, 3.0, 3.0)
		event.ObjsSetPos(8, -3463.32, 912.11, 504.04)
		event.ObjsSetMotion(8, "大爆発", 6)
		at = 12
		wait_frames(30)
		event.ObjsResetMotion(6)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(6, 3.0, 3.0, 3.0)
		event.ObjsSetPos(6, -3510.92, 560.62, 285.51)
		event.ObjsSetMotion(6, "大爆発", 6)
		at = 13
		wait_frames(15)
		event.ObjsResetMotion(7)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(7, 3.0, 3.0, 3.0)
		event.ObjsSetPos(7, -3204.45, 289.83, 709.72)
		event.ObjsSetMotion(7, "大爆発", 6)
		at = 14
		wait_frames(10)
		event.ObjsResetMotion(8)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(8, 5.0, 5.0, 5.0)
		event.ObjsSetPos(8, -3068.72, 458.65, 504.04)
		event.ObjsSetMotion(8, "大爆発", 6)
		at = 15
		wait_objects(6)
		at = 16
		wait_frames(30)
		event.CmrsInit()
		event.CmrsSetPos(-1759.38, 5.5, 1964.74)
		event.CmrsSetRef(-1844.27, 25.84, 1966.01)
		event.EohSetShow(28, 0)
		event.EohSetShow(6, 0)
		event.EohSetShow(7, 0)
		event.EohSetShow(8, 0)
		event.EohSetShow(26, 0)
		event.EohSetShow(27, 1)
		x = vm.f32(-1806.27)
		y = vm.f32(19.47)
		z = vm.f32(1965.44)
		do
			local out1, out2, out3 = event.SubVector(x, y, z, -1845.82, 23.73, 1914.09)
			x = out1 or x
			y = out2 or y
			z = out3 or z
		end
		event.SetWind(10, x, y, z)
		event.EohSetShow(14, 1)
		event.ObjsSetPos(14, -1878.23, 50.83, 1917.42)
		event.ObjsSetRot(14, 0.0, 1.68, 0.0)
		event.ObjsSetPos(1, -1821.13, 0.0, 1967.45)
		event.ObjsSetRot(1, 0.0, -2.37, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetPos(0, -1828.24, 0.0, 1988.57)
		event.ObjsSetRot(0, 0.0, -2.05, 0.0)
		event.ObjsResetDaPosition(0)
		at = 17
		wait_frames(120)
		event.SetCharaShow(23, 0, 1, 0.1)
		event.SetWind(-1)
		at = 18
		wait_frames(60)
		event.CmrsMove2(-1956.66, 22.88, 2209.65, -2035.8, 47.24, 2044.77, 120, 2, 0.1)
		event.ObjsSetMotion(0, "走り")
		event.ObjsRotation(0, 0.0, -1.21, 0.0, 12)
		event.ObjsMove(0, -1934.22, 0.0, 2047.37, 60)
		at = 19
		wait_frames(5)
		event.ObjsSetMotion(1, "走り")
		event.ObjsRotation(1, 0.0, -1.29, 0.0, 12)
		event.ObjsMove(1, -1902.38, 0.0, 2048.25, 60)
		at = 20
		wait_frames(55)
		event.ObjsRotation(0, 0.0, -2.53, 0.0, 50)
		event.ObjsMove(0, -2063.61, 0.0, 2032.5, 50)
		at = 21
		wait_frames(5)
		event.ObjsRotation(1, 0.0, -2.61, 0.0, 50)
		event.ObjsMove(1, -2029.94, 0.0, 2020.81, 50)
		event.ObjsMotionDelay(0, 50)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMotionDelay(1, 50)
		event.ObjsSetMotion(1, "立ち")
		event.FadeOutBgm(30)
		at = 22
		wait_objects(0)
		at = 23
		wait_frames(30)
		event.SndSePlay(var0, 4)
		event.ObjsSetMotion(0, "やった", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 24
		helper_4116e6bb(5160020)
		at = 25
		wait_objects(0)
		event.SetPakuAnim(1, "通常口パク")
		at = 26
		helper_4116e6bb(5160030)
		event.SndSePlay(var0, 5)
		at = 27
		wait_frames(90)
		event.StopBgm(0)
		at = 28
		wait_frames(4)
		event.LoadBgm(32)
		event.PlayBgm(0)
		event.ObjsSetMotion(0, "右上見る", 6)
		event.ObjsNextMotion(0, "右上見るL", 4)
		event.ObjsSetMotion(1, "右上見る", 6)
		event.ObjsNextMotion(1, "右上見るL", 4)
		event.ObjsSetPos(17, 3172.3, 1692, -5181.7)
		event.ObjsSetRot(17, 0.0, -1.65, 0.0)
		at = 29
		wait_objects(0)
		event.CmrsMove2(-2070.54, 130.56, 2336.88, -2025.9, 157.89, 2103.23, 120, 2, 0.7)
		event.ObjsMove(17, -1269.1, 1692, -5023.1, 360)
		at = 30
		wait_camera()
		event.ObjsSetColor(29, 128, 128, 128, 128, 30)
		event.ObjsSetMotion(0, "上向くL", 4)
		event.ObjsSetMotion(1, "上向くL", 4)
		event.ObjsSetPos(0, -2061.96, 0.0, 2020.59)
		event.ObjsResetDaPosition(0)
		event.ObjsSetRot(0, 0.0, -2.29, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -2053.46, 0.0, 2005.77)
		event.ObjsResetDaPosition(1)
		event.ObjsSetRot(1, 0.0, -2.13, 0.0)
		event.ObjsResetDaPosition(1)
		at = 31
		wait_frames(100)
		event.ObjsSetColor(29, 128, 128, 128, 0, 30)
		at = 32
		wait_frames(30)
		event.CmrsSetPos(-2086.09, 20.41, 2006.88)
		event.CmrsSetRef(-2057.35, 23.47, 2014.36)
		event.SetPakuAnim(1, "通常口パク")
		at = 33
		helper_4116e6bb(5160040)
		at = 34
		wait_objects(17)
		event.SndSeStop(var0, 5)
		event.SndSePlay(var0, 6)
		event.SndSePlay(var0, 7)
		event.CmrsSetPos(-2269.17, 1948.94, -4490.73)
		event.CmrsSetRef(-1666.2, 1723.94, -4850.99)
		event.EohSetShow(2, 1)
		event.CmrsMove(-2176.13, 1941.15, -4546.3, -1666.2, 1723.94, -4850.99, 60)
		at = 35
		wait_camera()
		event.SetCrossfade(30)
		event.CmrsSetPos(-1687.33, 1724.29, -4834.16)
		event.CmrsSetRef(-1674.47, 1722.82, -4853.32)
		event.ObjsSetMotion(2, "下向き会話", 6)
		event.ObjsNextMotion(2, "下向き立ち", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "下目パチ")
		event.SetPakuAnim(2, "通常口パク")
		at = 36
		helper_4116e6bb(5160050)
		at = 37
		wait_objects(2)
		event.CmrsSetPos(-1563.71, 1717.81, -4937.18)
		event.CmrsSetRef(-1618.97, 1724.21, -4901.16)
		event.CmrsMove2(-1643.48, 1700.93, -4929.83, -1568.23, 1725.22, -4920.42, 170, 0, 0.6)
		event.SndSePlay(var0, 8)
		event.ObjsSetMotion(2, "歩き")
		event.ObjsRotation(2, 0.0, 2.07, 0.0, 12)
		event.ObjsMove(2, -1577.9, 1692.06, -4923.4, 180)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.SetPakuAnim(2, "通常口パク")
		at = 38
		helper_1584c528(5160060, 120)
		at = 39
		wait_frames(45)
		event.SndSeStop(var0, 8)
		event.SndSeStop(var0, 7)
		event.SndSeStop(var0, 6)
		event.SndSePlay(var0, 12)
		event.CmrsInit()
		event.CmrsSetPos(-830.14, 270.67, 1420.39)
		event.CmrsSetRef(-504.92, 480.66, 900.5)
		event.ObjsSetPos(17, -139, 555.9, 667.2)
		event.ObjsSetRot(17, 0.0, -2.45, 0.0)
		event.ObjsSetScale(22, 1.0, 0.0, 1.0)
		event.ObjsSetScale(23, 1.0, 0.0, 1.0)
		event.ObjsSetScale(24, 1.0, 0.0, 1.0)
		event.ObjsSetScale(25, 1.0, 0.0, 1.0)
		event.ObjsSetPos(18, 453.231, -137.116, 64.3042)
		event.ObjsSetPos(19, 453.231, -137.116, -28.3794)
		event.ObjsSetPos(20, 361.006, -137.116, -275.332)
		event.ObjsSetPos(21, 310.085, -137.116, -351.233)
		event.SndSePlay(var0, 11)
		event.ObjsRotation(19, 0.09, 1.57, -0.09, 60)
		at = 40
		wait_frames(30)
		event.ObjsRotation(18, 0.09, 1.57, -0.09, 60)
		event.ObjsRotation(20, 0.0, 2.26, -0.17, 60)
		event.ObjsRotation(21, 0.0, 2.26, -0.17, 60)
		at = 41
		wait_frames(90)
		event.SndSePlay(var0, 13)
		event.EohSetShow(4, 1)
		event.ObjsSetRot(4, -0.09, -0.49, 0.09)
		event.ObjsSetPos(4, -590.74, 404.66, 956.92)
		event.ObjsSetMotion(4, "連射", 4)
		event.EohSetShow(5, 1)
		event.ObjsSetRot(5, -0.09, -0.49, 0.09)
		event.ObjsSetPos(5, -528.29, 404.66, 1025.52)
		event.ObjsSetMotion(5, "連射", 4)
		at = 42
		wait_frames(30)
		event.CmrsSetPos(-363.49, 1147.12, 997.14)
		event.CmrsSetRef(320.6, 1309.16, 876.66)
		event.SndSePlay(var0, 13)
		event.ObjsSetRot(4, -0.09, -0.49, 0.09)
		event.ObjsSetPos(4, 4228.42, 1628.46, 1164.08)
		event.ObjsSetMotion(4, "連射", 4)
		event.ObjsSetRot(5, -0.09, -0.49, 0.09)
		event.ObjsSetPos(5, 4307.65, 1629.32, 1204.73)
		event.ObjsSetMotion(5, "連射", 4)
		event.ObjsSetPos(17, 4574.6, 1784.4, 731.6)
		event.ObjsSetRot(17, 0.0, -2.39, 0.0)
		event.CmrsMove(-3928.7, 1344.83, -1526.92, -1604.39, 1825.07, -2517.04, 90)
		event.ObjsMove(17, -393, 1784.4, -2820, 90)
		event.ObjsMove(4, -831.8, 1632.54, -2496.46, 90)
		event.ObjsRotation(4, -0.09, -0.73, 0.09, 90)
		event.ObjsMove(5, -766.74, 1632.54, -2431.66, 90)
		event.ObjsRotation(5, -0.09, -0.49, 0.09, 90)
		at = 43
		wait_frames(90)
		event.ObjsSetPos(0, -2118.68, 0.0, 1811.45)
		event.ObjsSetRot(0, 0.0, 1.95, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -2126.8, 0.0, 1772.4)
		event.ObjsSetRot(1, 0.0, 2.19, 0.0)
		event.ObjsResetDaPosition(1)
		event.CmrsSetPos(-2091.86, 22.87, 1798.52)
		event.CmrsSetRef(-2117.77, 22.96, 1810.6)
		event.SndSeStop(var0, 12)
		event.SndSePlay(var0, 15)
		event.SndSePlay(var0, 14)
		event.ObjsSetMotion(0, "攻撃してきた！！", 6)
		event.ObjsNextMotion(0, "攻撃してきた！！L", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.SetPakuAnim(0, "大口パク")
		at = 44
		helper_1584c528(5160070, 90)
		event.SndSeStop(var0, 15)
		event.CmrsSetPos(-2201.73, 3.46, 1889.23)
		event.CmrsSetRef(-1989.51, 56.22, 1730.41)
		event.EohSetShow(10, 1)
		event.EohSetShow(11, 1)
		event.ObjsSetPos(17, 1789, 1284.4, -336.2)
		event.ObjsSetRot(17, 0.0, -2.44, 0.0)
		event.ObjsSetRot(4, -0.09, -0.85, 0.09)
		event.ObjsSetPos(4, 1337.12, 1132.18, -39.15)
		event.ObjsSetRot(5, -0.09, -0.85, 0.09)
		event.ObjsSetPos(5, 1396.86, 1130.86, 32.17)
		event.ObjsMove(17, -393, 1284.4, -2820, 150)
		event.ObjsMove(4, -831.8, 1132.54, -2496.46, 150)
		event.ObjsRotation(4, -0.09, -0.73, 0.09, 150)
		event.ObjsMove(5, -766.74, 1132.54, -2431.66, 150)
		event.ObjsRotation(5, -0.09, -0.49, 0.09, 150)
		event.CmrsPrdelay(30)
		event.CmrsSetPos(-2052.46, 8.64, 2070.3)
		event.CmrsSetRef(-2005.7, 60.1, 1797.97)
		event.ObjsSetMotion(0, "走り")
		event.ObjsRotation(0, 0.0, 0.63, 0.0, 12)
		event.ObjsMove(0, -2009.14, 0.0, 1963.15, 75)
		event.ObjsMotionDelay(0, 75)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetMotion(1, "走り")
		event.ObjsRotation(1, 0.0, 0.51, 0.0, 12)
		event.ObjsMove(1, -2019.49, 0.0, 1931.46, 75)
		event.ObjsMotionDelay(1, 75)
		event.ObjsSetMotion(1, "左向くL")
		event.SndSePlay(var0, 16)
		event.ObjsSetPos(10, -2222.67, 0.0, 1847.93)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 45
		wait_frames(3)
		event.ObjsSetPos(11, -2081.98, 0.0, 1742.24)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 46
		wait_frames(3)
		event.ObjsSetPos(10, -2135.97, 0.0, 1881.42)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 47
		wait_frames(3)
		event.ObjsSetPos(11, -2207.11, 0.0, 1907.68)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 48
		wait_frames(3)
		event.ObjsSetPos(10, -2182.0, 0.0, 1801.12)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 49
		wait_frames(3)
		event.ObjsSetPos(11, -2124.16, 0.0, 1760.75)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 50
		wait_frames(3)
		event.SndSePlay(var0, 16)
		event.ObjsSetPos(10, -2179.12, 0.0, 1835.11)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 51
		wait_frames(3)
		event.ObjsSetPos(11, -2139.18, 0.0, 1814.26)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 52
		wait_frames(3)
		event.ObjsSetPos(10, -2149.02, 0.0, 1845.22)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 53
		wait_frames(3)
		event.ObjsSetPos(11, -2088.02, 0.0, 1809.06)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 54
		wait_frames(3)
		event.ObjsSetPos(10, -2149.69, 0.0, 1874.46)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 55
		wait_frames(3)
		event.SndSePlay(var0, 16)
		event.ObjsSetPos(11, -2094.38, 0.0, 1854.15)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 56
		wait_frames(3)
		event.ObjsSetPos(10, -2105.71, 0.0, 1870.56)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 57
		wait_frames(3)
		event.ObjsSetPos(11, -2044.0, 0.0, 1853.9)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 58
		wait_frames(3)
		event.ObjsSetPos(10, -2113.06, 0.0, 1923.45)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 59
		wait_frames(3)
		event.ObjsSetPos(11, -1944.54, 19.55, 1825.69)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 60
		wait_frames(3)
		event.ObjsSetPos(10, -2038.0, 0.0, 1928.48)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 61
		wait_frames(3)
		event.ObjsSetPos(11, -1937.33, 48.6, 1850.63)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 62
		wait_frames(3)
		event.ObjsSetPos(10, -1926.89, 58.67, 1859.58)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 63
		wait_frames(3)
		event.SndSePlay(var0, 16)
		event.ObjsSetPos(11, -1883.51, 46.67, 1805.86)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		event.ObjsSetPos(0, -1995.65, 0.0, 1949.58)
		event.ObjsSetRot(0, 0.0, -1.17, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -2003.28, 0.0, 1930.13)
		event.ObjsSetRot(1, 0.0, -1.29, 0.0)
		event.ObjsResetDaPosition(1)
		event.SndSeStop(var0, 12)
		event.SndSePlay(var0, 17)
		event.SndSePlay(var0, 18)
		event.EohSetShow(10, 0)
		event.EohSetShow(11, 0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おどろき顔")
		event.ObjsTexAnime(0, 1, "おどろき目パチ")
		event.CmrsSetPos(-2055.47, 22.7, 1963.27)
		event.CmrsSetRef(-1991.1, 19.3, 1932.54)
		event.SndSePlay(var0, 22)
		event.ObjsMotionDelay(0, 30)
		event.SndSePlay(var0, 23)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 64
		helper_4116e6bb(5160080)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おどろき顔")
		event.ObjsTexAnime(0, 1, "おどろき目～おこり目")
		event.SetPakuAnim(1, "通常口パク")
		at = 65
		helper_4116e6bb(5160085)
		at = 66
		wait_objects(17)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.CmrsSetPos(-2446.16, 9.76, 2115.63)
		event.CmrsSetRef(-2215.58, 87.07, 1943.17)
		event.SndSeStop(var0, 17)
		event.SndSeStop(var0, 18)
		event.SndSePlay(var0, 19)
		event.ObjsSetPos(17, 2996.1, 1784.4, -684.4)
		event.ObjsSetRot(17, 0.0, -2.44, 0.0)
		event.ObjsSetRot(3, -0.09, -0.97, 0.09)
		event.ObjsSetPos(3, 2525.53, 1980.24, 186.43)
		event.ObjsMotionDelay(3, 90)
		event.ObjsSetMotion(3, "発射", 4)
		event.ObjsSeDelay(3, 30)
		event.ObjsSePlay(3, var0, 20)
		event.ObjsMove(17, -393, 1784.4, -2820, 300)
		event.ObjsMove(3, -846.75, 1980.24, -1950.79, 300)
		at = 67
		wait_frames(30)
		event.EohSetShow(3, 1)
		at = 68
		wait_frames(30)
		event.EohSetShow(9, 1)
		event.ObjsSetPos(9, -2118.68, 0.0, 1811.45)
		event.ObjsSetMotion(9, "砲着弾", 6)
		event.ObjsSetScale(9, 2.0, 2.0, 2.0)
		event.SndSePlay(var0, 21)
		at = 69
		wait_frames(10)
		event.EohSetShow(3, 0)
		event.SetWind(10, x, y, z)
		event.CmrsQuake2(1.0, 2.0, 0.0, 90)
		at = 70
		wait_frames(30)
		event.CmrsSetPos(-2055.47, 22.7, 1963.27)
		event.CmrsSetRef(-1991.1, 19.3, 1932.54)
		event.EohSetShow(14, 1)
		event.ObjsSetPos(14, -1832.24, 10.3, 1915.21)
		event.ObjsSetRot(14, 0.0, 2.28, 0.0)
		event.SndSeStop(var0, 19)
		event.SndSePlay(var0, 24)
		event.SndSePlay(var0, 25)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目とじ顔")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "目とじ顔")
		event.ObjsResetMotion(1)
		event.ObjsSetMotion(1, "爆風", 6)
		event.ObjsNextMotion(1, "爆風L", 4)
		event.ObjsResetMotion(0)
		event.ObjsSetMotion(0, "爆風", 6)
		event.ObjsNextMotion(0, "爆風L", 4)
		at = 71
		wait_frames(120)
		event.SetCharaShow(23, 0, 1, 0.1)
		event.SetWind(-1)
		at = 72
		wait_frames(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目とじ顔")
		event.ObjsTexAnime(0, 1, "目とじ～目あき")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "目とじ顔")
		event.ObjsTexAnime(1, 1, "目とじ～目あき")
		event.ObjsSetMotion(1, "ユリス見る", 6)
		event.ObjsNextMotion(1, "ユリス見るL", 4)
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "モニカ見る", 6)
		event.ObjsNextMotion(0, "モニカ見るL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 73
		helper_4116e6bb(5160090)
		event.ObjsSetMotion(0, "うなづき", 6)
		event.ObjsNextMotion(0, "モニカ見るL", 4)
		event.SndSePlay(var0, 26)
		event.SetPakuAnim(0, "通常口パク")
		at = 74
		helper_4116e6bb(5160100)
		at = 75
		wait_objects(0)
		at = 76
		wait_frames(20)
		event.ObjsSetMotion(1, "→左向き立ち", 4)
		event.ObjsNextMotion(1, "左向くL", 4)
		event.ObjsSetMotion(0, "→右向き立ち", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		at = 77
		wait_frames(30)
		event.ObjsSetMotion(0, "右向くうなづき", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.SndSePlay(var0, 26)
		event.ObjsSetMotion(1, "左向くうなづき", 6)
		event.ObjsNextMotion(1, "左向くL", 4)
		at = 78
		wait_objects(0)
		at = 79
		wait_frames(20)
		event.ObjsSetMotion(0, "走り")
		event.ObjsRotation(0, 0.0, 0.63, 0.0, 15)
		event.ObjsMove(0, -1971.28, 0.0, 2032.87, 90, 1)
		event.ObjsSetMotion(1, "走り")
		event.ObjsRotation(1, 0.0, -2.49, 0.0, 15)
		event.ObjsMove(1, -2036.12, 0.0, 1861.33, 75, 1)
		at = 80
		wait_frames(45)
		event.SetFadeOut(30)
		at = 81
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			wait_frames_skipping(4)
		end
		if at <= 2 then
			wait_frames_skipping(30)
		end
		if at <= 3 then
			wait_frames_skipping(60)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_52aadc70(5160010, 90)
		end
		if at <= 6 then
			wait_frames_skipping(90)
		end
		if at <= 7 then
			wait_frames_skipping(10)
		end
		if at <= 8 then
			wait_frames_skipping(80)
		end
		if at <= 9 then
			wait_frames_skipping(20)
		end
		if at <= 10 then
			wait_frames_skipping(10)
		end
		if at <= 11 then
			wait_frames_skipping(30)
		end
		if at <= 12 then
			wait_frames_skipping(15)
		end
		if at <= 13 then
			wait_frames_skipping(10)
		end
		if at <= 14 then
			helper_238b5abc(6)
		end
		if at <= 15 then
			wait_frames_skipping(30)
		end
		if at <= 16 then
			x = vm.f32(-1806.27)
			y = vm.f32(19.47)
			z = vm.f32(1965.44)
			wait_frames_skipping(120)
		end
		if at <= 17 then
			wait_frames_skipping(60)
		end
		if at <= 18 then
			wait_frames_skipping(5)
		end
		if at <= 19 then
			wait_frames_skipping(55)
		end
		if at <= 20 then
			wait_frames_skipping(5)
		end
		if at <= 21 then
			helper_238b5abc(0)
		end
		if at <= 22 then
			wait_frames_skipping(30)
		end
		if at <= 23 then
			helper_8cd371d7(5160020)
		end
		if at <= 24 then
			helper_238b5abc(0)
		end
		if at <= 25 then
			helper_8cd371d7(5160030)
		end
		if at <= 26 then
			wait_frames_skipping(90)
		end
		if at <= 27 then
			wait_frames_skipping(4)
		end
		if at <= 28 then
			helper_238b5abc(0)
		end
		if at <= 29 then
			helper_344d6cd8()
		end
		if at <= 30 then
			wait_frames_skipping(100)
		end
		if at <= 31 then
			wait_frames_skipping(30)
		end
		if at <= 32 then
			helper_8cd371d7(5160040)
		end
		if at <= 33 then
			helper_238b5abc(17)
		end
		if at <= 34 then
			helper_344d6cd8()
		end
		if at <= 35 then
			helper_8cd371d7(5160050)
		end
		if at <= 36 then
			helper_238b5abc(2)
		end
		if at <= 37 then
			helper_52aadc70(5160060, 120)
		end
		if at <= 38 then
			wait_frames_skipping(45)
		end
		if at <= 39 then
			wait_frames_skipping(30)
		end
		if at <= 40 then
			wait_frames_skipping(90)
		end
		if at <= 41 then
			wait_frames_skipping(30)
		end
		if at <= 42 then
			wait_frames_skipping(90)
		end
		if at <= 43 then
			helper_52aadc70(5160070, 90)
		end
		if at <= 44 then
			wait_frames_skipping(3)
		end
		if at <= 45 then
			wait_frames_skipping(3)
		end
		if at <= 46 then
			wait_frames_skipping(3)
		end
		if at <= 47 then
			wait_frames_skipping(3)
		end
		if at <= 48 then
			wait_frames_skipping(3)
		end
		if at <= 49 then
			wait_frames_skipping(3)
		end
		if at <= 50 then
			wait_frames_skipping(3)
		end
		if at <= 51 then
			wait_frames_skipping(3)
		end
		if at <= 52 then
			wait_frames_skipping(3)
		end
		if at <= 53 then
			wait_frames_skipping(3)
		end
		if at <= 54 then
			wait_frames_skipping(3)
		end
		if at <= 55 then
			wait_frames_skipping(3)
		end
		if at <= 56 then
			wait_frames_skipping(3)
		end
		if at <= 57 then
			wait_frames_skipping(3)
		end
		if at <= 58 then
			wait_frames_skipping(3)
		end
		if at <= 59 then
			wait_frames_skipping(3)
		end
		if at <= 60 then
			wait_frames_skipping(3)
		end
		if at <= 61 then
			wait_frames_skipping(3)
		end
		if at <= 62 then
			wait_frames_skipping(3)
		end
		if at <= 63 then
			helper_8cd371d7(5160080)
		end
		if at <= 64 then
			helper_8cd371d7(5160085)
		end
		if at <= 65 then
			helper_238b5abc(17)
		end
		if at <= 66 then
			wait_frames_skipping(30)
		end
		if at <= 67 then
			wait_frames_skipping(30)
		end
		if at <= 68 then
			wait_frames_skipping(10)
		end
		if at <= 69 then
			wait_frames_skipping(30)
		end
		if at <= 70 then
			wait_frames_skipping(120)
		end
		if at <= 71 then
			wait_frames_skipping(30)
		end
		if at <= 72 then
			helper_8cd371d7(5160090)
		end
		if at <= 73 then
			helper_8cd371d7(5160100)
		end
		if at <= 74 then
			helper_238b5abc(0)
		end
		if at <= 75 then
			wait_frames_skipping(20)
		end
		if at <= 76 then
			wait_frames_skipping(30)
		end
		if at <= 77 then
			helper_238b5abc(0)
		end
		if at <= 78 then
			wait_frames_skipping(20)
		end
		if at <= 79 then
			wait_frames_skipping(45)
		end
		if at <= 80 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 82
	vm.entry(82)
	event.CancelDramaScene()
	var6 = event.GetBgmNo() or var6
	if var6 ~= 32 then
		event.StopBgm(0)
		at = 83
		wait_frames(4)
		event.LoadBgm(32)
		event.PlayBgm(0)
	end
	event.SetWind(-1)
	event.EohSetShow(28, 0)
	event.EohSetShow(26, 0)
	event.EohSetShow(27, 1)
	event.SndSeStop(var0, 5)
	event.SndSeStop(var0, 15)
	event.SndSeStop(var0, 18)
	event.SndSeStop(var0, 17)
	event.SndSeStop(var0, 19)
	event.SndSeStop(var0, 24)
	event.SndSeStop(var0, 25)
	event.EohSetShow(17, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSetPos(17, 3139.7, 9.0, 918.2)
	event.Ext(703, 17, 2.4260077, 0.0) -- retail: the handler rejects 3 arguments
	event.EohSetPos(18, 453.23, -137.116, 64.3042)
	event.EohSetRot(18, 0.09, 1.57, -0.09)
	event.EohSetPos(19, 453.231, -137.116, -28.3794)
	event.EohSetRot(19, 0.09, 1.57, -0.09)
	event.EohSetPos(20, 361.006, -137.116, -275.332)
	event.EohSetRot(20, 0.0, 2.26, -0.17)
	event.EohSetPos(21, 310.085, -137.116, -351.233)
	event.EohSetRot(21, 0.0, 2.26, -0.17)
	event.EohSetScale(22, 1.0, 1.0, 1.0)
	event.EohSetScale(23, 1.0, 1.0, 1.0)
	event.EohSetScale(24, 1.0, 1.0, 1.0)
	event.EohSetScale(25, 1.0, 1.0, 1.0)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.DeleteChara(18)
	event.DeleteChara(19)
	event.DeleteChara(20)
	event.DeleteChara(23)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.CharaActive(0)
	event.SetCharaPos(0, -2039.05, 0.0, 1976.01)
	event.SetCharaRot(0, 0.0, 1.99, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetStatusbarShow(1, 1.0)
end

return helper_55215ed6
