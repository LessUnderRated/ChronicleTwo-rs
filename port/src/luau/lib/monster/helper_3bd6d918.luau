--!strict
-- Shared monster helper used by 3 scripts, translated by tools/luau/stb2luau.

local helper_c3e8ae39 = require("@lib/monster/helper_c3e8ae39")

--- Helper function.
local function helper_3bd6d918()
	monster.SetScoop(32, 0)
	monster.Ext(72) -- retail: the handler rejects 0 arguments
	monster.Ext(143) -- retail: command 143 is not registered
	helper_c3e8ae39(10)
	monster.GetBaseAttack_0()
end

return helper_3bd6d918
