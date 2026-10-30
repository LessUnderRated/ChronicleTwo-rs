--!strict
-- dungeon/monster/e06a.stb: monster script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_02ce7891 = require("@lib/monster/helper_02ce7891")
local helper_125e5305 = require("@lib/monster/helper_125e5305")
local helper_179581d3 = require("@lib/monster/helper_179581d3")
local helper_193f5239 = require("@lib/monster/helper_193f5239")
local helper_1adea708 = require("@lib/monster/helper_1adea708")
local helper_1ef0d4b2 = require("@lib/monster/helper_1ef0d4b2")
local helper_243517f2 = require("@lib/monster/helper_243517f2")
local helper_28452e16 = require("@lib/monster/helper_28452e16")
local helper_49610f43 = require("@lib/monster/helper_49610f43")
local helper_54469cb2 = require("@lib/monster/helper_54469cb2")
local helper_549e2b35 = require("@lib/monster/helper_549e2b35")
local helper_56d63eae = require("@lib/monster/helper_56d63eae")
local helper_57db7062 = require("@lib/monster/helper_57db7062")
local helper_58087289 = require("@lib/monster/helper_58087289")
local helper_5a759074 = require("@lib/monster/helper_5a759074")
local helper_5d37e9f4 = require("@lib/monster/helper_5d37e9f4")
local helper_65eb2b74 = require("@lib/monster/helper_65eb2b74")
local helper_6911bbcd = require("@lib/monster/helper_6911bbcd")
local helper_6a21fe95 = require("@lib/monster/helper_6a21fe95")
local helper_83e135e0 = require("@lib/monster/helper_83e135e0")
local helper_97d8f861 = require("@lib/monster/helper_97d8f861")
local helper_9df6409a = require("@lib/monster/helper_9df6409a")
local helper_a25c5b2e = require("@lib/monster/helper_a25c5b2e")
local helper_a551797e = require("@lib/monster/helper_a551797e")
local helper_ab4b367a = require("@lib/monster/helper_ab4b367a")
local helper_b44b0a55 = require("@lib/monster/helper_b44b0a55")
local helper_b765e6cd = require("@lib/monster/helper_b765e6cd")
local helper_b9fff8e1 = require("@lib/monster/helper_b9fff8e1")
local helper_ba87ea88 = require("@lib/monster/helper_ba87ea88")
local helper_bfbcfc9f = require("@lib/monster/helper_bfbcfc9f")
local helper_c3e8ae39 = require("@lib/monster/helper_c3e8ae39")
local helper_cd4ea219 = require("@lib/monster/helper_cd4ea219")
local helper_d30a9fa2 = require("@lib/monster/helper_d30a9fa2")
local helper_e05438b5 = require("@lib/monster/helper_e05438b5")
local helper_e1c3e640 = require("@lib/monster/helper_e1c3e640")
local helper_e62edeb2 = require("@lib/monster/helper_e62edeb2")
local helper_fd16d93e = require("@lib/monster/helper_fd16d93e")

--- Helper function.
local function helper_3048()
	local boss: s32 = 0
	helper_1adea708(500.0)
	helper_6911bbcd(80.0)
	helper_5a759074(0)
	monster.VPush2(5, 0)
	monster.VPush2(11, 150)
	monster.VPush2(12, 0)
	boss = monster.GetBossFlag() or boss
	if boss == 0 then
		monster.GetPos_3()
		monster.SetClipDist(35.0)
	else
		monster.SetClipDist(999999.0)
	end
end

--- Helper function.
local function helper_134f4()
	local argc: s32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 50 then
		argc = monster.GetRnd(100) or argc
		var3 = monster.GetRndf(30.0) or var3
		var4 = monster.GetRndf(30.0) or var4
		var4 = vm.f32(var4 + 90.0)
		if argc < 50 then
			var3 = vm.f32(-var3 - 30.0)
		else
			var3 = vm.f32(var3 + 30.0)
		end
		monster.SetMos("歩き", -1, 0)
		local _ = helper_bfbcfc9f(vm.f32(1.45), 3.0, var3, var4, 49.0, 30)
		helper_83e135e0(3.0)
		monster.SetMos("立ち", -1, 0)
	else
		monster.SetMos("立ち", -1, 0)
		helper_e62edeb2(49.0, 45.0, 30)
	end
