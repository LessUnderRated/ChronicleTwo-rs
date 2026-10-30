--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_3d7d594a(arg0: any)
	event.CmrsSetPos(-33.29, 24.37, -167.32)
	event.CmrsSetRef(40.27, 15.44, -159.28)
	event.ObjsSetPos(0, 18.58, -1.12, -168.14)
	event.ObjsSetRot(0, 0.0, 0.92, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4, -1.0, 1)
	event.ObjsSetPos(1, 38.77, -0.02, -147.68)
	event.ObjsSetRot(1, 0.0, -2.16, 0.0)
	wait_frames(20)
	event.CmrsFadeInit()
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	wait_frames(15)
	event.ObjsSetMotion(1, "会話2", 6)
	event.ObjsNextMotion(1, "立ち", 0)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050340)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050341)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050350)
	event.ResetPakuAnim()
end

return helper_3d7d594a
