--!strict
-- dungeon/monster/e10a.stb: monster script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_02ce7891 = require("@lib/monster/helper_02ce7891")
local helper_125e5305 = require("@lib/monster/helper_125e5305")
local helper_179581d3 = require("@lib/monster/helper_179581d3")
local helper_193f5239 = require("@lib/monster/helper_193f5239")
local helper_19658e9b = require("@lib/monster/helper_19658e9b")
local helper_1adea708 = require("@lib/monster/helper_1adea708")
local helper_1ef0d4b2 = require("@lib/monster/helper_1ef0d4b2")
local helper_243517f2 = require("@lib/monster/helper_243517f2")
local helper_28452e16 = require("@lib/monster/helper_28452e16")
local helper_49610f43 = require("@lib/monster/helper_49610f43")
local helper_54469cb2 = require("@lib/monster/helper_54469cb2")
local helper_549e2b35 = require("@lib/monster/helper_549e2b35")
local helper_56d63eae = require("@lib/monster/helper_56d63eae")
local helper_57db7062 = require("@lib/monster/helper_57db7062")
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
local helper_b0d7af09 = require("@lib/monster/helper_b0d7af09")
local helper_b44b0a55 = require("@lib/monster/helper_b44b0a55")
local helper_b8ed6392 = require("@lib/monster/helper_b8ed6392")
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
local function helper_13e18(arg0: s32, arg1: s32)
	local var2: s32 = 0
	local var3: s32 = 0
	var2 = 0
	monster.SetMos("あそび", -1, 0)
	while var2 < arg0 do
		if arg1 == 1 then
			var3 = helper_e62edeb2(29.0, 45.0, helper_9df6409a(58))
			if var3 == 1 then
				return
			end
		else
			var3 = 0
			helper_c3e8ae39(helper_9df6409a(58))
		end
		var2 = var2 + 1
	end
end

--- Helper function.
local function helper_15b68()
	local argc: s32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 50 then
		argc = monster.GetRnd(3) or argc
		helper_13e18(vm.i32(argc + 1), 1)
	else
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			argc = monster.GetRnd(100) or argc
			var3 = monster.GetRndf(30.0) or var3
			var4 = monster.GetRndf(30.0) or var4
			var4 = vm.f32(var4 + 60.0)
			if argc < 50 then
				var3 = vm.f32(-var3 - 30.0)
			else
				var3 = vm.f32(var3 + 30.0)
			end
			monster.SetMos("歩き", -1, 0)
			local _ = helper_bfbcfc9f(2.0, 5.0, var3, var4, 29.0, 30)
			helper_83e135e0(5.0)
		else
			monster.SetMos("立ち", -1, 0)
			helper_e62edeb2(29.0, 45.0, 30)
		end
	end
end

--- Helper function.
local function helper_124e8(arg0: s32)
	local target: f32 = 0
	local var2: f32 = 0
	local target_3: f32 = 0
	local pos_y: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	var7 = monster.GetTargetDist() or var7
	if arg0 == 1 then
		monster.ResetMotion()
		monster.SetMos("ステップ右", -1, 6)
		var8 = 20.0
	else
		monster.ResetMotion()
		monster.SetMos("ステップ左", -1, 6)
		var8 = -20.0
	end
	target, var2, target_3 = helper_125e5305(var8, var7, target, var2, target_3)
	helper_e62edeb2(29.0, 45.0, helper_9df6409a(7))
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y = out2 or pos_y
	end
	monster.SetNextPos(target, pos_y - 10.0, target_3, 2.0, 2.0)
	helper_e62edeb2(29.0, 45.0, helper_9df6409a(14))
	monster.ResetMove()
	helper_56d63eae()
end

