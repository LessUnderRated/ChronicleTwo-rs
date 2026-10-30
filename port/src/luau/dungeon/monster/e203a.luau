--!strict
-- dungeon/monster/e203a.stb: monster script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_02ce7891 = require("@lib/monster/helper_02ce7891")
local helper_179581d3 = require("@lib/monster/helper_179581d3")
local helper_193f5239 = require("@lib/monster/helper_193f5239")
local helper_19658e9b = require("@lib/monster/helper_19658e9b")
local helper_1ef0d4b2 = require("@lib/monster/helper_1ef0d4b2")
local helper_28452e16 = require("@lib/monster/helper_28452e16")
local helper_442b9962 = require("@lib/monster/helper_442b9962")
local helper_49610f43 = require("@lib/monster/helper_49610f43")
local helper_54469cb2 = require("@lib/monster/helper_54469cb2")
local helper_549e2b35 = require("@lib/monster/helper_549e2b35")
local helper_56d63eae = require("@lib/monster/helper_56d63eae")
local helper_57db7062 = require("@lib/monster/helper_57db7062")
local helper_58087289 = require("@lib/monster/helper_58087289")
local helper_5d37e9f4 = require("@lib/monster/helper_5d37e9f4")
local helper_6a21fe95 = require("@lib/monster/helper_6a21fe95")
local helper_82cb5588 = require("@lib/monster/helper_82cb5588")
local helper_8566bb6e = require("@lib/monster/helper_8566bb6e")
local helper_93495fdf = require("@lib/monster/helper_93495fdf")
local helper_97d8f861 = require("@lib/monster/helper_97d8f861")
local helper_a25c5b2e = require("@lib/monster/helper_a25c5b2e")
local helper_a551797e = require("@lib/monster/helper_a551797e")
local helper_ab4b367a = require("@lib/monster/helper_ab4b367a")
local helper_b273522a = require("@lib/monster/helper_b273522a")
local helper_b44b0a55 = require("@lib/monster/helper_b44b0a55")
local helper_b9fff8e1 = require("@lib/monster/helper_b9fff8e1")
local helper_ba87ea88 = require("@lib/monster/helper_ba87ea88")
local helper_bfbcfc9f = require("@lib/monster/helper_bfbcfc9f")
local helper_cbe4d8e2 = require("@lib/monster/helper_cbe4d8e2")
local helper_cd4ea219 = require("@lib/monster/helper_cd4ea219")
local helper_d30a9fa2 = require("@lib/monster/helper_d30a9fa2")
local helper_e05438b5 = require("@lib/monster/helper_e05438b5")
local helper_e1c3e640 = require("@lib/monster/helper_e1c3e640")
local helper_ee5b84d4 = require("@lib/monster/helper_ee5b84d4")
local helper_fd16d93e = require("@lib/monster/helper_fd16d93e")

--- Helper function.
local function helper_12f78()
	local pos_y: f32 = 0
	local var4: f32 = 0
	local var6: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	monster.GetRnd(120)
	while true do
		helper_b9fff8e1()
		var4 = monster.GetTargetDist() or var4
		if var4 < 80.0 then
			break
		else
			do
				local _, out2, _ = monster.GetPos_3()
				pos_y = out2 or pos_y
			end
			if var4 > 200.0 then
				helper_82cb5588(vm.f32(0.09817477))
				monster.SetMos("走り")
				do
					local out1, _, out3 = monster.GetTargetPos()
					var6 = out1 or var6
					var8 = out3 or var8
				end
				monster.SetNextPos(var6, pos_y - 20.0, var8, 3.6, 60.0)
			else
				monster.ResetMove()
				monster.SetIntFlag(1, 1)
				monster.SetIntFlag(2, 1)
				monster.SetMos("歩き", -1, 2)
				do
					local out1, out2, out3 = monster.GetRot()
					var9 = out1 or var9
					var10 = out2 or var10
					var11 = out3 or var11
				end
				helper_93495fdf()
				do
					local out1, _, out3 = monster.GetRefanglePos(0.0, 40.0)
					var6 = out1 or var6
					var8 = out3 or var8
				end
				monster.SetRot(var9, var10, var11)
				helper_ee5b84d4(5)
				helper_82cb5588(vm.f32(0.049087387))
				monster.SetNextPos(var6, pos_y - 20.0, var8, 1.8, 4.0)
				helper_cbe4d8e2()
				monster.SetMos("立ち")
				monster.ResetMove()
				helper_442b9962()
				monster.SetIntFlag(1, 0)
				monster.SetIntFlag(2, 0)
			end
		end
	end
	monster.ResetMove()
	monster.SetMos("立ち")
