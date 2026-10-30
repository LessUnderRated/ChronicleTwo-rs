--!strict
-- map/s/s06/s06.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_2867bf21 = require("@lib/event/helper_2867bf21")
local helper_3a00c76d = require("@lib/event/helper_3a00c76d")
local helper_3bce1a2c = require("@lib/event/helper_3bce1a2c")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_46574a08 = require("@lib/event/helper_46574a08")
local helper_4a9b8bc5 = require("@lib/event/helper_4a9b8bc5")
local helper_68186cf4 = require("@lib/event/helper_68186cf4")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_86ac6534 = require("@lib/event/helper_86ac6534")
local helper_886b50d7 = require("@lib/event/helper_886b50d7")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_bfb26927 = require("@lib/event/helper_bfb26927")
local helper_c32c9b11 = require("@lib/event/helper_c32c9b11")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_fab3eef4 = require("@lib/event/helper_fab3eef4")
local helper_fc872710 = require("@lib/event/helper_fc872710")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_207bc()
	local var0: s32 = 0
	event.Initialize()
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_040.sound.json") or var0
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetCameraPos(133.95, 349.85, 995.49)
	event.SetCameraRef(10.87, 287.26, 1174.06)
	event.EohSyncChara(0, 0)
	event.EohSetFootSoundId(0, 3)
	event.CharaActive(1, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, 3.0, 263.17, 1196.78)
	event.ObjsSetRot(0, 0.0, -3.08, 0.0)
	event.ObjsSetMotion(0, "立ち", 4)
	event.EohSyncObj_3(10, "p08_s06", "s06_08-m1")
	event.EohSetShow(10, 1)
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.ObjsSetPos(10, 2.90684, 312.375, 1188.04)
	event.ObjsMove(10, 2.90684, 412.375, 1188.04, 30)
	event.SndSePlay(var0, 0)
	event.SetFadeIn(30)
	helper_888ab2a3(15)
	event.ObjsSetMotion(0, "走り")
	event.ObjsMotionDelay(0, 30)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsMove(0, 3.0, 263.17, 1131.27, 30)
	wait_objects(0)
	wait_objects(10)
	event.SndSePlay(var0, 1)
	event.ObjsJump(10, 2.90684, 312.375, 1188.04, -0.2, 10)
	event.ObjsJump(10, 2.90684, 312.375, 1188.04, -0.2, 8)
	event.ObjsJump(10, 2.90684, 312.375, 1188.04, -0.2, 5)
	helper_888ab2a3(40)
	event.SetStatusbarShow(1, 0.033333335)
	event.SetCharaPos(0, 3.0, 263.17, 1131.27)
	event.EohSetPos(10, 2.90684, 312.375, 1188.04)
	event.SetCameraRef(3.0, 293.17, 1131.27)
	event.SetCameraPos(3.0, 303.17, 1011.27)
	event.ResetCamera(0)
	event.Finish()
end

