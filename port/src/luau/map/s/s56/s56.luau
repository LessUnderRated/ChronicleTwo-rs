--!strict
-- map/s/s56/s56.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_35a95052 = require("@lib/event/helper_35a95052")
local helper_38df53e4 = require("@lib/event/helper_38df53e4")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_52115bbf = require("@lib/event/helper_52115bbf")
local helper_53ffe901 = require("@lib/event/helper_53ffe901")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_df618068 = require("@lib/event/helper_df618068")
local helper_e4e2e66b = require("@lib/event/helper_e4e2e66b")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local var0: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	var0 = event.GetBgmNo() or var0
	if var0 ~= 17 then
		event.StopBgm(0)
		helper_888ab2a3(6)
		event.LoadBgm(17)
	end
	event.PlayBgm(0)
	event.LoadSound(3682)
	flag = event.GetFlag(348) or flag
	if flag == 1 then
		event.FuncPointShow("", "e348", 0)
		event.EohSyncObj_2(0, "p07_d03b01")
		event.EohSetShow(0, 0)
	end
	flag_2 = event.GetFlag(352) or flag_2
	if flag_2 == 1 then
		event.FuncPointShow("", "event", 0)
	end
end

--- Helper function.
local function helper_160d0()
	local argc: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		event.SetMesPreset(0, 0)
		event.SetMesShippo(0, 0)
		argc = event.GetItemNum(371) or argc
		if argc <= 0 then
			event.MesMake_2(
				0,
				"ここから過去に戻れば、クレストを助けられるはず！\nでも、過去に戻るにはどうしたら良いんだろう・・・"
			)
			at = 1
			helper_75684dd8(0, -1, 5, 256, 208)
			event.SetMesPreset(0, 4)
			event.SetMesWindowMode(0, 4)
			event.MesMake_2(
				0,
				"[(!)]過去に戻る方法なんてあるんでしょうか？\n   何か特別な道具でもあれば別ですけど・・・"
			)
			at = 2
			helper_75684dd8(0, -1, 8, 0, 0)
			event.MesMake_2(
				0,
				"[(!)]そう言えば、ステラ寺院には世にも珍しい品物を扱う\n   道具屋があるそうです。そこでなら、もしかしたら、\n   何か手に入るかも知れませんね。"
			)
			at = 3
			helper_75684dd8(0, -1, 8, 0, 0)
		else
			event.MesMake_2(
				0,
				"ここから過去に戻れば、クレストを助けられるはず！\n（(#)ボタンでメニューを開く）"
			)
			at = 4
			var1 = helper_c292fa16(0, -1, 5, 256, 208, var1)
			if var1 == 1 then
				event.SetMesShippo(0, 1)
				return 1
			end
		end
		event.SetMesPreset(0, 0)
		event.SetMesShippo(0, 1)
		return 0
	end, function(received: { any })
		if at <= 4 then
			if at == 4 then
				var1 = received[2] :: number
			end
			if at <= 1 then
				helper_ee1c51d0(0, -1, 8, 0, 0)
			end
			if at <= 2 then
				helper_ee1c51d0(0, -1, 8, 0, 0)
			end
			if at <= 3 then
				var1 = helper_35a95052(0, -1, 5, 256, 208, var1)
			end
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_12f20()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	print("GET_ACTIVE_CHR_NO-------", active_chr_no, "\n")
	if active_chr_no == 0 then
		global0 = 0
		global1 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e300/e352/e352_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 1, "info", global1, 17)
		event.LoadEquip(5, 1, 0, "info", global1, 18)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 12)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e300/e352/e352_monica1.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
	end
	if active_chr_no == 1 then
		global0 = 8
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 1, "info", global0, 17)
		event.LoadEquip(5, 0, 0, "info", global0, 18)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 12)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e300/e352/e352_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e300/e352/e352_monica1.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e300/e352/e352_lin.gltf", "info", 9)
	event.CharaActive(0, 9)
	event.EohSyncChara(4, 9)
	event.ObjsInit(2, 9)
	event.ObjsSyncObj(2, 4)
	event.LoadChara(5, "event/e300/e352/e352_tokei_h.gltf", "info", 19)
	event.CharaActive(0, 19)
	event.LoadChara(5, "event/e300/e352/e352_monica_tokei.gltf", "info", 13)
	event.CharaActive(0, 13)
	event.LoadChara(5, "event/e300/e352/e352_sdokei.gltf", "info", 20)
	event.CharaActive(0, 20)
	event.LoadChara(5, "event/e300/e352/e352_mabu.gltf", "info", 21)
	event.CharaActive(0, 21)
	event.LoadChara(5, "event/e300/e352/e352_hikari.gltf", "info", 22)
	event.CharaActive(0, 22)
	event.SetCharaType(22, 4)
	event.LoadMes(0, 5, "event/e300/e352/e352.txt")
