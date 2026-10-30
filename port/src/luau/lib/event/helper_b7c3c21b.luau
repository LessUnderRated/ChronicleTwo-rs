--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0655dfaa = require("@lib/event/helper_0655dfaa")
local helper_9391e829 = require("@lib/event/helper_9391e829")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_b7c3c21b()
	local var0: s32 = 0
	local projection: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local block: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(105, 1)
		event.Initialize()
		event.InitDramaScene()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_3(4, 1225) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		projection = event.GetProjection() or projection
		do
			local out1, out2, out3 = event.GetCameraPos()
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		do
			local out1, out2, out3 = event.GetCameraRef()
			pos_x_2 = out1 or pos_x_2
			pos_y_2 = out2 or pos_y_2
			pos_z_2 = out3 or pos_z_2
		end
		event.LoadMotion(5, "event/e100/e105/e105_mints.gltf", "info", 0)
		event.CharaActive(1, 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.SetCharaPos(0, 72.86, 57.47, 35.39)
		event.LoadChara(5, "event/e100/e105/e105_starbre.gltf", "info", 32)
		event.CharaActive(1, 32)
		event.EohSyncChara(1, 32)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetPos(1, 67.74, -59.99, 63.26)
		event.ObjsSetRot(1, 0.0, 3.04, 0.0)
		block = event.LoadImg_4(5, "textures/event/e100/e105/e105b_2d.json", 0) or block
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "e105b_2d01", block)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		event.SpriteSetUvsize(0, 0, 0, 512, 448)
		event.SpriteSetPutsize(0, 512, 448)
		event.SpriteSetPos(0, 256, 224)
		event.SpriteSetDraw(0, 0)
		event.SpriteSetAlphab(0, 0)
		event.EohSyncSprite(2, 0)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.SpriteInit(1)
		event.SpriteSetType(1, 0)
		event.SpriteSetTexture(1, "e105b_2d02", block)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetUvsize(1, 0, 0, 512, 448)
		event.SpriteSetPutsize(1, 512, 448)
		event.SpriteSetPos(1, 256, 224)
		event.SpriteSetDraw(1, 0)
		event.SpriteSetAlphab(1, 0)
		event.EohSyncSprite(3, 1)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.SpriteInit(2)
		event.SpriteSetType(2, 0)
		event.SpriteSetTexture(2, "e105b_2d03", block)
		event.SpriteSetColor(2, 128, 128, 128, 0)
		event.SpriteSetUvsize(2, 0, 0, 512, 448)
		event.SpriteSetPutsize(2, 512, 448)
		event.SpriteSetPos(2, 256, 224)
		event.SpriteSetDraw(2, 0)
		event.SpriteSetAlphab(2, 0)
		event.EohSyncSprite(4, 2)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.LoadMes(0, 5, "event/e100/e105/e105b_1.txt")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		helper_9391e829(projection, var0)
		helper_0655dfaa(projection, var0)
	end)
	vm.entry(4)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	wait_frames(30)
	event.CharaActive(1, 0)
	event.CharaActive(1, 25)
	event.SetProjection(projection)
	event.SetCameraPos(pos_x, pos_y, pos_z)
	event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
	event.DelExtMotion(0)
	event.DeleteChara(32)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.SpriteSetDraw(2, 0)
	event.DelImg(0)
	event.SetFadeIn(30)
end

return helper_b7c3c21b
