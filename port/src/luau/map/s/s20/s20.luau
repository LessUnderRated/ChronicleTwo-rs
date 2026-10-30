--!strict
-- map/s/s20/s20.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_53ffe901 = require("@lib/event/helper_53ffe901")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	local flag_2: s32 = 0
	event.StopBgm(0)
	event.LoadSound(5684)
	event.FuncPointShow("", "useitem_00", 0)
	event.FuncPointShow("", "dun_entrance", 1)
	event.FuncPointShow("", "entrance", 1)
	flag = event.GetFlag(516) or flag
	event.GetItemNum(372)
	if flag == 0 then
		event.FuncPointShow("", "useitem_00", 1)
	end
	if flag == 1 then
		event.EohSyncObj_2(0, "p03_s2001")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(0, "p04_s2001")
		event.EohSetShow(0, 1)
	end
	event.EohSyncObj_2(0, "p01_battleship")
	event.EohSetShow(0, 0)
	flag_2 = event.GetFlag(520) or flag_2
	if flag_2 ~= 0 then
		event.EohSyncObj_3(0, "p04_s2001", "s2006-m0")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(0, "firesquall")
		event.EohSetShow(0, 0)
		event.FuncPointShow("p04_s2001", "eff_s20ef-0", 0)
		event.FuncPointShow("p04_s2001", "eff_s20ef-1", 0)
		event.FuncPointShow("p04_s2001", "eff_s20ef-2", 0)
		event.FuncPointShow("p04_s2001", "eff_s20ef-3", 0)
	end
end

--- Helper function.
local function helper_13e64()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		event.SetFlag(512, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		event.LoadSound(5800)
		var0 = event.SndLoadSound_2(5800) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e500/e512/")
		event.LoadMes(0, 5, "e512.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e512_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e512_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e512/e512_mints.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e500/e512/e512_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncObj_2(2, "firesquall")
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.EohSetShow(2, 1)
		event.SetCharaShow(1, 0)
		event.SetCharaShow(2, 0)
		event.EohSetPos(0, -2114.39, -15.43, 3159.57)
		event.EohSetRot(0, 0.0, -2.73, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, -2067.72, -11.31, 3130.76)
		event.EohSetRot(1, 0.0, -2.73, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 2)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-2167.75, 78.54, 2808.99)
		event.CmrsSetRef(-2123.94, -6.64, 3117.06)
		event.CharaActive(0)
		event.CharaActive(8)
		event.CharaActive(9)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, -2154.86, 0.23, 2989.31, 60, 1)
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetMotion(1, "走り")
		event.ObjsMove(1, -2121.93, 0.0, 2981.53, 70, 1)
		event.ObjsMotionDelay(1, 70)
		event.ObjsSetMotion(1, "立ち")
		event.StopBgm(0)
		event.SetFadeIn(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		wait_objects(0)
		helper_888ab2a3(30)
		event.ObjsSetMotion(0, "指さす", 6)
		event.ObjsNextMotion(0, "指さすL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5120010)
		event.CmrsSetPos(-1899.45, 48.16, 2384.53)
		event.CmrsSetRef(-2089.91, 113.14, 2148.64)
		event.SndSePlay(var0, 1)
		event.CmrsMove(-1960.89, 51.28, 2421.91, -2089.91, 113.14, 2148.64, 210)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5120020)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5120030)
		wait_camera()
		event.SndSeStop(var0, 1)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	event.CancelDramaScene()
	event.StopBgm(0)
	event.SndSeStop(var0, 1)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.LoadMes(0, -1)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.CharaActive(0)
	event.SetCharaPos(0, -2154.86, 0.23, 2989.31)
	event.SetCharaRot(0, 0.0, -2.73, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetStatusbarShow(1, 1.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_1069c()
	event.Initialize()
	event.CmrsInit()
	event.CmrsSetPos(-2098.32, 112.9, 2914.62)
	event.CmrsSetRef(-2002.24, 24.33, 3103.52)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 2)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, -1953.35, -38.07, 3352.55)
	event.ObjsSetRot(0, 0.0, -2.4, 0.0)
	event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
	event.ObjsInitPas(0)
	event.ObjsSetPasFrm(0, 60)
	event.ObjsAddPas(0, -1953.35, -38.07, 3352.55)
	event.ObjsAddPas(0, -1973.62, -28.53, 3308.18)
	event.ObjsAddPas(0, -1994.79, -9.95, 3175.09)
	event.ObjsAddPas(0, -2000.28, 0.23, 3105.85)
	event.ObjsStartPas(0)
	event.SetFadeIn(30)
	helper_888ab2a3(60)
	event.EohSetFootSoundId(0, 0)
	event.ResetCamera(0)
end

