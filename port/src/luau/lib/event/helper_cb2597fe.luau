--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_cb2597fe(se_id: s32)
	event.CmrsSetPos(50.99, 20.54, -99.77)
	event.CmrsSetRef(50.2, 23.69, -140.94)
	event.ObjsSetPos(0, 59.55, -1.12, -135.97)
	event.ObjsSetRot(0, 0.0, -2.24, 0.0)
	event.ObjsSetMotion(0, "スターブル見L", 4, -1.0, 1)
	event.ObjsSetPos(1, 38.77, -0.02, -147.68)
	event.ObjsSetRot(1, 0.0, 0.72, 0.0)
	event.ObjsSetMotion(1, "立ち", 4)
	event.ObjsSetPos(2, 62.85, 11.43, -176.07)
	event.ObjsSetRot(2, 0.0, -0.72, 0.0)
	wait_frames(30)
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.SndSePlay(se_id, 2)
	event.ObjsSetMotion(1, "ガッツポーズ", 2)
	event.ObjsNextMotion(1, "立ち")
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050360)
	event.ResetPakuAnim()
end

return helper_cb2597fe
