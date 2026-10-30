--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")

--- Helper function.
local function helper_38bce8cf(arg0: any)
	event.SpriteSetPutsize(0, 512.0, 416.0)
	event.SpriteSetDraw(0, 1)
	event.ObjsSetPos(10, 256.0, 208.0, 10.0)
	event.ObjsSetColor(10, 128.0, 128.0, 128.0, 128.0, 30)
	helper_4116e6bb(2030050)
end

return helper_38bce8cf
