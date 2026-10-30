--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_926d0569 = require("@lib/event/helper_926d0569")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_a87eb945 = require("@lib/event/helper_a87eb945")
local helper_e787350a = require("@lib/event/helper_e787350a")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_80827cc3()
	local var0: s32 = 0
	local var1: s32 = 0
	local active_chr_no: s32 = 0
	vm.section(function()
		vm.entry(1)
		event.SetFlag(636, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var0 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var0
		var1 = event.SndLoadSound_2(5826) or var1
		event.AssignStack(5)
		event.ClearStack(5)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		event.SetStatusbarShow(0, 1.0)
		event.SetWorldCoord(0.0, 0.0, 560.0, 0.0)
		event.ChangeDir("event/e600/e624/")
		event.LoadMes(0, 5, "e624_1.txt")
		if active_chr_no == 0 then
			event.LoadMotion(5, "e624_mints.gltf", "info", 0)
		end
		if active_chr_no == 1 then
			event.LoadMotion(5, "e624_monica.gltf", "info", 0)
		end
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.LoadChara(5, "e636_lapis_hi.gltf", "info", 8)
		event.CharaActive(0, 8)
		event.EohSyncChara(1, 8)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsSetEohFramePos(1, 0, "item", 0.0, 0.0, 0.0, -1)
		event.ChangeDir("")
		event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 9)
		event.CharaActive(0, 9)
		event.EohSyncChara(2, 1)
		event.EohSyncChara(3, 2)
		event.EohSetShow(2, 0)
		event.EohSetShow(3, 0)
		event.EohSetPos(0, 0.0, 4.0, -920.0)
		event.EohSetRot(0, 0.0, 3.14, 0.0)
		event.EohSetMotion(0, "立ち", 4)
		event.EohResetDaPosition(0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(-40.26, 20.64, -866.67)
		event.CmrsSetRef(-1.7, 36.27, -951.09)
		event.CmrsMove2(-29.36, 23.4, -890.54, -1.7, 36.27, -951.09, 90, 2, 1.0)
		event.SndSePlay(var1, 0)
		event.SetFadeIn(30)
		wait_frames(30)
		if active_chr_no == 0 then
			helper_4116e6bb(6240010)
		else
			helper_4116e6bb(6240020)
		end
		event.CmrsInit()
		event.SndSeStop(var1, 0)
		event.SndPauseBgm()
		event.EohSyncObj_3(30, "p01_s1301-m-m", "s1301_3-m0")
		event.EohSetShow(30, 0)
		event.CharaActive(1, 8)
		event.CharaActive(1, 9)
		if active_chr_no == 0 then
			event.CmrsSetPos(0.0, 51.31, -963.58)
			event.CmrsSetRef(0.0, 28.64, -917.36)
			event.CmrsMove2(0.0, 46.94, -952.38, 0.0, 28.64, -917.36, 120, 2, 0.4)
			event.SetCharaPos(9, 7.74, 35.0, -358.0)
			event.SetCharaRot(9, 0.2, 0.24, 0.0)
		else
			event.CmrsSetPos(0.0, 53.31, -963.58)
			event.CmrsSetRef(0.0, 30.64, -917.36)
			event.CmrsMove2(0.0, 48.94, -952.38, 0.0, 30.64, -917.36, 120, 2, 0.4)
			event.SetCharaPos(9, -4.45, 37.0, -358.0)
			event.SetCharaRot(9, 0.2, -0.24, 0.0)
		end
		event.SetMotion(9, "発動", 6)
		event.ObjsSetMotion(0, "ラピスゲット", 4, -1.0, 1)
		wait_frames(2)
		event.SndSePlay(var0, 0)
		wait_frames(120)
		event.SndSePlay(var1, 1)
		helper_e787350a(368, 1)
		event.SetFadeOut(30)
		wait_frames(30)
	end)
	vm.entry(9)
	event.CancelDramaScene()
	event.ObjsInit(0)
	event.ObjsInit(1)
	event.SndSeStop(var1, 0)
	event.SndSeStop(var0, 0)
	event.PlayBgm(0)
	event.EohSetShow(2, 1)
	event.EohSetShow(3, 1)
	event.DelExtMotion(0)
	event.DeleteChara(8)
	event.DeleteChara(9)
	event.LoadMes(0, -1)
	event.SetStatusbarShow(1, 1.0)
	helper_926d0569()
	event.Finish()
	helper_9dafbc83(0.0, 4.0, -350.0, 0.0)
	event.SetCameraRef(0.0, 34.0, -350.0)
	event.SetCameraPos(0.0, 44.0, -230.0)
	event.ResetCamera(0)
	helper_a87eb945(0)
end

return helper_80827cc3