--- Helper function.
local function helper_13074(arg0: s32)
	local var1: s32 = 0
	local attack: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local grade: s32 = 0
	while var1 < arg0 do
		monster.SetMos("歩き", -1, 0)
		helper_83e135e0(5.0)
		monster.SetMos("攻撃２", -1, 6)
		helper_19658e9b(5.0, vm.f32(0.733), -1.0)
		do
			local out1, out2, out3 = monster.GetFramePos("kabo")
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		do
			local out1, out2, out3 = monster.GetRot()
			var6 = out1 or var6
			var7 = out2 or var7
			var8 = out3 or var8
		end
		attack = monster.GetBaseAttack_1() or attack
		grade = monster.GetMonsGrade_2(-1) or grade
		if grade == 0 then
			monster.EsmCreate_1("かぼちゃ爆弾")
		end
		if grade == 1 then
			monster.EsmCreate_1("ねばピーチＬ")
		end
		if grade == 2 then
			monster.EsmCreate_1("ストーンベリー")
		end
		if grade == 3 then
			monster.EsmCreate_1("ファイナルボム")
		end
		monster.EsmSetVect1(-1, pos_x, pos_y, pos_z)
		monster.EsmSetVect2(-1, var6, var7, var8)
		monster.EsmSetValue(-1, 0, attack)
		monster.SetMos("立ち", -1, 0)
		helper_c3e8ae39(3)
		var1 = var1 + 1
	end
end

--- Helper function.
local function helper_15460()
	local argc: s32 = 0
	local var1: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 50 then
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(5.0)
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				var1 = 1
			else
				var1 = 0
			end
			argc = monster.GetRnd(2) or argc
			argc = vm.i32(argc + 1)
			for var2 = 0, argc - 1 do
				helper_124e8(var1)
			end
		else
			argc = monster.GetRnd(3) or argc
			helper_13e18(vm.i32(argc + 1), 1)
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(5.0)
			monster.SetMos("立ち", -1, 0)
			helper_e62edeb2(29.0, 45.0, 30)
		else
			argc = monster.GetRnd(1) or argc
			helper_13074(vm.i32(1 + argc))
			helper_c3e8ae39(3)
		end
	end
end

--- Helper function.
local function helper_129e4(move_speed: f32)
	local pos_x: f32 = 0
	local var3: f32 = 0
	local pos_z: f32 = 0
	local var5: f32 = 0
	local var7: f32 = 0
	local pos_y_2: f32 = 0
	monster.SetAttrib(32, 1)
	var5 = monster.GetTargetDist() or var5
	do
		local out1, _, out3 = monster.GetTargetRot()
		pos_x = out1 or pos_x
		pos_z = out3 or pos_z
	end
	var7 = monster.GetRndf(10.0) or var7
	var5 = vm.f32(var5 + vm.f32(30.0 + var7))
	pos_x, var3, pos_z = helper_125e5305(0.0, var5, pos_x, var3, pos_z)
	monster.ResetMotion()
	monster.SetMos("ステップ後", -1, 6)
	helper_c3e8ae39(helper_9df6409a(8))
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y_2 = out2 or pos_y_2
	end
	monster.SetNextPos(pos_x, pos_y_2, pos_z, move_speed, move_speed + 1.0)
	helper_c3e8ae39(helper_9df6409a(3))
	monster.SetAttrib(32, 0)
	helper_c3e8ae39(helper_9df6409a(12))
	monster.ResetMove()
	helper_56d63eae()
	monster.ResetMove()
	monster.SetMos("立ち", -1)
end

--- Helper function.
local function helper_58a4(arg0: s32)
	local arrived: s32 = 0
	for var1 = 0, arg0 - 1 do
		arrived = monster.ChkMoveEnd() or arrived
		if arrived == 0 then
			helper_b9fff8e1()
		else
			return
		end
	end
end

--- Helper function.
local function helper_13858(arg0: s32)
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local pos_y: f32 = 0
	local var10: f32 = 0
	var10 = monster.GetTargetDist() or var10
	do
		local out1, out2, out3 = monster.GetPos_3()
		var1 = out1 or var1
		var2 = out2 or var2
		var3 = out3 or var3
	end
	do
		local out1, out2, out3 = monster.GetTargetPos()
		var4 = out1 or var4
		var5 = out2 or var5
		var6 = out3 or var6
	end
	do
		local out1, out2, out3 = monster.SubVector(var4, var5, var6, var1, var2, var3)
		var4 = out1 or var4
		var5 = out2 or var5
		var6 = out3 or var6
	end
	do
		local out1, out2, out3 = monster.NormalVector(var4, var5, var6)
		var4 = out1 or var4
		var5 = out2 or var5
		var6 = out3 or var6
	end
	do
		local out1, out2, out3 = monster.ScaleVector(var4, var5, var6, var10 * 3.0)
		var4 = out1 or var4
		var5 = out2 or var5
		var6 = out3 or var6
	end
	do
		local out1, out2, out3 = monster.AddVector(var1, var2, var3, var4, var5, var6)
		var1 = out1 or var1
		var2 = out2 or var2
		var3 = out3 or var3
	end
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y = out2 or pos_y
	end
	monster.SetNextPos(var1, pos_y - 30.0, var3, 4.8, 4.8)
	helper_58a4(arg0)
	monster.ResetMove()
