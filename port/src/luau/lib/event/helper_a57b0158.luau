--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_a57b0158()
	local flag: s32 = 0
	local debug_flag: s32 = 0
	flag = event.GetFlag(306) or flag
	if flag ~= 1 then
		debug_flag = event.GetDebugFlag() or debug_flag
		if debug_flag == 0 then
			event.CharaActive(0, 120)
			event.CharaActive(0, 121)
		end
	end
	event.GeoramaFunc(2)
end

return helper_a57b0158
