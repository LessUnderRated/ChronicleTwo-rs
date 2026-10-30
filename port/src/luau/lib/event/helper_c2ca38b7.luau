--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_c2ca38b7(se_id: s32)
	local count: s32 = 0
	count = event.SphidaGetParCount() or count
	count = vm.i32(count - 1)
	event.SphidaSetParCount(count)
	if count <= 0 then
		event.CharaActive(0, 8)
		event.CharaActive(0, 9)
		if se_id ~= -1 then
			event.SndSePlay(se_id, 19)
		end
	end
end

return helper_c2ca38b7
