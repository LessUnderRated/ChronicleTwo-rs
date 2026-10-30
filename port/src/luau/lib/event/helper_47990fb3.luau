--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_3300e99f = require("@lib/event/helper_3300e99f")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")

--- Helper function.
local function helper_47990fb3(arg0: f32, arg1: s32)
	local var2: s32 = 0
	helper_3300e99f(arg0)
	event.SetMotion(0, "立ち")
	var2 = event.GetSndId(2) or var2
	if arg1 ~= 0 then
		event.SndSePlay(var2, 92)
	else
		event.SndSePlay(var2, 94)
	end
	event.SetFadeOut(30)
	helper_888ab2a3(30)
end

return helper_47990fb3
