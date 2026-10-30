--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_c86b34db(se_id: s32)
	event.CharaActive(0, 11)
	event.CharaActive(1, 35)
	event.ObjsTexAnime(0, 0)
	event.ObjsTexAnime(0, 1, "おどろき顔")
	event.ObjsTexAnime(0, 1, "おどろき目パチ")
	event.SndSePlay(se_id, 6)
	event.ObjsSetMotion(0, "振り返る", 6)
	event.ObjsResetDaPosition(0)
	event.ObjsNextMotion(0, "振り返るL", 0)
	event.ObjsSetMotion(1, "立ち", 4)
	event.ObjsSetMotion(3, "立ち", 4)
	wait_frames(23)
end

return helper_c86b34db
