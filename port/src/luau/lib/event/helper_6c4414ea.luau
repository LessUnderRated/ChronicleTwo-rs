--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_ac9d5b12 = require("@lib/event/helper_ac9d5b12")
local helper_ae753a51 = require("@lib/event/helper_ae753a51")

--- Helper function.
local function helper_6c4414ea()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	vm.section(function()
		event.SetFlag(102, 1)
		event.Initialize()
		event.DngPause(1, 1)
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_2(1807) or var0
		event.AssignStack(5)
		event.ClearStack(5)
		do
			local out1, out2, out3, out4 = event.GetDunWorldCoord(2)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
			var4 = out4 or var4
		end
		var4 = vm.f32(var4 + vm.f32(1.5707964))
		if var4 > vm.f32(3.1415927) then
			var4 = vm.f32(var4 - vm.f32(6.2831855))
		end
		event.SetWorldCoord(var1, var2, var3, var4)
		event.LoadMotion(5, "event/e100/e102/e102_mints.gltf", "info", 0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 130.0, 100.0, 0.0)
		event.ObjsSetRot(0, 0.0, -1.57, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.LoadItem(5, 359, "info", 8)
		event.CharaActive(0, 8)
		event.SetReference(0, "ef00", 8)
		event.EohSyncChara(2, 1)
		event.EohSetShow(2, 0)
		event.EohSyncChara(3, 2)
		event.EohSetShow(3, 0)
		event.LoadMes(0, 5, "event/e100/e102/e102_1.txt")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		vm.wait(1)
		event.SetStatusbarShow(0, 1.0)
		event.InitDramaScene()
		helper_ae753a51(var0)
	end)
	event.CancelDramaScene()
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	helper_ac9d5b12()
	event.SndSeStop(var0, 0)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.DngPause(1, 0)
	event.EohSetPos(0, -175.0, 0.0, 0.0)
	event.EohSetRot(0, 0.0, -1.57, 0.0)
	event.EohSetMotion(0, "立ち", 4)
	event.SetCameraPos(-15.0, 77.61, 0.13)
	event.SetCameraRef(-175.0, 30.0, 0.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

return helper_6c4414ea
