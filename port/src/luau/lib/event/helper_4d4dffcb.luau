--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_4d4dffcb()
	local parts_id: s32 = 0
	local var1: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	event.Initialize()
	parts_id = event.GetDoorPartsId() or parts_id
	event.EohSyncFuncp(0, parts_id, "key")
	var1 = event.EohGetShow(0) or var1
	if parts_id < 0 or var1 == 0 then
		return
	end
	event.EohSyncObj_2(22, parts_id)
	do
		local out1, out2, out3 = event.EohGetPos(22)
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	event.MinimapDoorEnable(pos_x, pos_y, pos_z)
	event.EohSyncObj_3(23, parts_id, "d02d05_1-m0")
	event.EohSetShow(23, 0)
	event.EohSyncObj_3(24, parts_id, "d02da05-a")
	event.EohSetShow(24, 0)
	event.EohSyncObj_3(25, parts_id, "d02dv05-c")
	event.EohSetShow(25, 0)
	event.FuncPointShow(parts_id, "key", 0)
end

return helper_4d4dffcb
