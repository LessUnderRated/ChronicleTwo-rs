--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_5fb66cb1 = require("@lib/event/helper_5fb66cb1")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_c292fa16 = require("@lib/event/helper_c292fa16")
local helper_ce85b54c = require("@lib/event/helper_ce85b54c")
local helper_d355d559 = require("@lib/event/helper_d355d559")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_ced7968c()
	local flag: s32 = 0
	local argc: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local item: s32 = 0
	local var5: s32 = 0
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	local var10: s32 = 0
	event.Initialize()
	event.DngPause(1, 1)
	helper_ce85b54c()
	flag = event.GetFlag(616) or flag
	if flag == 0 then
		event.SetMesWindowMode(0, 4)
		event.SetMesShippo(0, 0)
		helper_75684dd8(0, 9, 8, 0, 0)
		event.DngPause(1, 0)
		event.Finish()
		return
	end
	argc = event.GetLocalFlag(4) or argc
	if argc == 0 then
		var2 = event.GetEventData_2(6) or var2
		if var2 == 1 then
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 0)
			var3 = helper_c292fa16(0, 8, 5, 256, 208, var3)
			event.SetMesWindowMode(0, 1)
			event.SetMesShippo(0, 1)
			if var3 == 1 then
				var2 = 2
			end
		end
		if var2 == 2 then
			event.SetStatusbarShow(0, 0.16666667)
			wait_frames(6)
			event.GotoUseItem2(0, 362)
			vm.wait(4)
			item = vmhost.used_item() or item
			if item == 362 then
				event.SetLocalFlag(4, 1)
				var5 = event.GetEventData_2(9) or var5
				event.EohSyncObj_3(0, var5, "star-m0")
				event.EohSetShow(0, 0)
				event.EohSyncObj_3(0, var5, "d02wa13-a")
				event.EohSetShow(0, 0)
				event.FuncPointShow(var5, "star", 0)
				world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
					helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
				event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
				event.AssignStack(5)
				event.ClearStack(5)
				event.EohSyncChara(0, 0)
				event.ObjsInit(0)
				event.ObjsSyncObj(0, 0)
				event.ObjsReference(0, 0.0, 0.0, 0.0, 0)
				event.LoadChara(5, "event/dng/key_star.gltf", "star", 12)
				event.CharaActive(12)
				event.EohSyncChara(1, 12)
				event.ObjsSyncObj(1, 1)
				event.EohSetPos(1, 0.0, 0.0, 160.0)
				event.EohSetRot(1, 0.0, 0.0, 0.0)
				event.EohSetScale(1, 20.0, 20.0, 20.0)
				var10 = event.SndLoadSound_3(8, "snd2/sp/sp_014.sound.json") or var10
				event.SndSePlay(var10, 0)
				event.ObjsSetScale(1, 20.0, 0.0, 20.0, 60)
				event.CmrsSetPos(-31.46, 57.29, 350.67)
				event.CmrsSetRef(4.66, 31.72, 192.41)
				event.SetCharaShow(12, 0, 1, 0.02)
				wait_frames(60)
				event.DeleteChara(12)
			elseif item <= 0 then
				event.Finish()
			else
				helper_5fb66cb1()
			end
		end
		event.SetStatusbarShow(1, 0.16666667)
		wait_frames(6)
	end
	event.DngPause(1, 0)
	event.Finish()
end

return helper_ced7968c
