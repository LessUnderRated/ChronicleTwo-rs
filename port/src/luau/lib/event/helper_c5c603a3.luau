--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_c5c603a3()
	local var0: s32 = 0
	local var1: s32 = 0
	local block: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		at = 2
		vm.wait(2)
		var1 = event.SndLoadSound_3(5, "snd2/mon/en_044.sound.json") or var1
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		event.ChangeDir("dungeon/monster/")
		event.LoadChara(5, "e212d.gltf", "e212d", 8)
		event.CopyChara(5, 8, 9)
		for var0_i = 0, 1 do
			event.CharaActive(1, 8 + var0_i)
			event.EohSyncChara(0 + var0_i, 8 + var0_i)
			event.ObjsInit(0 + var0_i)
			event.ObjsSyncObj(0 + var0_i, 0 + var0_i)
			event.EohSetSoundId(0 + var0_i, var1)
		end
		event.ChangeDir("")
		block = event.LoadImg_4(5, "textures/event/e800/d07domari/d07domari03_1.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "d07domari03", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 128)
		event.SpriteSetPutsize(0, 512, 128)
		event.SpriteSetPos(0, 256, 312)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(6, 0)
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 6)
		event.InitDramaScene()
		event.SetFadeIn(30)
		event.CmrsSetPos(44.56, 7.49, 76.26)
		event.CmrsSetRef(28.14, 56.99, 228.85)
		event.ObjsSetPos(0, -17.27, 15.9, 293.48)
		event.ObjsSetRot(0, 0.0, 2.92, 0.0)
		event.ObjsSetPos(1, 68.43, 7.66, 313.99)
		event.ObjsSetRot(1, 0.0, -2.88, 0.0)
		event.ObjsMotionDelay(1, 3)
		event.ObjsSetMotion(0, "攻撃１", 0)
		event.ObjsSetMotion(1, "攻撃１", 0)
		event.ObjsSetColor(6, 128, 128, 128, 128, 30)
		event.CmrsMove2(34.58, 26.49, 163.31, 28.14, 56.99, 228.85, 30, 0, 0.2)
		at = 3
		wait_camera()
		at = 4
		wait_frames(15)
		event.SetFadeOut(30)
		at = 5
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 2 then
			var0 = 0
			local _ = var0 < 2
			var0 = var0 + 1
			helper_344d6cd8()
		end
		if at <= 3 then
			wait_frames_skipping(15)
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
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.SpriteSetDraw(0, 0)
	event.DelImg(0)
	event.SetFadeIn(30)
	event.Finish()
end

return helper_c5c603a3
