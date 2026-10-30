--!strict
-- Shared event helper used by 8 scripts, translated by tools/luau/stb2luau.

local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local set_window_mode = require("@lib/event/set_window_mode")

--- Helper function.
local function helper_bac5d242()
	local var0: s32 = 0
	local flag: s32 = 0
	var0 = event.GetEventData_2(13) or var0
	set_window_mode(0, 1)
	flag = event.GetFlag(648) or flag
	if flag == 0 then
		event.MesMake_2(0, "I'll wait for you here.\nI hope it all goes well.")
	else
		event.MesMake_2(0, "I'll wait here.\nMake sure you get him.")
	end
	helper_1c04a0eb(var0, -1, 0, 0)
end

return helper_bac5d242
