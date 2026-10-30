--!strict
-- dungeon/monster/e116a.stb: monster script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_02ce7891 = require("@lib/monster/helper_02ce7891")
local helper_067263da = require("@lib/monster/helper_067263da")
local helper_0c6dce14 = require("@lib/monster/helper_0c6dce14")
local helper_125e5305 = require("@lib/monster/helper_125e5305")
local helper_193f5239 = require("@lib/monster/helper_193f5239")
local helper_195a8eaa = require("@lib/monster/helper_195a8eaa")
local helper_1adea708 = require("@lib/monster/helper_1adea708")
local helper_1ef0d4b2 = require("@lib/monster/helper_1ef0d4b2")
local helper_243517f2 = require("@lib/monster/helper_243517f2")
local helper_28452e16 = require("@lib/monster/helper_28452e16")
local helper_3dad8a79 = require("@lib/monster/helper_3dad8a79")
local helper_401e2ea3 = require("@lib/monster/helper_401e2ea3")
local helper_442b9962 = require("@lib/monster/helper_442b9962")
local helper_49610f43 = require("@lib/monster/helper_49610f43")
local helper_4d763a19 = require("@lib/monster/helper_4d763a19")
local helper_511f7998 = require("@lib/monster/helper_511f7998")
local helper_56d63eae = require("@lib/monster/helper_56d63eae")
local helper_5a759074 = require("@lib/monster/helper_5a759074")
local helper_5c86001d = require("@lib/monster/helper_5c86001d")
local helper_5d37e9f4 = require("@lib/monster/helper_5d37e9f4")
local helper_65eb2b74 = require("@lib/monster/helper_65eb2b74")
local helper_6911bbcd = require("@lib/monster/helper_6911bbcd")
local helper_6a21fe95 = require("@lib/monster/helper_6a21fe95")
local helper_6b22152e = require("@lib/monster/helper_6b22152e")
local helper_6fc9b142 = require("@lib/monster/helper_6fc9b142")
local helper_7a6c1499 = require("@lib/monster/helper_7a6c1499")
local helper_8cdd6198 = require("@lib/monster/helper_8cdd6198")
local helper_9df6409a = require("@lib/monster/helper_9df6409a")
local helper_a25c5b2e = require("@lib/monster/helper_a25c5b2e")
local helper_a551797e = require("@lib/monster/helper_a551797e")
local helper_a6b45eeb = require("@lib/monster/helper_a6b45eeb")
local helper_ab4b367a = require("@lib/monster/helper_ab4b367a")
local helper_abd1478c = require("@lib/monster/helper_abd1478c")
local helper_b44b0a55 = require("@lib/monster/helper_b44b0a55")
local helper_b5cfab2f = require("@lib/monster/helper_b5cfab2f")
local helper_bee0409d = require("@lib/monster/helper_bee0409d")
local helper_d30a9fa2 = require("@lib/monster/helper_d30a9fa2")
local helper_dcede5dc = require("@lib/monster/helper_dcede5dc")
local helper_e05438b5 = require("@lib/monster/helper_e05438b5")
local helper_e4054524 = require("@lib/monster/helper_e4054524")

