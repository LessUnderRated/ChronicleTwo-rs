--!strict
-- map/s/s60/s60.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")

--- Helper function.
local function helper_bf3c()
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(824, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e800/e824/")
		event.LoadMes(0, 5, "e824.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e824_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e824_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.LoadChara(5, "e824_need.gltf", "info", 10)
		event.SetStatus(1, 10, 8, 1)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "e824_hanabi.gltf", "info", 11)
		event.CharaActive(11)
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 8)
			event.LoadEquip(5, 0, 4, "info", 8)
			event.LoadEquip(5, 0, 3, "info", 8)
			event.LoadEquip(5, 0, 2, "info", 8, 9)
			event.LoadMotion(5, "event/e800/e824/e824_mints.gltf", "info", 8)
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
			event.LoadMotion(5, "event/e800/e824/e824_monica.gltf", "info", 8)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 8)
			event.EohSyncChara(1, 8)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(8)
		event.CharaActive(9)
		event.SetCharaShow(1, 0)
		event.SetCharaShow(2, 0)
		event.SetCharaShow(3, 0)
		event.EohSetPos(0, 72.11, -90.0, 76.71)
		event.EohSetRot(0, 0.0, -3.02, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "デフォルト顔")
		event.EohSetTexAnim(0, 1, "通常目パチ")
		event.EohSetPos(1, 54.92, -90.0, 77.88)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "立ち", 4)
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "デフォルト顔")
		event.EohSetTexAnim(1, 1, "通常目パチ")
		event.EohSetPos(2, 44.14, -49.08, -126.86)
		event.EohSetRot(2, 0.0, 0.0, 0.0)
		event.EohSetTexAnim(2, 0)
		event.EohSetTexAnim(2, 1, "しんけん顔")
		event.EohSetTexAnim(2, 1, "しんけん目パチ")
		event.InitDramaScene()
		event.SetStatus(1, 0, 8, 0)
		event.SetStatus(1, 8, 8, 0)
		event.SetMapDraw(1)
		event.CmrsInit()
		event.CmrsSetPos(55.46, 200.34, 515.95)
		event.CmrsSetRef(53.44, 227.2, 372.83)
		event.SetFadeIn(0)
		event.SetMapDraw(1)
		event.CmrsSetPos(44.0, -16.0, -75.76)
		event.CmrsSetRef(44.0, -29.0, -122.08)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
		event.ObjsTexAnime(2, 1, "通常口パク")
		event.ObjsTexaDelay(2, 300)
		event.ObjsTexAnime(2, 0, "通常口パク")
		event.ObjsSetMotion(2, "いつか世界に・・・", 4)
		event.ObjsMotionDelay(2, 60)
		event.ObjsNextMotion(2, "いつか世界に・・・Ｌ", 4)
		helper_0382f327(8240090, 360)
		event.CmrsSetPos(44.2, -3.01, -177.99)
		event.CmrsSetRef(35.75, -20.84, -125.36)
		event.CmrsMove(44.2, -3.01, -177.99, 52.28, -20.84, -125.25, 420)
		event.SetMapDraw(0)
		event.ObjsTexAnime(2, 1, "通常口パク")
		event.ObjsTexaDelay(2, 336.0)
		event.ObjsTexAnime(2, 0, "通常口パク")
		event.ObjsSetMotion(2, "なぜなら１", 2)
		event.ObjsNextMotion(2, "なぜなら１Ｌ", 4)
		event.ObjsNextMotion(2, "なぜならＬ～なぜなら２", 4)
		event.ObjsNextMotion(2, "なぜなら２Ｌ", 4)
		event.ObjsNextMotion(2, "なぜなら２～なぜなら１", 4)
		event.ObjsNextMotion(2, "なぜなら１Ｌ", 4)
		event.ObjsNextMotion(2, "なぜならＬ～なぜなら２", 4)
		event.ObjsNextMotion(2, "なぜなら２Ｌ", 4)
		helper_0382f327(8240110, 420)
		event.SetMapDraw(1)
	end)
	vm.entry(4)
	event.CancelDramaScene()
	event.SetStatus(1, 0, 256, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	for var1 = 0, 99 do
		event.DeleteChara(12 + var1)
	end
	event.LoadMes(0, -1)
end

--- Helper function.
local function helper_b8bc()
	local block: s32 = 0
	event.SetFadeOut(0)
	event.SoundAllStop()
	helper_888ab2a3(6)
	event.SetFadeIn(0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.LoadMovie(5, "movie/end2.mp4")
	vm.wait(2)
	block = event.LoadImg_4(5, "textures/event/e700/e736/e73601.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetColor(0, 0, 0, 0, 128)
	event.SpriteSetPutsize(0, 512, 448)
	event.SpriteSetPos(0, 256, 224)
	event.SpriteSetDraw(0, 1)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "e73601", block)
	event.SpriteSetColor(1, 128, 128, 128, 128)
	event.SpriteSetUvsize(1, 0, 0, 512, 448)
	event.SpriteSetPutsize(1, 512, 448)
	event.SpriteSetPos(1, 256, 224)
	event.SpriteSetDraw(1, 1)
	event.SetFadeIn(60)
	helper_888ab2a3(90)
	while true do
		if helper_581cb30c(0) ~= 0 then
			break
		else
			vm.wait(4)
		end
	end
	event.SetFadeOut(30)
	helper_888ab2a3(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
-- Defined empty, so the engine runs this instead of its default.
function script.event_99() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
-- Defined empty, so the engine runs this instead of its default.
function script.default_event() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	local at: number = 0
	return vm.guard(function()
		event.SetTime(22.0)
		event.SetTimeStepEnable(0)
		at = 1
		helper_888ab2a3(30)
		at = 2
		helper_bf3c()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_bf3c()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_b8bc()
	event.SetExitFlag(1)
end

return script
