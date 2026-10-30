--!strict
-- dungeon/monster/e03a.stb: monster script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_02ce7891 = require("@lib/monster/helper_02ce7891")
local helper_0a773d51 = require("@lib/monster/helper_0a773d51")
local helper_125e5305 = require("@lib/monster/helper_125e5305")
local helper_193f5239 = require("@lib/monster/helper_193f5239")
local helper_1adea708 = require("@lib/monster/helper_1adea708")
local helper_1e395517 = require("@lib/monster/helper_1e395517")
local helper_1ef0d4b2 = require("@lib/monster/helper_1ef0d4b2")
local helper_243517f2 = require("@lib/monster/helper_243517f2")
local helper_442b9962 = require("@lib/monster/helper_442b9962")
local helper_49610f43 = require("@lib/monster/helper_49610f43")
local helper_4a39d2ab = require("@lib/monster/helper_4a39d2ab")
local helper_56d63eae = require("@lib/monster/helper_56d63eae")
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
local helper_ade2dbe2 = require("@lib/monster/helper_ade2dbe2")
local helper_b44b0a55 = require("@lib/monster/helper_b44b0a55")
local helper_b9fff8e1 = require("@lib/monster/helper_b9fff8e1")
local helper_ba87ea88 = require("@lib/monster/helper_ba87ea88")
local helper_bfbcfc9f = require("@lib/monster/helper_bfbcfc9f")
local helper_cbe4d8e2 = require("@lib/monster/helper_cbe4d8e2")
local helper_d30a9fa2 = require("@lib/monster/helper_d30a9fa2")
local helper_e05438b5 = require("@lib/monster/helper_e05438b5")
local helper_e1c3e640 = require("@lib/monster/helper_e1c3e640")
local helper_e62edeb2 = require("@lib/monster/helper_e62edeb2")
local helper_e8739558 = require("@lib/monster/helper_e8739558")
local helper_ee5b84d4 = require("@lib/monster/helper_ee5b84d4")
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
local function helper_137ec()
	local argc: s32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 50 then
		argc = monster.GetRnd(100) or argc
		var3 = monster.GetRndf(30.0) or var3
		var4 = monster.GetRndf(30.0) or var4
		var4 = vm.f32(var4 + 80.0)
		if argc < 50 then
			var3 = vm.f32(-var3 - 30.0)
		else
			var3 = vm.f32(var3 + 30.0)
		end
		monster.SetMos("歩き", -1, 0)
		local _ = helper_bfbcfc9f(1.75, vm.f32(4.8), var3, var4, 30.0, 30)
		helper_83e135e0(vm.f32(4.8))
	else
		monster.SetMos("立ち", -1, 0)
		helper_e62edeb2(30.0, 45.0, 30)
	end
end

--- Helper function.
local function helper_160a0()
	local argc: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 75 then
		monster.SetMos("歩き", -1, 0)
		helper_e1c3e640(1.75, vm.f32(4.8), 80.0, 25)
	else
		argc = monster.GetRnd(100) or argc
		if argc < 10 then
			monster.SetMos("歩き", -1, 0)
			helper_97d8f861(1.75, vm.f32(4.8), 30.0, 180.0, 30.0, 80.0, 25)
		end
	end
end

--- Helper function.
local function helper_13074()
	monster.ResetMotion()
	monster.SetMos("攻撃２", -1, 6)
	helper_cbe4d8e2()
end

--- Helper function.
local function helper_12f60()
	monster.ResetMotion()
	monster.SetMos("攻撃１", -1, 6)
	helper_cbe4d8e2()
end

--- Helper function.
local function helper_15a68()
	local argc: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 55 then
		argc = monster.GetRnd(100) or argc
		if argc < 30 then
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(vm.f32(4.8))
			monster.SetMos("走り", -1, 0)
			helper_e1c3e640(6.0, vm.f32(4.8), 30.0, 30)
			helper_83e135e0(vm.f32(4.8))
			helper_13074()
			monster.SetMos("立ち", -1, 0)
			helper_ee5b84d4(3)
		else
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(vm.f32(4.8))
			monster.SetMos("走り", -1, 0)
			helper_e1c3e640(6.0, vm.f32(4.8), 30.0, 30)
			helper_83e135e0(vm.f32(4.8))
			helper_12f60()
			monster.SetMos("立ち", -1, 0)
			helper_ee5b84d4(3)
		end
	else
		monster.SetMos("歩き", -1, 0)
		helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
		helper_83e135e0(vm.f32(4.8))
	end
