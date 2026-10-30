--!strict
-- Shared monster helper used by 3 scripts, translated by tools/luau/stb2luau.

local helper_20ea05b8 = require("@lib/monster/helper_20ea05b8")

--- Helper function.
local function helper_56a4eab4(arg0: s32)
	monster.ResetMove()
	monster.ResetMotion()
	monster.SetMos("立ち", -1, 4)
	helper_20ea05b8(arg0)
end

return helper_56a4eab4
