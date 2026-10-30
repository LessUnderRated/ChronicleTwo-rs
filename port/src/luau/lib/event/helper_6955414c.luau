--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_01df4541 = require("@lib/event/helper_01df4541")
local helper_68ec7c8d = require("@lib/event/helper_68ec7c8d")

--- Helper function.
local function helper_6955414c()
	local flag: s32 = 0
	event.SetFlag(40, 1)
	flag = event.GetFlag(4) or flag
	if flag == 1 then
		helper_01df4541()
	end
	helper_68ec7c8d()
end

return helper_6955414c