--- Helper function.
local function helper_3164()
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
local function helper_11ef8()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local rank: s32 = 0
	local var9: s32 = 0
	local var10: s32 = 0
	local argc: s32 = 0
	local value: s32 = 0
	local argc_2: s32 = 0
	local chara_type: s32 = 0
	local max_life: s32 = 0
	local var16: s32 = 0
	local var17: s32 = 0
	local var18: s32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	value = monster.VPop(7) or value
	if value < 300 then
		return
	end
	argc = monster.GetMonsterNum() or argc
	rank = 0
	var10 = -1
	var4 = monster.GetActiveMonsLifef(-1) or var4
	while rank < argc do
		var9 = monster.GetRangeMonsId(200.0, rank) or var9
		if var9 ~= -1 then
			var3 = monster.GetActiveMonsLifef(var9) or var3
		end
		if var3 < var4 then
			var4 = var3
			var10 = var9
		end
		rank = rank + 1
	end
	if var10 ~= -1 then
		var17 = vm.float_bits(monster.GetActiveMonsLifef(-1)) or var17
		var18 = vm.float_bits(monster.GetActiveMonsLifef(var10)) or var18
		if var17 < var18 then
			var10 = -2
		end
	else
		var4 = monster.GetActiveMonsLifef(-1) or var4
		var10 = -2
	end
	if var10 == -1 or var4 > vm.f32(0.9) then
		return
	end
	if var10 == -2 then
		var10 = -1
	else
		do
			local out1, out2, out3 = monster.GetActiveMonsPos(var10)
			var5 = out1 or var5
			var6 = out2 or var6
			var7 = out3 or var7
		end
		var19 = monster.GetRefAngle(var5, var6, var7) or var19
		monster.SetMos("歩き", -1, 0)
		helper_7a6c1499(helper_28452e16(var19), 8.0)
	end
	monster.SetMos("回復in", -1, 6)
	if var10 ~= -1 then
		helper_b5cfab2f(var10, 8.0, helper_9df6409a(18))
	else
		helper_5c86001d(helper_9df6409a(18))
	end
	monster.SetMos("回復", -1, 6)
	if var10 ~= -1 then
		helper_b5cfab2f(var10, 8.0, helper_9df6409a(12))
	else
		helper_5c86001d(helper_9df6409a(12))
	end
	monster.SetMos("回復out", -1, 6)
	do
		local out1, out2, out3 = monster.GetFramePos("dcol0")
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	monster.EsmCreate_1("Ｍ回復Ｆ")
	monster.EsmSetVect1(-1, pos_x, pos_y, pos_z)
	if var10 ~= -1 then
		helper_b5cfab2f(var10, 8.0, helper_9df6409a(20))
	else
		helper_5c86001d(helper_9df6409a(20))
	end
	if var10 == -1 then
		chara_type = monster.GetUserid() or chara_type
	else
		chara_type = var10
	end
	var20 = monster.GetActiveMonsLifef(chara_type) or var20
	if var20 <= 0.0 then
		return
	end
	monster.EsmCreate_1("Ｍ回復")
	monster.EsmSetValue(-1, 0, chara_type)
	if var10 ~= -1 then
		helper_b5cfab2f(var10, 8.0, helper_9df6409a(12))
	else
		helper_5c86001d(helper_9df6409a(12))
	end
	var20 = monster.GetActiveMonsLifef(chara_type) or var20
	if var20 <= 0.0 then
		return
	end
	max_life = monster.GetActiveMonsMaxLife(var10) or max_life
	var16 = vm.ftoi(vm.f32(max_life * vm.f32(0.3)))
	argc_2 = monster.GetRnd(vm.ftoi(vm.f32(var16 * vm.f32(0.2)))) or argc_2
	var16 = vm.i32(vm.ftoi(vm.f32(var16 * vm.f32(0.8))) + argc_2)
	monster.SetDamageScore(var10, var16, 1)
	monster.SetActiveMonsLifei(var10, var16)
	if var10 ~= -1 then
		helper_b5cfab2f(var10, 8.0, helper_9df6409a(12))
	else
		helper_5c86001d(helper_9df6409a(12))
	end
	monster.SetMos("回復out", -1, 6)
	if var10 ~= -1 then
		helper_b5cfab2f(var10, 8.0, 20)
	else
		helper_5c86001d(90)
	end
	monster.VPush(7, 0)
	helper_6fc9b142()
	monster.SetMos("立ち", -1, 0)
	helper_5c86001d(10)
end

