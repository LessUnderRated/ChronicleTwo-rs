--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_a38ff937(arg0: any)
	event.CharaActive(0, 11)
	event.CharaActive(1, 33)
	event.SpriteSetPutsize(1, 512.0, 416.0)
	event.SpriteSetDraw(1, 1)
	event.ObjsSetPos(11, 256.0, 208.0, 10.0)
	event.ObjsSetColor(11, 128.0, 128.0, 128.0, 128.0, 15)
	wait_frames(15)
	event.SpriteSetDraw(0, 0)
	helper_4116e6bb(2030060)
end

return helper_a38ff937
