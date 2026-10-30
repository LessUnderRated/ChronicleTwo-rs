--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0382f327 = require("@lib/event/helper_0382f327")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_8b621cc7 = require("@lib/event/helper_8b621cc7")
local helper_b1ec446a = require("@lib/event/helper_b1ec446a")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_58312c24()
	local time: f32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(280, 1)
		event.Initialize()
		helper_8b621cc7()
		event.InitDramaScene()
		time = event.GetTime() or time
		if time > 23.0 or time < 3.0 then
			event.SetTime(23.5)
		end
		event.CharaActive(0, 0)
		event.CmrsSetPos(-345.15, 101.35, 500.91)
		event.CmrsSetRef(-187.77, 66.45, 754.48)
		event.ObjsSetPos(5, 1.3, 8.0, 700.0)
		event.ObjsSetPos(2, -211.51, 0.0, 580.92)
		event.ObjsSetRot(2, 0.0, 0.12, 0.0)
		event.ObjsSetPos(3, -179.62, 0.0, 849.1)
		event.ObjsSetRot(3, 0.0, -3.04, 0.0)
		event.ObjsSetPos(4, -127.36, 0.0, 848.26)
		event.ObjsSetRot(4, 0.0, -2.88, 0.0)
		event.ObjsSetMotion(2, "歩き", 0)
		event.ObjsSetMotion(3, "会話2", 0)
		event.ObjsSetMotion(4, "喜び", 0)
		event.SetCrossfade(30)
		event.ObjsMove(2, -178.31, 0.0, 745.86, 240, 1)
		helper_0382f327(2800410, -1)
		wait_objects(2)
		event.ObjsSetMotion(2, "立ち")
		event.SetCameraSpeed(0)
		event.CmrsMove2(-345.15, 101.35, 500.91, -393.5, 319.63, 632.81, 240, 0, 0.4)
		helper_0382f327(2800420, -1)
		wait_camera()
		helper_888ab2a3(60)
		event.FadeOutBgm(30)
		event.SetFadeOut(30)
		helper_888ab2a3(30)
	end)
	vm.entry(8)
	event.CancelDramaScene()
	event.StopBgm(0)
	helper_b1ec446a()
	event.SetTime(time)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

return helper_58312c24