end

--- Helper function.
local function helper_22c00000()
	local var0: s32 = 0
	print("GET_ACTIVE_CHR_NO-------", var0, "\n")
	global0 = 0
	global1 = 8
	global0 = 8
	global1 = 0
end

--- Helper function.
local function helper_129cc()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(9)
	event.DeleteChara(19)
	event.DeleteChara(13)
	event.DeleteChara(20)
	event.DeleteChara(21)
	event.DeleteChara(22)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.SetStatusbarShow(1, 1.0)
	event.Finish()
	vm.wait(1)
end

--- Helper function.
local function helper_1439c()
	local var4: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(352, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetMotionBlur(0)
		event.StopBgm(0)
		at = 2
		vm.wait(2)
		at = 3
		vm.wait(3)
		at = 4
		vm.wait(4)
		at = 5
		vm.wait(5)
		event.LoadSound(3831)
		var4 = event.SndLoadSound_2(3831) or var4
		helper_12f20()
		event.InitDramaScene()
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "無表情")
		event.ObjsTexAnime(2, 1, "通常目パチ")
		event.ObjsTexAnime(2, 1, "半口")
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(2, "上見立ち", 4)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 9)
		event.CmrsSetPos(496.47, 169.37, -809.35)
		event.CmrsSetRef(508.77, 169.14, -850.82)
		event.ObjsSetPos(2, 543.2, 144.04, -840.61)
		event.ObjsSetRot(2, 0.0, -1.99, 0.0)
		event.ObjsSetPos(0, 538.49, 145.86, -872.44)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetPos(1, 567.83, 142.65, -858.12)
		event.ObjsSetRot(1, 0.0, -0.92, 0.0)
		event.CmrsMove2(530.44, 169.37, -799.27, 542.75, 169.14, -840.74, 120, 2, 1.0)
		event.SetFadeIn(30)
		at = 6
		wait_camera()
		at = 7
		helper_888ab2a3(30)
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 8
		helper_4116e6bb(3520010)
		event.ResetPakuAnim()
		event.ObjsSetMotion(2, "うなづく", 6)
		event.ObjsNextMotion(2, "上見立ち", 4)
		event.SetPakuAnim(4, "通常口パク")
		at = 9
		helper_4116e6bb(3520020)
		event.ResetPakuAnim()
		at = 10
		wait_objects(2)
		event.SetReference(global1, "sword_hand", 13)
		event.CharaActive(1, 13)
		event.ObjsSetPos(1, 519.39, 147.4, -861.34)
		event.ObjsSetRot(1, 0.0, -0.2, 0.0)
		event.ObjsSetRot(0, 0.0, -0.6, 0.0)
		event.ObjsSetMotion(2, "下見立ち", 4)
		event.SndSePlay(var4, 0)
		event.ObjsSetMotion(1, "置く～下見", 6)
		event.ObjsNextMotion(1, "下見", 4)
		event.CmrsSetPos(485.69, 161.28, -803.81)
		event.CmrsSetRef(535.39, 163.79, -859.0)
		at = 11
		helper_888ab2a3(27)
		event.SndSePlay(var4, 1)
		event.DelReference(13)
		event.CharaActive(0, 13)
		event.CharaActive(1, 19)
		event.SetCharaPos(19, 516.77, 149.74, -850.63)
		at = 12
		helper_888ab2a3(60)
		event.CmrsSetPos(499.2, 155.53, -839.73)
		event.CmrsSetRef(516.77, 149.74, -850.63)
		at = 13
		helper_888ab2a3(60)
		event.CharaActive(1, 20)
		event.SetCharaPos(20, 516.77, 149.74, -850.63)
		event.SetMotion(20, "砂時計光る", 2, -1, 1)
		event.SndSePlay(var4, 2)
		at = 14
		helper_888ab2a3(60)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "目とじ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "目とじ")
		event.ObjsTexAnime(2, 0)
		event.ObjsTexAnime(2, 1, "無表情")
		event.ObjsTexAnime(2, 1, "目とじ")
		event.ObjsTexAnime(2, 1, "半口")
		event.ObjsSetMotion(2, "まぶしい", 6)
		event.ObjsSetMotion(0, "まぶしい", 6)
		event.ObjsSetMotion(1, "まぶしい", 6)
		event.ObjsNextMotion(2, "まぶしいＬ", 4)
		event.ObjsNextMotion(0, "まぶしいＬ", 4)
		event.ObjsNextMotion(1, "まぶしいＬ", 4)
		event.ObjsSetPos(0, 539.17, 145.1, -856.52)
		event.ObjsSetRot(0, 0.0, -1.99, 0.0)
		event.ObjsSetPos(1, 538.92, 143.03, -823.0)
		event.ObjsSetRot(1, 0.0, -2.24, 0.0)
		event.CmrsSetPos(494.78, 152.75, -815.47)
		event.CmrsSetRef(543.94, 165.9, -843.48)
		at = 15
		helper_888ab2a3(30)
		event.CharaActive(1, 21)
		event.SetCharaPos(21, 547.24, 149.74, -859.21)
		event.SetMotion(21, "まぶしい", 2, -1, 1)
		at = 16
		helper_888ab2a3(60)
		event.CharaActive(0, 21)
		event.CmrsSetPos(1717.19, 225.79, 121.59)
		event.CmrsSetRef(543.94, 165.9, -843.48)
		event.SndSePlay(var4, 3)
		event.CharaActive(1, 22)
		event.SetCharaPos(22, 516.77, 149.74, -850.63)
		event.SetMotion(22, "光る光る", 2, -1, 1)
		at = 17
		helper_888ab2a3(75)
		event.ScrEffInitRaster(0.0, 0.0, 0.15707964)
		event.ScrEffStartRaster(60.0, 0.3926991, -1.0, 60)
		at = 18
		helper_888ab2a3(75)
	end, function(received: { any }): boolean
		if at <= 5 then
			helper_22c00000()
			helper_344d6cd8()
		end
		if at <= 6 then
			helper_038a2e4d(30)
		end
		if at <= 7 then
			helper_8cd371d7(3520010)
		end
		if at <= 8 then
			helper_8cd371d7(3520020)
		end
		if at <= 9 then
			helper_238b5abc(2)
		end
		if at <= 10 then
			helper_038a2e4d(27)
		end
		if at <= 11 then
			helper_038a2e4d(60)
		end
		if at <= 12 then
			helper_038a2e4d(60)
		end
		if at <= 13 then
			helper_038a2e4d(60)
		end
		if at <= 14 then
			helper_038a2e4d(30)
		end
		if at <= 15 then
			helper_038a2e4d(60)
		end
		if at <= 16 then
			helper_038a2e4d(75)
		end
		if at <= 17 then
			helper_038a2e4d(75)
		end
		return true
	end)
	at = 19
	vm.entry(19)
	event.CancelDramaScene()
	event.CmrsFadeOut(30, 255.0, 255.0, 255.0)
	at = 20
	helper_888ab2a3(30)
	event.ScrEffStopRaster(0.0, 0.0, 0.0, 0)
	event.SndSeAllStop(4)
	event.BgmLoadCancel()
	at = 21
	vm.wait(21)
	at = 22
	helper_129cc()