--- Helper function.
local function helper_15ae0()
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
		helper_888ab2a3(4)
		event.LoadBgm(30)
		event.PlayBgm(0)
		event.LoadSound(5803)
		var0 = event.SndLoadSound_2(5803) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e500/e516/")
		event.LoadMes(0, 5, "e516.txt")
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
		block = event.LoadImg_4(5, "e516telop01.json", 0) or block
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
		helper_888ab2a3(30)
		event.SndSePlay(var0, 2)
		at = 4
		helper_888ab2a3(60)
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
		helper_0382f327(5160010, 90)
		event.ObjsSetMotion(1, "走り")
		event.ObjsRotation(1, 0.0, 0.03, 0.0, 12)
		event.ObjsMove(1, -3035.41, 56.31, 201.54, 90, 1)
		event.ObjsMotionDelay(1, 90)
		at = 7
		helper_888ab2a3(90)
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
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "爆発", 6)
		event.ObjsNextMotion(0, "爆発L", 4)
		event.ObjsSetMotion(1, "爆発", 6)
		event.ObjsNextMotion(1, "爆発L", 4)
		at = 9
		helper_888ab2a3(80)
		event.EohSetShow(6, 1)
		event.EohSetShow(7, 1)
		event.EohSetShow(8, 1)
		event.CmrsQuake2(1.0, 1.0, 0.0, -1)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(6, 2.0, 2.0, 2.0)
		event.ObjsSetPos(6, -2984.05, 97.41, 475.09)
		event.ObjsSetMotion(6, "大爆発", 6)
		at = 10
		helper_888ab2a3(20)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(7, 3.0, 3.0, 3.0)
		event.ObjsSetPos(7, -3204.45, 289.83, 709.72)
		event.ObjsSetMotion(7, "大爆発", 6)
		at = 11
		helper_888ab2a3(10)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(8, 3.0, 3.0, 3.0)
		event.ObjsSetPos(8, -3463.32, 912.11, 504.04)
		event.ObjsSetMotion(8, "大爆発", 6)
		at = 12
		helper_888ab2a3(30)
		event.ObjsResetMotion(6)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(6, 3.0, 3.0, 3.0)
		event.ObjsSetPos(6, -3510.92, 560.62, 285.51)
		event.ObjsSetMotion(6, "大爆発", 6)
		at = 13
		helper_888ab2a3(15)
		event.ObjsResetMotion(7)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(7, 3.0, 3.0, 3.0)
		event.ObjsSetPos(7, -3204.45, 289.83, 709.72)
		event.ObjsSetMotion(7, "大爆発", 6)
		at = 14
		helper_888ab2a3(10)
		event.ObjsResetMotion(8)
		event.SndSePlay(var0, 3)
		event.ObjsSetScale(8, 5.0, 5.0, 5.0)
		event.ObjsSetPos(8, -3068.72, 458.65, 504.04)
		event.ObjsSetMotion(8, "大爆発", 6)
		at = 15
		wait_objects(6)
		at = 16
		helper_888ab2a3(30)
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
		helper_888ab2a3(120)
		event.SetCharaShow(23, 0, 1, 0.1)
		event.SetWind(-1)
		at = 18
		helper_888ab2a3(60)
		event.CmrsMove2(-1956.66, 22.88, 2209.65, -2035.8, 47.24, 2044.77, 120, 2, 0.1)
		event.ObjsSetMotion(0, "走り")
		event.ObjsRotation(0, 0.0, -1.21, 0.0, 12)
		event.ObjsMove(0, -1934.22, 0.0, 2047.37, 60)
		at = 19
		helper_888ab2a3(5)
		event.ObjsSetMotion(1, "走り")
		event.ObjsRotation(1, 0.0, -1.29, 0.0, 12)
		event.ObjsMove(1, -1902.38, 0.0, 2048.25, 60)
		at = 20
		helper_888ab2a3(55)
		event.ObjsRotation(0, 0.0, -2.53, 0.0, 50)
		event.ObjsMove(0, -2063.61, 0.0, 2032.5, 50)
		at = 21
		helper_888ab2a3(5)
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
		helper_888ab2a3(30)
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
		helper_888ab2a3(90)
		event.StopBgm(0)
		at = 28
		helper_888ab2a3(4)
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
		helper_888ab2a3(100)
		event.ObjsSetColor(29, 128, 128, 128, 0, 30)
		at = 32
		helper_888ab2a3(30)
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
		helper_0382f327(5160060, 120)
		at = 39
		helper_888ab2a3(45)
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
		helper_888ab2a3(30)
		event.ObjsRotation(18, 0.09, 1.57, -0.09, 60)
		event.ObjsRotation(20, 0.0, 2.26, -0.17, 60)
		event.ObjsRotation(21, 0.0, 2.26, -0.17, 60)
		at = 41
		helper_888ab2a3(90)
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
		helper_888ab2a3(30)
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
		helper_888ab2a3(90)
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
		helper_0382f327(5160070, 90)
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
		helper_888ab2a3(3)
		event.ObjsSetPos(11, -2081.98, 0.0, 1742.24)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 46
		helper_888ab2a3(3)
		event.ObjsSetPos(10, -2135.97, 0.0, 1881.42)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 47
		helper_888ab2a3(3)
		event.ObjsSetPos(11, -2207.11, 0.0, 1907.68)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 48
		helper_888ab2a3(3)
		event.ObjsSetPos(10, -2182.0, 0.0, 1801.12)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 49
		helper_888ab2a3(3)
		event.ObjsSetPos(11, -2124.16, 0.0, 1760.75)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 50
		helper_888ab2a3(3)
		event.SndSePlay(var0, 16)
		event.ObjsSetPos(10, -2179.12, 0.0, 1835.11)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 51
		helper_888ab2a3(3)
		event.ObjsSetPos(11, -2139.18, 0.0, 1814.26)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 52
		helper_888ab2a3(3)
		event.ObjsSetPos(10, -2149.02, 0.0, 1845.22)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 53
		helper_888ab2a3(3)
		event.ObjsSetPos(11, -2088.02, 0.0, 1809.06)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 54
		helper_888ab2a3(3)
		event.ObjsSetPos(10, -2149.69, 0.0, 1874.46)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 55
		helper_888ab2a3(3)
		event.SndSePlay(var0, 16)
		event.ObjsSetPos(11, -2094.38, 0.0, 1854.15)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 56
		helper_888ab2a3(3)
		event.ObjsSetPos(10, -2105.71, 0.0, 1870.56)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 57
		helper_888ab2a3(3)
		event.ObjsSetPos(11, -2044.0, 0.0, 1853.9)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 58
		helper_888ab2a3(3)
		event.ObjsSetPos(10, -2113.06, 0.0, 1923.45)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 59
		helper_888ab2a3(3)
		event.ObjsSetPos(11, -1944.54, 19.55, 1825.69)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 60
		helper_888ab2a3(3)
		event.ObjsSetPos(10, -2038.0, 0.0, 1928.48)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 61
		helper_888ab2a3(3)
		event.ObjsSetPos(11, -1937.33, 48.6, 1850.63)
		event.ObjsSetMotion(11, "機銃着弾", 4)
		at = 62
		helper_888ab2a3(3)
		event.ObjsSetPos(10, -1926.89, 58.67, 1859.58)
		event.ObjsSetMotion(10, "機銃着弾", 4)
		at = 63
		helper_888ab2a3(3)
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
		helper_888ab2a3(30)
		event.EohSetShow(3, 1)
		at = 68
		helper_888ab2a3(30)
		event.EohSetShow(9, 1)
		event.ObjsSetPos(9, -2118.68, 0.0, 1811.45)
		event.ObjsSetMotion(9, "砲着弾", 6)
		event.ObjsSetScale(9, 2.0, 2.0, 2.0)
		event.SndSePlay(var0, 21)
		at = 69
		helper_888ab2a3(10)
		event.EohSetShow(3, 0)
		event.SetWind(10, x, y, z)
		event.CmrsQuake2(1.0, 2.0, 0.0, 90)
		at = 70
		helper_888ab2a3(30)
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
		helper_888ab2a3(120)
		event.SetCharaShow(23, 0, 1, 0.1)
		event.SetWind(-1)
		at = 72
		helper_888ab2a3(30)
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
		helper_888ab2a3(20)
		event.ObjsSetMotion(1, "→左向き立ち", 4)
		event.ObjsNextMotion(1, "左向くL", 4)
		event.ObjsSetMotion(0, "→右向き立ち", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		at = 77
		helper_888ab2a3(30)
		event.ObjsSetMotion(0, "右向くうなづき", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.SndSePlay(var0, 26)
		event.ObjsSetMotion(1, "左向くうなづき", 6)
		event.ObjsNextMotion(1, "左向くL", 4)
		at = 78
		wait_objects(0)
		at = 79
		helper_888ab2a3(20)
		event.ObjsSetMotion(1, "走り")
		event.ObjsRotation(1, 0.0, -2.49, 0.0, 12)
		event.ObjsMove(1, -2036.12, 0.0, 1861.33, 60, 1)
		event.ObjsSetMotion(0, "走り")
		event.ObjsRotation(0, 0.0, 0.63, 0.0, 12)
		event.ObjsMove(0, -1971.28, 0.0, 2032.87, 60, 1)
		at = 80
		helper_888ab2a3(30)
		event.SetFadeOut(30)
		at = 81
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(4)
		end
		if at <= 2 then
			helper_038a2e4d(30)
		end
		if at <= 3 then
			helper_038a2e4d(60)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_53ffe901(5160010, 90)
		end
		if at <= 6 then
			helper_038a2e4d(90)
		end
		if at <= 7 then
			helper_038a2e4d(10)
		end
		if at <= 8 then
			helper_038a2e4d(80)
		end
		if at <= 9 then
			helper_038a2e4d(20)
		end
		if at <= 10 then
			helper_038a2e4d(10)
		end
		if at <= 11 then
			helper_038a2e4d(30)
		end
		if at <= 12 then
			helper_038a2e4d(15)
		end
		if at <= 13 then
			helper_038a2e4d(10)
		end
		if at <= 14 then
			helper_238b5abc(6)
		end
		if at <= 15 then
			helper_038a2e4d(30)
		end
		if at <= 16 then
			x = vm.f32(-1806.27)
			y = vm.f32(19.47)
			z = vm.f32(1965.44)
			helper_038a2e4d(120)
		end
		if at <= 17 then
			helper_038a2e4d(60)
		end
		if at <= 18 then
			helper_038a2e4d(5)
		end
		if at <= 19 then
			helper_038a2e4d(55)
		end
		if at <= 20 then
			helper_038a2e4d(5)
		end
		if at <= 21 then
			helper_238b5abc(0)
		end
		if at <= 22 then
			helper_038a2e4d(30)
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
			helper_038a2e4d(90)
		end
		if at <= 27 then
			helper_038a2e4d(4)
		end
		if at <= 28 then
			helper_238b5abc(0)
		end
		if at <= 29 then
			helper_344d6cd8()
		end
		if at <= 30 then
			helper_038a2e4d(100)
		end
		if at <= 31 then
			helper_038a2e4d(30)
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
			helper_53ffe901(5160060, 120)
		end
		if at <= 38 then
			helper_038a2e4d(45)
		end
		if at <= 39 then
			helper_038a2e4d(30)
		end
		if at <= 40 then
			helper_038a2e4d(90)
		end
		if at <= 41 then
			helper_038a2e4d(30)
		end
		if at <= 42 then
			helper_038a2e4d(90)
		end
		if at <= 43 then
			helper_53ffe901(5160070, 90)
		end
		if at <= 44 then
			helper_038a2e4d(3)
		end
		if at <= 45 then
			helper_038a2e4d(3)
		end
		if at <= 46 then
			helper_038a2e4d(3)
		end
		if at <= 47 then
			helper_038a2e4d(3)
		end
		if at <= 48 then
			helper_038a2e4d(3)
		end
		if at <= 49 then
			helper_038a2e4d(3)
		end
		if at <= 50 then
			helper_038a2e4d(3)
		end
		if at <= 51 then
			helper_038a2e4d(3)
		end
		if at <= 52 then
			helper_038a2e4d(3)
		end
		if at <= 53 then
			helper_038a2e4d(3)
		end
		if at <= 54 then
			helper_038a2e4d(3)
		end
		if at <= 55 then
			helper_038a2e4d(3)
		end
		if at <= 56 then
			helper_038a2e4d(3)
		end
		if at <= 57 then
			helper_038a2e4d(3)
		end
		if at <= 58 then
			helper_038a2e4d(3)
		end
		if at <= 59 then
			helper_038a2e4d(3)
		end
		if at <= 60 then
			helper_038a2e4d(3)
		end
		if at <= 61 then
			helper_038a2e4d(3)
		end
		if at <= 62 then
			helper_038a2e4d(3)
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
			helper_038a2e4d(30)
		end
		if at <= 67 then
			helper_038a2e4d(30)
		end
		if at <= 68 then
			helper_038a2e4d(10)
		end
		if at <= 69 then
			helper_038a2e4d(30)
		end
		if at <= 70 then
			helper_038a2e4d(120)
		end
		if at <= 71 then
			helper_038a2e4d(30)
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
			helper_038a2e4d(20)
		end
		if at <= 76 then
			helper_038a2e4d(30)
		end
		if at <= 77 then
			helper_238b5abc(0)
		end
		if at <= 78 then
			helper_038a2e4d(20)
		end
		if at <= 79 then
			helper_038a2e4d(30)
		end
		if at <= 80 then
			helper_038a2e4d(30)
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
		helper_888ab2a3(4)
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

--- Helper function.
local function helper_21910()
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
		helper_888ab2a3(4)
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
		event.LoadMes(0, 5, "e520.txt")
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
		helper_888ab2a3(120)
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
		helper_0382f327(5200010, -1)
		event.SndSeStop(var0, 3)
		event.SndSePlay(var0, 4)
		event.CmrsQuake(0.0, 1.0, 0.0, 30)
		event.ObjsSetMotion(2, "落ちる", 6)
		event.ObjsNextMotion(2, "落ちるL", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "おこり顔")
		event.ObjsTexAnime(2, 1, "下向き～上向き")
		at = 5
		helper_888ab2a3(10)
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
		helper_888ab2a3(60)
		event.SndSeStop(var0, 6)
		event.ObjsMove(1, -2672.25, 236.43, 545.71, 60)
		at = 8
		helper_888ab2a3(60)
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
		helper_0382f327(5200020, 50)
		at = 10
		helper_888ab2a3(5)
		event.ObjsSetPos(1, -2282.71, 308.37, 346.12)
		event.CmrsSetPos(-2025.37, 340.27, 478.9)
		event.CmrsSetRef(-1996.22, 338.59, 478.94)
		event.SetProjection(524.9)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "おこり顔")
		event.ObjsTexAnime(2, 1, "下目～おどろき目")
		event.SetPakuAnim(2, "大口パク")
		at = 11
		helper_0382f327(5200030, -1)
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
		helper_888ab2a3(30)
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
		helper_888ab2a3(90)
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
		helper_0382f327(5200040, -1)
		at = 16
		helper_888ab2a3(30)
		event.ObjsSetMotion(1, "魔法撃つ", 4)
		event.SndSeStop(var0, 10)
		event.SndSePlay(var0, 11)
		event.EsmCreate_2("EVモニカ魔法－火", 9)
		event.EsmSetVect1(pos_x, pos_y, pos_z)
		event.EsmSetTargetId(-1)
		event.EsmFinish(9, result)
		at = 17
		helper_888ab2a3(20)
		event.ObjsSetMotion(1, "魔法撃つ", 4)
		event.SndSePlay(var0, 11)
		event.EsmCreate_2("EVモニカ魔法－火", 9)
		event.EsmSetVect1(pos_x, pos_y, pos_z)
		event.EsmSetTargetId(-1)
		event.EsmFinish(9, result)
		at = 18
		helper_888ab2a3(10)
		event.ObjsSetMotion(1, "魔法撃つ", 4)
		event.SndSePlay(var0, 11)
		event.EsmCreate_2("EVモニカ魔法－火", 9)
		event.EsmSetVect1(pos_x, pos_y, pos_z)
		event.EsmSetTargetId(-1)
		event.EsmFinish(9, result)
		at = 19
		helper_888ab2a3(10)
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
		helper_888ab2a3(30)
		event.SndSePlay(var0, 13)
		event.ObjsSetMotion(1, "よけ2つ")
		event.ObjsMotionWait(1)
		event.ObjsSetMotion(2, "よけ2つ")
		event.ObjsMotionWait(2)
		at = 22
		helper_888ab2a3(15)
		event.SweStartEffect(14, 0, "dcol00", "dcol01", 94, 6, 6)
		at = 23
		helper_888ab2a3(15)
		event.SweStartEffect(14, 0, "dcol00", "dcol01", 94, 6, 6)
		at = 24
		helper_888ab2a3(10)
		event.SweStartEffect(14, 0, "dcol00", "dcol01", 94, 6, 6)
		at = 25
		helper_888ab2a3(20)
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
		helper_888ab2a3(10)
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
		helper_888ab2a3(15)
		event.SetPakuAnim(1, "通常口パク")
		at = 29
		helper_0382f327(5200050, -1)
		event.CmrsSetPos(-2043.31, 334.08, 203.6)
		event.CmrsSetRef(-2013.93, 336.49, 194.04)
		event.ObjsSeDelay(2, 8)
		event.ObjsSePlay(2, var0, 20)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "わらい顔")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.SetPakuAnim(2, "わらい口パク")
		at = 30
		helper_0382f327(5200060, -1)
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
		helper_888ab2a3(10)
		event.ObjsTexAnime(1, 1, "口とじ～大口")
		at = 32
		helper_0382f327(5200070, -1)
		event.ObjsMotionWait(2)
		at = 33
		wait_objects(1)
		event.CmrsSetPos(-2025.6, 317.11, 283.22)
		event.CmrsSetRef(-2022.52, 324.9, 217.92)
		at = 34
		helper_888ab2a3(20)
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
		helper_888ab2a3(30)
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
		helper_888ab2a3(60)
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
		helper_0382f327(5200080, -1)
		event.CmrsQuakeDelay(30)
		event.CmrsQuake(0.0, 0.2, 0.0, -1)
		event.SndSePlay(var0, 23)
		at = 38
		helper_888ab2a3(60)
		event.ObjsSetMotion(2, "上見", 6)
		event.ObjsNextMotion(2, "上見L", 4)
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "デフォルト顔")
		event.ObjsTexAnime(2, 1, "おこり目パチ")
		event.SetPakuAnim(2, "おこり口パク")
		at = 39
		helper_0382f327(5200090, -1)
		event.SndSeStop(var0, 8)
		event.SndSeStop(var0, 23)
		event.SetWind(-1)
		event.CmrsInit()
		event.EohSetShow(20, 1)
		event.CmrsSetPos(-2307.42, 27.19, 1937.3)
		event.CmrsSetRef(-2258.86, 36.53, 1808.93)
		at = 40
		helper_888ab2a3(10)
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
		helper_888ab2a3(90)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.SetPakuAnim(0, "大口パク")
		at = 42
		helper_0382f327(5200100, 60)
		event.CmrsMove2(-2198.1, 30.55, 1580.48, -2105.26, 29.78, 1380.32, 120, 1, 0.5)
		event.CmrsMove2(-2085.28, 88.8, 1337.19, -1972.16, 302.92, 1093.31, 90, 2, 1.0)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, -2112.56, 0.0, 1396.51, 160)
		event.ObjsMotionDelay(0, 160)
		event.ObjsSetMotion(0, "立ち")
		at = 43
		helper_888ab2a3(90)
		event.FadeOutBgm(90)
		event.SetPakuAnim(0, "大口パク")
		at = 44
		helper_0382f327(5200110, 90)
		event.SetFadeOut(30)
		at = 45
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(4)
		end
		if at <= 2 then
			print("1--------------------------------\n")
			local _ = active_chr_no == 2
			active_chr_no = 0
			local _ = active_chr_no == 3
			active_chr_no = 1
			print("2--------------------------------\n")
			helper_038a2e4d(120)
		end
		if at <= 3 then
			print("3--------------------------------\n")
			print("4--------------------------------\n")
			x = vm.f32(-2438.17)
			y = vm.f32(332.67)
			z = 341.25
			helper_53ffe901(5200010, -1)
		end
		if at <= 4 then
			helper_038a2e4d(10)
		end
		if at <= 5 then
			helper_344d6cd8()
		end
		if at <= 6 then
			helper_038a2e4d(60)
		end
		if at <= 7 then
			helper_038a2e4d(60)
		end
		if at <= 8 then
			helper_53ffe901(5200020, 50)
		end
		if at <= 9 then
			helper_038a2e4d(5)
		end
		if at <= 10 then
			helper_53ffe901(5200030, -1)
		end
		if at <= 11 then
			helper_038a2e4d(30)
		end
		if at <= 12 then
			helper_038a2e4d(90)
		end
		if at <= 13 then
			helper_238b5abc(1)
		end
		if at <= 14 then
			helper_53ffe901(5200040, -1)
		end
		if at <= 15 then
			helper_038a2e4d(30)
		end
		if at <= 16 then
			helper_038a2e4d(20)
		end
		if at <= 17 then
			helper_038a2e4d(10)
		end
		if at <= 18 then
			helper_038a2e4d(10)
		end
		if at <= 19 then
			helper_238b5abc(4)
		end
		if at <= 20 then
			helper_038a2e4d(30)
		end
		if at <= 21 then
			helper_038a2e4d(15)
		end
		if at <= 22 then
			helper_038a2e4d(15)
		end
		if at <= 23 then
			helper_038a2e4d(10)
		end
		if at <= 24 then
			helper_038a2e4d(20)
		end
		if at <= 25 then
			helper_038a2e4d(10)
		end
		if at <= 26 then
			helper_238b5abc(1)
		end
		if at <= 27 then
			helper_038a2e4d(15)
		end
		if at <= 28 then
			helper_53ffe901(5200050, -1)
		end
		if at <= 29 then
			helper_53ffe901(5200060, -1)
		end
		if at <= 30 then
			helper_038a2e4d(10)
		end
		if at <= 31 then
			helper_53ffe901(5200070, -1)
		end
		if at <= 32 then
			helper_238b5abc(1)
		end
		if at <= 33 then
			helper_038a2e4d(20)
		end
		if at <= 34 then
			helper_038a2e4d(30)
		end
		if at <= 35 then
			helper_038a2e4d(60)
		end
		if at <= 36 then
			helper_53ffe901(5200080, -1)
		end
		if at <= 37 then
			helper_038a2e4d(60)
		end
		if at <= 38 then
			helper_53ffe901(5200090, -1)
		end
		if at <= 39 then
			helper_038a2e4d(10)
		end
		if at <= 40 then
			helper_038a2e4d(90)
		end
		if at <= 41 then
			helper_53ffe901(5200100, 60)
		end
		if at <= 42 then
			helper_038a2e4d(90)
		end
		if at <= 43 then
			helper_53ffe901(5200110, 90)
		end
		if at <= 44 then
			helper_038a2e4d(30)
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

