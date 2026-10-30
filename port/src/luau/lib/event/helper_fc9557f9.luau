--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_fc9557f9(arg0: s32)
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: s32 = 0
	local var6: s32 = 0
	local language_code: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.InitDramaScene()
		event.DngPause(1, 1)
		event.StopEnvBgm()
		event.LoadSound(4682)
		event.AssignStack(5)
		event.ClearStack(5)
		do
			local out1, out2, out3, out4 = event.GetDunWorldCoord(2)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
			var4 = out4 or var4
		end
		var1 = vm.f32(var1 + 80.0)
		event.SetWorldCoord(var1, var2, var3, var4)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 18)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 3200.0, 0.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		if arg0 ~= 0 then
			var5 = event.DngGetFloorId() or var5
			var6 = event.DngGetPrevFloor() or var6
			event.DngmapLoad(5, 0, 3, var5, var6)
			event.DngmapSetFade(1, 30)
			event.DngmapMovePiece(1)
		else
			language_code = event.GetLanguage() or language_code
			if language_code == 0 then
				event.LoadImg_3(5, "textures/dungeon/image/s_title/logo_d03.json", 0)
			else
				event.LoadImg_3(5, "textures/dungeon/image/s_title/logo_d03_1.json", 0)
			end
			event.ImgSetName(0, "logo_d03")
			event.ImgSetGet(0, 0, 0, 384, 128)
			event.ImgSetPut(0, -24, 300, 384, 128)
			event.ImgSetColor(0, 128, 128, 128, 0)
			event.ImgSetDraw(1, 0)
			event.ImgSetFade(0, 1, 30)
		end
		event.CmrsSetRef(0.0, 3230.0, 120.0)
		event.CmrsSetPos(0.0, 3250.0, 0.0)
		event.SetStatusbarShow(0, 1.0)
		event.InitDramaScene()
		event.ObjsSetMotion(0, "歩き", 4)
		event.ObjsMove(0, 0.0, 3200.0, 120.0, 90)
		event.SetFadeIn(30)
		at = 2
		wait_frames(40)
		event.SetStatusbarShow(1)
		at = 3
		wait_frames(30)
		if arg0 ~= 0 then
			event.DngmapSetFade(0, 20)
		else
			event.ImgSetFade(0, 0, 20)
		end
		at = 4
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		at = 5
		wait_frames(4)
	end, function(received: { any }): boolean
		if at <= 1 then
			var1 = vm.f32(var1 + 80.0)
			wait_frames_skipping(40)
		end
		if at <= 2 then
			wait_frames_skipping(30)
		end
		if at <= 3 then
			helper_238b5abc(0)
		end
		if at <= 4 then
			wait_frames_skipping(4)
		end
		return true
	end)
	at = 6
	vm.entry(6)
	event.CancelDramaScene()
	event.SetStatusbarShow(1, 1.0)
	if arg0 ~= 0 then
		event.DngmapOnoff(0)
		event.DngmapDelete()
	else
		event.DelImg(0)
	end
	event.EohSetFootSoundId(0, 0)
	event.EohSetPos(0, 0.0, 3200.0, 120.0)
	at = 7
	vm.wait(7)
	event.EohResetDaPosition(0)
	event.SetActiveCmrid(1)
	event.SetBeforeCmrid(0)
	event.SetFadeIn(0)
	event.ResetCamera(0)
	event.DngPause(1, 0)
end

return helper_fc9557f9
