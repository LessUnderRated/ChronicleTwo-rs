--!strict
-- Shared event helper used by 42 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1c04a0eb = require("@lib/event/helper_1c04a0eb")

--- Helper function.
local function helper_313d0b27()
	local var0: s32 = 0
	local var1: s32 = 0
	local argc: s32 = 0
	event.SetMesWindowMode(0, 1)
	event.SetMesShippo(0, 1)
	do
		local out1, out2 = event.GetMonsterTalkData_2()
		var0 = out1 or var0
		var1 = out2 or var1
	end
	if var1 < 0 then
		vm.wait(1)
		return
	end
	event.DngPause(4096, 1)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFileMonsTalk()
	while true do
		argc = event.CheckLoadbgFile() or argc
		if argc == 0 then
			break
		else
			vm.wait(2)
		end
	end
	event.LoadMesMonsTalk(0, 5)
	event.MesMake_2(0, var1)
	helper_1c04a0eb(var0, -1, 0, 1)
	event.LoadMes(0, -1)
	event.DngPause(4096, 0)
end

return helper_313d0b27
