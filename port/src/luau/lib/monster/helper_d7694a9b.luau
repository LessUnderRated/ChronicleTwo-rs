--!strict
-- Shared monster helper used by 3 scripts, translated by tools/luau/stb2luau.

local helper_79d6eaca = require("@lib/monster/helper_79d6eaca")

--- Helper function.
local function helper_d7694a9b()
	monster.Ext(72) -- retail: the handler rejects 0 arguments
	helper_79d6eaca()
	monster.GetBaseAttack_0()
	monster.SetModelLightSwitch(0)
end

return helper_d7694a9b
