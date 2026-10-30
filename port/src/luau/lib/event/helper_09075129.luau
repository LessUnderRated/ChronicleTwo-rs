--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_09075129()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local rot_y: f32 = 0
	local var8: s32 = 0
	local active_chr_no: s32 = 0
	local var10: s32 = 0
	local var11: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	event.Ext(1035, 8, var1, var2, var3, var4) -- retail: the handler rejects 5 arguments
	var4 = vm.bits_float(event.GetEventData_2(11)) or var4
	var0 = event.GetEventData_2(9) or var0
	event.EohSyncChara(0, 0)
	do
		local _, out2, _ = event.EohGetRot(0)
		rot_y = out2 or rot_y
	end
	event.ObjsSyncObj(0, 0)
	var8 = event.AngleCmp(rot_y, var4, 0.1) or var8
	if var8 ~= 0 then
		event.ObjsRotation(0, 0.0, var4, 0.0, 10)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMotionDelay(0, 10)
	end
	event.ObjsSetMotion(0, "立ち")
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.SetLoadbgFile_4(
			"event/dng_inout/c01d02gkey.gltf",
			"event/dng_inout/d02nkey_h.gltf",
			"event/dng_inout/kumonosu.gltf",
			"snd2/sp/sp_028.sound.json"
		)
	else
		event.SetLoadbgFile_4(
			"event/dng_inout/c02d02gkey.gltf",
			"event/dng_inout/d02nkey_h.gltf",
			"event/dng_inout/kumonosu.gltf",
			"snd2/sp/sp_028.sound.json"
		)
	end
	var4 = vm.f32(var4 + vm.f32(3.1415927))
	var4 = event.AngleLimit(var4) or var4
	var10 = 0
	while var10 < 30 do
		event.SetFcameraFollow(var1, var2 + 40.0, var3)
		event.CtrlcMoveRange(18.0, 10.0, 200.0, 220.0)
		event.CtrlcRotBack(var4)
		event.CtrlcMoveCamera(0)
		event.CtrlcStep()
		var10 = var10 + 1
		vm.wait(1)
	end
	helper_479dc9e9()
	event.LoadChara(5, "event/dng_inout/d02nkey_h.gltf", "info", 12)
	if active_chr_no == 0 then
		event.LoadMotion(5, "event/dng_inout/c01d02gkey.gltf", "info", 0)
		event.SetReference(0, "ef00", 12)
	else
		event.LoadMotion(5, "event/dng_inout/c02d02gkey.gltf", "info", 0)
		event.SetReference(0, "sword_hand", 12)
	end
	event.CharaActive(12)
	event.LoadChara(5, "event/dng_inout/kumonosu.gltf", "info", 13)
	event.SetCharaPos(13, var1, var2 + 20.0, var3)
	event.SetCharaRot(13, 0.0, var4, 0.0)
	var11 = event.SndLoadSound_3(8, "snd2/sp/sp_028.sound.json") or var11
	event.EohSyncChara(1, 1)
	event.EohSetShow(1, 0)
	event.ObjsSetMotion(0, "d02くもの巣取り", 2)
	event.ObjsNextMotion(0, "立ち", 4)
	wait_frames(20)
	event.SndSePlay(var11, 0)
	event.CharaActive(1, 13)
	event.SetMotion(13, "巣消える", 6)
	wait_objects(0)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DelExtMotion(0)
	event.SetMotion(0, "立ち", 4)
	event.ResetCamera(0)
	event.EohSyncChara(1, 1)
	event.EohSetShow(1, 1)
	event.EohSyncObj_2(2, var0)
	do
		local out1, out2, out3 = event.EohGetPos(2)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.MinimapDoorEnable(pos_x, pos_y, pos_z)
	event.EohSyncObj_3(3, var0, "d02d05_1-m0")
	event.EohSetShow(3, 0)
	event.EohSyncObj_3(4, var0, "d02da05-a")
	event.EohSetShow(4, 0)
	event.EohSyncObj_3(5, var0, "d02dv05-c")
	event.EohSetShow(5, 0)
	event.FuncPointShow(var0, "key", 0)
	event.CtrlcMoveRange(18.0, 10.0, 100.0, 160.0)
	event.SetCrossfade(30)
	wait_frames(30)
end

return helper_09075129
