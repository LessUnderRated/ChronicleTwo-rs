--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_b82885c0()
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.Initialize()
		vm.wait(2)
		event.AssignStack(5)
		event.ClearStack(5)
		event.CharaActive(0, 0)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
		end
		event.SetCharaPos(0, 0.0, -500.0, 0.0)
		block = event.LoadImg_4(5, "textures/event/e800/d07domari/d07domari02_1.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "d07domari02", block)
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
		event.CmrsSetPos(71.12, 56.2, 96.2)
		event.CmrsSetRef(64.46, 54.73, 103.13)
		event.CmrsMove2(71.12, 56.2, 96.2, 73.0, 54.73, 105.94, 180, 2, 0.4)
		event.ObjsSetPos(0, -36.58, 0.0, 153.99)
		event.ObjsSetRot(0, 0.0, 2.92, 0.0)
		event.ObjsSetPos(1, 30.72, 0.0, 154.46)
		event.ObjsSetRot(1, 0.0, -2.88, 0.0)
		event.ObjsSetMotion(0, "立ち", 0)
		event.ObjsSetMotion(1, "立ち", 0)
		event.ObjsSetColor(6, 128, 128, 128, 128, 60)
		wait_frames(150)
		event.SetFadeOut(30)
		wait_frames(30)
	end)
	vm.entry(5)
	event.CancelDramaScene()
	event.CmrsInit()
	event.CharaActive(1, 0)
	event.SetCharaPos(0, var2, var3, var4)
	event.SpriteSetDraw(0, 0)
	event.DelImg(0)
	event.ResetCamera(1, 0.0, 20.0)
	event.SetFadeIn(30)
	event.Finish()
end

return helper_b82885c0
