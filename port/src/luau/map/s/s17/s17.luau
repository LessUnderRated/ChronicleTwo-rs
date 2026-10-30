--!strict
-- map/s/s17/s17.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_0d9fb41f = require("@lib/event/helper_0d9fb41f")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_1a7fd8eb = require("@lib/event/helper_1a7fd8eb")
local helper_1e55e9a8 = require("@lib/event/helper_1e55e9a8")
local helper_22878665 = require("@lib/event/helper_22878665")
local helper_22d6eddc = require("@lib/event/helper_22d6eddc")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_249b75d1 = require("@lib/event/helper_249b75d1")
local helper_250612f7 = require("@lib/event/helper_250612f7")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_39ab7f1f = require("@lib/event/helper_39ab7f1f")
local helper_39af59c5 = require("@lib/event/helper_39af59c5")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_42079db3 = require("@lib/event/helper_42079db3")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_47b9f5b8 = require("@lib/event/helper_47b9f5b8")
local helper_4b10efff = require("@lib/event/helper_4b10efff")
local helper_53ffe901 = require("@lib/event/helper_53ffe901")
local helper_5ac4b36d = require("@lib/event/helper_5ac4b36d")
local helper_6813499c = require("@lib/event/helper_6813499c")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_79d90c82 = require("@lib/event/helper_79d90c82")
local helper_8132d034 = require("@lib/event/helper_8132d034")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_b55f37c0 = require("@lib/event/helper_b55f37c0")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c2ca38b7 = require("@lib/event/helper_c2ca38b7")
local helper_cc4413ca = require("@lib/event/helper_cc4413ca")
local helper_ce85b54c = require("@lib/event/helper_ce85b54c")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_d61bc810 = require("@lib/event/helper_d61bc810")
local helper_d793ae41 = require("@lib/event/helper_d793ae41")
local helper_d8e14c06 = require("@lib/event/helper_d8e14c06")
local helper_dff48a5c = require("@lib/event/helper_dff48a5c")
local helper_e787350a = require("@lib/event/helper_e787350a")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local helper_f29372c9 = require("@lib/event/helper_f29372c9")
local helper_fd3a2124 = require("@lib/event/helper_fd3a2124")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99() end