--- Helper function.
local function helper_10c74()
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var3: any = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: s32 = 0
	local active_chr_no_2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				at = 1
				helper_75684dd8(0, 20, 5, 256, 208)
			else
				at = 2
				helper_75684dd8(0, 21, 5, 256, 208)
			end
			event.SetFadeOut(10)
			at = 3
			helper_888ab2a3(10)
			event.SetCharaPos(0, -2074.0, -7.0, 3098.8)
			event.SetCharaRot(0, 0.0, 3.05, 0.0)
			event.SetCameraPos(-2086.23, 51.55, 3226.23)
			event.SetCameraRef(-2074.0, 22.99, 3098.82)
			event.ResetCamera(0)
			event.SetFadeIn(10)
			event.Finish()
			return 0
		end
		flag = event.GetFlag(516) or flag
		flag_2 = event.GetFlag(520) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var3 = 1
		else
			at = 4
			var3 = helper_ed4dc120(2, -1)
		end
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var3 == 0 then
			event.CmrsInit()
			event.CmrsSetPos(-2067.37, 112.9, 2821.78)
			event.CmrsSetRef(-2002.24, 24.33, 3103.52)
			event.ObjsSetMotion(0, "走り", 4)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 60)
			event.ObjsAddPas(0, -2000.28, 0.23, 3105.85)
			event.ObjsAddPas(0, -2010.93, -14.79, 3194.18)
			event.ObjsAddPas(0, -2000.43, -24.24, 3288.22)
			event.ObjsAddPas(0, -1957.41, -49.2, 3404.27)
			event.ObjsStartPas(0)
			at = 5
			helper_888ab2a3(40)
			event.SetFadeOut(20)
			at = 6
			helper_888ab2a3(20)
			event.EohSetFootSoundId(0, 0)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			var7 = vm.f32(vm.f32(vm.sin(vm.f32(3.14)) * 40.0) + var4)
			var8 = 0.0
			var9 = vm.f32(vm.f32(vm.cos(vm.f32(3.14)) * 40.0) + var6)
			event.ObjsMove(0, var7, var8, var9, 30, 1)
			event.ObjsReference(0, var7, var8, var9, 10)
			event.ObjsSetMotion(0, "歩き")
			var10 = 0
			while var10 < 30 do
				do
					local out1, out2, out3 = event.GetCharaPos(0)
					var4 = out1 or var4
					var5 = out2 or var5
					var6 = out3 or var6
				end
				var5 = vm.f32(var5 + 30.0)
				event.SetCameraRef(var4, var5, var6)
				var10 = var10 + 1
				at = 7
				vm.wait(7)
			end
			event.ObjsSetMotion(0, "立ち")
		end
		if flag ~= 0 and flag_2 == 0 then
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			active_chr_no_2 = event.GetActiveChrNo() or active_chr_no_2
			if active_chr_no_2 == 0 then
				event.MesMake_2(0, "「ライドポッド」で応戦だ！")
			else
				event.MesMake_2(0, "ユリス、「ライドポッド」で応戦よ！")
			end
			at = 8
			helper_75684dd8(0, -1, 5, 256, 208)
		end
		event.EohSetFootSoundId(0, 0)
		event.ResetCamera(0)
		event.Finish()
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				helper_ee1c51d0(0, 21, 5, 256, 208)
			end
			if at <= 2 then
				helper_038a2e4d(10)
			end
			return 0
		end
		if at <= 6 then
			if at == 4 then
				var3 = received[1] :: number
			end
			if at <= 4 then
				helper_038a2e4d(40)
			end
			if at <= 5 then
				helper_038a2e4d(20)
			end
			return 1
		end
		if at <= 8 then
			if at <= 7 then
				helper_ee1c51d0(0, -1, 5, 256, 208)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_11f38()
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var3: any = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: s32 = 0
	local flag_3: s32 = 0
	local active_chr_no_2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				at = 1
				helper_75684dd8(0, 20, 5, 256, 208)
			else
				at = 2
				helper_75684dd8(0, 21, 5, 256, 208)
			end
			event.SetFadeOut(10)
			at = 3
			helper_888ab2a3(10)
			event.SetCharaPos(0, 1459.7, -279.01, 2009.85)
			event.SetCharaRot(0, 0.0, -1.77, 0.0)
			event.SetCameraPos(1584.28, -250.6, 2035.61)
			event.SetCameraRef(1459.7, -249.01, 2009.85)
			event.ResetCamera(0)
			event.SetFadeIn(10)
			event.Finish()
			return 0
		end
		flag = event.GetFlag(516) or flag
		flag_2 = event.GetFlag(520) or flag_2
		if flag == 0 or flag_2 == 0 then
			var3 = 1
		else
			at = 4
			var3 = helper_ed4dc120(1, -1)
		end
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 2)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var3 == 0 then
			event.CmrsInit()
			event.CmrsSetPos(1237.07, -178.87, 1868.72)
			event.CmrsSetRef(1400.74, -221.62, 1965.01)
			event.ObjsSetMotion(0, "走り", 4)
			event.ObjsInitPas(0)
			event.ObjsSetPasFrm(0, 60)
			event.ObjsAddPas(0, 1494.73, -279.24, 2020.78)
			event.ObjsAddPas(0, 1549.77, -279.45, 2063.4)
			event.ObjsAddPas(0, 1615.07, -279.45, 2101.81)
			event.ObjsAddPas(0, 1681.3, -279.46, 2136.65)
			event.ObjsStartPas(0)
			at = 5
			helper_888ab2a3(40)
			event.SetFadeOut(20)
			at = 6
			helper_888ab2a3(20)
			event.EohSetFootSoundId(0, 0)
			return 1
		else
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			var7 = vm.f32(vm.f32(vm.sin(-2.0) * 50.0) + var4)
			var8 = 0.0
			var9 = vm.f32(vm.f32(vm.cos(-2.0) * 50.0) + var6)
			event.ObjsMove(0, var7, var8, var9, 30, 1)
			event.ObjsReference(0, var7, var8, var9, 10)
			event.ObjsSetMotion(0, "歩き")
			event.ObjsMotionDelay(0, 30)
			event.ObjsSetMotion(0, "立ち")
			var10 = 0
			while var10 < 30 do
				do
					local out1, out2, out3 = event.GetCharaPos(0)
					var4 = out1 or var4
					var5 = out2 or var5
					var6 = out3 or var6
				end
				var5 = vm.f32(var5 + 30.0)
				event.SetCameraRef(var4, var5, var6)
				var10 = var10 + 1
				at = 7
				vm.wait(7)
			end
		end
		if flag == 0 or flag_2 == 0 then
			flag_3 = event.GetFlag(508) or flag_3
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			active_chr_no_2 = event.GetActiveChrNo() or active_chr_no_2
			if active_chr_no_2 == 0 then
				if flag == 0 then
					if flag_3 == 0 then
						event.MesMake_2(
							0,
							"炎の雨を降らせているのは、\nあの機械みたいだ。<page>あれはほうっておけない！\nでも、どうすれば良いんだ？"
						)
					else
						event.MesMake_2(0, "「ファイアースコール」を破壊しなきゃ！")
					end
				else
					event.MesMake_2(0, "「ライドポッド」で応戦だ！")
				end
			elseif flag == 0 then
				if flag_3 == 0 then
					event.MesMake_2(
						0,
						"炎の雨を降らせているのは、\nあの機械みたいだ。<page>あれはほうっておけない！\nでも、どうすれば良いんだ？"
					)
				else
					event.MesMake_2(0, "「ファイアースコール」はこっちじゃないわよ。")
				end
			else
				event.MesMake_2(0, "ユリス、「ライドポッド」で応戦よ！")
			end
			at = 8
			helper_75684dd8(0, -1, 5, 256, 208)
		end
		event.EohSetFootSoundId(0, 0)
		event.ResetCamera(0)
		event.Finish()
		return 0
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				helper_ee1c51d0(0, 21, 5, 256, 208)
			end
			if at <= 2 then
				helper_038a2e4d(10)
			end
			return 0
		end
		if at <= 6 then
			if at == 4 then
				var3 = received[1] :: number
			end
			if at <= 4 then
				helper_038a2e4d(40)
			end
			if at <= 5 then
				helper_038a2e4d(20)
			end
			return 1
		end
		if at <= 8 then
			if at <= 7 then
				helper_ee1c51d0(0, -1, 5, 256, 208)
			end
			return 0
		end
		return nil
	end)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	event_99()
	flag = event.GetFlag(508) or flag
	flag_2 = event.GetFlag(512) or flag_2
	if flag == 1 and flag_2 == 0 then
		helper_13e64()
	else
		helper_1069c()
	end
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	vm.wait(1)
	helper_c956b4a2(32)
	event.Finish()
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local item: s32 = 0
	local argc: s32 = 0
	local var4: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.SetMesPreset(0, 4)
			event.SetMesWindowMode(0, 4)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				at = 1
				helper_75684dd8(0, 22, 8, 0, 0)
			else
				at = 2
				helper_75684dd8(0, 23, 8, 0, 0)
			end
			event.Finish()
			return
		end
		var1 = event.GetEventData_2(6) or var1
		if var1 == 1 then
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			argc = event.GetItemNum(372) or argc
			if argc <= 0 then
				event.MesMake_2(
					0,
					"炎の雨を降らせているのは、\nこの機械みたいだ。<page>これはほうっておけない！\nでも、どうすれば良いんだ？\n（(#)でアイテム使用）"
				)
			else
				event.MesMake_2(
					0,
					"「ファイアースコール」がある。\n（(#)ボタンでメニューを開く）"
				)
			end
			at = 3
			var4 = helper_c292fa16(0, -1, 5, 256, 208, var4)
			if var4 == 1 then
				var1 = 2
			end
		end
		if var1 == 2 then
			event.GotoUseItem(372)
			at = 4
			vm.wait(4)
			item = vmhost.used_item() or item
			if item > 0 then
				if item == 372 then
					event.SetFadeOut(15)
					at = 5
					helper_888ab2a3(15)
					event.DngSetupMainUnit(0)
					at = 6
					helper_15ae0()
					event.SetBitCtrl(1, 1)
					event.FuncPointShow("", "dun_entrance", 0)
					event.FuncPointShow("", "entrance", 0)
					event.SetCharaChangeFlag(3, 0)
					event.SetCharaChangeMask(3, 0)
					event.SetCharaChangeFlag(1, 0)
					event.SetCharaChangeMask(1, 0)
					event.Initialize()
					at = 7
					vm.wait(7)
					event.EohSyncObj_2(0, "p01_battleship")
					event.EohSetShow(0, 1)
					event.LoadMonsterFile(517, 1)
					event.LoadMonsterFile(518, 0)
					event.LoadMonsterFile(519, 0)
					event.AutoSetMonster(517, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.SetFadeIn(15)
					return
				else
					at = 8
					helper_5fb66cb1()
				end
			end
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ee1c51d0(0, 23, 8, 0, 0)
			end
			return 0
		end
		if at <= 7 then
			if at == 3 then
				var4 = received[2] :: number
			end
			if at <= 3 then
				local _ = var1 == 1
				var1 = 2
			end
			if at <= 4 then
				helper_038a2e4d(15)
			end
			if at <= 5 then
				at = 6
				helper_15ae0()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 1)
					event.FuncPointShow("", "dun_entrance", 0)
					event.FuncPointShow("", "entrance", 0)
					event.SetCharaChangeFlag(3, 0)
					event.SetCharaChangeMask(3, 0)
					event.SetCharaChangeFlag(1, 0)
					event.SetCharaChangeMask(1, 0)
					event.Initialize()
					at = 7
					vm.wait(7)
					event.EohSyncObj_2(0, "p01_battleship")
					event.EohSetShow(0, 1)
					event.LoadMonsterFile(517, 1)
					event.LoadMonsterFile(518, 0)
					event.LoadMonsterFile(519, 0)
					event.AutoSetMonster(517, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.SetFadeIn(15)
					return
				end)
			end
			return 0
		end
		if at <= 8 then
			return 0
		end
		return nil
	end)
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		helper_888ab2a3(20)
		event.DelMonster(-1)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.LeaveMonicaItemCheck()
		event.JoinPartyMember(3, 0)
		event.SetCharaChangeFlag(3, 0)
		event.SetCharaChangeMask(3, 0)
		event.JoinPartyMember(1, 0)
		event.SetCharaChangeFlag(1, 0)
		event.SetCharaChangeMask(1, 0)
		at = 2
		helper_21910()
		event.SetBitCtrl(1, 0)
		event.FuncPointShow("", "dun_entrance", 1)
		event.FuncPointShow("", "entrance", 1)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_21910()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 0)
					event.FuncPointShow("", "dun_entrance", 1)
					event.FuncPointShow("", "entrance", 1)
					event.Finish()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	if helper_10c74() ~= 0 then
		event.LoadScript("d05/d05.stb", 1000)
	end
