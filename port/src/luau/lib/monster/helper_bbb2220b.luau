--!strict
-- Shared monster helper used by 3 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_3fb0bb95 = require("@lib/monster/helper_3fb0bb95")
local helper_79d6eaca = require("@lib/monster/helper_79d6eaca")

--- Helper function.
local function helper_bbb2220b()
	monster.Ext(119, 1, 1) -- retail: the handler rejects 2 arguments
	monster.Ext(119, 2, 1) -- retail: the handler rejects 2 arguments
	monster.GetBaseAttack_0()
	monster.Ext(72) -- retail: the handler rejects 0 arguments
	helper_79d6eaca()
	helper_3fb0bb95()
	vm.wait()
end

return helper_bbb2220b
