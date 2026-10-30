--!strict
-- map/f/f04/f04.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_10d6108d = require("@lib/event/helper_10d6108d")
local helper_257fedcc = require("@lib/event/helper_257fedcc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_6ac55e60 = require("@lib/event/helper_6ac55e60")
local helper_7fed7304 = require("@lib/event/helper_7fed7304")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_9146482d = require("@lib/event/helper_9146482d")
local helper_981c86d9 = require("@lib/event/helper_981c86d9")
local helper_993850b3 = require("@lib/event/helper_993850b3")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_b9ba75a3 = require("@lib/event/helper_b9ba75a3")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c07d0e45 = require("@lib/event/helper_c07d0e45")
local helper_c790df92 = require("@lib/event/helper_c790df92")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_d61bc810 = require("@lib/event/helper_d61bc810")
local helper_d622cd71 = require("@lib/event/helper_d622cd71")
local helper_f38eabca = require("@lib/event/helper_f38eabca")
local helper_fd37560e = require("@lib/event/helper_fd37560e")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	if helper_c07d0e45() ~= 0 then
		event.EohSyncObj_2(0, "p10_f0401")
		event.EohSetShow(0, 0)
	end
	helper_fd37560e()
end

--- Helper function.
local function helper_21d10()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		event.SetFlag(548, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.LoadSound(5519)
		var0 = event.SndLoadSound_2(5519) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e500/e548/")
		event.LoadMes(0, 5, "e548.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e548_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e548_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 33)
			event.LoadEquip(5, 0, 4, "info", 33)
			event.LoadEquip(5, 0, 3, "info", 33)
			event.LoadEquip(5, 0, 2, "info", 33, 34)
			event.LoadMotion(5, "event/e500/e548/e548_mints.gltf", "info", 33)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 33)
			event.EohSyncChara(0, 33)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 33)
			event.LoadEquip(5, 1, 4, "info", 33)
			event.LoadEquip(5, 1, 3, "info", 33)
			event.LoadEquip(5, 1, 2, "info", 33, 34)
			event.LoadMotion(5, "event/e500/e548/e548_monica.gltf", "info", 33)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 33)
			event.EohSyncChara(1, 33)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(33)
		event.CharaActive(34)
		event.EohSetPos(0, 6.86, 0.0, 78.4)
		event.EohSetRot(0, 0.0, 0.03, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, -11.07, 0.0, 79.71)
		event.EohSetRot(1, 0.0, 0.03, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 2)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-0.89, 17.4, 23.48)
		event.CmrsSetRef(-4.13, 26.67, 318.08)
		event.CharaActive(0)
		event.CharaActive(33)
		event.CharaActive(34)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, 6.86, 0.0, 134.2, 80)
		event.ObjsMotionDelay(0, 80)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMove(1, -16.25, 0.0, 134.11, 90)
		event.ObjsMotionDelay(1, 90)
		event.ObjsSetMotion(1, "立ち")
		event.SetFadeIn(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		wait_objects(1)
		helper_888ab2a3(20)
		event.CmrsSetPos(17.79, 9.71, 164.37)
		event.CmrsSetRef(-8.32, 25.41, 125.32)
		event.ObjsSetPos(1, -9.86, 0.0, 136.53)
		event.ObjsSetRot(1, 0.0, 0.03, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5480010)
		event.CmrsSetPos(365.14, 3489.04, 547.36)
		event.CmrsSetRef(1061.18, 2794.56, 1334.73)
		event.CmrsMove(-1008.44, 3489.04, 1761.6, -311.9, 2794.56, 2548.54, 120)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5480020)
		wait_camera()
		event.SetCrossfade(30)
		event.CmrsSetPos(462.3, 74.35, 2186.93)
		event.CmrsSetRef(265.85, 104.22, 2195.54)
		event.CmrsMoveAhd(2.9, -74.33, 524.9, 240)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5480030)
		wait_camera()
		event.SetCrossfade(30)
		event.CmrsSetPos(-601.26, 2565.32, 2318.97)
		event.CmrsSetRef(-558.59, 2522.74, 2438.67)
		event.CmrsMove(-1019.04, 2565.32, 1129.79, -967.92, 2522.74, 1273.21, 180)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5480040)
		wait_camera()
		event.SetCrossfade(30)
		event.CmrsSetPos(83.14, 76.3, 216.76)
		event.CmrsSetRef(6.83, 24.83, 142.53)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(0, 1, "半口")
		helper_4116e6bb(5480050)
		event.ObjsSetMotion(1, "左向く", 6)
		event.ObjsNextMotion(1, "左向く会話", 4)
		event.ObjsMotionDelay(1, 60)
		event.ObjsSetMotion(1, "左向くL")
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5480060)
		event.ObjsSeDelay(0, 10)
		event.ObjsSePlay(0, var0, 0)
		event.ObjsSetMotion(0, "右向くうなづき", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5480070)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(14)
	event.CancelDramaScene()
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.LoadMes(0, -1)
	helper_9dafbc83(0.0, 0.0, 50.0, 0.0)
	event.ResetCamera(1, 0.0, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_23dd8()
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(552, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e500/e552/")
		event.LoadMes(0, 5, "e552.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e552_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 33)
			event.LoadEquip(5, 0, 4, "info", 33)
			event.LoadEquip(5, 0, 3, "info", 33)
			event.LoadEquip(5, 0, 2, "info", 33, 34)
			event.LoadMotion(5, "event/e500/e548/e548_mints.gltf", "info", 33)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 33)
			event.EohSyncChara(0, 33)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(33)
		event.CharaActive(34)
		event.EohSetPos(0, 6.86, 0.0, 78.4)
		event.EohSetRot(0, 0.0, 0.03, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-48.86, 89.93, 248.19)
		event.CmrsSetRef(12.07, 9.71, 74.55)
		event.CharaActive(0)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, 3.32, 0.0, 116.62, 80)
		event.ObjsMotionDelay(0, 80)
		event.ObjsSetMotion(0, "立ち")
		event.SetFadeIn(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		wait_objects(0)
		helper_888ab2a3(20)
		event.CmrsSetPos(22.04, 8.19, 149.45)
		event.CmrsSetRef(-1.58, 23.89, 108.84)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "通常目～おどろき目")
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5520010)
		event.CmrsSetPos(142.67, 815.3, 537.72)
		event.CmrsSetRef(130.25, 993.61, 1012.41)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.CmrsMove(81.88, 1714.97, 1427.25, 69.16, 1893.28, 1913.55, 90)
		helper_888ab2a3(90)
		event.CmrsSetPos(-48.86, 89.93, 248.19)
		event.CmrsSetRef(12.07, 9.71, 74.55)
		helper_888ab2a3(20)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5520020)
		event.ObjsSetMotion(0, "上向く戻り", 6)
		event.ObjsNextMotion(0, "走り", 4)
		helper_888ab2a3(10)
		event.ObjsRotation(0, 0.0, 1.47, 0.0, 5)
		event.ObjsMove(0, 255.2, 0.0, 125.39, 120)
		event.CmrsMove(-51.8, 89.93, 247.2, 139.01, 3.51, 77.46, 90)
		helper_888ab2a3(90)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(11)
	event.CancelDramaScene()
	event.EohSetFootSoundId(0, 0)
	event.DelExtMotion(0)
	event.LoadMes(0, -1)
	helper_9dafbc83(vm.f32(255.2), 0.0, vm.f32(125.39), vm.f32(1.47))
	event.ResetCamera(1, 0.0, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_27650()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local var2: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(556, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		event.LoadSound(5524)
		var0 = event.SndLoadSound_2(5524) or var0
		event.SndSePlay(var0, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e500/e556/")
		event.LoadMes(0, 5, "e556.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e556_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e556_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 33)
			event.LoadEquip(5, 0, 4, "info", 33)
			event.LoadEquip(5, 0, 3, "info", 33)
			event.LoadEquip(5, 0, 2, "info", 33, 34)
			event.LoadMotion(5, "event/e500/e548/e548_mints.gltf", "info", 33)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 33)
			event.EohSyncChara(0, 33)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 33)
			event.LoadEquip(5, 1, 4, "info", 33)
			event.LoadEquip(5, 1, 3, "info", 33)
			event.LoadEquip(5, 1, 2, "info", 33, 34)
			event.LoadMotion(5, "event/e500/e548/e548_monica.gltf", "info", 33)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 33)
			event.EohSyncChara(1, 33)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(33)
		event.CharaActive(34)
		event.EohSetPos(0, -193.68, 0.0, 73.48)
		event.EohSetRot(0, 0.0, 0.03, 0.0)
		event.EohSetMotion(0, "上向くL", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, -216.19, 0.0, 74.79)
		event.EohSetRot(1, 0.0, 0.03, 0.0)
		event.EohSetMotion(1, "上向くL", 4)
		event.EohSetFootSoundId(1, 2)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-1887.71, 3927.56, 1055.04)
		event.CmrsSetRef(-1156.25, 3675.26, 2209.98)
		event.CharaActive(0)
		event.CharaActive(33)
		event.CharaActive(34)
		event.CmrsMove(-1527.79, 3854.3, 1598.26, -829.22, 3554.42, 2756.88, 60)
		event.SetFadeIn(30)
		event.SndSePlay(var0, 1)
		helper_888ab2a3(60)
		event.SetCrossfade(30)
		event.CmrsSetPos(695.29, 4027.12, 592.97)
		event.CmrsSetRef(1043.56, 2105.14, 2169.9)
		event.SndSeStop(var0, 1)
		event.SndSePlay(var0, 2)
		event.CmrsMove(792.52, 3840.41, 1112.82, 1023.76, 2204.87, 2154.46, 90)
		helper_888ab2a3(90)
		event.SetCrossfade(30)
		event.CmrsSetPos(390.04, 1913.65, 1546.59)
		event.CmrsSetRef(-3.71, 2508.25, 2769.81)
		event.SndSeStop(var0, 2)
		event.SndSePlay(var0, 3)
		event.CmrsMove(311.55, 2000.73, 1796.37, -36.66, 2508.25, 2871.9, 90)
		helper_888ab2a3(90)
		event.SetCrossfade(30)
		event.CmrsSetPos(77.11, 1977.53, 568.47)
		event.CmrsSetRef(-6.16, 2923.06, 2851.89)
		event.SndSeStop(var0, 3)
		event.SndSePlay(var0, 4)
		event.CmrsMove(-8.75, 1736.89, 256.13, -3.94, 2828.04, 2790.99, 120)
		helper_888ab2a3(120)
		event.SetCrossfade(30)
		event.CmrsSetPos(-168.35, 63.68, 137.42)
		event.CmrsSetRef(-203.33, 14.92, 72.64)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おどろき顔")
		event.ObjsTexAnime(0, 1, "おどろき目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5560010)
		event.ObjsSetMotion(1, "上向く会話", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5560020)
		event.CmrsSetPos(-208.74, 0.55, 25.47)
		event.CmrsSetRef(-204.56, 33.98, 76.86)
		event.ObjsSetMotion(1, "上向く会話", 6)
		event.ObjsMotionDelay(1, 120)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.ObjsMotionDelay(0, 10)
		event.ObjsSetMotion(0, "上向く戻り", 6)
		event.ObjsNextMotion(0, "右向く", 4)
		event.ObjsMotionDelay(0, 10)
		event.ObjsSetMotion(0, "右向くL")
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(5560025)
		event.ObjsSetPos(1, -9.86, 0.0, 136.53)
		event.ObjsSetRot(1, 0.0, 0.03, 0.0)
		event.ObjsResetDaPosition(1)
		event.CmrsSetPos(-181.0, 10.89, 97.27)
		event.CmrsSetRef(-195.22, 24.21, 69.35)
		event.ObjsSetMotion(0, "右向く戻り", 6)
		event.ObjsNextMotion(0, "上向く", 4)
		event.ObjsMotionDelay(1, 60)
		event.ObjsSetMotion(0, "上向くL")
		helper_888ab2a3(75)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5560030)
		event.CmrsSetPos(-2993.05, 3147.07, -1117.3)
		event.CmrsSetRef(-2885.8, 3145.8, -973.91)
		helper_888ab2a3(60)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(13)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	var2 = event.GetDefBgmNo(102) or var2
	event.LoadBgm(var2)
	event.PlayBgm(0)
	event.DelExtMotion(0)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.LoadMes(0, -1)
	helper_9dafbc83(0.0, 0.0, 50.0, 0.0)
	event.ResetCamera(1, 0.0, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_1c2f4()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(508, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SearchCharaNo(401) or var0
		event.CharaActive(0, var0)
		event.LoadSound(5500)
		var1 = event.SndLoadSound_2(5500) or var1
		var2 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var2
		event.SetStatus(1, 0, 256, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e500/e508/")
		event.LoadMes(0, 5, "e508.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e508_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e508_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e508_gisecon.gltf", "info", 35)
		event.CharaActive(35)
		event.EohSyncChara(2, 35)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e508_bom_t.gltf", "info", 36)
		event.CharaActive(36)
		event.EohSyncChara(4, 36)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		block = event.LoadImg_4(5, "e508.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e50801", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(3, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 33)
			event.LoadEquip(5, 0, 4, "info", 33)
			event.LoadEquip(5, 0, 3, "info", 33)
			event.LoadEquip(5, 0, 2, "info", 33, 34)
			event.LoadMotion(5, "event/e500/e508/e508_mints.gltf", "info", 33)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 33)
			event.EohSyncChara(0, 33)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 33)
			event.LoadEquip(5, 1, 4, "info", 33)
			event.LoadEquip(5, 1, 3, "info", 33)
			event.LoadEquip(5, 1, 2, "info", 33, 34)
			event.LoadMotion(5, "event/e500/e508/e508_monica.gltf", "info", 33)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 33)
			event.EohSyncChara(1, 33)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(33)
		event.CharaActive(34)
		event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 37)
		event.CharaActive(37)
		event.EohSyncChara(5, 37)
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 5)
		event.EohSetPos(0, 29.8, -1160.0, 5918.68)
		event.EohSetRot(0, 0.0, -2.13, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 2)
		event.EohSetPos(1, 116.43, -1160.0, 5909.81)
		event.EohSetRot(1, 0.0, -2.13, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 2)
		event.EohSetPos(2, -95.34, 1160.0, 5824.2)
		event.EohSetRot(2, 0.0, 3.07, 0.0)
		event.EohSetMotion(2, "立ち", 4)
		event.EohSetFootSoundId(2, 2)
		event.EohSetPos(5, -67.36, 1194.16, 5795.09)
		event.EohSetRot(5, 0.0, 1.39, 0.0)
		event.EohSetShow(5, 0)
		event.EohSetShow(4, 0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-103.82, 1168.63, 5924.94)
		event.CmrsSetRef(-95.48, 1187.1, 5825.3)
		event.CharaActive(0)
		event.CharaActive(0, 37)
		event.CmrsMoveAhd2(-2.77, -18.15, 77.63, 150, 2, 0.5)
		event.SetFadeIn(30)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		helper_888ab2a3(180)
		event.ObjsSetPos(0, 59.27, 1160.0, 5900.71)
		event.ObjsSetPos(1, 116.43, 1160.0, 5909.81)
		helper_888ab2a3(30)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, -29.62, 1160.0, 5881.12, 120)
		event.ObjsMotionDelay(0, 120)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMotionDelay(1, 10)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMove(1, -17.95, 1160.0, 5866.09, 120)
		event.ObjsMotionDelay(1, 120)
		event.ObjsSetMotion(1, "立ち")
		helper_888ab2a3(150)
		event.SndSePlay(var1, 2)
		event.ObjsSetMotion(2, "振り向く", 6)
		event.ObjsNextMotion(2, "振り向くループ", 4)
		helper_888ab2a3(30)
		event.SndSeStop(var1, 2)
		event.CmrsSetPos(-42.11, 1183.03, 5838.93)
		event.CmrsSetRef(-92.5, 1187.1, 5823.57)
		event.ObjsSetMotion(2, "振り向く（会話）", 6)
		event.ObjsNextMotion(2, "振り向くループ", 4)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080010)
		event.ObjsSetRot(0, 0.0, -2.61, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.CmrsSetPos(-40.15, 1177.76, 5832.3)
		event.CmrsSetRef(-19.81, 1181.94, 5882.99)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(5080020)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(5080025)
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "わらい口パク")
		helper_4116e6bb(5080030)
		event.CmrsSetPos(-288.23, 1713.07, 1700.32)
		event.CmrsSetRef(-265.03, 1706.85, 1729.17)
		event.CmrsMove(-245.15, 1713.07, 1697.71, -265.03, 1706.85, 1729.17, 600)
		event.SetPakuAnim(1, "わらい口パク")
		helper_0382f327(5080040, 300)
		event.SetPakuAnim(2, "口パク")
		helper_0382f327(5080050, 300)
		wait_camera()
		event.ObjsSetPos(0, -43.15, 1160.0, 5855.69)
		event.ObjsSetRot(0, 0.0, -1.89, 0.0)
		event.ObjsSetPos(1, -36.4, 1160.0, 5827.54)
		event.ObjsSetRot(1, 0.0, -1.65, 0.0)
		event.ObjsSetPos(2, -95.84, 1160.0, 5822.44)
		event.ObjsSetRot(2, 0.0, 1.11, 0.0)
		event.CmrsSetPos(-43.6, 1261.21, 5957.35)
		event.CmrsSetRef(-64.76, 1175.56, 5833.21)
		event.ObjsSetMotion(2, "会話２（手腰に）", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080060)
		wait_objects(2)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(5080070)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(5080075)
		event.ObjsSetMotion(2, "歩き")
		event.ObjsMotionDelay(2, 60)
		event.ObjsSetMotion(2, "立ち")
		event.ObjsRotation(2, 0.0, 2.79, 0.0, 12)
		event.ObjsMove(2, -85.83, 1160.0, 5772.54, 60)
		wait_objects(2)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080080)
		event.CmrsSetPos(-54.61, 1199.22, 5675.45)
		event.CmrsSetRef(-68.38, 1175.56, 5850.15)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMotionDelay(1, 90)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsRotation(1, 0.0, -2.97, 0.0, 12)
		event.ObjsMove(1, -55.34, 1160.0, 5775.54, 90)
		event.ObjsMotionDelay(1, 10)
		event.ObjsSetMotion(1, "立ち→グイ見る", 6)
		event.ObjsNextMotion(1, "グイ見るL", 4)
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsRotation(0, 0.0, -2.97, 0.0, 12)
		event.ObjsMove(0, -35.96, 1160.0, 5773.94, 90)
		event.ObjsMotionDelay(0, 90)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "前向き～目下")
		helper_888ab2a3(30)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(5080090)
		wait_objects(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目下～おどろき目")
		event.ObjsTexAnime(0, 1, "口とじ～大口")
		event.ObjsSetMotion(2, "会話２（手腰に）")
		event.ObjsMotionDelay(2, 90)
		event.ObjsSetMotion(2, "立ち")
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080100)
		wait_objects(0)
		wait_objects(2)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "通常目～おどろき目")
		event.ObjsSetMotion(1, "直接？！", 6)
		event.ObjsNextMotion(1, "グイ見るL", 4)
		event.ObjsSetMotion(0, "直接！？", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		event.SetPakuAnim(1, "大口パク")
		helper_4116e6bb(5080110)
		event.ObjsSetColor(3, 128, 128, 128, 128, 30)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080120)
		event.ObjsSetColor(3, 128, 128, 128, 0, 30)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetMotion(1, "立ち")
		event.ObjsSetMotion(2, "立ち")
		event.CmrsSetPos(-1.14, 2507.89, -1061.57)
		event.CmrsSetRef(-1.4, 2524.83, -894.87)
		event.CmrsMove2(-1.25, 516.45, -1054.54, -1.36, 518.76, -917.04, 330, 0, 0.7)
		event.SetPakuAnim(2, "口パク")
		helper_0382f327(5080130, 240)
		event.SetPakuAnim(1, "通常口パク")
		helper_0382f327(5080140, 150)
		event.SetPakuAnim(1, "通常口パク")
		helper_0382f327(5080145, 180)
		wait_camera()
		event.CmrsSetPos(-68.79, 1173.91, 5887.0)
		event.CmrsSetRef(-63.03, 1177.39, 5762.52)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetMotion(2, "会話２（手腰に）")
		event.ObjsMotionDelay(2, 90)
		event.ObjsSetMotion(2, "立ち")
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080150)
		event.ObjsSetMotion(0, "左向く", 6)
		event.ObjsNextMotion(0, "左向く会話", 4)
		event.ObjsMotionDelay(0, 90)
		event.ObjsSetMotion(0, "左向くL")
		event.ObjsMotionDelay(1, 10)
		event.ObjsSetMotion(1, "右向く", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(5080160)
		wait_objects(1)
		event.ObjsMotionDelay(2, 30)
		event.ObjsSetMotion(2, "モニカ見る", 6)
		event.ObjsNextMotion(2, "モニカ見るループ", 4)
		event.ObjsMotionDelay(2, 30)
		event.ObjsSetMotion(2, "モニカ見る（会話）", 6)
		event.ObjsNextMotion(2, "モニカ見るループ", 4)
		event.ObjsMotionDelay(1, 30)
		event.ObjsSetMotion(1, "右向く戻り", 6)
		event.ObjsNextMotion(1, "立ち→グイ見る", 4)
		event.ObjsNextMotion(1, "グイ見るL", 4)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080170)
		wait_objects(2)
		event.EohSetShow(4, 1)
		event.SetReference(35, "b", 36)
		event.ObjsSetMotion(0, "爆弾ゲット", 4)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetPos(0, -55.61, 1160.0, 5803.78)
		event.ObjsSetRot(0, 0.0, -1.65, 0.0)
		event.ObjsSetPos(1, -55.51, 1160.0, 5780.57)
		event.ObjsSetRot(1, 0.0, -1.65, 0.0)
		event.ObjsSetPos(2, -95.43, 1160.0, 5795.54)
		event.ObjsSetRot(2, 0.0, 1.59, 0.0)
		event.CmrsSetPos(-49.1, 1184.63, 5789.27)
		event.CmrsSetRef(-125.19, 1191.35, 5802.1)
		event.SndSePlay(var1, 3)
		event.ObjsSetMotion(2, "だす", 6)
		event.ObjsNextMotion(2, "だすループ", 4)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080180)
		event.SndSeStop(var1, 3)
		wait_objects(2)
		event.EohSetShow(1, 0)
		event.DelReference(36)
		if active_chr_no == 0 then
			event.SetReference(0, "item", 36)
		else
			event.SetReference(33, "item", 36)
		end
		event.ObjsSetMotion(2, "立ち", 4)
		event.CmrsSetPos(-94.34, 1203.09, 5799.78)
		event.CmrsSetRef(-54.1, 1186.29, 5805.08)
		event.SndPauseBgm()
		event.CharaActive(37)
		event.EohSetShow(5, 1)
		event.ObjsSetMotion(5, "発動", 6)
		event.ObjsSeDelay(5, 30)
		event.ObjsSePlay(5, var2, 0)
		event.SndSePlay(var1, 4)
		helper_f38eabca(372, 1)
		event.ObjsMotionWait(5)
		wait_objects(5)
		event.PlayBgm(0)
		event.DelReference(36)
		event.EohSetShow(1, 1)
		event.ObjsSetMotion(0, "立ち", 4)
		event.CmrsSetPos(3.92, 1224.43, 5857.27)
		event.CmrsSetRef(-77.23, 1174.09, 5794.78)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsSetMotion(2, "会話２（手腰に）", 6)
		event.ObjsMotionDelay(2, 90)
		event.ObjsNextMotion(2, "立ち", 4)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080190)
		event.SetPakuAnim(2, "口パク")
		helper_4116e6bb(5080195)
		wait_objects(2)
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.SetPakuAnim(0, "わらい口パク")
		helper_4116e6bb(5080200)
		wait_objects(0)
		event.ObjsSetMotion(2, "ぐっ", 6)
		event.ObjsNextMotion(2, "ぐぅ（会話）", 4)
		event.ObjsMotionDelay(2, 60)
		event.ObjsNextMotion(2, "ぐっループ", 4)
		event.SndSePlay(var1, 5)
		event.ObjsTexAnime(2, 1, "口とじ～くいしばり")
		helper_4116e6bb(5080210)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(48)
	event.CancelDramaScene()
	event.SetStatus(1, 0, 256, 0)
	event.SndSeStop(var2, 0)
	event.SndSeStop(var1, 3)
	event.SndSeStop(var1, 4)
	event.SndSeStop(var1, 5)
	event.CharaActive(1, var0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.SpriteSetDraw(0, 0)
	event.DelExtMotion(0)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.DeleteChara(35)
	event.DeleteChara(36)
	event.DeleteChara(37)
	event.DelImg(0)
	event.LoadMes(0, -1)
	helper_d61bc810(0)
	event.PlayBgm(0)
	helper_9dafbc83(vm.f32(-1688.6), 1160.0, 5131.0, vm.f32(2.55))
	event.ResetCamera(1, 3.1415927, 10.0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_2a974()
	local var0: s32 = 0
	local value: any = 0
	local at: number = 0
	return vm.guard(function()
		var0 = event.GetCnt(14) or var0
		event.SetMesWindowMode(1, 4)
		event.MesMake_2(1, "エレベーターのボタンがある。")
		open_message(1, -1, 5, 0, 0)
		event.SetMesWindowMode(0, 4)
		event.SetMesQuestionGyou(0, 0)
		event.SetMesEtc(0, 0, 1)
		event.SetMesEtc(0, 1, 1)
		event.SetMesEtc(0, 5, var0, 2)
		event.MesMake_2(0, "１階\n２階\n３階")
		at = 1
		value = helper_bac0e30d(0, -1, 8, 0, 0, 3, var0)
		event.SetMesEtc(0, 0, 0)
		event.SetMesEtc(0, 1, 0)
		event.SetMesEtc(0, 5, var0, -1)
		close_message(1)
		if value < 0 or value == var0 then
			return -1
		else
			event.SetCnt(14, value)
			return value
		end
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				value = received[1] :: number
			end
			helper_d16eef1e(1)
			return -1
		end
		return nil
	end)
end

--- Helper function.
local function helper_2a810()
	local flag: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		vm.entry(1)
		flag = event.GetFlag(508) or flag
		if helper_7fed7304() ~= 0 and flag == 0 then
			event.AddItem(372, 1)
			at = 2
			helper_1c2f4()
			return 1
		end
		return 0
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_1c2f4()
				return vm.continue_with(function()
					return 1
				end)
			end
			local _ = helper_993850b3()
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_2c0fc(arg0: s32)
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: any = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: s32 = 0
	var1 = helper_c07d0e45()
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 4)
	event.SetMesQuestionGyou(0, 1)
	event.SetMesEtc(0, 0, 1)
	event.SetMesEtc(0, 1, 1)
	if var1 ~= 0 then
		event.MesMake_2(
			0,
			"転送ゲートの行き先を選択\n転送ゲート・北\n転送ゲート・東\n転送ゲート・西\nタイムゲート前\nパズノス・ブリッジ"
		)
		var2 = 5
	else
		event.MesMake_2(
			0,
			"転送ゲートの行き先を選択\n転送ゲート・北\n転送ゲート・東\n転送ゲート・西\nタイムゲート前"
		)
		var2 = 4
	end
	var3 = helper_bac0e30d(0, -1, 8, 0, 0, var2, vm.i32(arg0 + 1))
	event.SetMesQuestionGyou(0, 0)
	event.SetMesEtc(0, 0, 0)
	event.SetMesEtc(0, 1, 0)
	if var3 == -1 then
		return
	end
	if vm.wrap(var3 - 1) == arg0 then
		return
	end
	event.AssignStack(5)
	event.ClearStack(5)
	event.EsmInitialize(5)
	event.EsmLoadBase("サンワープ２")
	event.EsmInitFix(5)
	event.EsmCreate("サンワープ２")
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var4 = out1 or var4
		var5 = out2 or var5
		var6 = out3 or var6
	end
	event.EsmSetVect1(var4, var5, var6)
	var7 = event.GetSndId(2) or var7
	event.SndSePlay(var7, 120)
	helper_888ab2a3(15)
	event.SetCharaShow(0, 0, 1, 0.05)
	event.SetCharaShow(1, 0, 1, 0.05)
	event.SetCharaShow(2, 0, 1, 0.05)
	event.SetCharaShow(3, 0, 1, 0.05)
	helper_888ab2a3(30)
	event.SetFadeOut(15)
	helper_888ab2a3(15)
	event.EsmClear()
	event.SetCharaShow(0, 1)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.SetCharaShow(3, 1)
	if vm.wrap(var3 - 1) == 1 then
		helper_9dafbc83(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
	end
	if vm.wrap(var3 - 1) == 2 then
		helper_9dafbc83(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
	end
	if vm.wrap(var3 - 1) == 3 then
		helper_9dafbc83(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
	end
	if vm.wrap(var3 - 1) == 0 then
		helper_9dafbc83(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
	end
	if vm.wrap(var3 - 1) == 4 then
		event.MapJump_2(-1, "s30")
		vm.wait(5)
		return
	end
	event.ResetCamera(1, 3.1415927)
	event.SetFadeIn(15)
end

--- Helper function.
local function helper_2b9a8()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: s32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 5)
	event.MesMake_2(0, "パズノス・ブリッジへ移動しますか？")
	var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
	if var0 ~= 0 then
		return
	end
	event.AssignStack(5)
	event.ClearStack(5)
	event.EsmInitialize(5)
	event.EsmLoadBase("サンワープ２")
	event.EsmInitFix(5)
	event.EsmCreate("サンワープ２")
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var1 = out1 or var1
		var2 = out2 or var2
		var3 = out3 or var3
	end
	event.EsmSetVect1(var1, var2, var3)
	var4 = event.GetSndId(2) or var4
	event.SndSePlay(var4, 120)
	helper_888ab2a3(15)
	event.SetCharaShow(0, 0, 1, 0.05)
	event.SetCharaShow(1, 0, 1, 0.05)
	event.SetCharaShow(2, 0, 1, 0.05)
	event.SetCharaShow(3, 0, 1, 0.05)
	helper_888ab2a3(30)
	event.SetFadeOut(15)
	helper_888ab2a3(15)
	event.EsmClear()
	event.SetCharaShow(0, 1)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.SetCharaShow(3, 1)
	event.MapJump_2(-1, "s30")
	vm.wait(5)
end

--- Helper function.
local function helper_251d0()
	local var6: s32 = 0
	local amplitude_2: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(540, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		at = 1
		helper_888ab2a3(4)
		event.LoadBgm(116)
		event.PlayBgm(0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		event.ChangeDir("event/e500/e540/")
		event.LoadChara(5, "e540_jet.gltf", "info", 32)
		event.CharaActive(0, 32)
		event.CopyChara(5, 32, 33)
		event.CharaActive(0, 33)
		event.LoadChara(5, "e540_parm1.gltf", "info", 34)
		event.CharaActive(1, 34)
		event.LoadChara(5, "e540_parm2.gltf", "info", 35)
		event.CharaActive(1, 35)
		event.LoadChara(5, "e540_parm3.gltf", "info", 36)
		event.CharaActive(1, 36)
		event.LoadChara(5, "e540_parm4.gltf", "info", 37)
		event.CharaActive(1, 37)
		event.ChangeDir("")
		event.EohSyncObj_2(0, "p10_f0401")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(0, "p20_f0401")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncObj_3(1, "p22_f0401", "f0401_27-m-0")
		event.EohSetShow(1, 0)
		event.EohSyncObj_3(1, "p22_f0401", "f0401_27-m-1")
		event.EohSetShow(1, 0)
		event.EohSyncObj_3(1, "p22_f0401", "f0401_25-m")
		event.EohSetShow(1, 0)
		event.EohSyncObj_2(1, "p22_f0401")
		event.EohGetFramePos(1, "e540_parm1")
		event.SetCharaPos(34, -2400.0, 1700.0, 2600.0)
		event.SetCharaRot(34, 0.0, 1.6, 0.0)
		event.SetMotion(34, "射出1", 5)
		event.EohSyncObj_2(1, "p22_f0401")
		event.EohGetFramePos(1, "e540_parm2")
		event.SetCharaPos(35, -2100.0, 1700.0, 5300.0)
		event.SetCharaRot(35, 0.0, 2.4, 0.0)
		event.SetMotion(35, "射出1", 5)
		event.EohSyncObj_2(1, "p22_f0401")
		event.EohGetFramePos(1, "e540_parm3")
		event.SetCharaPos(36, 2200.0, 1700.0, 5300.0)
		event.SetCharaRot(36, 0.0, -2.4, 0.0)
		event.SetMotion(36, "射出1", 5)
		event.EohSyncObj_2(1, "p22_f0401")
		event.EohGetFramePos(1, "e540_parm4")
		event.SetCharaPos(37, 2400.0, 1700.0, 2600.0)
		event.SetCharaRot(37, 0.0, -1.6, 0.0)
		event.SetMotion(37, "射出1", 5)
		event.SetCharaPos(32, -930.0, 750.0, 2330.0)
		event.SetCharaPos(33, 930.0, 750.0, 2330.0)
		event.InitDramaScene()
		event.SetProjection(524.9)
		event.CmrsInit()
		event.CmrsSetPos(0.0, 2449.87, -2065.79)
		event.CmrsSetRef(0.0, 2430.55, -2020.14)
		event.CmrsMove2(0.0, 2785.4, -2065.79, 0.0, 2787.08, -2020.14, 120, 2, 1.0)
		event.SetFadeIn(10)
		at = 2
		wait_camera()
		event.CmrsSetPos(-2108.31, 1992.04, 1136.27)
		event.CmrsSetRef(-2039.71, 1945.46, 1320.75)
		at = 3
		helper_888ab2a3(4)
		event.SetMotion(34, "射出1", 6)
		at = 4
		helper_888ab2a3(10)
		event.SetMotion(35, "射出1", 6)
		at = 5
		helper_888ab2a3(30)
		event.CmrsSetPos(1955.54, 2093.16, 785.71)
		event.CmrsSetRef(1839.34, 1936.52, 1240.3)
		at = 6
		helper_888ab2a3(4)
		event.SetMotion(37, "射出1", 6)
		at = 7
		helper_888ab2a3(10)
		event.SetMotion(36, "射出1", 6)
		at = 8
		helper_888ab2a3(30)
		event.CmrsSetPos(1709.28, 50.66, -919.25)
		event.CmrsSetRef(1370.18, 511.19, 109.87)
		event.SetProjection(390.0)
		event.CharaActive(1, 32)
		event.CharaActive(1, 33)
		event.SetCharaShow(32, 1, 1, 0.016666668)
		event.SetCharaShow(33, 1, 1, 0.016666668)
		var6 = 0
		amplitude_2 = vm.f32(0.02)
		while var6 < 120 do
			var6 = var6 + 1
			at = 9
			vm.wait(9)
			if vm.imod(var6, 4) == 0 then
				event.CmrsInit()
				event.CmrsQuake(0.0, amplitude_2, 0.0, -1)
				amplitude_2 = vm.f32(amplitude_2 * vm.f32(1.2))
			end
			if var6 == 110 then
				event.SetFadeOut(10)
			end
		end
		at = 10
		helper_888ab2a3(2)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_344d6cd8()
		end
		if at <= 2 then
			helper_038a2e4d(4)
		end
		if at <= 3 then
			helper_038a2e4d(10)
		end
		if at <= 4 then
			helper_038a2e4d(30)
		end
		if at <= 5 then
			helper_038a2e4d(4)
		end
		if at <= 6 then
			helper_038a2e4d(10)
		end
		if at <= 7 then
			helper_038a2e4d(30)
		end
		if at <= 8 then
			var6 = 0
			amplitude_2 = vm.f32(0.02)
			local _ = var6 < 120
			var6 = var6 + 1
		end
		if at <= 9 then
			amplitude_2 = vm.f32(amplitude_2 * vm.f32(1.2))
			helper_038a2e4d(2)
		end
		return true
	end)
	event.CancelDramaScene()
	event.SetProjection(524.9)
	event.CharaActive(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.DeleteChara(34)
	event.DeleteChara(35)
	event.DeleteChara(36)
	event.DeleteChara(37)
end

--- Helper function.
local function helper_26bd8()
	vm.section(function()
		event.SetFlag(540, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		event.ChangeDir("event/e500/e540/")
		event.LoadChara(5, "e540_jet.gltf", "info", 32)
		event.CharaActive(32)
		event.SetCharaType(32, 4)
		event.EohSyncChara(3, 32)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.CopyChara(5, 32, 33)
		event.CharaActive(33)
		event.SetCharaType(33, 4)
		event.EohSyncChara(4, 33)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.ChangeDir("")
		event.EohSyncObj_2(0, "p10_f0401")
		event.EohSetShow(0, 0)
		event.EohSyncObj_2(0, "p20_f0401")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncObj_2(1, "p11_f0401")
		event.EohSetShow(1, 0)
		event.EohSyncObj_2(2, "p22_f0401")
		event.EohSetShow(2, 0)
		event.EohSetPos(0, 0.0, 0.0, 3300.0)
		event.EohSetPos(3, -930.0, 750.0, 2330.0)
		event.EohSetPos(4, 930.0, 750.0, 2330.0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(1276.52, 7391.95, 1416.71)
		event.CmrsSetRef(1173.37, 7042.65, 1560.26)
		event.CmrsQuake(0.0, 3.0, 0.0, -1)
		event.SetFadeIn(10)
		helper_888ab2a3(10)
		event.ObjsMove2(0, 0.0, 9000.0, 3300.0, 160, 1, 1.0)
		event.ObjsMove2(3, -930.0, 9750.0, 2330.0, 160, 1, 1.0)
		event.ObjsMove2(4, 930.0, 9750.0, 2330.0, 160, 1, 1.0)
		wait_objects(0)
		event.SetFadeOut(10)
		helper_888ab2a3(10)
	end)
	event.CancelDramaScene()
	event.CharaActive(0)
	event.DeleteChara(32)
	event.DeleteChara(33)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local old_map_no: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		old_map_no = event.GetOldMapNo() or old_map_no
		event.SetFadeIn(15)
		if old_map_no == 3 then
			event.SetCnt(14, 0)
		end
		event_99()
		helper_9146482d()
		if helper_d622cd71() ~= 0 then
			at = 1
			helper_21d10()
		end
		if helper_10d6108d() ~= 0 then
			at = 2
			helper_23dd8()
		end
		if helper_981c86d9() ~= 0 then
			at = 3
			helper_27650()
		end
		if old_map_no == 3 then
			helper_9dafbc83(0.0, 0.0, 0.0, 0.0)
		end
		if old_map_no == 105 then
			var1 = event.GetCnt(18) or var1
			event.SetCnt(14, 0)
			helper_9146482d()
			if var1 == 1 then
				helper_9dafbc83(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
			end
			if var1 == 2 then
				helper_9dafbc83(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
			end
			if var1 == 3 then
				helper_9dafbc83(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
			end
			if var1 == 0 then
				helper_9dafbc83(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
			end
		end
		if old_map_no == 107 then
			event.SetCnt(14, 2)
			helper_9146482d()
			helper_9dafbc83(0.0, 2460.0, 6000.0, vm.f32(3.14))
		end
		event.ResetCamera(1, 0.0, 10.0)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				local _ = helper_257fedcc()
				at = 2
				helper_23dd8()
				return vm.continue_with(function()
					if helper_981c86d9() ~= 0 then
						at = 3
						helper_27650()
					end
					if old_map_no == 3 then
						helper_9dafbc83(0.0, 0.0, 0.0, 0.0)
					end
					if old_map_no == 105 then
						var1 = event.GetCnt(18) or var1
						event.SetCnt(14, 0)
						helper_9146482d()
						if var1 == 1 then
							helper_9dafbc83(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
						end
						if var1 == 2 then
							helper_9dafbc83(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
						end
						if var1 == 3 then
							helper_9dafbc83(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
						end
						if var1 == 0 then
							helper_9dafbc83(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
						end
					end
					if old_map_no == 107 then
						event.SetCnt(14, 2)
						helper_9146482d()
						helper_9dafbc83(0.0, 2460.0, 6000.0, vm.f32(3.14))
					end
					event.ResetCamera(1, 0.0, 10.0)
					return
				end)
			end
			if at <= 2 then
				local _ = helper_257fedcc()
				at = 3
				helper_27650()
				return vm.continue_with(function()
					if old_map_no == 3 then
						helper_9dafbc83(0.0, 0.0, 0.0, 0.0)
					end
					if old_map_no == 105 then
						var1 = event.GetCnt(18) or var1
						event.SetCnt(14, 0)
						helper_9146482d()
						if var1 == 1 then
							helper_9dafbc83(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
						end
						if var1 == 2 then
							helper_9dafbc83(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
						end
						if var1 == 3 then
							helper_9dafbc83(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
						end
						if var1 == 0 then
							helper_9dafbc83(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
						end
					end
					if old_map_no == 107 then
						event.SetCnt(14, 2)
						helper_9146482d()
						helper_9dafbc83(0.0, 2460.0, 6000.0, vm.f32(3.14))
					end
					event.ResetCamera(1, 0.0, 10.0)
					return
				end)
			end
			local _ = helper_257fedcc()
			helper_43f02c95(0.0, 0.0, 0.0, 0.0)
			helper_c790df92()
			helper_43f02c95(vm.f32(-2079.4), 6.0, vm.f32(5052.4), vm.f32(2.16))
			helper_43f02c95(vm.f32(2011.1), 6.0, 5158.5, vm.f32(-2.23))
			helper_43f02c95(286.5, 6.0, vm.f32(-22.3), vm.f32(-0.16))
			helper_43f02c95(vm.f32(-228.6), 6.0, vm.f32(5828.1), vm.f32(-0.02))
			helper_c790df92()
			helper_43f02c95(0.0, 2460.0, 6000.0, vm.f32(3.14))
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_21d10

--- Event 151, which map data, a script or the engine runs by number.
script.event_151 = helper_1c2f4

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	helper_6ac55e60(0.0, 0.0, 0.0, vm.f32(6.2831855))
	event.MapJump_2(-1, "g04")
	vm.wait(2)
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	local var0: s32 = 0
	local var1: any = 0
	local at: number = 0
	local t0: s32 = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		var0 = event.GetSndId(2) or var0
		at = 1
		var1 = helper_2a974()
		if var1 >= 0 then
			event.SndSePlay(var0, 70)
			event.SetFadeOut(10)
			at = 2
			helper_888ab2a3(10)
			if var1 == 0 then
				helper_9dafbc83(vm.f32(684.8), 0.0, vm.f32(6024.3), vm.f32(-2.87))
			end
			if var1 == 1 then
				helper_9dafbc83(vm.f32(684.8), 1160.0, vm.f32(6024.3), vm.f32(-2.87))
				at = 3
				if helper_2a810() ~= 0 then
					helper_9146482d()
					event.ResetCamera(1, 0.0, 10.0)
					event.SetFadeIn(10)
					return
				end
			end
			if var1 == 2 then
				helper_9dafbc83(vm.f32(684.8), 2320.0, vm.f32(6024.3), vm.f32(-2.87))
			end
			event.SndSePlay(var0, 71)
			helper_9146482d()
			event.ResetCamera(1, 0.0, 10.0)
			event.SetFadeIn(10)
		end
		return
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at == 3 then
				t0 = received[1] :: number
			end
			if at <= 1 then
				helper_038a2e4d(10)
			end
			if at <= 2 then
				helper_43f02c95(vm.f32(684.8), 0.0, vm.f32(6024.3), vm.f32(-2.87))
				helper_43f02c95(vm.f32(684.8), 1160.0, vm.f32(6024.3), vm.f32(-2.87))
				at = 3
				t0 = helper_2a810()
				return vm.continue_with(function()
					if t0 ~= 0 then
						helper_9146482d()
						event.ResetCamera(1, 0.0, 10.0)
						event.SetFadeIn(10)
						return
					end
					if var1 == 2 then
						helper_9dafbc83(vm.f32(684.8), 2320.0, vm.f32(6024.3), vm.f32(-2.87))
					end
					event.SndSePlay(var0, 71)
					helper_9146482d()
					event.ResetCamera(1, 0.0, 10.0)
					event.SetFadeIn(10)
					return
				end)
			end
			helper_c790df92()
			return 0
		end
		return nil
	end)
end

--- Event 551, which map data, a script or the engine runs by number.
function script.event_551()
	local var0: s32 = 0
	local var1: any = 0
	local at: number = 0
	local t0: s32 = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		var0 = event.GetSndId(2) or var0
		at = 1
		var1 = helper_2a974()
		if var1 >= 0 then
			event.SndSePlay(var0, 70)
			event.SetFadeOut(10)
			at = 2
			helper_888ab2a3(10)
			if var1 == 0 then
				helper_9dafbc83(vm.f32(-2553.7), 0.0, vm.f32(3882.6), vm.f32(1.55))
			end
			if var1 == 1 then
				helper_9dafbc83(vm.f32(-2553.7), 1160.0, vm.f32(3882.6), vm.f32(1.55))
				at = 3
				if helper_2a810() ~= 0 then
					helper_9146482d()
					event.ResetCamera(1, 0.0, 10.0)
					event.SetFadeIn(10)
					return
				end
			end
			if var1 == 2 then
				helper_9dafbc83(vm.f32(-2553.7), 2320.0, vm.f32(3882.6), vm.f32(1.55))
			end
			event.SndSePlay(var0, 71)
			helper_9146482d()
			event.ResetCamera(1, 0.0, 10.0)
			event.SetFadeIn(10)
		end
		return
	end, function(received: { any })
		if at <= 3 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at == 3 then
				t0 = received[1] :: number
			end
			if at <= 1 then
				helper_038a2e4d(10)
			end
			if at <= 2 then
				helper_43f02c95(vm.f32(-2553.7), 0.0, vm.f32(3882.6), vm.f32(1.55))
				helper_43f02c95(vm.f32(-2553.7), 1160.0, vm.f32(3882.6), vm.f32(1.55))
				at = 3
				t0 = helper_2a810()
				return vm.continue_with(function()
					if t0 ~= 0 then
						helper_9146482d()
						event.ResetCamera(1, 0.0, 10.0)
						event.SetFadeIn(10)
						return
					end
					if var1 == 2 then
						helper_9dafbc83(vm.f32(-2553.7), 2320.0, vm.f32(3882.6), vm.f32(1.55))
					end
					event.SndSePlay(var0, 71)
					helper_9146482d()
					event.ResetCamera(1, 0.0, 10.0)
					event.SetFadeIn(10)
					return
				end)
			end
			helper_c790df92()
			return 0
		end
		return nil
	end)
end

--- Event 552, which map data, a script or the engine runs by number.
function script.event_552()
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetFadeOut(15)
	helper_888ab2a3(15)
	event.MapJump_2(-1, "s39")
	vm.wait(2)
end

--- Event 560, which map data, a script or the engine runs by number.
function script.event_560()
	helper_2c0fc(1)
end

--- Event 561, which map data, a script or the engine runs by number.
function script.event_561()
	helper_2c0fc(3)
end

--- Event 562, which map data, a script or the engine runs by number.
function script.event_562()
	event.SetCnt(13, 2)
	helper_2b9a8()
end

--- Event 563, which map data, a script or the engine runs by number.
function script.event_563()
	event.SetCnt(13, 3)
	helper_2b9a8()
end

--- Event 564, which map data, a script or the engine runs by number.
function script.event_564()
	event.SetCnt(13, 4)
	helper_2b9a8()
end

--- Event 565, which map data, a script or the engine runs by number.
function script.event_565()
	event.SetCnt(13, 5)
	helper_2b9a8()
end

--- Event 566, which map data, a script or the engine runs by number.
function script.event_566()
	helper_2c0fc(2)
end

--- Event 567, which map data, a script or the engine runs by number.
function script.event_567()
	helper_2c0fc(0)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	helper_251d0()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "s30", 600)
end

--- Event 601, which map data, a script or the engine runs by number.
function script.event_601()
	helper_26bd8()
	event.BgmLoadCancel()
	event.MapJump_3(-1, "s55", 600)
end

--- Event 1000, which map data, a script or the engine runs by number.
script.event_1000 = helper_b9ba75a3

--- Event 15080, which map data, a script or the engine runs by number.
function script.event_15080()
	event.DbgSetAnalyzeFlag(3, 3, 0)
	event.DbgSetAnalyzeFlag(3, 4, 0)
	event.DbgSetAnalyzeFlag(3, 5, 0)
	event.DbgSetAnalyzeFlag(3, 6, 0)
	event.DbgSetAnalyzeFlag(3, 7, 0)
	event.DbgSetAnalyzeFlag(3, 8, 0)
	event.DbgSetAnalyzeFlag(3, 9, 0)
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.SetFlag(508, 0)
	event.MapJump_3(-1, 102, 151)
	vm.wait(1)
end

--- Event 15220, which map data, a script or the engine runs by number.
function script.event_15220()
	event.SetFlag(520, 1)
	event.SetFlag(522, 0)
	event.JoinPartyMember(1, 0)
	helper_6ac55e60(0.0, 0.0, 0.0, vm.f32(6.2831855))
	event.MapJump_2(-1, "g04")
	vm.wait(2)
end

--- Event 15480, which map data, a script or the engine runs by number.
function script.event_15480()
	event.DbgSetAnalyzeFlag(3, 3, 0)
	event.DbgSetAnalyzeFlag(3, 4, 0)
	event.DbgSetAnalyzeFlag(3, 5, 0)
	event.DbgSetAnalyzeFlag(3, 6, 0)
	event.DbgSetAnalyzeFlag(3, 7, 0)
	event.DbgSetAnalyzeFlag(3, 8, 0)
	event.DbgSetAnalyzeFlag(3, 9, 0)
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.SetFlag(548, 0)
	event.SetFlag(552, 1)
	event.SetFlag(556, 1)
	event.MapJump_3(-1, 102, 100)
	vm.wait(1)
end

--- Event 15520, which map data, a script or the engine runs by number.
function script.event_15520()
	event.DbgSetAnalyzeFlag(3, 7, 0)
	event.DbgSetAnalyzeFlag(3, 8, 0)
	event.DbgSetAnalyzeFlag(3, 9, 0)
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.DbgSetAnalyzeFlag(3, 3, 1)
	event.DbgSetAnalyzeFlag(3, 4, 1)
	event.DbgSetAnalyzeFlag(3, 5, 1)
	event.DbgSetAnalyzeFlag(3, 6, 1)
	event.SetFlag(548, 1)
	event.SetFlag(552, 0)
	event.SetFlag(556, 1)
	event.MapJump_3(-1, 102, 100)
	vm.wait(1)
end

--- Event 15560, which map data, a script or the engine runs by number.
function script.event_15560()
	event.DbgSetAnalyzeFlag(3, 0, 1)
	event.DbgSetAnalyzeFlag(3, 1, 1)
	event.DbgSetAnalyzeFlag(3, 2, 1)
	event.DbgSetAnalyzeFlag(3, 3, 1)
	event.DbgSetAnalyzeFlag(3, 4, 1)
	event.DbgSetAnalyzeFlag(3, 5, 1)
	event.DbgSetAnalyzeFlag(3, 6, 1)
	event.DbgSetAnalyzeFlag(3, 7, 1)
	event.DbgSetAnalyzeFlag(3, 8, 1)
	event.DbgSetAnalyzeFlag(3, 9, 1)
	event.DbgSetAnalyzeFlag(3, 10, 1)
	event.SetFlag(548, 1)
	event.SetFlag(552, 1)
	event.SetFlag(556, 0)
	event.MapJump_3(-1, 102, 100)
	vm.wait(1)
end

return script
