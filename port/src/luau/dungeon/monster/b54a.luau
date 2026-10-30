--!strict
-- dungeon/monster/b54a.stb: monster script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_02ce7891 = require("@lib/monster/helper_02ce7891")
local helper_193f5239 = require("@lib/monster/helper_193f5239")
local helper_1adea708 = require("@lib/monster/helper_1adea708")
local helper_1ef0d4b2 = require("@lib/monster/helper_1ef0d4b2")
local helper_211db10d = require("@lib/monster/helper_211db10d")
local helper_243517f2 = require("@lib/monster/helper_243517f2")
local helper_2ab15efa = require("@lib/monster/helper_2ab15efa")
local helper_49610f43 = require("@lib/monster/helper_49610f43")
local helper_5a759074 = require("@lib/monster/helper_5a759074")
local helper_5d37e9f4 = require("@lib/monster/helper_5d37e9f4")
local helper_637d07ca = require("@lib/monster/helper_637d07ca")
local helper_65eb2b74 = require("@lib/monster/helper_65eb2b74")
local helper_6911bbcd = require("@lib/monster/helper_6911bbcd")
local helper_83e135e0 = require("@lib/monster/helper_83e135e0")
local helper_8c937d2b = require("@lib/monster/helper_8c937d2b")
local helper_a25c5b2e = require("@lib/monster/helper_a25c5b2e")
local helper_a551797e = require("@lib/monster/helper_a551797e")
local helper_ab4b367a = require("@lib/monster/helper_ab4b367a")
local helper_b44b0a55 = require("@lib/monster/helper_b44b0a55")
local helper_b9fff8e1 = require("@lib/monster/helper_b9fff8e1")
local helper_ba87ea88 = require("@lib/monster/helper_ba87ea88")
local helper_bfbcfc9f = require("@lib/monster/helper_bfbcfc9f")
local helper_cbe4d8e2 = require("@lib/monster/helper_cbe4d8e2")
local helper_d30a9fa2 = require("@lib/monster/helper_d30a9fa2")
local helper_d742309a = require("@lib/monster/helper_d742309a")
local helper_e05438b5 = require("@lib/monster/helper_e05438b5")
local helper_e1c3e640 = require("@lib/monster/helper_e1c3e640")
local helper_e62edeb2 = require("@lib/monster/helper_e62edeb2")
local helper_ee5b84d4 = require("@lib/monster/helper_ee5b84d4")
local helper_fd9a14ac = require("@lib/monster/helper_fd9a14ac")

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
local function helper_150f4()
	local argc: s32 = 0
	monster.GetTargetDist()
	argc = monster.GetRnd(100) or argc
	if argc < 95 then
		monster.SetMos("歩き", -1, 0)
		helper_83e135e0(vm.f32(4.2))
		monster.SetMos("歩き", -1, 0)
		helper_e1c3e640(vm.f32(3.2), vm.f32(4.2), 100.0, 90)
		monster.SetMos("立ち", -1, 0)
	else
		argc = monster.GetRnd(100) or argc
		if argc < 25 then
			monster.SetMos("歩き", -1, 0)
			helper_8c937d2b(2.5, vm.f32(4.2), 100.0, 60)
			monster.SetMos("立ち", -1, 0)
		else
			monster.SetMos("立ち", -1, 0)
			helper_e62edeb2(46.0, 45.0, 75)
		end
	end
end

--- Helper function.
local function helper_12ebc(arg0: s32)
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	monster.SetMos("避け", -1, 2)
	print("foot=", var1, "-------------\n")
	helper_cbe4d8e2()
	monster.SetAttrib(1, 1)
	helper_ee5b84d4(vm.idiv(arg0, 2))
	do
		local out1, out2, out3 = monster.GetTargetPos()
		var2 = out1 or var2
		var3 = out2 or var3
		var4 = out3 or var4
	end
	monster.SetPos(var2, var3, var4)
	helper_ee5b84d4(vm.idiv(arg0, 2))
	monster.SetMos("避け戻り", -1, 2)
	helper_cbe4d8e2()
	monster.SetMos("立ち", -1, 0)
	monster.SetAttrib(1, 0)
