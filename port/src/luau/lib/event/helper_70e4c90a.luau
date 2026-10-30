--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_70e4c90a(arg0: any)
	local projection: f32 = 0
	event.CmrsSetPos(1.35, 30.21, -27.45)
	event.CmrsSetRef(0.24, 29.22, -88.19)
	event.GetProjection(projection)
	event.SetProjection(950.9)
	event.CharaActive(1, 34)
	event.ObjsSetPos(2, 0.22, 5.19, -94.18)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(2, "座り", 4)
	event.CharaActive(0, 35)
	event.EohSetShow(13, 1)
	event.ObjsSetMotion(2, "立ちあがる", 6)
	event.ObjsNextMotion(2, "立ちあがるL")
	wait_objects(2)
	event.SetPakuAnim(2, "通常口パク")
	helper_4116e6bb(1090010)
	event.ResetPakuAnim()
	event.SetProjection(projection)
end

return helper_70e4c90a
