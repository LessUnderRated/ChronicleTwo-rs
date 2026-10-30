--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_fd86b417(arg0: s32)
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var5: f32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		event.SetMotion(0, "立ち")
		event.SetFadeOut(15)
		wait_frames(15)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		do
			local out1, out2, out3 = event.GetCharaPos(arg0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		do
			local _, out2, _ = event.GetCharaRot(arg0)
			var5 = out2 or var5
		end
		event.SetWorldCoord(var1, var2, var3, var5)
		event.SetStatusbarShow(0, 1.0)
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatus(1, 0, 256, 1)
		event.ChangeDir("event/e400/e436/")
		event.LoadMes(0, 5, "e436_1.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e436_mints.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e436_monica.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
		end
		event.ChangeDir("")
		if active_chr_no == 1 then
			event.LoadChara(5, "chara/c01_base.gltf", "info", 16)
			event.LoadEquip(5, 0, 4, "info", 16)
			event.LoadEquip(5, 0, 3, "info", 16)
			event.LoadEquip(5, 0, 2, "info", 16, 17)
			event.LoadMotion(5, "event/e400/e436/e436_mints.gltf", "info", 16)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 16)
			event.EohSyncChara(0, 16)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 0)
		else
			event.LoadChara(5, "chara/c02_base.gltf", "info", 16)
			event.LoadEquip(5, 1, 4, "info", 16)
			event.LoadEquip(5, 1, 3, "info", 16)
			event.LoadEquip(5, 1, 2, "info", 16, 17)
			event.LoadMotion(5, "event/e400/e436/e436_monica.gltf", "info", 16)
			event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", 16)
			event.EohSyncChara(1, 16)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", 0)
		end
		event.CharaActive(16)
		event.CharaActive(17)
		event.EohSyncChara(4, 1)
		event.EohSyncChara(5, 2)
		event.EohSetShow(4, 0)
		event.EohSetShow(5, 0)
		event.EohSetPos(0, -8.0, 0.0, 180.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "上向くL", 4)
		event.EohNormalDrive(0)
		event.EohResetDaPosition(0)
		event.EohSetFootSoundId(0, 14)
		event.EohSetPos(1, 8.0, 0.0, 180.0)
		event.EohSetRot(1, 0.0, 3.14, 0.0)
		event.EohSetMotion(1, "上向くL", 4)
		event.EohNormalDrive(1)
		event.EohResetDaPosition(1)
		event.EohSetFootSoundId(1, 14)
		event.CmrsInit()
		event.CmrsSetPos(0.0, 30.0, 280.0)
		event.CmrsSetRef(0.0, 30.0, 100.0)
		event.InitDramaScene()
		event.SetFadeIn(30)
		event.ObjsSetMotion(1, "上向く会話", 6)
		event.ObjsNextMotion(1, "上向くL", 4)
		wait_objects(1)
		event.ObjsSetMotion(1, "がっくり", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.ObjsMotionDelay(0, 10)
		event.ObjsSetMotion(0, "上向く戻り", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		helper_4116e6bb(4360030)
		wait_objects(1)
		event.ObjsSetMotion(1, "左向く", 6)
		event.ObjsNextMotion(1, "左向くL", 4)
		event.ObjsMotionDelay(0, 10)
		event.ObjsSetMotion(0, "右向く", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		helper_4116e6bb(4360035)
		event.SetFadeOut(30)
		wait_frames(30)
	end)
	event.CancelDramaScene()
	event.CmrsInit()
	event.CharaActive(0)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	event.DelExtMotion(0)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.LoadMes(0, -1)
	if active_chr_no == 0 then
		event.ObjsSetPos(0, 0.0, 0.0, 180.0)
	else
		event.ObjsSetPos(1, 0.0, 0.0, 180.0)
	end
	event.CmrsSetPos(0.0, 30.0, 280.0)
	event.CmrsSetRef(0.0, 30.0, 180.0)
	vm.wait(7)
	event.SetFadeIn(30)
	event.Finish()
end

return helper_fd86b417
