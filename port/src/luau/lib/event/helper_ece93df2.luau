--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_ece93df2(arg0: any)
	event.SpriteSetPutsize(2, 512.0, 416.0)
	event.SpriteSetDraw(2, 1)
	event.ObjsSetPos(12, 256.0, 208.0, 10.0)
	event.ObjsSetColor(12, 128.0, 128.0, 128.0, 128.0, 15)
	wait_frames(15)
	event.SpriteSetDraw(1, 0)
	helper_4116e6bb(2030070)
	helper_4116e6bb(2030073)
end

return helper_ece93df2