end

--- Helper function.
local function helper_102d4()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(348, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetProjection(524.9)
		event.StopBgm(0)
		var0 = event.SndLoadSound_2(3829) or var0
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 or active_chr_no ~= 1 then
			event.DngSetupMainUnit(0)
			event.SetActiveChrNo(0)
			active_chr_no = 0
		end
		event.ChangeDir("event/e300/e348/")
		event.LoadMes(0, 5, "e348.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e348_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e348_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e348_lin.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(2, 11)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 9)
			event.LoadEquip(5, 0, 4, "info", 9)
			event.LoadEquip(5, 0, 3, "info", 9)
			event.LoadEquip(5, 0, 2, "info", 9, 10)
			event.LoadMotion(5, "event/e300/e348/e348_mints.gltf", "info", 10)
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
			event.LoadMotion(5, "event/e300/e348/e348_monica.gltf", "info", 9)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 9)
			event.EohSyncChara(1, 9)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(9)
		event.CharaActive(10)
		event.EohSyncChara(3, 1)
		event.EohSetShow(3, 0)
		event.EohSyncChara(4, 2)
		event.EohSetShow(4, 0)
		event.EohSetPos(0, 1521.47, -107.28, 771.74)
		event.EohSetRot(0, 0.0, -2.88, 0.0)
		event.EohSetMotion(0, "歩き", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetTexAnim(0, 1, "半口")
		event.EohSetFootSoundId(0, 2)
		event.EohNormalDrive(0)
		event.EohResetDaPosition(0)
		event.EohSetPos(1, 1505.66, -106.53, 783.49)
		event.EohSetRot(1, 0.0, 3.04, 0.0)
		event.EohSetMotion(1, "歩き", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetTexAnim(1, 1, "半口")
		event.EohSetFootSoundId(1, 2)
		event.EohNormalDrive(1)
		event.EohResetDaPosition(1)
		event.EohSetPos(2, 1506.3, -108.37, 803.96)
		event.EohSetRot(2, 0.0, -3.12, 0.0)
		event.EohSetMotion(2, "歩き", 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "無表情")
		event.EohSetTexAnim(2, 1, "通常目パチ")
		event.EohSetTexAnim(2, 1, "半口")
		event.ObjsMove(0, 1521.47, -107.28, 731.74, 80)
		event.ObjsMove(1, 1505.66, -106.53, 743.49, 80)
		event.ObjsMove(2, 1506.3, -108.37, 763.96, 80)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(1478.0, -94.44, 748.45)
		event.CmrsSetRef(1526.09, -83.38, 795.48)
		event.CmrsMove(1478.0, -94.44, 708.45, 1526.09, -83.38, 755.48, 80)
		event.SetFadeIn(30)
		at = 2
		helper_888ab2a3(80)
		event.CmrsSetPos(1635.22, -45.35, 898.95)
		event.CmrsSetRef(1509.85, -91.47, 744.47)
		event.CmrsMove2(1635.22, -45.35, 898.95, 1509.85, 36.75, 744.47, 60, 0, 1.0)
		event.ObjsSetPos(0, 1522.58, -104.86, 733.22)
		event.ObjsSetRot(0, 0.0, -2.52, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, 1508.09, -104.9, 755.07)
		event.ObjsSetRot(1, 0.0, -2.76, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetPos(2, 1536.72, -109.15, 777.79)
		event.ObjsSetRot(2, 0.0, -2.68, 0.0)
		event.ObjsMove(0, 1491.96, -99.81, 672.57, 90)
		event.ObjsMove(1, 1473.85, -100.1, 691.32, 90)
		event.ObjsMove(2, 1493.11, -100.84, 700.12, 90)
		at = 3
		helper_0382f327(3480010, 120)
		at = 4
		wait_camera()
		at = 5
		helper_888ab2a3(10)
		event.CmrsSetPos(1459.8, -32.33, 632.79)
		event.CmrsSetRef(1494.99, -96.61, 704.05)
		event.CmrsMove2(1475.8, -54.94, 665.2, 1494.99, -84.52, 704.05, 60, 0, 1.0)
		event.ObjsSetMotion(0, "上向くL", 4, -1.0, 1)
		event.ObjsSetMotion(1, "上向くL", 4, -1.0, 1)
		event.ObjsSetMotion(2, "上見立ち", 4)
		at = 6
		wait_camera()
		at = 7
		helper_888ab2a3(10)
		event.CmrsSetPos(1518.17, -76.49, 671.12)
		event.CmrsSetRef(1493.05, -78.0, 693.7)
		event.ObjsSetPos(2, 1501.04, -100.84, 688.87)
		event.ObjsSetRot(2, 0.0, -2.68, 0.0)
		event.SndSePlay(var0, 6)
		event.ObjsSetMotion(1, "右向く", 6, -1.0, 1)
		event.ObjsNextMotion(1, "右向くL", 4)
		at = 8
		helper_4116e6bb(3480020)
		event.SetFadeOut(30)
		at = 9
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			local _ = active_chr_no ~= 0
			local _ = active_chr_no ~= 1
			active_chr_no = 0
			helper_038a2e4d(80)
		end
		if at <= 2 then
			helper_53ffe901(3480010, 120)
		end
		if at <= 3 then
			helper_344d6cd8()
		end
		if at <= 4 then
			helper_038a2e4d(10)
		end
		if at <= 5 then
			helper_344d6cd8()
		end
		if at <= 6 then
			helper_038a2e4d(10)
		end
		if at <= 7 then
			helper_8cd371d7(3480020)
		end
		if at <= 8 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 10
	vm.entry(10)
	event.CancelDramaScene()
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSyncChara(0, 1)
	event.EohSetShow(0, 1)
	event.EohSyncChara(0, 2)
	event.EohSetShow(0, 1)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.PlayBgm(0)
	event.SetCharaPos(0, 1390.73, -76.07, 523.09)
	event.SetCharaRot(0, 0.0, -2.28, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.14, 10.0)
	event.SetFadeIn(30)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event_99()
	helper_e4e2e66b()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.Initialize()
	vm.wait(1)
	helper_c956b4a2(32)
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local var0: s32 = 0
	local item: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		var0 = event.GetEventData_2(6) or var0
		if var0 == 1 then
			at = 1
			if helper_160d0() ~= 0 then
				var0 = 2
			end
		end
		if var0 == 2 then
			event.SetStatusbarShow(0, 0.16666667)
			at = 2
			helper_888ab2a3(6)
			event.GotoUseItem(371)
			at = 3
			vm.wait(3)
			item = vmhost.used_item() or item
			if item == 371 then
				event.FuncPointShow("", "event", 0)
				event.SetFadeOut(20)
				at = 4
				helper_888ab2a3(20)
				event.DngSetupMainUnit(0)
				at = 5
				helper_1439c()
				event.LoadDungeonMapFile("d03b02")
				event.LoadScript("d03b02/d03b02.stb", 502)
				return
			elseif item > 0 then
				at = 6
				helper_df618068()
			end
			event.SetStatusbarShow(1, 0.16666667)
		end
		at = 7
		helper_888ab2a3(6)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 5 then
			if at == 1 then
				local _ = received[1] :: number
			end
			if at <= 1 then
				local _ = var0 == 1
				var0 = 2
				helper_038a2e4d(6)
			end
			if at <= 3 then
				helper_038a2e4d(20)
			end
			if at <= 4 then
				at = 5
				helper_1439c()
				return vm.continue_with(function()
					event.LoadDungeonMapFile("d03b02")
					event.LoadScript("d03b02/d03b02.stb", 502)
					return
				end)
			end
			return 0
		end
		if at <= 7 then
			if at <= 6 then
				helper_038a2e4d(6)
			end
			return 0
		end
		return nil
	end)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.FuncPointShow("", "e348", 0)
		event.EohSyncObj_2(0, "p07_d03b01")
		event.EohSetShow(0, 0)
		helper_52115bbf()
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		at = 2
		helper_102d4()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_102d4()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	if helper_38df53e4() ~= 0 then
		event.LoadScript("d03/d03.stb", 1000)
	end
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- Event 13480, which map data, a script or the engine runs by number.
script.event_13480 = helper_102d4

--- Event 13520, which map data, a script or the engine runs by number.
function script.event_13520()
	event.DngSetupMainUnit(0)
	helper_1439c()
	event.LoadDungeonMapFile("d03b02")
	event.LoadScript("d03b02/d03b02.stb", 502)
end

return script
