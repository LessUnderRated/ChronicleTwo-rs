--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_8197b747(arg0: any)
	local block: s32 = 0
	event.CmrsInit()
	event.CmrsFadeOut(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.CmrsSetPos(91.52, 19.06, -115.56)
	event.CmrsSetRef(36.75, 33.39, -130.18)
	event.CharaActive(0, 0)
	event.ObjsSetMotion(1, "腰に手L", 4)
	block = event.LoadImg_4(5, "textures/event/e100/e105/e105c_2d.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "e105c_2d01", block)
	event.SpriteSetColor(0, 128, 128, 128, 0)
	event.SpriteSetUvsize(0, 0, 0, 512, 448)
	event.SpriteSetPutsize(0, 512, 448)
	event.SpriteSetPos(0, 256, 224)
	event.SpriteSetAlphab(0, 0)
	event.SpriteSetDraw(0, 0)
	event.EohSyncSprite(10, 0)
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	wait_frames(30)
	event.CmrsFadeIn(30, 0.0, 0.0, 0.0)
	wait_camera()
	event.SpriteSetDraw(0, 1)
	event.ObjsSetColor(10, 128.0, 128.0, 128.0, 128.0, 10)
	wait_frames(30)
	event.ObjsSetMotion(1, "腰に手会話", 4)
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050370)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050371)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050380)
	event.ResetPakuAnim()
	event.SetPakuAnim(1, "わらい口パク")
	helper_4116e6bb(1050390)
	event.ResetPakuAnim()
	event.SpriteSetDraw(0, 0)
	event.DelImg(0)
end

return helper_8197b747
