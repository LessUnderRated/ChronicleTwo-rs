--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local helper_acde31fa = require("@lib/event/helper_acde31fa")

--- Helper function.
local function helper_4734c9b2(arg0: s32)
	event.DngPause(8192, arg0)
	helper_acde31fa(if arg0 == 0 then 1 else 0)
	if arg0 == 0 then
		event.ActchrSetDefMotion(0, 4)
	end
	event.SetCharaChangeMask(2, if arg0 == 0 then 1 else 0)
	event.SetCharaChangeMask(3, if arg0 == 0 then 1 else 0)
	event.SetBitCtrl(1, arg0)
end

return helper_4734c9b2
