--!strict
-- Shared event helper used by 66 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_2f8ace6d(chara_no: s32, arg1: any, arg2: f32)
	local var4: f32 = 0
	event.GetItemType(arg1)
	var4 = event.GetAdjustPolygonScale(chara_no, 4.0) or var4
	arg2 = var4
	return arg2
end

return helper_2f8ace6d