end

--- Helper function.
local function helper_13124(arg0: any, arg1: any)
	monster.SetMos("歩き", -1, 0)
	helper_83e135e0(3.0)
	monster.SetMos("攻撃２in", 6)
	helper_c3e8ae39(helper_9df6409a(25))
	monster.SetMos("攻撃２", -1, 0)
	helper_e1c3e640(7.0, 7.0, 24.5, 120)
	monster.SetMos("攻撃２out", 6)
	helper_56d63eae()
	monster.SetMos("立ち", -1, 0)
	helper_c3e8ae39(9)
end

--- Helper function.
local function helper_15108()
	local argc: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	var1 = monster.GetTargetDist() or var1
	argc = monster.GetRnd(100) or argc
	if argc < 70 then
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			argc = monster.GetRnd(100) or argc
			if argc < 80 then
				monster.SetMos("歩き", -1, 0)
				helper_e1c3e640(vm.f32(1.45), 3.0, 49.0, 90)
				monster.SetMos("立ち", -1, 0)
			else
				monster.SetMos("立ち", -1, 0)
				helper_e62edeb2(49.0, 45.0, 75)
			end
		else
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				var2 = -30.0
			else
				var2 = 30.0
			end
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(3.0)
			monster.SetMos("歩き", -1, 0)
			helper_bfbcfc9f(vm.f32(1.45), 3.0, var2, var1, 90.0, 45)
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(3.0)
			monster.SetMos("立ち", -1, 0)
			helper_e62edeb2(49.0, 45.0, 30)
		end
	else
		monster.SetMos("歩き", -1, 0)
		helper_83e135e0(3.0)
		helper_13124(6.0, 45)
		monster.SetMos("立ち", -1, 0)
	end
end

--- Helper function.
local function helper_14a74()
	local argc: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	var1 = monster.GetTargetDist() or var1
	argc = monster.GetRnd(100) or argc
	if argc < 70 then
		helper_13124(6.0, 25)
	else
		argc = monster.GetRnd(100) or argc
		if argc < 70 then
			monster.SetMos("歩き", -1, 0)
			helper_e1c3e640(vm.f32(1.45), 3.0, 49.0, 90)
			monster.SetMos("立ち", -1, 0)
		else
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				var2 = -30.0
			else
				var2 = 30.0
			end
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(3.0)
			monster.SetMos("歩き", -1, 0)
			helper_bfbcfc9f(vm.f32(1.45), 3.0, var2, var1, 1.0, 45)
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(3.0)
			monster.SetMos("立ち", -1, 0)
			helper_e62edeb2(49.0, 45.0, 30)
		end
	end
end

--- Helper function.
local function helper_12e8c()
	monster.SetMos("歩き", -1, 0)
	helper_83e135e0(6.0)
	monster.SetMos("攻撃１", -1, 6)
	helper_b765e6cd(3.0, helper_9df6409a(17))
	helper_c3e8ae39(helper_9df6409a(31))
	monster.SetMos("立ち", -1, 0)
	helper_c3e8ae39(9)
end

--- Helper function.
local function helper_11c20(move_speed: f32)
	local pos_x: f32 = 0
	local var3: f32 = 0
	local pos_z: f32 = 0
	local var5: f32 = 0
	local var7: f32 = 0
	local pos_y_2: f32 = 0
	monster.SetMos("歩き", -1, 4)
	helper_83e135e0(30.0)
	monster.SetAttrib(32, 1)
	var5 = monster.GetTargetDist() or var5
	do
		local out1, _, out3 = monster.GetTargetRot()
		pos_x = out1 or pos_x
		pos_z = out3 or pos_z
	end
	var7 = monster.GetRndf(10.0) or var7
	var5 = vm.f32(var5 + vm.f32(40.0 + var7))
	pos_x, var3, pos_z = helper_125e5305(0.0, var5, pos_x, var3, pos_z)
	monster.SetMos("ステップ後", -1, 6)
	helper_c3e8ae39(helper_9df6409a(8))
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y_2 = out2 or pos_y_2
	end
	monster.SetNextPos(pos_x, pos_y_2, pos_z, move_speed, move_speed + 1.0)
	helper_c3e8ae39(helper_9df6409a(9))
	monster.SetAttrib(32, 0)
	monster.ResetMove()
	helper_c3e8ae39(helper_9df6409a(19))
	helper_56d63eae()
	monster.ResetMove()
	monster.SetMos("立ち", -1)
