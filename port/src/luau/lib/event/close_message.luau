--!strict
-- Shared event helper used by 920 scripts, translated by tools/luau/stb2luau.

--- Hides a message window's cursor, closes it and resets its position.
local function close_message(window: any)
	event.SetMesCursor(window, -1)
	event.MesClose(window)
	event.SetMesPos(window, 0)
end

return close_message
