--!strict
-- Shared event helper used by 42 scripts, translated by tools/luau/stb2luau.

local helper_75684dd8 = require("@lib/event/helper_75684dd8")

--- Helper function.
local function helper_03a1d6f1(arg0: s32)
	local stage_id: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	local count: s32 = 0
	local position_x_2: f32 = 0
	local position_y_2: f32 = 0
	local position_z_2: f32 = 0
	event.SphidaSetStatusFlag(0)
	event.DeleteChara(12)
	event.EsmClear()
	event.DelExtMotion(0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.EohSyncChara(0, 2)
	event.EohSetShow(0, 1)
	event.SetCameraCtrl(1)
	event.DeleteSwordEffect()
	event.SetStatusbarShow(1, 0.1)
	event.SetCrossfade(15)
	if arg0 == 1 then
		stage_id = event.DngGetStageId() or stage_id
		var2 = event.DngGetFloorId() or var2
		var3 = event.GetFloorInfo(stage_id, var2, 4) or var3
		if var3 == 1 then
			var3 = event.GetSysSndId() or var3
			event.SndSePlay(var3, 18)
			event.SetFloorInfo(stage_id, var2, 5, 128)
			event.AddYarikomiMedal(1)
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
			event.SetMesWindowMode(0, 4)
			helper_75684dd8(0, 2010, 8, 0, 0)
			event.SetActiveCmrid(1)
			event.SetBeforeCmrid(0)
			event.SetFcameraFollowOfs(0.0, 30.0, 0.0)
			event.SetFcameraHeight(5.0)
			event.SetFcameraDist(160.0)
			event.SetCameraSpeed(6.0)
			event.CtrlcSetRotCancel(1)
			event.CtrlcMoveRange(18.0, 10.0, 100.0, 160.0)
			event.ResetCamera(0)
		end
	end
	count = event.SphidaGetParCount() or count
	if arg0 == 0 and count <= 0 then
		do
			local out1, out2, out3 = event.GetBeforeCameraNextPos()
			position_x_2 = out1 or position_x_2
			position_y_2 = out2 or position_y_2
			position_z_2 = out3 or position_z_2
		end
		event.SetCameraPos(position_x_2, position_y_2, position_z_2)
		do
			local out1, out2, out3 = event.GetBeforeCameraNextRef()
			position_x_2 = out1 or position_x_2
			position_y_2 = out2 or position_y_2
			position_z_2 = out3 or position_z_2
		end
		event.SetCameraRef(position_x_2, position_y_2, position_z_2)
		event.SetMesWindowMode(0, 4)
		helper_75684dd8(0, 2003, 8, 0, 0)
		event.ResetCamera(0)
	end
	event.Finish()
end

return helper_03a1d6f1
