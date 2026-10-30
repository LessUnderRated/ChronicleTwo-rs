--!strict
-- dungeon/act_script/c01win.stb: action script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_bac4ec65 = require("@lib/action/helper_bac4ec65")

--- Helper function.
local function helper_1418()
	local var1: s32 = 0
	local var3: s32 = 0
	action.Ext(7, var3) -- retail: command 7 is not registered
	if var3 == 100 then
		action.Ext(103, var1) -- retail: the handler rejects 1 arguments
		if var1 == 4 then
			action.ReleaseObj("戻り", -1, 6)
			action.Ext(6, 0) -- retail: command 6 is not registered
		end
		return
	end
end

--- Helper function.
local function helper_1c8()
	local var0: s32 = 0
	while true do
		vm.wait()
		var0 = action.SetShot() or var0
		if var0 ~= 0 then
			return
		end
	end
end

local script = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Sets the character up when its script is initialised.
function script.init()
	action.SetPallet(0, "dcol00")
	action.SetPallet(1, "ef00")
	action.SetPallet(2, "bcol00")
	action.SetPallet(3, "bcol01")
	action.SetPallet(4, "keri_R")
	action.SetPallet(5, "nage")
	action.SetPallet(6, "gun")
	action.CameraQuake(0, "基本攻撃", 2.5, "3連続レンチ1", 0.1, 0.9)
	action.CameraQuake(0, "基本攻撃", 2.5, "3連続レンチ2", 0.1, 0.8)
	action.CameraQuake(0, "基本攻撃", 2.5, "3連続レンチ3", 0.1, 0.8)
	action.CameraQuake(0, "吹っ飛び攻撃", 2.5, "中距離攻撃", 0.5, 0.9)
	action.CameraQuake(4, "基本攻撃", 2.0, "ダウン･蹴り", 0.35, 0.45)
	action.CameraQuake(0, "吹っ飛び攻撃", 6.0, "ため攻撃", 0.3, 0.8)
	action.CameraQuake(5, "投げ攻撃", 8.0, "持ち上げ", 0.15, 0.3)
	action.CheckEquip(2, 5.0)
	action.CheckEquip(3, 4.0)
	action.Ext(37, 0, 1, "3連続レンチ1", 0.25, "3連続レンチ3", 0.9) -- retail: the handler rejects 6 arguments
	action.Ext(37, 0, 1, "中距離攻撃", 0.4, "中距離攻撃", 0.9) -- retail: the handler rejects 6 arguments
	action.Ext(37, 0, 1, "ため攻撃", 0.0, "ため攻撃", 0.9) -- retail: the handler rejects 6 arguments
	action.GetPadup(0, 2)
	action.Ext(80, -2, "歩き", 0.07, 0.1) -- retail: command 80 is not registered
	action.Ext(80, -3, "歩き", 0.5, 0.55) -- retail: command 80 is not registered
	action.Ext(80, -2, "走り", 0.4, 0.5) -- retail: command 80 is not registered
	action.Ext(80, -3, "走り", 0.9, 1.0) -- retail: command 80 is not registered
	action.Ext(80, 400, "3連続レンチ1", 0.1, 0.2) -- retail: command 80 is not registered
	action.Ext(80, 401, "3連続レンチ2", 0.1, 0.3) -- retail: command 80 is not registered
	action.Ext(80, 402, "3連続レンチ3", 0.2, 0.3) -- retail: command 80 is not registered
	action.Ext(80, 403, "銃攻撃", 0.2, 0.3) -- retail: command 80 is not registered
	action.Ext(80, 400, "中距離攻撃", 0.3, 0.4) -- retail: command 80 is not registered
end

--- Runs the character's normal behaviour.
function script.loop()
	local var0: s32 = 0
	local var2: s32 = 0
	action.Ext(6, 0) -- retail: command 6 is not registered
	while true do
		action.Ext(7, var2) -- retail: command 7 is not registered
		action.ProgSet(var0) -- retail: argument 1 passes a reference where the handler reads a value, the low bits of the variable's address; the variable's value is passed
		action.InitScript_1()
		if var2 >= 100 and var2 < 199 then
			helper_1418()
		end
		action.Ext(7, var2) -- retail: command 7 is not registered
		if var2 == 0 then
			action.RunShrowMove()
			if bit32.band(var0, 32) ~= 0 then
				action.ReleaseObj("勝利のポーズ", 0.6, 6)
				var2 = 100
			end
			action.Ext(6, var2) -- retail: command 6 is not registered
		end
		vm.wait()
	end
end

--- Reacts to a small hit.
function script.on_small_damage()
	action.GetBtn_1(0)
	action.Ext(35, 5.0, 0.0, 3) -- retail: the handler rejects 3 arguments
	action.Ext(33, 0) -- retail: the handler rejects 1 arguments
	action.ReleaseObj("ダメージ", -1, 2)
	helper_bac4ec65(8)
	action.Ext(6, 0) -- retail: command 6 is not registered
end

--- Reacts to a large hit.
function script.on_large_damage()
	action.GetBtn_1(0)
	action.Ext(35, 5.0, 0.0, 10) -- retail: the handler rejects 3 arguments
	action.Ext(36) -- retail: the handler rejects 0 arguments
	action.Ext(33, 0) -- retail: the handler rejects 1 arguments
	action.ReleaseObj("吹っ飛び", -1, 6)
	helper_1c8()
	helper_bac4ec65(8)
	action.ReleaseObj("起き上がり", -1, 6)
	helper_1c8()
	helper_bac4ec65(2)
	action.Ext(6, 0) -- retail: command 6 is not registered
end

--- Follows up a melee hit that the character has landed.
function script.on_melee_hit()
	action.GetBtn_1(0)
	action.Ext(35, 3.0, 0.0, 4) -- retail: the handler rejects 3 arguments
	action.SetSpecialShot(nil) -- retail: argument 1 is 0.0, which the handler reads as no string
	helper_bac4ec65(10)
	action.Ext(6, 0) -- retail: command 6 is not registered
end

return script
