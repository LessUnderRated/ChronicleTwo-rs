--!strict
-- Shared event helper used by 10 scripts, translated by tools/luau/stb2luau.

local close_message = require("@lib/event/close_message")

--- Helper function.
local function helper_61258276()
	event.CharaActive(0)
	event.SetMesEtc(1, 4, -1, -1, -1, -1)
	event.SetMesEtc(1, 9, -1, -1)
	close_message(1)
	event.Finish()
end

return helper_61258276