--- Helper function.
local function helper_11580(arg0: any)
	local chara_id: s32 = 0
	monster.SetMos("立ち", -1, 4)
	while true do
		helper_bee0409d()
		chara_id = monster.GetUserMonsId() or chara_id
		if chara_id == -1 then
			break
		else
			if helper_8cdd6198(60.0) == 0 then
				monster.SetMos("歩き", -1.0, 0)
				helper_401e2ea3(4.0)
			end
			monster.SetMos("立ち", -1, 0)
		end
	end
end

--- Helper function.
local function helper_11850()
	local chara_id: s32 = 0
	local monster_id: s32 = 0
	monster_id = monster.GetMonsterIndex() or monster_id
	chara_id = monster.GetUserMonsId() or chara_id
	if chara_id > -1 then
		helper_11580(monster_id)
	end
end

--- Helper function.
local function helper_136a4(arg0: s32, arg1: s32)
	local var3: s32 = 0
	for var2 = 0, arg0 - 1 do
		monster.ResetMotion()
		monster.SetMos("遊び", -1, 6)
		if arg1 == 1 then
			var3 = helper_4d763a19(74.0, 45.0, helper_9df6409a(100))
			if var3 == 1 then
				return
			end
		else
			helper_5c86001d(helper_9df6409a(100))
		end
	end
end

--- Helper function.
local function helper_14cbc()
	local argc: s32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local argc_2: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 80 then
		argc = monster.GetRnd(100) or argc
		if argc < 60 then
			argc = monster.GetRnd(100) or argc
			var3 = monster.GetRndf(30.0) or var3
			var4 = monster.GetRndf(30.0) or var4
			var4 = vm.f32(var4 + 95.0)
			if argc < 50 then
				var3 = vm.f32(-var3 - 30.0)
			else
				var3 = vm.f32(var3 + 30.0)
			end
			monster.SetMos("歩き", -1, 0)
			local _ = helper_6b22152e(vm.f32(1.9), 4.0, var3, var4, 37.0, 30)
			helper_401e2ea3(4.0)
		else
			monster.SetMos("歩き", -1, 0)
			helper_401e2ea3(4.0)
			monster.SetMos("立ち", -1, 0)
			helper_4d763a19(37.0, 45.0, 30)
		end
	else
		if argc_2 < 50 then
			monster.SetMos("歩き", -1, 0)
			helper_401e2ea3(4.0)
		end
		argc_2 = monster.GetRnd(1) or argc_2
		helper_136a4(vm.i32(1 + argc_2), 1)
	end
end

--- Helper function.
local function helper_7ddc(move_speed: f32, arg1: f32, arg2: f32, arg3: s32)
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local target: f32 = 0
	local target_3: f32 = 0
	local var11: f32 = 0
	local var20: f32 = 0
	local var21: f32 = 0
	helper_401e2ea3(arg1)
	helper_442b9962()
	monster.GetTargetPos()
	do
		local out1, out2, out3 = monster.GetPos_3()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var20 = monster.GetTargetDist() or var20
	var21 = monster.SearchArea(move_speed + arg2, 0.0) or var21
	if var21 < vm.f32(move_speed + arg2) then
		return
	end
	do
		local _, out2, _ = monster.GetRot()
		var11 = out2 or var11
	end
	target = vm.f32(pos_x + vm.f32(vm.sin(var11) * var20))
	target_3 = vm.f32(pos_z + vm.f32(vm.cos(var11) * var20))
	monster.SetNextPos(target, pos_y - 20.0, target_3, move_speed, arg2 + move_speed)
	local _ = helper_067263da(arg2, arg3)
	monster.ResetMove()
end

--- Helper function.
local function helper_1780c()
	local argc: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 80 then
		monster.SetMos("歩き", -1, 0)
		helper_7ddc(vm.f32(1.9), 4.0, 95.0, 30)
	else
		monster.SetMos("立ち", -1, 0)
		helper_4d763a19(92.0, 45.0, 45)
	end
end

