--!strict
-- Shared monster helper used by 2 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_cbe4d8e2 = require("@lib/monster/helper_cbe4d8e2")

--- Helper function.
local function helper_df35a2a4()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var4: f32 = 0
	local target: f32 = 0
	local target_2: f32 = 0
	local target_3: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local argc: s32 = 0
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
	argc = monster.GetRnd(100) or argc
	if argc < 50 then
		monster.SetMos("ステップ左", -1, 6)
		var10 = vm.f32(var4 + vm.f32(1.5707964))
	else
		monster.SetMos("ステップ右", -1, 6)
		var10 = vm.f32(var4 - vm.f32(1.5707964))
	end
	var9 = 100.0
	if var10 > vm.f32(3.1415927) then
		var10 = vm.f32(var10 - vm.f32(6.2831855))
	end
	if var10 <= vm.f32(-3.1415927) then
		var10 = vm.f32(var10 + vm.f32(6.2831855))
	end
	target = vm.f32(pos_x + vm.f32(vm.sin(var10) * var9))
	target_2 = vm.f32(pos_y - 20.0)
	target_3 = vm.f32(pos_z + vm.f32(vm.cos(var10) * var9))
	monster.SetAttrib(32, 1)
	monster.SetNextPos(target, target_2, target_3, 6.0, 6.0)
	monster.SetAttrib(32, 0)
	helper_cbe4d8e2()
	monster.ResetMove()
	monster.SetMos("立ち", -1, 0)
end

return helper_df35a2a4