end

--- Helper function.
local function helper_147d8()
	local argc: s32 = 0
	local var6: f32 = 0
	monster.GetTargetDist()
	argc = monster.GetRnd(100) or argc
	if argc < 80 then
		argc = monster.GetRnd(100) or argc
		if argc < 60 then
			monster.SetMos("歩き", -1, 0)
			helper_e1c3e640(2.5, vm.f32(4.2), 46.0, 45)
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				argc = monster.GetRnd(100) or argc
				if argc < 50 then
					helper_fd9a14ac()
				else
					helper_2ab15efa()
				end
			else
				helper_12ebc(6)
			end
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 75 then
			monster.SetMos("歩き", -1, 0)
			helper_e1c3e640(2.5, vm.f32(4.2), 46.0, 45)
			monster.SetMos("立ち", -1, 0)
		else
			argc = monster.GetRnd(100) or argc
			if argc < 45 then
			else
				argc = monster.GetRnd(100) or argc
				var6 = monster.GetRndf(60.0) or var6
				if argc < 50 then
					var6 = vm.f32(-var6 - 30.0)
				else
					var6 = vm.f32(var6 + 30.0)
				end
				monster.SetMos("歩き", -1, 0)
				helper_bfbcfc9f(2.5, vm.f32(4.2), var6, 92.0, 1.0, 25)
				helper_83e135e0(vm.f32(4.2))
				monster.SetMos("立ち", -1, 0)
				helper_ee5b84d4(9)
			end
		end
	end
end

--- Helper function.
local function helper_14100()
	local argc: s32 = 0
	local var4: f32 = 0
	monster.GetMonsterLife()
	argc = monster.GetRnd(100) or argc
	if argc < 80 then
		argc = monster.GetRnd(100) or argc
		if argc < 70 then
			argc = monster.GetRnd(100) or argc
			if argc < 70 then
				helper_fd9a14ac()
			else
				helper_2ab15efa()
			end
		else
			helper_12ebc(6)
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 45 then
			argc = monster.GetRnd(100) or argc
			var4 = monster.GetRndf(60.0) or var4
			if argc < 50 then
				var4 = vm.f32(-var4 - 30.0)
			else
				var4 = vm.f32(var4 + 30.0)
			end
			monster.SetMos("歩き", -1, 0)
			helper_bfbcfc9f(2.5, vm.f32(4.2), var4, 92.0, 1.0, 25)
			helper_83e135e0(vm.f32(4.2))
			monster.SetMos("立ち", -1, 0)
			helper_ee5b84d4(9)
		else
			argc = monster.GetRnd(30) or argc
			argc = vm.i32(argc + 15)
			helper_12ebc(argc)
		end
	end
end

--- Helper function.
local function helper_1562c()
	local var0: f32 = 0
	while true do
		helper_b9fff8e1()
		monster.GetMonsterLife()
		var0 = monster.GetTargetDist() or var0
		if var0 > 400.0 then
			helper_b9fff8e1()
			return
		end
		if var0 < 400.0 and var0 >= 200.0 then
			helper_150f4()
		elseif var0 < 200.0 and var0 >= 100.0 then
			helper_147d8()
		else
			helper_14100()
		end
	end
end

--- Helper function.
local function helper_16900()
	local argc: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 50 then
		monster.SetMos("歩き", -1, 0)
		helper_e1c3e640(2.5, vm.f32(4.2), 46.0, 45)
		monster.SetMos("立ち", -1, 0)
	else
		helper_12ebc(60)
	end
end

--- Helper function.
local function helper_16b34()
	local var0: f32 = 0
	local var1: f32 = 0
	var0 = monster.GetTargetDist() or var0
	if helper_a25c5b2e() == 0 then
		if var0 < 400.0 then
			helper_1562c()
		else
			monster.SetMos("歩き", -1, 0)
			helper_83e135e0(vm.f32(4.2))
			monster.SetMos("歩き", -1, 0)
			helper_637d07ca(2.5, vm.f32(4.2), 46.0, 90)
			monster.SetMos("立ち", -1, 0)
		end
	else
		var1 = helper_243517f2(var1)
		if var0 < var1 then
			if var0 < 100.0 then
				helper_65eb2b74(0)
				helper_1562c()
			else
				helper_16900()
			end
		else
			helper_65eb2b74(0)
		end
	end
