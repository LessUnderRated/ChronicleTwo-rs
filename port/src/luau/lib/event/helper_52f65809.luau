--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_52f65809(arg0: any)
	event.CmrsSetPos(-46.87, 29.18, -9.44)
	event.CmrsSetRef(3.87, 26.86, -60.12)
	event.ObjsSetPos(1, -0.19, 5.43, -35.38)
	event.ObjsSetRot(1, 0.0, 3.04, 0.0)
	event.ObjsSetPos(2, 0.22, 5.19, -94.18)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "立ち", 4)
	event.ObjsSetMotion(2, "下向き立ち", 4)
	event.SetFadeIn(30)
	wait_frames(30)
	event.SetPakuAnim(2, "通常口パク")
	helper_4116e6bb(1090090)
	event.ResetPakuAnim()
end

return helper_52f65809
