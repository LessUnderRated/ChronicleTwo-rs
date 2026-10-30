--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_21e37ba4()
	local flag: s32 = 0
	event.Initialize()
	flag = event.GetFlag(202) or flag
	if flag == 0 then
		event.FuncPointShow("", "fc_event_202", 1)
	else
		event.FuncPointShow("", "fc_event_202", 0)
		event.EohSyncObj_2(0, "p01_train01")
		event.EohSetShow(0, 0)
	end
end

return helper_21e37ba4
