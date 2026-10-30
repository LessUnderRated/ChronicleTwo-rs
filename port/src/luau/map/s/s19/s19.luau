--!strict
-- map/s/s19/s19.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_2609f66b = require("@lib/event/helper_2609f66b")
local helper_26c3d54b = require("@lib/event/helper_26c3d54b")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_3d13e6aa = require("@lib/event/helper_3d13e6aa")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_4a9b8bc5 = require("@lib/event/helper_4a9b8bc5")
local helper_523109b8 = require("@lib/event/helper_523109b8")
local helper_53ffe901 = require("@lib/event/helper_53ffe901")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_a6838a9a = require("@lib/event/helper_a6838a9a")
local helper_a9eaf20e = require("@lib/event/helper_a9eaf20e")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local helper_f616ba9e = require("@lib/event/helper_f616ba9e")
local helper_f9968159 = require("@lib/event/helper_f9968159")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	event.LoadSound(4684)
	flag = event.GetFlag(408) or flag
	flag_2 = event.GetFlag(420) or flag_2
	var2 = event.GetSavedataEtc(2) or var2
	if flag == 1 and flag_2 == 0 and var2 == 1 then
	else
		event.StopBgm(0)
		helper_888ab2a3(4)
		event.LoadBgm(167)
		event.PlayBgm(0)
	end
end

