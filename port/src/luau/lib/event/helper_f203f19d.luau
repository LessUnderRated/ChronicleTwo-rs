--!strict
-- Shared event helper used by 7 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_26c3d54b = require("@lib/event/helper_26c3d54b")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_6d287af3 = require("@lib/event/helper_6d287af3")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")

--- Helper function.
local function helper_f203f19d(value: s32)
	local language_code: s32 = 0
	local block: s32 = 0
	local var3: s32 = 0
	local var4: s32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var11: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		if value == 0 then
			event.SetStatusbarShow(0, 1.0)
		end
		language_code = event.GetLanguage() or language_code
		if language_code == 0 then
			event.SetLoadbgFile_3(
				"dungeon/chara/c02a_win.gltf",
				"textures/dungeon/image/senmetsu/finish.json",
				"snd2/sp/sp_000.sound.json"
			)
		else
			event.SetLoadbgFile_3(
				"dungeon/chara/c02a_win.gltf",
				"dungeon/image/senmetsu/usa/finish.img",
				"snd2/sp/sp_000.sound.json"
			)
		end
		at = 2
		vm.wait(2)
		at = 3
		helper_479dc9e9()
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadMotion(5, "dungeon/chara/c02a_win.gltf", "info", 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		if language_code == 0 then
			block = event.LoadImg_4(5, "textures/dungeon/image/senmetsu/finish.json", 0) or block
			event.SpriteInit(0)
			event.SpriteSetType(0, 0)
			event.SpriteSetTexture(0, "senmetu", block)
			event.SpriteSetPos(0, 256, 206)
			event.SpriteSetPutsize(0, 228, 64)
			event.SpriteSetUvsize(0, 0, 0, 255, 64)
			event.SpriteSetColor(0, 128, 128, 128, 0)
			event.SpriteSetScale(0, 5.0, 5.0)
			event.SpriteSetDraw(0, value)
		else
			block = event.LoadImg_4(5, "dungeon/image/senmetsu/usa/finish.img", 0) or block
			event.SpriteInit(0)
			event.SpriteSetType(0, 0)
			event.SpriteSetTexture(0, "senmetu", block)
			event.SpriteSetPos(0, 256, 206)
			event.SpriteSetPutsize(0, 512, 64)
			event.SpriteSetUvsize(0, 0, 0, 512, 64)
			event.SpriteSetColor(0, 128, 128, 128, 0)
			event.SpriteSetScale(0, 5.0, 5.0)
			event.SpriteSetDraw(0, value)
		end
		event.EohSyncSprite(1, 0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		var3 = event.SndLoadSound_3(8, "snd2/sp/sp_000.sound.json") or var3
		var4 = event.GetEventInfoSndid(4) or var4
		event.SndSeStop(var4, 0)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var5 = out1 or var5
			var6 = out2 or var6
			var7 = out3 or var7
		end
		do
			local out1, out2, out3 = event.GetCameraPos()
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		var11 = event.GetRefAngle(var5, var6, var7, pos_x, pos_y, pos_z) or var11
		var11 = vm.f32(var11 + vm.f32(0.4))
		var11 = event.AngleLimit(var11) or var11
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(var5, var6 + 16.0, var7)
		event.SetCameraSpeed(14.0)
		event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
		event.SetFcameraHeight(-4.0)
		event.SetFcameraDist(48.0)
		event.EohSyncChara(0, 0)
		event.EohSetTexAnim(0, 0)
		event.EohSetTexAnim(0, 1, "目パチ")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetRot(0, 0.0, var11, 0.0)
		event.ObjsResetDaPosition(0)
		event.SetCrossfade(30)
		event.StopBgm(0)
		event.SndSePlay(var3, 0)
		event.InitDramaScene()
		event.ObjsSetMotion(0, "勝利のポーズ", 6)
		event.ObjsNextMotion(0, "勝利のポーズL", 6, 0.04)
		event.ObjsNextMotion(0, "余韻", 6)
		event.ObjsNextMotion(0, "余韻L", 4)
		event.ObjsSetScale(1, 1.0, 1.0, 0, 60)
		event.ObjsSetColor(1, 128, 128, 128, 128, 60)
		at = 4
		helper_888ab2a3(90)
		if language_code == 0 then
			event.ObjsMove(1, 134.0, 370.0, 0, 20)
		else
			event.ObjsMove(1, 154.0, 370.0, 0, 20)
		end
		event.SetPakuAnim(0, "わらい口パク")
		at = 5
		helper_6d287af3(8510170, -1)
		at = 6
		helper_888ab2a3(20)
	end, function(received: { any }): boolean
		if at <= 2 then
			helper_344d6cd8()
		end
		if at <= 3 then
			var11 = vm.f32(var11 + vm.f32(0.4))
			helper_038a2e4d(90)
		end
		if at <= 4 then
			helper_26c3d54b(8510170, -1)
		end
		if at <= 5 then
			helper_038a2e4d(20)
		end
		return true
	end)
	at = 7
	vm.entry(7)
	event.CancelDramaScene()
	if value == 0 then
		event.SetStatusbarShow(1, 1.0)
	end
	event.SetCameraCtrl(1)
	event.SndSeAllStop(7)
	event.SndSeStop(var3, 0)
	event.LoadBgm(193)
	event.PlayBgm(0)
	event.DelExtMotion(0)
	event.DelImg(0)
	event.SetCrossfade(10)
	event.Finish()
end

return helper_f203f19d
