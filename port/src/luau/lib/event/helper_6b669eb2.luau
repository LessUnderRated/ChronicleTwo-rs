--!strict
-- Shared event helper used by 3 scripts, translated by tools/luau/stb2luau.

local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_6b669eb2(se_id: s32)
	event.SndSeStop(se_id, 1)
	event.SndSePlay(se_id, 4)
	event.CmrsSetPos(-133.46, 84.21, 3.17)
	event.CmrsSetRef(44.81, 76.82, -5.13)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -240.84, 50.51, -5.32)
	event.ObjsSetRot(0, 0.0, 1.6, 0.0)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4)
	event.CharaActive(1, 9)
	event.ObjsSetPos(1, -240.84, 50.51, -5.32)
	event.ObjsSetRot(1, 0.0, 1.6, 0.0)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4)
	event.CharaActive(1, 10)
	event.ObjsSetPos(2, 10.66, 50.0, -0.04)
	event.ObjsSetRot(2, 0.0, -1.56, 0.0)
	event.ObjsSetScale(2, 1.2, 1.2, 1.2)
	event.PlayBgm(0)
	event.CmrsQuakeDelay(6)
	event.CmrsQuake(0.0, 1.5, 0.0, 24)
	event.CmrsPrdelay(30)
	event.CmrsSetPos(82.22, 91.62, -68.3)
	event.CmrsSetRef(-234.51, 58.39, 145.67)
	event.ObjsSetMotion(2, "着地", 6)
	event.ObjsMotionWait(2)
	helper_888ab2a3(43)
	event.SndSePlay(se_id, 5)
	wait_objects(2)
	wait_camera()
end

return helper_6b669eb2
