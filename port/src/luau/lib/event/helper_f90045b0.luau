--!strict
-- Shared event helper used by 84 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_f90045b0(se_id: s32)
	local count: s32 = 0
	count = event.SphidaGetParCount() or count
	count = vm.i32(count - 1)
	event.SphidaSetParCount(count)
	if count <= 0 then
		event.DeleteChara(8)
		event.DeleteChara(9)
		event.DeleteChara(10)
		event.DeleteChara(11)
		event.SphidaSetPlayFlag(0)
		if se_id ~= -1 then
			event.SndSePlay(se_id, 19)
		end
	end
end

return helper_f90045b0
