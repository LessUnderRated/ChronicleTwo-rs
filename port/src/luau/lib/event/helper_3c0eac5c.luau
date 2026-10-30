--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_7a587a35 = require("@lib/event/helper_7a587a35")

--- Helper function.
local function helper_3c0eac5c()
	local var0: s32 = 0
	var0 = event.GetAnalyze(206) or var0
	event.FuncPointShow("", "door02", var0)
	var0 = event.GetAnalyze(207) or var0
	event.FuncPointShow("", "door03", var0)
	helper_7a587a35()
end

return helper_3c0eac5c
