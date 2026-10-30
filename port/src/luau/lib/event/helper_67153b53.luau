--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_67153b53(arg0: any)
	local projection: f32 = 0
	event.CmrsSetPos(-0.29, 27.55, -25.02)
	event.CmrsSetRef(-1.02, 29.45, -94.81)
	event.GetProjection(projection)
	event.SetProjection(871.9)
	event.SetCharaPos(34, 0.22, 5.19, -94.18)
	event.SetCharaRot(34, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(2, "前を見るL", 4)
	wait_objects(2)
	event.SetPakuAnim(2, "通常口パク")
	helper_4116e6bb(1090120)
	event.ResetPakuAnim()
	wait_objects(2)
	event.SetProjection(projection)
end

return helper_67153b53