--- Helper function.
local function helper_11c1c()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local var4: f32 = 0
	local vector_x: f32 = 0
	local vector_y: f32 = 0
	local vector_z: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local var14: s32 = 0
	local var15: s32 = 0
	local var16: s32 = 0
	local stream_open_state: s32 = 0
	local var18: s32 = 0
	local var19: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(408, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.LoadSound(4803)
		var0 = event.SndLoadSound_2(4803) or var0
		event.SndSePlay(var0, 11)
		at = 2
		vm.wait(2)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e408/")
		event.LoadMes(0, 5, "e408.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e408_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e408_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e408_paw.gltf", "info", 10)
		event.CharaActive(0, 10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e408_shigu.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "mariometto_a.gltf", "info", 12)
		event.CharaActive(0, 12)
		event.SetReference(11, "metto_null", 12)
		event.LoadChara(5, "e408_mizusibuki.gltf", "info", 13)
		event.CharaActive(0, 13)
		event.SetCharaType(13, 4)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e400/e408/e408_mints.gltf", "info", 8)
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
			event.LoadMotion(5, "event/e400/e408/e408_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(6, 1)
		event.EohSyncChara(7, 2)
		event.EohSyncObj_3(4, "p06_s19", "s19_09-m1")
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.EohSyncObj_3(5, "p06_s19", "s19_10-m1")
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 5)
		event.EohSetPos(0, -70.0, 5.18, 610.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetFootSoundId(0, 16)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -85.0, 5.18, 620.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetFootSoundId(1, 16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, -76.0, -38.33, 1157.0)
		event.EohSetRot(2, 0.0, 3.14, 0.0)
		event.EohSetFootSoundId(2, 16)
		event.EohSetPos(3, -68.33, -4.68, 302.5)
		event.EohSetRot(3, 0.0, 0.0, 0.0)
		event.EohSetMotion(3, "出現", 5)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "赤目パチ")
		event.SetCharaPos(13, -72.26, 0.0, 371.59)
		event.SetCharaRot(13, 0.0, -0.12, 0.0)
		event.EohSetShow(6, 0)
		event.EohSetShow(7, 0)
		do
			local out1, out2, out3 = event.EohGetRot(4)
			rot_x = out1 or rot_x
			rot_y = out2 or rot_y
			var4 = out3 or var4
		end
		do
			local out1, out2, out3 = event.CopyVector(rot_x, rot_y, var4)
			vector_x = out1 or vector_x
			vector_y = out2 or vector_y
			vector_z = out3 or vector_z
		end
		do
			local out1, out2, out3 = event.EohGetPos(5)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		var4 = vm.f32(vector_z - vm.f32(3.1415927))
		var4 = event.AngleLimit(var4) or var4
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-78.09, 35.57, 471.0)
		event.CmrsSetRef(-77.73, 22.13, 561.51)
		event.ObjsMove(0, -70.0, 4.89, 540.0, 60, 1)
		event.ObjsSetMotion(0, "歩き", 4)
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(1, -85.0, 5.18, 540.0, 70, 1)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMotionDelay(1, 70)
		event.ObjsSetMotion(1, "立ち")
		event.SetFadeIn(30)
		at = 3
		wait_objects(1)
		event.SetPakuAnim(0, "通常口パク")
		at = 4
		helper_4116e6bb(4080010)
		event.SetPakuAnim(1, "通常口パク")
		at = 5
		helper_4116e6bb(4080020)
		event.CmrsSetPos(-80.97, 22.27, 518.15)
		event.CmrsSetRef(-69.62, 27.4, 537.26)
		event.SetPakuAnim(0, "通常口パク")
		at = 6
		helper_4116e6bb(4080030)
		event.SetMesOkuri(0, 0)
		pos_x_2 = -140.0
		var12 = vm.f32(1.9)
		var13 = vm.f32(-0.044)
		event.CmrsSetPos(-86.24, 243.02, 628.3)
		event.CmrsSetRef(pos_x_2, 253.78, 519.17)
		var15 = 0
		var16 = 0
		var14 = 0
		while var14 < 440 do
			event.CmrsSetRef(pos_x_2, 253.78, 519.17)
			pos_x_2 = vm.f32(pos_x_2 + var12)
			if var14 < 42 then
				var12 = vm.f32(var12 + var13)
			end
			if var15 == 1 then
				stream_open_state = event.StreamOpenCheck() or stream_open_state
				if stream_open_state == 0 then
					var15 = 0
					var16 = 1
					event.StreamStandby(1)
				end
			end
			if var16 == 1 then
				stream_open_state = event.StreamOpenCheck() or stream_open_state
				if stream_open_state == 0 then
					var16 = 0
					event.MesMake_2(0, var18)
					open_message(0, -1, 8, 0, 0)
					event.StreamPlay(1)
				end
			end
			if var14 == 0 then
				var18 = 4080040
				event.StreamOpen3(1, var18)
				var15 = 1
			end
			if var14 == 150 then
				close_message(0)
				event.StreamClose(1)
				var18 = 4080043
				event.StreamOpen3(1, var18)
				var15 = 1
			end
			if var14 == 324 then
				close_message(0)
				event.StreamClose(1)
				var18 = 4080046
				event.StreamOpen3(1, var18)
				var15 = 1
			end
			var14 = var14 + 1
			at = 7
			vm.wait(7)
		end
		close_message(0)
		event.StreamClose(1)
		event.SetMesOkuri(0, 1)
		event.CmrsSetPos(-71.52, 55.19, 769.57)
		event.CmrsSetRef(-78.08, 79.65, 504.61)
		event.SetPakuAnim(0, "通常口パク")
		at = 8
		helper_4116e6bb(4080050)
		event.SetPakuAnim(1, "通常口パク")
		at = 9
		helper_4116e6bb(4080060)
		event.ObjsSetMotion(0, "左向く", 6)
		event.ObjsNextMotion(0, "左向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 10
		helper_4116e6bb(4080070)
		at = 11
		wait_objects(0)
		event.SetPakuAnim(1, "通常口パク")
		at = 12
		helper_4116e6bb(4080080)
		at = 13
		helper_a6838a9a(4080090, -1)
		event.ObjsSetMotion(0, "左向く戻り", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		at = 14
		wait_objects(0)
		event.CharaActive(11)
		event.CharaActive(12)
		event.ObjsSetMotion(3, "出現", 6)
		event.ObjsNextMotion(3, "出現L", 4)
		event.CharaActive(1, 13)
		event.SetMotion(13, "出現", 6)
		event.SndSePlay(var0, 2)
		at = 15
		helper_888ab2a3(50)
		event.CmrsSetPos(-79.56, 83.32, 667.05)
		event.CmrsSetRef(-76.25, 31.32, 465.62)
		event.ObjsSetMotion(0, "驚く", 6)
		event.ObjsNextMotion(0, "驚くL", 4)
		event.ObjsSetMotion(1, "びっくりから上見", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		at = 16
		wait_objects(3)
		event.StopBgm(0)
		event.SetLoadbgFile_1("snd2/bgm/bg_191.sound.json")
		at = 17
		helper_888ab2a3(4)
		at = 18
		helper_479dc9e9()
		event.LoadBgmPack(191)
		event.PlayBgm(0)
		event.CmrsSetPos(-82.34, 24.64, 525.1)
		event.CmrsSetRef(-68.49, 28.0, 544.23)
		event.CharaActive(0, 13)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.SetPakuAnim(0, "大口パク")
		at = 19
		helper_4116e6bb(4080100)
		event.CmrsSetPos(-73.64, 31.85, 524.1)
		event.CmrsSetRef(-86.33, 28.93, 539.68)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.SetPakuAnim(1, "通常口パク")
		at = 20
		helper_4116e6bb(4080110)
		event.CmrsSetPos(-80.48, 94.7, 723.29)
		event.CmrsSetRef(-76.25, 38.16, 465.62)
		event.ObjsSetPos(3, -78.11, -15.13, 426.88)
		event.ObjsSetMotion(3, "攻撃", 6)
		event.ObjsNextMotion(3, "立ち2", 4)
		at = 21
		helper_888ab2a3(10)
		event.SndSePlay(var0, 3)
		event.ObjsMove(0, -44.9, 3.81, 599.34, 20)
		event.ObjsRotation(0, 0.0, 0.38, 0.0, 8)
		event.ObjsRotDelay(0, 4)
		event.ObjsRotation(0, 0.0, -2.98, 0.0, 8)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 20)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(1, -112.34, 5.0, 594.97, 20)
		event.ObjsRotation(1, 0.0, -0.5, 0.0, 8)
		event.ObjsRotDelay(1, 4)
		event.ObjsRotation(1, 0.0, 2.78, 0.0, 8)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMotionDelay(1, 20)
		event.ObjsSetMotion(1, "立ち")
		at = 22
		wait_objects(0)
		at = 23
		wait_objects(3)
		event.CmrsSetPos(-62.07, 18.74, 574.92)
		event.CmrsSetRef(-42.47, 24.02, 598.1)
		event.SndSePlay(var0, 4)
		event.ObjsSetMotion(0, "やめろ", 6)
		event.ObjsNextMotion(0, "驚くL", 4)
		event.SetPakuAnim(0, "大口パク")
		at = 24
		helper_4116e6bb(4080120)
		event.CmrsSetPos(-90.65, 28.85, 590.7)
		event.CmrsSetRef(-115.93, 29.03, 592.13)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.ObjsSetMotion(1, "上向くL", 4, -1.0, 1)
		event.SetPakuAnim(1, "大口パク")
		at = 25
		helper_4116e6bb(4080130)
		event.CmrsSetPos(-72.77, 80.75, 769.84)
		event.CmrsSetRef(-77.4, 43.66, 562.84)
		event.SndSePlay(var0, 5)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.ObjsSetMotion(3, "威嚇", 6)
		event.ObjsNextMotion(3, "立ち2", 4)
		event.SetPakuAnim(0, "大口パク")
		at = 26
		helper_4116e6bb(4080140)
		event.SetPakuAnim(1, "通常口パク")
		at = 27
		helper_4116e6bb(4080150)
		event.SndSeStop(var0, 5)
		event.CmrsSetPos(-76.95, 45.52, 498.09)
		event.CmrsSetRef(-76.43, 15.43, 706.96)
		event.SndSePlay(var0, 6)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目～通常目")
		event.CharaActive(10)
		event.ObjsRotation2(4, rot_x, rot_y, var4, 40, 0, 0.5)
		event.ObjsRotDelay(4, 168)
		event.ObjsRotation2(4, vector_x, vector_y, vector_z, 40, 0, 0.5)
		event.ObjsPosDelay(5, 80)
		event.ObjsMove2(5, pos_x, pos_y + 80.0, pos_z, 32, 1, 0.5)
		event.ObjsPosDelay(5, 40)
		event.ObjsMove2(5, pos_x, pos_y, pos_z, 32, 0, 0.5)
		event.ObjsSetMotion(0, "立ち", 6)
		event.ObjsMotionDelay(0, 4)
		event.ObjsSetMotion(0, "振り向く（左）", 6)
		event.ObjsNextMotion(0, "振り向く（左）L", 4)
		event.ObjsSetMotion(1, "立ち", 6)
		event.ObjsMotionDelay(1, 10)
		event.ObjsSetMotion(1, "振り向き", 6)
		event.ObjsNextMotion(1, "振り向きＬ", 4)
		at = 28
		helper_888ab2a3(90)
		event.ObjsSetMotion(2, "上見走り")
		event.ObjsMove(2, -76.55, 0.45, 877.82, 60, 1)
		at = 29
		helper_888ab2a3(10)
		event.SetPakuAnim(0, "通常口パク")
		at = 30
		helper_0382f327(4080160, 50)
		at = 31
		wait_objects(2)
		event.CmrsSyncObj(2, 0.0, 18.3, -4.0, -2.0, -0.57, 24.0)
		event.ObjsSetPos(2, -76.0, 1.92, 813.28)
		event.ObjsMove(2, -78.0, 4.89, 551.73, 120, 1)
		event.ObjsMotionDelay(2, 120)
		event.ObjsSetMotion(2, "上見立ち")
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり目")
		event.ObjsSetMotion(0, "驚くL", 4, -1.0, 1)
		event.ObjsSetMotion(1, "上向くL", 4, -1.0, 1)
		at = 32
		helper_4116e6bb(4080170)
		at = 33
		wait_objects(2)
		event.CmrsReleaseObj()
		event.SetPakuAnim(1, "通常口パク")
		at = 34
		helper_4116e6bb(4080180)
		event.SetPakuAnim(1, "通常口パク")
		at = 35
		helper_4116e6bb(4080185)
		at = 36
		helper_888ab2a3(10)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり目～おどろき目")
		event.ObjsSetMotion(2, "！！", 2)
		event.ObjsNextMotion(2, "上見立ち")
		at = 37
		helper_a6838a9a(4080190, -1)
		event.CmrsSetPos(-73.07, -10.65, 595.6)
		event.CmrsSetRef(-87.35, 69.1, 460.59)
		event.SndSePlay(var0, 7)
		event.CharaActive(0, 10)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり目")
		event.ObjsSetMotion(3, "攻撃", 6)
		event.ObjsMotionDelay(3, 30)
		event.ObjsSetMotion(3, "攻撃", 1)
		event.SetPakuAnim(0, "通常口パク")
		event.StreamOpen3(1, 4080200)
		at = 38
		var19 = helper_f616ba9e(1)
		event.SetMesOkuri(0, 0)
		event.MesMake_2(0, 4080200)
		open_message(0, -1, 8, 0, 0)
		event.StreamPlay(1)
		at = 39
		helper_888ab2a3(vm.i32(30 - var19))
		event.CmrsSetPos(-92.53, 6.56, 559.96)
		event.CmrsSetRef(-39.54, 19.62, 593.16)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "大口パク")
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, -64.66, 4.79, 541.75, 14, 1)
		at = 40
		helper_888ab2a3(14)
		close_message(0)
		event.StreamClose(1)
		event.SetMesOkuri(0, 1)
		event.CmrsSetPos(-77.13, 11.5, 549.0)
		event.CmrsSetRef(-117.01, 21.86, 587.27)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.EohSetTexAnim(1, 1, "大口")
		event.ObjsSetMotion(1, "上見びっくり", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		at = 41
		helper_888ab2a3(10)
		event.CmrsSetPos(-81.01, 33.49, 535.66)
		event.CmrsSetRef(-86.5, 39.49, 520.89)
		event.SndSePlay(var0, 8)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(0, 1, "大口")
		event.ObjsSetMotion(3, "攻撃2", 6)
		event.ObjsMotionDelay(3, 10)
		event.ObjsSetMotion(3, "攻撃", 1)
		event.ObjsSetPos(0, -8.54, 2.83, 545.17)
		event.ObjsSetRot(0, 0.0, -1.7, 0.0)
		at = 42
		helper_888ab2a3(4)
		event.CmrsMove2(-81.01, 33.49, 535.66, -67.85, 33.31, 537.58, 12, 0, 0.4)
		at = 43
		helper_888ab2a3(3)
		event.ObjsSetMotion(0, "タックル", 6, -1.0, 1)
		at = 44
		wait_camera()
		event.ObjsSetMotion(3, "攻撃3", 6)
		event.CmrsMove2(-157.5, 18.3, 524.15, -141.51, 23.91, 526.12, 8, 2, 1.0)
		event.CmrsQuake(0.0, 6.0, 0.0, 30)
		at = 45
		helper_888ab2a3(2)
		if active_chr_no == 0 then
			event.CharaActive(0, 0)
		else
			event.CharaActive(0, 8)
			event.CharaActive(0, 9)
		end
		at = 46
		helper_0382f327(4080205, 40)
		at = 47
		wait_camera()
		event.CmrsSetPos(-154.32, 107.18, 768.06)
		event.CmrsSetRef(-95.44, 20.24, 463.89)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		if active_chr_no == 0 then
			event.CharaActive(0)
		else
			event.CharaActive(8)
			event.CharaActive(9)
		end
		event.CharaActive(10)
		event.ObjsSetPos(0, -144.47, 6.3, 567.45)
		event.ObjsSetRot(0, 0.0, 2.02, 0.0)
		event.ObjsSetMotion(0, "立ちあがる", 6, -1.0, 1)
		event.ObjsNextMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.ObjsSetPos(2, -168.07, 3.48, 508.64)
		event.ObjsSetRot(2, 0.0, 1.22, 0.0)
		event.ObjsResetMotion(2)
		event.ObjsSetMotion(2, "立ちあがる", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		event.ObjsSetPos(3, -50.57, -15.41, 428.09)
		event.ObjsSetRot(3, 0.0, -0.36, 0.0)
		event.ObjsSetMotion(3, "立ち2", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 48
		helper_4116e6bb(4080210)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMove(1, -111.4, 3.75, 698.18, 40, 1)
		event.ObjsRotation(1, 0.0, 0.14, 0.0, 8)
		at = 49
		helper_888ab2a3(2)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, -146.03, 4.47, 681.95, 50, 1)
		event.ObjsRotation(0, 0.0, 0.1, 0.0, 8)
		at = 50
		helper_888ab2a3(8)
		event.ObjsSetMotion(2, "走り")
		event.ObjsMove(2, -157.24, 4.74, 682.84, 50, 1)
		event.ObjsRotation(2, 0.0, 0.02, 0.0, 8)
		at = 51
		wait_objects(2)
		event.CmrsSetPos(-76.59, 45.52, 642.13)
		event.CmrsSetRef(-76.07, 15.43, 850.71)
		event.FadeOutBgm(60)
		event.ObjsMove(1, -85.95, -25.91, 1068.48, 80, 1)
		event.ObjsMotionDelay(1, 80)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsRotDelay(1, 72)
		event.ObjsRotation(1, 0.0, 3.02, 0.0, 8)
		event.ObjsRotDelay(4, 90)
		event.ObjsRotation2(4, rot_x, rot_y, var4, 40, 0, 0.5)
		event.ObjsPosDelay(5, 130)
		event.ObjsMove2(5, pos_x, pos_y + 80.0, pos_z, 32, 1, 0.5)
		event.ObjsSeDelay(5, 90)
		event.ObjsSePlay(5, var0, 9)
		at = 52
		helper_888ab2a3(4)
		event.ObjsSetPos(0, -61.85, 3.51, 650.67)
		event.ObjsSetRot(0, 0.0, -0.1, 0.0)
		event.ObjsMove(0, -54.15, -4.35, 911.55, 60, 1)
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMotionDelay(0, 5)
		event.ObjsSetMotion(0, "振り向く（右）", 6)
		event.ObjsNextMotion(0, "振り向く（右）L", 4)
		at = 53
		helper_888ab2a3(10)
		event.ObjsSetPos(2, -87.61, 3.87, 655.48)
		event.ObjsSetRot(2, 0.0, 0.1, 0.0)
		event.ObjsMove(2, -87.84, 2.52, 774.78, 40, 1)
		event.ObjsMotionDelay(2, 40)
		event.ObjsSetMotion(2, "振り向く", 2)
		event.ObjsNextMotion(2, "振り向くL", 4)
		at = 54
		wait_objects(2)
		at = 55
		helper_4116e6bb(4080220)
		event.SetPakuAnim(0, "大口パク")
		at = 56
		helper_4116e6bb(4080230)
		at = 57
		wait_objects(5)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMotionDelay(1, 50)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsMove(1, -19.76, -41.08, 1213.94, 50)
		event.ObjsRotation(1, 0.0, 0.26, 0.0, 6)
		event.ObjsSetMotion(0, "振り向く（右）戻り", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.ObjsMotionDelay(0, 1)
		event.ObjsSetMotion(0, "走り")
		event.ObjsPosDelay(0, 18)
		event.ObjsMove(0, -66.76, -20.35, 1068.29, 40, 1)
		at = 58
		helper_888ab2a3(10)
		event.ObjsSetMotion(2, "振り向く戻り", 6)
		event.ObjsNextMotion(2, "走り")
		event.ObjsPosDelay(2, 20)
		event.ObjsMove(2, -82.88, -2.14, 896.69, 40, 1)
		at = 59
		helper_888ab2a3(4)
		at = 60
		helper_888ab2a3(6)
		event.SetFadeOut(30)
		at = 61
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at == 38 then
			var19 = received[1] :: number
		end
		if at <= 2 then
			var4 = vm.f32(vector_z - vm.f32(3.1415927))
			helper_238b5abc(1)
		end
		if at <= 3 then
			helper_8cd371d7(4080010)
		end
		if at <= 4 then
			helper_8cd371d7(4080020)
		end
		if at <= 5 then
			helper_8cd371d7(4080030)
		end
		if at <= 6 then
			pos_x_2 = -140.0
			var12 = vm.f32(1.9)
			var13 = vm.f32(-0.044)
			var15 = 0
			var16 = 0
			var14 = 0
			pos_x_2 = vm.f32(pos_x_2 + var12)
			var12 = vm.f32(var12 + var13)
			local _ = var15 == 1
			var15 = 0
			var16 = 1
			local _ = var16 == 1
			var16 = 0
			helper_f018b3c0(0, -1, 8, 0, 0)
			var18 = 4080040
			var15 = 1
			helper_d16eef1e(0)
			var18 = 4080043
			var15 = 1
			helper_d16eef1e(0)
			var18 = 4080046
			var15 = 1
			local _ = var14 < 440
			local _ = var14 < 42
			local _ = var14 == 0
			local _ = var14 == 150
			local _ = var14 == 324
			var14 = var14 + 1
		end
		if at <= 7 then
			helper_d16eef1e(0)
			helper_8cd371d7(4080050)
		end
		if at <= 8 then
			helper_8cd371d7(4080060)
		end
		if at <= 9 then
			helper_8cd371d7(4080070)
		end
		if at <= 10 then
			helper_238b5abc(0)
		end
		if at <= 11 then
			helper_8cd371d7(4080080)
		end
		if at <= 12 then
			helper_26c3d54b(4080090, -1)
		end
		if at <= 13 then
			helper_238b5abc(0)
		end
		if at <= 14 then
			helper_038a2e4d(50)
		end
		if at <= 15 then
			helper_238b5abc(3)
		end
		if at <= 16 then
			helper_038a2e4d(4)
		end
		if at <= 17 then
			helper_344d6cd8()
		end
		if at <= 18 then
			helper_8cd371d7(4080100)
		end
		if at <= 19 then
			helper_8cd371d7(4080110)
		end
		if at <= 20 then
			helper_038a2e4d(10)
		end
		if at <= 21 then
			helper_238b5abc(0)
		end
		if at <= 22 then
			helper_238b5abc(3)
		end
		if at <= 23 then
			helper_8cd371d7(4080120)
		end
		if at <= 24 then
			helper_8cd371d7(4080130)
		end
		if at <= 25 then
			helper_8cd371d7(4080140)
		end
		if at <= 26 then
			helper_8cd371d7(4080150)
		end
		if at <= 27 then
			helper_038a2e4d(90)
		end
		if at <= 28 then
			helper_038a2e4d(10)
		end
		if at <= 29 then
			helper_53ffe901(4080160, 50)
		end
		if at <= 30 then
			helper_238b5abc(2)
		end
		if at <= 31 then
			helper_8cd371d7(4080170)
		end
		if at <= 32 then
			helper_238b5abc(2)
		end
		if at <= 33 then
			helper_8cd371d7(4080180)
		end
		if at <= 34 then
			helper_8cd371d7(4080185)
		end
		if at <= 35 then
			helper_038a2e4d(10)
		end
		if at <= 36 then
			helper_26c3d54b(4080190, -1)
		end
		if at <= 37 then
			var19 = helper_523109b8(1)
		end
		if at <= 38 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			helper_038a2e4d(vm.i32(30 - var19))
		end
		if at <= 39 then
			helper_038a2e4d(14)
		end
		if at <= 40 then
			helper_d16eef1e(0)
			helper_038a2e4d(10)
		end
		if at <= 41 then
			helper_038a2e4d(4)
		end
		if at <= 42 then
			helper_038a2e4d(3)
		end
		if at <= 43 then
			helper_344d6cd8()
		end
		if at <= 44 then
			helper_038a2e4d(2)
		end
		if at <= 45 then
			helper_53ffe901(4080205, 40)
		end
		if at <= 46 then
			helper_344d6cd8()
		end
		if at <= 47 then
			helper_8cd371d7(4080210)
		end
		if at <= 48 then
			helper_038a2e4d(2)
		end
		if at <= 49 then
			helper_038a2e4d(8)
		end
		if at <= 50 then
			helper_238b5abc(2)
		end
		if at <= 51 then
			helper_038a2e4d(4)
		end
		if at <= 52 then
			helper_038a2e4d(10)
		end
		if at <= 53 then
			helper_238b5abc(2)
		end
		if at <= 54 then
			helper_8cd371d7(4080220)
		end
		if at <= 55 then
			helper_8cd371d7(4080230)
		end
		if at <= 56 then
			helper_238b5abc(5)
		end
		if at <= 57 then
			helper_038a2e4d(10)
		end
		if at <= 58 then
			helper_038a2e4d(4)
		end
		if at <= 59 then
			helper_038a2e4d(6)
		end
		if at <= 60 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 62
	vm.entry(62)
	event.CancelDramaScene()
	event.SndSeStop(var0, 2)
	event.SndSeStop(var0, 5)
	event.SndSeStop(var0, 6)
	event.SndSeStop(var0, 8)
	event.SndSeStop(var0, 9)
	event.SndSeStop(var0, 11)
	event.StopBgm(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetMotion(1, "立ち", 4)
	event.EohSetRot(4, vector_x, vector_y, vector_z)
	event.EohSetPos(5, pos_x, pos_y, pos_z)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(6, 1)
	event.EohSetShow(7, 1)
	event.BgmLoadCancel()
	event.Finish()
end

--- Helper function.
local function helper_1bfac()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local var5: f32 = 0
	local vector_x: f32 = 0
	local vector_y: f32 = 0
	local vector_z: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(416, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		at = 2
		helper_888ab2a3(6)
		event.LoadBgm(30)
		event.LoadSound(4809)
		var0 = event.SndLoadSound_2(4809) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e416/")
		event.LoadMes(0, 5, "e416.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e416_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e416_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		block = event.LoadImg_4(5, "e416telop01.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e416telop01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetAlphab(0, 0)
		event.SpriteSetDraw(0, 0)
		event.EohSyncSprite(7, 0)
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 7)
		event.ChangeDir("")
		event.LoadChara(5, "event/e400/e410/e410_shigu.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "event/e400/e410/mariometto_a.gltf", "info", 11)
		event.CharaActive(11)
		event.SetReference(10, "metto_null", 11)
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e400/e416/e416_mints.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e400/e416/e416_monica.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(5, 1)
		event.EohSyncChara(6, 2)
		event.EohSyncObj_3(3, "p06_s19", "s19_09-m1")
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.EohSyncObj_3(4, "p06_s19", "s19_10-m1")
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.EohSetPos(0, -65.0, -38.28, 1157.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 16)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "おこり顔")
		event.EohSetTexAnim(0, 1, "おこり目パチ")
		event.EohSetPos(1, -85.0, -38.13, 1157.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.EohSetPos(2, -78.11, -15.13, 426.88)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "威嚇", 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "赤目パチ")
		event.EohSetShow(5, 0)
		event.EohSetShow(6, 0)
		do
			local out1, out2, out3 = event.EohGetRot(3)
			rot_x = out1 or rot_x
			rot_y = out2 or rot_y
			var5 = out3 or var5
		end
		do
			local out1, out2, out3 = event.CopyVector(rot_x, rot_y, var5)
			vector_x = out1 or vector_x
			vector_y = out2 or vector_y
			vector_z = out3 or vector_z
		end
		do
			local out1, out2, out3 = event.EohGetPos(4)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		var5 = vm.f32(vector_z - vm.f32(3.1415927))
		var5 = event.AngleLimit(var5) or var5
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-228.84, 94.46, 882.3)
		event.CmrsSetRef(-94.17, 38.37, 1068.72)
		event.ObjsRotation2(3, rot_x, rot_y, var5, 40, 0, 0.5)
		event.ObjsPosDelay(4, 80)
		event.ObjsMove2(4, pos_x, pos_y + 80.0, pos_z, 32, 1, 0.5)
		event.ObjsPosDelay(0, 100)
		event.ObjsMove(0, -65.0, -16.86, 1002.55, 40)
		event.ObjsMotionDelay(0, 100)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsPosDelay(1, 110)
		event.ObjsMove(1, -85.0, -16.86, 1002.55, 40)
		event.ObjsMotionDelay(1, 110)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMotionDelay(1, 40)
		event.ObjsSetMotion(1, "立ち")
		event.SetFadeIn(30)
		at = 3
		helper_888ab2a3(30)
		event.SndSePlay(var0, 0)
		at = 4
		wait_objects(1)
		at = 5
		helper_888ab2a3(10)
		event.CmrsSetPos(-70.27, 35.0, 783.66)
		event.CmrsSetRef(-73.25, 38.33, 674.48)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(5, 128, 128, 128, 128, 30)
		event.SndSePlay(var0, 1)
		event.ObjsSetPos(0, -50.18, 3.08, 671.54)
		event.ObjsSetRot(0, 0.0, -2.9, 0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -96.49, 3.79, 674.91)
		event.ObjsSetRot(1, 0.0, 2.78, 0.0)
		event.ObjsResetDaPosition(1)
		event.PlayBgm(0)
		at = 6
		helper_4116e6bb(4160010)
		event.SpriteSetDraw(0, 0)
		event.SndSeStop(var0, 1)
		event.CmrsSetPos(-29.56, 15.56, 642.62)
		event.CmrsSetRef(-64.62, 25.05, 676.95)
		event.ObjsSetMotion(0, "間抜け立ち", 4, -1.0, 1)
		event.ObjsSetPos(1, -78.55, 3.48, 677.41)
		event.ObjsSetRot(1, 0.0, 2.3, 0.0)
		event.ObjsSetMotion(1, "指差し", 6, -1.0, 1)
		event.ObjsNextMotion(1, "指差し会話", 6)
		event.ObjsNextMotion(1, "指差しＬ", 4)
		event.SetPakuAnim(1, "大口パク")
		at = 7
		helper_4116e6bb(4160020)
		at = 8
		wait_objects(1)
		event.ObjsSetMotion(0, "うん！", 2)
		event.ObjsNextMotion(0, "間抜け立ち", 4)
		at = 9
		helper_888ab2a3(10)
		event.SndSePlay(var0, 2)
		event.SetPakuAnim(0, "通常口パク")
		at = 10
		helper_4116e6bb(4160030)
		at = 11
		wait_objects(0)
		event.SetFadeOut(30)
		at = 12
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(6)
		end
		if at <= 2 then
			var5 = vm.f32(vector_z - vm.f32(3.1415927))
			helper_038a2e4d(30)
		end
		if at <= 3 then
			helper_238b5abc(1)
		end
		if at <= 4 then
			helper_038a2e4d(10)
		end
		if at <= 5 then
			helper_8cd371d7(4160010)
		end
		if at <= 6 then
			helper_8cd371d7(4160020)
		end
		if at <= 7 then
			helper_238b5abc(1)
		end
		if at <= 8 then
			helper_038a2e4d(10)
		end
		if at <= 9 then
			helper_8cd371d7(4160030)
		end
		if at <= 10 then
			helper_238b5abc(0)
		end
		if at <= 11 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 13
	vm.entry(13)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.SndSeStop(var0, 1)
	event.SndSeStop(var0, 2)
	event.SpriteSetDraw(0, 0)
	event.PlayBgm(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetMotion(1, "立ち", 4)
	event.EohSetRot(3, vector_x, vector_y, vector_z)
	event.EohSetPos(4, pos_x, pos_y, pos_z)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DelImg(0)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(5, 1)
	event.EohSetShow(6, 1)
	event.CharaActive(0)
	event.SetCharaPos(0, -96.2, 1.8, 851.5)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.SetCameraRef(-96.2, 31.8, 851.5)
	event.SetCameraPos(-96.2, 41.8, 951.5)
	event.ResetCamera(0)
	at = 14
	vm.wait(14)
	event.LoadMonsterFile(516, 1)
	event.LoadMonsterFile(1001, 0)
	event.AutoSetMonster(516, -78.11, -15.13, 426.88, 0.0, 0.0, 0.0)
	event.SetFadeIn(30)
	event.Finish()
end

--- Helper function.
local function helper_199cc()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local var4: f32 = 0
	local vector_x: f32 = 0
	local vector_y: f32 = 0
	local vector_z: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(410, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.LoadSound(4806)
		var0 = event.SndLoadSound_2(4806) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e410/")
		event.LoadMes(0, 5, "e410.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e410_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e410_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e410_shigu.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "mariometto_a.gltf", "info", 11)
		event.CharaActive(11)
		event.SetReference(10, "metto_null", 11)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e400/e410/e410_mints.gltf", "info", 8)
			event.EohSyncChara(0, 8)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 8)
			event.LoadEquip(5, 1, 4, "info", 8)
			event.LoadEquip(5, 1, 3, "info", 8)
			event.LoadEquip(5, 1, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e400/e410/e410_monica.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(5, 1)
		event.EohSyncChara(6, 2)
		event.EohSyncObj_3(3, "p06_s19", "s19_09-m1")
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.EohSyncObj_3(4, "p06_s19", "s19_10-m1")
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.EohSetPos(0, -65.0, -38.28, 1157.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 16)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -85.0, -38.13, 1157.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetFootSoundId(1, 16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, -78.11, -15.13, 426.88)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetMotion(2, "威嚇", 4)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "赤目パチ")
		event.EohSetShow(5, 0)
		event.EohSetShow(6, 0)
		do
			local out1, out2, out3 = event.EohGetRot(3)
			rot_x = out1 or rot_x
			rot_y = out2 or rot_y
			var4 = out3 or var4
		end
		do
			local out1, out2, out3 = event.CopyVector(rot_x, rot_y, var4)
			vector_x = out1 or vector_x
			vector_y = out2 or vector_y
			vector_z = out3 or vector_z
		end
		do
			local out1, out2, out3 = event.EohGetPos(4)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		var4 = vm.f32(vector_z - vm.f32(3.1415927))
		var4 = event.AngleLimit(var4) or var4
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-228.84, 94.46, 882.3)
		event.CmrsSetRef(-94.17, 38.37, 1068.72)
		event.ObjsRotation2(3, rot_x, rot_y, var4, 40, 0, 0.5)
		event.ObjsPosDelay(4, 80)
		event.ObjsMove2(4, pos_x, pos_y + 80.0, pos_z, 32, 1, 0.5)
		event.ObjsPosDelay(0, 100)
		event.ObjsMove(0, -65.0, -16.86, 1002.55, 40)
		event.ObjsMotionDelay(0, 100)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsPosDelay(1, 110)
		event.ObjsMove(1, -85.0, -16.86, 1002.55, 40)
		event.ObjsMotionDelay(1, 110)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMotionDelay(1, 40)
		event.ObjsSetMotion(1, "立ち")
		event.SetFadeIn(30)
		at = 2
		helper_888ab2a3(30)
		event.SndSePlay(var0, 0)
		at = 3
		wait_objects(1)
		at = 4
		helper_888ab2a3(6)
		event.CmrsSetPos(-70.27, 35.0, 783.66)
		event.CmrsSetRef(-73.25, 38.33, 674.48)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "こまり目パチ")
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "おこり顔")
		event.EohSetTexAnim(1, 1, "おこり目パチ")
		event.SndSePlay(var0, 1)
		event.ObjsSetPos(0, -50.18, 3.08, 671.54)
		event.ObjsSetRot(0, 0.0, -2.9, 0)
		event.ObjsResetDaPosition(0)
		event.ObjsSetPos(1, -96.49, 3.79, 674.91)
		event.ObjsSetRot(1, 0.0, 2.78, 0.0)
		event.ObjsResetDaPosition(1)
		at = 5
		helper_4116e6bb(4100010)
		at = 6
		helper_4116e6bb(4100020)
		at = 7
		helper_4116e6bb(4100030)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMotionDelay(1, 60)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsMove(1, -73.19, 2.27, 776.78, 60, 1)
		event.ObjsRotation(1, 0.0, 0.26, 0.0, 10)
		at = 8
		helper_888ab2a3(10)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMotionDelay(0, 50)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, -63.51, 2.44, 748.06, 50, 1)
		event.ObjsRotation(0, 0.0, -0.14, 0.0, 10)
		at = 9
		helper_888ab2a3(20)
		event.SetFadeOut(30)
		at = 10
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			var4 = vm.f32(vector_z - vm.f32(3.1415927))
			helper_038a2e4d(30)
		end
		if at <= 2 then
			helper_238b5abc(1)
		end
		if at <= 3 then
			helper_038a2e4d(6)
		end
		if at <= 4 then
			helper_8cd371d7(4100010)
		end
		if at <= 5 then
			helper_8cd371d7(4100020)
		end
		if at <= 6 then
			helper_8cd371d7(4100030)
		end
		if at <= 7 then
			helper_038a2e4d(10)
		end
		if at <= 8 then
			helper_038a2e4d(20)
		end
		if at <= 9 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 11
	vm.entry(11)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.SndSeStop(var0, 1)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetMotion(1, "立ち", 4)
	event.EohSetRot(3, vector_x, vector_y, vector_z)
	event.EohSetPos(4, pos_x, pos_y, pos_z)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(5, 1)
	event.EohSetShow(6, 1)
	event.Finish()
end

--- Helper function.
local function helper_105d8()
	local var0: s32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local var3: f32 = 0
	local vector_x: f32 = 0
	local vector_y: f32 = 0
	local vector_z: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		var0 = event.SndLoadSound_3(8, "snd2/sp/sp_033.sound.json") or var0
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.EohSyncObj_3(1, "p06_s19", "s19_09-m1")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSyncObj_3(3, "p06_s19", "s19_10-m1")
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.EohSetPos(0, -75.0, -35.0, 1200.0)
		event.EohSetRot(0, 0.0, 3.1415927, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohResetDaPosition(0)
		event.EohSetFootSoundId(0, 7)
		event.CmrsInit()
		event.CmrsSetPos(-127.01131, -7.1499996, 911.04)
		event.CmrsSetRef(-62.911304, 39.29, 1129.9199)
		event.CmrsFadeInit()
		event.InitDramaScene()
		event.SetFadeIn(30)
		event.SndSePlay(var0, 1)
		do
			local out1, out2, out3 = event.EohGetRot(1)
			rot_x = out1 or rot_x
			rot_y = out2 or rot_y
			var3 = out3 or var3
		end
		do
			local out1, out2, out3 = event.CopyVector(rot_x, rot_y, var3)
			vector_x = out1 or vector_x
			vector_y = out2 or vector_y
			vector_z = out3 or vector_z
		end
		do
			local out1, out2, out3 = event.EohGetPos(3)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		var3 = vm.f32(vector_z - vm.f32(3.1415927))
		var3 = event.AngleLimit(var3) or var3
		event.ObjsRotation2(1, rot_x, rot_y, var3, 40, 0, 0.5)
		at = 2
		wait_objects(1)
		event.ObjsMove2(3, pos_x, pos_y + 80.0, pos_z, 32, 1, 0.5)
		at = 3
		helper_888ab2a3(20)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, -75.0, -35.0, 1055.0, 30)
		event.EohSetFootSoundId(0, 16)
		at = 4
		wait_objects(3)
		event.ObjsMove2(3, pos_x, pos_y, pos_z, 32, 0, 0.5)
		at = 5
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMotionDelay(0, 30)
		event.ObjsPosDelay(0, 30)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, -75.0, -25.0, 1015.0, 40)
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		at = 6
		wait_objects(3)
		event.EohSetFootSoundId(0, 0)
		event.ObjsRotation2(1, vector_x, vector_y, vector_z, 40, 0, 0.5)
		at = 7
		wait_objects(1)
	end, function(received: { any }): boolean
		if at <= 1 then
			var3 = vm.f32(vector_z - vm.f32(3.1415927))
			helper_238b5abc(1)
		end
		if at <= 2 then
			helper_038a2e4d(20)
		end
		if at <= 3 then
			helper_238b5abc(3)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_238b5abc(3)
		end
		if at <= 6 then
			helper_238b5abc(1)
		end
		return true
	end)
	at = 8
	vm.entry(8)
	event.CancelDramaScene()
	event.SndSeStop(var0, 1)
	at = 9
	vm.wait(9)
	event.EohSetRot(1, vector_x, vector_y, vector_z)
	event.EohSetPos(3, pos_x, pos_y, pos_z)
	event.EohSetShow(4, 1)
	event.EohSetShow(5, 1)
	helper_9dafbc83(-75.0, -10.0, 950.0, vm.f32(3.1415927))
	event.SetCameraPos(-75.0, 50.0, 1030.0)
	event.SetCameraRef(-75.0, 20.0, 950.0)
	event.ResetCamera(0)
	event.SetCrossfade(30)
	event.Finish()
