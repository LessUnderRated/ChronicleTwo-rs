--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_cffd0192()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local block: s32 = 0
	local var6: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		at = 2
		vm.wait(2)
		var1 = event.SndLoadSound_3(5, "snd2/mon/en_008.sound.json") or var1
		event.AssignStack(5)
		event.ClearStack(5)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
		end
		event.SetCharaPos(0, 0.0, -500.0, 0.0)
		event.CharaActive(0, 0)
		event.ChangeDir("dungeon/monster/")
		event.LoadChara(5, "e216d.gltf", "e216d", 8)
		event.CopyChara(5, 8, 9)
		event.CopyChara(5, 8, 10)
		event.CopyChara(5, 8, 11)
		event.CopyChara(5, 8, 12)
		event.CopyChara(5, 8, 13)
		var0 = 0
		while var0 < 6 do
			event.CharaActive(1, 8 + var0)
			event.EohSyncChara(0 + var0, 8 + var0)
			event.ObjsInit(0 + var0)
			event.ObjsSyncObj(0 + var0, 0 + var0)
			event.EohSetSoundId(0 + var0, var1)
			var0 = var0 + 1
		end
		event.ChangeDir("")
		block = event.LoadImg_4(5, "textures/event/e800/d07domari/d07domari04_1.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "d07domari04", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(7, 0)
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 7)
		event.InitDramaScene()
		event.SetFadeIn(30)
		event.CmrsSetPos(-6.98, 27.91, 53.33)
		event.CmrsSetRef(-8.01, 27.08, 94.1)
		var0 = 0
		while var0 < 6 do
			event.ObjsSetPos(0 + var0, -36.58, 0.0, 153.99)
			event.ObjsSetRot(0 + var0, 0.0, 2.92, 0.0)
			event.ObjsSetMotion(0 + var0, "立ち", 0)
			var0 = var0 + 1
		end
		at = 3
		wait_frames(3)
		var0 = 0
		while var0 < 6 do
			var6 = 0
			var6 = vm.float_bits(event.GetRand(6)) or var6
			event.ObjsMotionDelay(0 + var0, var6)
			event.ObjsSetMotion(0 + var0, "攻撃１in", 6)
			event.ObjsNextMotion(0 + var0, "攻撃１", 0)
			var0 = var0 + 1
		end
		event.ObjsSetPos(0, -36.79, 0.0, 159.0)
		event.ObjsSetRot(0, 0.0, 2.92, 0.0)
		event.ObjsSetPos(1, 11.2, 0.0, 157.85)
		event.ObjsSetRot(1, 0.0, -3.0, 0.0)
		event.ObjsSetPos(2, 32.03, 0.0, 188.36)
		event.ObjsSetRot(2, 0.0, -3.0, 0.0)
		event.ObjsSetPos(3, 1.69, 0.0, 190.41)
		event.ObjsSetRot(3, 0.0, 3.04, 0.0)
		event.ObjsSetPos(4, -28.34, 0.0, 194.95)
		event.ObjsSetRot(4, 0.0, 2.92, 0.0)
		event.ObjsSetPos(5, -59.81, 0.0, 198.15)
		event.ObjsSetRot(5, 0.0, 2.92, 0.0)
		event.ObjsSetColor(7, 128, 128, 128, 128, 30)
		at = 4
		wait_frames(60)
		event.SetFadeOut(30)
		at = 5
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 2 then
			var0 = 0
			local _ = var0 < 6
			var0 = var0 + 1
			var0 = 0
			local _ = var0 < 6
			var0 = var0 + 1
			wait_frames_skipping(3)
		end
		if at <= 3 then
			var0 = 0
			var6 = 0
			local _ = var0 < 6
			var0 = var0 + 1
			wait_frames_skipping(60)
		end
		if at <= 4 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 6
	vm.entry(6)
	event.CancelDramaScene()
	event.CharaActive(1, 0)
	event.SetCharaPos(0, var2, var3, var4)
	var0 = 0
	while var0 < 6 do
		event.DeleteChara(8 + var0)
		var0 = var0 + 1
	end
	event.SpriteSetDraw(0, 0)
	event.DelImg(0)
	event.SetFadeIn(30)
	event.Finish()
end

return helper_cffd0192
