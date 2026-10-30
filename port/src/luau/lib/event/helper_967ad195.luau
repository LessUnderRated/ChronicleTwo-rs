--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_967ad195(se_id: s32)
	event.ObjsTexAnime(0, 0)
	event.ObjsTexAnime(0, 1, "無表情")
	event.ObjsTexAnime(0, 1, "目パチ")
	event.ObjsSetMotion(0, "上見立ち", 4, -1.0, 1)
	event.ObjsSetColor(13, 0.0, 0.0, 0.0, 15)
	wait_frames(15)
	event.SpriteSetDraw(3, 0)
	event.CmrsMove2(10.91, 58.61, 33.87, 1.64, 58.99, 18.19, 300, 2, 0.4)
	helper_4116e6bb(2030090)
	event.ObjsTexAnime(0, 1, "眉真剣")
	helper_4116e6bb(2030100)
	event.StopBgm(0)
	event.SndSePlay(se_id, 5)
	event.CmrsQuake(0.0, 0.8, 0.0, 45)
	wait_frames(45)
end

return helper_967ad195
