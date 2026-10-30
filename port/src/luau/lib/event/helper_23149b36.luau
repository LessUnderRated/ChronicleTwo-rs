--!strict
-- Shared event helper used by 11 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1ebb0be6 = require("@lib/event/helper_1ebb0be6")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_562b5326 = require("@lib/event/helper_562b5326")
local helper_5c12934f = require("@lib/event/helper_5c12934f")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_84fa6e6c = require("@lib/event/helper_84fa6e6c")
local helper_87cf4648 = require("@lib/event/helper_87cf4648")
local helper_9594e622 = require("@lib/event/helper_9594e622")
local helper_9a2a4514 = require("@lib/event/helper_9a2a4514")
local helper_b3cde08e = require("@lib/event/helper_b3cde08e")
local helper_e1007dd8 = require("@lib/event/helper_e1007dd8")
local helper_e6c23a00 = require("@lib/event/helper_e6c23a00")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_23149b36(arg0: s32, count: s32)
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local count_2: s32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	local var14: s32 = 0
	local stage_id: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.DngPause(535, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		do
			local out1, out2, out3, out4 = event.GetDunWorldCoord(1)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
			var5 = out4 or var5
		end
		event.SetWorldCoord(var2, var3, var4, var5)
		at = 1
		vm.wait(1)
		if arg0 >= 0 then
			event.SetLoadbgFile_3(arg0, 1, "effect/itemget.gltf")
		else
			event.SetLoadbgFile_1("effect/itemget.gltf")
		end
		event.SetTbAngle(0.0)
		event.SetTbStatus(2)
		event.CmrsInit()
		event.CmrsSetPos(0.0, 29.0, 57.0)
		event.CmrsSetRef(0.0, 10.0, 0.0)
		event.CmrsMove(0.0, 22.27, 41.0, 0.0, 14.27, 0.0, 80)
		at = 2
		wait_frames(15)
		at = 3
		helper_84fa6e6c(0)
		at = 4
		wait_frames(5)
		at = 5
		helper_479dc9e9()
		event.LoadChara(5, "effect/itemget.gltf", "info", 12)
		event.CharaActive(12)
		event.EohSyncChara(1, 12)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, 0.0, 0.0, 0.0)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(1, "ゲット", 6)
		at = 6
		wait_frames(5)
		at = 7
		var6 = helper_562b5326(var6)
		if arg0 >= 0 then
			event.LoadItem(5, arg0, "info", 13, 1)
			event.CharaActive(1, 13)
			event.EohSyncChara(0, 13)
			var7 = helper_e6c23a00(13, arg0, var7)
			event.EohSetScale(0, var7, var7, var7)
			event.SetCharaShow(13, 1, 1, 0.1)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.ObjsSetPos(0, 0.0, -2.5, 0.0)
			event.ObjsSetRot(0, 0.0, 0.0, 0.0)
			event.ObjsPosDelay(0, 4)
			event.ObjsJump(0, 0.0, 17.0, 0.0, -0.3, 20)
			event.ObjsJump(0, 0.0, 17.0, 0.0, -0.4, 8)
			event.ObjsJump(0, 0.0, 17.0, 0.0, -0.2, 5)
		end
		at = 8
		var6 = helper_1ebb0be6(var6)
		at = 9
		wait_camera()
		if arg0 >= 0 then
			argc = 0
			argc_2 = 0
			count_2 = event.CheckGetItemLimit(arg0, count) or count_2
			if count_2 >= 1 then
				event.AddItem(arg0, count_2)
				at = 10
				helper_9594e622(arg0, count_2)
			else
				event.SetMesWindowMode(0, 4)
				event.SetMesDrawspeed(0, 1)
				event.SetMesItem(0, 1, arg0)
				event.MesMake_2(0, "Hai trovato [アイテム１],\nma non hai spazio sufficiente.")
				at = 11
				helper_75684dd8(0, -1, 8, 0, 0)
				event.SetMesDrawspeed(0, 0)
			end
			argc = event.CheckGetItemLimit() or argc
			argc_2 = event.CheckItemOver() or argc_2
			print("CHECK_GET_ITEM_LIMIT = ", argc, "\n")
			print("CHECK_ITEM_OVER      = ", argc_2, "\n")
			if argc_2 >= 1 then
				event.SetFadeOut(10)
				at = 12
				wait_frames(10)
				event.GotoMenu(17)
				at = 13
				vm.wait(13)
			end
		else
			event.SetMesWindowMode(0, 4)
			event.SetMesDrawspeed(0, 1)
			at = 14
			helper_75684dd8(0, 2240, 8, 0, 0)
			event.SetMesDrawspeed(0, 0)
		end
		event.CharaActive(1, 0)
		event.DeleteChara(12)
		event.DeleteChara(13)
		event.SetTbAngle(1.0)
		event.SetCrossfade(10)
		event.SetWorldCoord(0.0, 0.0, 0.0, 0.0)
		do
			local out1, out2, out3 = event.GetBeforeCameraNextPos()
			position_x = out1 or position_x
			position_y = out2 or position_y
			position_z = out3 or position_z
		end
		event.SetCameraPos(position_x, position_y, position_z)
		do
			local out1, out2, out3 = event.GetBeforeCameraNextRef()
			position_x = out1 or position_x
			position_y = out2 or position_y
			position_z = out3 or position_z
		end
		event.SetCameraRef(position_x, position_y, position_z)
		event.ResetCamera(0)
		var14 = event.GetTrialVersion() or var14
		stage_id = event.DngGetStageId() or stage_id
		if arg0 == 306 and (stage_id == 0 or var14 == 1) then
			event.SetMesWindowMode(0, 4)
			at = 15
			helper_75684dd8(0, 2250, 8, 0, 0)
		end
		event.DngPause(535, 0)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 15 then
			if at == 7 then
				var6 = received[2] :: number
			end
			if at == 8 then
				var6 = received[2] :: number
			end
			if at <= 1 then
				wait_frames_skipping(15)
			end
			if at <= 2 then
				helper_87cf4648(0)
			end
			if at <= 3 then
				wait_frames_skipping(5)
			end
			if at <= 4 then
				helper_344d6cd8()
			end
			if at <= 5 then
				wait_frames_skipping(5)
			end
			if at <= 6 then
				var6 = helper_e1007dd8(var6)
			end
			if at <= 7 then
				var7 = helper_b3cde08e(13, arg0, var7)
				var6 = helper_9a2a4514(var6)
			end
			if at <= 8 then
				helper_344d6cd8()
			end
			if at <= 9 then
				argc = 0
				argc_2 = 0
				helper_5c12934f(arg0, count_2)
			end
			if at <= 10 then
				helper_ee1c51d0(0, -1, 8, 0, 0)
			end
			if at <= 11 then
				print("CHECK_GET_ITEM_LIMIT = ", argc, "\n")
				print("CHECK_ITEM_OVER      = ", argc_2, "\n")
				wait_frames_skipping(10)
			end
			if at <= 13 then
				helper_ee1c51d0(0, 2240, 8, 0, 0)
			end
			if at <= 14 then
				helper_ee1c51d0(0, 2250, 8, 0, 0)
			end
			return 0
		end
		return nil
	end)
end

return helper_23149b36