end

--- Helper function.
local function helper_1ee30()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(420, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		event.StopBgm(0)
		event.LoadSound(4811)
		var0 = event.SndLoadSound_2(4811) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e420/")
		event.LoadMes(0, 5, "e420.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e420_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e420_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e420_paw.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e420_shigu.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.LoadChara(5, "mariometto_a.gltf", "info", 12)
		event.CharaActive(12)
		event.SetReference(11, "metto_null", 12)
		event.EohSyncChara(6, 12)
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 6)
		event.LoadChara(5, "e420_kanden.gltf", "info", 13)
		event.CharaActive(0, 13)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e400/e420/e420_mints.gltf", "info", 8)
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
			event.LoadMotion(5, "event/e400/e420/e420_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetPos(0, -50.18, 3.08, 671.54)
		event.EohSetRot(0, 0.0, -2.9, 0.0)
		event.EohSetMotion(0, "上向くL", 4)
		event.EohSetFootSoundId(0, 16)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "無表情")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, -96.49, 3.79, 674.91)
		event.EohSetRot(1, 0.0, 2.78, 0.0)
		event.EohSetMotion(1, "上向くL", 4)
		event.EohSetFootSoundId(1, 16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "無表情")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, -72.89, 2.34, 770.75)
		event.EohSetRot(2, 0.0, -3.02, 0.0)
		event.EohSetMotion(2, "立ち", 4)
		event.EohSetFootSoundId(2, 16)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "おこり目パチ")
		event.EohSetPos(3, -78.16, -9.08, 455.31)
		event.EohSetRot(3, 0.0, 0.0, 0.0)
		event.EohSetMotion(3, "立ち2", 4)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "赤目パチ")
		event.SetCharaPos(13, -78.16, -9.08, 455.31)
		event.SetCharaRot(13, 0.0, 0.0, 0.0)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.InitDramaScene()
		event.CmrsSetPos(-91.15, 8.06, 663.16)
		event.CmrsSetRef(-79.05, 47.63, 524.91)
		event.ObjsSetMotion(3, "感電", 6)
		event.ObjsNextMotion(3, "感電L", 4)
		event.SetFadeIn(30)
		event.SetMesOkuri(0, 0)
		event.StreamOpen3(1, 4200010)
		at = 2
		var2 = helper_f616ba9e(1)
		at = 3
		helper_888ab2a3(vm.i32(10 - var2))
		event.StreamPlay(1)
		at = 4
		helper_888ab2a3(vm.i32(30 - var2))
		at = 5
		wait_objects(3)
		event.FuncPointShow("", "e420_lg", 1)
		event.SndSePlay(var0, 4)
		event.CharaActive(1, 13)
		at = 6
		helper_888ab2a3(80)
		event.CharaActive(0, 13)
		event.StreamClose(1)
		event.SetMesOkuri(0, 1)
		event.FuncPointShow("", "e420_lg", 0)
		event.CmrsSetPos(-39.38, 84.75, 556.88)
		event.CmrsSetRef(-82.55, -1.03, 671.45)
		event.ObjsMove(2, -72.44, 3.87, 634.26, 40, 1)
		event.ObjsSetMotion(2, "上見走り", 4)
		event.ObjsMotionDelay(2, 40)
		event.ObjsSetMotion(2, "上見立ち")
		at = 7
		helper_4116e6bb(4200020)
		at = 8
		wait_objects(2)
		event.CmrsSetPos(-81.13, -20.11, 556.35)
		event.CmrsSetRef(-83.71, 9.43, 543.03)
		event.SndSeStop(var0, 4)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "赤目～赤目とじ")
		event.ObjsSetMotion(3, "メット落ちる", 6)
		event.ObjsNextMotion(3, "倒れる", 6)
		event.ObjsMotionWait(3)
		event.ObjsSeDelay(3, 60)
		event.ObjsSePlay(3, var0, 6)
		event.ObjsMove2(6, -75.71, -140.18, 221.57, 30, 1, 1.0)
		event.ObjsRotation2(6, 0.0, 0.0, 1.8, 30, 0, 1.0)
		event.ObjsSeDelay(6, 50)
		event.ObjsSePlay(6, var0, 5)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(2, "立ち", 4)
		at = 9
		helper_888ab2a3(60)
		event.CharaActive(0, 12)
		at = 10
		wait_objects(3)
		event.CmrsSetPos(-266.34, 202.78, 745.86)
		event.CmrsSetRef(-86.65, 17.8, 537.9)
		event.CmrsSetPos(-77.85, 7.32, 623.69)
		event.CmrsSetRef(-79.23, 12.59, 599.39)
		event.CmrsQuake(0.0, 2.0, 0.0, 25)
		at = 11
		helper_888ab2a3(25)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "苦痛目とじ")
		event.ObjsSetMotion(3, "ぐったり", 6)
		event.CmrsSetPos(-266.34, 202.78, 745.86)
		event.CmrsSetRef(-86.65, 17.8, 537.9)
		at = 12
		helper_4116e6bb(4200030)
		event.ObjsMove(2, -49.93, 4.12, 578.82, 30, 1)
		event.ObjsRotation(2, 0.0, 2.78, 0.0, 10)
		event.ObjsSetMotion(2, "走り")
		event.ObjsMotionDelay(2, 30)
		event.ObjsSetMotion(2, "立ち")
		at = 13
		helper_4116e6bb(4200040)
		at = 14
		wait_objects(2)
		event.CmrsInit()
		event.CmrsSetPos(-126.48, 23.27, 645.95)
		event.CmrsSetRef(-48.09, 21.64, 692.16)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.SetPakuAnim(1, "わらい口パク")
		at = 15
		helper_4116e6bb(4200050)
		event.SetPakuAnim(0, "通常口パク")
		at = 16
		helper_4116e6bb(4200060)
		event.ObjsMove(0, -73.29, 4.2, 606.39, 40, 1)
		event.ObjsRotDelay(0, 30)
		event.ObjsRotation(0, 0.0, 2.9, 0.0, 10)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		at = 17
		helper_888ab2a3(8)
		event.ObjsMove(1, -89.41, 4.65, 588.63, 40, 1)
		event.ObjsRotDelay(1, 30)
		event.ObjsRotation(1, 0.0, 2.18, 0.0, 10)
		event.ObjsSetMotion(1, "走り")
		event.ObjsMotionDelay(1, 40)
		event.ObjsSetMotion(1, "立ち")
		at = 18
		helper_888ab2a3(30)
		event.CmrsSetPos(-23.86, 87.25, 654.66)
		event.CmrsSetRef(-59.69, 21.64, 584.77)
		event.EohSetTexAnim(3, 0)
		event.EohSetTexAnim(3, 1, "半目パチ")
		at = 19
		wait_objects(1)
		at = 20
		helper_4116e6bb(4200070)
		at = 21
		helper_4116e6bb(4200080)
		at = 22
		helper_4116e6bb(4200090)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		at = 23
		helper_4116e6bb(4200100)
		event.SetFadeOut(30)
		at = 24
		helper_888ab2a3(30)
	end, function(received: { any }): boolean
		if at == 2 then
			var2 = received[1] :: number
		end
		if at <= 1 then
			var2 = helper_523109b8(1)
		end
		if at <= 2 then
			helper_038a2e4d(vm.i32(10 - var2))
		end
		if at <= 3 then
			helper_038a2e4d(vm.i32(30 - var2))
		end
		if at <= 4 then
			helper_238b5abc(3)
		end
		if at <= 5 then
			helper_038a2e4d(80)
		end
		if at <= 6 then
			helper_8cd371d7(4200020)
		end
		if at <= 7 then
			helper_238b5abc(2)
		end
		if at <= 8 then
			helper_038a2e4d(60)
		end
		if at <= 9 then
			helper_238b5abc(3)
		end
		if at <= 10 then
			helper_038a2e4d(25)
		end
		if at <= 11 then
			helper_8cd371d7(4200030)
		end
		if at <= 12 then
			helper_8cd371d7(4200040)
		end
		if at <= 13 then
			helper_238b5abc(2)
		end
		if at <= 14 then
			helper_8cd371d7(4200050)
		end
		if at <= 15 then
			helper_8cd371d7(4200060)
		end
		if at <= 16 then
			helper_038a2e4d(8)
		end
		if at <= 17 then
			helper_038a2e4d(30)
		end
		if at <= 18 then
			helper_238b5abc(1)
		end
		if at <= 19 then
			helper_8cd371d7(4200070)
		end
		if at <= 20 then
			helper_8cd371d7(4200080)
		end
		if at <= 21 then
			helper_8cd371d7(4200090)
		end
		if at <= 22 then
			helper_8cd371d7(4200100)
		end
		if at <= 23 then
			helper_038a2e4d(30)
		end
		return true
	end)
	at = 25
	vm.entry(25)
	event.CancelDramaScene()
	event.FuncPointShow("", "e420_lg", 0)
	event.SndSeStop(var0, 4)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetMotion(1, "立ち", 4)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	event.EohSetShow(4, 1)
	event.EohSetShow(5, 1)
	event.Finish()