--- Helper function.
local function helper_139d4()
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
		var8 = 25.0
	else
		monster.ResetMotion()
		monster.SetMos("ステップ左", -1, 6)
		var8 = -25.0
	end
	target, var2, target_3 = helper_125e5305(var8, var7, target, var2, target_3)
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y = out2 or pos_y
	end
	monster.SetNextPos(target, pos_y - 10.0, target_3, 2.28, 2.85)
	helper_5c86001d(helper_9df6409a(5))
	monster.SetAttrib(32, 0)
	helper_6fc9b142()
	monster.ResetMove()
end

--- Helper function.
local function helper_16ecc()
	local argc: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local argc_2: s32 = 0
	local var4: f32 = 0
	local var5: s32 = 0
	argc = monster.GetRnd(100) or argc
	if argc < 35 then
		monster.GetRnd(100, argc)
		var1 = monster.GetRndf(30.0) or var1
		var2 = monster.GetRndf(20.0) or var2
		if argc < 50 then
			var1 = vm.f32(-var1 - 30.0)
		else
			var1 = vm.f32(var1 + 30.0)
		end
		var2 = vm.f32(var2 + 74.0)
		monster.SetMos("歩き", -1, 0)
		helper_6b22152e(vm.f32(1.9), 4.0, var1, var2, 37.0, 30)
		helper_401e2ea3(4.0)
	else
		argc = monster.GetRnd(100) or argc
		if argc < 50 then
			argc_2 = monster.GetRnd(100) or argc_2
			if argc_2 < 50 then
				monster.SetMos("歩き", -1, 0)
				helper_401e2ea3(4.0)
			end
			argc_2 = monster.GetRnd(3) or argc_2
			helper_136a4(vm.i32(1 + argc_2), 1)
		else
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				argc = monster.GetRnd(2) or argc
				var5 = 0
				while var5 < vm.i32(1 + argc) do
					var4 = monster.GetTargetDist() or var4
					if var4 < 95.0 then
						break
					end
					monster.SetMos("歩き", -1, 0)
					helper_401e2ea3(4.0)
					helper_139d4()
					var5 = var5 + 1
				end
			else
				monster.SetMos("歩き", -1, 0)
				helper_7ddc(vm.f32(1.9), 4.0, 37.0, 30)
			end
		end
	end
end

--- Helper function.
local function helper_14434()
	monster.ResetMotion()
	monster.SetMos("攻撃１", -1, 6)
	helper_7ddc(6.0, 4.0, 1.0, 15)
	helper_6fc9b142()
end

--- Helper function.
local function helper_145a8()
	monster.ResetMotion()
	monster.SetMos("攻撃２", -1, 6)
	helper_7ddc(6.0, 4.0, 1.0, helper_9df6409a(15))
	helper_6fc9b142()
end

--- Helper function.
local function helper_14728()
	monster.ResetMotion()
	monster.SetMos("攻撃２", -1, 6)
	helper_5c86001d(helper_9df6409a(28))
	monster.SetMos("攻撃１", -1, 0)
	helper_7ddc(4.5, 4.0, 1.0, 15)
	helper_5c86001d(helper_9df6409a(40))
end

--- Helper function.
local function helper_14b00()
	monster.ResetMotion()
	monster.SetMos("攻撃１", -1, 6)
	helper_5c86001d(helper_9df6409a(12))
	monster.SetMos("攻撃２", -1, 0)
	helper_5c86001d(helper_9df6409a(45))
end

