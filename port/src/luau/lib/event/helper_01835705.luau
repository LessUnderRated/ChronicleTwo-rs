--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_01835705()
	local var0: s32 = 0
	event.Initialize()
	vm.wait(1)
	var0 = event.GetEventData_2(9) or var0
	event.EohSyncObj_3(0, var0, "d07w10_5-m0")
	event.EohSetShow(0, 1)
	event.EohSyncObj_3(1, var0, "d07w10_4-m0")
	event.EohSetShow(1, 0)
	event.Finish()
end

return helper_01835705