--- The event run when the edit analysis found changes after a house door step or a Georama mode change.
local function edit_analyze_changed()
	local flag: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local active_chr_no: s32 = 0
	local var5: any = 0
	local stage_id: s32 = 0
	local var7: s32 = 0
	local argc: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	event.ActchrSetDefMotion(0)
	flag = event.GetFlag(7) or flag
	if flag == 0 then
		event.Initialize()
		event.DngPause(1, 1)
		var2 = event.JoinPartyMember(2) or var2
		if var2 ~= 0 then
			var1 = event.GetMesWindowMode(0) or var1
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			event.MesMake_2(0, "今はそれどころじゃない！！")
			helper_75684dd8(0, -1, 5, 0, 0)
			event.SetMesWindowMode(0, var1)
			vm.wait(2)
			event.DngPause(1, 0)
			event.Finish()
			return
		else
			event.SetMotion(0, "立ち")
			var1 = event.GetMesWindowMode(0) or var1
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			flag = event.GetFlag(104) or flag
			if flag == 1 then
				event.MesMake_2(0, "扉は開きそうにない。\nいったん上に戻ろう！")
			else
				event.MesMake_2(0, "今はそれどころじゃない！！")
			end
			helper_75684dd8(0, -1, 5, 0, 0)
			event.SetMesWindowMode(0, var1)
			vm.wait(4)
			event.DngPause(1, 0)
			event.Finish()
			return
		end
	end
	event.Initialize()
	event.SetMotion(0, "立ち")
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.MesMake_2(0, "ライドポッドから降りないと先へ進めそうにない。")
		helper_75684dd8(0, -1, 8, 256, 208)
		event.Finish()
		return
	end
	if active_chr_no == 3 then
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		helper_75684dd8(0, 21, 8, 256, 208)
		event.Finish()
		return
	end
	event.SetMesWindowMode(0, 5)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(0, "次のフロアへ進みますか？")
	var5 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
	if var5 == 0 then
		event.SetBitCtrl(1, 0)
		stage_id = event.DngGetStageId() or stage_id
		var7 = event.DngGetFloorId() or var7
		argc = event.GetNextFloor(var7, 0) or argc
		event.DngSetFloorId(argc)
		event.SetFloorInfo(stage_id, var7, 5, 2)
		event.SetFloorInfo(stage_id, argc, 5, 1)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		flag = event.GetFlag(8) or flag
		if flag == 0 then
			event.StopBgm(0)
			event.SetFlag(8, 1)
			event.BgmLoadCancel()
			event.GotoEdit(12, 540)
			vm.wait(9)
			return
		end
		event.BgmLoadCancel()
		event.GotoDng(0, 5, 1000)
		vm.wait(10)
	end
	event.Finish()
end

--- Helper function.
local function helper_16510(se_id: s32)
	event.SetCameraPos(-480.46, 80.16, -12.91)
	event.SetCameraRef(-259.64, 146.91, -128.27)
	event.SetCharaPos(0, -409.26, 50.0, -69.12)
	event.SetCharaRot(0, 0.0, 1.41, 0.0)
	event.SetCharaPos(9, -409.26, 50.0, -69.12)
	event.SetCharaRot(9, 0.0, 1.41, 0.0)
	event.CharaActive(1, 11)
	event.ObjsSetPos(3, -302.17, 113.58, -60.02)
	event.ObjsSetRot(3, 0.0, -1.56, 0.0)
	event.ObjsSetMotion(0, "上見L", 6)
	event.ObjsSetMotion(1, "上見L", 6)
	wait_objects(0)
	wait_objects(1)
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(3, "ウッキー", 4)
	event.SetPakuAnim(3, "おこり口パク")
	helper_4116e6bb(1080020)
	event.ResetPakuAnim()
	wait_objects(3)
	helper_888ab2a3(30)
	event.CmrsMove2(-491.11, 58.84, -65.59, -180.4, 265.78, -14.82, 75, 2, 0.4)
	event.SndSePlay(se_id, 3)
	event.ObjsInitPas(3)
	event.ObjsSetPasFrm(3, 90)
	event.ObjsAddPas(3, -302.17, 113.58, -60.02)
	event.ObjsAddPas(3, -273.27, 162.52, -91.31)
	event.ObjsAddPas(3, -277.61, 214.43, -63.38)
	event.ObjsAddPas(3, -270.68, 254.99, -10.75)
	event.ObjsAddPas(3, -258.74, 289.17, 32.34)
	event.ObjsAddPas(3, -264.84, 267.38, 91.29)
	event.ObjsAddPas(3, -274.53, 223.84, 104.42)
	event.ObjsAddPas(3, -263.59, 171.46, 62.02)
	event.ObjsAddPas(3, -241.79, 175.34, 11.82)
	event.ObjsAddPas(3, -235.1, 208.28, -15.33)
	event.ObjsAddPas(3, -215.1, 272.95, -30.99)
	event.ObjsAddPas(3, -206.66, 335.24, -34.05)
	event.ObjsAddPas(3, -186.98, 388.24, -30.99)
	event.ObjsAddPas(3, -161.91, 455.92, -27.1)
	event.ObjsStartPas(3)
	for var1 = 0, 89 do
		event.ObjsSetRot(3, 0.0, -1.71, 0.0)
		vm.wait(6)
	end
	wait_objects(3)
	wait_camera()
	event.SndSeStop(se_id, 2)
end