--- Helper function.
local function helper_b618(arg0: f32, arg1: f32, arg2: f32, arg3: s32)
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local target_3: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var16: f32 = 0
	var16 = monster.GetTargetDist() or var16
	var7, var8, target_3 = helper_125e5305(arg1, var16, var7, var8, target_3)
	do
		local out1, out2, out3 = monster.GetPos_3()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	do
		local out1, out2, out3 = monster.CopyVector(var7, var8, target_3) -- retail: argument 5 passes a reference where the handler reads a value, the low bits of the variable's address; the variable's value is passed; argument 6 passes a reference where the handler reads a value, the low bits of the variable's address; the variable's value is passed
		var10 = out1 or var10
		var11 = out2 or var11
		var12 = out3 or var12
	end
	do
		local out1, out2, out3 = monster.SubVector(var10, var11, var12, pos_x, pos_y, pos_z)
		var10 = out1 or var10
		var11 = out2 or var11
		var12 = out3 or var12
	end
	do
		local out1, out2, out3 = monster.NormalVector(var10, var11, var12)
		var10 = out1 or var10
		var11 = out2 or var11
		var12 = out3 or var12
	end
	var16 = monster.SearchArea(100.0, 0.0) or var16
	if var16 < 100.0 then
		var7 = vm.f32(pos_x + vm.f32(var10 * var16))
		var8 = pos_y
		target_3 = vm.f32(pos_z + vm.f32(var12 * var16))
		var16 = vm.f32(var16 - arg2)
		if var16 < arg2 then
			return
		end
	end
	monster.SetNextPos(var7, pos_y, target_3, arg0, arg0)
	local _ = helper_067263da(arg2, arg3)
	monster.ResetMove()
end

--- Helper function.
local function helper_13f30(move_speed: f32)
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
	monster.SetMos("ステップ後", -1, 6)
	helper_5c86001d(helper_9df6409a(6))
	do
		local _, out2, _ = monster.GetPos_3()
		pos_y_2 = out2 or pos_y_2
	end
	monster.SetNextPos(pos_x, pos_y_2, pos_z, move_speed, move_speed + 1.0)
	helper_5c86001d(helper_9df6409a(3))
	monster.SetAttrib(32, 0)
	helper_6fc9b142()
	monster.ResetMove()
	monster.SetMos("立ち", -1)
end

--- Helper function.
local function helper_16040()
	local argc: s32 = 0
	local var2: f32 = 0
	monster.GetMonsterLifeInt()
	argc = monster.GetRnd(100) or argc
	if argc < 55 then
		argc = monster.GetRnd(100) or argc
		if argc < 60 then
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				monster.SetMos("歩き", -1, 0)
				helper_7ddc(3.0, 4.0, 37.0, 30)
				helper_401e2ea3(4.0)
				helper_14434()
				monster.SetMos("立ち", -1, 0)
				helper_5c86001d(10)
			else
				monster.SetMos("歩き", -1, 0)
				helper_7ddc(3.0, 4.0, 37.0, 30)
				helper_401e2ea3(4.0)
				helper_145a8()
				monster.SetMos("立ち", -1, 0)
				helper_5c86001d(10)
			end
		else
			argc = monster.GetRnd(100) or argc
			if argc < 80 then
				argc = monster.GetRnd(100) or argc
				if argc < 50 then
					monster.SetMos("歩き", -1, 0)
					helper_7ddc(3.0, 4.0, 37.0, 30)
					helper_401e2ea3(4.0)
					helper_14728()
					monster.SetMos("立ち", -1, 0)
					helper_5c86001d(10)
				else
					monster.SetMos("歩き", -1, 0)
					helper_7ddc(3.0, 4.0, 37.0, 30)
					helper_401e2ea3(4.0)
					helper_14728()
					monster.SetMos("立ち", -1, 0)
					helper_5c86001d(10)
				end
			else
				monster.SetMos("歩き", -1, 0)
				helper_7ddc(3.0, 4.0, 37.0, 30)
				helper_401e2ea3(4.0)
				helper_14b00()
				monster.SetMos("立ち", -1, 0)
				helper_5c86001d(10)
			end
		end
	else
		argc = monster.GetRnd(100) or argc
		if argc < 60 then
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				var2 = 45.0
			else
				var2 = -45.0
			end
			monster.SetMos("歩き", -1, 0)
			helper_401e2ea3(4.0)
			helper_b618(vm.f32(1.9), var2, vm.f32(1.9), 30)
			helper_401e2ea3(4.0)
			monster.SetMos("立ち", -1, 0)
		else
			monster.SetMos("歩き", -1, 0)
			helper_401e2ea3(4.0)
			helper_13f30(vm.f32(1.9))
			argc = monster.GetRnd(100) or argc
			if argc < 40 then
				helper_136a4(2, 1)
			end
		end
	end
