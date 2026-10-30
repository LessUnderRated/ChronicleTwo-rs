--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_b6a7e21d = require("@lib/event/helper_b6a7e21d")

--- Helper function.
local function helper_b3865473()
	local var0: s32 = 0
	local var1: s32 = 0
	local flag: s32 = 0
	local flag_2: s32 = 0
	event.SetMesWindowMode(0, 1)
	var0 = event.GetEventData_2(13) or var0
	var1 = event.GetEventData_2(14) or var1
	print("[talk_chara]", var1, "\n")
	print("[talk_chara_id]", var1, "\n")
	if var1 == 1 then
		helper_b6a7e21d(var0, var1)
	end
	if var1 == -1 then
		flag = event.GetFlag(6) or flag
		flag_2 = event.GetFlag(7) or flag_2
		if flag == 1 and flag_2 == 0 then
			vm.wait(2)
			event.LoadScript("i01h01/i01h01c_1.stb", 520)
		end
	end
end

return helper_b3865473
