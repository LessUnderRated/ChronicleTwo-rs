--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_113adf71(arg0: any)
	event.CmrsSetPos(51.28, 21.78, -97.62)
	event.CmrsSetRef(50.16, 19.92, -141.52)
	event.ObjsSetPos(0, 58.4, -0.02, -135.54)
	event.ObjsSetRot(0, 0.0, -2.3, 0.0)
	event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
	event.ObjsSetPos(1, 36.44, -0.02, -151.98)
	event.ObjsSetRot(1, 0.0, 0.69, 0.0)
	event.ObjsSetMotion(1, "立ち", 4, -1.0, 1)
	event.SetCharaPos(25, 62.85, 11.43, -176.07)
	event.SetCharaRot(25, 0.0, -0.72, 0.0)
	wait_frames(15)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050530)
	event.ResetPakuAnim()
end

return helper_113adf71
