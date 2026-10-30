--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_d355d559 = require("@lib/event/helper_d355d559")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_f4832f7a()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.SetLoadbgFile_2("dungeon/chara/mints_01in.gltf", "snd2/sp/sp_031.sound.json")
	end
	if active_chr_no == 1 then
		event.SetLoadbgFile_2("dungeon/chara/monica_01in.gltf", "snd2/sp/sp_031.sound.json")
	end
	vm.wait(1)
	helper_479dc9e9()
	var1 = event.SndLoadSound_3(8, "snd2/sp/sp_031.sound.json") or var1
	event.AssignStack(5)
	event.ClearStack(5)
	world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
		helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetPos(0, 0.0, 0.0, 183.0)
	event.ObjsSetRot(0, 0.0, 3.14, 0.0)
	event.ObjsResetDaPosition(0)
	event.EohSetFootSoundId(0, 3)
	if active_chr_no == 0 then
		event.LoadMotion(5, "dungeon/chara/mints_01in.gltf", "info", 0)
	end
	if active_chr_no == 1 then
		event.LoadMotion(5, "dungeon/chara/monica_01in.gltf", "info", 0)
	end
	event.CmrsInit()
	event.CmrsSetPos(-32.1, 44.57, 270.0)
	event.CmrsSetRef(7.73, 34.2, 52.8)
	event.CmrsMove2(-23.76, 44.57, 224.57, 7.73, 34.2, 52.8, 90, 1, 1.0)
	event.ObjsSetMotion(0, "ジャンプ", 6)
	event.ObjsNextMotion(0, "ジャンプ中", 6, 0.3)
	event.ObjsNextMotion(0, "d01着地", 6)
	if active_chr_no == 0 then
		event.ObjsNextMotion(0, "旧・立ち", 4)
	else
		event.ObjsNextMotion(0, "立ち", 4)
	end
	wait_frames(8)
	event.SndSePlay(var1, 2)
	event.ObjsJump(0, 0.0, 29.88, 127.4, -0.2, 26)
	wait_frames(26)
	event.SndSePlay(var1, 3)
	wait_objects(0)
	wait_frames(5)
	event.ObjsMove(0, 0.0, 27.83, 35.0, 90)
	event.ObjsSetMotion(0, "歩き")
	wait_frames(60)
	event.CmrsFadeInit()
	event.CmrsFadeOut(30)
	event.EohSetFootSoundId(0, -1)
	wait_camera()
end

return helper_f4832f7a
