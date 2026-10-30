--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_e846995c()
	local argc: s32 = 0
	event.SetCharaMaxhp(0, 240)
	event.SetCharaMaxhp(1, 240)
	event.SetCharaDefence(0, 94)
	event.SetCharaDefence(1, 94)
	argc = event.GetItemNum(270) or argc
	if argc < 20 then
		event.AddItem(270, vm.i32(20 - argc))
	end
	event.AddItem(20)
	event.SetCharaEquip(0, 20)
	event.AddItem(33)
	event.SetCharaEquip(0, 33)
	event.AddItem(60)
	event.SetCharaEquip(1, 60)
	event.AddItem(96)
	event.SetCharaEquip(1, 96)
end

return helper_e846995c