--- Helper function.
local function helper_259a4()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var3: s32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local vector_x: f32 = 0
	local vector_y: f32 = 0
	local vector_z: f32 = 0
	local var13: s32 = 0
	local var14: s32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(312, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		if active_chr_no == 0 then
			var1 = 0
		else
			var1 = 13
		end
		var3 = event.SndLoadSound_2(3806) or var3
		helper_fd3a2124(1)
		event.SphidaSetPlayFlag(0)
		event.LoadChara(4, "chara/c02_base.gltf", "info", 13)
		event.LoadEquip(4, 1, 4, "info", 13)
		event.LoadEquip(4, 1, 3, "info", 13)
		event.LoadEquip(4, 1, 2, "info", 13, 14)
		event.SetCharaNo(13, 1)
		event.LoadChara(4, "event/e300/e314/e314_bou.gltf", "info", 15)
		event.CharaActive(15)
		event.AssignStack(5)
		event.ClearStack(5)
		event.ChangeDir("event/e300/e312/")
		event.LoadMes(0, 5, "e312.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e312_mints.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		event.LoadChara(5, "e312_boss.gltf", "info", 16)
		event.CharaActive(16)
		event.EohSyncChara(2, 16)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ChangeDir("")
		event.LoadChara(5, "event/d03/p00_26a.gltf", "info", 17)
		event.CharaActive(17)
		event.EohSyncChara(3, 17)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 13)
			event.LoadEquip(5, 0, 4, "info", 13)
			event.LoadEquip(5, 0, 3, "info", 13)
			event.LoadEquip(5, 0, 2, "info", 13, 14)
			event.LoadMotion(5, "event/e300/e312/e312_mints.gltf", "info", 13)
			event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 13)
			event.EohSyncChara(0, 13)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/dng_inout/c02d03gkey.gltf", "info", 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadMotion(5, "event/e300/e312/e312_monica.gltf", "info", 13)
			event.LoadMotion(5, "event/dng_inout/c02d03gkey.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 13)
			event.EohSyncChara(1, 13)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 0)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(0, 13)
		event.CharaActive(0, 14)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.EohSetPos(0, -355.0, 30.46, 930.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 1)
		event.EohSetPos(1, -338.8, 30.26, 950.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 1)
		event.EohSetPos(3, -150.0, 230.0, 1600.0)
		event.EohSetRot(3, 0.0, 3.14, 0.0)
		event.EohSetMotion(3, "飛び", 4)
		event.ObjsSePlay(3, var3, 1)
		event.ObjsSeDelay(3, 34)
		event.ObjsSePlay(3, var3, 1)
		event.EohSetPos(2, -116.0, 316.0, 235.0)
		event.EohSetRot(2, 0.0, -0.36, 0.0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "目パチ")
		event.EohSetFrameStatus(2, "hana", 0)
		event.SetCharaPos(15, 0.0, 0.5, -170.0)
		event.SetCharaRot(15, 0.0, 1.57, 0.0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(254.65, 473.72, 1588.47)
		event.CmrsSetRef(-219.14, 62.76, 1197.82)
		event.SndSePlay(var3, 0)
		event.SetFadeIn(30)
		var4 = -150.0
		var5 = 230.0
		var6 = 1600.0
		var7 = 0.0
		var8 = -8.0
		var9 = -10.0
		vector_x = 0.0
		vector_y = vm.f32(0.2)
		vector_z = 0.0
		var13 = 0
		while var13 < 60 do
			do
				local out1, out2, out3 = event.AddVector(var4, var5, var6, var7, var8, var9)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			do
				local out1, out2, out3 = event.AddVector(var7, var8, var9, vector_x, vector_y, vector_z)
				var7 = out1 or var7
				var8 = out2 or var8
				var9 = out3 or var9
			end
			event.EohSetPos(3, var4, var5, var6)
			var13 = var13 + 1
			at = 1
			vm.wait(1)
		end
		event.CharaActive(0, 17)
		event.CmrsSetPos(-303.73, 9.54, 934.94)
		event.CmrsSetRef(-365.55, 6.21, 927.8)
		if active_chr_no == 0 then
			event.CharaActive(0)
		else
			event.CharaActive(13)
			event.CharaActive(14)
		end
		event.ObjsMove(0, -355.0, 0.46, 920.0, 10)
		event.ObjsSetMotion(0, "d03着地", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		at = 2
		helper_888ab2a3(6)
		if active_chr_no == 0 then
			event.CharaActive(13)
			event.CharaActive(14)
		else
			event.CharaActive(0)
		end
		event.ObjsMove(1, -338.5, 0.26, 940.0, 10)
		event.ObjsSetMotion(1, "d03着地", 6)
		at = 3
		helper_888ab2a3(2)
		var14 = event.GetSndId(1) or var14
		event.SndSePlay(var14, 3)
		event.SndSePlay(var14, 2)
		at = 4
		helper_888ab2a3(6)
		event.SndSePlay(var14, 2)
		at = 5
		helper_888ab2a3(30)
		event.CmrsSetPos(-359.26, 22.65, 1003.22)
		event.CmrsSetRef(-344.39, 18.85, 907.9)
		event.CmrsMove2(-372.94, 22.65, 1090.93, -287.43, 73.81, 850.46, 60, 0, 1.0)
		event.ObjsSetMotion(2, "飛び", 6)
		event.ObjsNextMotion(2, "飛びから立ち", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.ObjsSeDelay(2, 24)
		event.ObjsSePlay(2, var3, 2)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var3, 2)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var3, 2)
		event.ObjsMove(1, -338.5, 0.26, 920.0, 30)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMotionDelay(1, 30)
		event.ObjsSetMotion(1, "立ち")
		do
			local out1, out2, out3 = event.CopyVector(-116.0, 316.0, 235.0)
			var4 = out1 or var4
			var5 = out2 or var5
			var6 = out3 or var6
		end
		do
			local out1, out2, out3 = event.CopyVector(-1.6666666, -3.8, 5.0)
			var7 = out1 or var7
			var8 = out2 or var8
			var9 = out3 or var9
		end
		do
			local out1, out2, out3 = event.CopyVector(0.0, 0.03, 0.0)
			vector_x = out1 or vector_x
			vector_y = out2 or vector_y
			vector_z = out3 or vector_z
		end
		var13 = 0
		while var13 < 120 do
			do
				local out1, out2, out3 = event.AddVector(var4, var5, var6, var7, var8, var9)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			do
				local out1, out2, out3 = event.AddVector(var7, var8, var9, vector_x, vector_y, vector_z)
				var7 = out1 or var7
				var8 = out2 or var8
				var9 = out3 or var9
			end
			event.EohSetPos(2, var4, var5, var6)
			var13 = var13 + 1
			at = 6
			vm.wait(6)
		end
		at = 7
		wait_camera()
		event.CmrsSetPos(-344.6, 67.67, 922.14)
		event.CmrsSetRef(-336.45, 57.21, 848.5)
		event.CmrsMove2(-344.6, 67.67, 922.14, -336.45, 87.1, 848.5, 30, 2, 1.0)
		event.SndSePlay(var3, 3)
		event.ObjsSetPos(2, -329.15, 98.27, 784.46)
		event.ObjsSetRot(2, 0.0, -0.12, 0.0)
		event.ObjsMove(2, -334.07, 73.0, 828.92, 20)
		event.ObjsSetMotion(0, "上向くL", 4, -1.0, 1)
		event.ObjsSetMotion(1, "上向くL", 4, -1.0, 1)
		at = 8
		wait_camera()
		at = 9
		helper_888ab2a3(30)
		event.CmrsSetPos(-298.63, 146.76, 823.22)
		event.CmrsSetRef(-350.98, 51.79, 864.8)
		event.ObjsSetMotion(0, "上向く会話", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 10
		helper_4116e6bb(3120010)
		at = 11
		wait_objects(0)
		event.CmrsSetPos(-353.63, 9.34, 984.37)
		event.CmrsSetRef(-341.08, 50.88, 864.19)
		event.ObjsSetMotion(2, "ん？", 2)
		event.ObjsNextMotion(2, "ん？L", 4)
		at = 12
		helper_4116e6bb(3120020)
		at = 13
		wait_objects(2)
		event.CmrsMove2(-357.36, 10.22, 1020.11, -341.08, 44.79, 864.19, 30, 0, 1.0)
		event.ObjsSetMotion(0, "上向く会話", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 14
		helper_4116e6bb(3120030)
		at = 15
		wait_camera()
		at = 16
		wait_objects(0)
		event.ObjsSetMotion(2, "ん？戻り", 2)
		event.ObjsNextMotion(2, "上見る", 6)
		event.ObjsNextMotion(2, "上見るL", 4)
		at = 17
		helper_4116e6bb(3120040)
		at = 18
		wait_objects(2)
		event.CmrsSetPos(-329.49, 29.05, 893.39)
		event.CmrsSetRef(-347.8, 20.91, 923.24)
		at = 19
		helper_888ab2a3(60)
		event.CmrsSetPos(-357.36, 10.22, 1020.11)
		event.CmrsSetRef(-341.08, 44.79, 864.19)
		event.ObjsSetMotion(2, "上見る戻り", 2)
		event.ObjsNextMotion(2, "首ふる", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		at = 20
		helper_888ab2a3(10)
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "がっかり", 6)
		event.ObjsNextMotion(0, "がっかりL", 4)
		event.ObjsSeDelay(0, 48)
		event.ObjsSePlay(0, var3, 4)
		event.ObjsMotionDelay(1, 40)
		event.ObjsSetMotion(1, "がっかり", 6)
		event.ObjsNextMotion(1, "がっかりＬ", 4)
		at = 21
		helper_4116e6bb(3120045)
		at = 22
		wait_objects(2)
		at = 23
		wait_objects(0)
		at = 24
		wait_objects(1)
		event.CmrsSetPos(-321.89, 23.1, 893.12)
		event.CmrsSetRef(-338.41, 22.0, 915.41)
		event.ObjsSetMotion(0, "上向くL", 4, -1.0, 1)
		event.ObjsSetMotion(1, "上向く会話", 6, -1.0, 1)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 25
		helper_4116e6bb(3120050)
		at = 26
		wait_objects(1)
		event.CmrsSetPos(-304.1, 27.73, 913.73)
		event.CmrsSetRef(-351.1, 29.34, 911.38)
		event.ObjsSetPos(2, -334.88, 22.14, 859.84)
		event.ObjsMove2(2, -335.92, 5.76, 880.52, 20, 2, 0.5)
		event.SetPakuMotion(2, "会話２", 0, "立ち", 0)
		at = 27
		helper_4116e6bb(3120060)
		at = 28
		wait_objects(2)
		event.ObjsSetMotion(2, "そっぽ向く", 6)
		event.ObjsNextMotion(2, "そっぽ向くL", 4)
		at = 29
		helper_4116e6bb(3120065)
		at = 30
		wait_objects(2)
		event.CmrsSetPos(-321.89, 23.1, 893.12)
		event.CmrsSetRef(-338.41, 22.0, 915.41)
		event.SetPakuAnim(1, "通常口パク")
		at = 31
		helper_4116e6bb(3120070)
		event.CmrsSetPos(-306.68, 100.95, 835.19)
		event.CmrsSetRef(-288.49, 105.02, 752.73)
		event.ObjsSetPos(2, -334.07, 73.0, 828.92)
		event.ObjsSetRot(2, 0.0, 1.08, 0.0)
		event.ObjsSetMotion(2, "指さす", 6)
		event.ObjsNextMotion(2, "指さすL", 4)
		event.ObjsSeDelay(2, 10)
		event.ObjsSePlay(2, var3, 5)
		at = 32
		helper_4116e6bb(3120080)
		at = 33
		wait_objects(2)
		event.SndSePlay(var3, 6)
		event.CmrsMove2(-74.58, 155.23, -161.7, -56.39, 159.31, -244.16, 60, 2, 1.0)
		at = 34
		helper_4116e6bb(3120085)
		at = 35
		helper_4116e6bb(3120090)
		event.SndSeStop(var3, 6)
		event.CmrsSetPos(-338.06, 23.01, 898.47)
		event.CmrsSetRef(-338.41, 23.92, 922.33)
		event.SndSePlay(var3, 7)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "会話", 6, -1.0, 1)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 36
		helper_4116e6bb(3120100)
		event.SetPakuAnim(1, "通常口パク")
		at = 37
		helper_4116e6bb(3120105)
		at = 38
		wait_objects(1)
		event.CmrsMove2(-356.43, 23.01, 899.96, -354.36, 23.92, 923.72, 20, 0, 1.0)
		event.ObjsMotionDelay(0, 10)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 39
		helper_4116e6bb(3120110)
		at = 40
		wait_objects(0)
		at = 41
		wait_camera()
		event.CmrsSetPos(-354.94, 23.0, 917.61)
		event.CmrsSetRef(-338.71, 23.0, 919.34)
		event.CmrsMove2(-365.44, 23.0, 916.48, -338.71, 23.0, 919.34, 40, 2, 1.0)
		event.CharaActive(0, var1)
		event.SetPakuAnim(1, "通常口パク")
		at = 42
		helper_4116e6bb(3120120)
		at = 43
		wait_camera()
		event.SndSePlay(var3, 8)
		event.ObjsSetMotion(1, "左向く", 6)
		event.ObjsNextMotion(1, "左向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 44
		helper_4116e6bb(3120130)
		at = 45
		wait_objects(1)
		event.CmrsSetPos(-326.56, 30.19, 903.79)
		event.CmrsSetRef(-350.3, 22.41, 925.37)
		event.ObjsSetRot(0, 0.0, 1.7, 0.0)
		event.ObjsSetMotion(0, "モニカ見立ち", 4, -1.0, 1)
		event.ObjsSetRot(1, 0.0, -1.82, 0.0)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.CharaActive(var1)
		event.SetPakuAnim(0, "通常口パク")
		at = 46
		helper_4116e6bb(3120140)
		event.CmrsMove2(-305.69, 31.41, 884.81, -350.3, 12.85, 925.37, 40, 0, 1.0)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 47
		helper_4116e6bb(3120150)
		event.SetPakuAnim(1, "通常口パク")
		at = 48
		helper_4116e6bb(3120155)
		at = 49
		wait_objects(1)
		event.ObjsMotionDelay(0, 10)
		event.ObjsSetMotion(0, "左上を見る", 6)
		event.ObjsNextMotion(0, "左上を見るL", 4)
		event.ObjsMotionDelay(1, 18)
		event.ObjsSetMotion(1, "右上見る", 2)
		event.ObjsNextMotion(1, "右上見るＬ", 4)
		at = 50
		helper_4116e6bb(3120160)
		at = 51
		wait_objects(0)
		at = 52
		wait_objects(1)
		event.CmrsSetPos(-321.16, 73.7, 923.06)
		event.CmrsSetRef(-335.4, 87.64, 848.65)
		event.ObjsSetPos(2, -334.07, 73.0, 828.92)
		event.ObjsSetRot(2, 0.0, -0.12, 0.0)
		event.ObjsSetMotion(2, "会話", 6)
		event.ObjsNextMotion(2, "会話２", 6, 0.6)
		event.ObjsNextMotion(2, "立ち", 4)
		at = 53
		helper_4116e6bb(3120164)
		at = 54
		wait_objects(2)
		event.SetPakuMotion(2, "会話２", 0, "立ち", 0)
		at = 55
		helper_4116e6bb(3120168)
		event.CmrsSetPos(-305.69, 31.41, 884.81)
		event.CmrsSetRef(-350.3, 12.85, 925.37)
		event.SetPakuAnim(0, "わらい口パク")
		at = 56
		helper_4116e6bb(3120170)
		event.ObjsSetMotion(0, "左上を見る戻り", 2)
		event.ObjsNextMotion(0, "モニカ見立ち", 4)
		event.ObjsMotionDelay(1, 10)
		event.ObjsSetMotion(1, "右上見るもどり", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 57
		helper_4116e6bb(3120175)
		at = 58
		wait_objects(0)
		at = 59
		wait_objects(1)
		event.ObjsSetMotion(1, "考えるうつむき", 2)
		event.ObjsNextMotion(1, "考えるうつむきＬ", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 60
		helper_4116e6bb(3120180)
		at = 61
		wait_objects(1)
		at = 62
		helper_888ab2a3(60)
		event.ObjsSetMotion(1, "考えから待ったへ", 2)
		event.ObjsNextMotion(1, "考えから待ったへＬ", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 63
		helper_4116e6bb(3120184)
		at = 64
		wait_objects(1)
		event.ObjsSeDelay(0, 36)
		event.ObjsSePlay(0, var3, 9)
		event.ObjsSetMotion(1, "考えから待ったへもどり", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ObjsMotionDelay(1, 1)
		event.ObjsSetMotion(1, "歩き")
		at = 65
		wait_objects(1)
		event.ObjsMove2(1, -325.31, 0.52, 964.6, 30, 1, 1.0)
		event.ObjsRotation(1, 0.0, 0.1, 0.0, 10)
		at = 66
		wait_objects(1)
		event.CmrsSetPos(-344.31, 18.43, 930.21)
		event.CmrsSetRef(-293.44, 28.21, 993.72)
		event.ObjsSetPos(1, -323.37, 0.45, 957.16)
		event.ObjsSetRot(1, 0.0, 1.0, 0.0)
		event.ObjsMove(1, -250.24, 0.82, 1003.33, 60)
		event.ObjsResetDaPosition(1)
		event.ObjsMotionDelay(1, 60)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsMotionDelay(1, 4)
		event.ObjsSetMotion(1, "左向く", 6)
		event.ObjsNextMotion(1, "左向く戻り", 4)
		event.ObjsNextMotion(1, "立ち", 4)
		at = 67
		wait_objects(1)
		at = 68
		helper_888ab2a3(4)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMove(1, -253.1, 0.75, 1044.91, 40)
		event.ObjsRotation(1, 0.0, -0.07, 0.0, 8)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 160)
		event.ObjsAddPas(1, -253.1, 0.75, 1044.91)
		event.ObjsAddPas(1, -254.79, 5.38, 1089.94)
		event.ObjsAddPas(1, -256.86, 18.37, 1140.0)
		event.ObjsAddPas(1, -237.68, 31.31, 1196.62)
		event.ObjsAddPas(1, -191.4, 36.23, 1217.18)
		event.ObjsStartPas(1, 1)
		event.SetPakuAnim(1, "通常口パク")
		at = 69
		helper_0382f327(3120188, 160)
		at = 70
		wait_objects(1)
		event.CmrsSetPos(-147.43, 50.34, 1206.83)
		event.CmrsSetRef(-186.15, 57.43, 1217.59)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.SetPakuAnim(1, "わらい口パク")
		at = 71
		helper_4116e6bb(3120190)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMove(1, -150.87, 40.35, 1232.05, 20)
		at = 72
		wait_objects(1)
		event.CmrsSetPos(2.14, 80.3, 1354.88)
		event.CmrsSetRef(-0.07, 78.68, 1304.82)
		event.CmrsMove2(0.83, 65.77, 1325.2, -0.07, 67.0, 1304.82, 160, 2, 1.0)
		event.SndSePlay(var3, 10)
		event.ObjsSetPos(1, 11.14, 63.15, 1259.88)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsMove(1, 11.14, 63.15, 1292.94, 12)
		event.ObjsRotDelay(1, 6)
		event.ObjsRotation(1, 0.0, -0.81, 0.0, 6)
		event.ObjsMotionDelay(1, 12)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsMotionDelay(1, 6)
		event.ObjsSetMotion(1, "下を見る", 6)
		event.ObjsNextMotion(1, "下を見るL", 4)
		event.ObjsSetPos(0, -42.37, 55.86, 1225.46)
		event.ObjsSetRot(0, 0.0, 0.5, 0.0)
		event.ObjsSetMotion(0, "走り", 4, -1.0, 1)
		event.ObjsMove(0, -8.78, 62.88, 1292.68, 30, 1)
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "立ち")
		at = 73
		wait_objects(1)
		at = 74
		helper_888ab2a3(6)
		event.ObjsSetMotion(0, "下を見る", 6)
		event.ObjsNextMotion(0, "下を見るL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 75
		helper_0382f327(3120195, 40)
		at = 76
		wait_objects(0)
		event.ObjsSetMotion(1, "下を見る会話", 2)
		event.ObjsNextMotion(1, "下を見るL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 77
		helper_4116e6bb(3120200)
		at = 78
		wait_objects(1)
		at = 79
		wait_camera()
		event.SndSeStop(var3, 10)
		event.CmrsSetPos(2.14, 80.3, 1354.88)
		event.CmrsSetRef(-0.07, 78.68, 1304.82)
		event.SetPakuAnim(1, "通常口パク")
		at = 80
		helper_4116e6bb(3120210)
		event.CmrsSetPos(-25.77, 92.07, 1321.59)
		event.CmrsSetRef(2.71, 81.81, 1288.92)
		event.ObjsSetRot(1, 0.0, -0.09, 0.0)
		event.ObjsSetMotion(1, "下を見る戻り", 6, -1.0, 1)
		event.ObjsNextMotion(1, "右向く", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		event.ObjsSetRot(0, 0.0, 0.14, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsMotionDelay(0, 10)
		event.ObjsSetMotion(0, "下を見る戻り", 2)
		event.ObjsNextMotion(0, "左向く", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 81
		helper_4116e6bb(3120220)
		at = 82
		wait_objects(1)
		event.CmrsSetPos(2.14, 80.3, 1354.88)
		event.CmrsSetRef(-0.07, 78.68, 1304.82)
		event.ObjsSetMotion(1, "右向く会話", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 83
		helper_4116e6bb(3120230)
		at = 84
		wait_objects(1)
		event.SetFadeOut(30)
		at = 85
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(6)
		end
		if at <= 2 then
			helper_038a2e4d(2)
		end
		if at <= 3 then
			helper_038a2e4d(6)
		end
		if at <= 4 then
			helper_038a2e4d(30)
		end
		if at <= 5 then
			var13 = 0
			local _ = var13 < 120
			var13 = var13 + 1
		end
		if at <= 6 then
			helper_344d6cd8()
		end
		if at <= 7 then
			helper_344d6cd8()
		end
		if at <= 8 then
			helper_038a2e4d(30)
		end
		if at <= 9 then
			helper_8cd371d7(3120010)
		end
		if at <= 10 then
			helper_238b5abc(0)
		end
		if at <= 11 then
			helper_8cd371d7(3120020)
		end
		if at <= 12 then
			helper_238b5abc(2)
		end
		if at <= 13 then
			helper_8cd371d7(3120030)
		end
		if at <= 14 then
			helper_344d6cd8()
		end
		if at <= 15 then
			helper_238b5abc(0)
		end
		if at <= 16 then
			helper_8cd371d7(3120040)
		end
		if at <= 17 then
			helper_238b5abc(2)
		end
		if at <= 18 then
			helper_038a2e4d(60)
		end
		if at <= 19 then
			helper_038a2e4d(10)
		end
		if at <= 20 then
			helper_8cd371d7(3120045)
		end
		if at <= 21 then
			helper_238b5abc(2)
		end
		if at <= 22 then
			helper_238b5abc(0)
		end
		if at <= 23 then
			helper_238b5abc(1)
		end
		if at <= 24 then
			helper_8cd371d7(3120050)
		end
		if at <= 25 then
			helper_238b5abc(1)
		end
		if at <= 26 then
			helper_8cd371d7(3120060)
		end
		if at <= 27 then
			helper_238b5abc(2)
		end
		if at <= 28 then
			helper_8cd371d7(3120065)
		end
		if at <= 29 then
			helper_238b5abc(2)
		end
		if at <= 30 then
			helper_8cd371d7(3120070)
		end
		if at <= 31 then
			helper_8cd371d7(3120080)
		end
		if at <= 32 then
			helper_238b5abc(2)
		end
		if at <= 33 then
			helper_8cd371d7(3120085)
		end
		if at <= 34 then
			helper_8cd371d7(3120090)
		end
		if at <= 35 then
			helper_8cd371d7(3120100)
		end
		if at <= 36 then
			helper_8cd371d7(3120105)
		end
		if at <= 37 then
			helper_238b5abc(1)
		end
		if at <= 38 then
			helper_8cd371d7(3120110)
		end
		if at <= 39 then
			helper_238b5abc(0)
		end
		if at <= 40 then
			helper_344d6cd8()
		end
		if at <= 41 then
			helper_8cd371d7(3120120)
		end
		if at <= 42 then
			helper_344d6cd8()
		end
		if at <= 43 then
			helper_8cd371d7(3120130)
		end
		if at <= 44 then
			helper_238b5abc(1)
		end
		if at <= 45 then
			helper_8cd371d7(3120140)
		end
		if at <= 46 then
			helper_8cd371d7(3120150)
		end
		if at <= 47 then
			helper_8cd371d7(3120155)
		end
		if at <= 48 then
			helper_238b5abc(1)
		end
		if at <= 49 then
			helper_8cd371d7(3120160)
		end
		if at <= 50 then
			helper_238b5abc(0)
		end
		if at <= 51 then
			helper_238b5abc(1)
		end
		if at <= 52 then
			helper_8cd371d7(3120164)
		end
		if at <= 53 then
			helper_238b5abc(2)
		end
		if at <= 54 then
			helper_8cd371d7(3120168)
		end
		if at <= 55 then
			helper_8cd371d7(3120170)
		end
		if at <= 56 then
			helper_8cd371d7(3120175)
		end
		if at <= 57 then
			helper_238b5abc(0)
		end
		if at <= 58 then
			helper_238b5abc(1)
		end
		if at <= 59 then
			helper_8cd371d7(3120180)
		end
		if at <= 60 then
			helper_238b5abc(1)
		end
		if at <= 61 then
			helper_038a2e4d(60)
		end
		if at <= 62 then
			helper_8cd371d7(3120184)
		end
		if at <= 63 then
			helper_238b5abc(1)
		end
		if at <= 64 then
			helper_238b5abc(1)
		end
		if at <= 65 then
			helper_238b5abc(1)
		end
		if at <= 66 then
			helper_238b5abc(1)
		end
		if at <= 67 then
			helper_038a2e4d(4)
		end
		if at <= 68 then
			helper_53ffe901(3120188, 160)
		end
		if at <= 69 then
			helper_238b5abc(1)
		end
		if at <= 70 then
			helper_8cd371d7(3120190)
		end
		if at <= 71 then
			helper_238b5abc(1)
		end
		if at <= 72 then
			helper_238b5abc(1)
		end
		if at <= 73 then
			helper_038a2e4d(6)
		end
		if at <= 74 then
			helper_53ffe901(3120195, 40)
		end
		if at <= 75 then
			helper_238b5abc(0)
		end
		if at <= 76 then
			helper_8cd371d7(3120200)
		end
		if at <= 77 then
			helper_238b5abc(1)
		end
		if at <= 78 then
			helper_344d6cd8()
		end
		if at <= 79 then
			helper_8cd371d7(3120210)
		end
		if at <= 80 then
			helper_8cd371d7(3120220)
		end
		if at <= 81 then
			helper_238b5abc(1)
		end
		if at <= 82 then
			helper_8cd371d7(3120230)
		end
		if at <= 83 then
			helper_238b5abc(1)
		end
		if at <= 84 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 86
	vm.entry(86)
	event.CancelDramaScene()
	event.SndSeStop(var3, 0)
	event.SndSeStop(var3, 6)
	event.SndSeStop(var3, 10)
	event.SetStatus(1, 0, 256, 0)
	event.DelExtMotion(0)
	event.DelExtMotion(13)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.LoadMes(0, -1)
	event.EohSetFootSoundId(0, 0)
	event.CharaActive(0)
	event.SetCharaPos(0, -25.0, 62.7, 1285.3)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.CharaActive(13)
	event.SetCharaPos(13, 68.04, 41.85, 1180.61)
	event.SetCharaRot(13, 0.0, 3.14, 0.0)
	event.SetMotion(13, "立ち", 4)
	event.CharaNormalDrive(13)
	event.CharaResetDa(13)
	event.SetCameraRef(-25.0, 92.7, 1285.3)
	event.SetCameraPos(-25.0, 102.7, 1385.3)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Helper function.
local function helper_10fb8()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local x_2: f32 = 0
	local y_2: f32 = 0
	local z_2: f32 = 0
	local operand_x: f32 = 0
	local operand_y: f32 = 0
	local operand_z: f32 = 0
	local var11: s32 = 0
	local var12: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetStatusbarShow(0, 1.0)
		var0 = event.SndLoadSound_2(3803) or var0
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.AssignStack(4)
		event.ClearStack(4)
		event.LoadChara(4, "event/d03/p00_26a.gltf", "info", 8)
		event.CharaActive(8)
		event.EohSyncChara(1, 8)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		if active_chr_no == 0 then
			event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 0)
		else
			event.LoadMotion(5, "event/dng_inout/c02d03gkey.gltf", "info", 0)
		end
		event.CharaActive(0, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncChara(2, 1)
		event.EohSyncChara(3, 2)
		event.EohSetShow(2, 0)
		event.EohSetShow(3, 0)
		event.EohSetPos(0, -230.0, 62.1, 1210.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetPos(1, -150.0, 230.0, 1600.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "飛び", 4)
		event.ObjsSePlay(1, var0, 1)
		event.ObjsSeDelay(1, 34)
		event.ObjsSePlay(1, var0, 1)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(254.65, 473.72, 1588.47)
		event.CmrsSetRef(-219.14, 62.76, 1197.82)
		event.SndSePlay(var0, 0)
		event.SetFadeIn(30)
		x = -150.0
		y = 230.0
		z = 1600.0
		x_2 = 0.0
		y_2 = -8.0
		z_2 = -10.0
		operand_x = 0.0
		operand_y = vm.f32(0.2)
		operand_z = 0.0
		var11 = 0
		while var11 < 60 do
			do
				local out1, out2, out3 = event.AddVector(x, y, z, x_2, y_2, z_2)
				x = out1 or x
				y = out2 or y
				z = out3 or z
			end
			do
				local out1, out2, out3 = event.AddVector(x_2, y_2, z_2, operand_x, operand_y, operand_z)
				x_2 = out1 or x_2
				y_2 = out2 or y_2
				z_2 = out3 or z_2
			end
			event.EohSetPos(1, x, y, z)
			var11 = var11 + 1
			at = 2
			vm.wait(2)
		end
		event.CharaActive(0, 8)
		event.CmrsSetPos(-195.61, 36.44, 1206.2)
		event.CmrsSetRef(-227.63, 40.13, 1199.12)
		event.CharaActive(1, 0)
		event.ObjsMove(0, -230.0, 32.1, 1200.0, 10)
		event.ObjsSetMotion(0, "d03着地", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		at = 3
		helper_888ab2a3(8)
		var12 = event.GetSndId(1) or var12
		event.SndSePlay(var12, 3)
		event.SndSePlay(var12, 2)
		at = 4
		wait_objects(0)
		event.SetFadeOut(30)
		at = 5
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			x = -150.0
			y = 230.0
			z = 1600.0
			x_2 = 0.0
			y_2 = -8.0
			z_2 = -10.0
			operand_x = 0.0
			operand_y = vm.f32(0.2)
			operand_z = 0.0
			var11 = 0
			local _ = var11 < 60
			var11 = var11 + 1
		end
		if at <= 2 then
			helper_038a2e4d(8)
		end
		if at <= 3 then
			helper_238b5abc(0)
		end
		if at <= 4 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 6
	vm.entry(6)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.DelExtMotion(0)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(2, 1)
	event.EohSetShow(3, 1)
	event.CharaActive(1, 0)
	event.CharaActive(1, 8)
	event.SetCharaPos(8, -316.71, 71.94, 806.78)
	event.SetCharaRot(8, 0.0, 2.06, 0.0)
	event.SetMotion(8, "立ち", 4)
	event.SetCharaPos(0, -230.0, 32.1, 1200.0)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.SetCameraRef(-230.0, 62.1, 1200.0)
	event.SetCameraPos(-230.0, 72.1, 1300.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Helper function.
local function helper_21eb8()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local x_2: f32 = 0
	local y_2: f32 = 0
	local z_2: f32 = 0
	local operand_x: f32 = 0
	local operand_y: f32 = 0
	local operand_z: f32 = 0
	local var11: s32 = 0
	local var12: s32 = 0
	vm.section(function()
		event.SetFlag(308, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetStatusbarShow(0, 1.0)
		var0 = event.SndLoadSound_2(3803) or var0
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e300/e308/")
		event.LoadMes(0, 5, "e308.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e308_mints.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e308_monica.gltf", "info", 0)
			event.CharaActive(0, 0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "p00_24a.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SetStatus(1, 10, 8, 1)
		event.ChangeDir("")
		event.LoadChara(5, "event/d03/p00_26a.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SetStatus(1, 11, 8, 1)
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 13)
			event.LoadEquip(5, 0, 4, "info", 13)
			event.LoadEquip(5, 0, 3, "info", 13)
			event.LoadEquip(5, 0, 2, "info", 13, 14)
			event.LoadMotion(5, "event/e300/e308/e308_mints.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 13)
			event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 13)
			event.EohSyncChara(0, 13)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
			event.LoadMotion(5, "event/dng_inout/c02d03gkey.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 13)
			event.LoadEquip(5, 1, 4, "info", 13)
			event.LoadEquip(5, 1, 3, "info", 13)
			event.LoadEquip(5, 1, 2, "info", 13, 14)
			event.LoadMotion(5, "event/e300/e308/e308_monica.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 13)
			event.LoadMotion(5, "event/dng_inout/c02d03gkey.gltf", "info", 13)
			event.EohSyncChara(1, 13)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
			event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 0)
		end
		event.CharaActive(0, 13)
		event.CharaActive(0, 14)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.EohSetPos(0, -230.0, 62.1, 1210.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetFootSoundId(0, 1)
		event.EohSetPos(1, -213.0, 65.619995, 1230.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetFootSoundId(1, 1)
		event.EohSetPos(3, -150.0, 230.0, 1600.0)
		event.EohSetRot(3, 0.0, 3.14, 0.0)
		event.EohSetMotion(3, "飛び", 4)
		event.EohSetPos(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "立ち", 4)
		event.EohSetSoundId(2, var0)
		event.EohSetFrameStatus(2, "hana", 0)
		event.ObjsSePlay(3, var0, 1)
		event.ObjsSeDelay(3, 34)
		event.ObjsSePlay(3, var0, 1)
		event.ObjsInitPas(2)
		event.ObjsSetPasFrm(2, 360)
		event.ObjsAddPas(2, -193.32, 507.72, 144.75)
		event.ObjsAddPas(2, -159.98, 507.72, 220.59)
		event.ObjsAddPas(2, -76.06, 507.72, 268.34)
		event.ObjsAddPas(2, 23.46, 507.72, 253.28)
		event.ObjsAddPas(2, 92.64, 507.72, 174.56)
		event.ObjsAddPas(2, 93.49, 507.72, 66.28)
		event.ObjsAddPas(2, 1.5, 507.72, -7.07)
		event.ObjsAddPas(2, -107.74, 507.72, -27.82)
		event.ObjsAddPas(2, -212.55, 507.72, 43.02)
		event.ObjsAddPas(2, -280.2, 507.72, 145.95)
		event.ObjsAddPas(2, -261.4, 507.72, 250.13)
		event.ObjsAddPas(2, -177.44, 507.72, 302.03)
		event.ObjsAddPas(2, -77.76, 507.72, 299.29)
		event.ObjsAddPas(2, -8.21, 507.72, 209.44)
		event.ObjsAddPas(2, 14.08, 507.72, 94.42)
		event.CmrsInit()
		event.CmrsSetPos(254.65, 473.72, 1588.47)
		event.CmrsSetRef(-219.14, 62.76, 1197.82)
		event.SndSePlay(var0, 0)
		event.SetFadeIn(30)
		x = -150.0
		y = 230.0
		z = 1600.0
		x_2 = 0.0
		y_2 = -8.0
		z_2 = -10.0
		operand_x = 0.0
		operand_y = vm.f32(0.2)
		operand_z = 0.0
		var11 = 0
		while var11 < 60 do
			do
				local out1, out2, out3 = event.AddVector(x, y, z, x_2, y_2, z_2)
				x = out1 or x
				y = out2 or y
				z = out3 or z
			end
			do
				local out1, out2, out3 = event.AddVector(x_2, y_2, z_2, operand_x, operand_y, operand_z)
				x_2 = out1 or x_2
				y_2 = out2 or y_2
				z_2 = out3 or z_2
			end
			event.EohSetPos(3, x, y, z)
			var11 = var11 + 1
			vm.wait(1)
		end
		event.CharaActive(0, 11)
		event.CmrsSetPos(-184.07, 43.54, 1216.07)
		event.CmrsSetRef(-236.95, 39.04, 1208.54)
		if active_chr_no == 0 then
			event.CharaActive(0)
		else
			event.CharaActive(13)
			event.CharaActive(14)
		end
		event.ObjsMove(0, -230.0, 32.1, 1200.0, 10)
		event.ObjsSetMotion(0, "d03着地", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		helper_888ab2a3(6)
		if active_chr_no == 0 then
			event.CharaActive(13)
			event.CharaActive(14)
		else
			event.CharaActive(0)
		end
		event.ObjsMove(1, -213.0, 35.19, 1220.0, 10)
		event.ObjsSetMotion(1, "d03着地", 6)
		helper_888ab2a3(2)
		var12 = event.GetSndId(1) or var12
		event.SndSePlay(var12, 3)
		event.SndSePlay(var12, 2)
		helper_888ab2a3(6)
		event.SndSePlay(var12, 2)
		helper_888ab2a3(30)
		event.CmrsSetPos(-220.28, 65.74, 1289.9)
		event.CmrsSetRef(-220.42, 54.04, 1203.57)
		event.CmrsMove2(-220.21, 65.74, 1327.83, -182.37, 80.44, 1173.66, 60, 0, 1.0)
		event.ObjsMove(1, -213.0, 33.37, 1200.0, 30)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMotionDelay(1, 30)
		event.ObjsSetMotion(1, "立ち")
		wait_camera()
		event.CmrsSetPos(-202.75, 44.94, 1163.67)
		event.CmrsSetRef(-225.81, 55.17, 1208.79)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3080010)
		wait_objects(0)
		event.ObjsTexAnime(1, 1, "通常目～こまり目とじ")
		event.ObjsTexaDelay(1, 30)
		event.ObjsTexAnime(1, 1, "こまり目とじ～目あけ")
		event.ObjsTexaDelay(1, 30)
		event.ObjsTexAnime(1, 0, "こまり目とじ～目あけ")
		event.ObjsSetMotion(1, "会話", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ObjsSeDelay(1, 1)
		event.ObjsSePlay(1, var0, 3)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3080020)
		wait_objects(1)
		event.CmrsSetPos(-218.98, 55.74, 1263.48)
		event.CmrsSetRef(-222.62, 51.36, 1199.73)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3080030)
		event.CmrsMove2(-218.17, 55.74, 1293.84, -219.13, 76.78, 1199.61, 60, 0, 1.0)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsMotionDelay(1, 14)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		event.ObjsSetMotion(2, "飛び", 4)
		event.ObjsStartPas(2)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.ObjsSeDelay(2, 34)
		event.ObjsSePlay(2, var0, 1)
		event.SetPakuAnim(0, "通常口パク")
		helper_0382f327(3080035, 180)
		wait_camera()
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.CharaActive(0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(4, 1)
	event.EohSetShow(5, 1)
	event.Finish()
end

--- Helper function.
local function helper_431a4()
	local stage_id: s32 = 0
	local var1: s32 = 0
	local argc: s32 = 0
	stage_id = event.DngGetStageId() or stage_id
	var1 = event.DngGetFloorId() or var1
	argc = event.GetNextFloor(var1, 0) or argc
	event.DngSetFloorId(argc)
	event.SetFloorInfo(stage_id, var1, 5, 2)
	event.SetFloorInfo(stage_id, argc, 5, 1)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.SphidaInit()
	event.DngPause(8192, 0)
	event.ActchrSetDefMotion(0)
	event.SetBitCtrl(1, 0)
	event.SetCharaChangeMask(0, 1)
	event.SetCharaChangeMask(2, 1)
	event.SetCharaChangeMask(1, 1)
	event.SetCharaChangeMask(3, 1)
	event.StopBgm(0)
	event.StopEnvBgm()
	event.SndStopSrc()
	helper_888ab2a3(6)
	event.LoadBgm(17)
	event.LoadSound(3601)
	event.PlayBgm(0)
	event.LoadScript("d03/d03.stb", 1000)
end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
local function default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(300) or flag
		flag_2 = event.GetFlag(320) or flag_2
		flag_3 = event.GetFlag(317) or flag_3
		if flag == 1 then
			if flag_2 == 1 then
				if flag_3 == 0 then
					at = 1
					helper_259a4()
					event.InitLocalCnt()
					event.DngPause(8192, 1)
					event.SetCharaChangeMask(0, 1)
					event.SetCharaChangeMask(2, 0)
					event.SetCharaChangeMask(1, 0)
					event.SetCharaChangeMask(3, 0)
					event.SetBitCtrl(1, 1)
				else
					at = 2
					helper_10fb8()
					event.FuncPointShow("", "exit", 1)
					event.FuncPointShow("", "talk", 0)
					event.EohSyncObj_3(0, "p01_s17", "s17_02-a0_1")
					event.EohSetShow(0, 0)
					event.EohSyncObj_3(0, "p01_s17", "s17_02-c0_1")
					event.EohSetShow(0, 0)
					event.FuncPointShow("p01_s17", "invent_30001-0", 0)
					event.FuncPointShow("", "branch", 0)
					return
				end
			else
				helper_21eb8()
				at = 4
				helper_431a4()
				return
			end
		else
			event.Initialize()
			event.SetCharaPos(0, 0.0, 62.57, 1305.0)
			event.SetCharaRot(0, 0.0, 3.14, 0.0)
			event.SetCameraPos(-0.16, 110.89, 1405.0)
			event.SetCameraRef(0.0, 92.57, 1305.0)
			event.ResetCamera(0)
			event.SetFadeIn(30)
			event.Finish()
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_10fb8()
				return vm.continue_with(function()
					event.FuncPointShow("", "exit", 1)
					event.FuncPointShow("", "talk", 0)
					event.EohSyncObj_3(0, "p01_s17", "s17_02-a0_1")
					event.EohSetShow(0, 0)
					event.EohSyncObj_3(0, "p01_s17", "s17_02-c0_1")
					event.EohSetShow(0, 0)
					event.FuncPointShow("p01_s17", "invent_30001-0", 0)
					event.FuncPointShow("", "branch", 0)
					return
				end)
			end
			return 0
		end
		if at <= 4 then
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_2f2d0()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	local debug_flag: s32 = 0
	local var6: any = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(314, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		var0 = event.SndLoadSound_2(3809) or var0
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		if active_chr_no == 0 then
		else
		end
		event.ChangeDir("event/e300/e314/")
		event.UnlockStack(4)
		event.LoadMes(0, 4, "e314.txt")
		event.AssignStack(5)
		event.ClearStack(5)
		if active_chr_no == 0 then
			event.LoadMotion(5, "e314_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		block = event.LoadImg_4(5, "e314.json", 1) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e31401", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(2, 0)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e31402", block)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetDraw(1, 1)
		event.EohSyncSprite(3, 1)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SpriteInit(2)
		event.SpriteSetType(2, 0)
		event.SpriteSetTexture(2, "e31403", block)
		event.SpriteSetColor(2, 128, 128, 128, 0)
		event.SpriteSetUvsize(2, 0, 0, 512, 448)
		event.SpriteSetPutsize(2, 512, 448)
		event.SpriteSetPos(2, 256, 224)
		event.SpriteSetDraw(2, 1)
		event.EohSyncSprite(4, 2)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 13)
			event.LoadEquip(5, 0, 4, "info", 13)
			event.LoadEquip(5, 0, 3, "info", 13)
			event.LoadEquip(5, 0, 2, "info", 13, 14)
			event.LoadMotion(5, "event/e300/e314/e314_mints.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 13)
			event.EohSyncChara(0, 13)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadMotion(5, "event/e300/e314/e314_monica.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 13)
			event.EohSyncChara(1, 13)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(13)
		event.CharaActive(14)
		event.EohSetPos(0, 10.0, 40.79, 1150.0)
		event.EohSetRot(0, 0.0, -1.57, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetFootSoundId(0, 1)
		event.EohSetPos(1, -10.0, 40.79, 1150.0)
		event.EohSetRot(1, 0.0, 1.57, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetFootSoundId(1, 1)
		debug_flag = event.GetDebugFlag() or debug_flag
		if debug_flag ~= 0 then
			event.InitDramaScene()
		end
		event.CmrsInit()
		event.CmrsSetPos(0.0, 62.86, 1089.96)
		event.CmrsSetRef(0.0, 52.74, 1185.03)
		event.SetFadeIn(30)
		event.SetPakuAnim(1, "通常口パク")
		at = 2
		helper_4116e6bb(3140010)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMove(1, -10.0, 40.79, 1200.0, 40, 1)
		event.ObjsRotation(1, 0.0, 0.0, 0.0, 10)
		at = 3
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, 10.0, 40.79, 1180.0, 30, 1)
		event.ObjsRotation(0, 0.0, 0.0, 0.0, 10)
		event.SetFadeOut(30)
		at = 4
		helper_888ab2a3(30)
		at = 5
		wait_objects(0)
		while true do
			event.SetFadeIn(30)
			event.SetMesWindowMode(0, 7)
			event.ObjsSetMotion(1, "歩き")
			event.ObjsSetRot(1, 0.0, 0.0, 0.0)
			event.ObjsResetDaPosition(1)
			event.ObjsSetMotion(0, "立ち", 4)
			event.CharaActive(0, 0)
			at = 6
			helper_b55f37c0(var0)
			at = 7
			vm.wait(7)
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			event.MesMake_2(0, 9000010)
			open_message(0, -1, 5, 0, 0)
			at = 8
			var6 = helper_39af59c5(0, 2, 0, 1)
			event.SetMesPos(0, 0)
			if var6 == 1 then
				at = 9
				vm.wait(9)
				break
			else
				event.SetFadeOut(30)
				at = 10
				helper_888ab2a3(30)
			end
		end
		event.SetMesWindowMode(0, 7)
		event.ObjsSetMotion(1, "がっつ", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ObjsSeDelay(1, 10)
		event.ObjsSePlay(1, var0, 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 11
		helper_4116e6bb(3140160)
		event.SetFadeOut(30)
		at = 12
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at == 8 then
			var6 = received[1] :: number
		end
		if at <= 1 then
			helper_8cd371d7(3140010)
		end
		if at <= 2 then
			helper_038a2e4d(10)
		end
		if at <= 3 then
			helper_038a2e4d(30)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_4b10efff(var0)
		end
		if at <= 7 then
			helper_f018b3c0(0, -1, 5, 0, 0)
			var6 = helper_d793ae41(0, 2, 0, 1)
		end
		if at <= 9 then
			helper_038a2e4d(30)
		end
		if at <= 10 then
			helper_8cd371d7(3140160)
		end
		if at <= 11 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 13
	vm.entry(13)
	event.CancelDramaScene()
	event.SetStatus(1, 0, 256, 0)
	event.DelExtMotion(0)
	event.DelExtMotion(13)
	event.DelImg(1)
	event.LoadMes(0, -1)
	event.SphidaSetPlayFlag(1)
	event.EohSetFootSoundId(0, 0)
	event.CharaActive(0)
	event.SetCharaPos(0, -25.0, 62.7, 1285.3)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.CharaActive(13)
	event.SetCharaPos(13, 68.04, 41.85, 1180.61)
	event.SetCharaRot(13, 0.0, 3.14, 0.0)
	event.SetMotion(13, "立ち", 4)
	event.CharaNormalDrive(13)
	event.CharaResetDa(13)
	event.SetCameraRef(-25.0, 92.7, 1285.3)
	event.SetCameraPos(-25.0, 102.7, 1385.3)
	event.ResetCamera(0)
	event.Finish()
end

--- Helper function.
local function helper_43e18()
	event.Initialize()
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"「ショットの流れ」\n１・左スティックの上、下、左、右で打ち出す方向を決める。\n２・(O)ボタンを押して、スイング開始。\n３・(O)ボタンを押して、パワー決定。\n４・(O)ボタンを押して、インパクト。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"「インパクトゾーン」\nパワーゲージの下にある赤いバーがインパクトゾーンです。\nインパクトゾーンの真中でインパクトすると、パワーが\nスフィアにうまく伝わり、ナイスショットとなります。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"インパクトゾーンを外れた場所でインパクトすると、\nミスショットとなり、どこに飛ぶか分かりません。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"「打点の変更」\nインパクトの時に、左スティックを任意の方向に\n倒していると、スフィアの打点を変えられます。\n打点の変更による影響は、次のとおりです。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"上・トップスピンがかかり、転がりやすくなる。\n下・バックスピンがかかり、止まりやすくなる。\n左・スライスがかかり、右に曲がる。\n右・フックがかかり、左に曲がる。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"スフィアが運悪く届かない場所に入り込んでしまったら\n(#)ボタンでスフィアを足元へ移動できます。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]メインメニューの『ヘルプ』に\n   「スフィーダ」の項目が追加された。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
end

--- Helper function.
local function helper_2d65c()
	event.Initialize()
	event.SetMesWindowMode(0, 1)
	event.MesMake_2(
		0,
		"その辺で手ごろな棒でも見つけてきて。\nそしたら、やり方教えてあげるから。"
	)
	helper_8132d034(13, 9000000)
	event.Finish()
end

--- Helper function.
local function helper_31830()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var8: f32 = 0
	local var11: f32 = 0
	local yaw: f32 = 0
	local yaw_2: f32 = 0
	local var15: any = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		var0 = 13
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 1)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSetFootSoundId(0, 1)
		event.EohSyncChara(1, var0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetFootSoundId(1, 1)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		do
			local _, out2, _ = event.GetCharaRot(0)
			var8 = out2 or var8
		end
		do
			local out1, out2, out3 = event.GetCharaPos(var0)
			var4 = out1 or var4
			var5 = out2 or var5
			var6 = out3 or var6
		end
		do
			local _, out2, _ = event.GetCharaRot(var0)
			var11 = out2 or var11
		end
		yaw = event.GetRefAngle(var1, var2, var3, var4, var5, var6) or yaw
		yaw_2 = event.GetRefAngle(var4, var5, var6, var1, var2, var3) or yaw_2
		var15 = event.AngleCmp(var8, yaw, 0.1) or var15
		if var15 ~= 0 then
			event.ObjsRotation(0, 0.0, yaw, 0.0, 10)
			event.ObjsSetMotion(0, "歩き")
			event.ObjsMotionDelay(0, 10)
		end
		event.ObjsSetMotion(0, "立ち")
		var15 = event.AngleCmp(var11, yaw_2, 0.1) or var15
		if var15 ~= 0 then
			event.ObjsRotation(1, 0.0, yaw_2, 0.0, 10)
			event.ObjsSetMotion(1, "歩き")
			event.ObjsMotionDelay(1, 10)
		end
		event.ObjsSetMotion(1, "立ち")
		at = 1
		helper_888ab2a3(20)
		event.SetPakuMotion(1, "会話", 0, "立ち", 0)
		event.MesMake_2(0, "え？\nもしかして、あきらめるの？")
		at = 2
		helper_0ffc2526(0, -1, var0, 0, 0)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "はい\nいいえ")
		open_message(0, -1, 5, 0, 0)
		at = 3
		var15 = helper_39af59c5(0, 2, 1, 0)
		event.SetMesPos(0, 0)
		event.SetMesShippo(0, 1)
		if var15 == 0 then
			event.SetFadeOut(30)
			at = 4
			helper_888ab2a3(30)
			return 1
		else
			event.MesMake_2(0, "そうよね。\nがんばって、ユリス！")
			at = 5
			helper_0ffc2526(0, -1, var0, 0, 0)
		end
		var15 = event.AngleCmp(var11, yaw_2, 0.1) or var15
		if var15 ~= 0 then
			event.ObjsRotation(1, 0.0, var11, 0.0, 10)
			event.ObjsSetMotion(1, "歩き")
			event.ObjsMotionDelay(1, 10)
		end
		event.ObjsSetMotion(1, "立ち")
		at = 6
		wait_objects(1)
		return 0
	end, function(received: { any })
		if at <= 4 then
			if at == 3 then
				var15 = received[1] :: number
			end
			if at <= 1 then
				helper_249b75d1(0, -1, var0, 0, 0)
			end
			if at <= 2 then
				helper_f018b3c0(0, -1, 5, 0, 0)
				var15 = helper_d793ae41(0, 2, 1, 0)
			end
			if at <= 3 then
				local _ = var15 ~= 0
				local _ = var15 ~= 0
				helper_038a2e4d(30)
			end
			return 1
		end
		if at <= 6 then
			if at <= 5 then
				helper_238b5abc(1)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_33434(se_id: s32)
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var13: s32 = 0
	local var14: f32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: s32 = 0
	local var21: f32 = 0
	local var22: f32 = 0
	local var23: f32 = 0
	local var24: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var28: f32 = 0
	local var29: f32 = 0
	local var30: s32 = 0
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
	local var41: f32 = 0
	local var42: s32 = 0
	local var43: s32 = 0
	local kind: s32 = 0
	local pin_col: s32 = 0
	local ball_col: s32 = 0
	local var47: s32 = 0
	local var48: f32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local var52: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local yaw: f32 = 0
	var5 = vm.f32(-6.051593)
	var5 = event.AngleLimit(var5) or var5
	event.SetCameraCtrl(1)
	event.SetCameraRef(-11.1, 88.729996, 1309.96)
	var1 = vm.f32(vm.f32(vm.sin(var5) * 100.0) + vm.f32(-11.1))
	var2 = vm.f32(93.729996)
	var3 = vm.f32(vm.f32(vm.cos(var5) * 100.0) + vm.f32(1309.96))
	event.SetCameraPos(var1, var2, var3)
	var5 = vm.f32(-2.91)
	var1 = 0.0
	var2 = vm.f32(65.57)
	var3 = vm.f32(1305.04)
	var12 = -1.0
	do
		local out1, out2, out3 = event.ZeroVector()
		var14 = out1 or var14
		var15 = out2 or var15
		var16 = out3 or var16
	end
	do
		local out1, out2, out3 = event.CopyVector(var1, var2, var3)
		var17 = out1 or var17
		var18 = out2 or var18
		var19 = out3 or var19
	end
	var20 = 0
	event.SndSePlay(se_id, 12)
	var11 = vm.f32(41.8)
	var10 = vm.f32(0.218166)
	var11 = vm.f32(var11 - vm.f32(var11 * var10))
	var21 = vm.f32(vm.sin(var5) * vm.f32(var11 * vm.cos(var10)))
	var22 = vm.f32(var11 * vm.sin(var10))
	var23 = vm.f32(vm.cos(var5) * vm.f32(var11 * vm.cos(var10)))
	var15 = vm.f32(vm.f32(var15 * vm.f32(3.1415927)) / 2.0)
	var16 = vm.f32(vm.f32(vm.f32(-var23 * var12) * var14) * vm.f32(0.4))
	var14 = vm.f32(vm.f32(vm.f32(-var21 * var12) * var14) * vm.f32(0.4))
	do
		local out1, out2, out3 = event.SphidaGetPinPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var28 = 180.0
	var29 = -50.0
	var30 = 0
	var13 = 0
	var43 = 0
	var47 = 0
	while true do
		if var2 >= var28 then
			var21 = vm.f32(var21 * vm.f32(0.999))
			var22 = vm.f32(var22 + vm.f32(vm.f32(-0.0098) * (var47 + 1)))
			var23 = vm.f32(var23 * vm.f32(0.999))
		else
			var42 = event.ChkIntersectionPoint_9(12, var1, var2, var3, var1, vm.f32(var2 - 3.0) - vm.f32(0.01), var3, 0)
				or var42
			if var13 == 1 and var42 >= 0 then
				var21 = vm.f32(var21 * vm.f32(0.94))
				var22 = vm.f32(var22 + vm.f32(vm.f32(-0.00045) * (var47 + 1)))
				var23 = vm.f32(var23 * vm.f32(0.94))
				var21 = vm.f32(var21 + var14)
				var23 = vm.f32(var23 + var16)
				var14 = vm.f32(var14 * vm.f32(0.8))
				var16 = vm.f32(var16 * vm.f32(0.8))
			else
				var21 = vm.f32(var21 * vm.f32(0.999))
				var22 = vm.f32(var22 + vm.f32(vm.f32(-0.0045) * (var47 + 1)))
				var23 = vm.f32(var23 * vm.f32(0.999))
			end
		end
		do
			local out1, out2, out3 = event.AddVector(var1, var2, var3, var21, var22, var23)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		if var15 ~= 0.0 then
			var10 = event.GetRefAngle(var17, var18, var19, var1, var2, var3) or var10
			var10 = vm.f32(var10 + var15)
			var10 = event.AngleLimit(var10) or var10
			var21 = vm.f32(var21 + vm.f32(vm.f32(vm.sin(var10) / 10.0) * var12))
			var23 = vm.f32(var23 + vm.f32(vm.f32(vm.cos(var10) / 10.0) * var12))
		end
		var41 = event.DistVector(var14, 0.0, var16) or var41
		if var41 > vm.f32(0.01) then
			var24 = event.DistVector(var14, 0.0, var16) or var24
			var10 = event.GetRefAngle(var17, var18, var19, var17 + var14, var18, var19 + var16) or var10
			do
				local out1, out2, out3 = event.GetCharaRot(8)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			event.SetCharaRot(8, var4, var10, var6)
			event.AddCharaRot(8, var24 * 12.0, 0.0, 0.0)
			event.SetCharaRot(9, var4, var10, var6)
			event.AddCharaRot(9, var24 * 12.0, 0.0, 0.0)
		else
			var24 = event.DistVector(var21, 0.0, var23) or var24
			var10 = event.GetRefAngle(var17, var18, var19, var1, var2, var3) or var10
			do
				local out1, out2, out3 = event.GetCharaRot(8)
				var4 = out1 or var4
				var5 = out2 or var5
				var6 = out3 or var6
			end
			event.SetCharaRot(8, var4, var10, var6)
			event.AddCharaRot(8, var24 / 10.0, 0.0, 0.0)
			event.SetCharaRot(9, var4, var10, var6)
			event.AddCharaRot(9, var24 / 10.0, 0.0, 0.0)
		end
		var24 = event.DistVector(var21, var22, var23) or var24
		var40 = var24
		var10 = event.GetRefAngle(var17, var18, var19, var1, var2, var3) or var10
		var37 = vm.f32(vm.sin(vm.f32(var10 - vm.f32(1.5707964))) * 3.0)
		var39 = vm.f32(vm.cos(vm.f32(var10 - vm.f32(1.5707964))) * 3.0)
		event.SwordEffectAddPoint(
			var1 - var37,
			var2,
			var3 - var39,
			vm.f32(var1 + var37) + var37,
			var2,
			vm.f32(var3 + var39) + var39
		)
		do
			local out1, out2, out3 = event.CopyVector(var21, var22, var23)
			var37 = out1 or var37
			var38 = out2 or var38
			var39 = out3 or var39
		end
		do
			local out1, out2, out3 = event.NormalVector(var37, var38, var39)
			var37 = out1 or var37
			var38 = out2 or var38
			var39 = out3 or var39
		end
		do
			local out1, out2, out3 = event.ScaleVector(var37, var38, var39, 3.0)
			var37 = out1 or var37
			var38 = out2 or var38
			var39 = out3 or var39
		end
		do
			local out1, out2, out3, out4, out5 =
				event.ChkIntersectionPoint_13(0, var17, var18, var19, var1 + var37, var2 + var38, var3 + var39, 0)
			var31 = out1 or var31
			var32 = out2 or var32
			var33 = out3 or var33
			var42 = out4 or var42
			kind = out5 or kind
		end
		if var42 >= 0 and kind == 1 then
			event.EsmCreate("足水パシャ")
			event.EsmSetVect1(var31, var32, var33)
			if var43 <= 0 then
				event.SndSePlay(se_id, 11)
				var43 = 20
			end
		end
		do
			local out1, out2, out3, out4, out5, out6, out7 =
				event.ChkIntersectionPoint_15(12, var17, var18, var19, var1 + var37, var2 + var38, var3 + var39, 1)
			var31 = out1 or var31
			var32 = out2 or var32
			var33 = out3 or var33
			var34 = out4 or var34
			var35 = out5 or var35
			var36 = out6 or var36
			var42 = out7 or var42
		end
		while var42 >= 0 do
			var15 = 0.0
			if var24 > 8.0 then
				helper_79d90c82()
			end
			if var43 <= 0 then
				event.SndSePlay(se_id, 6)
				var43 = 20
			end
			do
				local out1, out2, out3 = event.CopyVector(-var21, -var22, -var23)
				var21 = out1 or var21
				var22 = out2 or var22
				var23 = out3 or var23
			end
			do
				local out1, out2, out3 = event.NormalVector(var21, var22, var23)
				var21 = out1 or var21
				var22 = out2 or var22
				var23 = out3 or var23
			end
			do
				local out1, out2, out3 = event.ScaleVector(var21, var22, var23, 3.0)
				var21 = out1 or var21
				var22 = out2 or var22
				var23 = out3 or var23
			end
			do
				local out1, out2, out3 = event.AddVector(var31, var32, var33, var21, var22, var23)
				var31 = out1 or var31
				var32 = out2 or var32
				var33 = out3 or var33
			end
			do
				local out1, out2, out3 = event.SubVector(var17, var18, var19, var31, var32, var33)
				var17 = out1 or var17
				var18 = out2 or var18
				var19 = out3 or var19
			end
			var41 = event.DistVector(var17, var18, var19) or var41
			var41 = vm.f32(var40 - var41)
			if var41 <= 0.0 then
				break
			else
				var40 = var41
				do
					local out1, out2, out3 = event.CopyVector(-var21, -var22, -var23)
					var21 = out1 or var21
					var22 = out2 or var22
					var23 = out3 or var23
				end
				if var22 < 0.0 and var35 > 0.0 then
					var21 = vm.f32(var14 * 2.0)
					var22 = 0.0
					var23 = vm.f32(var16 * 2.0)
					var14 = vm.f32(var14 * vm.f32(0.2))
					var16 = vm.f32(var16 * vm.f32(0.2))
				else
					if
						var21 < 0.0 and var34 > 0.0
						or var21 > 0.0 and var34 < 0.0
						or var23 < 0.0 and var36 > 0.0
						or var23 > 0.0 and var36 < 0.0
					then
						var14 = 0.0
						var16 = 0.0
					end
					var21 = 0.0
					var22 = 0.0
					var23 = 0.0
				end
				var21 = vm.f32(vm.f32(vm.f32(var34 * var24) * vm.f32(0.9)) + var21)
				var22 = vm.f32(vm.f32(vm.f32(var35 * var24) * vm.f32(0.58)) + var22)
				var23 = vm.f32(vm.f32(vm.f32(var36 * var24) * vm.f32(0.9)) + var23)
				do
					local out1, out2, out3 = event.CopyVector(var31, var32, var33)
					var17 = out1 or var17
					var18 = out2 or var18
					var19 = out3 or var19
				end
				do
					local out1, out2, out3 = event.CopyVector(var21, var22, var23)
					var37 = out1 or var37
					var38 = out2 or var38
					var39 = out3 or var39
				end
				do
					local out1, out2, out3 = event.NormalVector(var37, var38, var39)
					var37 = out1 or var37
					var38 = out2 or var38
					var39 = out3 or var39
				end
				do
					local out1, out2, out3 = event.ScaleVector(var37, var38, var39, 3.0)
					var37 = out1 or var37
					var38 = out2 or var38
					var39 = out3 or var39
				end
				do
					local out1, out2, out3 = event.ScaleVector(var34, var35, var36, var41)
					var34 = out1 or var34
					var35 = out2 or var35
					var36 = out3 or var36
				end
				do
					local out1, out2, out3 = event.CopyVector(var31, var32, var33)
					var1 = out1 or var1
					var2 = out2 or var2
					var3 = out3 or var3
				end
				do
					local out1, out2, out3 = event.AddVector(var1, var2, var3, var34, var35, var36)
					var1 = out1 or var1
					var2 = out2 or var2
					var3 = out3 or var3
				end
				do
					local out1, out2, out3, out4, out5, out6, out7 = event.ChkIntersectionPoint_15(
						12,
						var17,
						var18,
						var19,
						var1 + var37,
						var2 + var38,
						var3 + var39,
						1
					)
					var31 = out1 or var31
					var32 = out2 or var32
					var33 = out3 or var33
					var34 = out4 or var34
					var35 = out5 or var35
					var36 = out6 or var36
					var42 = out7 or var42
				end
			end
		end
		do
			local out1, out2, out3, out4, out5, out6, out7, out8 =
				event.ChkIntersectionPoint_16(12, var1, var2, var3, var1, var2 - 3.0, var3, 1)
			var31 = out1 or var31
			var32 = out2 or var32
			var33 = out3 or var33
			var34 = out4 or var34
			var35 = out5 or var35
			var36 = out6 or var36
			var42 = out7 or var42
			kind = out8 or kind
		end
		if var42 >= 0 then
			var15 = 0.0
			var2 = vm.f32(var32 + 3.0)
			var41 = event.DistVector(var21, 0.0, var23) or var41
			if var41 < vm.f32(2.4) or var22 >= -1.0 and var22 <= 0.0 then
				var22 = 0.0
				var13 = 1
			else
				var21 = vm.f32(var21 * vm.f32(0.9))
				var22 = -vm.f32(var22 * vm.f32(0.58))
				var23 = vm.f32(var23 * vm.f32(0.9))
				var21 = vm.f32(var21 + vm.f32(var14 * 2.0))
				var23 = vm.f32(var23 + vm.f32(var16 * 2.0))
				var14 = vm.f32(var14 * vm.f32(0.2))
				var16 = vm.f32(var16 * vm.f32(0.2))
				if var24 > 8.0 then
					helper_79d90c82()
				end
				if var43 <= 0 then
					event.SndSePlay(se_id, 5)
					var43 = 20
				end
			end
			var41 = event.DistVector(var14, 0.0, var16) or var41
			if var22 == 0.0 and var24 < vm.f32(1.6) and var41 < vm.f32(0.4) then
				if not (kind == 6) then
					break
				end
				var30 = 1
				break
			end
		end
		if var2 < -500.0 then
			var30 = 1
			break
		elseif var47 >= 300 then
			var30 = 1
			break
		else
			pin_col = event.SphidaGetPinCol() or pin_col
			ball_col = event.SphidaGetBallCol() or ball_col
			var48 = 1.0
			x = vm.f32(pos_x - var1)
			y = vm.f32(pos_y - var2)
			z = vm.f32(pos_z - var3)
			var48 = event.DistVector(x, y, z) or var48
			if ball_col ~= pin_col then
				var52 = event.LinePointDist(var17, var18, var19, var1, var2, var3, pos_x, pos_y, pos_z) or var52
				if var52 >= 0.0 and var52 <= 30.0 then
					var20 = 1
					break
				end
				if var48 ~= 0.0 then
					if var48 <= 120.0 then
						do
							local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(vm.f32(0.6), var48))
							x = out1 or x
							y = out2 or y
							z = out3 or z
						end
						do
							local out1, out2, out3 = event.AddVector(var1, var2, var3, x, y, z)
							var1 = out1 or var1
							var2 = out2 or var2
							var3 = out3 or var3
						end
						do
							local out1, out2, out3 = event.AddVector(var21, var22, var23, x, y, z)
							var21 = out1 or var21
							var22 = out2 or var22
							var23 = out3 or var23
						end
					end
				else
					var20 = 1
					break
				end
			elseif var48 ~= 0.0 then
				if var48 <= 60.0 then
					do
						local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(1.0, var48))
						x = out1 or x
						y = out2 or y
						z = out3 or z
					end
					do
						local out1, out2, out3 = event.SubVector(var1, var2, var3, x, y, z)
						var1 = out1 or var1
						var2 = out2 or var2
						var3 = out3 or var3
					end
					do
						local out1, out2, out3 = event.SubVector(var21, var22, var23, x, y, z)
						var21 = out1 or var21
						var22 = out2 or var22
						var23 = out3 or var23
					end
				end
			end
			event.SetCharaPos(8, var1, var2, var3)
			event.SetCharaPos(9, var1, var2, var3)
			do
				local out1, out2, out3 = event.CopyVector(var1, var2, var3)
				var17 = out1 or var17
				var18 = out2 or var18
				var19 = out3 or var19
			end
			if var2 <= var29 then
				event.SetFcameraFollowFlag(0)
				if var30 >= 30 then
					if var30 >= 50 then
						break
					end
				else
					event.SetCameraRef(var1, var2, var3)
				end
				var30 = var30 + 1
			elseif var47 >= 20 then
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetCameraSpeed(6.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				do
					local out1, out2, out3 = event.GetCameraPos()
					pos_x_2 = out1 or pos_x_2
					pos_y_2 = out2 or pos_y_2
					pos_z_2 = out3 or pos_z_2
				end
				event.SetFcameraHeight(30.0)
				event.SetFcameraDist(200.0)
				yaw = event.GetRefAngle(
					vm.f32(var1 + var21) + var21,
					vm.f32(var2 + var22) + var22,
					vm.f32(var3 + var23) + var23,
					pos_x_2,
					pos_y_2,
					pos_z_2
				) or yaw
				event.SetFcameraAngle(yaw)
				event.SetFcameraFollowA(
					vm.f32(var1 + var21) + var21,
					vm.f32(var2 + var22) + var22,
					vm.f32(var3 + var23) + var23
				)
				event.FcameraStep(1)
			end
			event.SphidaSetBallPos(var1, var2, var3)
			vm.wait(1)
			if var43 > 0 then
				var43 = var43 - 1
			end
			var47 = var47 + 1
		end
	end
	if var20 ~= 1 then
		helper_888ab2a3(30)
	end
	event.SetCharaPos(8, var1, var2, var3)
	event.SetCharaPos(9, var1, var2, var3)
	vm.wait(3)
	event.CharaActive(0, 8)
	event.CharaActive(0, 9)
	event.CharaActive(1, 12)
	event.SetCharaPos(12, pos_x, pos_y, pos_z)
	event.SetMotion(12, "発動", 6)
	event.SndSePlay(se_id, 17)
	var47 = 0
	while var47 < 2 do
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(pos_x, pos_y, pos_z)
		event.SetCameraSpeed(12.0)
		event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
		event.SetFcameraHeight(0.0)
		event.SetFcameraDist(100.0)
		event.FcameraStep(1)
		var47 = var47 + 1
		vm.wait(4)
	end
	event.CharaActive(0, 10)
	do
		local out1, out2, out3 = event.SphidaGetPinPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var47 = 0
	while var47 < 100 do
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(pos_x, pos_y, pos_z)
		event.SetCameraSpeed(12.0)
		event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
		event.SetFcameraHeight(0.0)
		event.SetFcameraDist(100.0)
		event.FcameraStep(1)
		var47 = var47 + 1
		vm.wait(5)
	end
	event.CharaActive(0, 11)
	helper_888ab2a3(54)
	event.SetCameraCtrl(1)
	event.SetFcameraFollowFlag(0)
end

--- Helper function.
local function helper_3b604()
	local var0: s32 = 0
	local var1: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(315, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		helper_888ab2a3(4)
		event.LoadBgm(57)
		event.PlayBgm(0)
		var0 = event.SndLoadSound_2(3811) or var0
		var1 = event.SndLoadSound_3(5, "snd2/mon/en_900.sound.json") or var1
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetStatusbarShow(0, 1.0)
		event.GetActiveChrNo()
		event.ChangeDir("event/e300/e315/")
		event.LoadMes(0, 5, "e315.txt")
		event.LoadMotion(5, "e315_mints.gltf", "info", 0)
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ChangeDir("")
		event.LoadChara(5, "dungeon/sphida/gool_end.gltf", "info", 12)
		event.CharaActive(0, 12)
		event.DelExtMotion(13)
		event.LoadMotion(5, "event/e300/e312/e312_monica.gltf", "info", 13)
		event.LoadMotion(5, "event/e300/e315/e315_monica.gltf", "info", 13)
		event.EohSyncChara(1, 13)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CreateSwordEffect(5, 64, 16)
		event.SwordEffectColor(128, 128, 128, 80, 128, 128, 128, 80)
		event.EohSetPos(0, -92.27, 48.63, 1283.9)
		event.EohSetRot(0, 0.0, 1.34, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.CharaActive(0, 15)
		event.SetCharaPos(15, 0.0, 0.0, 0.0)
		event.SetCharaRot(15, 0.0, 0.0, 0.0)
		event.SetReference(13, "sword_hand", 15)
		event.EohSetPos(1, 68.04, 41.85, 1180.61)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.CharaNormalDrive(13)
		event.CharaResetDa(13)
		event.SphidaSetBallPos(0.0, 65.57, 1305.04)
		event.SphidaSetBallCol(0)
		event.SetCharaPos(8, 0.0, 65.57, 1305.04)
		event.CharaActive(0, 8)
		event.SetCharaPos(9, 0.0, 65.57, 1305.04)
		event.CharaActive(1, 9)
		event.CharaActive(0, 0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(67.57, 63.38, 1149.74)
		event.CmrsSetRef(67.85, 63.66, 1179.99)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		event.SndSePlay(var0, 0)
		event.ObjsSetMotion(1, "貸しなさい", 2)
		event.ObjsNextMotion(1, "貸しなさいＬ", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3150010)
		wait_objects(1)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		event.CmrsSetPos(65.27, 79.39, 1297.35)
		event.CmrsSetRef(6.16, 79.67, 1305.48)
		event.CharaActive(1, 0)
		event.EohSetPos(0, -92.27, 48.63, 1283.9)
		event.EohSetRot(0, 0.0, 1.34, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.CharaNormalDrive(0)
		event.CharaResetDa(0)
		event.DelReference(15)
		event.CharaActive(1, 15)
		event.SetCharaPos(15, 0.0, 0.0, 0.0)
		event.SetCharaRot(15, 0.0, 0.0, 0.0)
		event.SetReference(13, "sword_hand", 15)
		event.EohSetPos(1, -11.1, 63.73, 1309.96)
		event.EohSetRot(1, 0.0, 1.8, 0.0)
		event.EohSetMotion(1, "かまえゴルフＬ", 4)
		event.CharaNormalDrive(13)
		event.CharaResetDa(13)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3150020)
		event.ObjsSetMotion(1, "前方確認", 2)
		event.ObjsNextMotion(1, "ショット", 6)
		event.ObjsSeDelay(1, 10)
		event.ObjsSePlay(1, var0, 1)
		event.ObjsSeDelay(1, 44)
		event.ObjsSePlay(1, var0, 2)
		event.ObjsSeDelay(1, 42)
		event.ObjsSePlay(1, var0, 3)
		wait_objects(1)
		helper_888ab2a3(24)
		helper_33434(var1)
		event.CmrsSetPos(-88.57, 74.62, 1267.26)
		event.CmrsSetRef(20.74, 79.67, 1276.18)
		event.ObjsSetPos(0, -18.67, 62.68, 1288.34)
		event.ObjsSetRot(0, 0.0, -2.66, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -1.4, 62.34, 1267.0)
		event.ObjsSetRot(1, 0.0, -2.68, 0.0)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3150030)
		event.SndSePlay(var0, 5)
		event.ObjsSetMotion(0, "すごいや", 6)
		event.ObjsNextMotion(0, "すごいやL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3150040)
		wait_objects(0)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(16)
	event.CancelDramaScene()
	event.StopBgm(0)
	event.DelExtMotion(0)
	event.DelExtMotion(13)
	event.CharaActive(0, 8)
	event.CharaActive(0, 9)
	event.CharaActive(0, 10)
	event.CharaActive(0, 11)
	event.CharaActive(0, 12)
	event.DelReference(15)
	event.CharaActive(0, 15)
	event.DeleteChara(12)
	event.LoadMes(0, -1)
	event.Finish()
end

--- Helper function.
local function helper_3e1dc(arg0: s32)
	local var1: s32 = 0
	local var2: s32 = 0
	local active_chr_no: s32 = 0
	local argc: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(317, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		event.StopBgm(0)
		helper_888ab2a3(4)
		event.LoadBgm(193)
		event.PlayBgm(1)
		var1 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var1
		var2 = event.SndLoadSound_2(3817) or var2
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e300/e317/")
		event.LoadMes(0, 5, "e317.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e317_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		event.LoadChara(5, "e317_boss.gltf", "info", 15)
		event.CharaActive(15)
		event.EohSyncChara(2, 15)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e317_hana.gltf", "info", 16)
		event.CharaActive(0, 16)
		event.EohSyncChara(3, 16)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SetReference(0, "item", 16)
		event.ChangeDir("")
		event.LoadItem(5, arg0, "info", 17)
		event.CharaActive(0, 17)
		event.EohSyncChara(4, 17)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 18)
		event.CharaActive(0, 18)
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 13)
			event.LoadEquip(5, 0, 4, "info", 13)
			event.LoadEquip(5, 0, 3, "info", 13)
			event.LoadEquip(5, 0, 2, "info", 13, 14)
			event.LoadMotion(5, "event/e300/e317/e317_mints.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 13)
			event.EohSyncChara(0, 13)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/e300/e317/e317_monica.gltf", "info", 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.DelExtMotion(13)
			event.LoadMotion(5, "event/e300/e317/e317_monica.gltf", "info", 13)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 13)
			event.EohSyncChara(1, 13)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(13)
		event.CharaActive(14)
		event.EohSyncChara(5, 1)
		event.EohSyncChara(6, 2)
		event.EohSetShow(5, 0)
		event.EohSetShow(6, 0)
		event.EohSetPos(0, 10.0, 62.79, 1296.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetFootSoundId(0, 1)
		event.EohSetPos(1, -10.0, 62.79, 1296.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetFootSoundId(1, 1)
		event.EohSetPos(2, -323.0, 73.0, 801.25)
		event.EohSetRot(2, 0.0, 2.88, 0.0)
		event.EohSetMotion(2, "立ち", 4)
		event.EohSetShadow(2, 0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "目パチ")
		event.EohSetSoundId(2, var2)
		event.EohSetFrameStatus(2, "hana", 0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-270.99, 155.56, 855.04)
		event.CmrsSetRef(-317.48, 77.29, 790.97)
		event.SetFadeIn(30)
		event.SetPakuMotion(2, "会話２", 0, "立ち", 0)
		helper_4116e6bb(3170010)
		event.SndSePlay(var2, 0)
		event.ObjsSetMotion(2, "立ちから飛び", 2)
		event.ObjsNextMotion(2, "飛び", 4)
		event.ObjsPosDelay(2, 30)
		event.ObjsMove2(2, -292.12, 88.0, 718.16, 40, 1, 1.0)
		wait_objects(2)
		event.CmrsSetPos(-173.05, 197.62, 491.25)
		event.CmrsSetRef(-157.61, 198.62, 397.99)
		event.ObjsSetPos(2, -257.58, 157.22, 483.43)
		event.ObjsMove(2, -13.74, 178.47, -571.1, 180)
		helper_888ab2a3(30)
		event.CmrsMove2(8.44, 86.91, 1369.12, -11.91, 107.25, 1150.24, 120, 0, 0.2)
		wait_camera()
		helper_888ab2a3(30)
		event.CmrsSetPos(-30.54, 63.5, 1250.05)
		event.CmrsSetRef(1.85, 81.24, 1299.33)
		event.SndSePlay(var2, 2)
		event.ObjsSetMotion(0, "左向く", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		event.ObjsSetMotion(1, "右向く", 6)
		event.ObjsNextMotion(1, "右向くL", 4)
		wait_objects(1)
		wait_objects(0)
		helper_888ab2a3(40)
		event.ObjsSetMotion(0, "左向く戻り", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "右向く戻り", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		helper_888ab2a3(10)
		event.CmrsSetPos(8.44, 86.91, 1369.12)
		event.CmrsSetRef(-11.91, 107.25, 1150.24)
		event.ObjsInitPas(2)
		event.ObjsSetPasFrm(2, 140)
		event.ObjsAddPas(2, -99.87, 325.67, -377.78)
		event.ObjsAddPas(2, -86.48, 290.88, -92.22)
		event.ObjsAddPas(2, -74.49, 270.46, 99.58)
		event.ObjsAddPas(2, -80.07, 258.98, 356.49)
		event.ObjsAddPas(2, -108.42, 224.24, 515.31)
		event.ObjsAddPas(2, -190.47, 156.03, 662.8)
		event.ObjsStartPas(2)
		helper_888ab2a3(38)
		event.ObjsMove(1, -145.57, 26.27, 1125.27, 100, 1)
		event.ObjsRotation(1, 0.0, -2.54, 0.0, 10)
		event.ObjsSetMotion(1, "走り")
		helper_888ab2a3(14)
		event.ObjsMove(0, -115.45, 30.53, 1131.91, 86, 1)
		event.ObjsRotation(0, 0.0, -2.54, 0.0, 10)
		event.ObjsSetMotion(0, "走り")
		wait_objects(1)
		wait_objects(0)
		wait_objects(2)
		event.SetCrossfade(30)
		event.CmrsSetPos(-368.06, 55.78, 1062.51)
		event.CmrsSetRef(-342.12, 43.19, 881.2)
		event.SndSePlay(var2, 3)
		event.ObjsSetMotion(2, "飛びから立ち", 6)
		event.ObjsSetMotionNowTime(2, 40)
		event.ObjsNextMotion(2, "立ち", 4)
		event.ObjsSetPos(2, -329.15, 98.27, 784.46)
		event.ObjsSetRot(2, 0.0, -0.12, 0.0)
		event.ObjsMove(2, -334.07, 73.0, 828.92, 30)
		event.ObjsSetPos(1, -323.44, 0.56, 979.56)
		event.ObjsSetRot(1, 0.0, -2.9, 0.0)
		event.ObjsMove(1, -338.5, 0.26, 920.0, 40, 1)
		event.ObjsRotDelay(1, 30)
		event.ObjsRotation(1, 0.0, -3.02, 0.0, 10)
		event.ObjsMotionDelay(1, 40)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsMotionDelay(1, 1)
		event.ObjsSetMotion(1, "上向く", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		helper_888ab2a3(10)
		event.ObjsSetPos(0, -346.15, 0.78, 1002.45)
		event.ObjsSetRot(0, 0.0, 2.9, 0.0)
		event.ObjsMove(0, -355.0, 0.46, 920.0, 40, 1)
		event.ObjsRotDelay(0, 30)
		event.ObjsRotation(0, 0.0, 2.78, 0.0, 10)
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMotionDelay(0, 1)
		event.ObjsSetMotion(0, "上向く", 6)
		event.ObjsNextMotion(0, "上向くL", 4)
		wait_objects(1)
		wait_objects(0)
		wait_objects(2)
		event.CmrsMoveAhd2(0.63, 12.59, 190.82, 120, 0, 0.4)
		event.ObjsSetMotion(2, "会話", 2)
		event.ObjsNextMotion(2, "会話２", 6, 0.6)
		event.ObjsNextMotion(2, "立ち", 4)
		helper_4116e6bb(3170020)
		wait_objects(2)
		wait_camera()
		event.EohSetFrameStatus(2, "hana", 1)
		event.ObjsSetMotion(2, "頭を下げる", 2)
		event.ObjsNextMotion(2, "頭を下げるL", 4)
		helper_4116e6bb(3170025)
		wait_objects(2)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目～おどろき目")
		event.EohSetTexAnim(0, 1, "口とじ～大口")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目～おどろき目")
		event.EohSetTexAnim(1, 1, "口とじ～大口")
		event.ObjsSetMotion(0, "あーっ！", 6)
		event.ObjsNextMotion(0, "あーっ！L", 4)
		event.ObjsSetMotion(1, "上向き指差し", 6)
		event.ObjsNextMotion(1, "上向き指差しＬ", 4)
		helper_4116e6bb(3170030)
		wait_objects(1)
		wait_objects(0)
		helper_4116e6bb(3170040)
		event.CmrsSetPos(-354.86, 5.98, 980.21)
		event.CmrsSetRef(-340.74, 53.89, 881.38)
		event.CmrsMove2(-312.11, 124.5, 846.08, -346.32, 77.26, 868.46, 30, 0, 1.0)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3170050)
		wait_camera()
		event.SndPauseBgm()
		event.CharaActive(1, 18)
		event.SetCharaPos(18, -336.95, 92.55, 866.22)
		event.SetCharaRot(18, 0.6, -0.84, 0.0)
		event.SetMotion(18, "発動", 6)
		helper_888ab2a3(2)
		event.SndSePlay(var1, 0)
		helper_888ab2a3(120)
		event.SndSePlay(var2, 7)
		helper_e787350a(363, 1)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		event.PlayBgm(1)
		event.CharaActive(0, 18)
		event.CmrsSetPos(-265.62, 162.13, 816.12)
		event.CmrsSetRef(-337.34, 74.97, 859.33)
		event.SetFadeIn(30)
		event.EohSetFrameStatus(2, "hana", 0)
		event.CharaActive(1, 16)
		event.ObjsSetMotion(2, "立ち", 4)
		event.ObjsSetMotion(0, "花持ち立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "上向くL", 4, -1.0, 1)
		helper_888ab2a3(30)
		event.ObjsSetMotion(2, "会話", 2)
		event.ObjsNextMotion(2, "会話２", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		helper_4116e6bb(3170060)
		wait_objects(2)
		event.CmrsSetPos(-362.47, 38.8, 1063.3)
		event.CmrsSetRef(-337.46, 47.14, 861.71)
		event.SetPakuMotion(2, "会話２", 0, "立ち", 0)
		helper_4116e6bb(3170065)
		event.ObjsSetMotion(2, "会話", 2)
		event.ObjsNextMotion(2, "立ち", 4)
		helper_4116e6bb(3170070)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3170075)
		event.SetPakuMotion(2, "会話２", 0, "立ち", 0)
		helper_4116e6bb(3170080)
		wait_objects(2)
		event.SndSePlay(var2, 4)
		event.ObjsSetMotion(2, "立ちから飛び", 2)
		event.ObjsNextMotion(2, "飛び", 4)
		event.ObjsPosDelay(2, 30)
		event.ObjsMove2(2, -334.07, 133.0, 828.92, 30, 1, 1.0)
		wait_objects(2)
		helper_4116e6bb(3170090)
		helper_4116e6bb(3170095)
		event.SndSePlay(var2, 5)
		event.CharaActive(17)
		event.ObjsSetPos(4, -334.07, 133.0, 828.92)
		event.ObjsSetRot(4, 0.0, -1.57, 0.0)
		event.ObjsJump(4, -343.64, 25.73, 905.48, -0.2, 30)
		wait_objects(4)
		event.CmrsSetPos(-342.47, 55.33, 881.22)
		event.CmrsSetRef(-346.84, 21.58, 917.8)
		event.SndSePlay(var2, 6)
		event.CharaActive(0, 16)
		event.SetReference(0, "ef00", 17)
		event.ObjsSetPos(4, 0.0, 0.0, 0.0)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(0, "クラブゲット", 6)
		event.ObjsNextMotion(0, "クラブゲットL", 4)
		wait_objects(0)
		event.SndPauseBgm()
		event.ObjsSetMotion(2, "飛び", 1)
		event.CharaActive(1, 18)
		event.SetCharaPos(18, -351.31, 30.76, 917.09)
		event.SetCharaRot(18, 0.4, -0.12, 0.0)
		event.SetMotion(18, "発動", 6, -1.0, 1)
		helper_888ab2a3(2)
		event.SndSePlay(var1, 0)
		helper_888ab2a3(120)
		event.SndSePlay(var2, 7)
		argc = event.GetSysSndId() or argc
		event.SndSePlay(argc, 18)
		event.SetMesWindowMode(0, 4)
		if arg0 == 10 then
			event.MesMake_2(0, 9000020)
			helper_75684dd8(0, -1, 8, 0, 0)
		else
			event.MesMake_2(0, 9000010)
			helper_75684dd8(0, -1, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 7)
		event.PlayBgm(1)
		event.CharaActive(0, 18)
		event.ObjsSetMotion(2, "飛び", 4)
		event.CmrsSetPos(-366.74, 221.09, 968.17)
		event.CmrsSetRef(-335.68, 196.88, 838.07)
		event.SndSePlay(var2, 8)
		event.ObjsSetRot(2, 0.0, 2.86, 0.0)
		event.ObjsMove(2, -211.7, 150.58, 316.36, 120)
		helper_0d9fb41f(3170100, 90)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(55)
	event.CancelDramaScene()
	event.SndSeStop(var1, 0)
	event.StopBgm(0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetShow(5, 1)
	event.EohSetShow(6, 1)
	event.DelExtMotion(0)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.DeleteChara(18)
	event.LoadMes(0, -1)
	helper_d61bc810(0)
	event.Finish()
end

--- Helper function.
local function helper_25000000(arg0: s32, arg1: any)
	helper_038a2e4d(20)
	helper_249b75d1(0, -1, arg0, 0, 0)
	helper_038a2e4d(11)
end

--- Helper function.
local function helper_24f00000()
	helper_25000000(13, 9000000)
end

--- Helper function.
local function helper_25100000()
	local var0: s32 = 0
	local var15: s32 = 0
	var0 = 13
	helper_038a2e4d(20)
	helper_249b75d1(0, -1, var0, 0, 0)
	helper_f018b3c0(0, -1, 5, 0, 0)
	local _ = var15 ~= 0
	local _ = var15 ~= 0
	var15 = helper_d793ae41(0, 2, 1, 0)
	helper_038a2e4d(30)
	return 1
end

--- Helper function.
local function helper_24c00000()
	helper_038a2e4d(6)
end

--- Helper function.
local function helper_182c4()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 0 then
			event.SetMesWindowMode(0, 4)
			at = 1
			helper_75684dd8(0, 2000, 8, 0, 0)
			return 1
		end
		var1 = event.GetEquipItemno(0, 0) or var1
		if var1 ~= 9 and var1 ~= 10 and var1 ~= 11 and var1 ~= 12 and var1 ~= 13 and var1 ~= 14 then
			event.SetMesWindowMode(0, 4)
			event.MesMake_2(0, "『手ごろな枝』を装備してください。")
			at = 2
			helper_75684dd8(0, -1, 8, 0, 0)
			return 1
		end
		event.SetMesWindowMode(0, 1)
		event.SphidaSetCulbNo(var1)
		event.PadAutoRepeatOff()
		return 0
	end, function(received: { any })
		if at <= 1 then
			return 1
		end
		if at <= 2 then
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_1991c(arg0: s32)
	local count: s32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.SphidaSetStatusFlag(0)
		event.DeleteChara(12)
		event.DelImg(1)
		event.EsmClear()
		event.DelExtMotion(0)
		event.SetMotion(0, "立ち", 4)
		event.CharaNormalDrive(0)
		event.CharaResetDa(0)
		event.CharaActive(1, 13)
		event.CharaActive(1, 14)
		event.EohSyncChara(0, 1)
		event.EohSetShow(0, 0)
		event.EohSyncChara(0, 2)
		event.EohSetShow(0, 0)
		event.SetCameraCtrl(1)
		event.DeleteSwordEffect()
		event.SetStatusbarShow(0, 1.0)
		if arg0 ~= 1 then
			event.SetCrossfade(15)
		end
		count = event.SphidaGetParCount() or count
		if arg0 == 0 and count <= 0 then
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
			event.SetMesWindowMode(0, 4)
			at = 1
			helper_75684dd8(0, 2003, 8, 0, 0)
			event.SetFadeOut(30)
			at = 2
			helper_888ab2a3(30)
			arg0 = 2
			event.ResetCamera(0)
		end
		event.DngRunEvent(-1)
		event.ResetEventTrg()
		event.Finish()
		return arg0
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_038a2e4d(30)
			end
			local _ = arg0 ~= 1
			local _ = arg0 == 0
			arg0 = 2
			return arg0
		end
		return nil
	end)
end

--- Helper function.
local function helper_23400000(arg0: s32)
	helper_ee1c51d0(0, 2003, 8, 0, 0)
	helper_038a2e4d(30)
	local _ = arg0 ~= 1
	local _ = arg0 == 0
	arg0 = 2
	return arg0
end

--- Helper function.
local function helper_1ab10()
	local tex_bank: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
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
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
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
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local yaw: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		at = 1
		if helper_182c4() ~= 0 then
			event.Finish()
			return 0
		end
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetLoadbgFile_4(
			"dungeon/sphida/c01_golf.gltf",
			"dungeon/chara/c01b_miss.gltf",
			"dungeon/sphida/gool_end.gltf",
			"dungeon/sphida/mizu_eff.gltf"
		)
		at = 2
		vm.wait(2)
		at = 3
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
		event.EohSyncChara(0, 1)
		event.EohSetShow(0, 1)
		event.EohSyncChara(0, 2)
		event.EohSetShow(0, 0)
		event.CharaActive(0, 13)
		event.CharaActive(0, 14)
		event.SetCrossfade(15)
		event.SphidaResetPowgage()
		do
			local out1, out2, out3 = event.SphidaGetBallPos()
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		var2, var3, var4, var6 = helper_cc4413ca(var2, var3, var4, var6)
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
			event.SphidaSetMinimapFlag(0)
			event.SphidaSetMmLineFlag(0)
			at = 4
			local t0: s32
			t0, var6, var11 = helper_47b9f5b8(var6, var11, tex_bank)
			if t0 ~= 0 then
				event.SphidaSetMinimapFlag(0)
				event.SphidaSetMmLineFlag(0)
				event.SphidaSetBallPos(pos_x, pos_y, pos_z)
				event.SetCharaPos(8, pos_x, pos_y, pos_z)
				event.SetCharaPos(9, pos_x, pos_y, pos_z)
				at = 5
				return helper_1991c(0)
			end
			event.SphidaSetMinimapFlag(0)
			event.SphidaSetMmLineFlag(0)
			at = 6
			local t1: s32
			t1, var12, var6, var16, var15, level = helper_22878665(var12, tex_bank, var6, var16, var15, var1, level)
			if t1 == 0 then
				break
			else
				at = 7
				vm.wait(7)
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
			at = 8
			helper_888ab2a3(10)
		end
		if var12 <= vm.f32(0.3) then
			event.SetMotion(0, "小ショット", 2)
			at = 9
			helper_888ab2a3(25)
			if level ~= 4 then
				event.SndSePlay(var1, 3)
			end
		elseif var12 <= vm.f32(0.6) then
			event.SetMotion(0, "中ショット", 2)
			at = 10
			helper_888ab2a3(34)
			event.SndSePlay(var1, 2)
		else
			event.SetMotion(0, "大ショット", 2)
			at = 11
			helper_888ab2a3(39)
			if level == 0 then
				event.SndSePlay(var1, 12)
			else
				event.SndSePlay(var1, 1)
			end
		end
		if level == 4 then
			at = 12
			helper_888ab2a3(50)
			helper_c2ca38b7(var1)
			event.SphidaSetBallPos(pos_x, pos_y, pos_z)
			event.SetCharaPos(8, pos_x, pos_y, pos_z)
			event.SetCharaPos(9, pos_x, pos_y, pos_z)
			at = 13
			return helper_1991c(0)
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
			pos_x_2 = out1 or pos_x_2
			pos_y_2 = out2 or pos_y_2
			pos_z_2 = out3 or pos_z_2
		end
		var29 = 0
		level = 0
		var42 = 0
		var46 = 0
		while true do
			if var3 >= 180.0 then
				var22 = vm.f32(var22 * vm.f32(0.999))
				var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0098) * (var46 + 1)))
				var24 = vm.f32(var24 * vm.f32(0.999))
			else
				var41 = event.ChkIntersectionPoint_9(
					12,
					var2,
					var3,
					var4,
					var2,
					vm.f32(var3 - 3.0) - vm.f32(0.01),
					var4,
					0
				) or var41
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
					var42 = 20
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
				if var3 >= 400.0 and var23 > 0.0 then
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
				if var42 <= 0 then
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
					var22 = vm.f32(vm.f32(vm.f32(var33 * var25) * vm.f32(0.9)) + var22)
					var23 = vm.f32(vm.f32(vm.f32(var34 * var25) * vm.f32(0.58)) + var23)
					var24 = vm.f32(vm.f32(vm.f32(var35 * var25) * vm.f32(0.9)) + var24)
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
						local out1, out2, out3, out4, out5, out6, out7 = event.ChkIntersectionPoint_15(
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
				if var40 < vm.f32(2.4) or var23 >= -1.0 and var23 <= 0.0 then
					var23 = 0.0
					level = 1
				else
					var22 = vm.f32(var22 * vm.f32(0.9))
					var23 = -vm.f32(var23 * vm.f32(0.58))
					var24 = vm.f32(var24 * vm.f32(0.9))
					var22 = vm.f32(var22 + vm.f32(var15 * 2.0))
					var24 = vm.f32(var24 + vm.f32(var17 * 2.0))
					var15 = vm.f32(var15 * vm.f32(0.2))
					var17 = vm.f32(var17 * vm.f32(0.2))
					if var25 > 8.0 then
						helper_79d90c82()
					end
					if var42 <= 0 then
						event.SndSePlay(var1, 5)
						var42 = 10
					end
				end
				var40 = event.DistVector(var15, 0.0, var17) or var40
				if var23 == 0.0 and var25 < vm.f32(1.6) and var40 < vm.f32(0.4) then
					if not (var43 == 6) then
						break
					end
					var29 = 1
					break
				end
			end
			if var3 < -500.0 then
				var29 = 1
				break
			elseif var46 >= 300 then
				var29 = 1
				break
			else
				var44 = event.SphidaGetPinCol() or var44
				var45 = event.SphidaGetBallCol() or var45
				x = vm.f32(pos_x_2 - var2)
				y = vm.f32(pos_y_2 - var3)
				z = vm.f32(pos_z_2 - var4)
				var47 = event.DistVector(x, y, z) or var47
				if var45 ~= var44 then
					var51 = event.LinePointDist(var18, var19, var20, var2, var3, var4, pos_x_2, pos_y_2, pos_z_2)
						or var51
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
				if var3 <= -70.0 then
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
						pos_x_3 = out1 or pos_x_3
						pos_y_3 = out2 or pos_y_3
						pos_z_3 = out3 or pos_z_3
					end
					yaw = event.GetRefAngle(
						vm.f32(var2 + var22) + var22,
						vm.f32(var3 + var23) + var23,
						vm.f32(var4 + var24) + var24,
						pos_x_3,
						pos_y_3,
						pos_z_3
					) or yaw
					event.CtrlcSetRotate(yaw)
					event.CtrlcMoveCamera(8)
					event.CtrlcStep()
				end
				event.SphidaSetBallPos(var2, var3, var4)
				at = 14
				vm.wait(14)
				if var42 > 0 then
					var42 = var42 - 1
				end
				if var12 > 0.0 then
					var12 = vm.f32(var12 - 1.0)
				end
				var46 = var46 + 1
			end
		end
		event.SetCharaPos(8, var2, var3, var4)
		event.SetCharaPos(9, var2, var3, var4)
		at = 15
		vm.wait(15)
		event.SphidaSetStatusFlag(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if var29 == 0 then
			event.SphidaSetBallPos(var2, var3, var4)
			if var21 == 1 then
				event.CharaActive(0, 0)
				event.CharaActive(0, 8)
				event.CharaActive(0, 9)
				event.CharaActive(1, 12)
				event.SetCharaPos(12, pos_x_2, pos_y_2, pos_z_2)
				event.SetMotion(12, "発動", 6)
				event.SndSePlay(var1, 17)
				var46 = 0
				while var46 < 2 do
					event.SetCameraCtrl(0)
					event.SetFcameraFollowFlag(1)
					event.SetFcameraFollowA(pos_x_2, pos_y_2, pos_z_2)
					event.SetCameraSpeed(12.0)
					event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
					event.SetFcameraHeight(0.0)
					event.SetFcameraDist(100.0)
					event.FcameraStep(1)
					var46 = var46 + 1
					at = 16
					vm.wait(16)
				end
				event.CharaActive(0, 10)
				do
					local out1, out2, out3 = event.SphidaGetPinPos()
					pos_x_2 = out1 or pos_x_2
					pos_y_2 = out2 or pos_y_2
					pos_z_2 = out3 or pos_z_2
				end
				var46 = 0
				while var46 < 100 do
					event.SetCameraCtrl(0)
					event.SetFcameraFollowFlag(1)
					event.SetFcameraFollowA(pos_x_2, pos_y_2, pos_z_2)
					event.SetCameraSpeed(12.0)
					event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
					event.SetFcameraHeight(0.0)
					event.SetFcameraDist(100.0)
					event.FcameraStep(1)
					var46 = var46 + 1
					at = 17
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
				at = 18
				helper_888ab2a3(54)
				at = 19
				helper_888ab2a3(30)
				event.DeleteChara(8)
				event.DeleteChara(9)
				event.DeleteChara(10)
				event.DeleteChara(11)
				event.SphidaSetPlayFlag(0)
				event.SetFadeOut(30)
				at = 20
				helper_888ab2a3(30)
				event.PlayBgm(0)
				event.CmrsReleaseObj()
				event.SpriteSetDraw(0, 0)
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
			at = 21
			wait_objects(0)
			at = 22
			helper_888ab2a3(20)
			event.SpriteSetDraw(0, 0)
			event.SphidaSetBallPos(pos_x, pos_y, pos_z)
			event.SetCharaPos(8, pos_x, pos_y, pos_z)
			event.SetCharaPos(9, pos_x, pos_y, pos_z)
			event.CmrsReleaseObj()
		end
		if var21 == 1 then
			helper_c2ca38b7(-1)
		else
			helper_c2ca38b7(var1)
		end
		at = 23
		return helper_1991c(var21)
	end, function(received: { any })
		if at <= 1 then
			if at == 1 then
				local _ = received[1] :: number
				local _ = received[1] :: number
			end
			return 0
		end
		if at <= 5 then
			if at == 4 then
				local _ = received[1] :: number
				var6 = received[2] :: number
				var11 = received[3] :: number
			end
			if at <= 2 then
				helper_344d6cd8()
			end
			if at <= 3 then
				var2, var3, var4, var6 = helper_250612f7(var2, var3, var4, var6)
				helper_6813499c(var6)
				var11 = 12.5
				var12, var13, level = helper_22d6eddc(var12, var13, level)
				do
					local _: any
					_, var6, var11 = helper_f29372c9(var6, var11, tex_bank)
				end
			end
			return helper_23400000(0)
		end
		if at <= 13 then
			if at == 6 then
				local _ = received[1] :: number
				var12 = received[2] :: number
				var6 = received[3] :: number
				var16 = received[4] :: number
				var15 = received[5] :: number
				level = received[6] :: number
			end
			if at <= 7 then
				var21 = 0
				helper_038a2e4d(10)
			end
			if at <= 8 then
				helper_038a2e4d(25)
			end
			if at <= 9 then
				helper_038a2e4d(34)
			end
			if at <= 10 then
				helper_038a2e4d(39)
			end
			if at <= 11 then
				helper_038a2e4d(50)
			end
			if at <= 12 then
				helper_1e55e9a8(var1)
			end
			return helper_23400000(0)
		end
		if at <= 23 then
			if at <= 14 then
				local _ = var42 > 0
				var42 = var42 - 1
				local _ = var12 > 0.0
				var12 = vm.f32(var12 - 1.0)
				local _ = var46 >= 300
				local _ = var46 >= 20
				var46 = var46 + 1
			end
			if at <= 15 then
				var46 = 0
				local _ = var46 < 2
				var46 = var46 + 1
			end
			if at <= 16 then
				var46 = 0
				local _ = var46 < 100
				var46 = var46 + 1
			end
			if at <= 17 then
				local _ = var41 >= 0
				local _ = var41 >= 0
				var41 = var41 + 1
				helper_038a2e4d(54)
			end
			if at <= 18 then
				helper_038a2e4d(30)
			end
			if at <= 19 then
				helper_038a2e4d(30)
			end
			if at <= 20 then
				helper_238b5abc(0)
			end
			if at <= 21 then
				helper_038a2e4d(20)
			end
			if at <= 22 then
				helper_1e55e9a8(-1)
				helper_1e55e9a8(var1)
			end
			return helper_23400000(var21)
		end
		return nil
	end)
end

--- Helper function.
local function helper_3d2f8()
	local var0: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(316, 1)
		event.SetCameraPos(-88.57, 74.62, 1267.26)
		event.SetCameraRef(20.74, 79.67, 1276.18)
		event.StopBgm(0)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_3(8, "snd2/sp/sp_000.sound.json") or var0
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetStatusbarShow(0, 1.0)
		event.GetActiveChrNo()
		event.LoadMes(0, 5, "event/e300/e316/e316.txt")
		event.LoadMotion(5, "dungeon/sphida/c01_golf.gltf", "info", 0)
		event.LoadMotion(5, "event/e300/e316/e316_mints.gltf", "info", 0)
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.DelExtMotion(13)
		event.LoadMotion(5, "event/e300/e316/e316_monica.gltf", "info", 13)
		event.EohSyncChara(1, 13)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetPos(0, -1.4, 62.34, 1267.0)
		event.EohSetRot(0, 0.0, -2.68, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -18.67, 62.68, 1288.34)
		event.EohSetRot(1, 0.0, -2.66, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.CharaNormalDrive(13)
		event.CharaResetDa(13)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-0.23, 74.74, 1183.98)
		event.CmrsSetRef(-6.52, 79.67, 1277.87)
		event.CmrsMove2(-1.7, 74.74, 1206.03, -6.52, 79.67, 1277.87, 90, 2, 0.3)
		event.SndSePlay(var0, 0)
		event.SetFadeIn(30)
		event.ObjsSetMotion(0, "カップインポーズ", 6)
		event.ObjsNextMotion(0, "カップインポーズL", 4)
		helper_888ab2a3(90)
		event.SetPakuAnim(0, "わらい口パク")
		helper_4116e6bb(3160010)
		wait_objects(0)
		event.SetPakuAnim(1, "わらい口パク")
		helper_4116e6bb(3160020)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(7)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.DelExtMotion(0)
	event.DelExtMotion(13)
	event.CharaActive(0, 8)
	event.CharaActive(0, 9)
	event.CharaActive(0, 10)
	event.CharaActive(0, 11)
	event.CharaActive(0, 12)
	event.DelReference(15)
	event.CharaActive(0, 15)
	event.LoadMes(0, -1)
	event.Finish()
end

--- Helper function.
local function helper_3827c()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	vm.section(function()
		event.SetFlag(315, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		helper_888ab2a3(4)
		event.LoadBgm(57)
		event.PlayBgm(0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetStatusbarShow(0, 1.0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e300/e315/")
		event.LoadMes(0, 5, "e315.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e315_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
		else
			event.DelExtMotion(13)
			event.LoadMotion(5, "event/e300/e312/e312_monica.gltf", "info", 13)
			event.LoadMotion(5, "event/e300/e315/e315_monica.gltf", "info", 13)
			event.EohSyncChara(1, 13)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "dungeon/sphida/c01_golf.gltf", "info", 0)
		end
		event.LoadChara(5, "dungeon/sphida/gool_end.gltf", "info", 12)
		event.CharaActive(0, 12)
		var1 = event.SndLoadSound_3(5, "snd2/mon/en_900.sound.json") or var1
		event.CreateSwordEffect(5, 64, 16)
		event.SwordEffectColor(128, 128, 128, 80, 128, 128, 128, 80)
		event.EohSetPos(0, 0.0, 62.57, 1305.04)
		event.EohSetRot(0, 0.0, 1.57, 0.0)
		event.EohSetMotion(0, "かまえ", 4)
		event.CharaActive(1, 15)
		event.SetCharaPos(15, 0.0, 0.0, 0.0)
		event.SetCharaRot(15, 0.0, 0.0, 0.0)
		event.SetReference(0, "ef00", 15)
		event.EohSetPos(1, 10.18, 60.14, 1220.36)
		event.EohSetRot(1, 0.0, -0.12, 0.0)
		event.EohSetMotion(1, "歩き", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.CharaNormalDrive(13)
		event.CharaResetDa(13)
		event.SphidaSetBallPos(0.0, 65.57, 1305.04)
		event.SphidaSetBallCol(0)
		event.SetCharaPos(8, 0.0, 65.57, 1305.04)
		event.CharaActive(0, 8)
		event.SetCharaPos(9, 0.0, 65.57, 1305.04)
		event.CharaActive(1, 9)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(33.53, 98.1, 1193.52)
		event.CmrsSetRef(-0.29, 79.67, 1298.18)
		event.SetFadeIn(30)
		event.ObjsMove(1, 5.22, 62.06, 1250.05, 30)
		event.ObjsMotionDelay(1, 30)
		event.ObjsSetMotion(1, "立ち")
		wait_objects(1)
		helper_888ab2a3(10)
		event.CmrsSetPos(1.79, 84.97, 1287.12)
		event.CmrsSetRef(5.49, 82.83, 1251.39)
		event.ObjsSetMotion(1, "貸しなさい", 2)
		event.ObjsNextMotion(1, "貸しなさいＬ", 4)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3150010)
		wait_objects(1)
		event.CmrsSetPos(65.27, 79.39, 1297.35)
		event.CmrsSetRef(6.16, 79.67, 1305.48)
		event.EohSetPos(0, -92.27, 48.63, 1283.9)
		event.EohSetRot(0, 0.0, 1.34, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.CharaNormalDrive(0)
		event.CharaResetDa(0)
		event.DelReference(15)
		event.CharaActive(1, 15)
		event.SetCharaPos(15, 0.0, 0.0, 0.0)
		event.SetCharaRot(15, 0.0, 0.0, 0.0)
		event.SetReference(13, "sword_hand", 15)
		event.EohSetPos(1, -11.1, 63.73, 1309.96)
		event.EohSetRot(1, 0.0, 1.8, 0.0)
		event.EohSetMotion(1, "かまえゴルフＬ", 4)
		event.CharaNormalDrive(13)
		event.CharaResetDa(13)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3150020)
		event.ObjsSetMotion(1, "前方確認", 2)
		event.ObjsNextMotion(1, "ショット", 6)
		wait_objects(1)
		helper_888ab2a3(24)
		helper_33434(var1)
		event.CmrsSetPos(-88.57, 74.62, 1267.26)
		event.CmrsSetRef(20.74, 79.67, 1276.18)
		event.ObjsSetPos(0, -18.67, 62.68, 1288.34)
		event.ObjsSetRot(0, 0.0, -2.66, 0.0)
		event.ObjsResetDaPosition(0, 0.0, -2.66, 0.0)
		event.ObjsSetPos(1, -1.4, 62.34, 1267.0)
		event.ObjsSetRot(1, 0.0, -2.68, 0.0)
		event.Ext(454, 1, "立ち", 4, -1.0, 1) -- retail: the handler rejects 5 arguments
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3150030)
		event.ObjsSetMotion(0, "すごいや", 6)
		event.ObjsNextMotion(0, "すごいやL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3150040)
		wait_objects(0)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(14)
	event.CancelDramaScene()
	event.StopBgm(0)
	event.DelExtMotion(0)
	event.DelExtMotion(13)
	event.CharaActive(0, 8)
	event.CharaActive(0, 9)
	event.CharaActive(0, 10)
	event.CharaActive(0, 11)
	event.CharaActive(0, 12)
	event.DelReference(15)
	event.CharaActive(0, 15)
	event.DeleteChara(12)
	event.LoadMes(0, -1)
	event.Finish()
end

--- Helper function.
local function helper_326a4()
	local var0: s32 = 0
	local var1: any = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		var0 = event.SndLoadSound_2(3809) or var0
		event.CharaActive(0, 0)
		event.LoadMotion(5, "dungeon/chara/c02a_miss.gltf", "info", 13)
		event.LoadMotion(5, "event/e300/e315/e315_monica.gltf", "info", 13)
		event.EohSyncChara(1, 13)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.CmrsInit()
		event.CmrsSetPos(67.57, 63.38, 1149.74)
		event.CmrsSetRef(67.85, 63.66, 1179.99)
		event.SetFadeIn(30)
		at = 1
		helper_888ab2a3(30)
		event.SndSePlay(var0, 5)
		event.ObjsSetMotion(1, "だめだめ", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		event.StreamOpen3(1, 3140170)
		at = 2
		helper_9cbdc640(1)
		event.MesMake_2(0, "残念、失敗よ。\nもう一度挑戦する？")
		open_message(0, -1, 8, 0, 0)
		event.StreamPlay(1)
		at = 3
		helper_5ac4b36d(0)
		close_message(0)
		event.StreamClose(1)
		event.SetMesPos(0, 0)
		event.ResetPakuAnim()
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "はい\nいいえ")
		open_message(0, -1, 5, 0, 0)
		at = 4
		var1 = helper_39af59c5(0, 2, 0, 1)
		event.SetMesPos(0, 0)
		event.SetMesWindowMode(0, 7)
		event.SetMesShippo(0, 1)
		if var1 == 0 then
			event.DelExtMotion(13)
			event.CharaActive(1, 0)
			return 1
		else
			event.ObjsSetMotion(1, "貸しなさい", 2)
			event.ObjsNextMotion(1, "貸しなさいＬ", 4)
			event.SetPakuAnim(1, "通常口パク")
			event.StreamOpen3(1, 3150010)
			at = 5
			helper_9cbdc640(1)
			event.MesMake_2(0, "もう、ユリスへたくそなんだから。\n私に貸してみて。")
			open_message(0, -1, 8, 0, 0)
			event.StreamPlay(1)
			at = 6
			helper_5ac4b36d(0)
			close_message(0)
			event.StreamClose(1)
			event.SetMesPos(0, 0)
			event.ResetPakuAnim()
			at = 7
			wait_objects(1)
			event.SetFadeOut(30)
			at = 8
			helper_888ab2a3(30)
			event.CharaActive(1, 0)
			event.DelExtMotion(13)
			return 0
		end
	end, function(received: { any })
		if at <= 4 then
			if at == 4 then
				var1 = received[1] :: number
			end
			if at <= 1 then
				helper_238b5abc(1)
			end
			if at <= 2 then
				helper_f018b3c0(0, -1, 8, 0, 0)
				helper_42079db3(0)
			end
			if at <= 3 then
				helper_d16eef1e(0)
				helper_f018b3c0(0, -1, 5, 0, 0)
				var1 = helper_d793ae41(0, 2, 0, 1)
			end
			return 1
		end
		if at <= 8 then
			if at <= 5 then
				helper_f018b3c0(0, -1, 8, 0, 0)
				helper_42079db3(0)
			end
			if at <= 6 then
				helper_d16eef1e(0)
				helper_238b5abc(1)
			end
			if at <= 7 then
				helper_038a2e4d(30)
			end
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_39fa0()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(315, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		helper_888ab2a3(4)
		event.LoadBgm(57)
		event.PlayBgm(0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetStatusbarShow(0, 1.0)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.ChangeDir("event/e300/e315/")
		event.LoadMes(0, 5, "e315.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e315_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
		else
			event.DelExtMotion(13)
			event.LoadMotion(5, "event/e300/e312/e312_monica.gltf", "info", 13)
			event.LoadMotion(5, "event/e300/e315/e315_monica.gltf", "info", 13)
			event.EohSyncChara(1, 13)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "dungeon/sphida/gool_end.gltf", "info", 12)
		event.CharaActive(0, 12)
		var1 = event.SndLoadSound_3(5, "snd2/mon/en_900.sound.json") or var1
		event.CreateSwordEffect(5, 64, 16)
		event.SwordEffectColor(128, 128, 128, 80, 128, 128, 128, 80)
		event.EohSetPos(0, -92.27, 48.63, 1283.9)
		event.EohSetRot(0, 0.0, 1.34, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.CharaActive(1, 15)
		event.SetCharaPos(15, 0.0, 0.0, 0.0)
		event.SetCharaRot(15, 0.0, 0.0, 0.0)
		event.SetReference(13, "sword_hand", 15)
		event.EohSetPos(1, -11.1, 63.73, 1309.96)
		event.EohSetRot(1, 0.0, 1.8, 0.0)
		event.EohSetMotion(1, "かまえゴルフＬ", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.CharaNormalDrive(13)
		event.CharaResetDa(13)
		event.SphidaSetBallPos(0.0, 65.57, 1305.04)
		event.SphidaSetBallCol(0)
		event.SetCharaPos(8, 0.0, 65.57, 1305.04)
		event.CharaActive(0, 8)
		event.SetCharaPos(9, 0.0, 65.57, 1305.04)
		event.CharaActive(1, 9)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(65.27, 79.39, 1297.35)
		event.CmrsSetRef(6.16, 79.67, 1305.48)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3150020)
		event.ObjsSetMotion(1, "前方確認", 2)
		event.ObjsNextMotion(1, "ショット", 6)
		wait_objects(1)
		helper_888ab2a3(24)
		helper_33434(var1)
		event.CmrsSetPos(-88.57, 74.62, 1267.26)
		event.CmrsSetRef(20.74, 79.67, 1276.18)
		event.ObjsSetPos(0, -18.67, 62.68, 1288.34)
		event.ObjsSetRot(0, 0.0, -2.66, 0.0)
		event.ObjsResetDaPosition(0, 0.0, -2.66, 0.0)
		event.ObjsSetPos(1, -1.4, 62.34, 1267.0)
		event.ObjsSetRot(1, 0.0, -2.68, 0.0)
		event.Ext(454, 1, "立ち", 4, -1.0, 1) -- retail: the handler rejects 5 arguments
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.SetPakuAnim(1, "通常口パク")
		helper_4116e6bb(3150030)
		event.ObjsSetMotion(0, "すごいや", 6)
		event.ObjsNextMotion(0, "すごいやL", 4)
		event.SetPakuAnim(0, "通常口パク")
		helper_4116e6bb(3150040)
		wait_objects(0)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(12)
	event.CancelDramaScene()
	event.StopBgm(0)
	event.DelExtMotion(0)
	event.DelExtMotion(13)
	event.CharaActive(0, 8)
	event.CharaActive(0, 9)
	event.CharaActive(0, 10)
	event.CharaActive(0, 11)
	event.CharaActive(0, 12)
	event.DelReference(15)
	event.CharaActive(0, 15)
	event.DeleteChara(12)
	event.LoadMes(0, -1)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

script.default_event = default_event

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.Initialize()
	helper_fd3a2124(1)
	vm.wait(1)
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local flag: s32 = 0
	local argc: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(314) or flag
		if flag == 0 then
			argc = event.GetItemHaveNum(9) or argc
			if argc >= 1 then
				event.SetMotion(0, "立ち")
				event.SetFadeOut(30)
				at = 1
				helper_888ab2a3(30)
				at = 2
				helper_2f2d0()
				event.SetFadeIn(30)
				at = 3
				helper_888ab2a3(30)
				at = 4
				helper_43e18()
			else
				at = 5
				helper_2d65c()
			end
		elseif (function()
			at = 6
			return helper_31830()
		end)() ~= 0 then
			at = 7
			helper_3b604()
			event.AddItem(10)
			event.AddItem(363)
			at = 8
			helper_3e1dc(10)
			at = 9
			helper_431a4()
			return
		end
		at = 10
		vm.wait(10)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 9 then
			if at == 6 then
				local _ = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_2f2d0()
				return vm.continue_with(function()
					event.SetFadeIn(30)
					at = 3
					helper_888ab2a3(30)
					at = 4
					helper_43e18()
					at = 10
					vm.wait(10)
					event.Finish()
					return
				end)
			end
			if at <= 2 then
				helper_038a2e4d(30)
			end
			if at <= 3 then
				helper_d8e14c06()
			end
			if at <= 4 then
				helper_24f00000()
			end
			if at <= 5 then
				local _ = helper_25100000()
			end
			if at <= 6 then
				at = 7
				helper_3b604()
				return vm.continue_with(function()
					event.AddItem(10)
					event.AddItem(363)
					at = 8
					helper_3e1dc(10)
					at = 9
					helper_431a4()
					return
				end)
			end
			if at <= 7 then
				at = 8
				helper_3e1dc(10)
				return vm.continue_with(function()
					at = 9
					helper_431a4()
					return
				end)
			end
			if at <= 8 then
				helper_24c00000()
			end
			return 0
		end
		if at <= 10 then
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	event.Initialize()
	vm.wait(1)
	event.SetMotion(0, "立ち")
	event.FuncPointShow("", "branch", 0)
	event.AddItem(9)
	helper_e787350a(9, 1)
	event.CharaActive(0, 15)
	helper_d61bc810(1)
	event.Finish()
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	local active_chr_no: s32 = 0
	local var1: any = 0
	event.Initialize()
	vm.wait(1)
	event.ActchrSetDefMotion(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		if active_chr_no == 2 then
			helper_75684dd8(0, 20, 5, 256, 208)
		else
			helper_75684dd8(0, 21, 5, 256, 208)
		end
		event.Finish()
		return
	end
	event.SetMesQuestionGyou(0, 0)
	event.SetMesWindowMode(0, 5)
	event.SetMesDrawspeed(0, 1)
	var1 = helper_bac0e30d(0, 10, 8, 256, 208, 2, 1)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	if var1 == 0 then
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		helper_431a4()
		return
	end
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- The Sphida event run when the player stands at the ball and presses the action button.
function script.sphida_shot()
	local var0: s32 = 0
	local argc: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		var0 = helper_1ab10()
		if var0 == 1 then
			at = 2
			helper_3d2f8()
			event.AddItem(11)
			event.AddItem(363)
			at = 3
			helper_3e1dc(11)
			at = 4
			helper_431a4()
			return
		end
		if var0 == 2 then
			argc = event.GetLocalCnt(0) or argc
			argc = vm.i32(argc + 1)
			event.SetLocalCnt(0, argc)
			if argc >= 10 then
				at = 5
				helper_3827c()
				event.AddItem(10)
				event.AddItem(363)
				at = 6
				helper_3e1dc(10)
				at = 7
				helper_431a4()
				return
			elseif (function()
				at = 8
				return helper_326a4()
			end)() == 0 then
				at = 9
				helper_39fa0()
				event.AddItem(10)
				event.AddItem(363)
				at = 10
				helper_3e1dc(10)
				at = 11
				helper_431a4()
				return
			else
				event.CharaActive(0)
				event.SetCharaPos(0, -25.0, 62.7, 1285.3)
				event.SetCharaRot(0, 0.0, 3.14, 0.0)
				event.SetMotion(0, "立ち", 4)
				event.CharaNormalDrive(0)
				event.CharaResetDa(0)
				event.SphidaSetPlayFlag(1)
				event.SphidaSetParCount(3)
				event.SphidaSetBallPos(0.0, 65.57, 1305.04)
				event.SphidaSetBallCol(0)
				event.SphidaSetLastChallenge(0)
				event.SetCharaPos(8, 0.0, 65.57, 1305.04)
				event.CharaActive(0, 8)
				event.SetCharaPos(9, 0.0, 65.57, 1305.04)
				event.CharaActive(1, 9)
				event.SetCameraRef(-25.0, 92.7, 1285.3)
				event.SetCameraPos(-25.0, 102.7, 1385.3)
				event.ResetCamera(0)
				event.Finish()
			end
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at == 1 then
				var0 = received[1] :: number
			end
			if at <= 1 then
				at = 2
				helper_3d2f8()
				return vm.continue_with(function()
					event.AddItem(11)
					event.AddItem(363)
					at = 3
					helper_3e1dc(11)
					at = 4
					helper_431a4()
					return
				end)
			end
			if at <= 2 then
				at = 3
				helper_3e1dc(11)
				return vm.continue_with(function()
					at = 4
					helper_431a4()
					return
				end)
			end
			if at <= 3 then
				helper_24c00000()
			end
			return 0
		end
		if at <= 7 then
			if at <= 5 then
				at = 6
				helper_3e1dc(10)
				return vm.continue_with(function()
					at = 7
					helper_431a4()
					return
				end)
			end
			if at <= 6 then
				helper_24c00000()
			end
			return 0
		end
		if at <= 11 then
			if at <= 8 then
				at = 9
				helper_39fa0()
				return vm.continue_with(function()
					event.AddItem(10)
					event.AddItem(363)
					at = 10
					helper_3e1dc(10)
					at = 11
					helper_431a4()
					return
				end)
			end
			if at <= 9 then
				at = 10
				helper_3e1dc(10)
				return vm.continue_with(function()
					at = 11
					helper_431a4()
					return
				end)
			end
			if at <= 10 then
				helper_24c00000()
			end
			return 0
		end
		return nil
	end)
end

--- The Sphida event run when the menu button is pressed near the ball.
function script.sphida_near_ball()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local debug_flag: s32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 5)
	event.SetMesQuestionGyou(0, 0)
	var0 = helper_bac0e30d(0, 2004, 8, 256, 208, 2, 0)
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
		debug_flag = event.GetDebugFlag() or debug_flag
		if debug_flag == 0 then
			helper_c2ca38b7(-1)
		end
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
	event.MesMake_2(0, "スフィアを足元へ移動できるのは\nこれが最後になります。")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, 5)
	event.SetMesQuestionGyou(0, 0)
	event.MesMake_2(0, "スフィアを足元へ移動しますか？")
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

--- Event 13080, which map data, a script or the engine runs by number.
function script.event_13080()
	event_99()
	event.SetFlag(300, 1)
	event.SetFlag(320, 0)
	default_event()
end

--- Event 13120, which map data, a script or the engine runs by number.
function script.event_13120()
	event_99()
	event.SetFlag(300, 1)
	event.SetFlag(320, 1)
	event.SetFlag(312, 0)
	event.SetFlag(314, 0)
	event.SetFlag(315, 0)
	event.SetFlag(316, 0)
	event.SetFlag(317, 0)
	default_event()
end

--- Event 13170, which map data, a script or the engine runs by number.
function script.event_13170()
	event_99()
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(4)
	event.ClearStack(4)
	event.LoadChara(4, "chara/c02_base.gltf", "info", 13)
	event.LoadEquip(4, 1, 4, "info", 13)
	event.LoadEquip(4, 1, 3, "info", 13)
	event.LoadEquip(4, 1, 2, "info", 13, 14)
	helper_3e1dc(10)
end

return script