end

--- Helper function.
local function helper_11850(arg0: s32)
	local var1: any = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		event.SetMesQuestionGyou(0, 0)
		event.SetMesWindowMode(0, 5)
		event.SetMesDrawspeed(0, 1)
		if arg0 == 1 then
			event.MesMake_2(0, "次のフロアへ進みますか？")
		else
			event.MesMake_2(0, "前のフロアへ戻りますか？")
		end
		at = 1
		var1 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
		if var1 == 0 then
			event.SetFadeOut(30)
			at = 2
			helper_888ab2a3(30)
			return 1
		else
			event.Finish()
			return 0
		end
	end, function(received: { any })
		if at <= 2 then
			if at == 1 then
				var1 = received[1] :: number
			end
			if at <= 1 then
				helper_038a2e4d(30)
			end
			return 1
		end
		return nil
	end)
end

--- Helper function.
local function helper_24100()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	event.ActchrSetDefMotion(0, 4)
	event.SetFadeOut(30)
	helper_888ab2a3(30)
	event.DngPause(1, 1)
	event.DelMonster(-1)
	helper_888ab2a3(30)
	event.Initialize()
	var0 = event.SndLoadSound_3(5, "snd2/mon/en_360.sound.json") or var0
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetStatusbarShow(0, 1.0)
	event.LoadChara(5, "dungeon/monster/b07a.gltf", "b07a", 8)
	event.CharaActive(1, 8)
	event.EohSyncChara(0, 8)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.SetFadeIn(15)
	event.SetCameraPos(-50.62, 42.66, 812.75)
	event.SetCameraRef(-50.82, 71.75, 656.03)
	event.CharaActive(0, 0)
	event.SndSePlay(var0, 24)
	event.ObjsSetPos(0, -50.62, 4.34, 553.77)
	event.ObjsSetRot(0, 0.0, 0.02, 0.0)
	event.ObjsSetMotion(0, "死に", 6)
	event.ObjsMotionWait(0)
	wait_objects(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no ~= 2 then
		event.SetCameraPos(-21.21, 14.5, 728.16)
		event.SetCameraRef(-33.94, 17.9, 751.25)
	else
		event.SetCameraPos(8.06, 23.77, 675.07)
		event.SetCameraRef(-39.51, 29.49, 761.36)
	end
	event.CharaActive(1, 0)
	event.SetCharaPos(0, -40.07, 1.76, 766.47)
	event.SetCharaRot(0, 0.0, -3.12, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.DeleteChara(8)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local flag_3: s32 = 0
	local var3: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		event_99()
		flag = event.GetFlag(400) or flag
		flag_2 = event.GetFlag(408) or flag_2
		flag_3 = event.GetFlag(420) or flag_3
		if flag == 1 then
			if flag_2 == 0 then
				at = 2
				helper_11c1c()
				event.GotoEdit(75, 500)
				return
			end
			if flag_3 == 0 then
				var3 = event.GetSavedataEtc(2) or var3
				if var3 ~= 0 then
					at = 3
					helper_3d13e6aa(1)
					at = 4
					helper_1bfac()
					event.SetBitCtrl(1, 1)
					return
				else
					at = 5
					helper_199cc()
					event.SoundAllStop()
					at = 6
					helper_888ab2a3(6)
					event.LoadBgm(18)
					event.LoadSound(4601)
					event.PlayBgm(0)
					event.LoadScript("d04/d04.stb", 1000)
					return
				end
			else
				at = 7
				helper_105d8()
			end
		else
			at = 8
			helper_105d8()
		end
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_11c1c()
				return vm.continue_with(function()
					event.GotoEdit(75, 500)
					return
				end)
			end
			return 0
		end
		if at <= 4 then
			if at <= 3 then
				at = 4
				helper_1bfac()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 1)
					return
				end)
			end
			return 0
		end
		if at <= 6 then
			if at <= 5 then
				helper_038a2e4d(6)
			end
			return 0
		end
		if at <= 8 then
			if at <= 7 then
				at = 8
				helper_105d8()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_11c1c

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	event.SetFadeIn(30)
	event.Initialize()
	vm.wait(1)
	event.SetCharaPos(0, -29.1, 1.4, 787.9)
	event.DngPause(17, 0)
	event.LoadMonsterFile(516, 1)
	event.LoadMonsterFile(1001, 0)
	event.AutoSetMonster(516, -50.0, -46.69, 202.57, 0.0, 0.0, 0.0)
	event.GetCharaPos(0)
	event.Finish()
