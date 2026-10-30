--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_718a1dd5(arg0: any)
	event.CmrsSetPos(-271.29, 59.56, -1912.06)
	event.CmrsSetRef(-269.4, 60.62, -1886.34)
	event.CharaActive(1, 34)
	event.ObjsSetPos(2, -257.07, 36.72, -1857.99)
	event.ObjsSetRot(2, 0.0, -3.12, 0.0)
	event.ObjsSetMotion(2, "立ち", 4)
	event.CharaActive(1, 35)
	event.ObjsSetPos(3, -281.38, 36.72, -1863.87)
	event.ObjsSetRot(3, 0.0, 2.92, 0.0)
	event.ObjsSetMotion(3, "ボルネオを見る", 6)
	event.ObjsNextMotion(3, "ボルネオを見るL", 0)
	wait_objects(3)
	event.SetPakuAnim(3, "口パク")
	helper_4116e6bb(1090280)
	event.ResetPakuAnim()
	event.ObjsSetMotion(2, "トムを見る", 2)
	event.ObjsNextMotion(2, "トムを見るL")
	event.SetPakuAnim(2, "口パク")
	helper_4116e6bb(1090290)
	event.ResetPakuAnim()
	event.ObjsSetMotion(3, "了解っす", 6)
	event.SetPakuAnim(3, "口パク")
	helper_4116e6bb(1090300)
	event.ResetPakuAnim()
end

return helper_718a1dd5
