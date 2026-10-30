--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_d355d559 = require("@lib/event/helper_d355d559")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_7c6b3591(arg0: s32)
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	local var5: s32 = 0
	local active_chr_no: s32 = 0
	local var7: s32 = 0
	local var8: s32 = 0
	local var9: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var14: f32 = 0
	local vector_x: f32 = 0
	local vector_y: f32 = 0
	local vector_z: f32 = 0
	local var19: s32 = 0
	local var20: s32 = 0
	local world_coord_pos_4: f32 = 0
	local world_coord_pos_2_2: f32 = 0
	local world_coord_pos_3_2: f32 = 0
	local world_coord_rot_2: f32 = 0
	local active_chr_no_2: s32 = 0
	event.Initialize()
	if arg0 == 0 then
		world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
			helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
		event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
		var5 = event.GetSndId(2) or var5
		event.SetCharaShow(1, 0)
		event.SetCharaShow(2, 0)
		event.CmrsInit()
		event.CmrsSetPos(-74.77, 120.66, 51.54)
		event.CmrsSetRef(7.05, 109.71, -89.51)
		event.AssignStack(5)
		event.ClearStack(5)
		event.EsmInitialize(5, 1)
		event.EsmLoadBasePack("足水パシャ", "dungeon/sphida/mizu_eff.gltf")
		event.EsmInitFix(5, 2000)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 0 then
			event.LoadMotion(5, "event/dng_inout/c01d04gkey.gltf", "info", 0)
		else
			event.LoadMotion(5, "event/dng_inout/c02d04gkey.gltf", "info", 0)
		end
		event.EohSyncChara(0, 0)
		event.EohSetMotion(0, "持ち上げ停止", 4)
		event.EohNormalDrive(0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 80.0, -33.0)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsResetMotion(0)
		event.ObjsSetMotion(0, "持ち上げ停止", 4, -1.0, 1)
		event.ObjsNextMotion(0, "投げ", 2)
		event.ObjsNextMotion(0, "立ち")
		var7 = event.GetEventData_2(9) or var7
		event.EohSyncObj_3(1, var7, "d05w10_1-m0")
		event.EohSetPos(1, 0.0, 70.0, 0.0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.LoadChara(5, "event/dng_inout/magumarock.gltf", "info", 12)
		event.CharaActive(1, 12)
		event.EohSyncChara(2, 12)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		var8 = 0
		if active_chr_no == 0 then
			var9 = 47
		else
			var9 = 44
		end
		while var8 < var9 do
			do
				local out1, out2, out3 = event.EohGetFramePos(0, "item")
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			do
				local _, out2, _ = event.EohGetRot(0)
				var14 = out2 or var14
			end
			if active_chr_no == 0 then
				var14 = vm.f32(var14 + vm.f32(1.57))
			else
				var14 = vm.f32(var14 - vm.f32(1.57))
			end
			var14 = event.AngleLimit(var14) or var14
			pos_x = vm.f32(vm.f32(vm.sin(var14) * 6.0) + pos_x)
			pos_z = vm.f32(vm.f32(vm.cos(var14) * 6.0) + pos_z)
			event.EohSetPos(2, pos_x, pos_y, pos_z)
			var8 = var8 + 1
			vm.wait(1)
		end
		event.ObjsJump(2, 0.0, 94.0, -80.0, -0.3, 16)
		wait_frames(12)
		vector_x = vm.f32(vm.f32(vm.sin(world_coord_rot) * -70.0) + world_coord_pos)
		vector_y = vm.f32(world_coord_pos_2 + 94.0)
		vector_z = vm.f32(vm.f32(vm.cos(world_coord_rot) * -70.0) + world_coord_pos_3)
		event.EsmCreate("足水パシャ")
		event.EsmSetVect1(vector_x, vector_y, vector_z)
		wait_frames(2)
		event.SndSePlay(var5, 58)
		wait_frames(2)
		wait_objects(0)
		event.ObjsSetMotion(0, "04ジャンプ", 6)
		event.ObjsNextMotion(0, "04着地", 6)
		event.ObjsNextMotion(0, "04着地L", 4)
		if active_chr_no == 0 then
			event.ObjsPosDelay(0, 12)
			event.ObjsSeDelay(0, 26)
			event.ObjsSePlay(0, var5, 4)
			event.ObjsSeDelay(0, 2)
			event.ObjsSePlay(0, var5, 5)
		else
			event.ObjsPosDelay(0, 6)
			event.ObjsSeDelay(0, 20)
			event.ObjsSePlay(0, var5, 4)
			event.ObjsSeDelay(0, 2)
			event.ObjsSePlay(0, var5, 5)
		end
		event.ObjsJump(0, 0.0, 101.0, -78.0, -0.3, 16)
		wait_objects(0)
		event.SetLoadbgFile_1("snd2/sp/sp_035.sound.json")
		vm.wait(7)
		helper_479dc9e9()
		var19 = event.SndLoadSound_3(8, "snd2/sp/sp_035.sound.json") or var19
		event.SndSePlay(var19, 2)
		wait_frames(30)
		event.ObjsJump(0, 0.0, 201.0, -78.0, -0.4, 30)
		event.ObjsJump(1, 0.0, 160.0, 0.0, -0.4, 30)
		event.ObjsJump(2, 0.0, 194.0, -80.0, -0.4, 30)
		event.SetFadeOut(30)
		wait_frames(30)
		event.DeleteChara(12)
		event.DelExtMotion(0)
		event.EsmClear()
		event.SetCharaShow(1, 1)
		event.SetCharaShow(2, 1)
	else
		event.SetFadeOut(10)
		wait_frames(10)
		var20 = event.SndLoadSound_3(8, "snd2/sp/sp_036.sound.json") or var20
		world_coord_pos_4, world_coord_pos_2_2, world_coord_pos_3_2, world_coord_rot_2 =
			helper_d355d559(world_coord_pos_4, world_coord_pos_2_2, world_coord_pos_3_2, world_coord_rot_2)
		event.SetWorldCoord(world_coord_pos_4, world_coord_pos_2_2, world_coord_pos_3_2, world_coord_rot_2)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no_2 = event.GetActiveChrNo() or active_chr_no_2
		if active_chr_no_2 == 0 then
			event.LoadMotion(5, "event/dng_inout/c01d05gkey.gltf", "info", 0)
		else
			event.LoadMotion(5, "event/dng_inout/c02d05gkey.gltf", "info", 0)
		end
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 20.0, -40.0)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsSetMotion(0, "ロープぶら下がり", 4, -1.0, 1)
		event.CmrsSetPos(-121.5, 37.81, 67.72)
		event.CmrsSetRef(-4.03, 39.46, -45.06)
		event.SndSePlay(var20, 1)
		event.SetFadeIn(20)
		event.ObjsMove2(0, 0.0, -80.0, -40.0, 40, 1, 1.0)
		wait_frames(40)
		event.SetFadeOut(30)
		wait_frames(30)
		event.DelExtMotion(0)
	end
	event.Finish()
end

return helper_7c6b3591
