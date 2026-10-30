--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_d355d559 = require("@lib/event/helper_d355d559")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_0ba2b71d()
	local var0: s32 = 0
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: s32 = 0
	event.Initialize()
	event.SetFadeOut(10)
	wait_frames(10)
	var0 = event.SndLoadSound_3(8, "snd2/sp/sp_032.sound.json") or var0
	event.AssignStack(5)
	event.ClearStack(5)
	world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
		helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.LoadChara(5, "event/d03/p00_26a.gltf", "info", 12)
	event.CharaActive(12)
	event.EohSyncChara(1, 12)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.SetStatus(1, 12, 8, 1)
	event.LoadItem(5, 341, "info", 13)
	event.CharaActive(13)
	event.EohSyncChara(2, 13)
	event.ObjsInit(2)
	event.ObjsSyncObj(2, 2)
	event.ObjsSetPos(0, 0.0, 0.0, 90.0)
	event.ObjsSetRot(0, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(0, "持ち上げ停止", 4, -1.0, 1)
	event.ObjsSetPos(1, 0.0, 172.0, -192.0)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "肉つかみ", 4)
	event.ObjsSetPos(2, 0.0, 31.0, 90.0)
	event.ObjsSetRot(2, 0.0, 3.14, 0.0)
	event.SndSePlay(var0, 0)
	event.SetCharaShow(1, 0)
	event.SetCharaShow(2, 0)
	event.CmrsInit()
	event.CmrsSetPos(-43.92, 11.08, 211.68)
	event.CmrsSetRef(-1.94, 50.04, 41.38)
	event.SetFadeIn(30)
	var6 = -6.0
	var7 = 16.0
	var8 = 0
	while var8 < 76 do
		event.ObjsAddPos(1, 0.0, var6, 3.8157895)
		var6 = vm.f32(var6 * vm.f32(0.958))
		var8 = var8 + 1
		vm.wait(2)
	end
	event.CmrsSetPos(-45.71, 26.34, 49.83)
	event.CmrsSetRef(1.77, 54.14, 135.5)
	event.SetFadeOut(30)
	event.ObjsAddPos(1, 0.0, 0.0, -8.0)
	var6 = vm.f32(0.14)
	var7 = vm.f32(1.6)
	var8 = 0
	while var8 < 30 do
		event.ObjsAddPos(0, 0.0, var6 + vm.f32(0.6), var7)
		event.ObjsAddPos(1, 0.0, var6, var7)
		event.ObjsAddPos(2, 0.0, var6 + vm.f32(0.6), var7)
		var6 = vm.f32(var6 * vm.f32(1.06))
		var7 = vm.f32(var7 * vm.f32(1.06))
		var8 = var8 + 1
		vm.wait(3)
	end
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.Finish()
end

return helper_0ba2b71d
