--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_a15114f7()
	local flag: s32 = 0
	flag = event.GetFlag(209) or flag
	if flag == 0 then
		event.FuncPointShow("p01_g010701", "door", 0)
	else
		event.FuncPointShow("p01_g010701", "door", 1)
	end
	flag = event.GetFlag(250) or flag
	if flag == 1 then
		event.CharaActive(1, 120)
		event.CharaActive(1, 121)
	else
		event.CharaActive(0, 120)
		event.CharaActive(0, 121)
	end
end

return helper_a15114f7