end

local script = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Sets the monster up when it is placed.
function script.init()
	monster.SetDmg2("シードラ攻撃２", 8.0, "攻撃１", 0.404, 0.538, 1)
	monster.SetDmg2("シードラ攻撃２", 13.2, "攻撃１", 0.404, 0.538, 2)
	monster.SetDmg2("シードラ攻撃", 4.0, "攻撃２", 0.292, 0.375, 0)
	monster.SetDmg2("シードラ攻撃３", 8.0, "避け戻り", 0.0, 0.627, 3)
	monster.VPush(0, 0)
	monster.VPush(0, 0)
	helper_3048()
	monster.SetClipDist(99999.9)
end

--- Runs the monster's normal behaviour.
function script.loop()
	local value: s32 = 0
	local var3: f32 = 0
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
	monster.SetActStatus(0)
	monster.SetAttrib(1, 0)
	value = monster.VPop(0) or value
	if value == 0 then
		monster.SetMos("立ち", -1, 0)
		while true do
			var3 = monster.GetTargetDist() or var3
			if var3 < 500.0 then
				break
			elseif helper_a25c5b2e() ~= 0 then
				break
			else
				helper_b9fff8e1()
			end
		end
		monster.VPush(0, 1)
	end
	while true do
		helper_b9fff8e1()
		helper_16b34()
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
	monster.SetAttrib(1, 0)
	monster.SetMos("ダメージ", -1, 6)
	monster.BlowStart(4.0, 0.0, 3)
	helper_cbe4d8e2()
	helper_ee5b84d4(12)
	monster.SetMos("立ち")
	helper_1ef0d4b2()
end

--- Reacts to a hit that knocks it over.
-- Defined empty, so the engine runs this instead of its default.
function script.on_knockdown() end

--- Guards against a hit.
function script.on_guard()
	local argc: s32 = 0
	helper_ab4b367a()
	monster.SetAttrib(1, 0)
	argc = monster.GetRnd(30) or argc
	argc = vm.i32(argc + 15)
	helper_12ebc(argc)
	helper_a551797e()
end

--- Dodges the target's first kind of attack.
function script.on_dodge_1()
	local argc: s32 = 0
	helper_49610f43()
	monster.SetAttrib(1, 0)
	argc = monster.GetRnd(30) or argc
	argc = vm.i32(argc + 15)
	helper_12ebc(argc)
	helper_a551797e()
end

--- Dodges the target's second kind of attack.
function script.on_dodge_2()
	local argc: s32 = 0
	helper_49610f43()
	monster.SetAttrib(1, 0)
	argc = monster.GetRnd(30) or argc
	argc = vm.i32(argc + 15)
	helper_12ebc(argc)
	helper_a551797e()
end

--- Runs the monster's death.
function script.on_death()
	helper_02ce7891()
	monster.SetAttrib(1, 0)
	monster.SetMos("死に", -1, 2)
	helper_cbe4d8e2()
	monster.SetDeadOff()
	while true do
		helper_b9fff8e1()
	end
	helper_193f5239()
end

--- Reacts to being caught by a frame that lifts it.
function script.on_caught()
	helper_d742309a()
	helper_211db10d()
end

--- Lands the monster after it has been thrown.
function script.on_land()
	helper_ba87ea88()
	monster.SetAttrib(1, 0)
	helper_b44b0a55()
	return 1
end

--- Stuns the monster.
function script.on_stun()
	helper_d30a9fa2()
	monster.SetAttrib(1, 0)
	monster.SetMos("吹っ飛び", -1, 6)
	helper_cbe4d8e2()
	monster.SetMos("起き上がり", -1, 6)
	helper_cbe4d8e2()
	helper_e05438b5()
end

return script
