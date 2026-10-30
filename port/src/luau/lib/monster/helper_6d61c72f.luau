--!strict
-- Shared monster helper used by 3 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_125e5305 = require("@lib/monster/helper_125e5305")
local helper_56d63eae = require("@lib/monster/helper_56d63eae")
local helper_890ee63a = require("@lib/monster/helper_890ee63a")
local helper_c3e8ae39 = require("@lib/monster/helper_c3e8ae39")

--- Helper function.
local function helper_6d61c72f(move_speed: f32)
	local pos_x: f32 = 0
	local var3: f32 = 0
	local pos_z: f32 = 0
	local var5: f32 = 0
	local var7: f32 = 0
	local pos_y_2: f32 = 0
	monster.SetMos("歩き", -1, 0)
	helper_890ee63a(6.0)
	monster.SetAttrib(32, 1)
	var5 = monster.GetTargetDist() or var5
	do
		local out1, _, out3 = monster.GetTargetRot()
		pos_x = out1 or pos_x
		pos_z = out3 or pos_z
	end
	var7 = monster.GetRndf(10.0) or var7
	var5 = vm.f32(var5 + vm.f32(100.0 + var7))
	pos_x, var3, pos_z = helper_125e5305(0.0, var5, pos_x, var3, pos_z)
	monster.SetMos("歩き後", -1, 6)
	helper_c3e8ae39(17)
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y_2 = out2 or pos_y_2
	end
	monster.SetNextPos(pos_x, pos_y_2, pos_z, move_speed, move_speed + 1.0)
	helper_c3e8ae39(7)
	monster.SetAttrib(32, 0)
	monster.ResetMove()
	helper_56d63eae()
	monster.ResetMove()
	monster.SetMos("立ち", -1)
end

return helper_6d61c72f
