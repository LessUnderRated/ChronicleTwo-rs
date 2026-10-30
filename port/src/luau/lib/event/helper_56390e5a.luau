--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_d355d559 = require("@lib/event/helper_d355d559")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_56390e5a()
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local var3: f32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	local var6: f32 = 0
	local var7: s32 = 0
	local rot_x: f32 = 0
	local var9: f32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_1("snd2/sp/sp_031.sound.json")
	vm.wait(1)
	helper_479dc9e9()
	world_coord_pos, world_coord_pos_2, world_coord_pos_3, var3 =
		helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, var3)
	event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, var3)
	var4 = event.SndLoadSound_3(8, "snd2/sp/sp_031.sound.json") or var4
	var5 = event.GetEventData_2(9) or var5
	event.EohSyncObj_3(0, var5, "d02w10_4-m0")
	event.EohSyncObj_3(1, var5, "d02w10_3-m0")
	event.EohSetShow(1, 1)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.LoadChara(5, "event/dng/g01_gkey.gltf", "info", 12)
	event.CharaActive(12)
	event.EohSyncChara(2, 12)
	event.EohSetPos(2, 0.0, 0.0, 145.0)
	event.EohSetMotion(2, "発動", 5)
	event.SetWorldCoord(0.0, 0.0, 0.0, 0.0)
	var6 = vm.bits_float(event.GetEventData_2(11)) or var6
	var7 = 0
	while var7 < 10 do
		event.CtrlcRotBack(var6)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var7 = var7 + 1
		vm.wait(3)
	end
	event.SndSePlay(var4, 0)
	event.EohSetMotion(2, "発動", 6)
	var7 = 0
	while var7 < 20 do
		event.CtrlcRotBack(var6)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var7 = var7 + 1
		vm.wait(4)
	end
	wait_frames(20)
	event.EohSetShow(0, 0)
	wait_frames(37)
	event.SndSePlay(var4, 1)
	var9 = vm.f32(-0.001)
	rot_x = 0.0
	while rot_x > vm.f32(-1.57) do
		event.ObjsSetRot(1, rot_x, var3, 0.0)
		var9 = vm.f32(var9 * vm.f32(1.06))
		rot_x = vm.f32(rot_x + var9)
		vm.wait(7)
	end
	event.SndSePlay(var4, 5)
	var7 = 0
	while var7 < 3 do
		while true do
			var9 = vm.f32(var9 * vm.f32(0.6))
			rot_x = vm.f32(rot_x - var9)
			event.ObjsSetRot(1, rot_x, var3, 0.0)
			if var9 > vm.f32(-0.001) then
				break
			else
				vm.wait(8)
			end
		end
		var9 = vm.f32(var9 + vm.f32(-0.001))
		while true do
			var9 = vm.f32(var9 * vm.f32(1.2))
			rot_x = vm.f32(rot_x + var9)
			event.ObjsSetRot(1, rot_x, var3, 0.0)
			if rot_x < vm.f32(-1.57) then
				break
			else
				vm.wait(9)
			end
		end
		var7 = var7 + 1
	end
	wait_frames(10)
	event.DeleteChara(12)
	event.ResetCamera(0)
	event.Finish()
end

return helper_56390e5a
