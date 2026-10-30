--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local show_message = require("@lib/event/show_message")

--- Helper function.
local function helper_1a913ea2(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	event.SetMotion(arg1, "立ち")
	event.MesMake_2(0, "Umm. Este [UNI00e1]rbol... Le pasa\nalgo. Tengo que hacer algo.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(0, "[(!)]Tendr[UNI00e1]s que hablar con\nGordon para atraer su atenci[UNI00f3]n.")
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
end

return helper_1a913ea2
