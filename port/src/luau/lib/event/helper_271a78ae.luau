--!strict
-- Shared event helper used by 3 scripts, translated by tools/luau/stb2luau.

local helper_c8c8b790 = require("@lib/event/helper_c8c8b790")

--- Helper function.
local function helper_271a78ae(arg0: any, arg1: s32)
	local var2: s32 = 0
	local argc: s32 = 0
	event.SetMesPreset(1, 4)
	event.SetMesWindowMode(1, 4)
	if arg1 <= 0 then
		return
	end
	if arg1 == 1 then
		var2 = 10
		event.SetMesItem(1, 1, arg0)
	end
	if 1 < arg1 then
		var2 = 11
		event.SetMesItem(1, 1, arg0)
		event.SetMesValue(1, 2, arg1)
	end
	argc = event.GetSysSndId() or argc
	event.SndSePlay(argc, 18)
	helper_c8c8b790(1, var2, 8, 0, 0)
end

return helper_271a78ae
