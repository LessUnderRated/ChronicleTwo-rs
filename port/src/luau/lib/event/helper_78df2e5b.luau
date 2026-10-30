--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_78df2e5b(arg0: any)
	event.CmrsSetPos(-350.38, 95.45, -59.38)
	event.CmrsSetRef(-418.26, 93.83, -69.21)
	event.ObjsSetMotion(0, "上見戻り", 6, 0.06)
	event.ObjsSetMotion(1, "上見戻り", 6, 0.06)
	event.ObjsMotionWait(0)
	event.ObjsMotionWait(1)
	wait_objects(0)
	wait_objects(1)
	event.ObjsResetMotion(0)
	event.ObjsResetMotion(1)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4, -1.0)
	event.ObjsSetMotion(1, "立ち（スティーブ）", 4, -1.0)
	event.CmrsMove2(-376.98, 95.45, -63.23, -418.26, 93.83, -69.21, 150, 2, 0.4)
	helper_4116e6bb(1080030)
	helper_4116e6bb(1080033)
	wait_camera()
end

return helper_78df2e5b
