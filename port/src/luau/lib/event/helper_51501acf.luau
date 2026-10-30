--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_51501acf()
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
		var1 = event.SndLoadSound_3(5, "snd2/mon/en_008.sound.json") or var1
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		event.ChangeDir("dungeon/monster/")
		event.LoadChara(5, "e202d.gltf", "e202d", 8)
		event.CopyChara(5, 8, 9)
		for var0_i = 0, 1 do
			event.CharaActive(1, 8 + var0_i)
			event.EohSyncChara(0 + var0_i, 8 + var0_i)
			event.ObjsInit(0 + var0_i)
			event.ObjsSyncObj(0 + var0_i, 0 + var0_i)
			event.EohSetSoundId(0 + var0_i, var1)
		end
		event.ChangeDir("")
		block = event.LoadImg_4(5, "textures/event/e800/d07domari/d07domari01_1.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "d07domari01", block)
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
		event.ObjsSetPos(0, -36.58, 0.0, 153.99)
		event.ObjsSetRot(0, 0.0, 2.92, 0.0)
		event.ObjsSetPos(1, 30.72, 0.0, 154.46)
		event.ObjsSetRot(1, 0.0, -2.88, 0.0)
		event.ObjsSetMotion(0, "立ち", 0)
		event.ObjsSetMotion(1, "立ち", 0)
		event.CmrsSetPos(-6.83, 70.86, -98.29)
		event.CmrsSetRef(-5.15, 18.65, -28.34)
		event.CmrsMove2(-3.71, 16.94, 31.66, -2.03, 28.09, 101.61, 30, 0, 0.4)
		at = 3
		wait_camera()
		event.ObjsSetMotion(0, "攻撃１", 6)
		event.ObjsNextMotion(0, "立ち", 0)
		event.ObjsSetMotion(1, "攻撃１", 6)
		event.ObjsNextMotion(1, "立ち", 0)
		event.ObjsSetColor(6, 128, 128, 128, 128, 30)
		at = 4
		wait_frames(30)
		at = 5
		wait_objects(0)
		at = 6
		wait_objects(1)
		at = 7
		wait_frames(30)
		event.SetFadeOut(30)
		at = 8
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 2 then
			var0 = 0
			local _ = var0 < 2
			var0 = var0 + 1
			helper_344d6cd8()
		end
		if at <= 3 then
			wait_frames_skipping(30)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			helper_238b5abc(1)
		end
		if at <= 6 then
			wait_frames_skipping(30)
		end
		if at <= 7 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 9
	vm.entry(9)
	event.CancelDramaScene()
	event.CharaActive(1, 0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.SpriteSetDraw(0, 0)
	event.DelImg(0)
	event.SetFadeIn(30)
	event.Finish()
end

return helper_51501acf
