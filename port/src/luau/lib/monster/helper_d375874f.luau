--!strict
-- Shared monster helper used by 4 scripts, translated by tools/luau/stb2luau.

local helper_20ea05b8 = require("@lib/monster/helper_20ea05b8")

--- Helper function.
local function helper_d375874f()
	monster.SetAttrib(32, 0)
	monster.ResetMove()
	monster.SetShrowEnd()
	helper_20ea05b8(10)
	monster.ResetMotion()
end

return helper_d375874f
