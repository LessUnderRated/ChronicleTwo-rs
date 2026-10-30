--!strict
-- Shared event helper used by 12 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_658b1052()
	event.Initialize()
	event.SetMesWindowMode(0, 1)
	event.SetAi(1, 24)
	event.CharaActive(1, 0)
	event.CharaActive(1, 24)
	event.ResetCamera(1)
	event.SetFadeIn(30)
end

return helper_658b1052
