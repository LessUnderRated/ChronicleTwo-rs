--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_6fc8ed77 = require("@lib/event/helper_6fc8ed77")

--- Helper function.
local function helper_4541d180()
	local var2: s32 = 0
	local flag: s32 = 0
	event.DngSetStageId(1)
	event.GotoMenu(3, 1)
	vm.wait(1)
	do
		local _, _, out3, _ = event.GetMenuParam_4()
		var2 = out3 or var2
	end
	vm.wait(2)
	if var2 == 0 then
		helper_6fc8ed77()
	else
		if var2 == 6 then
			event.MapJump_3(-1, "s05", 100)
			vm.wait(4)
			return
		end
		flag = event.GetFlag(212) or flag
		if var2 == 2 and flag == 0 or var2 == 14 then
			event.BgmLoadCancel()
		end
		event.GotoDng(1, var2, 1010)
	end
end

return helper_4541d180
