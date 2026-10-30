--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_6cf80642 = require("@lib/event/helper_6cf80642")
local helper_b76e3b36 = require("@lib/event/helper_b76e3b36")
local helper_f97100db = require("@lib/event/helper_f97100db")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_3d122e85()
	local var0: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetFadeOut(30)
		at = 2
		wait_frames(30)
		event.LoadSound(2237)
		var0 = event.SndLoadSound_2(2237) or var0
		event.CharaActive(0, 0)
		event.CharaActive(0, 8)
		event.CharaActive(0, 9)
		event.CharaActive(0, 10)
		helper_f97100db()
		at = 3
		helper_b76e3b36()
		event.EohSyncObj_2(0, "p01_train01")
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 0.0, 400.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.EohSyncObj_2(1, "p01_shadow-0")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadChara(5, "event/train/steam/steam_l.gltf", "info", 32)
		event.CharaActive(0, 32)
		event.EohSyncChara(2, 32)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.LoadChara(5, "event/train/steam/steam_r.gltf", "info", 33)
		event.CharaActive(0, 33)
		event.EohSyncChara(3, 33)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.EsmInitialize(5)
		event.EsmLoadBase("列車煙")
		event.EsmInitFix(5)
		event.EohSyncObj_2(0, "p01_train01")
		event.EsmCreate("列車煙")
		event.EsmSetValue(0, 0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-304.68, 110.91, -288.45)
		event.CmrsSetRef(-158.49, 89.18, -46.7)
		event.SetFadeIn(30)
		at = 4
		wait_frames(30)
		event.CharaActive(1, 32)
		event.ObjsSetPos(2, 30.0, 20.0, 380.0)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(2, "ぶしゅー", 6)
		event.CharaActive(1, 33)
		event.ObjsSetPos(3, -30.0, 20.0, 380.0)
		event.ObjsSetRot(3, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(3, "ぶしゅー", 6)
		event.ObjsMove2(0, 0.0, 0.0, 6000.0, 210, 1, 1.0)
		event.ObjsMove2(1, 0.0, 0.0, 6000.0, 210, 1, 1.0)
		event.ObjsMove2(2, 0.0, 0.0, 6000.0, 210, 1, 1.0)
		event.ObjsMove2(3, 0.0, 0.0, 6000.0, 210, 1, 1.0)
		event.SndSePlay(var0, 3)
		at = 5
		wait_objects(0)
		event.SetFadeOut(30)
		at = 6
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			wait_frames_skipping(30)
		end
		if at <= 2 then
			helper_1ef0d4b2()
			helper_6cf80642()
		end
		if at <= 3 then
			wait_frames_skipping(30)
		end
		if at <= 4 then
			helper_238b5abc(0)
		end
		if at <= 5 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 7
	vm.entry(7)
	event.CancelDramaScene()
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	event.EsmClear()
	event.DeleteChara(32)
	event.DeleteChara(33)
	event.EohSetShadow(0, 1)
	event.CharaActive(0)
end

return helper_3d122e85
