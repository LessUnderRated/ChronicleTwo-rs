--!strict
-- dungeon/monster/e220a.stb: monster script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_02ce7891 = require("@lib/monster/helper_02ce7891")
local helper_193f5239 = require("@lib/monster/helper_193f5239")
local helper_1ef0d4b2 = require("@lib/monster/helper_1ef0d4b2")
local helper_49610f43 = require("@lib/monster/helper_49610f43")
local helper_54c8d4e5 = require("@lib/monster/helper_54c8d4e5")
local helper_56d63eae = require("@lib/monster/helper_56d63eae")
local helper_5d37e9f4 = require("@lib/monster/helper_5d37e9f4")
local helper_6a170e39 = require("@lib/monster/helper_6a170e39")
local helper_6a21fe95 = require("@lib/monster/helper_6a21fe95")
local helper_6d5002db = require("@lib/monster/helper_6d5002db")
local helper_754712d9 = require("@lib/monster/helper_754712d9")
local helper_7ca8a12f = require("@lib/monster/helper_7ca8a12f")
local helper_890ee63a = require("@lib/monster/helper_890ee63a")
local helper_8be991f0 = require("@lib/monster/helper_8be991f0")
local helper_9df6409a = require("@lib/monster/helper_9df6409a")
local helper_a551797e = require("@lib/monster/helper_a551797e")
local helper_ab4b367a = require("@lib/monster/helper_ab4b367a")
local helper_b9b0f992 = require("@lib/monster/helper_b9b0f992")
local helper_bf4db880 = require("@lib/monster/helper_bf4db880")
local helper_c3e8ae39 = require("@lib/monster/helper_c3e8ae39")
local helper_d30a9fa2 = require("@lib/monster/helper_d30a9fa2")
local helper_d8cf1050 = require("@lib/monster/helper_d8cf1050")
local helper_e05438b5 = require("@lib/monster/helper_e05438b5")

--- Helper function.
local function helper_1c54()
	local boss: s32 = 0
	boss = monster.GetBossFlag() or boss
	if boss == 0 then
		monster.GetPos_3()
		monster.SetClipDist(35.0)
	else
		monster.SetClipDist(999999.0)
	end
end

--- Helper function.
local function helper_13dc0()
	local argc: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	var1 = monster.GetTargetDist() or var1
	argc = monster.GetRnd(100) or argc
	if argc < 25 then
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			argc = monster.GetRnd(100) or argc
			if argc < 80 then
				monster.VPush(0, 8)
				monster.SetMos("歩き", -1, 0)
				helper_b9b0f992(vm.f32(1.8), 3.0, 64.0, 60)
				monster.SetMos("立ち", -1, 0)
			else
				monster.VPush(0, 16)
				monster.SetMos("立ち", -1, 0)
				helper_7ca8a12f(64.0, 45.0, 75)
			end
		else
			monster.VPush(0, 64)
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				var2 = -30.0
			else
				var2 = 30.0
			end
			monster.SetMos("歩き", -1, 0)
			helper_890ee63a(3.0)
			monster.SetMos("歩き", -1, 0)
			helper_8be991f0(vm.f32(1.8), 3.0, var2, var1, 200.0, 45)
			monster.SetMos("歩き", -1, 0)
			helper_890ee63a(3.0)
			monster.SetMos("立ち", -1, 0)
			helper_7ca8a12f(64.0, 45.0, 30)
		end
	else
		monster.VPush(0, 32)
		monster.SetMos("走り", -1, 0)
		helper_b9b0f992(3.0, 3.0, 64.0, 120)
		monster.SetMos("立ち", -1, 0)
	end
	print("far------------------------------------\n")
end

