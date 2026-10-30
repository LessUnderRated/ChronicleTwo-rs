--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_a0fc6040(arg0: any)
	local projection: f32 = 0
	event.CmrsSetPos(-51.29, 55.13, -119.05)
	event.CmrsSetRef(-104.92, 14.85, -202.28)
	projection = event.GetProjection() or projection
	event.SetProjection(524.9)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -119.73, -13.05, -196.93)
	event.ObjsSetRot(0, 0.0, 1.49, 0.0)
	event.CharaActive(1, 34)
	event.ObjsSetPos(2, -85.21, -13.05, -197.85)
	event.ObjsSetRot(2, 0.0, -1.68, 0.0)
	event.CharaActive(1, 35)
	event.ObjsSetPos(3, -119.73, -13.05, -196.93)
	event.ObjsSetRot(3, 0.0, 1.49, 0.0)
	event.EohSetShow(11, 1)
	event.ObjsSetMotion(0, "下見立ち", 4)
	event.ObjsSetMotion(3, "下見立ち", 4)
	event.ObjsSetMotion(2, "上見立ち", 4)
	wait_frames(15)
	event.ObjsSetMotion(2, "上見会話", 6)
	event.ObjsNextMotion(2, "上見立ち", 0)
	event.SetPakuAnim(2, "大口パク")
	helper_4116e6bb(1060060)
	event.ResetPakuAnim()
	event.SetProjection(projection)
end

return helper_a0fc6040
