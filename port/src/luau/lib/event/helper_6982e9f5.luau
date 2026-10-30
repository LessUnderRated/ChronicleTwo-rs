--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local open_message = require("@lib/event/open_message")

--- Helper function.
local function helper_6982e9f5()
	local language_code: s32 = 0
	event.SetMesWindowMode(1, 7)
	event.SetMesPreset(1, 2)
	language_code = event.GetLanguage() or language_code
	if language_code == 0 then
		event.MesMake_2(1, "(O)でストップ")
	else
		event.MesMake_2(1, "It stops with (O) button.")
	end
	open_message(1, -1, 15, 0, 0)
end

return helper_6982e9f5
