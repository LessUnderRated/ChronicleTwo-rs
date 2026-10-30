--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_9146482d()
	local var0: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	var0 = event.GetCnt(14) or var0
	event.EohSyncObj_2(0, "p09_f0401")
	do
		local out1, out2, out3 = event.EohGetPos(0)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.EohSyncObj_2(1, "p24_f0401")
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	if var0 == 0 then
		pos_y = 0.0
		pos_y_2 = 0.0
	end
	if var0 == 1 then
		pos_y = 1160.0
		pos_y_2 = 1160.0
	end
	if var0 == 2 then
		pos_y = 2320.0
		pos_y_2 = 2320.0
	end
	event.EohSetPos(0, pos_x, pos_y, pos_z)
	event.EohSetPos(1, pos_x_2, pos_y_2, pos_z_2)
end

return helper_9146482d
