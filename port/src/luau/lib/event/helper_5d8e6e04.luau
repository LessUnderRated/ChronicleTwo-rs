--!strict
-- Shared event helper used by 285 scripts, translated by tools/luau/stb2luau.

local helper_76f23193 = require("@lib/event/helper_76f23193")

--- Helper function.
local function helper_5d8e6e04(arg0: any, arg1: f32, arg2: any, arg3: any)
	if arg3 ~= 0 then
		helper_76f23193(arg0, arg1)
	end
	event.SetMotion(arg0, "立ち")
	event.Finish()
	if arg2 ~= 0 then
		event.SetCrossfade(10)
	end
end

return helper_5d8e6e04
