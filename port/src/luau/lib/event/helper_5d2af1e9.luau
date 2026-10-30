--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_5d2af1e9()
	local flag: s32 = 0
	flag = event.GetFlag(372) or flag
	if flag == 1 then
		event.EohSyncObj_2(0, "p09_s04")
		event.EohSetShow(0, 0)
	end
end

return helper_5d2af1e9