end

--- Helper function.
local function helper_17a58()
	local var3: f32 = 0
	local priority: s32 = 0
	local gekirin: s32 = 0
	while true do
		helper_bee0409d()
		helper_11850()
		helper_11ef8()
		var3 = monster.GetTargetDist() or var3
		if var3 > 255.0 then
			helper_bee0409d()
			return
		end
		gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
		if gekirin == 0 then
			helper_bee0409d()
			return
		end
		priority = monster.GetPriority() or priority
		if priority > 3 then
			helper_14cbc()
			continue
		end
		if var3 < 255.0 and var3 >= 168.0 then
			helper_1780c()
		elseif var3 < 168.0 and var3 >= 95.0 then
			helper_16ecc()
		else
			helper_16040()
		end
		helper_bee0409d()
	end
end

--- Helper function.
local function helper_f180()
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
	helper_bee0409d()
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
	if var17 < 37.0 then
		var7 = monster.GetRndf(360.0) or var7
		monster.SetMos("歩き", -1.0, 0)
		helper_7a6c1499(var7, 4.0)
		var17 = monster.SearchArea(100.0, 0.0) or var17
		var17 = vm.f32(var17 - 37.0)
		if var17 > 0.0 then
			helper_abd1478c(4.0, vm.f32(1.9), var7, var17, 37.0, 30)
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
				helper_e4054524(place_pos_x, place_pos_y, place_pos_z, vm.f32(1.9), 4.0, var5, var18, 37.0, 60)
				var19 = monster.GetRndf(180.0) or var19
				argc = monster.GetRnd(100) or argc
				if argc < 50 then
					var19 = vm.f32(var19 * -1.0)
				end
				helper_7a6c1499(var19, 4.0)
				monster.SetMos("立ち", -1, 0)
			else
				monster.VPush(0, 8)
				monster.SetMos("立ち", -1, 0)
				var1 = helper_0c6dce14(100.0, 50.0, 35.0, vm.f32(1.2), 30)
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
			helper_0c6dce14(100.0, 50.0, 35.0, vm.f32(1.2), 30)
		else
			monster.VPush(0, 16)
			var7 = monster.GetRndf(180.0) or var7
			argc = monster.GetRnd(100) or argc
			if argc < 50 then
				var7 = vm.f32(var7 * -1.0)
			end
			monster.SetMos("歩き", -1.0, 0)
			helper_7a6c1499(var7, 4.0)
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
					var1 = helper_6b22152e(vm.f32(1.9), 4.0, var20, var21, 37.0, 60)
					var23 = monster.GetRndf(360.0) or var23
					argc = monster.GetRnd(100) or argc
					if argc < 50 then
						var23 = vm.f32(var23 * -1.0)
					end
					helper_7a6c1499(var23, 4.0)
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
					helper_511f7998(vm.f32(1.9), var7, 1000.0, 37.0, 60)
					monster.SetMos("立ち", -1, 0)
				end
			else
				monster.VPush(0, 8)
				monster.SetMos("立ち", -1, 0)
				var1 = helper_0c6dce14(100.0, 50.0, 35.0, vm.f32(1.2), 30)
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
			helper_dcede5dc(vm.f32(1.9), 4.0, var5, 360.0, 40.0, 37.0, argc)
			monster.SetMos("立ち", -1, 0)
		end
	end
end

--- Helper function.
local function helper_19c34()
	monster.SetMos("歩き", -1, 0)
	helper_195a8eaa(vm.f32(1.9), 4.0, 37.0, 90)
	monster.SetMos("立ち", -1, 0)
