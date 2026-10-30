--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local helper_747c054f = require("@lib/event/helper_747c054f")

--- Helper function.
local function helper_73f4575b()
	local var1: s32 = 0
	local var2: s32 = 0
	event.GetControlChrid()
	var1 = event.GetEventData_2(13) or var1
	var2 = event.GetEventData_2(14) or var2
	print("talk_chara_id=", var1, "talk_chara=", var2, "\n")
	event.CtrlcStay()
	event.SetAi(0, var1)
	event.SetMesShippo(0, 1)
	event.SetMesPreset(0, 0)
	event.MesMake_2(0, "Bonjouuuur.\nBeau temps, non ?")
	helper_747c054f(0, var2)
	helper_1c04a0eb(var1, -1, 0, 0)
	event.SetAi(1, var1)
end

return helper_73f4575b
