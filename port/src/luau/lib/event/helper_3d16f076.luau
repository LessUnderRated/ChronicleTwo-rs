--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_2f8c501c = require("@lib/event/helper_2f8c501c")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_f0a13ee2 = require("@lib/event/helper_f0a13ee2")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_3d16f076()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local active_chr_no: s32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: s32 = 0
	local var13: s32 = 0
	local var14: f32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(307, 1)
		event.Initialize()
		event.DngPause(1, 1)
		event.SetMesWindowMode(0, 7)
		event.StopBgm(0)
		var0 = event.SndLoadSound_2(3800) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		do
			local out1, out2, out3, out4 = event.GetDunWorldCoord(2)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
			var4 = out4 or var4
		end
		event.SetWorldCoord(var1, var2, var3, var4)
		event.SetStatusbarShow(0, 1.0)
		event.LoadMes(0, 5, "event/e300/e307/e307_1.txt")
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		active_chr_no = if 0 == 0 then 1 else 0
		if active_chr_no ~= 0 then
			event.DngSetupMainUnit(0)
			event.SetActiveChrNo(0)
		end
		event.LoadMotion(5, "event/dng_inout/c01d03gkey.gltf", "info", 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "event/d03/p00_26a.gltf", "info", 9)
		event.CharaActive(9)
		event.EohSyncChara(1, 9)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.SetStatus(1, 9, 8, 1)
		event.LoadItem(5, 341, "info", 10)
		event.CharaActive(10)
		event.SetReference(9, "niku", 10)
		event.EohSetFootSoundId(0, 16)
		event.ObjsSetPos(0, 0.0, 140.0, -200.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(0, "持ち上げ停止", 4, -1.0, 1)
		event.ObjsSetPos(1, 0.0, 140.0, -200.0)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(1, "肉つかみ飛び", 4)
		event.SetCharaShow(1, 0)
		event.SetCharaShow(2, 0)
		event.InitDramaScene()
		event.SndSePlay(var0, 0)
		event.CmrsInit()
		event.CmrsSetPos(-53.68, 35.8, 200.46)
		event.CmrsSetRef(12.57, 57.95, 3.94)
		event.CmrsMove2(-53.68, 35.8, 200.46, 12.57, 10.0, 3.94, 30, 2, 1.0)
		event.SetFadeIn(30)
		var6 = 0.0
		var7 = -10.0
		var8 = 7.0
		var9 = 0.0
		var10 = -3.0
		var11 = 8.0
		var13 = 0
		var12 = 0
		while var12 < 60 do
			event.ObjsAddPos(1, var6, var7, var8)
			if var12 < 30 then
				event.ObjsAddPos(0, var6, var7, var8)
			else
				if var12 == 30 then
					event.ObjsSetMotion(0, "d03着地", 2)
					event.ObjsNextMotion(0, "立ち", 4)
				end
				do
					local out1, out2, out3 = event.GetCharaPos(0)
					var14 = out1 or var14
					var15 = out2 or var15
					var16 = out3 or var16
				end
				if var13 == 0 then
					if vm.f32(var15 + var10) <= 0.0 then
						event.SetCharaPos(0, var14, 0.0, var16)
						var13 = 1
					else
						event.ObjsAddPos(0, var9, var10, var11)
						var10 = vm.f32(var10 * vm.f32(1.1))
						var11 = vm.f32(var11 * vm.f32(0.8))
					end
				elseif var13 <= 1 then
					do
						local out1, out2, out3, out4 =
							event.ChkIntersectionPoint_12(0, var14, 8.0, var16, var14, -8.0, var16, 0)
						var17 = out1 or var17
						var18 = out2 or var18
						var19 = out3 or var19
						var13 = out4 or var13
					end
					if var13 >= 0 then
						event.SetCharaPos(0, var17, var18, var19)
					else
						event.SetCharaPos(0, var14, -0.7, var16)
					end
					var13 = 10
				end
			end
			var7 = vm.f32(var7 * vm.f32(0.9))
			var12 = var12 + 1
			at = 2
			vm.wait(2)
		end
		at = 3
		wait_objects(0)
		at = 4
		wait_frames(20)
		event.CharaActive(0, 9)
		event.CharaActive(0, 10)
		event.CmrsSyncObj(0, 0.0, 22.0, 0.0, 0.37, 0.0, 33.0)
		event.CmrsMoveAhd2(3.14, 0.0, 33.0, 180, 0, 1.0)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMove(0, 0.0, -1.0, 100.0, 60)
		at = 5
		helper_f0a13ee2(3070010, -1, 10)
		at = 6
		helper_f0a13ee2(3070020, -1, 10)
		at = 7
		wait_camera()
		event.CmrsReleaseObj()
		event.CmrsMove2(0.06, 21.0, 67.0, 0.0, 52.06, 100.0, 60, 0, 1.0)
		at = 8
		wait_frames(90)
		event.SetFadeOut(30)
		event.FadeOutBgm(30)
		at = 9
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			active_chr_no = if 0 == 0 then 1 else 0
			var6 = 0.0
			var7 = -10.0
			var8 = 7.0
			var9 = 0.0
			var10 = -3.0
			var11 = 8.0
			var13 = 0
			var12 = 0
			local _ = var13 == 0
			var13 = 1
			local _ = vm.f32(var15 + var10) <= 0.0
			var10 = vm.f32(var10 * vm.f32(1.1))
			var11 = vm.f32(var11 * vm.f32(0.8))
			local _ = var13 <= 1
			local _ = var13 >= 0
			var13 = 10
			var7 = vm.f32(var7 * vm.f32(0.9))
			local _ = var12 < 60
			local _ = var12 < 30
			local _ = var12 == 30
			var12 = var12 + 1
		end
		if at <= 2 then
			helper_238b5abc(0)
		end
		if at <= 3 then
			wait_frames_skipping(20)
		end
		if at <= 4 then
			helper_2f8c501c(3070010, -1, 10)
		end
		if at <= 5 then
			helper_2f8c501c(3070020, -1, 10)
		end
		if at <= 6 then
			helper_344d6cd8()
		end
		if at <= 7 then
			wait_frames_skipping(90)
		end
		if at <= 8 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 10
	vm.entry(10)
	event.CancelDramaScene()
	event.LoadMes(0, -1)
	event.StopBgm(0)
	event.SndSeStop(var0, 0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.EohSetPos(0, 0.0, -1.0, 100.0)
	event.EohSetRot(0, 0.0, 0.0, 0.0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohNormalDrive(0)
	event.EohResetDaPosition(0)
	event.SetCameraRef(0.0, 29.0, 100.0)
	event.SetCameraPos(0.0, 41.0, -20.0)
	event.ResetCamera(0)
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.DngPause(1, 0)
	event.Finish()
end

return helper_3d16f076