end

--- Helper function.
local function helper_14ea4()
	local argc: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 70 then
		monster.SetMos("歩き", -1, 0)
		helper_83e135e0(5.0)
		argc = monster.GetRnd(1) or argc
		helper_13074(vm.i32(1 + argc))
		helper_c3e8ae39(3)
	else
		argc = monster.GetRnd(100) or argc
		if argc < 80 then
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(5.0)
			argc = monster.GetRnd(2) or argc
			argc = vm.i32(argc + 1)
			for var1 = 0, argc - 1 do
				helper_129e4(2.0)
			end
		else
			monster.SetMos("走り", -1, 0)
			helper_83e135e0(5.0)
			helper_13858(80)
			monster.SetMos("気絶", -1, 0)
			helper_c3e8ae39(90)
		end
	end
	vm.wait()
end

--- Helper function.
local function helper_14a50()
	local argc: s32 = 0
	monster.GetMonsterLife()
	argc = monster.GetRnd(100) or argc
	if argc < 60 then
		monster.SetMos("歩き", -1, 0)
		helper_83e135e0(5.0)
		helper_b0d7af09()
		helper_c3e8ae39(3)
	else
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			monster.SetMos("ステップ後", -1, 0)
			helper_129e4(2.0)
		else
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(5.0)
			helper_e1c3e640(2.0, 5.0, 29.0, 20)
			helper_b0d7af09()
			helper_c3e8ae39(3)
		end
	end
end

--- Helper function.
local function helper_16114()
	local var3: f32 = 0
	local priority: s32 = 0
	local gekirin: s32 = 0
	while true do
		vm.wait()
		helper_b8ed6392()
		var3 = monster.GetTargetDist() or var3
		if var3 > 300.0 then
			vm.wait()
			return
		end
		gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
		if gekirin <= 0 then
			vm.wait()
			return
		end
		priority = monster.GetPriority() or priority
		if priority > 4 then
			helper_15b68()
			continue
		end
		if var3 < 300.0 and var3 >= 160.0 then
			helper_15460()
		elseif var3 < 160.0 and var3 >= 60.0 then
			helper_14ea4()
		else
			helper_14a50()
		end
		vm.wait()
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
	if var17 < 29.0 then
		var7 = monster.GetRndf(360.0) or var7
		monster.SetMos("歩き", -1.0, 0)
		helper_179581d3(var7, 5.0)
		var17 = monster.SearchArea(100.0, 0.0) or var17
		var17 = vm.f32(var17 - 29.0)
		if var17 > 0.0 then
			helper_54469cb2(5.0, 2.0, var7, var17, 29.0, 30)
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
				helper_549e2b35(place_pos_x, place_pos_y, place_pos_z, 2.0, 5.0, var5, var18, 29.0, 60)
				var19 = monster.GetRndf(180.0) or var19
				argc = monster.GetRnd(100) or argc
				if argc < 50 then
					var19 = vm.f32(var19 * -1.0)
				end
				helper_179581d3(var19, 5.0)
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
			helper_179581d3(var7, 5.0)
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
					var1 = helper_bfbcfc9f(2.0, 5.0, var20, var21, 29.0, 60)
					var23 = monster.GetRndf(360.0) or var23
					argc = monster.GetRnd(100) or argc
					if argc < 50 then
						var23 = vm.f32(var23 * -1.0)
					end
					helper_179581d3(var23, 5.0)
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
					helper_cd4ea219(2.0, var7, 1000.0, 29.0, 60)
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
			helper_97d8f861(2.0, 5.0, var5, 360.0, 40.0, 29.0, argc)
			monster.SetMos("立ち", -1, 0)
		end
	end
