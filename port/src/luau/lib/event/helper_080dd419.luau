--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_080dd419()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local rot_x: f32 = 0
	local rot_y: f32 = 0
	local rot_z: f32 = 0
	local var9: f32 = 0
	local var10: s32 = 0
	local var11: s32 = 0
	event.ActchrSetDefMotion(0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_2("event/e700/e728/rasen_iwa.gltf", "snd2/sp/sp_049.sound.json")
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
	end
	do
		local out1, out2, out3 = event.EohGetPos(0)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	do
		local out1, out2, out3 = event.EohGetRot(0)
		rot_x = out1 or rot_x
		rot_y = out2 or rot_y
		rot_z = out3 or rot_z
	end
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	var9 = event.GetRefAngle(var0, var1, var2, pos_x, pos_y, pos_z) or var9
	var9 = vm.f32(var9 - vm.f32(3.1415927))
	var9 = event.AngleLimit(var9) or var9
	var10 = 0
	while var10 < 20 do
		event.CtrlcRotBack(var9)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var10 = var10 + 1
		vm.wait(1)
	end
	helper_479dc9e9()
	var11 = event.SndLoadSound_3(8, "snd2/sp/sp_049.sound.json") or var11
	event.LoadChara(5, "event/e700/e728/rasen_iwa.gltf", "info", 8)
	event.CharaActive(1, 8)
	event.SetCharaPos(8, pos_x, pos_y + 20.0, pos_z)
	event.SetCharaRot(8, rot_x, rot_y, rot_z)
	event.SetMotion(8, "岩消える", 6, 0.6)
	event.SndSePlay(var11, 0)
	event.ObjsMove2(0, pos_x, pos_y - 260.0, pos_z, 60, 1, 1.0)
	event.ResetCamera(0)
	wait_objects(0)
	wait_frames(30)
	event.DeleteChara(8)
	event.Finish()
end

return helper_080dd419