end

--- Helper function.
local function helper_13678()
	monster.SetMos("攻撃１", -1, 4)
	helper_ee5b84d4(helper_9df6409a(18))
	monster.SetMos("攻撃２", -1, 2)
	helper_cbe4d8e2()
end

--- Helper function.
local function helper_13188()
	monster.ResetMotion()
	monster.SetMos("攻撃１", -1, 6)
	helper_ee5b84d4(helper_9df6409a(22))
	monster.SetMos("攻撃２", -1, 2)
	helper_cbe4d8e2()
end

--- Helper function.
local function helper_12a44(move_speed: f32)
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
	helper_ee5b84d4(helper_9df6409a(6))
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y_2 = out2 or pos_y_2
	end
	monster.SetNextPos(pos_x, pos_y_2, pos_z, move_speed, move_speed + 1.0)
	helper_ee5b84d4(helper_9df6409a(3))
	monster.SetAttrib(32, 0)
	helper_cbe4d8e2()
	monster.ResetMove()
	monster.SetMos("立ち", -1)
end

--- Helper function.
local function helper_1229c()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var4: f32 = 0
	local target: f32 = 0
	local target_2: f32 = 0
	local target_3: f32 = 0
	local var9: f32 = 0
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
		monster.SetMos("ステップ左", -1, 2)
		var4 = vm.f32(var4 + vm.f32(1.5707964))
	else
		monster.SetMos("ステップ右", -1, 2)
		var4 = vm.f32(var4 - vm.f32(1.5707964))
	end
	var9 = 100.0
	target = vm.f32(pos_x + vm.f32(vm.sin(var4) * var9))
	target_2 = vm.f32(pos_y - 20.0)
	target_3 = vm.f32(pos_z + vm.f32(vm.cos(var4) * var9))
	helper_4a39d2ab(vm.f32(0.28), vm.f32(0.05))
	monster.SetAttrib(32, 1)
	monster.SetNextPos(target, target_2, target_3, 3.6, 3.6)
	helper_4a39d2ab(vm.f32(0.68), vm.f32(0.05))
	monster.SetAttrib(32, 0)
	monster.ResetMove()
	helper_cbe4d8e2()
	monster.SetMos("立ち", -1, 0)
end

--- Helper function.
local function helper_14c48()
	local argc: s32 = 0
	monster.GetMonsterLife()
	argc = monster.GetRnd(100) or argc
	if argc < 65 then
		argc = monster.GetRnd(100) or argc
		if argc < 80 then
			argc = monster.GetRnd(100) or argc
			if argc < 30 then
				monster.SetMos("歩き", -1, 0)
				helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
				helper_e8739558(vm.f32(4.8), 20.0, 15)
				helper_13074()
				monster.SetMos("立ち", -1, 0)
				helper_ee5b84d4(3)
			else
				argc = monster.GetRnd(100) or argc
				if argc < 85 then
					monster.SetMos("歩き", -1, 0)
					helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
					helper_83e135e0(vm.f32(4.8))
					helper_12f60()
					monster.SetMos("立ち", -1, 0)
					helper_ee5b84d4(3)
				else
					monster.SetMos("歩き", -1, 0)
					helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
					helper_83e135e0(vm.f32(4.8))
					helper_13678()
					monster.SetMos("立ち", -1, 0)
					helper_ee5b84d4(3)
				end
			end
		else
			monster.SetMos("歩き", -1, 0)
			helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
			helper_83e135e0(vm.f32(4.8))
			helper_13188()
			monster.SetMos("立ち", -1, 0)
			helper_ee5b84d4(3)
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 40 then
			argc = monster.GetRnd(100) or argc
			if argc < 60 then
				monster.SetMos("歩き", -1, 0)
				helper_83e135e0(vm.f32(4.8))
				helper_12a44(vm.f32(2.1000001))
				argc = monster.GetRnd(100) or argc
				if argc < 50 then
					monster.SetMos("走り", -1, 0)
					helper_e1c3e640(6.0, vm.f32(4.8), 30.0, 30)
					helper_12f60()
				end
			else
				monster.SetMos("歩き", -1, 0)
				helper_83e135e0(vm.f32(4.8))
				helper_1229c()
				monster.SetMos("歩き", -1, 0)
				helper_83e135e0(vm.f32(4.8))
				monster.SetMos("立ち", -1, 0)
			end
		else
			monster.SetMos("歩き", -1, 0)
			helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
			helper_83e135e0(vm.f32(4.8))
		end
	end
