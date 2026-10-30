--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_68186cf4(arg0: s32)
	event.Initialize()
	event.EohSyncObj_3(0, "p01_s06", "s06_02-a0")
	event.EohSyncObj_3(1, "p01_s06", "s06_03-a0")
	if arg0 ~= 0 then
		event.EohSetShow(0, 1)
		event.EohSetShow(1, 1)
	else
		event.EohSetShow(0, 0)
		event.EohSetShow(1, 0)
	end
end

return helper_68186cf4
