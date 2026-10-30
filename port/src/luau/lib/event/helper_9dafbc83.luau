--!strict
-- Shared event helper used by 216 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_9dafbc83(pos_x: f32, pos_y: f32, pos_z: f32, rot_y: f32)
	event.SetCharaPos(0, pos_x, pos_y, pos_z)
	event.SetCharaRot(0, 0.0, rot_y, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
end

return helper_9dafbc83
