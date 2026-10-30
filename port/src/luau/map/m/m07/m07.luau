--!strict
-- map/m/m07/m07.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_61e5dba6 = require("@lib/event/helper_61e5dba6")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_b578(arg0: s32, arg1: s32)
	event.StreamOpen3(1, arg0)
	helper_9cbdc640(1)
	event.MesMake_2(0, arg0)
	open_message(0, -1, 5, 0, 0)
	event.StreamPlay(1)
	helper_61e5dba6(0, arg1)
	close_message(0)
end

--- Helper function.
local function helper_b730()
	local var0: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		event.InitDramaScene()
		event.SetTimeStepEnable(0)
		event.SetTime(24)
		event.SetMesWindowMode(0, 0)
		event.LoadSound(1200)
		event.LoadBgm(100)
		event.StopBgm(0)
		event.StopEnvBgm()
		event.AssignStack(5)
		event.ClearStack(5)
		event.ChangeDir("event/opening/p1/")
		event.LoadMes(0, 5, "op1ch1.txt")
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ChangeDir("")
		event.EohSetPos(0, -548.51, 0.0, 56.09)
		event.EohSetRot(0, 0.0, 0.0, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohSetFootSoundId(0, 22)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "真剣目")
		event.EohSetTexAnim(0, 1, "口半開き")
		event.EohSetFootSoundId(1, -1)
		event.EohSetFootSoundId(2, -1)
		event.EohSetFootSoundId(3, -1)
		event.EohSetFootSoundId(4, -1)
		event.EohSetFootSoundId(5, -1)
		event.SetRain(0)
		event.CmrsInit()
		event.CmrsSetPos(0.0, 10000.0, 0.0)
		event.CmrsSetRef(0.0, 10000.0, 0.0)
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetPos(0, 256, 208)
		event.SpriteSetPutsize(0, 512, 416)
		event.SpriteSetColor(0, 0, 0, 0, 128)
		event.SpriteSetDraw(0, 1)
		event.SetFadeIn(1)
		event.SndInReverb(0)
		helper_b578(10010, 160)
		helper_b578(10020, 110)
		helper_b578(10025, 120)
		helper_b578(10030, 210)
		event.SndInReverb(1)
		event.SpriteSetDraw(0, 0)
		event.CmrsInit()
		event.CmrsFadeInit()
		event.CmrsFadeOut(1)
		wait_camera()
		event.StreamOpen3(1, 10040)
		helper_9cbdc640(1)
		event.StreamPlay(1)
		event.SetRainCharaNo(0)
		event.SetRain(1)
		event.PlayBgm(0)
		event.PlayEnvBgm(0)
		event.CmrsInit()
		event.CmrsSetPos(152.13, 71.52, -25.06)
		event.CmrsSetRef(-217.76, 200.86, -36.82)
		event.CmrsMove(152.13, 71.52, -25.06, -217.76, 28.14, -36.82, 350)
		event.CmrsFadeInit()
		event.CmrsFadeIn(300)
		event.ObjsSetMotion(0, "走り")
		event.ObjsPosDelay(0, 60)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 260)
		event.ObjsAddPas(0, -548.51, 0.0, 56.09)
		event.ObjsAddPas(0, -353.41, 0.0, 2.28)
		event.ObjsAddPas(0, -186.76, 0.0, -36.95)
		event.ObjsAddPas(0, -68.92, 0.0, -47.91)
		event.ObjsAddPas(0, 64.69, 0.0, -50.33)
		event.ObjsAddPas(0, 99.26, 0.0, -48.9)
		event.ObjsStartPas(0)
		wait_camera()
		wait_objects(0)
		event.SetCrossfade(60)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 120)
		event.ObjsAddPas(0, 64.69, 0.0, -50.33)
		event.ObjsAddPas(0, 195.57, 0.0, -50.59)
		event.ObjsAddPas(0, 314.04, 0.0, -37.39)
		event.ObjsStartPas(0)
		event.CmrsSyncObj(0, 5.0, 20.0, 0.0, 1.88, -15.0, 45.0)
		wait_objects(0)
		event.CmrsReleaseObj()
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 200)
		event.ObjsAddPas(0, 314.04, 0.0, -37.39)
		event.ObjsAddPas(0, 467.75, 0.0, -7.6)
		event.ObjsAddPas(0, 521.55, 0.0, 26.4)
		event.ObjsAddPas(0, 544.99, 0.0, 49.43)
		event.ObjsAddPas(0, 549.06, 3.84, 89.43)
		event.ObjsAddPas(0, 543.57, 4.07, 127.02)
		event.ObjsAddPas(0, 527.1, 4.07, 147.59)
		event.ObjsAddPas(0, 505.16, 19.83, 153.79)
		event.ObjsAddPas(0, 463.28, 49.29, 156.8)
		event.ObjsAddPas(0, 357.41, 52.0, 153.32)
		event.ObjsStartPas(0, 1)
		event.CmrsSetPos(716.83, 119.9, -60.37)
		event.CmrsSetRef(504.52, 49.88, 41.63)
		event.SetRainCharaNo(0)
		helper_888ab2a3(60)
		event.CmrsMove2(716.83, 119.9, -60.37, 476.49, 49.88, 99.17, 200, 1, 1.0)
		helper_888ab2a3(70)
		event.EohSetFootSoundId(0, 2)
		helper_888ab2a3(60)
		event.SetRainCharaNo(-1)
		wait_objects(0)
		event.ObjsRotation(0, 0.0, 0.0, 0.0, 30)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMotionDelay(0, 30)
		event.ObjsSetMotion(0, "ドア開け", 2)
		helper_888ab2a3(60)
		var0 = event.GetSndId(2) or var0
		event.SndSePlay(var0, 66)
		event.FadeOutBgm(30)
		event.CmrsFadeInit()
		event.CmrsFadeOut(30)
		wait_camera()
	end)
	vm.entry(17)
	event.CancelDramaScene()
	event.SndInReverb(1)
	event.StreamClose(1)
	event.LoadMes(0, -1)
	event.DelExtMotion(0)
	event.CharaActive(1, 0)
	event.SetRain(0)
	event.StopEnvBgm()
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.BgmLoadCancel()
	event.SoundLoadCancel()
end

--- Event 151, which map data, a script or the engine runs by number.
local function event_151()
	local at: number = 0
	return vm.guard(function()
		at = 1
		vm.entry(1)
		event.SetFadeOut(0)
		at = 2
		vm.wait(2)
		event.SetFlag(4, 1)
		at = 3
		helper_b730()
		event.MapJump_3(-1, "s42", 500)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 2 then
				at = 3
				helper_b730()
				return vm.continue_with(function()
					event.MapJump_3(-1, "s42", 500)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
-- Defined empty, so the engine runs this instead of its default.
function script.default_event() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

script.event_151 = event_151

--- Event 10010, which map data, a script or the engine runs by number.
function script.event_10010()
	local at: number = 0
	return vm.guard(function()
		event.StopBgm(0)
		event.StopEnvBgm()
		at = 1
		helper_888ab2a3(6)
		at = 2
		event_151()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				event_151()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

return script