end

--- Event 152, which map data, a script or the engine runs by number.
function script.event_152()
	vm.wait(1)
	helper_c956b4a2(32)
end

--- Event 153, which map data, a script or the engine runs by number.
function script.event_153()
	local at: number = 0
	return vm.guard(function()
		event.DngPause(1, 1)
		event.SetFadeOut(0)
		event.DngPause(16, 1)
		at = 1
		helper_888ab2a3(30)
		event.SetFadeIn(30)
		event.DelMonster(-1)
		at = 2
		helper_1ee30()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_1ee30()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 154, which map data, a script or the engine runs by number.
function script.event_154()
	event.SetCameraRef(-33.22, 3.88, 763.5)
	vm.wait(1)
	helper_c956b4a2(32)
end

--- Event 155, which map data, a script or the engine runs by number.
script.event_155 = helper_1bfac

--- Event 160, which map data, a script or the engine runs by number.
function script.event_160()
	vm.wait(1)
	helper_c956b4a2(32)
end

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	event.Initialize()
	var0 = event.GetBitCtrl(1) or var0
	if var0 == 1 then
		event.DngPause(9, 1)
		event.ActchrSetDefMotion(0)
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "この魚をシグーに食べさせないと！！")
		helper_75684dd8(0, -1, 5, 0, 0)
		event.DngPause(9, 0)
		return
	end
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.SetMotion(0, "立ち")
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
	if helper_11850(0) ~= 0 then
		event.LoadScript("d04/d04.stb", 1000)
	end
