--!strict
-- Shared event helper used by 8 scripts, translated by tools/luau/stb2luau.

local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local set_window_mode = require("@lib/event/set_window_mode")

--- Helper function.
local function helper_1edf2b0f()
	local var0: s32 = 0
	local flag: s32 = 0
	var0 = event.GetEventData_2(13) or var0
	set_window_mode(0, 1)
	flag = event.GetFlag(648) or flag
	if flag == 0 then
		event.MesMake_2(0, "Te esperar[UNI00e9] aqu[UNI00ed].\nEspero que salga todo bien.")
	else
		event.MesMake_2(0, "Esperar[UNI00e9] aqu[UNI00ed].\nEnc[UNI00e1]rgate de [UNI00e9]l.")
	end
	helper_1c04a0eb(var0, -1, 0, 0)
end

return helper_1edf2b0f
