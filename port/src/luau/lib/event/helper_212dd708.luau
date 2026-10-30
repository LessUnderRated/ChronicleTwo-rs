--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_d355d559 = require("@lib/event/helper_d355d559")
local helper_f7fba8ce = require("@lib/event/helper_f7fba8ce")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_212dd708()
	local var0: s32 = 0
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	local var5: s32 = 0
	event.Initialize()
	event.SetCrossfade(30)
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_048.sound.json") or var0
	event.AssignStack(5)
	event.ClearStack(5)
	world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
		helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	var5 = event.GetEventData_2(9) or var5
	event.EohSyncObj_3(1, var5, "d07w10_2-m0")
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.EohSyncObj_3(2, var5, "d07w10_5-m0")
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	event.EohSyncObj_3(3, var5, "d07w10_4-m0")
	event.EohSetShow(3, 0)
	event.EohSetPos(0, 0.0, 11.0, 23.0)
	event.EohSetRot(0, 0.0, 3.14, 0.0)
	event.EohSetMotion(0, "バトル立ち", 4)
	event.EohSetPos(1, 0.0, 0.0, 0.0)
	event.EohSetPos(2, 0.0, 0.0, 0.0)
	event.SndSePlay(var0, 0)
	event.CmrsInit()
	event.CmrsSetPos(-96.52, 68.45, 152.82)
	event.CmrsSetRef(-32.44, 32.28, 0.35)
	event.ObjsMove2(0, 0.0, 11.0, -177.0, 40, 1, 1.0)
	if helper_f7fba8ce(world_coord_rot, 0.0, 1.0) == 0 then
		print("\n\n\nROT_0.0\n\n\n")
		event.ObjsMove2(1, 0.0, 0.0, -200.0, 40, 1, 1.0)
		event.ObjsMove2(2, 0.0, 0.0, -200.0, 40, 1, 1.0)
	end
	if helper_f7fba8ce(world_coord_rot, vm.f32(3.14), 1.0) == 0 then
		print("\n\n\nROT_3.14\n\n\n")
		event.ObjsMove2(1, 0.0, 0.0, 200.0, 40, 1, 1.0)
		event.ObjsMove2(2, 0.0, 0.0, 200.0, 40, 1, 1.0)
	end
	if helper_f7fba8ce(world_coord_rot, vm.f32(1.57), 1.0) == 0 then
		print("\n\n\nROT_1.57\n\n\n")
		event.ObjsMove2(1, -200.0, 0.0, 0.0, 40, 1, 1.0)
		event.ObjsMove2(2, -200.0, 0.0, 0.0, 40, 1, 1.0)
	end
	if helper_f7fba8ce(world_coord_rot, vm.f32(-1.57), 1.0) == 0 then
		print("\n\n\nROT_-1.57\n\n\n")
		event.ObjsMove2(1, 200.0, 0.0, 0.0, 40, 1, 1.0)
		event.ObjsMove2(2, 200.0, 0.0, 0.0, 40, 1, 1.0)
	end
	wait_frames(30)
	event.SetFadeOut(30)
	wait_frames(60)
	event.SetMotion(0, "立ち")
	event.Finish()
end

return helper_212dd708