end

--- Helper function.
local function helper_16370()
	local var3: f32 = 0
	local priority: s32 = 0
	local gekirin: s32 = 0
	while true do
		helper_b9fff8e1()
		helper_ade2dbe2()
		var3 = monster.GetTargetDist() or var3
		if var3 > 230.0 then
			helper_b9fff8e1()
			return
		end
		gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
		if gekirin == 0 then
			return
		end
		priority = monster.GetPriority() or priority
		if priority > 3 then
			helper_137ec()
			continue
		end
		if var3 < 230.0 and var3 >= 140.0 then
			helper_160a0()
		elseif var3 < 140.0 and var3 >= 80.0 then
			helper_15a68()
		else
			helper_14c48()
		end
		helper_b9fff8e1()
	end
end

--- Helper function.
local function helper_118d0()
	monster.SetMos("走り", -1, 0)
	helper_e1c3e640(6.0, vm.f32(4.8), 30.0, 180)
	monster.SetMos("立ち", -1, 0)
end

--- Helper function.
local function helper_13c6c()
	local var3: f32 = 0
	local priority: s32 = 0
	local argc: s32 = 0
	local gekirin: s32 = 0
	while true do
		helper_b9fff8e1()
		gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
		if gekirin > 0 then
			return
		end
		priority = monster.GetPriority() or priority
		if priority > 4 then
			helper_137ec()
			continue
		end
		if var3 < 80.0 then
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				argc = monster.GetRnd(100) or argc
				if argc < 30 then
					monster.SetMos("歩き", -1, 0)
					helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
					helper_e8739558(vm.f32(4.8), 20.0, 15)
					helper_13074()
					monster.SetMos("立ち", -1, 0)
					helper_ee5b84d4(2)
				else
					argc = monster.GetRnd(100) or argc
					if argc < 85 then
						monster.SetMos("歩き", -1, 0)
						helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
						helper_83e135e0(vm.f32(4.8))
						helper_12f60()
						monster.SetMos("立ち", -1, 0)
						helper_ee5b84d4(2)
					else
						monster.SetMos("歩き", -1, 0)
						helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
						helper_83e135e0(vm.f32(4.8))
						helper_13678()
						monster.SetMos("立ち", -1, 0)
						helper_ee5b84d4(2)
					end
				end
			else
				monster.SetMos("歩き", -1, 0)
				helper_e1c3e640(1.75, vm.f32(4.8), 30.0, 30)
				helper_83e135e0(vm.f32(4.8))
				helper_13188()
				monster.SetMos("立ち", -1, 0)
				helper_ee5b84d4(2)
			end
		else
			argc = monster.GetRnd(100) or argc
			if argc < 70 then
				argc = monster.GetRnd(100) or argc
				if argc < 30 then
					monster.SetMos("歩き", -1, 0)
					helper_83e135e0(vm.f32(4.8))
					monster.SetMos("走り", -1, 0)
					helper_e1c3e640(6.0, vm.f32(4.8), 30.0, 30)
					helper_83e135e0(vm.f32(4.8))
					helper_13074()
					monster.SetMos("立ち", -1, 0)
					helper_ee5b84d4(3)
				else
					monster.SetMos("歩き", -1, 0)
					helper_83e135e0(vm.f32(4.8))
					monster.SetMos("走り", -1, 0)
					helper_e1c3e640(6.0, vm.f32(4.8), 30.0, 30)
					helper_83e135e0(vm.f32(4.8))
					helper_12f60()
					monster.SetMos("立ち", -1, 0)
					helper_ee5b84d4(3)
				end
			else
				monster.SetMos("走り", -1, 0)
				helper_e1c3e640(6.0, vm.f32(4.8), 30.0, 90)
				monster.SetMos("立ち", -1, 0)
			end
		end
	end
end

