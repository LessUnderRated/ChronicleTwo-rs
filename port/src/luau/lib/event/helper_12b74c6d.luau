--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_c8c8b790 = require("@lib/event/helper_c8c8b790")

--- Helper function.
local function helper_12b74c6d(arg0: s32)
	local count: s32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	event.SphidaSetStatusFlag(0)
	event.DeleteChara(12)
	event.DelExtMotion(0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.EohSyncChara(0, 2)
	event.EohSetShow(0, 1)
	event.SetCameraCtrl(1)
	event.DeleteSwordEffect()
	event.SetStatusbarShow(1.0)
	event.SetCrossfade(15)
	count = event.SphidaGetParCount() or count
	if arg0 == 0 and count <= 0 then
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
		helper_c8c8b790(0, 2003, 8, 0, 0)
		event.ResetCamera(1)
	end
	event.Finish()
end

return helper_12b74c6d
