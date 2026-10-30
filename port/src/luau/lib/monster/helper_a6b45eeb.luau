--!strict
-- Shared monster helper used by 3 scripts, translated by tools/luau/stb2luau.

local helper_442b9962 = require("@lib/monster/helper_442b9962")
local helper_93495fdf = require("@lib/monster/helper_93495fdf")
local helper_bee0409d = require("@lib/monster/helper_bee0409d")

--- Helper function.
local function helper_a6b45eeb()
	monster.SetIntFlag(1, 1)
	monster.SetIntFlag(2, 1)
	monster.ResetMotion()
	monster.ResetMove()
	helper_442b9962()
	helper_93495fdf()
	helper_bee0409d()
	monster.SetActStatus(1)
end

return helper_a6b45eeb