end

--- Helper function.
local function helper_1538c()
	local var3: f32 = 0
	local priority: s32 = 0
	local argc: s32 = 0
	local gekirin: s32 = 0
	while true do
		helper_bee0409d()
		gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
		if gekirin > 0 then
			return
		end
		priority = monster.GetPriority() or priority
		if priority > 4 then
			helper_14cbc()
			continue
		end
		var3 = monster.GetTargetDist() or var3
		if var3 < 95.0 then
			argc = monster.GetRnd(100) or argc
			if argc < 60 then
				argc = monster.GetRnd(100) or argc
				if argc < 50 then
					monster.SetMos("歩き", -1, 0)
					helper_7ddc(3.0, 4.0, 37.0, 30)
					helper_401e2ea3(4.0)
					helper_14434()
					monster.SetMos("立ち", -1, 0)
					helper_5c86001d(2)
				else
					monster.SetMos("歩き", -1, 0)
					helper_7ddc(3.0, 4.0, 37.0, 30)
					helper_401e2ea3(4.0)
					helper_145a8()
					monster.SetMos("立ち", -1, 0)
					helper_5c86001d(2)
				end
			else
				argc = monster.GetRnd(100) or argc
				if argc < 80 then
					argc = monster.GetRnd(100) or argc
					if argc < 50 then
						monster.SetMos("歩き", -1, 0)
						helper_7ddc(3.0, 4.0, 37.0, 30)
						helper_401e2ea3(4.0)
						helper_14728()
						monster.SetMos("立ち", -1, 0)
						helper_5c86001d(2)
					else
						monster.SetMos("歩き", -1, 0)
						helper_7ddc(3.0, 4.0, 37.0, 30)
						helper_401e2ea3(4.0)
						helper_14728()
						monster.SetMos("立ち", -1, 0)
						helper_5c86001d(2)
					end
				else
					monster.SetMos("歩き", -1, 0)
					helper_7ddc(3.0, 4.0, 37.0, 30)
					helper_401e2ea3(4.0)
					helper_14b00()
					monster.SetMos("立ち", -1, 0)
					helper_5c86001d(2)
				end
			end
		else
			monster.SetMos("歩き", -1, 0)
			helper_7ddc(vm.f32(2.28), 4.0, 37.0, 30)
		end
	end
end

--- Helper function.
local function helper_19da8()
	local var0: f32 = 0
	local var1: f32 = 0
	local gekirin: s32 = 0
	helper_11ef8()
	gekirin = vm.float_bits(monster.GetGekirin()) or gekirin
	var0 = monster.GetTargetDist() or var0
	if gekirin > 0 then
		helper_11850()
		if helper_a25c5b2e() == 0 then
			if var0 < 255.0 then
				helper_17a58()
			else
				helper_f180()
			end
		else
			var1 = helper_243517f2(var1)
			if var0 < var1 then
				if var0 < 168.0 then
					monster.SetEscapeRate(-1, 1.0)
					helper_65eb2b74(0)
					helper_17a58()
				else
					monster.SetEscapeRate(-1, 10.0)
					helper_19c34()
				end
			else
				monster.SetEscapeRate(-1, 1.0)
				helper_65eb2b74(0)
			end
		end
	else
		helper_1538c()
	end
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
	monster.SetDmg2("弱ＧＣ", 5.0, "攻撃１", 0.35, 0.45, 0)
	monster.SetDmg2("弱ＧＣ", 5.0, "攻撃１", 0.35, 0.45, 1)
	monster.SetDmg2("吹っ飛び攻撃", 7.0, "攻撃２", 0.35, 0.5, 0)
	monster.SetDmg2("吹っ飛び攻撃", 7.0, "攻撃２", 0.35, 0.5, 1)
	grade = monster.GetMonsGrade_2(-1) or grade
	if grade == 0 then
		monster.SetScoop("遊び", 0.18, 0.66, 1010)
	end
	get_not_used_texb = monster.EsmGetNotuesdTexb() or get_not_used_texb
	if get_not_used_texb ~= -1 then
		var2 = monster.LoadEffectScript("Ｍ回復Ｆ", get_not_used_texb) or var2
		var3 = monster.LoadEffectScript("Ｍ回復", get_not_used_texb) or var3
		if (if var2 ~= 0 then 1 else var3) ~= 0 then
			monster.EsmAddTexb()
		end
	end
	monster.VPush(7, 90)
	helper_3164()