end

--- Helper function.
local function helper_126d0()
	local attack: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	monster.SetMos("攻撃２", -1, 6)
	helper_19658e9b(10.0, vm.f32(0.4), -1.0)
	var8 = monster.GetTargetAngle() or var8
	monster.SetRot(0.0, var8, 0.0)
	do
		local out1, out2, out3 = monster.GetFramePos("dcol02")
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	attack = monster.GetBaseAttack_1() or attack
	do
		local out1, out2, out3 = monster.GetRot()
		var5 = out1 or var5
		var6 = out2 or var6
		var7 = out3 or var7
	end
	monster.EsmCreate_1("毒液L")
	monster.EsmSetVect1(-1, pos_x, pos_y, pos_z)
	monster.EsmSetVect2(-1, var5, var6, var7)
	monster.EsmSetValue(-1, 0, attack)
	helper_cbe4d8e2()
	helper_ee5b84d4(8)
end

--- Helper function.
local function helper_12268()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_x_2: f32 = 0
	local pos_z_2: f32 = 0
	local var6: f32 = 0
	local move_speed: f32 = 0
	helper_93495fdf()
	helper_b9fff8e1()
	do
		local out1, out2, _ = monster.GetPos_3()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
	end
	monster.SetMos("攻撃１", -1, 2)
	helper_ee5b84d4(10)
	var6 = monster.GetTargetDist() or var6
	do
		local out1, _, out3 = monster.GetRefanglePos(0.0, var6)
		pos_x_2 = out1 or pos_x_2
		pos_z_2 = out3 or pos_z_2
	end
	move_speed = vm.f32(var6 / 20.0)
	monster.SetNextPos(pos_x_2, pos_y - 20.0, pos_z_2, move_speed, 0.1)
	helper_ee5b84d4(22)
	move_speed = vm.f32(var6 / 35.0)
	monster.SetNextPos(pos_x, pos_y - 20.0, pos_z_2, move_speed, 0.1)
	helper_ee5b84d4(25)
	monster.ResetMove()
	helper_cbe4d8e2()
	helper_ee5b84d4(8)
end

--- Helper function.
local function helper_138a0()
	local pos_y: f32 = 0
	local var3: f32 = 0
	local argc: s32 = 0
	local priority: s32 = 0
	local argc_2: s32 = 0
	local argc_3: s32 = 0
	local pos_x_2: f32 = 0
	local pos_z_2: f32 = 0
	while true do
		var3 = monster.GetTargetDist() or var3
		if var3 > 120.0 then
			break
		else
			do
				local _, out2, _ = monster.GetPos_3()
				pos_y = out2 or pos_y
			end
			helper_58087289()
			if helper_b273522a(0, 180) ~= 0 then
				argc = monster.GetRnd(100) or argc
				if argc < 10 then
					if var3 > 60.0 then
						helper_126d0()
					else
						monster.SetIntFlag(1, 1)
						monster.SetIntFlag(2, 1)
						if helper_b273522a(0, 30) == 0 then
							monster.SetMos("歩き", -1, 2)
							helper_ee5b84d4(5)
							helper_82cb5588(vm.f32(0.09817477))
							helper_cbe4d8e2()
							helper_442b9962()
						end
						priority = monster.GetPriority() or priority
						if (if priority <= 3 then helper_b273522a(0, 30) else 0) ~= 0 then
							helper_12268()
						end
						monster.SetIntFlag(1, 0)
						monster.SetIntFlag(2, 0)
					end
				end
			else
				argc_2 = monster.GetRnd(100) or argc_2
				if argc_2 < 10 then
					monster.SetIntFlag(1, 1)
					monster.SetIntFlag(2, 1)
					argc_3 = monster.GetRnd(100) or argc_3
					if argc_3 < 50 then
						monster.SetMos("歩き", -1, 2)
						do
							local out1, _, out3 = monster.GetRefanglePos(0.0, 40.0)
							pos_x_2 = out1 or pos_x_2
							pos_z_2 = out3 or pos_z_2
						end
						helper_ee5b84d4(5)
						monster.SetNextPos(pos_x_2, pos_y - 20.0, pos_z_2, 1.8, 1.8)
						helper_cbe4d8e2()
						monster.ResetMove()
					else
						monster.SetMos("歩き", -1, 2)
						helper_ee5b84d4(5)
						helper_82cb5588(vm.f32(0.09817477))
						helper_cbe4d8e2()
						helper_442b9962()
					end
					monster.SetIntFlag(1, 0)
					monster.SetIntFlag(2, 0)
				end
			end
			monster.SetMos("立ち")
			helper_b9fff8e1()
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
	if var17 < 30.0 then
		var7 = monster.GetRndf(360.0) or var7
		monster.SetMos("歩き", -1.0, 0)
		helper_179581d3(var7, 3.0)
		var17 = monster.SearchArea(100.0, 0.0) or var17
		var17 = vm.f32(var17 - 30.0)
		if var17 > 0.0 then
			helper_54469cb2(3.0, vm.f32(1.8), var7, var17, 30.0, 30)
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
				helper_549e2b35(place_pos_x, place_pos_y, place_pos_z, vm.f32(1.8), 3.0, var5, var18, 30.0, 60)
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
	if argc < 85 then
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
					var1 = helper_bfbcfc9f(vm.f32(1.8), 3.0, var20, var21, 30.0, 60)
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
					helper_cd4ea219(vm.f32(1.8), var7, 1000.0, 30.0, 60)
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
			helper_97d8f861(vm.f32(1.8), 3.0, var5, 360.0, 40.0, 30.0, argc)
			monster.SetMos("立ち", -1, 0)
		end
	end
