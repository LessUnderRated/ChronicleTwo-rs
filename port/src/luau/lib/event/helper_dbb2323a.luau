--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")

--- Helper function.
local function helper_dbb2323a(arg0: s32)
	local count: s32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.SphidaSetStatusFlag(0)
		event.DeleteChara(12)
		event.DelImg(1)
		event.EsmClear()
		event.DelExtMotion(0)
		event.SetMotion(0, "立ち", 4)
		event.CharaNormalDrive(0)
		event.CharaResetDa(0)
		event.CharaActive(1, 13)
		event.CharaActive(1, 14)
		event.EohSyncChara(0, 1)
		event.EohSetShow(0, 0)
		event.EohSyncChara(0, 2)
		event.EohSetShow(0, 0)
		event.SetCameraCtrl(1)
		event.DeleteSwordEffect()
		event.SetStatusbarShow(0, 1.0)
		if arg0 ~= 1 then
			event.SetCrossfade(15)
		end
		count = event.SphidaGetParCount() or count
		if arg0 == 0 and count <= 0 then
			do
				local out1, out2, out3 = event.GetBeforeCameraNextPos()
				position_x = out1 or position_x
				position_y = out2 or position_y
				position_z = out3 or position_z
			end
			event.SetCameraPos(position_x, position_y, position_z)
			do
				local out1, out2, out3 = event.GetBeforeCameraNextRef()
				position_x = out1 or position_x
				position_y = out2 or position_y
				position_z = out3 or position_z
			end
			event.SetCameraRef(position_x, position_y, position_z)
			event.SetMesWindowMode(0, 4)
			at = 1
			helper_75684dd8(0, 2003, 8, 0, 0)
			event.SetFadeOut(30)
			at = 2
			wait_frames(30)
			arg0 = 2
			event.ResetCamera(0)
		end
		event.DngRunEvent(-1)
		event.ResetEventTrg()
		event.Finish()
		return arg0
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				wait_frames_skipping(30)
			end
			local _ = arg0 ~= 1
			local _ = arg0 == 0
			arg0 = 2
			return arg0
		end
		return nil
	end)
end

return helper_dbb2323a