--- Helper function.
local function helper_17298(arg0: any)
	event.CmrsSetPos(-350.38, 95.45, -59.38)
	event.CmrsSetRef(-418.26, 93.83, -69.21)
	event.ObjsSetMotion(0, "上見戻り", 6, 0.06)
	event.ObjsSetMotion(1, "上見戻り", 6, 0.06)
	event.ObjsMotionWait(0)
	event.ObjsMotionWait(1)
	wait_objects(0)
	wait_objects(1)
	event.ObjsResetMotion(0)
	event.ObjsResetMotion(1)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4, -1.0)
	event.ObjsSetMotion(1, "立ち（スティーブ）", 4, -1.0)
	event.CmrsMove2(-376.98, 95.45, -63.23, -418.26, 93.83, -69.21, 150, 2, 0.4)
	helper_4116e6bb(1080030)
	helper_4116e6bb(1080031)
	helper_4116e6bb(1080032)
	wait_camera()
end

--- Helper function.
local function helper_1776c(arg0: any)
	local var1: s32 = 0
	event.CmrsSetPos(-276.53, 81.94, 10.07)
	event.CmrsSetRef(31.75, 72.44, -9.51)
	event.ObjsSetPos(0, -165.91, 50.0, 2.54)
	event.ObjsSetRot(0, 0.0, 1.65, 0.0)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4)
	event.ObjsSetPos(1, -165.91, 50.0, 2.54)
	event.ObjsSetRot(1, 0.0, 1.65, 0.0)
	event.ObjsSetMotion(1, "立ち（スティーブ）", 4)
	helper_888ab2a3(30)
	var1 = event.GetMesWindowMode() or var1
	event.SetMesWindowMode(0, 8)
	event.MesMake_2(
		0,
		"[(!)]ライドポッドはメインメニューの「キャラクター」から\n   「ライドポッド」を選んで乗り降りすることができます。\n   降りる場合、ユリスを選択してください。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]ライドポッドの燃料はスターブルに\n   補給してもらうことができます。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]また、ＥＸＰをためて、スターブルに\n   コアをパワーアップしてもらうことで、\n   装着できるパーツのキャパシティが増えます。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]キャパシティを増やし、パーツをつけかえて\n   オリジナルのライドポッドをつくりだしてください。"
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesWindowMode(0, var1)
end

--- Helper function.
local function helper_17ef8()
	local var0: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(108, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		var0 = event.SndLoadSound_2(1819) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		event.CmrsInit()
		event.SetCameraPos(6.02, 94.24, 399.23)
		event.SetCameraRef(-4.96, 118.28, 117.71)
		event.LoadMotion(5, "event/e100/e108/e108_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetCharaPos(0, 0.0, 50.0, 0.0)
		event.SetCharaRot(0, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_steve.gltf", "info", 9)
		event.CharaActive(1, 9)
		event.EohSyncChara(1, 9)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.SetCharaPos(9, 0.0, 50.0, 0.0)
		event.SetCharaRot(9, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_erephant.gltf", "info", 10)
		event.CharaActive(0, 10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SetCharaPos(10, 0.0, 50.0, 0.0)
		event.SetCharaRot(10, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_polcurse.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SetCharaPos(9, 0.0, 50.0, 0.0)
		event.SetCharaRot(9, 0.0, 0.0, 0.0)
		event.EohSyncChara(10, 1)
		event.EohSetShow(10, 0)
		event.EohSyncChara(11, 2)
		event.EohSetShow(11, 0)
		event.LoadMes(0, 5, "event/e100/e108/e108a.txt")
		event.StopBgm(0)
		event.InitDramaScene()
		helper_46574a08(var0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "おこり顔")
		event.ObjsTexAnime(3, 1, "通常目パチ")
		helper_fc872710(var0)
		helper_3bce1a2c(var0)
		helper_16510(var0)
		helper_17298(var0)
		helper_1776c(var0)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(9)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.SndSeStop(var0, 2)
	event.CharaActive(1, 0)
	event.EohSyncChara(10, 1)
	event.EohSetShow(10, 0)
	event.EohSyncChara(11, 2)
	event.EohSetShow(11, 0)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.SetCameraPos(-276.53, 81.94, 10.07)
	event.SetCameraRef(31.75, 72.44, -9.51)
	event.ResetCamera(0)
	event.DngSetupMainUnit(2)
	event.SetActiveChrNo(2)
	event.SetCharaPos(0, -167.59, 50.0, 2.86)
	event.SetCharaRot(0, 0.0, 1.77, 0.0)
	event.SetStatusbarShow(1)
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(15)
	event.PlayBgm(0)
	event.ResetCamera(1, 0.0, 20.0)
	event.SetFadeIn(30)
	vm.wait(11)
	event.Finish()
end

--- Helper function.
local function helper_19c6c(se_id: s32)
	event.CmrsSetPos(-408.29, 60.12, 94.13)
	event.CmrsSetRef(-475.86, 71.34, 81.15)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -492.64, 50.09, 76.79)
	event.ObjsSetRot(0, 0.0, 1.2, 0.0)
	event.ObjsSetMotion(0, "プルプル", 4, -1.0, 1)
	event.CharaActive(1, 9)
	event.ObjsSetPos(1, -492.64, 50.09, 76.79)
	event.ObjsSetRot(1, 0.0, 1.2, 0.0)
	event.ObjsSetMotion(1, "プルプル", 4)
	event.SndSePlay(se_id, 0)
	helper_888ab2a3(50)
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(0, "ジャンプ", 6, 0.4)
	event.ObjsSetMotion(1, "ジャンプ", 6, 0.4)
	event.ObjsPosDelay(0, 3)
	event.ObjsPosDelay(1, 3)
	event.ObjsJump(0, -739.96, 133.89, -9.49, -0.28, 33)
	event.ObjsJump(1, -739.96, 133.89, -9.49, -0.28, 33)
	event.ObjsMotionWait(0)
	event.ObjsMotionWait(1)
	event.CmrsMove2(-408.29, 60.12, 94.13, -709.98, 167.81, 0.97, 25, 0, 0.4)
	wait_objects(0)
	wait_objects(1)
	event.SndSeStop(se_id, 0)
end

--- Helper function.
local function helper_1abe8()
	local var0: s32 = 0
	local var1: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(108, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetStatusbarShow(0, 1.0)
		var0 = event.SndLoadSound_2(1822) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		event.CmrsInit()
		event.SetCameraPos(6.02, 94.24, 399.23)
		event.SetCameraRef(-4.96, 118.28, 117.71)
		event.LoadMotion(5, "event/e100/e108/e108_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetCharaPos(0, 0.0, 50.0, 0.0)
		event.SetCharaRot(0, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_steve.gltf", "info", 9)
		event.CharaActive(1, 9)
		event.EohSyncChara(1, 9)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.SetCharaPos(9, 0.0, 50.0, 0.0)
		event.SetCharaRot(9, 0.0, 0.0, 0.0)
		event.EohSetSoundId(1, var1)
		event.LoadChara(5, "event/e100/e108/e108_erephant.gltf", "info", 10)
		event.CharaActive(0, 10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SetCharaPos(10, 0.0, 50.0, 0.0)
		event.SetCharaRot(10, 0.0, 0.0, 0.0)
		event.LoadChara(5, "event/e100/e108/e108_polcurse.gltf", "info", 11)
		event.CharaActive(0, 11)
		event.EohSyncChara(3, 11)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SetCharaPos(11, 0.0, 50.0, 0.0)
		event.SetCharaRot(11, 0.0, 0.0, 0.0)
		event.SetTexAnim(11, 0, "口パク")
		event.EohSyncChara(10, 1)
		event.EohSetShow(10, 0)
		event.EohSyncChara(11, 2)
		event.EohSetShow(11, 0)
		event.LoadMes(0, 5, "event/e100/e108/e108b.txt")
		event.StopBgm(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(3, 0)
		event.ObjsTexAnime(3, 1, "たかわらい顔")
		event.EohSetSoundId(1, var0)
		event.InitDramaScene()
		helper_886b50d7(var0)
		helper_c32c9b11(var0)
		helper_19c6c(var0)
		helper_bfb26927(var0)
		helper_86ac6534(var0)
		helper_86ac6534(var0)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(7)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_207bc

--- Event 151, which map data, a script or the engine runs by number.
function script.event_151()
	event.SetCharaPos(0, -240.84, 50.0, -5.32)
	event.SetCharaRot(0, 0.0, 1.6, 0.0)
	vm.wait(1)
	helper_c956b4a2(32)
end

--- Event 300, which map data, a script or the engine runs by number.
script.event_300 = edit_analyze_changed

script.edit_analyze_changed = edit_analyze_changed

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local flag: s32 = 0
	local flag_2: s32 = 0
	local var2: s32 = 0
	helper_fab3eef4()
	flag = event.GetFlag(7) or flag
	if flag == 0 then
		flag = event.GetFlag(106) or flag
		flag_2 = event.GetFlag(104) or flag_2
		var2 = event.JoinPartyMember(2) or var2
		if (if flag == 1 then var2 else 0) ~= 0 or flag_2 == 0 then
			event.SetBitCtrl(1, 1)
			helper_68186cf4(1)
		end
	end
	event.FuncPointShow("", "dun_out", 0)
	flag = event.GetFlag(7) or flag
	if flag == 1 then
		event.FuncPointShow("p01_s06", "doa1", 0)
		event.FuncPointShow("p01_s06", "doa0", 1)
		flag = event.GetFlag(109) or flag
		if flag ~= 0 then
			event.FuncPointShow("", "dun_out", 1)
		end
	else
		event.FuncPointShow("p01_s06", "doa1", 0)
		event.FuncPointShow("p01_s06", "doa0", 1)
		var2 = event.JoinPartyMember(2) or var2
		if var2 == 0 then
			flag = event.GetFlag(105) or flag
			if flag == 1 then
				event.FuncPointShow("", "dun_out", 1)
			end
		else
			event.FuncPointShow("", "dun_out", 0)
		end
	end
	event.Initialize()
	event.SetFadeOut(0)
	vm.wait(1)
	flag = event.GetFlag(103) or flag
	if flag == 0 then
		helper_68186cf4(1)
		event.LoadScript("s06/s06b.stb", 500)
		return
	else
		var2 = event.JoinPartyMember(2) or var2
		if var2 ~= 0 then
			flag = event.GetFlag(25) or flag
			if flag == 1 then
				event.SetFlag(5, 0)
				flag = event.GetFlag(6) or flag
				if flag == 0 then
					event.SetFadeOut(0)
					event.SetFlag(6, 1)
					event.LoadScript("s06/s06b.stb", 510)
					return
				else
					flag = event.GetFlag(7) or flag
					if flag == 0 then
						event.SetFadeOut(0)
						event.LoadScript("s06/s06b.stb", 520)
						return
					else
						helper_207bc()
					end
				end
			else
				helper_207bc()
			end
		else
			event.SetFlag(5, 0)
			flag = event.GetFlag(7) or flag
			if flag == 1 then
				helper_207bc()
			else
				var2 = event.JoinPartyMember(2) or var2
				if var2 == 0 then
					flag = event.GetFlag(105) or flag
					if flag == 1 then
						helper_207bc()
					end
				else
					event.LoadMonsterFile(601, 1)
					helper_207bc()
					event.Initialize()
					event.AutoSetMonster(601, -36.31, 50.0, 1.24, 0.0, 0.0, 0.0)
					event.Finish()
				end
			end
		end
	end
	event.SetFadeIn(30)
	event.Finish()
end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	event.Initialize()
	event.LoadScript("s06/s06c.stb", 500)
	vm.wait(1)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		event.Initialize()
		event.SetFlag(7, 1)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		helper_68186cf4(0)
		event.DngPause(17, 1)
		at = 2
		helper_17ef8()
		event.DelMonster(-1)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_4a9b8bc5(0)
				at = 2
				helper_17ef8()
				return vm.continue_with(function()
					event.DelMonster(-1)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	local at: number = 0
	return vm.guard(function()
		event.SetBitCtrl(1, 0)
		helper_68186cf4(0)
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		event.AddHpRate(1.0, 0)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.DngPause(17, 1)
		at = 2
		helper_1abe8()
		event.BgmLoadCancel()
		event.GotoEdit(10, 531)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_1abe8()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.GotoEdit(10, 531)
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

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	event.SetFadeOut(0)
	helper_3a00c76d()
end

--- Event 505, which map data, a script or the engine runs by number.
function script.event_505()
	event.LoadScript("s06/06c.stb", 500)
	vm.wait(1)
end

--- Event 506, which map data, a script or the engine runs by number.
function script.event_506()
	event.LoadScript("s06/06c.stb", 500)
	vm.wait(1)
end

--- Event 507, which map data, a script or the engine runs by number.
function script.event_507()
	event.SetFadeOut(0)
	event.SetFlag(6, 1)
	event.LoadScript("s06/s06b.stb", 510)
	vm.wait(1)
end

--- Event 600, which map data, a script or the engine runs by number.
function script.event_600()
	local active_chr_no: s32 = 0
	local var1: any = 0
	event.Initialize()
	event.ActchrSetDefMotion(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.Initialize()
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		if active_chr_no == 2 then
			helper_75684dd8(0, 20, 5, 256, 208)
		else
			helper_75684dd8(0, 21, 5, 256, 208)
		end
		event.SetMesDrawspeed(0, 0)
		event.DngPause(1, 0)
		event.Finish()
		return
	end
	event.SetMesWindowMode(0, 5)
	event.MesMake_2(0, "『地下水道』に移動しますか？")
	var1 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
	if var1 == 0 then
		event.SetFadeOut(30)
		helper_888ab2a3(30)
		event.SetBitCtrl(1, 0)
		event.LoadScript("d01/d01.stb", 1000)
		return
	end
	event.Finish()
end

--- Event 601, which map data, a script or the engine runs by number.
function script.event_601()
	vm.wait(1)
	helper_68186cf4(1)
	event.LoadScript("s06/s06c.stb", 600)
end

--- Event 630, which map data, a script or the engine runs by number.
function script.event_630()
	event.GotoEdit(12, 540)
	vm.wait(1)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local at: number = 0
	return vm.guard(function()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			flag = event.GetFlag(7) or flag
			if flag == 0 then
				event.SetFlag(6, 1)
				at = 1
				vm.wait(1)
				event.LoadScript("s06/s06.stb", 503)
			else
				at = 2
				helper_786b79f1(0)
			end
		else
			at = 3
			helper_786b79f1(0)
		end
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				helper_2867bf21(0)
			end
			if at <= 2 then
				helper_2867bf21(0)
			end
			return 0
		end
		return nil
	end)
end

--- Event 11030, which map data, a script or the engine runs by number.
function script.event_11030()
	event.SetFlag(103, 0)
	vm.wait(1)
	event.LoadScript("s06/s06b.stb", 500)
end

--- Event 11040, which map data, a script or the engine runs by number.
function script.event_11040()
	vm.wait(1)
	event.LoadScript("s06/s06c.stb", 500)
end

--- Event 11070, which map data, a script or the engine runs by number.
function script.event_11070()
	event.SetFlag(107, 1)
	vm.wait(1)
	event.LoadScript("s06/s06b.stb", 510)
end

--- Event 11081, which map data, a script or the engine runs by number.
function script.event_11081()
	local at: number = 0
	return vm.guard(function()
		event.DngPause(1, 1)
		event.SetFadeOut(15)
		at = 1
		helper_888ab2a3(15)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.DngPause(17, 1)
		at = 2
		helper_17ef8()
		event.SetFlag(7, 1)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_17ef8()
				return vm.continue_with(function()
					event.SetFlag(7, 1)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 11082, which map data, a script or the engine runs by number.
function script.event_11082()
	local at: number = 0
	return vm.guard(function()
		event.SetBitCtrl(1, 0)
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		event.AddHpRate(1.0, 0)
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.DngPause(17, 1)
		at = 2
		helper_1abe8()
		event.BgmLoadCancel()
		event.GotoEdit(10, 531)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_1abe8()
				return vm.continue_with(function()
					event.BgmLoadCancel()
					event.GotoEdit(10, 531)
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

--- Event 21010, which map data, a script or the engine runs by number.
function script.event_21010()
	event.Initialize()
	vm.wait(1)
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(190)
	event.PlayBgm(0)
	event.SetFadeIn(30)
	event.SetCharaPos(0, 0.0, 50.0, 100.0)
	event.SetCharaRot(0, 0.0, 3.1415927, 0.0)
	helper_68186cf4(1)
	event.LoadMonsterFile(601, 1)
	event.AutoSetMonster(601, 10.66, 50.0, -0.04, 0.0, -1.5707964, 0.0)
	event.Finish()
	event.ResetCamera(1, 0.0, 20.0)
end

return script
