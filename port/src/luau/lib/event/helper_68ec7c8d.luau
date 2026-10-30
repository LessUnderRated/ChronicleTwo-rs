--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_68ec7c8d()
	local argc: s32 = 0
	argc = event.GetItemHaveNum(386) or argc
	if argc >= 1 then
		event.FuncPointShow("", "memo", 0)
		event.EohSyncObj_2(0, "memo")
		event.EohSetShow(0, 0)
	end
end

return helper_68ec7c8d
