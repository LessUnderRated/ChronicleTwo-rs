--!strict
-- Shared event helper used by 7 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")

--- Helper function.
local function helper_1d3c7c62(arg0: s32, arg1: s32, arg2: s32)
	local argc: s32 = 0
	local argc_2: s32 = 0
	local argc_3: s32 = 0
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	if arg0 == 1 or arg0 == 2 then
		helper_75684dd8(0, 2750, 8, 0, 0)
	end
	if arg0 == 1 and arg1 ~= 2 then
		argc = event.GetSysSndId() or argc
		event.SndSePlay(argc, 18)
		helper_75684dd8(0, 2760, 8, 0, 0)
	end
	if arg1 == 2 or arg1 == 3 then
		helper_75684dd8(0, vm.i32(2700 + arg2), 8, 0, 0)
	end
	if arg0 == 1 and arg1 == 2 then
		argc_2 = event.GetSysSndId() or argc_2
		event.SndSePlay(argc_2, 18)
		event.MesMake_2(0, "メダル２個入手！！")
		helper_75684dd8(0, -1, 8, 0, 0)
	elseif arg1 == 2 then
		argc_3 = event.GetSysSndId() or argc_3
		event.SndSePlay(argc_3, 18)
		helper_75684dd8(0, 2760, 8, 0, 0)
	end
end

return helper_1d3c7c62
