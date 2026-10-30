--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_ee93982c(arg0: any)
	event.DelReference(33)
	event.CharaActive(0, 33)
	event.CmrsSetPos(-33.79, 30.18, -157.21)
	event.CmrsSetRef(24.92, 17.88, -150.76)
	event.ObjsSetMotion(0, "スターブル見L", 4)
	event.EohSetShow(1, 1)
	event.EohSetShow(2, 0)
	event.ObjsSetMotion(1, "会話2", 6)
	event.ObjsNextMotion(1, "立ち", 0)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050250)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050260)
	event.ResetPakuAnim()
	event.ObjsSetMotion(1, "会話2", 2)
	event.ObjsNextMotion(1, "立ち", 0)
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1050261)
	event.ResetPakuAnim()
	wait_objects(1)
	event.ObjsSetMotion(1, "立ち")
	wait_objects(1)
	wait_frames(10)
	event.ObjsSetMotion(0, "うなづく", 6)
	event.ObjsMotionWait(0)
	wait_objects(0)
	wait_frames(15)
end

return helper_ee93982c