end

--- Helper function.
local function helper_14480()
	local argc: s32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	monster.GetMonsterLifeInt()
	argc = monster.GetRnd(100) or argc
	if argc < 70 then
		var3 = monster.GetTargetDist() or var3
		argc = monster.GetRnd(100) or argc
		if var3 < 50.0 then
			helper_12e8c()
		else
			helper_13124(6.0, 25)
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			helper_11c20(3.0)
		else
			argc = monster.GetRnd(100) or argc
			var4 = monster.GetRndf(60.0) or var4
			if argc < 50 then
				var4 = vm.f32(-var4 - 30.0)
			else
				var4 = vm.f32(var4 + 30.0)
			end
			monster.SetMos("歩き", -1, 0)
			helper_bfbcfc9f(vm.f32(1.45), 3.0, var4, 98.0, 1.0, 30)
			helper_83e135e0(3.0)
			monster.SetMos("立ち", -1, 0)
			helper_c3e8ae39(9)
		end
	end
end

--- Helper function.
local function helper_159c8()
	local var0: f32 = 0
	local priority: s32 = 0
	local gekirin: s32 = 0
	while true do
		vm.wait()
		helper_58087289()
		var0 = monster.GetTargetDist() or var0
		if var0 > 240.0 then
			vm.wait()
			return
		end
		gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
		if gekirin == 0 then
			vm.wait()
			return
		end
		priority = monster.GetPriority() or priority
		if priority > 3 then
			helper_134f4()
			continue
		end
		if var0 < 240.0 and var0 >= 150.0 then
			helper_15108()
		elseif var0 < 150.0 and var0 >= 90.0 then
			helper_14a74()
		else
			helper_14480()
		end
	end
end

