--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_acde31fa(arg0: s32)
	event.EohSyncChara(0, 1)
	event.EohSyncChara(1, 2)
	event.EohSetShow(0, arg0)
	event.EohSetShow(1, arg0)
	event.SetStatusbarShow(arg0, 1.0)
end

return helper_acde31fa
