--!strict
-- Shared monster helper used by 3 scripts, translated by tools/luau/stb2luau.

local helper_5c86001d = require("@lib/monster/helper_5c86001d")

--- Helper function.
local function helper_3dad8a79()
	monster.SetAttrib(32, 0)
	monster.ResetMove()
	monster.SetShrowEnd()
	helper_5c86001d(10)
	monster.ResetMotion()
end

return helper_3dad8a79
