--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")
local helper_82963f1e = require("@lib/event/helper_82963f1e")

--- Helper function.
local function helper_981199f4()
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
	event.MesMake_2(0, "Hola.\nQu[UNI00e9] buen tiempo, [UNI00bf]no?")
	helper_82963f1e(0, var2)
	helper_1c04a0eb(var1, -1, 0, 0)
	event.SetAi(1, var1)
end

return helper_981199f4