--- Helper function.
local function helper_187d8()
	local var0: f32 = 0
	local var1: f32 = 0
	local gekirin: s32 = 0
	gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
	if gekirin > 0 then
		helper_ade2dbe2()
		var0 = monster.GetTargetDist() or var0
		if helper_a25c5b2e() == 0 then
			if var0 < 230.0 then
				helper_16370()
			else
				helper_1e395517()
			end
		else
			var1 = helper_243517f2(var1)
			if var0 < var1 then
				if var0 < 140.0 then
					helper_65eb2b74(0)
					helper_16370()
				else
					helper_118d0()
				end
			else
				helper_65eb2b74(0)
			end
		end
	else
		helper_13c6c()
	end
end

local script = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Sets the monster up when it is placed.
function script.init()
	monster.SetDmg2("Ｍ連撃１", 2.0, "攻撃１", 0.36, 0.5, 0, 1)
	monster.SetDmg2("通常攻撃", 1.5, "攻撃２", 0.27, 0.5, 0)
	monster.SetDmg2("通常攻撃", 2.0, "攻撃２", 0.27, 0.5, 1)
	monster.SwEffect(0, "攻撃１", 0.25, 0.27, "dcol0", "dcol1", 77, 10, 30)
	monster.SwEffect(0, "攻撃２", 0.3, 0.32, "dcol0", "dcol1", 77, 10, 30)
	helper_3048()
	helper_0a773d51(150)
end

--- Runs the monster's normal behaviour.
function script.loop()
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
	monster.SetActStatus(0)
	monster.GetGekirin()
	while true do
		helper_b9fff8e1()
		helper_187d8()
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
	monster.SetActStatus(1)
	monster.BlowStart(3.0, 0.05, 20)
	helper_cbe4d8e2()
	helper_ee5b84d4(45)
	monster.SetActStatus(0)
	monster.SetMos("起き上がり", -1, 6)
	helper_cbe4d8e2()
	monster.SetMos("立ち")
	helper_6a21fe95()
end

--- Guards against a hit.
function script.on_guard()
	local argc: s32 = 0
	helper_ab4b367a()
	argc = monster.GetRnd(100) or argc
	monster.ResetMotion()
	monster.SetMos("ガードin", -1, 6)
	helper_cbe4d8e2()
	monster.SetMos("ガード", -1, 0)
	monster.BlowStart(3.0, 0.0, 2)
	helper_ee5b84d4(8)
	if argc < 30 then
		helper_13074()
		monster.SetMos("立ち", -1, 0)
		helper_ee5b84d4(3)
	else
		monster.SetMos("ガードout", -1, 2)
		helper_cbe4d8e2()
	end
	monster.SetMos("立ち")
	helper_a551797e()
end

--- Dodges the target's first kind of attack.
function script.on_dodge_1()
	local argc: s32 = 0
	helper_49610f43()
	argc = monster.GetRnd(20) or argc
	if argc < 20 then
		monster.SetMos("歩き", -1, 0)
		helper_83e135e0(vm.f32(4.8))
		helper_1229c()
		monster.SetMos("歩き", -1, 0)
		helper_83e135e0(vm.f32(4.8))
		monster.SetMos("立ち", -1, 0)
	else
		monster.SetMos("ステップ後", -1, 0)
		helper_12a44(vm.f32(2.1000001))
	end
	helper_a551797e()
end

--- Dodges the target's second kind of attack.
function script.on_dodge_2()
	helper_49610f43()
	monster.SetMos("ガードin", -1, 6)
	helper_cbe4d8e2()
	monster.SetMos("ガード", -1, 0)
	monster.BlowStart(3.0, 0.0, 2)
	helper_ee5b84d4(8)
	monster.SetMos("ガードout", -1, 2)
	helper_cbe4d8e2()
	monster.SetMos("立ち")
	helper_a551797e()
end

--- Runs the monster's death.
function script.on_death()
	local var0: f32 = 0
	local argc: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 10 then
		monster.ResetMove()
		helper_442b9962()
		monster.SetIntFlag(1, 1)
		monster.SetIntFlag(2, 1)
		monster.SetAttrib(32, 1)
		monster.SetMos("死に", -1, 2)
		helper_cbe4d8e2()
		var0 = monster.GetRndf(0.3) or var0
		var0 = vm.f32(var0 + vm.f32(0.2))
		monster.SetMonsterLife(var0)
		helper_ee5b84d4(45)
		monster.SetMos("起き上がり", -1, 2)
		helper_cbe4d8e2()
		monster.SetIntFlag(1, 0)
		monster.SetIntFlag(2, 0)
		monster.SetAttrib(32, 0)
		return
	end
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
