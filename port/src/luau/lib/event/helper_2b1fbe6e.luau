--!strict
-- Shared event helper used by 7 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")

--- Helper function.
local function helper_2b1fbe6e()
	local var0: any = 0
	local active_chr_no: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local box_pos_x: f32 = 0
	local box_pos_y: f32 = 0
	local box_pos_z: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	event.SetMesWindowMode(0, 5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.SetMesQuestionGyou(0, 0)
		var0 = helper_bac0e30d(0, 2002, 8, 256, 208, 2, 1)
	else
		event.SetMesQuestionGyou(0, 0)
		event.MesMake_2(0, "Muovere Max verso la Sphera?")
		var0 = helper_bac0e30d(0, -1, 8, 256, 208, 2, 1)
	end
	vm.wait(3)
	if var0 == 0 then
		do
			local out1, out2, out3 = event.SphidaGetBallPos()
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.SphidaGetPinPos()
		do
			local out1, out2, out3, out4 = event.GetPartsFuncPos(pos_x, pos_y, pos_z, 100.0, "point")
			var2 = out1 or var2
			var10 = out2 or var10
			var11 = out3 or var11
			var12 = out4 or var12
		end
		if var2 == 0 then
			do
				local out1, out2, out3 = event.GetPartsOrigin(pos_x, pos_y, pos_z, 100.0)
				var10 = out1 or var10
				var11 = out2 or var11
				var12 = out3 or var12
			end
		end
		var3 = 0
		do
			local out1, out2, out3, out4 = event.GetNearTboxPos(var10, var11, var12)
			box_pos_x = out1 or box_pos_x
			box_pos_y = out2 or box_pos_y
			box_pos_z = out3 or box_pos_z
			var2 = out4 or var2
		end
		while var2 >= 0 do
			do
				local out1, out2, out3 = event.CopyVector(var10, var11, var12)
				var17 = out1 or var17
				var18 = out2 or var18
				var19 = out3 or var19
			end
			do
				local out1, out2, out3 = event.SubVector(var17, var18, var19, box_pos_x, box_pos_y, box_pos_z)
				var17 = out1 or var17
				var18 = out2 or var18
				var19 = out3 or var19
			end
			var17 = vm.f32(var17 + 1.0)
			var19 = vm.f32(var19 + 1.0)
			do
				local out1, out2, out3 = event.NormalVector(var17, var18, var19)
				var17 = out1 or var17
				var18 = out2 or var18
				var19 = out3 or var19
			end
			do
				local out1, out2, out3 = event.ScaleVector(var17, var18, var19, 30.1)
				var17 = out1 or var17
				var18 = out2 or var18
				var19 = out3 or var19
			end
			do
				local out1, out2, out3 = event.CopyVector(box_pos_x, box_pos_y, box_pos_z)
				var10 = out1 or var10
				var11 = out2 or var11
				var12 = out3 or var12
			end
			do
				local out1, out2, out3 = event.AddVector(var10, var11, var12, var17, var18, var19)
				var10 = out1 or var10
				var11 = out2 or var11
				var12 = out3 or var12
			end
			var3 = var3 + 1
			if var3 > 6 then
				break
			else
				do
					local out1, out2, out3, out4 = event.GetNearTboxPos(var10, var11, var12)
					box_pos_x = out1 or box_pos_x
					box_pos_y = out2 or box_pos_y
					box_pos_z = out3 or box_pos_z
					var2 = out4 or var2
				end
			end
		end
		var20 = event.GetRefAngle(var10, var11, var12, pos_x, pos_y, pos_z) or var20
		event.SetCharaPos(0, var10, var11, var12)
		event.SetCharaRot(0, 0.0, var20, 0.0)
		event.SetCameraRef(var10, var11 + 30.0, var12)
		var20 = vm.f32(var20 - vm.f32(3.1415927))
		var20 = event.AngleLimit(var20) or var20
		var10 = vm.f32(vm.f32(vm.sin(var20) * 100.0) + var10)
		var11 = vm.f32(var11 + 30.0)
		var12 = vm.f32(vm.f32(vm.cos(var20) * 100.0) + var12)
		event.SetCameraPos(var10, var11, var12)
		event.SetFcameraFollowOfs(0.0, 30.0, 0.0)
		event.SetFcameraHeight(5.0)
		event.SetFcameraDist(160.0)
		event.SetCameraSpeed(6.0)
		event.CtrlcSetRotCancel(1)
		event.CtrlcMoveRange(18.0, 10.0, 100.0, 160.0)
		event.ResetCamera(0)
	end
end

return helper_2b1fbe6e