end

--- Helper function.
local function helper_14468()
	local var0: f32 = 0
	local argc: s32 = 0
	local gekirin: s32 = 0
	gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
	if gekirin > 0 then
		return
	end
	var0 = monster.GetTargetDist() or var0
	if var0 > 60.0 then
		monster.SetMos("走り", -1, 4)
		helper_e1c3e640(vm.f32(3.6), 4.0, 45.0, 90)
	end
	if var0 < 100.0 then
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			helper_126d0()
			monster.SetMos("立ち", -1, 4)
		else
			helper_12268()
			monster.SetMos("立ち", -1, 4)
		end
	end
end

--- Helper function.
local function helper_12b24()
	local pos_x: f32 = 0
	local pos_z: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local pos_y_2: f32 = 0
	monster.SetMos("避けin", -1, 6)
	helper_cbe4d8e2()
	monster.SetMos("避けin攻撃", -1, 6)
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y_2 = out2 or pos_y_2
	end
	var3 = monster.GetTargetDist() or var3
	var3 = vm.f32(var3 + 20.0)
	do
		local out1, _, out3 = monster.GetRefanglePos(0.0, var3)
		pos_x = out1 or pos_x
		pos_z = out3 or pos_z
	end
	var4 = vm.f32(var3 / 32.0)
	monster.SetNextPos(pos_x, pos_y_2, pos_z, var4, var4)
	helper_cbe4d8e2()
	monster.ResetMove()
	monster.SetMos("立ち")
	helper_ee5b84d4(8)
end

local script = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Sets the monster up when it is placed.
function script.init()
	local get_not_used_texb: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	monster.SetObj(0, "bcol00")
	monster.SetObj(1, "dcol00")
	monster.SetObj(2, "dcol01")
	monster.SetObj(3, "dcol02")
	monster.SetObj(4, "dcol03")
	monster.SetDmg2("敵基本１", 4.5, "攻撃１", 0.3, 0.4, 0)
	monster.SetDmg2("敵基本１", 4.5, "攻撃１", 0.42, 0.56, 1)
	monster.SetDmg2("敵基本１", 5.5, "避け攻撃", 0.0, 1.0, 3)
	get_not_used_texb = monster.EsmGetNotuesdTexb() or get_not_used_texb
	if get_not_used_texb ~= -1 then
		var1 = monster.LoadEffectScript("毒液L", get_not_used_texb) or var1
		var2 = monster.LoadEffectScript("毒液H", get_not_used_texb) or var2
		if (if var1 ~= 0 then 1 else var2) ~= 0 then
			monster.EsmAddTexb()
		end
	end
end

--- Runs the monster's normal behaviour.
function script.loop()
	local gekirin: s32 = 0
	local var1: f32 = 0
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
	monster.SetActStatus(0)
	gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
	if gekirin ~= 0 then
		helper_58087289()
		while true do
			var1 = monster.GetTargetDist() or var1
			if var1 < 200.0 then
				helper_12f78()
				helper_138a0()
			elseif helper_a25c5b2e() ~= 0 then
				helper_12f78()
				helper_138a0()
			else
				helper_f064()
			end
		end
	else
		helper_14468()
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
	helper_cbe4d8e2()
	helper_ee5b84d4(12)
	monster.SetMos("立ち")
	helper_1ef0d4b2()
