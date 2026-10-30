--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_bfb26927(arg0: any)
	event.CmrsSetPos(-501.66, 281.73, -144.66)
	event.CmrsSetRef(-757.43, 150.05, -3.21)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -739.96, 133.89, -9.49)
	event.ObjsSetRot(0, 0.0, 1.2, 0.0)
	event.CharaActive(1, 9)
	event.ObjsSetPos(1, -739.96, 133.89, -9.49)
	event.ObjsSetRot(1, 0.0, 1.2, 0.0)
	event.ObjsSetMotion(0, "歩き（スティーブ）", 4, -1.0, 1)
	event.ObjsSetMotion(1, "歩き（スティーブ）", 4)
	event.ObjsRotation(0, 0.0, -1.44, 0.0, 20)
	event.ObjsRotation(1, 0.0, -1.44, 0.0, 20)
	event.CmrsFadeInit()
	event.CmrsFadeDelay(100)
	event.CmrsFadeOut(50, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(0, "歩き（スティーブ）", 4)
	event.ObjsSetMotion(1, "歩き（スティーブ）", 4)
	event.ObjsMove(0, -915.85, 133.64, -6.02, 150)
	event.ObjsMove(1, -915.85, 133.64, -6.02, 150)
	wait_objects(0)
	wait_objects(1)
	wait_camera()
	event.CmrsFadeInit()
	event.CmrsFadeOut(50, 0.0, 0.0, 0.0)
	wait_camera()
end

return helper_bfb26927
