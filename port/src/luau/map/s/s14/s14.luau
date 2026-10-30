--!strict
-- map/s/s14/s14.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_926d0569 = require("@lib/event/helper_926d0569")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_d61bc810 = require("@lib/event/helper_d61bc810")
local helper_e787350a = require("@lib/event/helper_e787350a")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local flag: s32 = 0
	event.StopBgm(0)
	event.LoadSound(3694)
	flag = event.GetFlag(628) or flag
	if flag == 1 then
		helper_926d0569()
	end
end

--- Helper function.
local function helper_1004c()
	local var0: s32 = 0
	local block: s32 = 0
	vm.section(function()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		helper_888ab2a3(4)
		event.LoadBgm(190)
		event.PlayBgm(0)
		var0 = event.SndLoadSound_3(5, "snd2/mon/en_283.sound.json") or var0
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetStatusbarShow(0, 1.0)
		event.LoadChara(5, "dungeon/monster/e253e.gltf", "e253e", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.EohSetSoundId(2, var0)
		block = event.LoadImg_4(5, "textures/event/e600/e628/e628telop01.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e628telop01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(3, 0)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.CharaActive(0, 0)
		event.ObjsSetPos(2, 0.0, 0.0, -800.0)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(2, "待機")
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-20.0, 30.0, 1100.0)
		event.CmrsSetRef(0.0, -700.0, -800.0)
		event.CmrsMove2(0.0, 5.58, -701.57, 0.0, 38.2, -800.0, 150, 2, 0.2)
		event.SetFadeIn(30)
		helper_888ab2a3(75)
		event.ObjsSetMotion(2, "立ち", 2)
		helper_888ab2a3(30)
		wait_objects(2)
		event.ObjsSetMotion(2, "攻撃１", 6)
		event.ObjsNextMotion(2, "攻撃２", 6)
		event.ObjsNextMotion(2, "攻撃３in", 6)
		event.ObjsNextMotion(2, "攻撃３loop", 6)
		event.ObjsNextMotion(2, "攻撃３out", 6)
		event.ObjsNextMotion(2, "立ち", 4)
		helper_888ab2a3(150)
		event.ObjsSetColor(3, 128, 128, 128, 128, 30)
		helper_888ab2a3(30)
		helper_888ab2a3(30)
		event.ObjsSetColor(3, 128, 128, 128, 0, 30)
		helper_888ab2a3(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	event.CancelDramaScene()
	event.DeleteChara(10)
	event.DelImg(0)
	event.SetStatusbarShow(1, 1.0)
	event.CharaActive(0)
end

--- Helper function.
local function helper_10e80()
	local var0: s32 = 0
	local var1: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(628, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		var0 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var0
		var1 = event.SndLoadSound_2(3850) or var1
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatusbarShow(0, 1.0)
		event.ChangeDir("event/e600/e624/")
		event.LoadMes(0, 5, "e624.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e624_mints.gltf", "info", 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e624_monica.gltf", "info", 0)
		end
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "e628_lapis_kaze.gltf", "info", 8)
		event.CharaActive(0, 8)
		event.EohSyncChara(1, 8)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetEohFramePos(1, 0, "item", 0.0, 0.0, 0.0, -1)
		event.ChangeDir("")
		event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 9)
		event.CharaActive(0, 9)
		event.EohSyncChara(2, 1)
		event.EohSyncChara(3, 2)
		event.EohSetShow(2, 0)
		event.EohSetShow(3, 0)
		event.EohSetPos(0, 0.0, 4.0, -920.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohResetDaPosition(0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-40.26, 20.64, -866.67)
		event.CmrsSetRef(-1.7, 36.27, -951.09)
		event.CmrsMove2(-29.36, 23.4, -890.54, -1.7, 36.27, -951.09, 90, 2, 1.0)
		event.SndSePlay(var1, 0)
		event.SetFadeIn(30)
		helper_888ab2a3(30)
		if active_chr_no == 0 then
			helper_4116e6bb(6240010)
		else
			helper_4116e6bb(6240020)
		end
		event.CmrsInit()
		event.SndSeStop(var1, 0)
		event.SndPauseBgm()
		event.EohSyncObj_3(30, "p01_s1301-m-m", "s1301_3-m0")
		event.EohSetShow(30, 0)
		event.CharaActive(1, 8)
		event.CharaActive(1, 9)
		if active_chr_no == 0 then
			event.CmrsSetPos(0.0, 51.31, -963.58)
			event.CmrsSetRef(0.0, 28.64, -917.36)
			event.CmrsMove2(0.0, 46.94, -952.38, 0.0, 28.64, -917.36, 120, 2, 0.4)
			event.SetCharaPos(9, 7.74, 35.0, -918.0)
			event.SetCharaRot(9, 0.2, 0.24, 0.0)
		else
			event.CmrsSetPos(0.0, 53.31, -963.58)
			event.CmrsSetRef(0.0, 30.64, -917.36)
			event.CmrsMove2(0.0, 48.94, -952.38, 0.0, 30.64, -917.36, 120, 2, 0.4)
			event.SetCharaPos(9, -4.45, 37.0, -918.0)
			event.SetCharaRot(9, 0.2, -0.24, 0.0)
		end
		event.SetMotion(9, "発動", 6)
		event.ObjsSetMotion(0, "ラピスゲット", 4, -1.0, 1)
		helper_888ab2a3(2)
		event.SndSePlay(var0, 0)
		helper_888ab2a3(120)
		event.SndSePlay(var1, 1)
		helper_e787350a(367, 1)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(9)
	event.CancelDramaScene()
	event.ObjsInit(0)
	event.ObjsInit(1)
	event.SndSeStop(var1, 0)
	event.SndSeStop(var0, 0)
	event.PlayBgm(0)
	event.EohSetShow(2, 1)
	event.EohSetShow(3, 1)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	helper_926d0569()
	helper_9dafbc83(0.0, 4.0, -920.0, 0.0)
	event.SetCameraRef(0.0, 34.0, -920.0)
	event.SetCameraPos(0.0, 44.0, -800.0)
	event.ResetCamera(0)
	helper_d61bc810(0)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	event.Initialize()
	event_99()
	flag = event.GetFlag(628) or flag
	if flag == 0 then
		helper_1004c()
		event.FuncPointShow("", "rapis", 0)
		event.LoadMonsterFile(611, 1)
		event.AutoSetMonster(611, 0.0, 0.0, -800.0, 0.0, 0.0, 0.0)
	end
	event.SetBitCtrl(1, if flag == 0 then 1 else 0)
	helper_9dafbc83(0.0, 0.0, 850.0, vm.f32(3.14))
	event.SetCameraRef(0.0, 30.0, 850.0)
	event.SetCameraPos(0.0, 40.0, 970.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_1004c

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local var2: any = 0
	event.Initialize()
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
	flag = event.GetFlag(628) or flag
	if flag == 0 then
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		event.MesMake_2(0, "まだラピスを手に入れてないよ！")
		helper_75684dd8(0, -1, 5, 256, 208)
		event.Finish()
		return
	end
	var2 = helper_ed4dc120(2, -1)
	if var2 == 0 then
		event.SetFadeOut(15)
		helper_888ab2a3(15)
		event.DelMonster(-1)
		event.LoadScript("d03/d03.stb", 1000)
	end
	event.Finish()
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	local active_chr_no: s32 = 0
	local stage_id: s32 = 0
	local var2: s32 = 0
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
				helper_75684dd8(0, 22, 5, 256, 208)
			else
				at = 2
				helper_75684dd8(0, 23, 5, 256, 208)
			end
			event.Finish()
			return
		end
		event.AddItem(367, 1)
		event.SetFadeOut(10)
		at = 3
		helper_888ab2a3(10)
		stage_id = event.DngGetStageId() or stage_id
		var2 = event.DngGetFloorId() or var2
		event.SetFloorInfo(stage_id, var2, 5, 2)
		at = 4
		helper_10e80()
		event.SetBitCtrl(1, 0)
		event.SetFadeIn(10)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_ee1c51d0(0, 23, 5, 256, 208)
			end
			return 0
		end
		if at <= 4 then
			if at <= 3 then
				at = 4
				helper_10e80()
				return vm.continue_with(function()
					event.SetBitCtrl(1, 0)
					event.SetFadeIn(10)
					event.Finish()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- The dungeon system event run when every monster on the floor has been defeated.
function script.floor_clear()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.DelMonster(-1)
	event.FuncPointShow("", "rapis", 1)
	event.SetLoadbgFile_1("snd2/bgm/bg_193.sound.json")
	helper_479dc9e9()
	event.LoadBgmPack(193)
	event.PlayBgm(0)
	event.Finish()
end

--- Event 26020, which map data, a script or the engine runs by number.
function script.event_26020()
	event.Initialize()
	vm.wait(1)
	event.LoadMonsterFile(611, 1)
	event.AutoSetMonster(611, 0.0, 0.0, -800.0, 0.0, 0.0, 0.0)
	event.DngPause(16384, 1)
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(190)
	event.PlayBgm(0)
	event.SetFadeIn(30)
	event.Finish()
end

return script