end

--- Helper function.
local function helper_188c8()
	local argc: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 75 then
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			helper_13074(2)
		else
			monster.SetMos("歩き", -1, 0)
			helper_e1c3e640(2.0, 5.0, 29.0, 60)
			monster.SetMos("立ち", -1, 0)
		end
	else
		monster.SetMos("走り", -1, 0)
		helper_e1c3e640(4.0, 5.0, 29.0, 90)
		monster.SetMos("立ち", -1, 0)
	end
end

--- Helper function.
local function helper_14148()
	local var0: f32 = 0
	local gekirin: s32 = 0
	local argc: s32 = 0
	gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
	if gekirin > 0 then
		return
	end
	var0 = monster.GetTargetDist() or var0
	if var0 < 60.0 then
		argc = monster.GetRnd(100) or argc
		if argc < 85 then
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(5.0)
			helper_e1c3e640(2.0, 5.0, 29.0, 30)
			helper_b0d7af09()
			helper_c3e8ae39(3)
		else
			monster.SetMos("ステップ後", -1, 0)
			helper_129e4(2.0)
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 85 then
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(5.0)
			argc = monster.GetRnd(1) or argc
			helper_13074(vm.i32(1 + argc))
			helper_c3e8ae39(3)
		else
			argc = monster.GetRnd(100) or argc
			if argc < 75 then
				monster.SetMos("歩き", -1, 0)
				helper_83e135e0(5.0)
				argc = monster.GetRnd(2) or argc
				argc = vm.i32(argc + 1)
				for var3 = 0, argc - 1 do
					helper_129e4(2.0)
				end
			else
				monster.SetMos("走り", -1, 0)
				helper_83e135e0(5.0)
				helper_13858(80)
				monster.SetMos("気絶", -1, 0)
				helper_c3e8ae39(90)
			end
		end
	end
end

--- Helper function.
local function helper_18cb0()
	local var0: f32 = 0
	local var1: f32 = 0
	local gekirin: s32 = 0
	gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
	if gekirin > 0 then
		helper_b8ed6392()
		var0 = monster.GetTargetDist() or var0
		if helper_a25c5b2e() == 0 then
			if var0 < 300.0 then
				helper_16114()
			else
				helper_f064()
			end
		else
			var1 = helper_243517f2(var1)
			if var0 < var1 then
				if var0 < 160.0 then
					helper_65eb2b74(0)
					helper_16114()
				else
					helper_188c8()
				end
			else
				helper_65eb2b74(0)
			end
		end
	else
		helper_14148()
	end
end

--- Helper function.
local function helper_11e9c()
	local argc: s32 = 0
	local target: f32 = 0
	local var2: f32 = 0
	local target_3: f32 = 0
	local pos_y: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	var7 = monster.GetTargetDist() or var7
	monster.SetAttrib(32, 1)
	argc = monster.GetRnd(100) or argc
	if argc < 50 then
		monster.ResetMotion()
		monster.SetMos("ステップ右", -1, 6)
		var8 = 20.0
	else
		monster.ResetMotion()
		monster.SetMos("ステップ左", -1, 6)
		var8 = -20.0
	end
	target, var2, target_3 = helper_125e5305(var8, var7, target, var2, target_3)
	helper_e62edeb2(29.0, 45.0, helper_9df6409a(7))
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y = out2 or pos_y
	end
	monster.SetNextPos(target, pos_y - 10.0, target_3, 2.0, 4.0)
	helper_e62edeb2(29.0, 45.0, helper_9df6409a(5))
	monster.SetAttrib(32, 0)
	helper_e62edeb2(29.0, 45.0, helper_9df6409a(9))
	monster.ResetMove()
	helper_56d63eae()
	monster.ResetMove()
end

