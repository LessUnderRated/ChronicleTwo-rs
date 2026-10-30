--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_60979549()
	local flag: s32 = 0
	flag = event.GetFlag(207) or flag
	if flag == 1 then
		flag = event.GetFlag(208) or flag
		if flag == 0 then
			event.SetFadeOut(0)
			vm.wait(1)
			event.LoadScript("g01/g01b_1.stb", 501)
		end
	end
end

return helper_60979549
