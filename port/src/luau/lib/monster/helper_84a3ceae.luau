--!strict
-- Shared monster helper used by 2 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_cbe4d8e2 = require("@lib/monster/helper_cbe4d8e2")

--- Helper function.
local function helper_84a3ceae()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var4: f32 = 0
	local var6: f32 = 0
	do
		local out1, out2, out3 = monster.GetPos_3()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	do
		local _, out2, _ = monster.GetRot()
		var4 = out2 or var4
	end
	var6 = vm.f32(var4 + vm.f32(3.1415927))
	if var6 > vm.f32(3.1415927) then
		var6 = vm.f32(var6 - vm.f32(6.2831855))
	end
	if var6 <= vm.f32(-3.1415927) then
		var6 = vm.f32(var6 + vm.f32(6.2831855))
	end
	pos_x = vm.f32(pos_x + vm.f32(100.0 * vm.sin(var6)))
	pos_z = vm.f32(pos_z + vm.f32(100.0 * vm.cos(var6)))
	monster.SetAttrib(32, 1)
	monster.SetMos("ステップ後", -1, 2)
	monster.SetNextPos(pos_x, pos_y, pos_z, 6.0, 6.0)
	helper_cbe4d8e2()
	monster.ResetMove()
	monster.SetAttrib(32, 0)
	monster.SetMos("立ち", -1, 0)
end

return helper_84a3ceae