local script = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Sets the monster up when it is placed.
function script.init()
	local grade: s32 = 0
	local get_not_used_texb: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local get_not_used_texb_2: s32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local get_not_used_texb_3: s32 = 0
	local var8: s32 = 0
	local var9: s32 = 0
	local get_not_used_texb_4: s32 = 0
	local var11: s32 = 0
	local var12: s32 = 0
	monster.SetDmg2("通常攻撃", 4.0, "攻撃１", 0.3, 0.8, 0)
	grade = monster.GetMonsGrade_2(-1) or grade
	if grade == 0 then
		get_not_used_texb = monster.EsmGetNotuesdTexb() or get_not_used_texb
		if get_not_used_texb ~= -1 then
			var2 = monster.LoadEffectScript("かぼちゃ爆弾", get_not_used_texb) or var2
			var3 = monster.LoadEffectScript("Ｍ小爆発", get_not_used_texb) or var3
			if (if var2 ~= 0 then 1 else var3) ~= 0 then
				monster.EsmAddTexb()
			end
		end
	end
	if grade == 1 then
		get_not_used_texb_2 = monster.EsmGetNotuesdTexb() or get_not_used_texb_2
		if get_not_used_texb_2 ~= -1 then
			var5 = monster.LoadEffectScript("ねばピーチＬ", get_not_used_texb_2) or var5
			var6 = monster.LoadEffectScript("Ｍ小爆発", get_not_used_texb_2) or var6
			if (if var5 ~= 0 then 1 else var6) ~= 0 then
				monster.EsmAddTexb()
			end
		end
	end
	if grade == 2 then
		get_not_used_texb_3 = monster.EsmGetNotuesdTexb() or get_not_used_texb_3
		if get_not_used_texb_3 ~= -1 then
			var8 = monster.LoadEffectScript("ストーンベリー", get_not_used_texb_3) or var8
			var9 = monster.LoadEffectScript("Ｍ小爆発", get_not_used_texb_3) or var9
			if (if var8 ~= 0 then 1 else var9) ~= 0 then
				monster.EsmAddTexb()
			end
		end
	end
	if grade == 3 then
		get_not_used_texb_4 = monster.EsmGetNotuesdTexb() or get_not_used_texb_4
		if get_not_used_texb_4 ~= -1 then
			var11 = monster.LoadEffectScript("ファイナルボム", get_not_used_texb_4) or var11
			var12 = monster.LoadEffectScript("ファイナルボムＨ", get_not_used_texb_4) or var12
			if (if var11 ~= 0 then 1 else var12) ~= 0 then
				monster.EsmAddTexb()
			end
		end
	end
	grade = monster.GetMonsGrade_2(-1) or grade
	if grade == 0 then
		monster.SetScoop("あそび", 0.0, 1.0, 1007)
	end
	helper_3048()
end

--- Runs the monster's normal behaviour.
function script.loop()
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
	monster.SetActStatus(0)
	while true do
		vm.wait()
		helper_18cb0()
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
	monster.SetMos("歩き", -1, 0)
	helper_83e135e0(25.0)
	monster.ResetMotion()
	monster.SetMos("ガードin", -1, 6)
	helper_56d63eae()
	monster.SetMos("ガード", -1, 0)
	monster.BlowStart(3.0, 0.0, 2)
	helper_c3e8ae39(30)
	monster.SetMos("ガードout", -1, 6)
	helper_56d63eae()
	monster.SetMos("立ち", 0)
	helper_a551797e()
end

--- Dodges the target's first kind of attack.
function script.on_dodge_1()
	local argc: s32 = 0
	helper_49610f43()
	argc = monster.GetRnd(20) or argc
	if argc < 20 then
		monster.SetMos("歩き", -1, 0)
		helper_83e135e0(5.0)
		helper_11e9c()
	else
		monster.SetMos("ステップ後", -1, 0)
		helper_129e4(3.0)
	end
	helper_a551797e()
end

--- Dodges the target's second kind of attack.
function script.on_dodge_2()
	helper_49610f43()
	monster.SetMos("ガードin", -1, 6)
	helper_56d63eae()
	monster.SetMos("ガード", -1, 0)
	monster.BlowStart(3.0, 0.0, 2)
	helper_c3e8ae39(8)
	monster.SetMos("ガードout", -1, 2)
	helper_56d63eae()
	monster.SetMos("立ち")
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