end

--- Runs the monster's normal behaviour.
function script.loop()
	monster.SetIntFlag(1, 0)
	monster.SetIntFlag(2, 0)
	monster.SetActStatus(0)
	while true do
		helper_bee0409d()
		helper_19da8()
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
		helper_bee0409d()
	end
	monster.SetMos("立ち")
	helper_1ef0d4b2()
end

--- Reacts to a hit that staggers it.
function script.on_damage()
	local argc: s32 = 0
	helper_5d37e9f4()
	monster.SetMos("ダメージ", -1, 6)
	monster.BlowStart(4.0, 0.0, 3)
	helper_6fc9b142()
	helper_5c86001d(12)
	monster.SetMos("立ち")
	argc = monster.GetRnd(100) or argc
	if argc < 8 then
		monster.SetMos("ステップ後", -1, 0)
		helper_13f30(vm.f32(2.85))
	end
	helper_1ef0d4b2()
end

--- Reacts to a hit that knocks it over.
function script.on_knockdown()
	helper_a6b45eeb()
	monster.SetMos("吹っ飛び", -1, 6)
	monster.BlowStart(3.0, 0.05, 20)
	helper_6fc9b142()
	monster.SetActStatus(1)
	helper_5c86001d(30)
	monster.SetActStatus(0)
	monster.SetMos("起き上がり", -1, 6)
	helper_6fc9b142()
	monster.SetMos("立ち")
	helper_6a21fe95()
end

--- Guards against a hit.
function script.on_guard()
	helper_ab4b367a()
	monster.GetRnd(100)
	monster.ResetMotion()
	monster.SetMos("ガードin", -1, 6)
	helper_6fc9b142()
	monster.SetMos("ガード", -1, 0)
	monster.BlowStart(3.0, 0.0, 2)
	helper_5c86001d(8)
	monster.SetMos("ガードout", -1, 2)
	helper_6fc9b142()
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
		helper_401e2ea3(4.0)
		helper_139d4()
	else
		monster.SetMos("ステップ後", -1, 0)
		helper_13f30(vm.f32(2.85))
	end
	monster.SetMos("立ち", -1, 0)
	helper_a551797e()
end

--- Dodges the target's second kind of attack.
function script.on_dodge_2()
	helper_49610f43()
	monster.SetMos("ガードin", -1, 6)
	helper_6fc9b142()
	monster.SetMos("ガード", -1, 0)
	monster.BlowStart(3.0, 0.0, 2)
	helper_5c86001d(8)
	monster.SetMos("ガードout", -1, 2)
	helper_6fc9b142()
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
		helper_bee0409d()
	end
end

--- Lands the monster after it has been thrown.
function script.on_land()
	helper_3dad8a79()
	monster.ResetMove()
	monster.SetShrowEnd()
	helper_5c86001d(10)
	monster.ResetMotion()
	monster.SetMos("起き上がり", -1, 6)
	helper_6fc9b142()
	helper_b44b0a55()
	return 1
end

--- Stuns the monster.
function script.on_stun()
	helper_d30a9fa2()
	monster.SetMos("吹っ飛び", -1, 6)
	helper_6fc9b142()
	monster.SetMos("起き上がり", -1, 6)
	helper_6fc9b142()
	helper_e05438b5()
end

return script