--- Helper function.
local function helper_f064()
	local argc: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var5: f32 = 0
	local var7: f32 = 0
	local place_pos_x: f32 = 0
	local place_pos_y: f32 = 0
	local place_pos_z: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var15: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	local var21: f32 = 0
	local var22: f32 = 0
	local var23: f32 = 0
	helper_b9fff8e1()
	monster.VPush(0, 0)
	monster.GetTargetDist()
	do
		local out1, out2, out3 = monster.GetPlacePos_3()
		place_pos_x = out1 or place_pos_x
		place_pos_y = out2 or place_pos_y
		place_pos_z = out3 or place_pos_z
	end
	do
		local out1, out2, out3 = monster.GetPos_3()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var5 = monster.GetDistVector2(pos_x, pos_y, pos_z, place_pos_x, place_pos_y, place_pos_z) or var5
	do
		local _, out2, _ = monster.GetRot()
		var15 = out2 or var15
	end
	var17 = monster.SearchArea(100.0, 0.0) or var17
	if var17 < 49.0 then
		var7 = monster.GetRndf(360.0) or var7
		monster.SetMos("歩き", -1.0, 0)
		helper_179581d3(var7, 3.0)
		var17 = monster.SearchArea(100.0, 0.0) or var17
		var17 = vm.f32(var17 - 49.0)
		if var17 > 0.0 then
			helper_54469cb2(3.0, vm.f32(1.45), var7, var17, 49.0, 30)
		end
		monster.SetMos("立ち", -1, 0)
	end
	if var5 > 300.0 then
		argc = monster.GetRnd(100) or argc
		if argc < 90 then
			if var5 > 800.0 then
				do
					local out1, out2, out3 = monster.GetPos_3()
					pos_x = out1 or pos_x
					pos_y = out2 or pos_y
					pos_z = out3 or pos_z
				end
				monster.SetPlacePos(pos_x, pos_y, pos_z)
			end
			argc = monster.GetRnd(100) or argc
			if argc < 30 then
				monster.VPush(0, 4)
				argc = monster.GetRnd(100) or argc
				var18 = monster.GetRndf(360.0) or var18
				var5 = monster.GetRndf(150.0) or var5
				if argc < 50 then
					var18 = vm.f32(-var18 - 30.0)
				else
					var18 = vm.f32(var18 + 30.0)
				end
				monster.SetMos("歩き", -1.0, 0)
				helper_549e2b35(place_pos_x, place_pos_y, place_pos_z, vm.f32(1.45), 3.0, var5, var18, 49.0, 60)
				var19 = monster.GetRndf(180.0) or var19
				argc = monster.GetRnd(100) or argc
				if argc < 50 then
					var19 = vm.f32(var19 * -1.0)
				end
				helper_179581d3(var19, 3.0)
				monster.SetMos("立ち", -1, 0)
			else
				monster.VPush(0, 8)
				monster.SetMos("立ち", -1, 0)
				var1 = helper_57db7062(100.0, 50.0, 35.0, vm.f32(1.2), 30)
				if var1 == 1 then
					return
				end
			end
			monster.GetRnd(100, argc)
			return
		end
	end
	argc = monster.GetRnd(100) or argc
	if argc < 70 then
		argc = monster.GetRnd(100) or argc
		if argc < 80 then
			monster.VPush(0, 8)
			monster.SetMos("立ち", -1, 0)
			helper_57db7062(100.0, 50.0, 35.0, vm.f32(1.2), 30)
		else
			monster.VPush(0, 16)
			var7 = monster.GetRndf(180.0) or var7
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				var7 = vm.f32(var7 * -1.0)
			end
			monster.SetMos("歩き", -1.0, 0)
			helper_179581d3(var7, 3.0)
			monster.SetMos("立ち", -1, 0)
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				argc = monster.GetRnd(100) or argc
				if argc < 50 then
					monster.VPush(0, 4)
					argc = monster.GetRnd(100) or argc
					var20 = monster.GetRndf(180.0) or var20
					var21 = monster.GetRndf(30.0) or var21
					var22 = monster.GetTargetDist() or var22
					var21 = vm.f32(var21 + var22)
					if argc < 50 then
						var20 = vm.f32(var20 * -1.0)
					end
					argc = monster.GetRnd(100) or argc
					if argc < 50 then
						var20 = vm.f32(-var20 - 30.0)
					else
						var20 = vm.f32(var20 + 30.0)
					end
					monster.SetMos("歩き", -1.0, 0)
					var1 = helper_bfbcfc9f(vm.f32(1.45), 3.0, var20, var21, 49.0, 60)
					var23 = monster.GetRndf(360.0) or var23
					argc = monster.GetRnd(100) or argc
					if argc < 50 then
						var23 = vm.f32(var23 * -1.0)
					end
					helper_179581d3(var23, 3.0)
					monster.SetMos("立ち", -1, 0)
				else
					monster.VPush(0, 32)
					monster.SetMos("歩き", -1.0, 0)
					do
						local _, out2, _ = monster.GetRot()
						var15 = out2 or var15
					end
					var7 = helper_28452e16(var15)
					if var7 > vm.f32(3.1415927) then
						var7 = vm.f32(var7 - vm.f32(6.2831855))
					end
					if var7 <= vm.f32(-3.1415927) then
						var7 = vm.f32(var7 + vm.f32(6.2831855))
					end
					helper_cd4ea219(vm.f32(1.45), var7, 1000.0, 49.0, 60)
					monster.SetMos("立ち", -1, 0)
				end
			else
				monster.VPush(0, 8)
				monster.SetMos("立ち", -1, 0)
				var1 = helper_57db7062(100.0, 50.0, 35.0, vm.f32(1.2), 30)
				if var1 == 1 then
					return
				end
			end
		elseif var2 == 8 then
			monster.VPush(0, 1)
			argc = monster.GetRnd(120) or argc
			var5 = monster.GetTargetDist() or var5
			argc = vm.i32(argc + 15)
			monster.SetMos("歩き", -1.0, 0)
			helper_97d8f861(vm.f32(1.45), 3.0, var5, 360.0, 40.0, 49.0, argc)
			monster.SetMos("立ち", -1, 0)
		end
	end
end

