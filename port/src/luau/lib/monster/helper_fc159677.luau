--!strict
-- Shared monster helper used by 3 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_fc159677()
	local value: s32 = 0
	value = monster.VPop(7) or value
	monster.VPush(7, vm.i32(value + 1))
end

return helper_fc159677