--- Helper function.
local function helper_10964()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local attack: s32 = 0
	local var7: f32 = 0
	monster.SetIntFlag(2, 1)
	monster.SetMos("歩き", -1, 0)
	helper_890ee63a(6.0)
	monster.SetMos("攻撃１", -1, 6)
	helper_754712d9(3.0, helper_9df6409a(15))
	do
		local out1, out2, out3 = monster.GetPos_3()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var7 = monster.GetTargetAngle() or var7
	pos_x = vm.f32(pos_x + vm.f32(vm.sin(var7) * 100.0))
	pos_z = vm.f32(pos_z + vm.f32(vm.cos(var7) * 100.0))
	monster.SetNextPos(pos_x, pos_y, pos_z, 5.3999996, 5.3999996)
	helper_c3e8ae39(helper_9df6409a(17))
	do
		local out1, out2, out3 = monster.GetFramePos("chn76")
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	attack = monster.GetBaseAttack_1() or attack
	monster.EsmCreate_1("ヴァンガード衝撃波")
	monster.EsmSetVect1(-1, pos_x, pos_y - 20.0, pos_z)
	monster.EsmSetValue(-1, 0, attack)
	monster.ResetMove()
	helper_56d63eae()
	monster.SetMos("立ち", -1, 0)
	helper_c3e8ae39(12)
	monster.SetIntFlag(2, 0)
end

--- Helper function.
local function helper_132a8()
	local argc: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	var1 = monster.GetTargetDist() or var1
	argc = monster.GetRnd(100) or argc
	if argc < 60 then
		argc = monster.GetRnd(100) or argc
		if argc < 70 then
			helper_bf4db880()
		else
			monster.SetMos("歩き", -1, 0)
			helper_890ee63a(3.0)
			monster.SetMos("走り", -1, 0)
			helper_b9b0f992(3.0, 3.0, 64.0, 90)
			helper_10964()
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 55 then
			argc = monster.GetRnd(100) or argc
			if argc < 70 then
				monster.VPush(0, 8)
				monster.SetMos("歩き", -1, 0)
				helper_b9b0f992(vm.f32(1.8), 3.0, 64.0, 90)
				monster.SetMos("立ち", -1, 0)
			else
				monster.VPush(0, 32)
				monster.SetMos("走り", -1, 0)
				helper_b9b0f992(3.0, 3.0, 64.0, 60)
				monster.SetMos("立ち", -1, 0)
			end
		else
			monster.VPush(0, 64)
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				var2 = -30.0
			else
				var2 = 30.0
			end
			monster.SetMos("歩き", -1, 0)
			helper_890ee63a(3.0)
			monster.SetMos("歩き", -1, 0)
			helper_8be991f0(vm.f32(1.8), 3.0, var2, var1, 1.0, 45)
			monster.SetMos("歩き", -1, 0)
			helper_890ee63a(3.0)
			monster.SetMos("立ち", -1, 0)
			helper_7ca8a12f(64.0, 45.0, 30)
		end
	end
	print("middle------------------------------------\n")
end

--- Helper function.
local function helper_12b44()
	local argc: s32 = 0
	local var4: f32 = 0
	monster.GetMonsterLifeInt()
	argc = monster.GetRnd(100) or argc
	if argc < 80 then
		monster.GetTargetDist()
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			monster.SetMos("歩き", -1, 0)
			helper_890ee63a(3.0)
			monster.SetMos("走り", -1, 0)
			helper_b9b0f992(3.0, 3.0, 64.0, 90)
			helper_10964()
		else
			helper_bf4db880()
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
		else
			monster.VPush(0, 64)
			argc = monster.GetRnd(100) or argc
			var4 = monster.GetRndf(60.0) or var4
			if argc < 50 then
				var4 = vm.f32(-var4 - 30.0)
			else
				var4 = vm.f32(var4 + 30.0)
			end
			monster.SetMos("歩き", -1, 0)
			helper_8be991f0(vm.f32(1.8), 3.0, var4, 128.0, 1.0, 25)
			helper_890ee63a(3.0)
			monster.SetMos("立ち", -1, 0)
			helper_c3e8ae39(12)
		end
	end
	print("near------------------\n")
end