end

--- Event 201, which map data, a script or the engine runs by number.
function script.event_201()
	local var0: s32 = 0
	local active_chr_no: s32 = 0
	local stage_id: s32 = 0
	local var3: s32 = 0
	local argc: s32 = 0
	event.Initialize()
	var0 = event.GetBitCtrl(1) or var0
	if var0 == 1 then
		event.DngPause(9, 1)
		event.ActchrSetDefMotion(0)
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "この魚をシグーに食べさせないと！！")
		helper_75684dd8(0, -1, 5, 0, 0)
		event.DngPause(9, 0)
		return
	end
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.SetMotion(0, "立ち")
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
	if helper_11850(1) ~= 0 then
		stage_id = event.DngGetStageId() or stage_id
		var3 = event.DngGetFloorId() or var3
		argc = event.GetNextFloor(var3, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var3, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		event.StopBgm(0)
		event.StopEnvBgm()
		event.SndStopSrc()
		helper_888ab2a3(6)
		event.LoadBgm(18)
		event.LoadSound(4601)
		event.PlayBgm(0)
		event.LoadScript("d04/d04.stb", 1000)
	end
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetFadeOut(0)
		at = 1
		vm.wait(1)
		at = 2
		vm.wait(2)
		event.DelMonster(-1)
		event.SetSavedataEtc(4)
		event.SetBitCtrl(1, 0)
		at = 3
		helper_3d13e6aa(0)
		at = 4
		helper_1ee30()
		event.BgmLoadCancel()
		event.GotoEdit(75, 100)
		at = 5
		vm.wait(5)
		return
	end, function(received: { any })
		if at <= 5 then
			if at <= 2 then
				helper_4a9b8bc5(0)
			end
			if at <= 3 then
				at = 4
				helper_1ee30()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.GotoEdit(75, 100)
					at = 5
					vm.wait(5)
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
	local var0: s32 = 0
	local var1: s32 = 0
	local argc: s32 = 0
	local battle_bgm_vol: s32 = 0
	local active_chr_no: s32 = 0
	local block: s32 = 0
	local debug_flag: s32 = 0
	local load_no: s32 = 0
	local boss_map: s32 = 0
	helper_24100()
	event.DngPause(1, 0)
	var0 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	event.DngPause(16384, 1)
	event.GetActiveBgmStatus(-1)
	var1 = event.GetEventInfoSndid(4) or var1
	argc = event.GetSeStatus(var1, 0) or argc
	battle_bgm_vol = event.GetBtlBgmVol() or battle_bgm_vol
	event.SndSeStop(var1, 0)
	event.StopBgm(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	event.SetLoadbgFile_2("snd2/bgm/bg_060.sound.json", "textures/dungeon/image/gameover.json")
	helper_888ab2a3(30)
	helper_479dc9e9()
	event.LoadBgmPack(60)
	event.PlayBgm(0)
	helper_888ab2a3(30)
	event.DngPause(1, 1)
	event.DngCollisionAllClr()
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(
		0,
		"シグーを殺してしまった・・・\n未来を元に戻すには、シグーの力が\n必要だったのに・・・"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	block = event.LoadImg_4(5, "textures/dungeon/image/gameover.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "gameover1", block)
	event.SpriteSetColor(0, 128, 128, 128, 128)
	event.SpriteSetUvsize(0, 0, 0, 576, 128)
	event.SpriteSetPutsize(0, 576, 128)
	event.SpriteSetPos(0, -320, 208)
	event.SpriteSetDraw(0, 1)
	event.EohSyncSprite(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsMove(0, 288, 208, 0.0, 20)
	helper_888ab2a3(30)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "gameover1", block)
	event.SpriteSetColor(1, 128, 128, 128, 0)
	event.SpriteSetUvsize(1, 0, 128, 576, 64)
	event.SpriteSetPutsize(1, 576, 64)
	event.SpriteSetPos(1, 256, 208)
	event.SpriteSetDraw(1, 1)
	event.EohSyncSprite(1, 1)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetColor(1, 128, 128, 128, 128, 120)
	helper_888ab2a3(120)
	while true do
		if helper_581cb30c(0) ~= 0 then
			break
		else
			vm.wait(8)
		end
	end
	debug_flag = event.GetDebugFlag() or debug_flag
	debug_flag = 0
	if debug_flag == 1 then
		event.DngDebugCommand(0)
		event.ActchrSetDefMotion(0, 4)
	else
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		if active_chr_no == 2 then
			event.EsmClear()
		end
		event.StopBgm(0)
		event.SpriteSetDraw(0, 0)
		event.SpriteSetDraw(1, 0)
		event.DelImg(0)
		if var0 == 1 then
			event.AddHpRate(1.0, 0)
			event.AddWhp(0, 999)
			event.AddWhp(1, 999)
			event.DngRunEvent(-1)
			event.DelMonster(-1)
			event.DngPause(1, 0)
			event.Finish()
			return 1
		else
			event.SetExitFlag(1)
			event.Finish()
			return 0
		end
	end
	event.StopBgm(0)
	helper_888ab2a3(4)
	load_no = event.GetBgmStatusNowNo() or load_no
	event.LoadBgm(load_no)
	event.SetActiveBgmStatus(-1)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.DelImg(0)
	boss_map = event.DngCheckBossMap() or boss_map
	if boss_map ~= 1 then
		if argc == 1 then
			event.SndSePlay(var1, 0)
			event.SndSetSeVol(var1, 0, battle_bgm_vol)
		end
	end
	event.SetCameraCtrl(1)
	event.SetStatusbarShow(1, 1.0)
	if debug_flag ~= 1 then
		event.SetFadeIn(30)
	end
	event.DngPause(16385, 0)
	event.Finish()
	return 0
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	event.Initialize()
	event.SetMotion(0, "だめだめ")
	event.DngPause(3, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"[(!)]シグーにダメージを与えると\n   怒ってこちらを威嚇して来ます。<page>   その時、大きく口を開けているので、\n   電気の魚を投げ入れるチャンスです！"
	)
	helper_75684dd8(0, -1, 5, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(3, 0)
	event.SetMotion(0, "立ち")
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		flag = event.GetFlag(416) or flag
		flag_2 = event.GetFlag(420) or flag_2
		if flag ~= 0 and flag_2 == 0 then
			var2 = vm.float_bits(event.GetRand(100)) or var2
			if var2 < 50 then
				at = 1
				helper_a9eaf20e(0, 8610060)
			else
				at = 2
				helper_a9eaf20e(0, 8610070)
			end
			return
		end
		at = 3
		helper_f9968159(0)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_2609f66b(0, 8610070)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		return nil
	end)
end

--- Event 14080, which map data, a script or the engine runs by number.
function script.event_14080()
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(0)
		event.SetFlag(400, 1)
		event.SetFlag(402, 1)
		event.SetFlag(404, 1)
		event.SetFlag(406, 1)
		event.SetFlag(408, 0)
		at = 1
		event_99()
		at = 2
		helper_11c1c()
		event.ResetEventTrg()
		event.GotoEdit(75, 500)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_11c1c()
				return vm.continue_with(function()
					event.ResetEventTrg()
					event.GotoEdit(75, 500)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 14100, which map data, a script or the engine runs by number.
function script.event_14100()
	local at: number = 0
	return vm.guard(function()
		event.SetFlag(400, 1)
		event.SetFlag(402, 1)
		event.SetFlag(404, 1)
		event.SetFlag(406, 1)
		event.SetFlag(408, 1)
		event.SetFlag(410, 0)
		at = 1
		event_99()
		at = 2
		helper_199cc()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_199cc()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 14160, which map data, a script or the engine runs by number.
function script.event_14160()
	local at: number = 0
	return vm.guard(function()
		at = 1
		event_99()
		event.SetFlag(400, 1)
		event.SetFlag(402, 1)
		event.SetFlag(404, 1)
		event.SetFlag(406, 1)
		event.SetFlag(408, 1)
		at = 2
		helper_1bfac()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_1bfac()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 14200, which map data, a script or the engine runs by number.
function script.event_14200()
	local at: number = 0
	return vm.guard(function()
		event.SetFlag(400, 1)
		event.SetFlag(402, 1)
		event.SetFlag(404, 1)
		event.SetFlag(406, 1)
		event.SetFlag(408, 1)
		event.SetFlag(416, 1)
		at = 1
		event_99()
		at = 2
		helper_1ee30()
		event.ResetEventTrg()
		event.BgmLoadCancel()
		event.GotoEdit(75, 100)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_1ee30()
				return vm.continue_with(function()
					event.ResetEventTrg()
					event.BgmLoadCancel()
					event.GotoEdit(75, 100)
					at = 3
					vm.wait(3)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

return script
