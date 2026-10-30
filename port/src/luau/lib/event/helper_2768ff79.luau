--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_2768ff79(arg0: any)
	event.CmrsSetPos(24.93, 29.64, -79.63)
	event.CmrsSetRef(-8.31, 36.32, -96.0)
	event.SetCharaPos(34, 0.05, 10.14, -94.36)
	event.SetCharaRot(34, 0.0, 0.0, 0.0)
	event.ObjsTexAnime(2, 0)
	event.ObjsTexAnime(2, 1, "目とじ～目あけ")
	event.ObjsSetMotion(2, "下向き立ち", 4)
	wait_objects(2)
	event.ObjsTexAnime(2, 0)
	event.ObjsTexAnime(2, 1, "しんけん顔")
	event.SetPakuAnim(2, "通常口パク")
	helper_4116e6bb(1090190)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "通常口パク")
	helper_4116e6bb(1090200)
	event.ResetPakuAnim()
end

return helper_2768ff79
