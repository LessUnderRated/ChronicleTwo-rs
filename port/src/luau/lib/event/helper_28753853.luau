--!strict
-- Shared event helper used by 10 scripts, translated by tools/luau/stb2luau.

local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_28753853(se_id: s32)
	event.CmrsSetPos(-44.56, 149.8, 16.49)
	event.CmrsSetRef(29.9, 155.39, 35.57)
	event.CharaActive(0, 0)
	event.CharaActive(0, 9)
	event.CharaActive(1, 10)
	event.ObjsSetRot(2, 0.0, -1.32, 0.0)
	event.ObjsSetScale(2, 1.2, 1.2, 1.2)
	event.ObjsSetMotion(2, "立ち", 4)
	event.CharaActive(1, 11)
	event.ObjsSetPos(3, 35.03, 137.05, 41.92)
	event.ObjsSetRot(3, 0.0, -1.92, 0.0)
	event.SndSePlay(se_id, 6)
	event.ObjsSetMotion(3, "まわる", 6)
	event.ObjsNextMotion(3, "会話")
	event.SetPakuAnim(3, "わらい口パク")
	helper_4116e6bb(1080070)
	event.ResetPakuAnim()
	event.ObjsSetRot(3, 0.0, -1.56, 0.0)
	event.SndSePlay(se_id, 8)
	event.ObjsSetMotion(2, "パオーン", 6)
	event.ObjsNextMotion(2, "立ち", 0)
	event.ObjsSetMotion(3, "指差す", 6)
	event.CmrsMove2(-158.84, 98.6, 40.59, 12.88, 114.56, 18.64, 10, 1, 0.3)
	event.SetPakuAnim(3, "わらい口パク")
	helper_1584c528(1080075, 100)
	event.ResetPakuAnim()
	wait_objects(2)
	wait_objects(3)
end

return helper_28753853
