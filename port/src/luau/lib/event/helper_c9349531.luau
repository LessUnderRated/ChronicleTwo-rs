--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_c9349531(
	world_coord_pos: f32,
	world_coord_pos_2: f32,
	world_coord_pos_3: f32,
	world_coord_rot: f32
)
	local var4: s32 = 0
	local angle: f32 = 0
	local active_chr_no: s32 = 0
	local var11: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFadeOut(0)
		at = 1
		vm.wait(1)
		event.Initialize()
		event.InitDramaScene()
		var4 = event.SndLoadSound_3(8, "snd2/sp/sp_031.sound.json") or var4
		event.AssignStack(5)
		event.ClearStack(5)
		angle = event.AngleLimit(angle) or angle
		event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 0 then
			event.LoadMotion(5, "dungeon/chara/mints_01in.gltf", "info", 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "dungeon/chara/monica_01in.gltf", "info", 0)
		end
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 116.96, 18.76, 19.22)
		event.ObjsSetRot(0, 0.0, -1.96, 0.0)
		event.ObjsSeDelay(0, 1)
		event.ObjsResetDaPosition(0)
		event.EohSetFootSoundId(0, 3)
		event.CmrsInit()
		event.CmrsSetPos(186.89, 58.05, -1.19)
		event.CmrsSetRef(50.97, 32.07, 20.9)
		event.CmrsFadeInit()
		event.CmrsFadeIn(30)
		if active_chr_no == 0 then
			event.CmrsMove2(137.93, 48.95, 6.77, 50.97, 32.07, 20.9, 160, 2, 0.4)
			event.ObjsMove(0, 23.61, 18.53, -17.13, 140)
			event.ObjsSetMotion(0, "丸太歩き", 4)
			event.ObjsRotDelay(0, 130)
			event.ObjsRotation(0, 0.0, -1.0, 0.0, 10)
			at = 2
			wait_objects(0)
			event.ObjsSetMotion(0, "ジャンプ", 2)
			event.ObjsNextMotion(0, "ジャンプ中", 6, 0.3)
			event.ObjsNextMotion(0, "着地", 6)
		else
			event.CmrsMove2(137.93, 48.95, 6.77, 50.97, 32.07, 20.9, 100, 2, 0.4)
			event.ObjsMove(0, 23.61, 18.53, -17.13, 60)
			event.ObjsSetMotion(0, "丸太歩き", 4)
			event.ObjsRotDelay(0, 50)
			event.ObjsRotation(0, 0.0, -1.0, 0.0, 10)
			at = 3
			wait_objects(0)
			event.ObjsSetMotion(0, "ジャンプ", 2)
			event.ObjsNextMotion(0, "ジャンプ中", 6, 0.2)
			event.ObjsNextMotion(0, "着地", 6)
		end
		event.EohSetFootSoundId(0, 16)
		at = 4
		wait_frames(14)
		event.SndSePlay(var4, 2)
		event.ObjsJump(0, -85.0, 0.0, 50.0, -0.25, 30)
		event.ObjsRotDelay(0, 10)
		event.ObjsRotation(0, 0.0, -1.57, 0.0, 20)
		at = 5
		wait_frames(16)
		at = 6
		wait_objects(0)
		event.SndSePlay(var4, 4)
		at = 7
		wait_frames(30)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, -170.0, 0.0, 50.0, 50)
		at = 8
		wait_camera()
		event.SetCrossfade(30)
		do
			local _, out2, _ = event.EohGetRot(0)
			var11 = out2 or var11
		end
		event.CmrsSetRef(-170.0, 30.0, 50.0)
		var11 = vm.f32(var11 - vm.f32(3.1415927))
		var11 = event.AngleLimit(var11) or var11
		event.CmrsSetAhd(var11, 5.0, 100.0)
		at = 9
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		at = 10
		wait_frames(15)
		event.CancelDramaScene()
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_238b5abc(0)
		end
		if at <= 2 then
			helper_238b5abc(0)
		end
		if at <= 3 then
			wait_frames_skipping(14)
		end
		if at <= 4 then
			wait_frames_skipping(16)
		end
		if at <= 5 then
			helper_238b5abc(0)
		end
		if at <= 6 then
			wait_frames_skipping(30)
		end
		if at <= 7 then
			helper_344d6cd8()
		end
		if at <= 8 then
			var11 = vm.f32(var11 - vm.f32(3.1415927))
			helper_238b5abc(0)
		end
		if at <= 9 then
			wait_frames_skipping(15)
		end
		return true
	end)
	at = 11
	vm.entry(11)
	event.SetFadeIn(0)
	event.ObjsInit(0)
	event.EohSetMotion(0, "立ち")
	event.EohSetPos(0, -170.0, 0.0, 50.0)
	event.EohSetRot(0, 0.0, -1.57, 0.0)
	event.EohResetDaPosition(0)
	event.SetCameraRef(-170.0, 30.0, 50.0)
	event.SetCameraPos(-70.0, 35.0, 50.0)
	event.ResetCamera(0)
	event.DelExtMotion(0)
end

return helper_c9349531
