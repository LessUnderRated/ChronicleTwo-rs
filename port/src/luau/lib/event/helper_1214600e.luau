--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_ce837ecc = require("@lib/event/helper_ce837ecc")

--- Helper function.
local function helper_1214600e()
	local var2: s32 = 0
	event.DngSetStageId(0)
	event.GotoMenu(3, 0)
	vm.wait(1)
	do
		local _, _, out3, _ = event.GetMenuParam_4()
		var2 = out3 or var2
	end
	if var2 == 0 then
		event.MapJump_2(-1, "d01e01")
		vm.wait(2)
	elseif var2 == 8 then
		helper_ce837ecc()
	else
		event.GotoDng(0, var2, 1010)
	end
end

return helper_1214600e