--- Helper function.
local function helper_17470()
	monster.SetMos("歩き", -1, 0)
	helper_83e135e0(3.0)
	monster.SetMos("攻撃２in", 6)
	helper_b765e6cd(3.0, 25)
	monster.SetMos("攻撃２", 0)
	helper_e1c3e640(vm.f32(6.8999996), 3.0, 24.5, 120)
	monster.SetMos("攻撃２out", 6)
	helper_c3e8ae39(helper_9df6409a(28))
	monster.SetMos("立ち", -1, 0)
	helper_c3e8ae39(9)
end

--- Helper function.
local function helper_13a04()
	local var3: f32 = 0
	local priority: s32 = 0
	local argc: s32 = 0
	local gekirin: s32 = 0
	local var9: f32 = 0
	monster.GetMonsterLifeInt()
	while true do
		vm.wait()
		gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
		if gekirin > 0 then
			return
		end
		priority = monster.GetPriority() or priority
		if priority > 4 then
			helper_134f4()
			continue
		end
		var3 = monster.GetTargetDist() or var3
		if var3 < 90.0 then
			if var3 < 75.0 then
				monster.SetMos("歩き", -1, 0)
				helper_e1c3e640(vm.f32(1.45), 3.0, 49.0, 90)
				helper_12e8c()
			else
				helper_13124(vm.f32(4.8), 15)
			end
		else
			argc = monster.GetRnd(100) or argc
			if argc < 70 then
				helper_13124(vm.f32(4.8), 15)
			else
				argc = monster.GetRnd(100) or argc
				if argc < 90 then
					monster.SetMos("歩き", -1, 0)
					helper_e1c3e640(vm.f32(1.7400001), 3.0, 49.0, 30)
					monster.SetMos("立ち", -1, 0)
				else
					argc = monster.GetRnd(100) or argc
					if argc < 50 then
						var9 = -30.0
					else
						var9 = 30.0
					end
					monster.SetMos("歩き", -1, 0)
					helper_83e135e0(3.0)
					monster.SetMos("歩き", -1, 0)
					helper_bfbcfc9f(vm.f32(1.7400001), 3.0, var9, var3, 1.0, 45)
					monster.SetMos("歩き", -1, 0)
					helper_83e135e0(3.0)
					monster.SetMos("立ち", -1, 0)
					helper_e62edeb2(49.0, 45.0, 30)
				end
			end
		end
	end
end

--- Helper function.
local function helper_177fc()
	local var0: f32 = 0
	local var1: f32 = 0
	local gekirin: s32 = 0
	gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
	if gekirin > 0 then
		helper_58087289()
		var0 = monster.GetTargetDist() or var0
		if helper_a25c5b2e() == 0 then
			if var0 < 240.0 then
				helper_159c8()
			else
				helper_f064()
			end
		else
			var1 = helper_243517f2(var1)
			if var0 < var1 then
				if var0 < 150.0 then
					helper_65eb2b74(0)
					helper_159c8()
				else
					helper_17470()
				end
			else
				helper_65eb2b74(0)
			end
		end
	else
		helper_13a04()
	end
end

--- Helper function.
local function helper_124c4(arg0: f32)
	local argc: s32 = 0
	local target: f32 = 0
	local var3: f32 = 0
	local target_3: f32 = 0
	local pos_y: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	monster.SetMos("歩き", -1, 4)
	helper_83e135e0(30.0)
	var8 = monster.GetTargetDist() or var8
	argc = monster.GetRnd(100) or argc
	if argc < 50 then
		monster.ResetMotion()
		monster.SetMos("ステップ右", -1, 6)
		var9 = 30.0
	else
		monster.ResetMotion()
		monster.SetMos("ステップ左", -1, 6)
		var9 = -30.0
	end
	target, var3, target_3 = helper_125e5305(var9, var8, target, var3, target_3)
	helper_e62edeb2(49.0, 45.0, helper_9df6409a(10))
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y = out2 or pos_y
	end
	monster.SetNextPos(target, pos_y - 10.0, target_3, arg0, arg0)
	monster.SetAttrib(32, 1)
	helper_e62edeb2(49.0, 45.0, helper_9df6409a(6))
	monster.SetAttrib(32, 0)
	monster.ResetMove()
	helper_56d63eae()
