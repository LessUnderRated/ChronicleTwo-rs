--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_796ab4a2(se_id: s32)
	local projection: f32 = 0
	event.CmrsSetPos(17.24, 26.0, -9.56)
	event.CmrsSetRef(5.22, 26.46, -42.09)
	event.ObjsSetPos(1, -4.35, 5.29, -42.32)
	event.ObjsSetRot(1, 0.0, 2.92, 0.0)
	event.ObjsSetMotion(1, "そうじゃ！L")
	event.ObjsSetPos(2, 0.22, 5.19, -94.18)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(2, "前を見るL", 4)
	wait_objects(1)
	wait_objects(2)
	event.ObjsSetMotion(1, "そうじゃ！会話", 6)
	event.ObjsNextMotion(1, "そうじゃ！L")
	event.SetPakuAnim(1, "大口パク")
	helper_4116e6bb(1090210)
	event.ResetPakuAnim()
	wait_objects(1)
	event.ObjsTexAnime(2, 1, "目あき～目とじ")
	event.ObjsSetMotion(2, "考える", 6, 0.08)
	event.ObjsMotionWait(2)
	event.ObjsResetMotion(2)
	event.ObjsSetMotion(2, "下向き立ち")
	event.SetPakuAnim(2, "通常口パク")
	helper_4116e6bb(1090220)
	event.ResetPakuAnim()
	wait_objects(2)
	event.SndSePlay(se_id, 5)
	event.ObjsSetMotion(1, "そうじゃ！会話", 6)
	event.ObjsNextMotion(1, "そうじゃ！L")
	event.SetPakuAnim(1, "大口パク")
	helper_4116e6bb(1090230)
	event.ResetPakuAnim()
	wait_objects(1)
	wait_frames(60)
	event.SetProjection(projection)
end

return helper_796ab4a2
