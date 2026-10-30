--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_3d13e6aa(arg0: s32)
	event.Initialize()
	vm.wait(1)
	event.EohSyncObj_3(0, "p01_s19", "s19_02-a0")
	event.EohSetShow(0, arg0)
	event.Finish()
end

return helper_3d13e6aa