end

--- Reacts to a hit that knocks it over.
function script.on_knockdown()
	helper_fd16d93e()
	monster.SetMos("吹っ飛び", -1, 6)
	monster.BlowStart(3.0, 0.05, 20)
	helper_cbe4d8e2()
	monster.SetActStatus(1)
	helper_ee5b84d4(45)
	monster.SetActStatus(0)
	monster.SetMos("起き上がり", -1, 6)
	helper_cbe4d8e2()
	monster.SetMos("立ち")
	helper_6a21fe95()
end

--- Guards against a hit.
function script.on_guard()
	helper_ab4b367a()
	monster.SetMos("ガード", -1, 0)
	monster.BlowStart(3.0, 0.0, 2)
	helper_ee5b84d4(8)
	helper_a551797e()
end

--- Dodges the target's first kind of attack.
function script.on_dodge_1()
	local pos_y: f32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local pos_x_2: f32 = 0
	local pos_z_2: f32 = 0
	helper_49610f43()
	monster.SetIntFlag(1, 1)
	monster.SetIntFlag(2, 1)
	monster.ResetMove()
	helper_93495fdf()
	helper_b9fff8e1()
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y = out2 or pos_y
	end
	argc = monster.GetRnd(100) or argc
	if argc > 50 then
		helper_12b24()
	else
		argc_2 = monster.GetRnd(100) or argc_2
		if argc_2 > 50 then
			monster.SetMos("ステップ後", -1, 2)
			do
				local out1, _, out3 = monster.GetRefanglePos(3.1415927, 40.0)
				pos_x_2 = out1 or pos_x_2
				pos_z_2 = out3 or pos_z_2
			end
			helper_ee5b84d4(10)
			monster.SetNextPos(pos_x_2, pos_y - 20.0, pos_z_2, 4.5, 2.0)
			helper_cbe4d8e2()
		else
			monster.SetMos("避けin", -1, 6)
			helper_cbe4d8e2()
			monster.SetMos("避け戻り", -1, 6)
			helper_cbe4d8e2()
		end
	end
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
	helper_a551797e()
end

--- Dodges the target's second kind of attack.
function script.on_dodge_2()
	local pos_y: f32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local pos_x_2: f32 = 0
	local pos_z_2: f32 = 0
	local argc_3: s32 = 0
	helper_49610f43()
	monster.SetIntFlag(1, 1)
	monster.SetIntFlag(2, 1)
	monster.ResetMove()
	helper_93495fdf()
	helper_b9fff8e1()
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y = out2 or pos_y
	end
	argc = monster.GetRnd(100) or argc
	if argc > 70 then
		helper_12b24()
	else
		argc_2 = monster.GetRnd(100) or argc_2
		if argc_2 > 100 then
			argc_3 = monster.GetRnd(100) or argc_3
			if argc_3 > 50 then
				monster.SetMos("ステップ左", -1, 6)
				do
					local out1, _, out3 = monster.GetRefanglePos(1.5707964, 30)
					pos_x_2 = out1 or pos_x_2
					pos_z_2 = out3 or pos_z_2
				end
			else
				monster.SetMos("ステップ右", -1, 6)
				do
					local out1, _, out3 = monster.GetRefanglePos(-1.5707964, 30)
					pos_x_2 = out1 or pos_x_2
					pos_z_2 = out3 or pos_z_2
				end
			end
			helper_ee5b84d4(5)
			monster.SetNextPos(pos_x_2, pos_y - 20.0, pos_z_2, 3.0, 5.0)
			helper_8566bb6e(20)
		else
			monster.SetMos("避けin", -1, 6)
			helper_cbe4d8e2()
			monster.SetMos("避け戻り", -1, 6)
			helper_cbe4d8e2()
		end
	end
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
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
		helper_b9fff8e1()
	end
end

--- Lands the monster after it has been thrown.
function script.on_land()
	helper_ba87ea88()
	monster.ResetMove()
	monster.SetShrowEnd()
	helper_ee5b84d4(10)
	monster.ResetMotion()
	monster.SetMos("起き上がり", -1, 6)
	helper_cbe4d8e2()
	helper_b44b0a55()
	return 1
end

--- Stuns the monster.
function script.on_stun()
	helper_d30a9fa2()
	monster.SetMos("吹っ飛び", -1, 6)
	helper_cbe4d8e2()
	monster.SetMos("起き上がり", -1, 6)
	helper_cbe4d8e2()
	helper_e05438b5()
end

return script