end

local script = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Sets the monster up when it is placed.
function script.init()
	local grade: s32 = 0
	monster.SetDmg2("通常攻撃", 6.0, "攻撃１", 0.364, 0.45, 0)
	monster.SetDmg2("吹っ飛び弱", 6.0, "攻撃２", 0.0, 0.5, 1)
	monster.SetDmg2("吹っ飛び弱", 6.0, "攻撃２", 0.5, 1.0, 1)
	grade = monster.GetMonsGrade_2(-1) or grade
	if grade == 0 then
		monster.SetScoop("攻撃２", 0.0, 1.0, 1002)
	end
	helper_3048()
end

--- Runs the monster's normal behaviour.
function script.loop()
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
	monster.SetActStatus(0)
	while true do
		helper_b9fff8e1()
		helper_177fc()
	end
end

--- Reacts to a hit while greyed out, or to a hit that greys it out.
function script.on_status_hit()
	local var0: s32 = 0
	helper_5d37e9f4()
	print("damage stop action-------------\n")
	monster.SetMos("ダメージ", -1, 6)
	monster.BlowStart(0.0, 0.0, 0)
	var0 = 1
	while var0 ~= 0 do
		var0 = monster.GetStsAttr(40) or var0
		helper_b9fff8e1()
	end
	monster.SetMos("立ち")
	helper_1ef0d4b2()
end

--- Reacts to a hit that staggers it.
function script.on_damage()
	helper_5d37e9f4()
	monster.SetMos("ダメージ", -1, 6)
	monster.BlowStart(4.0, 0.0, 3)
	helper_56d63eae()
	helper_c3e8ae39(12)
	monster.SetMos("立ち")
	helper_1ef0d4b2()
end

--- Reacts to a hit that knocks it over.
function script.on_knockdown()
	helper_fd16d93e()
	monster.SetMos("吹っ飛び", -1, 6)
	monster.BlowStart(3.0, 0.05, 20)
	helper_56d63eae()
	monster.SetActStatus(1)
	helper_c3e8ae39(30)
	monster.SetActStatus(0)
	monster.SetMos("起き上がり", -1, 6)
	helper_56d63eae()
	monster.SetMos("立ち")
	helper_6a21fe95()
end

--- Guards against a hit.
function script.on_guard()
	helper_ab4b367a()
	monster.ResetMotion()
	monster.SetMos("ガードin", -1, 6)
	helper_56d63eae()
	monster.SetMos("ガード", -1, 0)
	monster.BlowStart(3.0, 0.0, 2)
	helper_c3e8ae39(8)
	monster.SetMos("ガードout", -1, 6)
	helper_56d63eae()
	monster.SetMos("立ち")
	helper_a551797e()
end

--- Dodges the target's first kind of attack.
function script.on_dodge_1()
	helper_49610f43()
	helper_11c20(3.0)
	monster.SetMos("立ち", -1, 0)
	helper_a551797e()
end

--- Dodges the target's second kind of attack.
function script.on_dodge_2()
	helper_49610f43()
	helper_124c4(3.0)
	monster.SetMos("立ち", -1, 0)
	helper_a551797e()
end

--- Runs the monster's death.
function script.on_death()
	helper_02ce7891()
	monster.SetMos("死に", -1, 6)
	helper_56d63eae()
	helper_193f5239()
end

--- Reacts to being caught by a frame that lifts it.
function script.on_caught()
	monster.SetMos("じたばた", -1, 4)
	while true do
		vm.wait()
	end
end

--- Lands the monster after it has been thrown.
function script.on_land()
	helper_ba87ea88()
	monster.ResetMove()
	monster.SetShrowEnd()
	helper_c3e8ae39(10)
	monster.ResetMotion()
	monster.SetMos("起き上がり", -1, 6)
	helper_56d63eae()
	helper_b44b0a55()
	return 1
end

--- Stuns the monster.
function script.on_stun()
	helper_d30a9fa2()
	monster.SetMos("吹っ飛び", -1, 6)
	helper_56d63eae()
	monster.SetMos("起き上がり", -1, 6)
	helper_56d63eae()
	helper_e05438b5()
end

return script
