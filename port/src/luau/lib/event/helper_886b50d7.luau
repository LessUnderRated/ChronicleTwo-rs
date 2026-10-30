--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_886b50d7(se_id: s32)
	event.CmrsSetPos(-129.32, 99.43, 13.13)
	event.CmrsSetRef(-44.6, 102.72, 11.17)
	event.CharaActive(0, 0)
	event.CharaActive(0, 9)
	event.CharaActive(1, 10)
	event.ObjsSetPos(2, 9.11, 50.0, -10.14)
	event.ObjsSetRot(2, 0.0, -1.44, 0.0)
	event.ObjsSetScale(2, 1.2, 1.2, 1.2)
	event.ObjsSetMotion(2, "立ち", 4)
	event.CharaActive(1, 11)
	event.ObjsSetPos(3, 1.54, 105.26, 40.3)
	event.ObjsSetRot(3, 0.0, -1.8, 0.0)
	event.ObjsSetMotion(3, "オーッホッホ", 4)
	event.CmrsFadeInit()
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.SndSePlay(se_id, 1)
	event.ObjsSetMotion(2, "パオーン", 6)
	event.ObjsNextMotion(2, "立ち", 0)
	event.SetPakuAnim(3, "わらい口パク")
	helper_4116e6bb(1080040)
	event.ResetPakuAnim()
	event.SetPakuAnim(3, "わらい口パク")
	helper_4116e6bb(1080041)
	event.ResetPakuAnim()
	event.SetPakuAnim(3, "わらい口パク")
	helper_4116e6bb(1080042)
	event.ResetPakuAnim()
	wait_objects(2)
	wait_objects(3)
end

return helper_886b50d7