--- Helper function.
local function helper_147dc()
	local var0: f32 = 0
	local priority: s32 = 0
	while true do
		vm.wait()
		var0 = monster.GetTargetDist() or var0
		if var0 > 99999.0 then
			vm.wait()
			return
		end
		priority = monster.GetPriority() or priority
		if priority > 1 then
			helper_54c8d4e5()
			continue
		end
		if var0 < 99999.0 and var0 >= 300.0 then
			helper_13dc0()
		elseif var0 < 300.0 and var0 >= 200.0 then
			helper_132a8()
		else
			helper_12b44()
		end
	end
end

local script = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Sets the monster up when it is placed.
function script.init()
	local get_not_used_texb: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local grade: s32 = 0
	monster.SetClipDist(999999.9)
	monster.SetDmg2("吹っ飛び弱", 17.0, "攻撃１", 0.435, 0.532, 0)
	get_not_used_texb = monster.EsmGetNotuesdTexb() or get_not_used_texb
	if get_not_used_texb ~= -1 then
		var1 = monster.LoadEffectScript("ヴァンガード衝撃波", get_not_used_texb) or var1
		var2 = monster.LoadEffectScript("鼻弾Ｌ", get_not_used_texb) or var2
		var3 = monster.LoadEffectScript("鼻弾Ｈ", get_not_used_texb) or var3
		if (if (if var1 ~= 0 then 1 else var2) ~= 0 then 1 else var3) ~= 0 then
			monster.EsmAddTexb()
		end
	end
	monster.VPush(0, 0)
	grade = monster.GetMonsGrade_2(-1) or grade
	if grade == 0 then
		monster.SetScoop(1003)
	end
	helper_1c54()
end

--- Runs the monster's normal behaviour.
function script.loop()
	local var0: f32 = 0
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
	monster.SetActStatus(0)
	monster.GetGekirin()
	while true do
		vm.wait()
		var0 = monster.GetTargetDist() or var0
		if var0 < 99999.0 then
			helper_147dc()
		else
			helper_6a170e39()
		end
	end
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
	helper_d8cf1050()
	monster.SetMos("ダメージ", -1, 6)
	monster.BlowStart(4.0, 0.0, 3)
	helper_56d63eae()
	helper_c3e8ae39(12)
	monster.SetMos("立ち")
	helper_6a21fe95()
end

--- Guards against a hit.
function script.on_guard()
	helper_ab4b367a()
	monster.ResetMotion()
	monster.SetMos("ガード", -1, 6)
	monster.BlowStart(3.0, 0.0, 2)
	helper_c3e8ae39(8)
	helper_a551797e()
end

--- Dodges the target's first kind of attack.
function script.on_dodge_1()
	helper_49610f43()
	helper_a551797e()
end

--- Dodges the target's second kind of attack.
function script.on_dodge_2()
	local value: s32 = 0
	local var1: f32 = 0
	value = monster.VPop(0) or value
	var1 = monster.GetTargetDist() or var1
	if
		(
			if (if bit32.band(value, 4) ~= 0 then 1 else bit32.band(value, 2)) ~= 0 or var1 > 300.0
				then 1
				else bit32.band(value, 16)
		) ~= 0
	then
		monster.SetMos("走り", -1, 4)
		helper_6d5002db(6.0, 15.0, 64.0, 90)
		helper_10964()
		monster.SetMos("立ち", -1, 0)
	end
end

--- Runs the monster's death.
function script.on_death()
	helper_02ce7891()
	monster.RunEventScript(500)
	monster.SetAttrib(2, 1)
	monster.SetAttrib(64, 1)
	monster.SetMos("死に", -1, 6)
	helper_56d63eae()
	monster.SetDeadOff()
	helper_c3e8ae39(30)
	while true do
		vm.wait()
	end
	helper_193f5239()
end

--- Reacts to being caught by a frame that lifts it.
-- Defined empty, so the engine runs this instead of its default.
function script.on_caught() end

--- Lands the monster after it has been thrown.
-- Defined empty, so the engine runs this instead of its default.
function script.on_land() end

--- Stuns the monster.
function script.on_stun()
	helper_d30a9fa2()
	monster.SetMos("ダメージ", -1, 4)
	helper_c3e8ae39(3)
	helper_e05438b5()
end

return script