end

--- Event 551, which map data, a script or the engine runs by number.
function script.event_551()
	local stage_id: s32 = 0
	local var1: s32 = 0
	local argc: s32 = 0
	if helper_11f38() ~= 0 then
		stage_id = event.DngGetStageId() or stage_id
		var1 = event.DngGetFloorId() or var1
		argc = event.GetNextFloor(var1, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var1, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		event.LoadScript("d05/d05.stb", 1000)
	end
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	event.Initialize()
	event.SetMesWindowMode(0, 0)
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(32)
	event.PlayBgm(0)
	event.SetCharaPos(0, -1755.3, 0.0, 2614.3)
	event.EohSyncObj_2(0, "p01_battleship")
	event.EohSetShow(0, 1)
	event.LoadMonsterFile(517, 1)
	event.LoadMonsterFile(518, 0)
	event.LoadMonsterFile(519, 0)
	event.AutoSetMonster(517, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(518, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.AutoSetMonster(519, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	vm.wait(2)
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- Event 15120, which map data, a script or the engine runs by number.
script.event_15120 = helper_13e64

--- Event 15160, which map data, a script or the engine runs by number.
script.event_15160 = helper_15ae0

--- Event 15200, which map data, a script or the engine runs by number.
script.event_15200 = helper_21910

return script
