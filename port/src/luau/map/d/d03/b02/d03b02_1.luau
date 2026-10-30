--!strict
-- map/d/d03/b02/d03b02_1.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0e75aa9e = require("@lib/event/helper_0e75aa9e")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_47084b1b = require("@lib/event/helper_47084b1b")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_5a05ed59 = require("@lib/event/helper_5a05ed59")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_80ad60c2 = require("@lib/event/helper_80ad60c2")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_f0ee9a01 = require("@lib/event/helper_f0ee9a01")
local set_window_mode = require("@lib/event/set_window_mode")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

local global0: f32 = 0
local global1: f32 = 0
local global2: f32 = 0
local global3: f32 = 0
local global4: f32 = 0
local global5: f32 = 0
local global6: f32 = 0
local global7: f32 = 0
local global8: s32 = 0
local global9: s32 = 0
local global10: s32 = 0
local global11: s32 = 0
local global12: s32 = 0
local global13: s32 = 0
local global14: s32 = 0
local global15: s32 = 0
local global16: s32 = 0
local global17: s32 = 0
local global18: s32 = 0
local global19: s32 = 0

--- Helper function.
local function helper_108ec()
	local flag: s32 = 0
	flag = event.GetFlag(348) or flag
	if flag == 1 then
		event.FuncPointShow("", "e348", 0)
	end
	do
		local out1, out2, out3 = event.ZeroVector()
		global0 = out1 or global0
		global1 = out2 or global1
		global2 = out3 or global2
	end
	global2 = 30.0
	do
		local out1, out2, out3 = event.ZeroVector()
		global4 = out1 or global4
		global5 = out2 or global5
		global6 = out3 or global6
	end
end

--- Helper function.
local function helper_3b528()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global18 = 0
		global19 = 32
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global18)
		event.LoadMotion(5, "event/e300/e356/e356_mints.gltf", "info", global18)
		event.EohSyncChara(0, global18)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global18)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global19)
		event.LoadEquip(5, 1, 1, "info", global19, 17)
		event.LoadEquip(5, 1, 0, "info", global19, 18)
		event.LoadEquip(5, 1, 4, "info", global19)
		event.LoadEquip(5, 1, 3, "info", global19)
		event.LoadEquip(5, 1, 2, "info", global19, 36)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global19)
		event.LoadMotion(5, "event/e300/e356/e356_monica.gltf", "info", global19)
		event.EohSyncChara(1, global19)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global19)
		event.CharaActive(0, 36)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
	end
	if active_chr_no == 1 then
		global18 = 32
		global19 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global18)
		event.LoadEquip(5, 0, 1, "info", global18, 17)
		event.LoadEquip(5, 0, 0, "info", global18, 18)
		event.LoadEquip(5, 0, 4, "info", global18)
		event.LoadEquip(5, 0, 3, "info", global18)
		event.LoadEquip(5, 0, 2, "info", global18, 36)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global18)
		event.LoadMotion(5, "event/e300/e356/e356_mints.gltf", "info", global18)
		event.EohSyncChara(0, global18)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global18)
		event.CharaActive(0, 36)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global19)
		event.LoadMotion(5, "event/e300/e356/e356_monica.gltf", "info", global19)
		event.EohSyncChara(1, global19)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global19)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e300/e356/e356_guiltoni.gltf", "info", 39)
	event.CharaActive(0, 39)
	event.EohSyncChara(6, 39)
	event.ObjsInit(6, 39)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(5, "event/e300/e356/e356_jamming.gltf", "info", 40)
	event.CharaActive(0, 40)
	event.EohSyncChara(7, 40)
	event.ObjsInit(7, 40)
	event.ObjsSyncObj(7, 7)
	event.LoadChara(5, "event/e300/e356/e356_dsmoke.gltf", "info", 41)
	event.CharaActive(0, 41)
	event.EohSyncObj_2(8, "p01_battleship")
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.EohSyncObj_2(9, "p06_d03b01")
	event.ObjsInit(9)
	event.ObjsSyncObj(9, 9)
	event.EohSyncObj_3(10, "p01_d03b01", "d03b01_12-m0")
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.EohSyncObj_3(11, "p02_d03b01", "d03b01_3-m0")
	event.ObjsInit(11)
	event.ObjsSyncObj(11, 11)
	event.EohSyncObj_3(12, "p02_d03b01", "d03b01_15-m0")
	event.ObjsInit(12)
	event.ObjsSyncObj(12, 12)
	event.EohSyncObj_3(18, "p01_battleship", "tbig-m0")
	event.ObjsInit(13)
	event.ObjsSyncObj(13, 18)
	event.LoadMes(0, 5, "event/e300/e356/e356.txt")
end

--- Helper function.
local function helper_23400000()
	global18 = 0
	global19 = 32
	global18 = 32
	global19 = 0
end

--- Helper function.
local function helper_3ae94()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global18)
		event.CharaActive(0, global19)
		event.DelExtMotion(global18)
		event.DelExtMotion(global19)
		event.DeleteChara(global19)
		event.DeleteChara(36)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global19)
		event.CharaActive(0, global18)
		event.DelExtMotion(global18)
		event.DelExtMotion(global19)
		event.DeleteChara(global18)
		event.DeleteChara(36)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(39)
	event.DeleteChara(40)
	event.DeleteChara(41)
	event.FuncPointShow("", "func", 1)
	event.FuncPointShow("", "func4", 1)
	event.EohSetShow(12, 1)
	event.EohSetScale(8, 1.0, 1.0, 1.0)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.EohSetShow(8, 1)
	event.EohSetShow(9, 1)
	event.SetStatusbarShow(1, 1.0)
	event.Finish()
	event.MapJump_3(-1, "d03b01", 503)
end

--- Helper function.
local function helper_3cb94()
	local projection: f32 = 0
	local time: f32 = 0
	local at: number = 0
	vm.section(function()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetMotionBlur(0)
		event.StopBgm(0)
		at = 1
		wait_frames(4)
		event.LoadBgm(152)
		helper_3b528()
		projection = event.GetProjection() or projection
		time = event.GetTime() or time
		event.InitDramaScene()
		event.SetTime(21.0)
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "デフォルト顔")
		event.ObjsTexAnime(6, 1, "通常目パチ")
		event.ObjsTexAnime(7, 0)
		event.ObjsTexAnime(7, 1, "デフォルト顔")
		event.ObjsTexAnime(7, 1, "目パチ")
		event.FuncPointShow("", "func", 0)
		event.FuncPointShow("", "func4", 0)
		event.ObjsSetRot(11, 0.0, 1.57, 0.0)
		event.ObjsSetRot(12, 0.0, 1.57, 0.0)
		event.EohSetShow(8, 1)
		event.EohSetShow(9, 1)
		event.EohSetShow(12, 0)
		event.ObjsSetRot(13, -0.4, 1.9, 0.0)
		event.CharaActive(1, 36)
		event.CharaActive(0, global18)
		event.CharaActive(1, 39)
		event.CharaActive(0, 40)
		event.ObjsSetMotion(6, "立ち", 4)
		event.ObjsSetMotion(7, "立ち", 4)
		event.ObjsSetPos(8, -3191.25, 25.75, 1213.17)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.CharaActive(1, 41)
		event.SetCharaPos(41, -3714.57, 453.25, 1349.41)
		event.SetCharaRot(41, 0.0, 1.9, 0.0)
		event.ObjsSetPos(7, -2784.72, 25.75, 1175.72)
		event.ObjsSetRot(7, 0.0, 1.41, 0.0)
		event.SetFadeIn(30)
		event.SetProjection(1502.9)
		event.CharaActive(0, global19)
		event.SetProjection(projection)
		event.ObjsRotation(8, 0.0, 0.0, 0.06, 90)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.CharaActive(1, 40)
		at = 2
		wait_frames(90)
		event.CmrsSetRef(-2045.72, -1258.82, 1215.53)
		event.CmrsSetAhd(-1.19, -17.66, 32.97)
		event.ObjsSetPos(6, -2040.96, -1287.62, 1214.97)
		event.ObjsSetRot(6, 0.0, 2.0, 0.0)
		at = 3
		wait_frames(90)
		event.CmrsMoveAhd(-0.71, -17.66, 32.97, 300)
		at = 4
		wait_frames(240)
		event.ObjsSetMotion(6, "ふりかえり", 6)
		at = 5
		wait_frames(3000)
		event.SetFadeOut(30)
		at = 6
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_23400000()
			wait_frames_skipping(90)
		end
		if at <= 2 then
			wait_frames_skipping(90)
		end
		if at <= 3 then
			wait_frames_skipping(240)
		end
		if at <= 4 then
			wait_frames_skipping(3000)
		end
		if at <= 5 then
			wait_frames_skipping(30)
		end
		return true
	end)
	event.CancelDramaScene()
	event.SetProjection(projection)
	event.SetTime(time)
	at = 7
	vm.wait(7)
	helper_3ae94()
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_11b44()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global8 = 0
		global9 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global8)
		event.LoadMotion(5, "event/e300/e352/e352_mints.gltf", "info", global8)
		event.EohSyncChara(0, global8)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global8)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global9)
		event.LoadEquip(5, 1, 1, "info", global9, 17)
		event.LoadEquip(5, 1, 0, "info", global9, 18)
		event.LoadEquip(5, 1, 4, "info", global9)
		event.LoadEquip(5, 1, 3, "info", global9)
		event.LoadEquip(5, 1, 2, "info", global9, 12)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global9)
		event.LoadMotion(5, "event/e300/e352/e352_monica.chr", "info", global9)
		event.EohSyncChara(1, global9)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global9)
		event.CharaActive(0, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
	end
	if active_chr_no == 1 then
		global8 = 8
		global9 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global8)
		event.LoadEquip(5, 0, 1, "info", global8, 17)
		event.LoadEquip(5, 0, 0, "info", global8, 18)
		event.LoadEquip(5, 0, 4, "info", global8)
		event.LoadEquip(5, 0, 3, "info", global8)
		event.LoadEquip(5, 0, 2, "info", global8, 12)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global8)
		event.LoadMotion(5, "event/e300/e352/e352_mints.gltf", "info", global8)
		event.EohSyncChara(0, global8)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global8)
		event.CharaActive(0, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global9)
		event.LoadMotion(5, "event/e300/e352/e352_monica.chr", "info", global9)
		event.EohSyncChara(1, global9)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global9)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e300/e352/e352_crest.gltf", "info", 11)
	event.CharaActive(0, 11)
	event.EohSyncChara(5, 11)
	event.ObjsInit(5, 11)
	event.ObjsSyncObj(5, 5)
	event.LoadChara(5, "event/e300/e352/e352_lin2.gltf", "info", 9)
	event.CharaActive(0, 9)
	event.EohSyncChara(4, 9)
	event.ObjsInit(4, 9)
	event.ObjsSyncObj(4, 4)
	event.LoadChara(5, "event/e300/e352/e352_guiltoni.gltf", "info", 19)
	event.CharaActive(0, 19)
	event.EohSyncChara(6, 19)
	event.ObjsInit(6, 19)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(5, "event/e300/e352/e352_jamming.gltf", "info", 20)
	event.CharaActive(0, 20)
	event.EohSyncChara(7, 20)
	event.ObjsInit(7, 20)
	event.ObjsSyncObj(7, 7)
	event.EohSyncObj_2(8, "p01_battleship")
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.EohSyncObj_2(9, "p06_d03b01")
	event.ObjsInit(9)
	event.ObjsSyncObj(9, 9)
	event.EohSyncObj_3(11, "p01_battleship", "t01-m0")
	event.LoadChara(5, "event/e300/e352/e352_houdai.gltf", "info", 15)
	event.CharaActive(0, 15)
	event.EohSyncChara(10, 15)
	event.ObjsInit(10, 15)
	event.ObjsSyncObj(10, 10)
	event.LoadChara(5, "event/e300/e352/e352_gun_f.gltf", "info", 21)
	event.CharaActive(0, 21)
	event.LoadChara(5, "event/e300/e352/e352_gun_l.gltf", "info", 22)
	event.CharaActive(0, 22)
	event.EohSyncChara(12, 22)
	event.ObjsInit(11, 22)
	event.ObjsSyncObj(11, 12)
	event.LoadChara(5, "event/e300/e352/e352_gun_h.gltf", "info", 23)
	event.CharaActive(0, 23)
	event.CopyChara(5, 23, 16)
	event.CharaActive(0, 16)
	event.LoadChara(5, "event/e300/e356/e356_dwarp.gltf", "info", 13)
	event.CharaActive(0, 13)
	event.EohSyncChara(14, 13)
	event.ObjsInit(14, 13)
	event.ObjsSyncObj(14, 14)
	event.LoadMes(0, 5, "event/e300/e352/e352_1.txt")
end

--- Helper function.
local function helper_22300000()
	global8 = 0
	global9 = 8
	global8 = 8
	global9 = 0
end

--- Helper function.
local function helper_11414()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global8)
		event.CharaActive(0, global9)
		event.DelExtMotion(global8)
		event.DelExtMotion(global9)
		event.DeleteChara(global9)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global9)
		event.CharaActive(0, global8)
		event.DelExtMotion(global8)
		event.DelExtMotion(global9)
		event.DeleteChara(global8)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(9)
	event.DeleteChara(11)
	event.DeleteChara(19)
	event.DeleteChara(20)
	event.DeleteChara(21)
	event.DeleteChara(22)
	event.DeleteChara(23)
	event.DeleteChara(16)
	event.DeleteChara(15)
	event.DeleteChara(13)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.EohSetScale(8, 1.0, 1.0, 1.0)
	event.EohSetShow(11, 1)
	event.EohSetShow(8, 1)
	event.EohSetShow(9, 1)
	event.SetStatusbarShow(1, 1.0)
	event.Finish()
	vm.wait(1)
	event.LoadDungeonMapFile("d03b01")
	event.LoadScript("d03b01/d03b01.stb", 504)
end

--- Helper function.
local function helper_13668()
	local var4: s32 = 0
	local projection: f32 = 0
	local time: f32 = 0
	local at: number = 0
	vm.section(function()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetMotionBlur(0)
		event.StopBgm(0)
		at = 1
		vm.wait(1)
		at = 2
		vm.wait(2)
		at = 3
		vm.wait(3)
		at = 4
		vm.wait(4)
		event.LoadBgm(53)
		event.LoadSound(3833)
		var4 = event.SndLoadSound_2(3833) or var4
		event.PlayBgm(0)
		helper_11b44()
		projection = event.GetProjection() or projection
		time = event.GetTime() or time
		event.InitDramaScene()
		event.SetTime(18.0)
		event.SetTimeStepEnable(0)
		event.SpriteInit(5)
		event.SpriteSetType(5, 0)
		event.SpriteSetUvsize(5, 0, 0, 512, 128)
		event.SpriteSetPutsize(5, 512, 128)
		event.SpriteSetPos(5, 320, 334)
		event.SpriteSetColor(5, 128, 128, 128, 128)
		event.SpriteSetScale(5, 1.0, 1.0)
		event.SpriteSetDraw(5, 0)
		event.EohSyncSprite(15, 5)
		event.ObjsInit(15)
		event.ObjsSyncObj(15, 15)
		event.SpriteSetDraw(5, 1)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "無表情")
		event.ObjsTexAnime(4, 1, "左向き目パチ")
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "わらい顔")
		event.ObjsTexAnime(5, 1, "わらい目パチ")
		event.ObjsTexAnime(7, 0)
		event.ObjsTexAnime(7, 1, "目パチ")
		event.ObjsSetPos(8, -3191.25, 25.75, -1213.17)
		event.SetCharaPos(13, -3191.25, 25.75, 213.17)
		event.SetCharaRot(13, 0.0, 0.0, 0.0)
		event.ObjsSetPos(7, -2749.5, 25.75, 1190.29)
		event.ObjsSetRot(7, 0.0, 2.16, 0.0)
		event.ObjsSetPos(6, -2755.39, 25.75, 1165.67)
		event.ObjsSetRot(6, 0.0, 2.0, 0.0)
		event.EohSetFrameShow(4, "houki", 1)
		event.ObjsSetMotion(7, "立ち", 4)
		event.ObjsSetMotion(6, "立ち", 4)
		event.ObjsSetMotion(10, "立ち", 4)
		event.EohSetShow(8, 0)
		event.EohSetShow(9, 0)
		event.CmrsSetPos(-541.54, -501.71, -4164.15)
		event.CmrsSetRef(29.42, 66.85, -125.36)
		event.CharaActive(0, 12)
		event.CharaActive(0, global8)
		event.CharaActive(0, global9)
		event.CharaActive(1, 9)
		event.CharaActive(1, 11)
		event.CmrsMove(-375.99, -501.71, -2993.11, 194.93, 66.85, 1045.42, 90)
		event.ObjsSetMotion(4, "手すり立ち", 4)
		event.ObjsSetMotion(5, "手すり上見立ち", 4)
		event.ObjsSetPos(5, -277.63, 0.0, 112.11)
		event.ObjsSetRot(5, 0.0, -1.2, 0.0)
		event.ObjsSetPos(4, -284.8, 0.0, 93.56)
		event.ObjsSetRot(4, 0.0, -1.12, 0.0)
		at = 5
		wait_frames(1)
		event.SetCrossfade(30)
		event.ObjsSetColor(15, 128, 128, 128, 0, 0)
		at = 6
		wait_camera()
		event.CmrsSetPos(559.2, 635.48, -195.62)
		event.CmrsSetRef(-204.68, 598.78, 74.08)
		event.SetCrossfade(30)
		event.CmrsMove2(559.2, 143.2, -195.62, -204.68, 106.5, 74.08, 200, 2, 1.0)
		at = 7
		wait_camera()
		event.EohSetShadow(5, 0)
		event.EohSetShadow(4, 0)
		event.CmrsSetPos(-367.55, 25.75, 136.21)
		event.CmrsSetRef(-204.68, 29.95, 74.08)
		event.SetCrossfade(30)
		event.SetPakuAnim(5, "わらい口パク")
		at = 8
		helper_4116e6bb(3520030)
		event.ResetPakuAnim()
		event.ObjsSetMotion(4, "左を見る", 6)
		event.ObjsNextMotion(4, "左を見るL", 4)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "無表情")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.CmrsSetPos(-291.37, 30.93, 159.38)
		event.CmrsSetRef(-284.82, 29.95, 71.35)
		event.SetPakuAnim(4, "通常口パク")
		at = 9
		helper_4116e6bb(3520040)
		event.ResetPakuAnim()
		event.SetPakuAnim(5, "わらい口パク")
		at = 10
		helper_4116e6bb(3520050)
		event.ResetPakuAnim()
		event.ObjsSetMotion(5, "右を見る", 6)
		event.ObjsNextMotion(5, "右を見るL", 4)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.SetPakuAnim(4, "わらい口パク")
		at = 11
		helper_4116e6bb(3520060)
		event.ResetPakuAnim()
		at = 12
		wait_frames(30)
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "大わらい顔")
		event.ObjsTexAnime(5, 1, "わらい目パチ")
		event.CmrsSetPos(-316.38, 25.02, 113.48)
		event.CmrsSetRef(-254.42, 29.95, 91.23)
		event.SetPakuAnim(5, "わらい口パク")
		at = 13
		helper_4116e6bb(3520070)
		event.ResetPakuAnim()
		at = 14
		wait_frames(30)
		event.ObjsSetMotion(4, "左を見る戻り", 6)
		event.ObjsNextMotion(4, "手すり立ち", 4)
		event.CmrsMove2(-339.97, 25.02, 121.96, -254.42, 29.95, 91.23, 30, 2, 1.0)
		at = 15
		wait_frames(30)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "無表情")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.SetPakuAnim(4, "通常口パク")
		at = 16
		helper_4116e6bb(3520080)
		event.ResetPakuAnim()
		event.FadeOutBgm(30)
		at = 17
		wait_frames(30)
		event.StopBgm(0)
		event.ObjsSetMotion(5, "右を見る戻り", 6)
		event.ObjsNextMotion(5, "手すり立ち", 4)
		at = 18
		wait_frames(30)
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "おこり顔")
		event.ObjsTexAnime(5, 1, "おこり目パチ")
		at = 19
		wait_frames(60)
		event.EohSetShadow(5, 1)
		event.EohSetShadow(4, 1)
		event.LoadBgm(32)
		event.PlayBgm(0)
		event.CmrsSetPos(-175.49, 25.02, 56.65)
		event.CmrsSetRef(-360.31, 29.95, 136.99)
		at = 20
		wait_frames(1)
		event.EohSetScale(14, 2.0, 2.0, 2.0)
		event.CharaActive(1, 13)
		event.SetMotion(13, "消える", 2, -1, 1)
		event.SetMotionBlur(80)
		event.EohSetShow(8, 1)
		event.SetCrossfade(40)
		event.SndSePlay(var4, 4)
		event.ObjsMove(8, -3191.25, 25.75, 1000.17, 10)
		event.ObjsMove(14, -3191.25, 25.75, 2000.17, 10)
		at = 21
		wait_objects(8)
		event.ObjsMove2(8, -3191.25, 25.75, 1213.17, 15, 2, 1.0)
		event.ObjsMove2(14, -3191.25, 25.75, 2213.17, 15, 2, 1.0)
		event.CharaActive(1, 19)
		event.CharaActive(1, 20)
		at = 22
		wait_frames(60)
		event.SndSePlay(var4, 5)
		at = 23
		wait_frames(60)
		event.SetMotionBlur(0)
		event.ObjsSetPos(8, -3191.25, 25.75, 1213.17)
		event.CmrsSetPos(2029.74, 25.02, 5512.95)
		event.CmrsSetRef(-250.33, 29.95, 2458.27)
		at = 24
		wait_frames(120)
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "無表情")
		event.ObjsTexAnime(5, 1, "通常目パチ")
		event.ObjsSetMotion(5, "身を乗りだす", 6)
		event.ObjsNextMotion(5, "身を乗りだすL", 4)
		event.CmrsSetPos(-279.45, 29.47, 165.03)
		event.CmrsSetRef(-304.59, 29.95, 74.61)
		event.SndSePlay(var4, 6)
		event.SetPakuAnim(5, "通常口パク")
		at = 25
		helper_4116e6bb(3520090)
		event.ResetPakuAnim()
		event.SndSePlay(var4, 7)
		event.ObjsSetMotion(4, "身を乗りだす", 6)
		event.ObjsNextMotion(4, "身を乗りだすL", 4)
		at = 26
		wait_frames(60)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(120)
		event.CmrsAddPas(-322.93, 29.47, 119.9, -410.56, 29.95, 157.34)
		event.CmrsAddPas(-1822.73, 29.47, 760.68, -1910.36, 29.95, 798.12)
		event.CmrsStartPas()
		at = 27
		wait_camera()
		event.CmrsSetPos(-2644.48, 43.74, 1174.79)
		event.CmrsSetRef(-2727.12, 58.9, 1167.6)
		event.SetCrossfade(30)
		at = 28
		wait_frames(120)
		event.SndSePlay(var4, 8)
		event.CmrsSetPos(-2700.02, 51.13, 1176.52)
		event.CmrsSetRef(-2753.54, 58.9, 1178.03)
		event.SetPakuAnim(6, "通常口パク")
		at = 29
		helper_4116e6bb(3520100)
		event.ResetPakuAnim()
		event.ObjsSetMotion(7, "うなづき", 6)
		event.ObjsNextMotion(7, "立ち", 4)
		event.SetPakuAnim(7, "通常口パク")
		at = 30
		helper_4116e6bb(3520110)
		event.ResetPakuAnim()
		event.SetPakuAnim(6, "通常口パク")
		at = 31
		helper_4116e6bb(3520120)
		event.ResetPakuAnim()
		event.ObjsSetPos(6, -2777.54, 25.75, 1176.5)
		event.ObjsSetRot(6, 0.0, 2.4, 0.0)
		event.SetProjection(584.9)
		event.CmrsSetPos(-2817.33, 55.98, 1202.06)
		event.CmrsSetRef(-2734.28, 58.9, 1166.34)
		event.SetCrossfade(30)
		event.SndSePlay(var4, 9)
		event.ObjsRotation(6, 0.0, -1.0, 0.0, 30)
		event.ObjsSetMotion(6, "振り返り（ＰＧ）左", 6)
		event.ObjsNextMotion(6, "振り返り（ＰＧ）左Ｌ", 4)
		event.SetPakuAnim(6, "通常口パク")
		at = 32
		helper_4116e6bb(3520130)
		event.ResetPakuAnim()
		event.ObjsSetMotion(7, "右見る", 6)
		event.ObjsNextMotion(7, "右見るＬ", 4)
		event.SetPakuAnim(7, "通常口パク")
		at = 33
		helper_4116e6bb(3520140)
		event.ResetPakuAnim()
		event.ObjsSetMotion(6, "そのまま左向き", 6)
		event.ObjsNextMotion(6, "そのまま左向きＬ", 4)
		event.SetPakuAnim(6, "通常口パク")
		at = 34
		helper_4116e6bb(3520150)
		event.ResetPakuAnim()
		at = 35
		wait_objects(6)
		event.SndSePlay(var4, 10)
		event.ObjsSetMotion(7, "右からはっ", 6)
		event.ObjsNextMotion(7, "戻り", 6)
		event.ObjsNextMotion(7, "立ち", 4)
		event.SetPakuAnim(7, "通常口パク")
		at = 36
		helper_4116e6bb(3520160)
		event.ResetPakuAnim()
		at = 37
		wait_objects(7)
		event.ObjsSetMotion(6, "戻り", 6)
		at = 38
		wait_frames(10)
		event.SndSeStop(var4, 8)
		event.SetProjection(projection)
		event.ObjsSetRot(10, 0.0, 1.92, 0.0)
		event.CharaActive(1, 15)
		event.EohSetShow(11, 0)
		event.ObjsSetPos(10, -2458.92, 167.76, 852.48)
		event.CmrsSetPos(-1958.78, 43.74, 1048.53)
		event.CmrsSetRef(-2036.51, 58.9, 1019.15)
		event.SndSePlay(var4, 11)
		event.ObjsSetMotion(10, "横から縦移動", 6)
		event.ObjsNextMotion(10, "狙う", 6)
		event.ObjsNextMotion(10, "狙い立ち", 6)
		at = 39
		wait_frames(120)
		event.SndSePlay(var4, 12)
		event.SetProjection(222.0)
		event.CmrsSetPos(-2502.08, 289.28, 872.69)
		event.CmrsSetRef(-2429.52, 237.57, 840.94)
		at = 40
		wait_objects(10)
		event.SndSeStop(var4, 12)
		at = 41
		wait_frames(30)
		event.SetProjection(projection)
		event.CmrsSetPos(-1862.68, 19.26, 1357.68)
		event.CmrsSetRef(-2351.83, 177.35, 866.18)
		event.SetCharaPos(21, -2279.73, 181.5, 788.22)
		event.SetCharaRot(21, 0.0, 1.9, 0.0)
		event.SetCharaPos(22, -2279.73, 181.5, 788.22)
		event.SetCharaRot(22, 0.0, 1.9, 0.0)
		event.CharaActive(1, 21)
		event.SndSePlay(var4, 13)
		event.SetMotion(21, "発射", 6, -1, 1)
		event.ObjsSetMotion(10, "発射", 6)
		event.ObjsNextMotion(10, "狙い立ち", 6)
		event.CmrsQuake(0.0, 1.3, 0.0, 60)
		at = 42
		wait_frames(5)
		event.CharaActive(1, 22)
		event.ObjsMove(11, -1846.06, 191.5, 633.95, 10)
		at = 43
		wait_frames(60)
		event.CharaActive(0, 22)
		event.SndSePlay(var4, 13)
		event.SetMotion(21, "発射", 6, -1, 1)
		event.ObjsSetMotion(10, "発射", 6)
		event.ObjsNextMotion(10, "狙い立ち", 6)
		event.CmrsQuake(0.0, 1.3, 0.0, 60)
		at = 44
		wait_frames(5)
		event.CharaActive(1, 22)
		event.SetCharaPos(22, -2279.73, 181.5, 788.22)
		event.SetCharaRot(22, 0.0, 1.9, 0.0)
		event.ObjsMove(11, -1846.06, 191.5, 633.95, 10)
		at = 45
		wait_frames(60)
		event.CharaActive(0, 22)
		event.SndSePlay(var4, 13)
		event.SetMotion(21, "発射", 2, -1, 1)
		event.ObjsSetMotion(10, "発射", 6)
		event.ObjsNextMotion(10, "狙い立ち", 6)
		event.CmrsQuake(0.0, 1.3, 0.0, 60)
		at = 46
		wait_frames(5)
		event.CharaActive(1, 22)
		event.SetCharaPos(22, -2279.73, 181.5, 788.22)
		event.SetCharaRot(22, 0.0, 1.9, 0.0)
		event.ObjsMove(11, -1846.06, 191.5, 633.95, 10)
		at = 47
		wait_frames(60)
		event.CharaActive(0, 21)
		event.CharaActive(0, 22)
		event.EohSetFrameShow(4, "houki", 0)
		event.ObjsSetMotion(5, "倒れ", 6)
		event.ObjsSetMotion(4, "倒れ", 6)
		event.ObjsSetPos(5, -190.72, 0.0, 61.97)
		event.ObjsSetRot(5, 0.0, 0.72, 0.0)
		event.ObjsSetPos(4, -193.0, 0.0, 66.79)
		event.ObjsSetRot(4, 0.0, 1.04, 0.0)
		event.CmrsSetPos(1488.6, 102.72, 416.88)
		event.CmrsSetRef(842.64, 111.52, 481.71)
		event.SetScale(23, 1.5, 1.5, 1.5)
		event.SetScale(16, 1.5, 1.5, 1.5)
		event.SetCharaPos(23, -171.72, -180.78, 261.44)
		event.SetCharaRot(23, 0.0, 0.0, 0.0)
		event.SetCharaPos(16, -228.91, 218.2, 212.99)
		event.SetCharaRot(16, 0.0, 0.0, 0.0)
		event.CharaActive(1, 23)
		event.SetMotion(23, "ヒット", 6, -1, 1)
		event.SndSePlay(var4, 14)
		event.CmrsQuake(0.0, 1.6, 0.0, 60)
		at = 48
		wait_frames(60)
		event.CharaActive(0, 23)
		event.CmrsSetPos(228.78, 144.09, 1023.49)
		event.CmrsSetRef(-311.5, -61.26, 184.25)
		event.CmrsQuake(0.0, 1.6, 0.0, 120)
		event.CharaActive(1, 16)
		event.SetMotion(16, "ヒット", 6, -1, 1)
		event.SndSePlay(var4, 14)
		at = 49
		wait_frames(60)
		event.CharaActive(1, 23)
		event.SetMotion(23, "ヒット", 6, -1, 1)
		event.SndSePlay(var4, 14)
		at = 50
		wait_frames(60)
		event.SetFadeOut(30)
		at = 51
		wait_frames(30)
		at = 52
		wait_frames(15)
		event.FuncPointShow("", "func2", 1)
		event.FuncPointShow("", "func3", 1)
		event.FuncPointShow("", "func0", 0)
		event.EohSetShow(9, 1)
		event.SndSePlay(var4, 15)
		event.CmrsQuake(0.0, 0.6, 0.0, 90)
		event.CmrsSetPos(26.69, 78.26, -14.0)
		event.CmrsSetRef(-133.35, 46.81, 45.49)
		event.SetFadeIn(30)
		at = 53
		wait_frames(120)
		event.ObjsSetMotion(5, "身を起こす", 6)
		event.ObjsSetMotion(4, "身を起こす", 6)
		event.SndSePlay(var4, 16)
		event.CmrsSetPos(-140.11, 17.78, 75.17)
		event.CmrsSetRef(-196.15, 7.54, 67.76)
		at = 54
		wait_frames(60)
		event.SndSePlay(var4, 17)
		event.ObjsSetMotion(5, "起きあがる", 6)
		event.ObjsNextMotion(5, "起きあがるL", 4)
		event.ObjsSetMotion(4, "起きあがる", 6)
		event.ObjsNextMotion(4, "起きあがるL", 4)
		event.ObjsSetPos(5, -203.17, 0.0, 74.79)
		event.ObjsSetRot(5, 0.0, -1.02, 0.0)
		event.ObjsSetPos(4, -181.97, 0.0, 71.68)
		event.ObjsSetRot(4, 0.0, -2.0, 0.0)
		event.CmrsSetPos(-26.74, 52.18, 5.97)
		event.CmrsSetRef(-138.01, 41.95, 46.59)
		at = 55
		wait_frames(120)
		event.CharaActive(0, 23)
		event.CharaActive(0, 16)
		event.CmrsSetPos(-214.82, 16.87, 105.28)
		event.CmrsSetRef(-206.28, 22.54, 81.27)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-219.67, 16.87, 118.95, -206.28, 22.54, 81.27)
		event.CmrsAddPas(-214.82, 16.87, 105.28, -206.28, 22.54, 81.27)
		event.CmrsStartPas()
		event.FadeOutBgm(200)
		at = 56
		wait_camera()
		event.StopBgm(0)
		event.SndSeStop(var4, 5)
	end, function(received: { any }): boolean
		if at <= 4 then
			helper_22300000()
			wait_frames_skipping(1)
		end
		if at <= 5 then
			helper_344d6cd8()
		end
		if at <= 6 then
			helper_344d6cd8()
		end
		if at <= 7 then
			helper_8cd371d7(3520030)
		end
		if at <= 8 then
			helper_8cd371d7(3520040)
		end
		if at <= 9 then
			helper_8cd371d7(3520050)
		end
		if at <= 10 then
			helper_8cd371d7(3520060)
		end
		if at <= 11 then
			wait_frames_skipping(30)
		end
		if at <= 12 then
			helper_8cd371d7(3520070)
		end
		if at <= 13 then
			wait_frames_skipping(30)
		end
		if at <= 14 then
			wait_frames_skipping(30)
		end
		if at <= 15 then
			helper_8cd371d7(3520080)
		end
		if at <= 16 then
			wait_frames_skipping(30)
		end
		if at <= 17 then
			wait_frames_skipping(30)
		end
		if at <= 18 then
			wait_frames_skipping(60)
		end
		if at <= 19 then
			wait_frames_skipping(1)
		end
		if at <= 20 then
			helper_238b5abc(8)
		end
		if at <= 21 then
			wait_frames_skipping(60)
		end
		if at <= 22 then
			wait_frames_skipping(60)
		end
		if at <= 23 then
			wait_frames_skipping(120)
		end
		if at <= 24 then
			helper_8cd371d7(3520090)
		end
		if at <= 25 then
			wait_frames_skipping(60)
		end
		if at <= 26 then
			helper_344d6cd8()
		end
		if at <= 27 then
			wait_frames_skipping(120)
		end
		if at <= 28 then
			helper_8cd371d7(3520100)
		end
		if at <= 29 then
			helper_8cd371d7(3520110)
		end
		if at <= 30 then
			helper_8cd371d7(3520120)
		end
		if at <= 31 then
			helper_8cd371d7(3520130)
		end
		if at <= 32 then
			helper_8cd371d7(3520140)
		end
		if at <= 33 then
			helper_8cd371d7(3520150)
		end
		if at <= 34 then
			helper_238b5abc(6)
		end
		if at <= 35 then
			helper_8cd371d7(3520160)
		end
		if at <= 36 then
			helper_238b5abc(7)
		end
		if at <= 37 then
			wait_frames_skipping(10)
		end
		if at <= 38 then
			wait_frames_skipping(120)
		end
		if at <= 39 then
			helper_238b5abc(10)
		end
		if at <= 40 then
			wait_frames_skipping(30)
		end
		if at <= 41 then
			wait_frames_skipping(5)
		end
		if at <= 42 then
			wait_frames_skipping(60)
		end
		if at <= 43 then
			wait_frames_skipping(5)
		end
		if at <= 44 then
			wait_frames_skipping(60)
		end
		if at <= 45 then
			wait_frames_skipping(5)
		end
		if at <= 46 then
			wait_frames_skipping(60)
		end
		if at <= 47 then
			wait_frames_skipping(60)
		end
		if at <= 48 then
			wait_frames_skipping(60)
		end
		if at <= 49 then
			wait_frames_skipping(60)
		end
		if at <= 50 then
			wait_frames_skipping(30)
		end
		if at <= 51 then
			wait_frames_skipping(15)
		end
		if at <= 52 then
			wait_frames_skipping(120)
		end
		if at <= 53 then
			wait_frames_skipping(60)
		end
		if at <= 54 then
			wait_frames_skipping(120)
		end
		if at <= 55 then
			helper_344d6cd8()
		end
		return true
	end)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	at = 57
	wait_frames(30)
	event.SndSeAllStop(4)
	event.SetProjection(projection)
	event.SetMotionBlur(0)
	event.SetTime(time)
	event.SetTimeStepEnable(1)
	event.SoundLoadCancel()
	event.BgmLoadCancel()
	at = 58
	vm.wait(58)
	at = 59
	helper_11414()
end

--- Helper function.
local function helper_19860()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global10 = 0
		global11 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global10)
		event.LoadMotion(5, "event/e300/e352/e352_mints.gltf", "info", global10)
		event.EohSyncChara(0, global10)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global10)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global11)
		event.LoadEquip(5, 1, 1, "info", global11, 17)
		event.LoadEquip(5, 1, 0, "info", global11, 18)
		event.LoadEquip(5, 1, 4, "info", global11)
		event.LoadEquip(5, 1, 3, "info", global11)
		event.LoadEquip(5, 1, 2, "info", global11, 12)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global11)
		event.LoadMotion(5, "event/e300/e352/e352_monica1.gltf", "info", global11)
		event.EohSyncChara(1, global11)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global11)
		event.CharaActive(0, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
	end
	if active_chr_no == 1 then
		global10 = 8
		global11 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global10)
		event.LoadEquip(5, 0, 1, "info", global10, 17)
		event.LoadEquip(5, 0, 0, "info", global10, 18)
		event.LoadEquip(5, 0, 4, "info", global10)
		event.LoadEquip(5, 0, 3, "info", global10)
		event.LoadEquip(5, 0, 2, "info", global10, 12)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global10)
		event.LoadMotion(5, "event/e300/e352/e352_mints.gltf", "info", global10)
		event.EohSyncChara(0, global10)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global10)
		event.CharaActive(0, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global11)
		event.LoadMotion(5, "event/e300/e352/e352_monica1.gltf", "info", global11)
		event.EohSyncChara(1, global11)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global11)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e300/e352/e352_lin2.gltf", "info", 9)
	event.CharaActive(0, 9)
	event.EohSyncChara(4, 9)
	event.ObjsInit(4, 9)
	event.ObjsSyncObj(4, 4)
	event.EohSyncObj_2(8, "p01_battleship")
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.EohSyncObj_2(9, "p06_d03b01")
	event.ObjsInit(9)
	event.ObjsSyncObj(9, 9)
	event.EohSyncObj_3(10, "p01_d03b01", "d03b01_12-m0")
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.EohSyncObj_3(11, "p02_d03b01", "d03b01_3-m0")
	event.ObjsInit(11)
	event.ObjsSyncObj(11, 11)
	event.EohSyncObj_3(18, "p02_d03b01", "d03b01_15-m0")
	event.ObjsInit(17)
	event.ObjsSyncObj(17, 18)
	event.LoadMes(0, 5, "event/e300/e352/e352_1.txt")
	event.AssignStack(6)
	event.ClearStack(6)
	event.LoadChara(6, "event/e300/e352/e352_crest.gltf", "info", 11)
	event.CharaActive(0, 11)
	event.EohSyncChara(5, 11)
	event.ObjsInit(5, 11)
	event.ObjsSyncObj(5, 5)
	event.LoadChara(6, "event/e300/e352/e352_guiltoni.gltf", "info", 19)
	event.CharaActive(0, 19)
	event.EohSyncChara(6, 19)
	event.ObjsInit(6, 19)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(6, "event/e300/e352/e352_jamming.gltf", "info", 20)
	event.CharaActive(0, 20)
	event.EohSyncChara(7, 20)
	event.ObjsInit(7, 20)
	event.ObjsSyncObj(7, 7)
	event.LoadChara(6, "event/e300/e352/e352_warp.gltf", "info", 16)
	event.CharaActive(0, 16)
	event.SetScale(16, 1.1, 1.1, 1.1)
	event.LoadChara(6, "event/e300/e352/e352_monica_hi.gltf", "info", 15)
	event.CharaActive(0, 15)
end

--- Helper function.
local function helper_22b00000()
	global10 = 0
	global11 = 8
	global10 = 8
	global11 = 0
end

--- Helper function.
local function helper_190b8()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global10)
		event.CharaActive(0, global11)
		event.DelExtMotion(global10)
		event.DelExtMotion(global11)
		event.DeleteChara(global11)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global11)
		event.CharaActive(0, global10)
		event.DelExtMotion(global10)
		event.DelExtMotion(global11)
		event.DeleteChara(global10)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(9)
	event.DeleteChara(11)
	event.DeleteChara(19)
	event.DeleteChara(20)
	event.DeleteChara(21)
	event.DeleteChara(22)
	event.DeleteChara(23)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.FuncPointShow("", "func", 1)
	event.FuncPointShow("", "func4", 1)
	event.FuncPointShow("", "func2", 0)
	event.FuncPointShow("", "func3", 0)
	event.EohSetShow(18, 1)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.EohSetShow(8, 1)
	event.EohSetShow(9, 1)
	event.SetStatusbarShow(1, 1.0)
	vm.wait(1)
	event.Finish()
end

--- Helper function.
local function helper_1b1b4()
	local var4: s32 = 0
	local projection: f32 = 0
	local time: f32 = 0
	local active_chr_no: s32 = 0
	local at: number = 0
	vm.section(function()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetMotionBlur(0)
		event.StopBgm(0)
		at = 1
		wait_frames(4)
		event.LoadBgm(51)
		event.LoadSound(3839)
		var4 = event.SndLoadSound_2(3839) or var4
		event.PlayBgm(0)
		helper_19860()
		projection = event.GetProjection() or projection
		time = event.GetTime() or time
		event.SetTime(18.0)
		event.SetTimeStepEnable(0)
		event.EohSetFootSoundId(0, 2)
		event.EohSetFootSoundId(1, 2)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "無表情")
		event.ObjsTexAnime(5, 1, "通常目パチ")
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "無表情")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.ObjsTexAnime(4, 1, "半口")
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "デフォルト顔")
		event.ObjsTexAnime(6, 1, "通常目パチ")
		event.ObjsTexAnime(7, 0)
		event.ObjsTexAnime(7, 1, "デフォルト顔")
		event.ObjsTexAnime(7, 1, "目パチ")
		event.EohSetShow(9, 1)
		event.FuncPointShow("", "func2", 1)
		event.FuncPointShow("", "func3", 1)
		event.FuncPointShow("", "func0", 0)
		event.FuncPointShow("", "func", 0)
		event.FuncPointShow("", "func4", 0)
		event.ObjsSetRot(11, 0.0, 1.57, 0.0)
		event.ObjsSetRot(17, 0.0, 1.57, 0.0)
		event.EohSetShow(8, 1)
		event.EohSetShow(18, 0)
		event.SndSePlay(var4, 4)
		event.SndSePlay(var4, 5)
		event.CmrsSetPos(-104.47, 123.32, -554.46)
		event.CmrsSetRef(123.37, 22.54, -57.61)
		event.CharaActive(1, 12)
		event.CharaActive(1, global10)
		event.CharaActive(1, global11)
		event.CharaActive(1, 9)
		event.CharaActive(1, 11)
		event.CharaActive(1, 19)
		event.CharaActive(0, 20)
		event.ObjsSetMotion(4, "立ち", 4)
		event.ObjsSetMotion(5, "立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(6, "立ち", 4)
		event.ObjsSetMotion(7, "立ち", 4)
		event.ObjsSetPos(8, -3191.25, 25.75, 1213.17)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.ObjsSetPos(7, -2749.5, 25.75, 1190.29)
		event.ObjsSetRot(7, 0.0, 2.16, 0.0)
		event.ObjsSetPos(6, -2755.39, 25.75, 1165.67)
		event.ObjsSetRot(6, 0.0, 1.92, 0.0)
		event.ObjsSetPos(10, 0.0, -50.0, 0.0)
		event.ObjsSetPos(5, -166.32, 0.0, 83.49)
		event.ObjsSetRot(5, 0.0, -1.2, 0.0)
		event.ObjsSetPos(4, -71.49, 0.0, 76.37)
		event.ObjsSetRot(4, 0.0, -1.12, 0.0)
		event.ObjsSetPos(0, 0.0, -50.0, 10.0)
		event.ObjsSetRot(0, 0.0, -1.2, 0.0)
		event.ObjsSetPos(1, 0.0, -50.0, -10.0)
		event.ObjsSetRot(1, 0.0, -1.2, 0.0)
		event.SetFadeIn(30)
		event.ObjsMove(1, 0.0, 0.0, -10.0, 180)
		event.ObjsMove(0, 0.0, 0.0, 10.0, 180)
		event.ObjsMove(10, 0.0, 0.0, 0.0, 180)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(150)
		event.CmrsAddPas(-104.47, 123.32, -554.46, 123.37, 22.54, -57.61)
		event.CmrsAddPas(-295.35, 123.32, -466.93, -67.52, 22.54, 29.92)
		event.CmrsStartPas()
		at = 2
		wait_camera()
		event.InitDramaScene()
		event.CmrsSetPos(94.12, 16.49, 28.03)
		event.CmrsSetRef(-65.76, 22.54, 25.67)
		at = 3
		wait_frames(30)
		event.SndSeStop(var4, 5)
		event.SndSePlay(var4, 6)
		event.ObjsSetMotion(5, "振り向く", 6)
		event.ObjsNextMotion(5, "振り向くL", 4)
		event.ObjsSetMotion(4, "振り向く", 6)
		event.ObjsNextMotion(4, "振り向くL", 4)
		at = 4
		wait_frames(60)
		event.ObjsSetMotion(4, "立ち", 4)
		event.ObjsSetRot(4, 0.0, -1.12, 0.0)
		event.CmrsSetPos(-268.03, 16.49, 76.91)
		event.CmrsSetRef(-65.76, 22.54, 25.67)
		event.ObjsSetMotion(1, "歩き", 4, 0.75)
		event.ObjsMove(1, -263.33, 0.0, 81.55, 180, 1)
		event.SetPakuAnim(5, "通常口パク")
		at = 5
		helper_1584c528(3520190, -1)
		event.ResetPakuAnim()
		at = 6
		wait_frames(30)
		event.CmrsSetPos(-198.27, 24.06, -15.13)
		event.CmrsSetRef(-143.41, 22.54, 150.46)
		event.ObjsSetRot(5, 0.0, 0.24, 0.0)
		event.SetPakuAnim(1, "通常口パク")
		at = 7
		helper_1584c528(3520200, 60)
		event.ResetPakuAnim()
		at = 8
		wait_frames(60)
		event.ObjsSetRot(5, 0.0, -1.2, 0.0)
		event.ObjsSetMotion(5, "立ち2", 4)
		event.CmrsSetPos(-297.3, 23.01, 69.91)
		event.CmrsSetRef(-176.77, 22.54, 113.71)
		at = 9
		wait_objects(1)
		event.ObjsSetMotion(1, "にらむ", 4)
		at = 10
		wait_frames(60)
		event.CmrsSetPos(-149.75, 53.84, 30.37)
		event.CmrsSetRef(-284.64, 36.42, 86.71)
		event.SndSePlay(var4, 7)
		at = 11
		wait_frames(45)
		event.CmrsSetPos(-2289.28, -11.1, 1309.03)
		event.CmrsSetRef(-2581.77, 22.54, 1222.45)
		event.SndSePlay(var4, 7)
		at = 12
		wait_frames(45)
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "わらい顔")
		event.ObjsTexAnime(6, 1, "通常目パチ")
		event.CmrsSetPos(-2702.74, 44.98, 1141.15)
		event.CmrsSetRef(-2834.5, 81.31, 1195.57)
		event.CmrsSetPos(-2702.74, 48.17, 1141.15)
		event.CmrsSetRef(-2834.5, 105.2, 1195.57)
		event.ObjsSetPos(6, -2755.39, 38.24, 1165.67)
		event.ObjsSetRot(6, 0.0, 1.92, 0.0)
		event.ObjsResetDaPosition(6)
		event.SndSePlay(var4, 7)
		at = 13
		wait_frames(45)
		event.ObjsSetPos(6, -2755.39, 25.75, 1165.67)
		event.ObjsSetRot(6, 0.0, 1.92, 0.0)
		event.ObjsSetMotion(1, "上にらみ", 4)
		event.CmrsSetPos(-297.3, 23.01, 69.91)
		event.CmrsSetRef(-176.77, 22.54, 113.71)
		event.SetPakuAnim(1, "通常口パク")
		at = 14
		helper_4116e6bb(3520203)
		event.ResetPakuAnim()
		at = 15
		wait_frames(30)
		event.CmrsSetPos(-391.93, 13.26, 98.06)
		event.CmrsSetRef(-272.34, 20.12, 89.15)
		at = 16
		wait_frames(30)
		event.SndSePlay(var4, 8)
		event.SetCharaPos(15, -347.49, -8.42, 91.78)
		event.CharaActive(1, 15)
		event.SetMotion(15, "ｴﾌｪｸﾄ_モニカ火", 6, -1, 1)
		event.ObjsSetMotion(1, "あつい", 6)
		event.ObjsNextMotion(1, "あついL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 17
		helper_1584c528(3520205, -1)
		event.ResetPakuAnim()
		at = 18
		wait_frames(15)
		event.ObjsSetPos(5, -157.43, 0.0, 37.77)
		event.ObjsSetRot(5, 0.0, -1.2, 0.0)
		event.ObjsSetPos(4, -113.67, 0.0, 42.81)
		event.ObjsSetRot(4, 0.0, -1.12, 0.0)
		event.ObjsSetPos(0, -159.45, 0.0, 85.12)
		event.ObjsSetRot(0, 0.0, -1.56, 0.0)
		event.CharaActive(0, 15)
		event.CmrsSetPos(17.51, 106.77, -12.07)
		event.CmrsSetRef(-167.62, 22.54, 62.55)
		at = 19
		wait_frames(30)
		event.StopBgm(0)
		at = 20
		vm.wait(20)
		at = 21
		vm.wait(21)
		at = 22
		vm.wait(22)
		at = 23
		vm.wait(23)
		event.LoadBgm(33)
		event.PlayBgm(0)
		event.ObjsSetRot(5, 0.0, -2.64, 0.0)
		event.ObjsSetPos(4, -110.41, 0.0, 20.43)
		event.ObjsSetMotion(0, "キョロキョロ", 6)
		event.ObjsNextMotion(0, "立ち", 6)
		event.ObjsNextMotion(0, "キョロキョロ", 6)
		event.ObjsNextMotion(0, "立ち", 4)
		event.CmrsSetPos(-198.48, 18.18, 1.71)
		event.CmrsSetRef(-152.88, 22.54, 67.21)
		event.SetPakuAnim(0, "通常口パク")
		at = 24
		helper_4116e6bb(3520210)
		event.ResetPakuAnim()
		event.ObjsSetMotion(5, "しがみつく", 6)
		event.ObjsNextMotion(5, "しがみつくL", 4)
		event.ObjsSetMotion(4, "しがみつく", 6)
		event.ObjsNextMotion(4, "しがみつくL", 4)
		event.ObjsSetPos(4, -157.43, 0.0, 37.77)
		event.ObjsSetRot(4, 0.0, -2.62, 0.0)
		event.SndSePlay(var4, 9)
		event.CmrsSetPos(-195.7, 18.18, -27.74)
		event.CmrsSetRef(-152.88, 22.54, 67.21)
		event.ObjsSetMotion(0, "キョロキョロ", 6)
		event.ObjsNextMotion(0, "立ち", 6)
		event.SetPakuAnim(4, "通常口パク")
		at = 25
		helper_4116e6bb(3520220)
		event.ResetPakuAnim()
		at = 26
		wait_frames(30)
		event.ObjsSetPos(0, -220.59, 0.0, 24.32)
		event.ObjsSetMotion(5, "だいじょうぶ", 6)
		event.ObjsNextMotion(5, "だいじょうぶL", 4)
		event.ObjsSetMotion(4, "だいじょうぶ", 6)
		event.ObjsNextMotion(4, "だいじょうぶL", 4)
		event.CmrsSetPos(-172.22, 21.82, 12.89)
		event.CmrsSetRef(-146.82, 22.54, 46.98)
		event.SetPakuAnim(5, "通常口パク")
		at = 27
		helper_4116e6bb(3520230)
		event.ResetPakuAnim()
		event.ObjsSetMotion(5, "なでなで", 6)
		event.ObjsNextMotion(5, "だいじょうぶL", 4)
		event.ObjsSetMotion(4, "なでなで", 6)
		event.ObjsNextMotion(4, "だいじょうぶL", 4)
		at = 28
		wait_frames(90)
		event.SndSePlay(var4, 11)
		event.ObjsSetMotion(5, "方向転換", 6)
		event.ObjsNextMotion(5, "方向転換L", 4)
		event.ObjsSetMotion(4, "方向転換", 6)
		event.ObjsNextMotion(4, "方向転換L", 4)
		at = 29
		wait_frames(60)
		event.SetPakuAnim(4, "通常口パク")
		at = 30
		helper_4116e6bb(3520240)
		event.ResetPakuAnim()
		event.ObjsSetPos(5, -182.1, 0.0, 109.05)
		event.ObjsSetRot(5, 0.0, -0.56, 0.0)
		event.CmrsSetPos(-204.21, 71.27, 153.44)
		event.CmrsSetRef(-185.43, 22.54, 115.87)
		event.ObjsSetMotion(5, "立ち2", 4)
		event.CmrsSetPos(-235.14, 83.43, 215.35)
		event.CmrsSetRef(-216.37, 22.54, 177.78)
		event.CmrsMove2(-201.16, 83.43, 147.34, -182.39, 22.54, 109.77, 90, 2, 1.0)
		at = 31
		wait_frames(60)
		event.SndSePlay(var4, 12)
		event.ObjsSetMotion(5, "顔を上げる", 6)
		event.ObjsNextMotion(5, "顔を上げるL", 4)
		event.SetPakuAnim(5, "通常口パク")
		at = 32
		helper_4116e6bb(3520250)
		event.ResetPakuAnim()
		at = 33
		wait_camera()
		at = 34
		wait_frames(30)
		event.ObjsSetMotion(4, "立ち", 4)
		event.ObjsSetRot(4, 0.0, -0.7, 0.0)
		event.CmrsSetPos(-85.52, 20.68, 6.25)
		event.CmrsSetRef(-208.47, 22.54, 109.19)
		event.SetPakuAnim(4, "通常口パク")
		at = 35
		helper_4116e6bb(3520260)
		event.ResetPakuAnim()
		at = 36
		wait_frames(20)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(25)
		event.CmrsAddPas(-85.52, 20.68, 6.25, -208.47, 22.54, 109.19)
		event.CmrsAddPas(-85.52, 20.68, 6.25, -208.47, 79.99, 109.19)
		event.CmrsStartPas()
		event.SndSePlay(var4, 13)
		event.ObjsSetMotion(5, "ジャンプ", 6)
		at = 37
		wait_frames(15)
		event.ObjsMove(5, -182.1, 100.3, 109.05, 10)
		event.ObjsSetMotion(4, "見上げる", 6)
		event.ObjsNextMotion(4, "見上げるL", 4)
		at = 38
		wait_camera()
		event.SndSeStop(var4, 8)
		event.SndSePlay(var4, 14)
		event.ObjsSetMotion(5, "空中", 4)
		event.CmrsSetPos(-492.85, 213.33, 582.49)
		event.CmrsSetRef(22.56, 390.84, -208.1)
		event.CmrsMove2(-492.85, 409.38, 582.49, 22.56, 390.84, -208.1, 180, 0, 0.5)
		event.ObjsJump(5, -151.79, 185.12, 324.04, -0.6, 40)
		at = 39
		wait_frames(25)
		event.ObjsSetMotion(5, "着地", 6)
		at = 40
		wait_objects(5)
		event.SndSePlay(var4, 16)
		event.ObjsRotation(5, 0.0, -2.8, 0.0, 20)
		event.ObjsSetMotion(5, "歩き")
		at = 41
		wait_objects(5)
		event.ObjsSetMotion(5, "立ち")
		at = 42
		wait_frames(30)
		event.SndSePlay(var4, 15)
		event.ObjsSetMotion(5, "ジャンプ", 6)
		event.ObjsSetMotion(5, "空中", 5)
		at = 43
		wait_objects(5)
		event.ObjsJump(5, -171.87, 401.97, -73.85, -0.4, 60)
		event.ObjsSetMotion(5, "空中", 4)
		event.ObjsMotionDelay(5, 45)
		event.ObjsSetMotion(5, "着地", 6)
		at = 44
		wait_objects(5)
		event.SndSePlay(var4, 16)
		at = 45
		wait_frames(50)
		at = 46
		wait_camera()
		event.ObjsSetRot(5, 0.0, -0.37, 0.0)
		event.ObjsSetMotion(5, "立ち3", 4)
		event.CmrsSetPos(-269.68, 499.83, 184.82)
		event.CmrsSetRef(-101.0, 390.84, -261.7)
		at = 47
		wait_frames(60)
		event.DeleteChara(11)
		event.CharaActive(1, 20)
		event.CmrsSetPos(-1457.89, -261.89, 4173.26)
		event.CmrsSetRef(-421.4, -280.5, -595.03)
		event.ObjsSetRot(8, 0.0, -1.0, 0.0)
		event.ObjsSetPos(8, -544.76, -500.0, -1135.49)
		event.ObjsSetPos(6, -348.21, -500.0, -746.45)
		event.ObjsSetRot(6, 0.0, 0.72, 0.0)
		event.ObjsMove2(6, -348.21, -29.77, -746.45, 420, 2, 1.0)
		event.ObjsSetPos(7, -382.55, -500.0, -760.19)
		event.ObjsSetRot(7, 0.0, 0.72, 0.0)
		event.ObjsMove2(7, -382.55, -30.09, -760.19, 420, 2, 1.0)
		event.ObjsMove2(8, -544.76, -29.77, -1135.49, 420, 2, 1.0)
		at = 48
		wait_frames(150)
		event.SndSeStop(var4, 4)
		event.SndSePlay(var4, 17)
		event.SndSePlay(var4, 18)
		event.ObjsSetMotion(4, "立ち", 4)
		event.ObjsSetMotion(1, "にらむ", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetPos(1, -81.37, 0.0, -233.88)
		event.ObjsSetRot(1, 0.0, -2.74, 0.0)
		event.ObjsSetPos(4, -95.85, 0.0, -144.83)
		event.ObjsSetRot(4, 0.0, -2.74, 0.0)
		event.ObjsSetPos(0, -27.4, 0.0, -192.2)
		event.ObjsSetRot(0, 0.0, -2.74, 0.0)
		event.CmrsSetPos(72.53, 32.73, -113.44)
		event.CmrsSetRef(-214.71, 27.16, -908.69)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-121.55, 32.73, -43.34, -408.79, 27.16, -838.6)
		event.CmrsAddPas(72.53, 32.73, -113.44, -214.71, 27.16, -908.69)
		event.CmrsStartPas()
		at = 49
		wait_camera()
		event.CmrsSetPos(-104.37, 19.87, -248.05)
		event.CmrsSetRef(-79.52, 22.03, -232.43)
		at = 50
		wait_frames(90)
		event.CmrsSetPos(-34.84, 37.38, -59.03)
		event.CmrsSetRef(-95.77, 20.25, -225.62)
		at = 51
		wait_frames(90)
		event.CmrsSetPos(-348.67, -50.57, -550.42)
		event.CmrsSetRef(-351.04, 5.47, -770.66)
		at = 52
		wait_frames(90)
		event.CmrsSetPos(-318.01, 1.52, -739.61)
		event.CmrsSetRef(-349.36, 5.47, -775.54)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(150)
		event.CmrsAddPas(-339.91, 1.52, -720.51, -371.26, 5.47, -756.44)
		event.CmrsAddPas(-329.37, 1.52, -729.7, -360.72, 5.47, -765.63)
		event.CmrsStartPas()
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "デフォルト顔")
		event.ObjsTexAnime(6, 1, "通常目パチ")
		at = 53
		wait_frames(60)
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "わらい顔")
		event.ObjsTexAnime(6, 1, "通常目パチ")
		at = 54
		wait_camera()
		event.CmrsSetPos(-104.37, 19.87, -248.05)
		event.CmrsSetRef(-79.52, 22.03, -232.43)
		event.SetCrossfade(30)
		at = 55
		wait_frames(90)
		event.CmrsSetPos(-207.34, 54.9, -452.6)
		event.CmrsSetRef(-71.26, 17.87, -226.97)
		event.ObjsSetPos(1, -47.62, 0.0, -137.28)
		event.ObjsSetRot(1, 0.0, -2.74, 0.0)
		event.ObjsSetMotion(1, "歩き")
		event.ObjsMove(1, -70.49, 0.0, -204.72, 40)
		at = 56
		wait_objects(1)
		event.ObjsSetMotion(1, "立ち")
		at = 57
		wait_frames(30)
		event.ObjsSetMotion(1, "飛び", 2)
		event.ObjsMove(1, -87.32, 0.0, -244.51, 20)
		at = 58
		wait_frames(20)
		event.SndSePlay(var4, 19)
		at = 59
		wait_frames(10)
		event.CmrsSetPos(-295.37, -86.21, -553.05)
		event.CmrsSetRef(-123.25, 61.72, -340.9)
		at = 60
		wait_frames(50)
		event.CmrsSetPos(-62.09, 9.68, -219.85)
		event.CmrsSetRef(14.42, 33.43, -191.5)
		event.SndSePlay(var4, 20)
		event.ObjsSetMotion(0, "モニカぁあ～", 6)
		event.ObjsNextMotion(0, "モニカぁあ～L", 4)
		event.SetPakuAnim(0, "大口パク")
		at = 61
		helper_1584c528(3520280, -1)
		event.ResetPakuAnim()
		event.ObjsSetPos(1, -138.57, 9.72, -786.98)
		event.ObjsSetMotion(1, "飛び2秒", 4)
		event.CmrsSetPos(-389.59, 107.61, -250.29)
		event.CmrsSetRef(-69.28, 33.43, -379.52)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(60)
		event.CmrsAddPas(-142.97, 98.14, -135.2, -116.47, 68.27, -429.76)
		event.CmrsAddPas(-218.4, 98.14, -142.95, -218.24, 68.27, -438.91)
		event.CmrsStartPas()
		event.ObjsJump(1, -297.28, -20.16, -768.4, -0.15, 60)
		at = 62
		wait_camera()
		event.SndSeStop(var4, 18)
		event.EohSetFootSoundId(1, 0)
		event.CmrsSetPos(-153.85, 1.75, -965.32)
		event.CmrsSetRef(-213.98, -16.72, -854.17)
		event.FadeOutBgm(90)
		event.ObjsSetPos(1, -213.98, -29.77, -854.17)
		event.SndSePlay(var4, 21)
		event.ObjsSetMotion(1, "着地2", 6)
		event.ObjsNextMotion(1, "着地2Ｌ", 4)
		at = 63
		wait_frames(90)
		event.StopBgm(0)
		event.ObjsSetMotion(1, "にらみ～ギルトーニＬ", 4)
		event.ObjsSetRot(1, 0.0, -0.89, 0.0)
		event.ObjsSetRot(7, 0.0, 2.16, 0.0)
		event.ObjsSetRot(6, 0.0, 2.16, 0.0)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-382.3, 9.54, -680.59, -184.92, -16.72, -809.77)
		event.CmrsAddPas(-413.29, 9.54, -727.92, -215.9, -16.72, -857.11)
		event.CmrsStartPas()
		at = 64
		wait_camera()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(360)
		event.CmrsAddPas(-296.02, -4.19, -748.32, -394.55, 1.71, -679.52)
		event.CmrsAddPas(-318.45, -4.19, -780.45, -416.98, 1.71, -711.64)
		event.CmrsStartPas()
		at = 65
		wait_frames(120)
		event.SetPakuAnim(6, "通常口パク")
		at = 66
		helper_1584c528(3520290, -1)
		event.ResetPakuAnim()
		event.SetPakuAnim(6, "通常口パク")
		at = 67
		helper_1584c528(3520295, -1)
		event.ResetPakuAnim()
		event.SndSePlay(var4, 22)
		event.ObjsSetMotion(7, "立ちからはっ", 6)
		event.ObjsNextMotion(7, "立ち", 4)
		event.SetPakuAnim(7, "通常口パク")
		at = 68
		helper_1584c528(3520300, -1)
		event.ResetPakuAnim()
		event.CharaActive(1, 16)
		event.SetCharaPos(16, -382.55, -29.77, -760.19)
		event.SetMotion(16, "ワープ", 2, -1, 1)
		event.SndSePlay(var4, 23)
		event.SetCharaShow(20, 0, 1, 0.025)
		at = 69
		wait_frames(30)
		event.CharaActive(0, 20)
		at = 70
		wait_camera()
		at = 71
		wait_frames(30)
		event.DeleteChara(20)
		event.CmrsSetPos(-236.39, -1.57, -810.07)
		event.CmrsSetRef(-210.96, -15.51, -863.92)
		event.SetPakuAnim(1, "通常口パク")
		at = 72
		helper_1584c528(3520310, -1)
		event.ResetPakuAnim()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(150)
		event.CmrsAddPas(-193.72, -11.82, -832.4, -220.35, -5.56, -862.48)
		event.CmrsAddPas(-209.1, -11.82, -818.79, -235.72, -5.56, -848.88)
		event.CmrsStartPas()
		event.SetPakuAnim(1, "通常口パク")
		at = 73
		helper_1584c528(3520320, -1)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 74
		helper_1584c528(3520325, -1)
		event.ResetPakuAnim()
		at = 75
		wait_camera()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(150)
		event.CmrsAddPas(-298.65, -11.82, -739.54, -325.27, -5.56, -769.63)
		event.CmrsAddPas(-321.64, -11.82, -719.2, -348.27, -5.56, -749.28)
		event.CmrsStartPas()
		event.SetCrossfade(30)
		event.SetPakuAnim(6, "通常口パク")
		at = 76
		helper_1584c528(3520330, -1)
		event.ResetPakuAnim()
		at = 77
		wait_camera()
		at = 78
		wait_frames(30)
		event.CmrsSetPos(-311.57, -2.68, -773.5)
		event.CmrsSetRef(-346.28, 0.67, -749.62)
		event.SndSePlay(var4, 24)
		event.ObjsSetMotion(6, "これはこれは", 6)
		event.ObjsNextMotion(6, "立ち", 4)
		event.SetPakuAnim(6, "通常口パク")
		at = 79
		helper_4116e6bb(3520340)
		event.ResetPakuAnim()
		at = 80
		wait_objects(6)
		event.SetProjection(2000.0)
		event.CmrsSetPasFrm(200)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-389.89, 2.83, -660.42, -273.14, -7.07, -813.46)
		event.CmrsAddPas(-436.6, 2.83, -711.42, -273.14, -7.07, -813.46)
		event.CmrsStartPas()
		event.SetPakuAnim(1, "通常口パク")
		at = 81
		helper_1584c528(3520350, -1)
		event.ResetPakuAnim()
		at = 82
		wait_frames(30)
		event.SndSePlay(var4, 25)
		event.ObjsSetMotion(1, "許さない！", 6)
		event.ObjsNextMotion(1, "にらみ～ギルトーニＬ", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 83
		helper_1584c528(3520355, -1)
		event.ResetPakuAnim()
		at = 84
		wait_camera()
		event.CmrsSetPos(-316.92, -38.16, -871.1)
		event.CmrsSetRef(-346.81, 0.41, -749.55)
		event.SetPakuAnim(6, "通常口パク")
		at = 85
		helper_4116e6bb(3520360)
		event.ResetPakuAnim()
		event.SetPakuAnim(6, "通常口パク")
		at = 86
		helper_4116e6bb(3520365)
		event.ResetPakuAnim()
		event.CmrsSetPos(-52.38, 14.17, -934.99)
		event.CmrsSetRef(-338.56, -9.4, -775.64)
		event.SetPakuAnim(1, "通常口パク")
		at = 87
		helper_4116e6bb(3520370)
		event.ResetPakuAnim()
		event.SetPakuAnim(6, "通常口パク")
		at = 88
		helper_4116e6bb(3520380)
		event.ResetPakuAnim()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 0 then
			event.CharaActive(1, 17)
			event.CharaActive(1, 18)
		else
			event.EohSyncChara(2, 1)
			event.EohSetShow(2, 1)
			event.EohSyncChara(3, 2)
			event.EohSetShow(3, 1)
		end
		event.PlayBgm(0)
		event.CmrsSetPos(-315.54, 2.28, -794.45)
		event.CmrsSetRef(-206.14, -9.4, -856.87)
		event.SndSePlay(var4, 26)
		event.ObjsSetMotion(1, "構え", 6)
		event.ObjsNextMotion(1, "構えＬ", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 89
		helper_4116e6bb(3520390)
		event.ResetPakuAnim()
		at = 90
		wait_frames(30)
		event.SetFadeOut(30)
		at = 91
		wait_frames(30)
		event.DeleteChara(11)
		event.DeleteChara(19)
		event.DeleteChara(20)
		event.DeleteChara(15)
		event.DeleteChara(16)
		event.ClearStack(6)
		event.SetProjection(projection)
		event.LoadChara(6, "event/e300/e352/e352_fireball.gltf", "info", 21)
		event.EohSyncChara(12, 21)
		event.ObjsInit(12, 21)
		event.ObjsSyncObj(12, 12)
		event.CharaActive(0, 21)
		event.CopyChara(6, 21, 22)
		event.EohSyncChara(13, 22)
		event.ObjsInit(13, 22)
		event.ObjsSyncObj(13, 13)
		event.CharaActive(0, 22)
		event.CopyChara(6, 21, 23)
		event.EohSyncChara(14, 23)
		event.ObjsInit(14, 23)
		event.ObjsSyncObj(14, 14)
		event.CharaActive(0, 23)
		event.CopyChara(6, 21, 13)
		event.EohSyncChara(15, 13)
		event.ObjsInit(15, 13)
		event.ObjsSyncObj(15, 15)
		event.CharaActive(0, 13)
		event.CopyChara(6, 21, 14)
		event.EohSyncChara(16, 14)
		event.ObjsInit(16, 14)
		event.ObjsSyncObj(16, 16)
		event.CharaActive(0, 14)
		event.ObjsSetPos(12, 179.32, 0.0, 162.8)
		event.ObjsSetRot(12, 0.0, -2.4, 0.0)
		event.ObjsSetPos(13, 82.96, 0.0, 206.67)
		event.ObjsSetRot(13, 0.0, -2.88, 0.0)
		event.ObjsSetPos(14, -190.58, 0.0, -150.66)
		event.ObjsSetRot(14, 0.0, 1.32, 0.0)
		event.ObjsSetPos(15, -120.47, 0.0, -224.18)
		event.ObjsSetRot(15, 0.0, 0.24, 0.0)
		event.ObjsSetPos(16, -87.9, 0.0, -228.03)
		event.ObjsSetRot(16, 0.0, 0.6, 0.0)
		event.ObjsSetPos(4, -73.68, 0.0, -125.3)
		event.ObjsSetRot(4, 0.0, -2.74, 0.0)
		event.ObjsSetPos(0, -56.83, 0.0, -155.67)
		event.ObjsSetRot(0, 0.0, -2.74, 0.0)
		event.ObjsSetMotion(0, "キョロキョロ", 6)
		event.ObjsNextMotion(0, "立ち", 6)
		event.ObjsSetMotion(0, "キョロキョロ", 6)
		event.ObjsNextMotion(0, "立ち", 6)
		event.ObjsSetMotion(4, "おびえ立ち", 4)
		event.EohSetFrameShow(4, "houki", 1)
		event.SndSePlay(var4, 27)
		event.CmrsSetPos(-238.5, 71.05, -462.7)
		event.CmrsSetRef(-30.96, 27.68, -54.57)
		event.SetFadeIn(30)
		at = 92
		wait_frames(90)
		event.CmrsSetPos(-90.18, 13.15, -222.54)
		event.CmrsSetRef(-38.29, 20.0, -70.1)
		event.SetPakuAnim(4, "通常口パク")
		at = 93
		helper_4116e6bb(3520400)
		event.ResetPakuAnim()
		event.SetPakuAnim(0, "通常口パク")
		at = 94
		helper_4116e6bb(3520410)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "通常口パク")
		at = 95
		helper_4116e6bb(3520420)
		event.ResetPakuAnim()
		event.CharaActive(1, 21)
		event.CmrsSetPos(289.65, 77.87, 17.75)
		event.CmrsSetRef(137.1, 27.68, 277.81)
		event.SndSePlay(var4, 28)
		event.ObjsSetMotion(12, "飛び込み登場", 6)
		event.ObjsNextMotion(12, "立ち", 4)
		at = 96
		wait_frames(20)
		event.SndSePlay(var4, 32)
		at = 97
		wait_objects(12)
		event.CharaActive(1, 22)
		event.SndSePlay(var4, 28)
		event.ObjsSetMotion(13, "飛び込み登場", 6)
		event.ObjsNextMotion(13, "立ち", 4)
		at = 98
		wait_frames(20)
		event.SndSePlay(var4, 32)
		at = 99
		wait_objects(13)
		at = 100
		wait_frames(30)
		event.CharaActive(1, 23)
		event.CharaActive(1, 13)
		event.CmrsSetPos(38.51, 77.87, -229.29)
		event.CmrsSetRef(-255.97, 27.68, -248.1)
		event.ObjsSetMotion(14, "立ち", 4)
		event.SndSePlay(var4, 28)
		event.ObjsSetMotion(15, "飛び込み登場", 6)
		event.ObjsNextMotion(15, "立ち", 4)
		at = 101
		wait_frames(20)
		event.SndSePlay(var4, 32)
		at = 102
		wait_objects(15)
		event.CharaActive(1, 14)
		event.SndSePlay(var4, 28)
		event.ObjsSetMotion(16, "飛び込み登場", 6)
		event.ObjsNextMotion(16, "立ち", 4)
		at = 103
		wait_frames(20)
		event.SndSePlay(var4, 32)
		at = 104
		wait_objects(16)
		at = 105
		wait_frames(30)
		if active_chr_no == 1 then
			event.CharaActive(1, 17)
			event.CharaActive(1, 18)
		else
			event.EohSyncChara(2, 1)
			event.EohSetShow(2, 1)
			event.EohSyncChara(3, 2)
			event.EohSetShow(3, 1)
		end
		event.CmrsSetPos(-59.58, 20.53, -228.9)
		event.CmrsSetRef(-62.47, 27.68, -105.07)
		event.SndSePlay(var4, 29)
		event.ObjsSetMotion(0, "かまえる", 6)
		event.ObjsNextMotion(0, "かまえるL", 4)
		at = 106
		wait_frames(30)
		event.SetFadeOut(30)
		at = 107
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_22b00000()
			helper_344d6cd8()
		end
		if at <= 2 then
			wait_frames_skipping(30)
		end
		if at <= 3 then
			wait_frames_skipping(60)
		end
		if at <= 4 then
			helper_52aadc70(3520190, -1)
		end
		if at <= 5 then
			wait_frames_skipping(30)
		end
		if at <= 6 then
			helper_52aadc70(3520200, 60)
		end
		if at <= 7 then
			wait_frames_skipping(60)
		end
		if at <= 8 then
			helper_238b5abc(1)
		end
		if at <= 9 then
			wait_frames_skipping(60)
		end
		if at <= 10 then
			wait_frames_skipping(45)
		end
		if at <= 11 then
			wait_frames_skipping(45)
		end
		if at <= 12 then
			wait_frames_skipping(45)
		end
		if at <= 13 then
			helper_8cd371d7(3520203)
		end
		if at <= 14 then
			wait_frames_skipping(30)
		end
		if at <= 15 then
			wait_frames_skipping(30)
		end
		if at <= 16 then
			helper_52aadc70(3520205, -1)
		end
		if at <= 17 then
			wait_frames_skipping(15)
		end
		if at <= 18 then
			wait_frames_skipping(30)
		end
		if at <= 23 then
			helper_8cd371d7(3520210)
		end
		if at <= 24 then
			helper_8cd371d7(3520220)
		end
		if at <= 25 then
			wait_frames_skipping(30)
		end
		if at <= 26 then
			helper_8cd371d7(3520230)
		end
		if at <= 27 then
			wait_frames_skipping(90)
		end
		if at <= 28 then
			wait_frames_skipping(60)
		end
		if at <= 29 then
			helper_8cd371d7(3520240)
		end
		if at <= 30 then
			wait_frames_skipping(60)
		end
		if at <= 31 then
			helper_8cd371d7(3520250)
		end
		if at <= 32 then
			helper_344d6cd8()
		end
		if at <= 33 then
			wait_frames_skipping(30)
		end
		if at <= 34 then
			helper_8cd371d7(3520260)
		end
		if at <= 35 then
			wait_frames_skipping(20)
		end
		if at <= 36 then
			wait_frames_skipping(15)
		end
		if at <= 37 then
			helper_344d6cd8()
		end
		if at <= 38 then
			wait_frames_skipping(25)
		end
		if at <= 39 then
			helper_238b5abc(5)
		end
		if at <= 40 then
			helper_238b5abc(5)
		end
		if at <= 41 then
			wait_frames_skipping(30)
		end
		if at <= 42 then
			helper_238b5abc(5)
		end
		if at <= 43 then
			helper_238b5abc(5)
		end
		if at <= 44 then
			wait_frames_skipping(50)
		end
		if at <= 45 then
			helper_344d6cd8()
		end
		if at <= 46 then
			wait_frames_skipping(60)
		end
		if at <= 47 then
			wait_frames_skipping(150)
		end
		if at <= 48 then
			helper_344d6cd8()
		end
		if at <= 49 then
			wait_frames_skipping(90)
		end
		if at <= 50 then
			wait_frames_skipping(90)
		end
		if at <= 51 then
			wait_frames_skipping(90)
		end
		if at <= 52 then
			wait_frames_skipping(60)
		end
		if at <= 53 then
			helper_344d6cd8()
		end
		if at <= 54 then
			wait_frames_skipping(90)
		end
		if at <= 55 then
			helper_238b5abc(1)
		end
		if at <= 56 then
			wait_frames_skipping(30)
		end
		if at <= 57 then
			wait_frames_skipping(20)
		end
		if at <= 58 then
			wait_frames_skipping(10)
		end
		if at <= 59 then
			wait_frames_skipping(50)
		end
		if at <= 60 then
			helper_52aadc70(3520280, -1)
		end
		if at <= 61 then
			helper_344d6cd8()
		end
		if at <= 62 then
			wait_frames_skipping(90)
		end
		if at <= 63 then
			helper_344d6cd8()
		end
		if at <= 64 then
			wait_frames_skipping(120)
		end
		if at <= 65 then
			helper_52aadc70(3520290, -1)
		end
		if at <= 66 then
			helper_52aadc70(3520295, -1)
		end
		if at <= 67 then
			helper_52aadc70(3520300, -1)
		end
		if at <= 68 then
			wait_frames_skipping(30)
		end
		if at <= 69 then
			helper_344d6cd8()
		end
		if at <= 70 then
			wait_frames_skipping(30)
		end
		if at <= 71 then
			helper_52aadc70(3520310, -1)
		end
		if at <= 72 then
			helper_52aadc70(3520320, -1)
		end
		if at <= 73 then
			helper_52aadc70(3520325, -1)
		end
		if at <= 74 then
			helper_344d6cd8()
		end
		if at <= 75 then
			helper_52aadc70(3520330, -1)
		end
		if at <= 76 then
			helper_344d6cd8()
		end
		if at <= 77 then
			wait_frames_skipping(30)
		end
		if at <= 78 then
			helper_8cd371d7(3520340)
		end
		if at <= 79 then
			helper_238b5abc(6)
		end
		if at <= 80 then
			helper_52aadc70(3520350, -1)
		end
		if at <= 81 then
			wait_frames_skipping(30)
		end
		if at <= 82 then
			helper_52aadc70(3520355, -1)
		end
		if at <= 83 then
			helper_344d6cd8()
		end
		if at <= 84 then
			helper_8cd371d7(3520360)
		end
		if at <= 85 then
			helper_8cd371d7(3520365)
		end
		if at <= 86 then
			helper_8cd371d7(3520370)
		end
		if at <= 87 then
			helper_8cd371d7(3520380)
		end
		if at <= 88 then
			helper_8cd371d7(3520390)
		end
		if at <= 89 then
			wait_frames_skipping(30)
		end
		if at <= 90 then
			wait_frames_skipping(30)
		end
		if at <= 91 then
			wait_frames_skipping(90)
		end
		if at <= 92 then
			helper_8cd371d7(3520400)
		end
		if at <= 93 then
			helper_8cd371d7(3520410)
		end
		if at <= 94 then
			helper_8cd371d7(3520420)
		end
		if at <= 95 then
			wait_frames_skipping(20)
		end
		if at <= 96 then
			helper_238b5abc(12)
		end
		if at <= 97 then
			wait_frames_skipping(20)
		end
		if at <= 98 then
			helper_238b5abc(13)
		end
		if at <= 99 then
			wait_frames_skipping(30)
		end
		if at <= 100 then
			wait_frames_skipping(20)
		end
		if at <= 101 then
			helper_238b5abc(15)
		end
		if at <= 102 then
			wait_frames_skipping(20)
		end
		if at <= 103 then
			helper_238b5abc(16)
		end
		if at <= 104 then
			wait_frames_skipping(30)
		end
		if at <= 105 then
			wait_frames_skipping(30)
		end
		if at <= 106 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 108
	vm.entry(108)
	event.CancelDramaScene()
	event.ObjsSetPos(10, 0.0, 0.0, 0.0)
	event.SetProjection(projection)
	event.SetTime(time)
	event.SetTimeStepEnable(1)
	event.SndSeAllStop(4)
	event.EohSetFootSoundId(0, 0)
	event.EohSetFootSoundId(1, 0)
	at = 109
	vm.wait(109)
	at = 110
	helper_190b8()
end

--- Helper function.
local function helper_25978()
	local active_chr_no: s32 = 0
	local block: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global12 = 0
		global13 = 8
		event.LoadChara(5, "chara/c02_base.gltf", "info", global13)
		event.LoadEquip(5, 1, 1, "info", global13, 17)
		event.LoadEquip(5, 1, 0, "info", global13, 18)
		event.LoadEquip(5, 1, 4, "info", global13)
		event.LoadEquip(5, 1, 3, "info", global13)
		event.LoadEquip(5, 1, 2, "info", global13, 12)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global13)
		event.LoadMotion(5, "event/e300/e352/vs_e352_monica.gltf", "info", global13)
		event.EohSyncChara(1, global13)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(1, global13)
		event.CharaActive(1, 12)
		event.CharaActive(1, 17)
		event.CharaActive(1, 18)
	end
	if active_chr_no == 1 then
		global12 = 8
		global13 = 0
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global13)
		event.LoadMotion(5, "event/e300/e352/vs_e352_monica.gltf", "info", global13)
		event.EohSyncChara(1, global13)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global13)
		event.EohSyncChara(2, 1)
		event.EohSetShow(2, 1)
		event.EohSyncChara(3, 2)
		event.EohSetShow(3, 1)
	end
	event.LoadChara(5, "event/e300/e352/e352_guiltoni.gltf", "info", 19)
	event.LoadMotion(5, "event/e300/e352/vs_e352_guiltoni.gltf", "info", 19)
	event.CharaActive(0, 19)
	event.EohSyncChara(6, 19)
	event.ObjsInit(6, 19)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(5, "event/lm/mo_vs_gil2/vs2_cam.gltf", "info", 15)
	event.EohSyncObj_2(8, "p01_battleship")
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.EohSyncObj_2(9, "p06_d03b01")
	event.ObjsInit(9)
	event.ObjsSyncObj(9, 9)
	event.EohSyncObj_3(10, "p01_d03b01", "d03b01_12-m0")
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.EohSyncObj_3(11, "p02_d03b01", "d03b01_3-m0")
	event.ObjsInit(11)
	event.ObjsSyncObj(11, 11)
	event.EohSyncObj_3(18, "p02_d03b01", "d03b01_15-m0")
	event.ObjsInit(17)
	event.ObjsSyncObj(17, 18)
	block = event.LoadImg_4(5, "textures/dungeon/image/beffect_00.json", 0) or block
	event.SweInit(18, 0, 5, 16, 8)
	event.SweSetTexture(18, 0, block, "sweff", 0, 0, 64, 32)
	event.SweInit(18, 1, 5, 16, 8)
	event.SweSetTexture(18, 1, block, "sweff", 0, 0, 64, 32)
	event.SweInit(19, 0, 5, 16, 8)
	event.SweSetTexture(19, 0, block, "sweff", 64, 0, 64, 32)
	event.SweInit(19, 1, 5, 16, 8)
	event.SweSetTexture(19, 1, block, "sweff", 64, 0, 64, 32)
	block = event.LoadImg_4(5, "textures/event/e300/e352/e352telop01_1.json", 1) or block
	event.SpriteInit(4)
	event.SpriteSetType(4, 0)
	event.SpriteSetTexture(4, "e352telop01", block)
	event.SpriteSetUvsize(4, 0, 0, 512, 128)
	event.SpriteSetPutsize(4, 512, 128)
	event.SpriteSetPos(4, 320, 334)
	event.SpriteSetColor(4, 128, 128, 128, 0)
	event.SpriteSetScale(4, 1.0, 1.0)
	event.SpriteSetDraw(4, 0)
	event.EohSyncSprite(14, 4)
	event.ObjsInit(14)
	event.ObjsSyncObj(14, 14)
end

--- Helper function.
local function helper_22e00000()
	global12 = 0
	global13 = 8
	global12 = 8
	global13 = 0
end

--- Helper function.
local function helper_253f0()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(0, global13)
		event.DelExtMotion(global13)
		event.DeleteChara(global13)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global13)
		event.CharaActive(0, global12)
		event.DelExtMotion(global13)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(19)
	event.DelImg(0)
	event.DelImg(1)
	event.DeleteChara(15)
	event.FuncPointShow("", "func", 1)
	event.FuncPointShow("", "func4", 1)
	event.EohSetShow(18, 1)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.EohSetShow(8, 1)
	event.EohSetShow(9, 1)
	event.SetStatusbarShow(1, 1.0)
	vm.wait(1)
	event.Finish()
end

--- Helper function.
local function helper_26f10()
	local var4: s32 = 0
	local time: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var12: s32 = 0
	local var13: f32 = 0
	local var14: f32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		var4 = event.SndLoadSound_2(3839) or var4
		helper_25978()
		time = event.GetTime() or time
		event.SetTime(18.0)
		event.SetTimeStepEnable(0)
		event.InitDramaScene()
		event.ObjsSetPos(8, -2195.0, 488.0, -475.0)
		event.CharaActive(0, 19)
		event.FuncPointShow("", "func", 0)
		event.FuncPointShow("", "func4", 0)
		event.ObjsSetRot(11, 0.0, 1.57, 0.0)
		event.ObjsSetRot(17, 0.0, 1.57, 0.0)
		event.EohSetShow(8, 1)
		event.EohSetShow(9, 0)
		event.EohSetShow(18, 0)
		event.SetCharaPos(global13, -2195.0, 488.0, -475.0)
		event.SetCharaRot(global13, 0.0, 1.94, 0.0)
		event.SetCharaPos(19, -2195.0, 488.0, -475.0)
		event.SetCharaRot(19, 0.0, 2.9, 0.0)
		event.SetMotion(global13, "ふりむき", 2, -1, 1)
		event.SetMotion(19, "戦い", 1, -1, 1)
		event.CharaActive(1, 15)
		event.SetCharaPos(15, -2195.0, 488.0, -475.0)
		event.SetCharaRot(15, 0.0, 2.9, 0.0)
		event.SetMotion(15, "1カメ", 5)
		event.CharaActive(1, global13)
		event.SetFadeIn(30)
		event.SndSePlay(var4, 30)
		event.SetCameraPos(-2170.97, 511.0, -483.67)
		event.SetCameraRef(-2195.0, 511.0, -475.0)
		at = 2
		wait_frames(50)
		event.SweStartEffect(18, 0, "dcol00", "dcol01", 94, 10, 16)
		at = 3
		wait_frames(12)
		event.CmrsMove2(-2142.85, 509.61, -493.81, -2195.0, 503.11, -475.0, 10, 1, 0.6)
		at = 4
		wait_camera()
		event.EohSetTexAnim(1, 0)
		event.EohSetTexAnim(1, 1, "怒り目")
		event.EohSetTexAnim(1, 1, "怒り口")
		event.SetCharaRot(global13, 0.0, 2.9, 0.0)
		event.CharaActive(1, 19)
		event.EohSetFrameStatus(6, "sword", 1)
		event.SetMotion(global13, "戦い", 6)
		event.SetMotion(19, "戦い", 6)
		event.SetMotion(15, "1カメ", 6)
		event.EohSyncChara(17, 15)
		var12 = 0
		do
			local out1, out2, out3 = event.CopyVector(-2172.93, 510.33, -526.41)
			var13 = out1 or var13
			var14 = out2 or var14
			var15 = out3 or var15
		end
		do
			local out1, out2, out3 = event.CopyVector(-2168.55, 512.98, -523.85)
			var16 = out1 or var16
			var17 = out2 or var17
			var18 = out3 or var18
		end
		do
			local out1, out2, out3 = event.SubVector(var16, var17, var18, -2172.93, 510.33, -526.41)
			var16 = out1 or var16
			var17 = out2 or var17
			var18 = out3 or var18
		end
		do
			local out1, out2, out3 = event.ScaleVector(var16, var17, var18, 0.03)
			var16 = out1 or var16
			var17 = out2 or var17
			var18 = out3 or var18
		end
		while var12 < 123 do
			if var12 == 10 then
				event.SweStartEffect(18, 0, "dcol00", "dcol01", 94, 6, 6)
			end
			if var12 == 26 then
				event.SweStartEffect(18, 1, "dcol00", "dcol01", 94, 10, 10)
			end
			if var12 == 46 then
				event.SweStartEffect(18, 0, "dcol00", "dcol01", 94, 10, 10)
			end
			if var12 == 46 then
				event.SweStartEffect(19, 0, "ken00", "ken01", 94, 4, 8)
			end
			if var12 == 49 then
				event.HitEffect(0, var13, var14, var15)
			end
			if var12 > 50 and var12 <= 90 then
				do
					local out1, out2, out3 = event.AddVector(var13, var14, var15, var16, var17, var18)
					var13 = out1 or var13
					var14 = out2 or var14
					var15 = out3 or var15
				end
				if var12 >= 68 and var12 <= 90 and vm.imod(var12, 3) == 0 then
					event.HitEffect(1, var13, var14, var15)
				end
			end
			do
				local out1, out2, out3 = event.EohGetFramePos(17, "int1")
				pos_x_2 = out1 or pos_x_2
				pos_y_2 = out2 or pos_y_2
				pos_z_2 = out3 or pos_z_2
			end
			do
				local out1, out2, out3 = event.EohGetFramePos(17, "cam1")
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			event.SetCameraPos(pos_x, pos_y, pos_z)
			event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
			var12 = var12 + 1
			at = 5
			vm.wait(5)
		end
		event.ObjsSetMotionNowTime(1, 53.1)
		event.ObjsSetMotionNowTime(6, 53.1)
		event.SetMotion(15, "2カメ", 6)
		var12 = 0
		while var12 < 85 do
			if var12 == 26 then
				event.SweStartEffect(19, 0, "ken00", "ken01", 94, 4, 8)
			end
			if var12 == 38 then
				event.SweStartEffect(19, 1, "ken00", "ken01", 94, 10, 10)
			end
			do
				local out1, out2, out3 = event.EohGetFramePos(17, "int2")
				pos_x_2 = out1 or pos_x_2
				pos_y_2 = out2 or pos_y_2
				pos_z_2 = out3 or pos_z_2
			end
			do
				local out1, out2, out3 = event.EohGetFramePos(17, "cam2")
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			event.SetCameraPos(pos_x, pos_y, pos_z)
			event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
			var12 = var12 + 1
			at = 6
			vm.wait(6)
		end
		event.SndSePlay(var4, 31)
		event.SetMotion(19, "着地", 6)
		event.SetCameraPos(-2216.51, 515.07, -318.73)
		event.SetCameraRef(-2223.46, 515.07, -269.18)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(45)
		event.CmrsAddPas(-2216.51, 497.31, -318.73, -2223.46, 497.3, -269.18)
		event.CmrsAddPas(-2216.51, 515.07, -318.73, -2223.46, 515.07, -269.18)
		event.CmrsStartPas()
		event.SpriteSetDraw(4, 1)
		event.ObjsSetColor(14, 128, 128, 128, 128, 30)
		at = 7
		wait_frames(90)
		event.ObjsSetColor(14, 128, 128, 128, 0, 30)
		event.SetFadeOut(30)
		at = 8
		wait_frames(30)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_22e00000()
			wait_frames_skipping(50)
		end
		if at <= 2 then
			wait_frames_skipping(12)
		end
		if at <= 3 then
			helper_344d6cd8()
		end
		if at <= 4 then
			var12 = 0
			local _ = var12 < 123
			local _ = var12 == 10
			local _ = var12 == 26
			local _ = var12 == 46
			local _ = var12 == 46
			local _ = var12 == 49
			local _ = var12 > 50
			local _ = var12 <= 90
			local _ = var12 >= 68
			local _ = var12 <= 90
			local _ = vm.imod(var12, 3) == 0
			var12 = var12 + 1
		end
		if at <= 5 then
			var12 = 0
			local _ = var12 < 85
			local _ = var12 == 26
			local _ = var12 == 38
			var12 = var12 + 1
		end
		if at <= 6 then
			wait_frames_skipping(90)
		end
		if at <= 7 then
			wait_frames_skipping(30)
		end
		return true
	end)
	at = 9
	vm.entry(9)
	event.CancelDramaScene()
	event.ObjsSetPos(10, 0.0, 0.0, 0.0)
	event.SetTime(time)
	event.SetTimeStepEnable(1)
	event.SndSeAllStop(4)
	at = 10
	vm.wait(10)
	at = 11
	helper_253f0()
end

--- Helper function.
local function helper_29bb4()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global14 = 0
		global15 = 32
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global14)
		event.LoadMotion(5, "event/e300/e356/e356_mints.gltf", "info", global14)
		event.EohSyncChara(0, global14)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global14)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global15)
		event.LoadEquip(5, 1, 1, "info", global15, 41)
		event.LoadEquip(5, 1, 0, "info", global15, 42)
		event.LoadEquip(5, 1, 4, "info", global15)
		event.LoadEquip(5, 1, 3, "info", global15)
		event.LoadEquip(5, 1, 2, "info", global15, 36)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global15)
		event.LoadMotion(5, "event/e300/e356/e356_monica.gltf", "info", global15)
		event.EohSyncChara(1, global15)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global15)
		event.CharaActive(1, 36)
		event.CharaActive(0, 41)
		event.CharaActive(0, 42)
	end
	if active_chr_no == 1 then
		global14 = 32
		global15 = 0
		event.LoadEquip(5, 1, 1, "info", global15, 41)
		event.LoadEquip(5, 1, 0, "info", global15, 42)
		event.LoadChara(5, "chara/c01_base.gltf", "info", global14)
		event.LoadEquip(5, 0, 4, "info", global14)
		event.LoadEquip(5, 0, 3, "info", global14)
		event.LoadEquip(5, 0, 2, "info", global14, 36)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global14)
		event.LoadMotion(5, "event/e300/e356/e356_mints.gltf", "info", global14)
		event.EohSyncChara(0, global14)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global14)
		event.CharaActive(1, 36)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global15)
		event.LoadMotion(5, "event/e300/e356/e356_monica.gltf", "info", global15)
		event.EohSyncChara(1, global15)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global15)
	end
	event.LoadChara(5, "event/e300/e356/e356_crest.gltf", "info", 34)
	event.CharaActive(0, 34)
	event.EohSyncChara(5, 34)
	event.ObjsInit(5, 34)
	event.ObjsSyncObj(5, 5)
	event.LoadChara(5, "event/e300/e356/e356_guiltoni.gltf", "info", 37)
	event.CharaActive(0, 37)
	event.EohSyncChara(6, 37)
	event.ObjsInit(6, 37)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(5, "event/e300/e356/e356_jamming.gltf", "info", 38)
	event.CharaActive(0, 38)
	event.EohSyncChara(7, 38)
	event.ObjsInit(7, 38)
	event.ObjsSyncObj(7, 7)
	event.EohSyncObj_2(8, "p01_battleship")
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.EohSyncObj_2(9, "p06_d03b01")
	event.ObjsInit(9)
	event.ObjsSyncObj(9, 9)
	event.EohSyncObj_3(10, "p01_d03b01", "d03b01_12-m0")
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.EohSyncObj_3(11, "p02_d03b01", "d03b01_3-m0")
	event.ObjsInit(11)
	event.ObjsSyncObj(11, 11)
	event.EohSyncObj_3(12, "p02_d03b01", "d03b01_15-m0")
	event.ObjsInit(12)
	event.ObjsSyncObj(12, 12)
	event.EohSyncObj_3(14, "p01_battleship", "t01-m0")
	event.LoadChara(5, "event/e300/e352/e352_houdai.gltf", "info", 33)
	event.CharaActive(0, 33)
	event.EohSyncChara(13, 33)
	event.ObjsInit(17, 33)
	event.ObjsSyncObj(17, 13)
	event.LoadChara(5, "event/e300/e352/e352_gun_f.gltf", "info", 40)
	event.CharaActive(0, 40)
	event.LoadChara(5, "event/e300/e352/e352_gun_l.gltf", "info", 43)
	event.CharaActive(0, 43)
	event.EohSyncChara(16, 43)
	event.ObjsInit(19, 43)
	event.ObjsSyncObj(19, 16)
	event.LoadChara(5, "event/e300/e352/e352_gun_h.gltf", "info", 44)
	event.CharaActive(0, 44)
	event.LoadChara(5, "event/e300/e356/e356_crystal_f.gltf", "info", 45)
	event.CharaActive(0, 45)
	event.LoadChara(5, "event/e300/e356/e356_crystal_l.gltf", "info", 46)
	event.CharaActive(0, 46)
	event.EohSyncChara(15, 46)
	event.ObjsInit(18, 46)
	event.ObjsSyncObj(18, 15)
	event.LoadChara(5, "event/e300/e356/e356_crystal_h.gltf", "info", 47)
	event.CharaActive(0, 47)
	event.LoadChara(5, "event/e300/e356/e356_baria.gltf", "info", 35)
	event.CharaActive(0, 35)
	event.LoadChara(5, "event/e300/e356/e356_tbaku.gltf", "info", 48)
	event.CharaActive(0, 48)
	event.LoadChara(5, "event/e300/e352/e352_warp.gltf", "info", 39)
	event.CharaActive(0, 39)
	event.SetScale(39, 1.1, 1.1, 1.1)
	event.LoadMes(0, 5, "event/e300/e356/e356_1.txt")
end

--- Helper function.
local function helper_23000000()
	global14 = 0
	global15 = 32
	global14 = 32
	global15 = 0
end

--- Helper function.
local function helper_294a0()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global14)
		event.CharaActive(0, global15)
		event.DelExtMotion(global14)
		event.DelExtMotion(global15)
		event.DeleteChara(global15)
		event.DeleteChara(36)
		event.DeleteChara(41)
		event.DeleteChara(42)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global15)
		event.CharaActive(0, global14)
		event.DelExtMotion(global14)
		event.DelExtMotion(global15)
		event.DeleteChara(global14)
		event.DeleteChara(36)
		event.DeleteChara(41)
		event.DeleteChara(42)
	end
	event.DeleteChara(34)
	event.DeleteChara(37)
	event.DeleteChara(38)
	event.DeleteChara(33)
	event.DeleteChara(39)
	event.DeleteChara(40)
	event.DeleteChara(43)
	event.DeleteChara(44)
	event.DeleteChara(45)
	event.DeleteChara(46)
	event.DeleteChara(47)
	event.DeleteChara(35)
	event.DeleteChara(48)
	event.FuncPointShow("", "func", 1)
	event.FuncPointShow("", "func4", 1)
	event.EohSetShow(12, 1)
	event.SetStatus(1, 0, 256, 0)
	event.EohSetShow(14, 1)
	event.EohSetShow(8, 1)
	event.EohSetShow(9, 1)
	event.SetStatusbarShow(1, 1.0)
	event.Finish()
end

--- Helper function.
local function helper_2b9e4()
	local var4: s32 = 0
	local projection: f32 = 0
	local time: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(356, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetMotionBlur(0)
		event.StopBgm(0)
		at = 1
		vm.wait(1)
		at = 2
		vm.wait(2)
		at = 3
		vm.wait(3)
		at = 4
		vm.wait(4)
		event.LoadSound(3841)
		var4 = event.SndLoadSound_2(3841) or var4
		event.SetFadeOut(30)
		at = 5
		wait_frames(35)
		helper_29bb4()
		event.SetStatus(1, 0, 256, 1)
		at = 6
		vm.wait(6)
		projection = event.GetProjection() or projection
		time = event.GetTime() or time
		event.InitDramaScene()
		event.SetTime(21.0)
		event.SetTimeStepEnable(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "無表情")
		event.ObjsTexAnime(5, 1, "通常目パチ")
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "くるし顔")
		event.ObjsTexAnime(6, 1, "通常目パチ")
		event.ObjsTexAnime(7, 0)
		event.ObjsTexAnime(7, 1, "デフォルト顔")
		event.ObjsTexAnime(7, 1, "目パチ")
		event.FuncPointShow("", "func2", 1)
		event.FuncPointShow("", "func3", 1)
		event.FuncPointShow("", "func0", 0)
		event.FuncPointShow("", "func", 0)
		event.FuncPointShow("", "func4", 0)
		event.ObjsSetRot(11, 0.0, 1.57, 0.0)
		event.ObjsSetRot(12, 0.0, 1.57, 0.0)
		event.EohSetShow(8, 1)
		event.EohSetShow(9, 1)
		event.SndSePlay(var4, 4)
		event.CmrsSetPos(-3228.79, 35.27, 1184.49)
		event.CmrsSetRef(-3120.21, 64.65, 1226.19)
		event.CharaActive(1, 36)
		event.CharaActive(0, global14)
		event.CharaActive(1, global15)
		event.CharaActive(0, 34)
		event.CharaActive(1, 37)
		event.CharaActive(0, 38)
		event.ObjsSetMotion(5, "手ひろげ立ち", 4)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetMotion(6, "ひざまづきＬ", 4)
		event.ObjsSetMotion(7, "立ち", 4)
		event.ObjsSetPos(8, -3191.25, 25.75, 1213.17)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.ObjsSetPos(7, -3213.34, 25.75, 1386.39)
		event.ObjsSetRot(7, 0.0, 3.12, 0.0)
		event.ObjsSetPos(6, -3191.25, 25.75, 1213.17)
		event.ObjsSetRot(6, 0.0, 3.12, 0.0)
		event.ObjsSetPos(1, -3193.71, 25.75, 1113.77)
		event.ObjsSetRot(1, 0.0, 0.0, 0.0)
		event.EohSetFootSoundId(1, 3)
		event.ObjsSetPos(5, -171.87, 401.97, -73.85)
		event.ObjsSetRot(5, 0.0, -0.96, 0.0)
		event.ObjsSetPos(0, 0.0, 0.0, 0.0)
		event.ObjsSetRot(0, 0.0, -1.2, 0.0)
		event.SetFadeIn(30)
		event.SetPakuAnim(6, "通常口パク")
		at = 7
		helper_4116e6bb(3560010)
		event.ResetPakuAnim()
		at = 8
		wait_frames(30)
		event.CharaActive(1, 41)
		event.CharaActive(1, 42)
		event.CmrsSetPos(-3217.06, 43.8, 1135.37)
		event.CmrsSetRef(-3161.01, 46.88, 1099.01)
		event.SndSePlay(var4, 5)
		event.ObjsSetMotion(1, "剣おろし", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 9
		helper_4116e6bb(3560020)
		event.ResetPakuAnim()
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 120)
		event.ObjsAddPas(1, -3193.71, 25.75, 1113.77)
		event.ObjsAddPas(1, -3191.52, 25.75, 1171.04)
		event.ObjsStartPas(1, 1)
		event.ObjsSetMotion(1, "歩き")
		at = 10
		wait_frames(60)
		event.CmrsSetPos(-3252.89, 52.03, 1136.53)
		event.CmrsSetRef(-3191.9, 46.88, 1186.49)
		at = 11
		wait_objects(1)
		event.ObjsSetMotion(1, "立ち")
		at = 12
		wait_frames(60)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目下パチ")
		event.CmrsSetPos(-3235.05, 37.69, 1207.12)
		event.CmrsSetRef(-3196.19, 46.88, 1176.66)
		event.SndSePlay(var4, 6)
		event.ObjsSetMotion(1, "剣突きつけ", 6)
		event.ObjsNextMotion(1, "剣突きつけＬ", 4)
		at = 13
		wait_frames(60)
		event.SndSePlay(var4, 6)
		event.ObjsSetMotion(1, "剣突きつけ", 6)
		event.ObjsNextMotion(1, "剣突きつけＬ", 4)
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "わらい顔")
		event.ObjsTexAnime(6, 1, "目とじ")
		event.CmrsSetPos(-3214.05, 52.19, 1179.0)
		event.CmrsSetRef(-3184.91, 48.9, 1206.85)
		at = 14
		wait_frames(60)
		event.SndSePlay(var4, 7)
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "わらい顔")
		event.ObjsTexAnime(6, 1, "目とじ～目あき")
		event.ObjsTexAnime(6, 1, "わらい口～口とじ")
		event.ObjsSetMotion(6, "顔上げる", 6)
		event.ObjsNextMotion(6, "顔上げるＬ", 4)
		at = 15
		wait_frames(30)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-3240.43, 47.09, 1159.88, -3177.08, 48.9, 1166.47)
		event.CmrsAddPas(-3243.26, 47.09, 1187.11, -3179.91, 48.9, 1193.69)
		event.CmrsStartPas()
		at = 16
		wait_camera()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(90)
		event.CmrsAddPas(-3227.95, 37.5, 1215.78, -3178.62, 48.9, 1184.83)
		event.CmrsAddPas(-3234.28, 37.5, 1205.7, -3184.95, 48.9, 1174.74)
		event.CmrsStartPas()
		at = 17
		wait_camera()
		event.SetCrossfade(30)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(90)
		event.CmrsAddPas(-3203.96, 45.24, 1194.92, -3154.63, 56.45, 1163.97)
		event.CmrsAddPas(-3207.72, 45.24, 1188.92, -3158.39, 56.45, 1157.97)
		event.CmrsStartPas()
		at = 18
		wait_camera()
		event.CmrsSetPos(-3909.29, 148.98, 1182.03)
		event.CmrsSetRef(-3563.8, -10.58, 1141.1)
		event.SetCharaPos(47, -3756.47, -58.75, 1194.56)
		event.SetCharaRot(47, 0.0, 0.0, 0.0)
		event.CharaActive(1, 47)
		event.SetMotion(47, "ヒット", 2, -1, 1)
		event.SndSePlay(var4, 8)
		event.CmrsQuakeDelay(30)
		event.CmrsQuake(0.0, 0.3, 0.0, 120)
		at = 19
		wait_frames(60)
		event.CharaActive(0, 47)
		event.CmrsSetPos(-3218.05, 58.5, 1186.27)
		event.CmrsSetRef(-3110.83, 8.26, 1127.13)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おどろき顔")
		event.ObjsTexAnime(1, 1, "おどろき目パチ")
		event.ObjsTexAnime(1, 1, "口とじ～半口")
		event.SndSePlay(var4, 9)
		event.ObjsSetMotion(1, "え？", 6)
		event.SetPakuAnim(1, "通常口パク")
		at = 20
		helper_1584c528(3560025, -1)
		event.ResetPakuAnim()
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "デフォルト顔")
		event.ObjsTexAnime(6, 1, "通常目パチ")
		event.CmrsSetPos(-3229.37, 62.21, 1210.77)
		event.CmrsSetRef(-3103.54, 8.26, 1191.57)
		event.SndSePlay(var4, 10)
		event.ObjsSetMotion(6, "なんだ？", 6)
		event.ObjsNextMotion(6, "なんだ？Ｌ", 4)
		event.SetPakuAnim(6, "通常口パク")
		at = 21
		helper_1584c528(3560030, -1)
		event.ResetPakuAnim()
		event.SndSePlay(var4, 11)
		event.ObjsSetMotion(6, "バク転", 6)
		at = 22
		wait_frames(5)
		event.ObjsMove(6, -3186.11, 25.75, 1357.13, 45)
		at = 23
		wait_frames(10)
		event.CmrsSetPos(-3322.33, 78.68, 1141.68)
		event.CmrsSetRef(-3203.67, 55.98, 1199.43)
		at = 24
		wait_frames(20)
		event.CmrsSetPos(-3184.57, 48.67, 1183.98)
		event.CmrsSetRef(-3185.6, 46.46, 1288.4)
		at = 25
		wait_objects(6)
		event.SndSePlay(var4, 12)
		event.SndSePlay(var4, 13)
		event.CharaActive(1, 39)
		event.SetCharaPos(39, -3213.34, 25.75, 1386.39)
		event.SetMotion(39, "ワープ", 2, -1, 1)
		at = 26
		wait_frames(30)
		event.CharaActive(1, 38)
		event.SetCharaShow(38, 1, 1, 0.025)
		event.ObjsSetMotion(7, "立ちから話しポーズ", 6)
		event.ObjsNextMotion(7, "話し", 4)
		event.CmrsSetPos(-3197.25, 55.23, 1301.14)
		event.CmrsSetRef(-3198.28, 53.02, 1405.56)
		event.SetPakuAnim(7, "通常口パク")
		at = 27
		helper_4116e6bb(3560040)
		event.ResetPakuAnim()
		event.ObjsSetMotion(7, "話しポーズ待機", 4)
		event.ObjsSetMotion(6, "会話", 4)
		event.SetPakuAnim(6, "通常口パク")
		at = 28
		helper_4116e6bb(3560050)
		event.ResetPakuAnim()
		event.SetPakuAnim(6, "通常口パク")
		at = 29
		helper_4116e6bb(3560055)
		event.ResetPakuAnim()
		event.ObjsSetMotion(6, "立ち", 4)
		event.ObjsSetMotion(7, "はっ！", 6)
		event.ObjsNextMotion(7, "立ち", 4)
		event.SetPakuAnim(7, "通常口パク")
		at = 30
		helper_4116e6bb(3560060)
		event.ResetPakuAnim()
		at = 31
		wait_frames(30)
		event.SndSeStop(var4, 4)
		event.SndSePlay(var4, 14)
		event.CharaActive(1, 34)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(90)
		event.CmrsAddPas(-2317.41, 409.93, 812.37, -2227.35, 407.72, 780.15)
		event.CmrsAddPas(-1582.49, 409.93, 549.51, -1495.25, 407.72, 518.31)
		event.CmrsStartPas()
		at = 32
		wait_camera()
		event.CmrsSetPos(-572.71, 409.93, 60.46)
		event.CmrsSetRef(-485.48, 407.72, 29.26)
		at = 33
		wait_frames(60)
		event.ObjsSetMotion(5, "呪文", 4)
		event.SndSePlay(var4, 15)
		event.CmrsSetPos(-215.86, 432.29, -37.91)
		event.CmrsSetRef(-143.93, 430.08, -96.45)
		event.SetPakuAnim(5, "通常口パク")
		at = 34
		helper_1584c528(3560070, -1)
		event.ResetPakuAnim()
		at = 35
		wait_frames(30)
		event.CmrsSetPos(2634.97, 591.93, 821.31)
		event.CmrsSetRef(1909.14, 546.61, 812.29)
		event.SetScale(45, 1.5, 1.5, 1.5)
		event.SetScale(46, 1.5, 1.5, 1.5)
		event.SetScale(47, 1.5, 1.5, 1.5)
		event.SetCharaPos(45, 0.0, 480.68, 0.0)
		event.SetCharaRot(45, 0.0, 0.0, 0.0)
		event.CharaActive(1, 45)
		event.SetCharaPos(46, 0.0, 480.68, 0.0)
		event.SetCharaRot(46, 0.0, -1.2, 0.0)
		event.SetCharaPos(47, -2741.37, 499.29, 1144.49)
		event.SetCharaRot(47, 0.0, 0.0, 0.0)
		event.SetMotion(45, "発射", 6, -1, 1)
		at = 36
		wait_frames(15)
		event.SndSePlay(var4, 16)
		at = 37
		wait_frames(15)
		event.CharaActive(1, 46)
		event.ObjsMove(18, -2884.97, 501.86, 1101.17, 30)
		at = 38
		wait_frames(20)
		event.CmrsSetPos(-1963.8, 545.73, 2572.58)
		event.CmrsSetRef(-2020.19, 543.47, 2470.6)
		at = 39
		wait_frames(9)
		event.CharaActive(0, 46)
		event.CharaActive(1, 47)
		event.SndSePlay(var4, 17)
		event.SetMotion(47, "ヒット", 6, -1, 1)
		event.CmrsQuakeDelay(10)
		event.CmrsQuake(0.0, 10.3, 0.0, 90)
		at = 40
		wait_frames(30)
		event.ObjsRotation(8, 0.0, 0.0, 0.06, 60)
		at = 41
		wait_frames(60)
		event.CharaActive(0, 47)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.SndSePlay(var4, 18)
		event.SndSeStop(var4, 14)
		event.CmrsSetPos(-1938.53, 42.72, 1126.84)
		event.CmrsSetRef(-1989.75, 48.9, 1098.63)
		event.ObjsSetRot(17, 0.0, 1.92, 0.0)
		event.CharaActive(1, 33)
		event.EohSetShow(14, 0)
		event.ObjsSetPos(17, -2458.92, 167.76, 852.48)
		event.SndSePlay(var4, 19)
		event.ObjsSetMotion(17, "横から縦移動", 6)
		event.ObjsNextMotion(17, "狙う", 6)
		event.ObjsNextMotion(17, "狙い立ち", 6)
		at = 42
		wait_objects(17)
		event.SndSeStop(var4, 19)
		event.SetCharaPos(40, -2279.73, 181.5, 788.22)
		event.SetCharaRot(40, 0.0, 1.9, 0.0)
		event.SetCharaPos(43, -2279.73, 181.5, 788.22)
		event.SetCharaRot(43, 0.0, 1.9, 0.0)
		event.CharaActive(1, 40)
		event.SndSePlay(var4, 20)
		event.SetMotion(40, "発射", 6, -1, 1)
		event.ObjsSetMotion(17, "発射", 6)
		event.ObjsNextMotion(17, "狙い立ち", 6)
		event.CmrsQuake(0.0, 1.3, 0.0, 60)
		at = 43
		wait_frames(5)
		event.CharaActive(1, 43)
		event.ObjsMove(19, -1846.06, 191.5, 633.95, 30)
		at = 44
		wait_frames(60)
		event.CharaActive(0, 43)
		event.SndSePlay(var4, 20)
		event.SetMotion(40, "発射", 6, -1, 1)
		event.ObjsSetMotion(17, "発射", 6)
		event.ObjsNextMotion(17, "狙い立ち", 6)
		event.CmrsQuake(0.0, 1.3, 0.0, 60)
		at = 45
		wait_frames(5)
		event.CharaActive(1, 43)
		event.SetCharaPos(43, -2279.73, 181.5, 788.22)
		event.SetCharaRot(43, 0.0, 1.9, 0.0)
		event.ObjsMove(19, -1846.06, 191.5, 633.95, 30)
		at = 46
		wait_frames(60)
		event.CharaActive(0, 40)
		event.CharaActive(0, 43)
		event.SndSeStop(var4, 18)
		event.SndSePlay(var4, 21)
		event.SetProjection(208.9)
		event.CmrsSetPos(-2164.25, 179.07, 755.08)
		event.CmrsSetRef(-2064.38, 141.78, 719.62)
		event.CharaActive(1, 43)
		event.ObjsSetPos(19, -2064.38, 141.78, 719.62)
		event.ObjsInitPas(19)
		event.ObjsSetPasFrm(19, 90)
		event.ObjsAddPas(19, -2064.38, 141.78, 719.62)
		event.ObjsAddPas(19, 0.0, 480.68, 0.0)
		event.ObjsStartPas(19)
		event.CmrsSyncObj(16, 0.0, 0.0, 0.0, -1.23, 37.29, 105.98)
		at = 47
		wait_frames(60)
		event.ObjsInitPas(19)
		event.ObjsSyncObj(19, 16)
		event.CmrsReleaseObj()
		event.SetProjection(projection)
		event.CmrsSetPos(-207.36, 438.78, -44.18)
		event.CmrsSetRef(-170.18, 431.53, -74.54)
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "はっと顔")
		event.ObjsTexAnime(5, 1, "通常目パチ")
		event.ObjsSetMotion(5, "ふせぐ", 6)
		event.ObjsNextMotion(5, "ふせぐL", 4)
		at = 48
		wait_frames(30)
		event.CmrsSetPos(-87.05, 438.78, 734.67)
		event.CmrsSetRef(-222.41, 431.53, -65.71)
		event.SetCharaPos(35, -280.28, 480.68, 182.19)
		event.SetCharaRot(35, 0.0, -1.68, 0.0)
		event.SetMotion(35, "バリア", 2, -1, 1)
		event.CharaActive(1, 35)
		event.CmrsQuakeDelay(10)
		event.CmrsQuake(0.0, 0.6, 0.0, 120)
		at = 49
		wait_frames(60)
		event.CharaActive(0, 35)
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "くいしばり")
		event.ObjsTexAnime(5, 1, "通常目パチ")
		event.SndSePlay(var4, 22)
		event.CmrsSetPos(-180.2, 426.54, -51.75)
		event.CmrsSetRef(-169.56, 436.78, -92.29)
		at = 50
		wait_frames(90)
		event.SndSePlay(var4, 23)
		event.SetProjection(208.9)
		event.CmrsSetPos(-2164.25, 179.07, 755.08)
		event.CmrsSetRef(-2064.38, 141.78, 719.62)
		event.ObjsSetPos(19, -2064.38, 141.78, 719.62)
		event.ObjsInitPas(19)
		event.ObjsSetPasFrm(19, 90)
		event.ObjsAddPas(19, -2064.38, 141.78, 719.62)
		event.ObjsAddPas(19, -280.28, 480.68, 182.19)
		event.ObjsStartPas(19)
		event.CmrsSyncObj(16, 0.0, 0.0, 0.0, -1.23, 37.29, 105.98)
		at = 51
		wait_frames(60)
		event.ObjsInitPas(19)
		event.ObjsSyncObj(19, 16)
		event.CmrsReleaseObj()
		event.SetProjection(projection)
		event.CmrsSetPos(-1229.21, -140.51, 2033.13)
		event.CmrsSetRef(-413.29, 265.59, -747.44)
		event.SetCharaPos(48, -280.28, 480.68, 182.19)
		event.SetCharaRot(48, 0.0, -1.68, 0.0)
		at = 52
		wait_frames(29)
		event.CharaActive(0, 43)
		event.CmrsQuake(0.0, 0.6, 0.0, 30)
		event.SetMotion(48, "命中", 6, -1, 1)
		event.CharaActive(1, 48)
		at = 53
		wait_frames(30)
		event.CmrsSetPos(-499.15, 603.41, 701.23)
		event.CmrsSetRef(-222.41, 431.53, -65.71)
		event.SetCrossfade(30)
		event.CharaActive(0, 48)
		event.CmrsQuake(0.0, 0.6, 0.0, 30)
		event.SetMotion(48, "命中", 6, -1, 1)
		event.CharaActive(1, 48)
		at = 54
		wait_frames(40)
	end, function(received: { any }): boolean
		if at <= 4 then
			wait_frames_skipping(35)
		end
		if at <= 5 then
			helper_23000000()
		end
		if at <= 6 then
			helper_8cd371d7(3560010)
		end
		if at <= 7 then
			wait_frames_skipping(30)
		end
		if at <= 8 then
			helper_8cd371d7(3560020)
		end
		if at <= 9 then
			wait_frames_skipping(60)
		end
		if at <= 10 then
			helper_238b5abc(1)
		end
		if at <= 11 then
			wait_frames_skipping(60)
		end
		if at <= 12 then
			wait_frames_skipping(60)
		end
		if at <= 13 then
			wait_frames_skipping(60)
		end
		if at <= 14 then
			wait_frames_skipping(30)
		end
		if at <= 15 then
			helper_344d6cd8()
		end
		if at <= 16 then
			helper_344d6cd8()
		end
		if at <= 17 then
			helper_344d6cd8()
		end
		if at <= 18 then
			wait_frames_skipping(60)
		end
		if at <= 19 then
			helper_52aadc70(3560025, -1)
		end
		if at <= 20 then
			helper_52aadc70(3560030, -1)
		end
		if at <= 21 then
			wait_frames_skipping(5)
		end
		if at <= 22 then
			wait_frames_skipping(10)
		end
		if at <= 23 then
			wait_frames_skipping(20)
		end
		if at <= 24 then
			helper_238b5abc(6)
		end
		if at <= 25 then
			wait_frames_skipping(30)
		end
		if at <= 26 then
			helper_8cd371d7(3560040)
		end
		if at <= 27 then
			helper_8cd371d7(3560050)
		end
		if at <= 28 then
			helper_8cd371d7(3560055)
		end
		if at <= 29 then
			helper_8cd371d7(3560060)
		end
		if at <= 30 then
			wait_frames_skipping(30)
		end
		if at <= 31 then
			helper_344d6cd8()
		end
		if at <= 32 then
			wait_frames_skipping(60)
		end
		if at <= 33 then
			helper_52aadc70(3560070, -1)
		end
		if at <= 34 then
			wait_frames_skipping(30)
		end
		if at <= 35 then
			wait_frames_skipping(15)
		end
		if at <= 36 then
			wait_frames_skipping(15)
		end
		if at <= 37 then
			wait_frames_skipping(20)
		end
		if at <= 38 then
			wait_frames_skipping(9)
		end
		if at <= 39 then
			wait_frames_skipping(30)
		end
		if at <= 40 then
			wait_frames_skipping(60)
		end
		if at <= 41 then
			helper_238b5abc(17)
		end
		if at <= 42 then
			wait_frames_skipping(5)
		end
		if at <= 43 then
			wait_frames_skipping(60)
		end
		if at <= 44 then
			wait_frames_skipping(5)
		end
		if at <= 45 then
			wait_frames_skipping(60)
		end
		if at <= 46 then
			wait_frames_skipping(60)
		end
		if at <= 47 then
			wait_frames_skipping(30)
		end
		if at <= 48 then
			wait_frames_skipping(60)
		end
		if at <= 49 then
			wait_frames_skipping(90)
		end
		if at <= 50 then
			wait_frames_skipping(60)
		end
		if at <= 51 then
			wait_frames_skipping(29)
		end
		if at <= 52 then
			wait_frames_skipping(30)
		end
		if at <= 53 then
			wait_frames_skipping(40)
		end
		return true
	end)
	at = 55
	vm.entry(55)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	at = 56
	wait_frames(30)
	event.SetProjection(projection)
	event.SetTime(time)
	event.SetTimeStepEnable(1)
	event.SndSeStop(var4, 4)
	event.SndSeStop(var4, 14)
	event.SndSeStop(var4, 18)
	event.SndSeStop(var4, 19)
	event.SndSeStop(var4, 25)
	event.SndSeStop(var4, 30)
	event.SndSeAllStop(4)
	at = 57
	vm.wait(57)
	helper_294a0()
end

--- Helper function.
local function helper_31ed0()
	local active_chr_no: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.SetStatusbarShow(0, 1.0)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global16 = 0
		global17 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global16)
		event.LoadMotion(5, "event/e300/e356/e356_mints.gltf", "info", global16)
		event.EohSyncChara(0, global16)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global16)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global17)
		event.LoadEquip(5, 1, 1, "info", global17, 17)
		event.LoadEquip(5, 1, 0, "info", global17, 18)
		event.LoadEquip(5, 1, 4, "info", global17)
		event.LoadEquip(5, 1, 3, "info", global17)
		event.LoadEquip(5, 1, 2, "info", global17, 12)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global17)
		event.LoadMotion(5, "event/e300/e356/e356_monica.gltf", "info", global17)
		event.EohSyncChara(1, global17)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global17)
		event.CharaActive(0, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
	end
	if active_chr_no == 1 then
		global16 = 8
		global17 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global16)
		event.LoadEquip(5, 0, 1, "info", global16, 17)
		event.LoadEquip(5, 0, 0, "info", global16, 18)
		event.LoadEquip(5, 0, 4, "info", global16)
		event.LoadEquip(5, 0, 3, "info", global16)
		event.LoadEquip(5, 0, 2, "info", global16, 12)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global16)
		event.LoadMotion(5, "event/e300/e356/e356_mints.gltf", "info", global16)
		event.EohSyncChara(0, global16)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global16)
		event.CharaActive(0, 12)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global17)
		event.LoadMotion(5, "event/e300/e356/e356_monica.gltf", "info", global17)
		event.EohSyncChara(1, global17)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global17)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/e300/e356/e356_crest2.gltf", "info", 11)
	event.CharaActive(0, 11)
	event.EohSyncChara(5, 11)
	event.ObjsInit(5, 11)
	event.ObjsSyncObj(5, 5)
	event.LoadChara(5, "event/e300/e356/e356_lin2.gltf", "info", 9)
	event.CharaActive(0, 9)
	event.EohSyncChara(4, 9)
	event.ObjsInit(4, 9)
	event.ObjsSyncObj(4, 4)
	event.LoadChara(5, "event/e300/e356/e356_guiltoni.gltf", "info", 15)
	event.CharaActive(0, 15)
	event.EohSyncChara(6, 15)
	event.ObjsInit(6, 15)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(5, "event/e300/e356/e356_jamming.gltf", "info", 21)
	event.CharaActive(0, 21)
	event.EohSyncChara(7, 21)
	event.ObjsInit(7, 21)
	event.ObjsSyncObj(7, 7)
	event.LoadChara(5, "event/e300/e356/e356_dsmoke.gltf", "info", 22)
	event.CharaActive(0, 22)
	event.LoadChara(5, "event/e300/e356/e356_cre_kemuri.gltf", "info", 20)
	event.CharaActive(0, 20)
	event.LoadChara(5, "event/e300/e356/e356_dwarp.gltf", "info", 19)
	event.CharaActive(0, 19)
	event.EohSyncChara(14, 19)
	event.ObjsInit(14, 19)
	event.ObjsSyncObj(14, 14)
	event.EsmInitialize(5)
	event.EsmLoadBase("Ｅ３５６火の粉")
	event.EsmInitFix(5)
	event.EohSyncObj_2(8, "p01_battleship")
	event.ObjsInit(8)
	event.ObjsSyncObj(8, 8)
	event.EohSyncObj_2(9, "p06_d03b01")
	event.ObjsInit(9)
	event.ObjsSyncObj(9, 9)
	event.EohSyncObj_2(15, "p07_d03b01")
	event.ObjsInit(15)
	event.ObjsSyncObj(15, 15)
	event.EohSyncObj_3(10, "p01_d03b01", "d03b01_12-m0")
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.EohSyncObj_3(11, "p02_d03b01", "d03b01_3-m0")
	event.ObjsInit(11)
	event.ObjsSyncObj(11, 11)
	event.EohSyncObj_3(12, "p02_d03b01", "d03b01_15-m0")
	event.ObjsInit(12)
	event.ObjsSyncObj(12, 12)
	event.EohSyncObj_3(13, "p01_battleship", "tbig-m0")
	event.ObjsInit(13)
	event.ObjsSyncObj(13, 13)
	event.LoadMes(0, 5, "event/e300/e356/e356_1.txt")
end

--- Helper function.
local function helper_23200000()
	global16 = 0
	global17 = 8
	global16 = 8
	global17 = 0
end

--- Helper function.
local function helper_31840()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global16)
		event.CharaActive(0, global17)
		event.DelExtMotion(global16)
		event.DelExtMotion(global17)
		event.DeleteChara(global17)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global17)
		event.CharaActive(0, global16)
		event.DelExtMotion(global16)
		event.DelExtMotion(global17)
		event.DeleteChara(global16)
		event.DeleteChara(12)
		event.DeleteChara(17)
		event.DeleteChara(18)
	end
	event.DeleteChara(9)
	event.DeleteChara(11)
	event.DeleteChara(15)
	event.DeleteChara(21)
	event.DeleteChara(22)
	event.DeleteChara(20)
	event.DeleteChara(19)
	event.FuncPointShow("", "func", 1)
	event.FuncPointShow("", "func4", 1)
	event.EohSetShow(12, 1)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.EohSetShow(8, 1)
	event.EohSetShow(9, 1)
	event.SetStatusbarShow(1, 1.0)
	event.Finish()
	vm.wait(1)
end

--- Helper function.
local function helper_33a7c()
	local var4: s32 = 0
	local projection: f32 = 0
	local time: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetMotionBlur(0)
		helper_31ed0()
		event.StopBgm(0)
		at = 2
		wait_frames(4)
		event.LoadBgm(152)
		event.LoadSound(3841)
		var4 = event.SndLoadSound_2(3841) or var4
		event.SndSeAllStop(1)
		projection = event.GetProjection() or projection
		time = event.GetTime() or time
		event.InitDramaScene()
		event.SetTime(21.0)
		event.SetTimeStepEnable(0)
		event.EohSetFootSoundId(1, 3)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "直撃顔")
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "おこり顔")
		event.ObjsTexAnime(4, 1, "おこり目パチ")
		event.ObjsTexAnime(6, 0)
		event.ObjsTexAnime(6, 1, "デフォルト顔")
		event.ObjsTexAnime(6, 1, "通常目パチ")
		event.ObjsTexAnime(7, 0)
		event.ObjsTexAnime(7, 1, "デフォルト顔")
		event.ObjsTexAnime(7, 1, "目パチ")
		event.FuncPointShow("", "func", 0)
		event.FuncPointShow("", "func4", 0)
		event.ObjsSetRot(11, 0.0, 1.57, 0.0)
		event.ObjsSetRot(12, 0.0, 1.57, 0.0)
		event.EohSetShow(8, 1)
		event.EohSetShow(9, 1)
		event.EohSetShow(12, 0)
		event.ObjsSetRot(13, -0.4, 1.9, 0.0)
		event.EsmCreate("Ｅ３５６火の粉")
		event.EsmSetVect1(0.0, 60.0, 0.0)
		event.CmrsSetPos(-130.8, 38.79, 63.09)
		event.CmrsSetRef(-74.0, 16.13, 36.55)
		event.CharaActive(1, 12)
		event.CharaActive(1, global16)
		event.CharaActive(1, global17)
		event.CharaActive(1, 9)
		event.CharaActive(1, 11)
		event.CharaActive(1, 15)
		event.CharaActive(0, 21)
		event.ObjsSetMotion(4, "上見かまえ", 4)
		event.ObjsSetMotion(5, "ふせぐL", 4)
		event.ObjsSetMotion(1, "驚き", 4)
		event.ObjsSetMotion(0, "上見かまえ", 4)
		event.ObjsSetMotion(6, "立ち", 4)
		event.ObjsSetMotion(7, "立ち", 4)
		event.ObjsSetPos(8, -3191.25, 25.75, 1213.17)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.CharaActive(1, 22)
		event.SetCharaPos(22, -3714.57, 453.25, 1349.41)
		event.SetCharaRot(22, 0.0, 0.0, 0.0)
		event.SetCharaPos(19, -3191.25, 25.75, 2275.09)
		event.SetCharaRot(19, 0.0, 0.0, 0.0)
		event.ObjsSetPos(7, -2784.72, 25.75, 1175.72)
		event.ObjsSetRot(7, 0.0, 1.41, 0.0)
		event.ObjsSetPos(6, -2765.6, 25.75, 1210.21)
		event.ObjsSetRot(6, 0.0, 1.4, 0.0)
		event.ObjsSetPos(1, -2766.34, 25.75, 1080.7)
		event.ObjsSetRot(1, 0.0, 1.68, 0.0)
		event.ObjsSetPos(5, -171.87, 401.97, -73.85)
		event.ObjsSetRot(5, 0.0, -0.96, 0.0)
		event.ObjsSetPos(4, -76.99, 0.0, 21.53)
		event.ObjsSetRot(4, 0.0, -1.12, 0.0)
		event.ObjsSetPos(0, -75.67, 0.0, 49.73)
		event.ObjsSetRot(0, 0.0, -1.2, 0.0)
		event.SetCharaPos(20, -171.87, 402.97, -73.85)
		event.SetCharaRot(20, 0.0, -0.96, 0.0)
		event.SetFadeIn(30)
		event.SetPakuAnim(4, "通常口パク")
		at = 3
		helper_1584c528(3560080, -1)
		event.ResetPakuAnim()
		event.SetPakuAnim(0, "大口パク")
		at = 4
		helper_1584c528(3560090, -1)
		event.ResetPakuAnim()
		at = 5
		wait_frames(30)
		event.EsmClear()
		event.CharaActive(1, 20)
		event.CmrsSetPos(-184.06, 415.94, -34.92)
		event.CmrsSetRef(-164.04, 432.34, -99.26)
		at = 6
		wait_frames(90)
		event.CharaActive(0, 20)
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "つらい顔")
		event.SndSePlay(var4, 24)
		event.CmrsSetPos(-281.06, 415.94, -39.36)
		event.CmrsSetRef(-151.02, 432.34, -81.4)
		event.ObjsSetMotion(5, "振り返る", 6)
		event.ObjsNextMotion(5, "振り返るＬ", 4)
		event.ObjsRotation(5, 0.0, 0.72, 0.0, 30)
		at = 7
		wait_frames(60)
		event.CmrsSetPos(-140.77, 480.0, -15.54)
		event.CmrsSetRef(-172.28, 437.71, -70.64)
		at = 8
		wait_frames(60)
		event.CmrsSetPos(-258.09, 457.17, -222.7)
		event.CmrsSetRef(-172.28, 437.71, -70.64)
		at = 9
		wait_frames(60)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-154.99, 437.5, -84.08, -289.74, 438.77, 31.8)
		event.CmrsAddPas(-154.99, 431.92, -84.08, -289.74, 433.19, 31.8)
		event.CmrsStartPas()
		at = 10
		wait_frames(100)
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "つらいわらい顔")
		at = 11
		wait_camera()
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "目をとじる")
		at = 12
		wait_frames(60)
		event.ObjsSetMotion(5, "倒れる", 6)
		at = 13
		wait_frames(60)
		event.PlayBgm(0)
		event.EohSetShow(9, 0)
		event.EohSetShow(15, 1)
		event.SetMotionBlur(60)
		event.ObjsSetMotion(5, "落下", 4)
		event.EohSetShadow(5, 0)
		event.CmrsSetPos(-553.51, 200.25, 54.3)
		event.CmrsSetRef(-469.06, 205.75, 43.81)
		event.SetCrossfade(60)
		event.ObjsInitPas(5)
		event.ObjsSetPasFrm(5, 150)
		event.ObjsAddPas(5, -249.12, 273.7, 22.14)
		event.ObjsAddPas(5, -249.12, 240.32, 22.14)
		event.ObjsStartPas(5)
		at = 14
		wait_frames(70)
		event.SetCrossfade(60)
		event.CmrsSetPos(-317.2, 237.89, -76.53)
		event.CmrsSetRef(-279.42, 243.39, -22.7)
		at = 15
		wait_objects(5)
		event.SetMotionBlur(0)
		event.EohSetShow(9, 1)
		event.EohSetShow(15, 0)
		event.SetProjection(1502.9)
		event.SndSePlay(var4, 25)
		event.CmrsSetPos(-2744.52, 54.57, 1323.71)
		event.CmrsSetRef(-2754.11, 50.78, 1201.72)
		event.ObjsSetMotion(1, "驚き", 4, -1, 1)
		at = 16
		wait_frames(60)
		event.ObjsSetMotion(1, "驚きからギル見", 6)
		event.SetPakuAnim(1, "通常口パク")
		at = 17
		helper_4116e6bb(3560100)
		event.ResetPakuAnim()
		at = 18
		wait_frames(30)
		event.CmrsSetPos(-3256.95, 81.8, 1278.1)
		event.CmrsSetRef(-3074.49, 50.78, 1211.03)
		event.ObjsSetPos(1, -3078.05, 25.75, 1210.56)
		event.ObjsSetRot(1, 0.0, 1.92, 0.0)
		event.ObjsSetMotion(1, "走り", 4)
		event.ObjsMove(1, -2826.26, 25.75, 1118.0, 60)
		at = 19
		wait_frames(40)
		event.ObjsNextMotion(1, "走り飛び", 6)
		event.ObjsNextMotion(1, "走り飛びＬ", 4)
		at = 20
		wait_objects(1)
		event.SndSePlay(var4, 26)
		event.CharaActive(0, global17)
		event.EohSetShadow(5, 1)
		event.EohSetFootSoundId(1, 0)
		event.ObjsSetMotion(0, "下向くL", 4)
		event.ObjsSetMotion(4, "かかえ", 4)
		event.ObjsSetMotion(5, "かかえ", 4)
		event.ObjsSetPos(4, -137.71, 0.0, 40.8)
		event.ObjsSetRot(4, 0.0, -0.64, 0.0)
		event.ObjsSetPos(0, -75.67, 0.0, 49.73)
		event.ObjsSetRot(0, 0.0, -1.8, 0.0)
		event.ObjsSetPos(5, -137.71, 0.0, 40.8)
		event.ObjsSetRot(5, 0.0, -0.64, 0.0)
		event.ObjsSetPos(1, -211.67, 0.0, 80.32)
		event.ObjsSetRot(1, 0.0, 2.04, 0.0)
		event.CmrsSetPos(189.22, 107.03, -74.97)
		event.CmrsSetRef(87.21, 74.64, -36.26)
		at = 21
		wait_frames(60)
		event.SndSePlay(var4, 27)
		event.ObjsSetMotion(1, "着地２", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		event.CharaActive(1, global17)
		at = 22
		wait_frames(60)
		event.SetProjection(projection)
		event.CmrsSetPos(-4827.61, 834.34, 4724.51)
		event.CmrsSetRef(-4506.58, 801.95, 4143.46)
		event.ObjsRotation(8, 0.0, 0.0, 0.06, 90)
		at = 23
		wait_frames(90)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.CharaActive(1, 21)
		event.CmrsSetPos(-2612.44, 131.75, 1201.26)
		event.CmrsSetRef(-2814.26, 47.07, 1200.05)
		event.SetPakuAnim(6, "通常口パク")
		at = 24
		helper_4116e6bb(3560110)
		event.ResetPakuAnim()
		event.SetPakuAnim(7, "通常口パク")
		at = 25
		helper_4116e6bb(3560120)
		event.ResetPakuAnim()
		at = 26
		wait_frames(30)
		event.CmrsSetPos(-2737.6, 60.99, 1210.81)
		event.CmrsSetRef(-2832.46, 47.07, 1205.56)
		event.SetPakuAnim(6, "通常口パク")
		at = 27
		helper_4116e6bb(3560130)
		event.ResetPakuAnim()
		event.SndSePlay(var4, 28)
		event.ObjsSetMotion(6, "ふりかえり", 6)
		at = 28
		wait_frames(30)
		event.CharaActive(0, 21)
		event.CharaActive(0, 15)
		event.CharaActive(0, 22)
		event.EohSetScale(14, 2.0, 2.0, 2.0)
		event.CharaActive(1, 19)
		event.CmrsSetPos(-8070.2, 232.04, 2437.64)
		event.CmrsSetRef(-3648.73, 198.15, 1794.44)
		event.SndSePlay(var4, 29)
		event.SndSeStop(var4, 14)
		event.SndSeStop(var4, 18)
		event.SndSeStop(var4, 19)
		event.SndSeStop(var4, 25)
		event.SndSeStop(var4, 30)
		event.SetMotion(19, "消える", 2, -1, 1)
		at = 29
		wait_frames(60)
		event.SetCrossfade(60)
		event.EohSetShow(8, 0)
		event.FadeOutBgm(90)
		at = 30
		wait_frames(90)
		event.StopBgm(0)
		event.FuncPointShow("p01_battleship", "func", 0)
		event.FuncPointShow("p01_battleship", "func0", 0)
		event.FuncPointShow("p01_battleship", "func1", 0)
		event.FuncPointShow("p01_battleship", "func2", 0)
		event.FuncPointShow("p01_battleship", "func3", 0)
		event.FuncPointShow("p01_battleship", "func4", 0)
		event.FuncPointShow("p01_battleship", "func5", 0)
		event.FuncPointShow("p01_battleship", "func6", 0)
		event.FuncPointShow("p01_battleship", "bframe01", 0)
		event.FuncPointShow("p01_battleship", "bframe02", 0)
		event.FuncPointShow("p01_battleship", "bframe03", 0)
		at = 31
		vm.wait(31)
		at = 32
		vm.wait(32)
		at = 33
		vm.wait(33)
		at = 34
		vm.wait(34)
		event.LoadBgm(52)
		event.PlayBgm(0)
		event.CharaActive(0, 19)
		event.ObjsSetPos(8, -13191.25, 25.75, 1213.17)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.SndSePlay(var4, 30, 10)
		event.SetMotionBlur(0)
		event.ObjsSetPos(1, -102.8, 0.0, 11.44)
		event.ObjsSetRot(1, 0.0, -0.72, 0.0)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "かなし顔")
		event.ObjsTexAnime(4, 1, "なき目パチ")
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "くるし目とじ顔")
		event.CmrsSetPos(-151.61, 15.21, 74.52)
		event.CmrsSetRef(-132.03, 7.02, 23.84)
		event.SetPakuAnim(4, "通常口パク")
		at = 35
		helper_4116e6bb(3560140)
		event.ResetPakuAnim()
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "目をあける")
		event.SetPakuAnim(5, "くるし口パク")
		at = 36
		helper_4116e6bb(3560150)
		event.ResetPakuAnim()
		event.ObjsSetMotion(4, "ひきよせる", 2)
		event.ObjsNextMotion(4, "ゆする", 4)
		event.ObjsSetMotion(5, "ひきよせる", 2)
		event.ObjsNextMotion(5, "ゆする", 4)
		event.SetPakuAnim(4, "通常口パク")
		at = 37
		helper_4116e6bb(3560160)
		event.ResetPakuAnim()
		at = 38
		wait_objects(4)
		event.ObjsNextMotion(4, "ひきよせるL")
		event.ObjsNextMotion(5, "ひきよせるL")
		event.SetPakuAnim(5, "くるし口パク")
		at = 39
		helper_4116e6bb(3560170)
		event.ResetPakuAnim()
		at = 40
		wait_frames(30)
		event.ObjsSetMotion(4, "ゆする")
		event.ObjsSetMotion(5, "ゆする")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "かなし顔")
		event.ObjsTexAnime(1, 1, "かなし目パチ")
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-20.51, 20.32, 55.72, -95.9, 19.0, 70.13)
		event.CmrsAddPas(-26.7, 20.32, 23.31, -102.09, 19.0, 37.72)
		event.CmrsStartPas()
		event.SetPakuAnim(4, "通常口パク")
		at = 41
		helper_4116e6bb(3560180)
		event.ResetPakuAnim()
		at = 42
		wait_camera()
		at = 43
		wait_frames(30)
		event.ObjsSetMotion(4, "かかえ", 4)
		event.ObjsSetMotion(5, "かかえ", 4)
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "くるし顔")
		event.ObjsTexAnime(5, 1, "くるし目パチ")
		event.CmrsSetPos(-171.94, 29.88, 48.93)
		event.CmrsSetRef(-139.58, 8.06, 46.52)
		event.SetPakuAnim(5, "くるし口パク")
		at = 44
		helper_4116e6bb(3560190)
		event.ResetPakuAnim()
		at = 45
		wait_frames(30)
		event.ObjsSetPos(0, -91.26, 0.0, 25.67)
		event.ObjsSetRot(0, 0.0, -1.2, 0.0)
		event.ObjsSetMotion(0, "立ち", 4, -1, 1)
		event.ObjsSetMotion(1, "立ち", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "ショック顔")
		event.ObjsTexAnime(0, 1, "ショック目パチ")
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "ショック顔")
		event.ObjsTexAnime(1, 1, "ショック目パチ")
		event.CmrsSetPos(-151.61, 15.21, 74.52)
		event.CmrsSetRef(-132.03, 7.02, 23.84)
		event.ObjsSetMotion(4, "ゆする（小）", 4)
		event.ObjsSetMotion(5, "ゆする（小）", 4)
		event.SetPakuAnim(4, "通常口パク")
		at = 46
		helper_4116e6bb(3560200)
		event.ResetPakuAnim()
		event.ObjsSetMotion(4, "ひきよせるL")
		event.ObjsSetMotion(5, "ひきよせるL")
		event.SndSePlay(var4, 32)
		event.SetPakuAnim(4, "通常口パク")
		at = 47
		helper_4116e6bb(3560210)
		event.ResetPakuAnim()
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "なき目あき～なき目とじ")
		event.ObjsSetMotion(4, "すりすり", 2)
		event.ObjsNextMotion(4, "すりすりL", 4)
		event.ObjsSetMotion(5, "すりすり", 2)
		event.ObjsNextMotion(5, "すりすりL", 4)
		event.SetPakuAnim(4, "通常口パク")
		at = 48
		helper_4116e6bb(3560215)
		event.ResetPakuAnim()
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "なき目とじ～なき目あき")
		event.ObjsSetMotion(4, "すりすり戻り", 2)
		event.ObjsNextMotion(4, "ひきよせるL", 4)
		event.ObjsSetMotion(5, "すりすり戻り", 2)
		event.ObjsNextMotion(5, "ひきよせるL", 4)
		event.SetPakuAnim(5, "くるし口パク")
		at = 49
		helper_4116e6bb(3560220)
		event.ResetPakuAnim()
		event.ObjsTexAnime(5, 0)
		event.ObjsTexAnime(5, 1, "目をとじる")
		event.ObjsSetMotion(4, "死ぬ", 2)
		event.ObjsNextMotion(4, "死ぬL", 4)
		event.ObjsSetMotion(5, "死ぬ", 2)
		event.ObjsNextMotion(5, "死ぬL", 4)
		at = 50
		wait_frames(38)
		event.ObjsSetMotion(4, "先生？", 2)
		event.ObjsNextMotion(4, "泣く", 2)
		event.ObjsNextMotion(4, "泣くL", 4)
		event.ObjsSetMotion(5, "先生？", 2)
		event.ObjsNextMotion(5, "泣く", 2)
		event.ObjsNextMotion(5, "泣くL", 4)
		at = 51
		wait_frames(30)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "ごうきゅう目とじ")
		event.SndSePlay(var4, 33)
		event.SetPakuAnim(4, "大口パク")
		event.CmrsPrdelay(150)
		event.CmrsSetPos(-129.66, 28.98, 36.73)
		event.CmrsSetRef(-83.24, 17.19, 9.16)
		event.ObjsMotionDelay(1, 150)
		event.ObjsSetMotion(1, "顔そむけ", 6)
		event.ObjsNextMotion(1, "顔そむけL", 4)
		event.ObjsTexaDelay(1, 150)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "ショック顔")
		event.ObjsTexAnime(1, 1, "目あき～目とじ")
		event.ObjsTexAnime(1, 1, "口あき～口とじ")
		at = 52
		helper_1584c528(3560230, -1)
		event.ResetPakuAnim()
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-2715.35, 28.98, 1572.42, -83.24, 17.19, 9.16)
		event.CmrsAddPas(-4454.34, 28.98, 2605.23, -83.24, 17.19, 9.16)
		event.CmrsStartPas()
		event.FadeOutBgm(200)
		at = 53
		wait_frames(170)
		event.SetFadeOut(30)
		at = 54
		wait_frames(30)
		at = 55
		wait_camera()
		event.SndSeStop(var4, 30)
		event.StopBgm(0)
		at = 56
		vm.wait(56)
		at = 57
		vm.wait(57)
		at = 58
		vm.wait(58)
		at = 59
		vm.wait(59)
		event.LoadBgm(112)
		event.PlayBgm(0)
		event.DeleteChara(9)
		event.LoadChara(5, "event/e300/e356/e356_lin3.gltf", "info", 9)
		event.CharaActive(0, 9)
		event.EohSyncChara(4, 9)
		event.ObjsInit(4, 9)
		event.ObjsSyncObj(4, 4)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.ObjsSetPos(4, -137.49, 0.0, 51.6)
		event.ObjsSetRot(4, 0.0, -1.24, 0.0)
		event.ObjsSetPos(5, -137.49, 0.0, 51.6)
		event.ObjsSetRot(5, 0.0, -1.24, 0.0)
		event.CharaActive(1, 9)
		event.CharaActive(0, global16)
		event.CharaActive(0, global17)
		event.CharaActive(0, 12)
		event.ObjsSetMotion(4, "ひざまくら", 4)
		event.ObjsSetMotion(5, "ひざまくら", 4)
		event.EohSetShow(9, 0)
		event.FuncPointShow("", "func2", 0)
		event.FuncPointShow("", "func3", 0)
		event.FuncPointShow("", "func0", 1)
		event.CmrsSetPos(-27.09, 20.37, 12.51)
		event.CmrsSetRef(-106.92, 28.16, 40.78)
		event.SetFadeIn(30)
		at = 60
		wait_frames(60)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(200)
		event.CmrsAddPas(-207.92, 44.8, 103.93, -142.38, 14.02, 55.1)
		event.CmrsAddPas(-170.48, 44.8, 76.03, -142.38, 14.02, 55.1)
		event.CmrsStartPas()
		at = 61
		wait_camera()
		event.SetPakuAnim(4, "わらい口パク")
		at = 62
		helper_4116e6bb(3560270)
		event.ResetPakuAnim()
		at = 63
		wait_frames(60)
		event.CmrsSetPos(-27.09, 20.37, 12.51)
		event.CmrsSetRef(-106.92, 28.16, 40.78)
		event.SetPakuAnim(4, "わらい口パク")
		at = 64
		helper_4116e6bb(3560280)
		event.ResetPakuAnim()
		at = 65
		wait_frames(30)
		event.CmrsSetPos(-132.45, 11.9, 87.83)
		event.CmrsSetRef(-142.38, 10.03, 55.1)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "目あき～かなし目とじ")
		event.ObjsSetMotion(4, "下向く", 6)
		event.ObjsNextMotion(4, "下向くL", 4)
		event.SetPakuAnim(4, "わらい口パク")
		at = 66
		helper_4116e6bb(3560290)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "わらい口パク")
		at = 67
		helper_4116e6bb(3560295)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "わらい口パク")
		at = 68
		helper_4116e6bb(3560300)
		event.ResetPakuAnim()
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "かなし目とじ～目あき")
		event.ObjsSetMotion(4, "下向く戻り", 6)
		event.ObjsNextMotion(4, "ひざまくら", 4)
		event.SetPakuAnim(4, "わらい口パク")
		at = 69
		helper_4116e6bb(3560310)
		event.ResetPakuAnim()
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "涙目あき～目とじ")
		event.ObjsSetMotion(4, "涙をふく", 6)
		event.ObjsNextMotion(4, "ひざまくら", 4)
		at = 70
		wait_frames(60)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "わらい顔")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.CmrsSetPos(-27.09, 20.37, 12.51)
		event.CmrsSetRef(-106.92, 28.16, 40.78)
		event.SetPakuAnim(4, "通常口パク")
		at = 71
		helper_4116e6bb(3560320)
		event.ResetPakuAnim()
		at = 72
		wait_frames(60)
		event.CmrsSetPos(-169.91, 44.8, 75.61)
		event.CmrsSetRef(-142.38, 14.02, 55.1)
		event.CmrsMove2(-189.8, 92.55, 87.58, -142.38, 14.02, 55.1, 200, 2, 1.0)
		event.SetPakuAnim(4, "通常口パク")
		at = 73
		helper_4116e6bb(3560330)
		event.ResetPakuAnim()
		at = 74
		wait_camera()
		event.CmrsSetPos(-1140.72, -772.93, 5162.45)
		event.CmrsSetRef(-1053.47, -759.54, 4629.56)
		event.CmrsMove2(-1140.72, -772.93, 5162.45, -1053.47, -306.64, 4629.56, 200, 2, 1.0)
		event.FadeOutBgm(200)
		at = 75
		wait_frames(200)
		event.StopBgm(0)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_23200000()
			wait_frames_skipping(4)
		end
		if at <= 2 then
			helper_52aadc70(3560080, -1)
		end
		if at <= 3 then
			helper_52aadc70(3560090, -1)
		end
		if at <= 4 then
			wait_frames_skipping(30)
		end
		if at <= 5 then
			wait_frames_skipping(90)
		end
		if at <= 6 then
			wait_frames_skipping(60)
		end
		if at <= 7 then
			wait_frames_skipping(60)
		end
		if at <= 8 then
			wait_frames_skipping(60)
		end
		if at <= 9 then
			wait_frames_skipping(100)
		end
		if at <= 10 then
			helper_344d6cd8()
		end
		if at <= 11 then
			wait_frames_skipping(60)
		end
		if at <= 12 then
			wait_frames_skipping(60)
		end
		if at <= 13 then
			wait_frames_skipping(70)
		end
		if at <= 14 then
			helper_238b5abc(5)
		end
		if at <= 15 then
			wait_frames_skipping(60)
		end
		if at <= 16 then
			helper_8cd371d7(3560100)
		end
		if at <= 17 then
			wait_frames_skipping(30)
		end
		if at <= 18 then
			wait_frames_skipping(40)
		end
		if at <= 19 then
			helper_238b5abc(1)
		end
		if at <= 20 then
			wait_frames_skipping(60)
		end
		if at <= 21 then
			wait_frames_skipping(60)
		end
		if at <= 22 then
			wait_frames_skipping(90)
		end
		if at <= 23 then
			helper_8cd371d7(3560110)
		end
		if at <= 24 then
			helper_8cd371d7(3560120)
		end
		if at <= 25 then
			wait_frames_skipping(30)
		end
		if at <= 26 then
			helper_8cd371d7(3560130)
		end
		if at <= 27 then
			wait_frames_skipping(30)
		end
		if at <= 28 then
			wait_frames_skipping(60)
		end
		if at <= 29 then
			wait_frames_skipping(90)
		end
		if at <= 34 then
			helper_8cd371d7(3560140)
		end
		if at <= 35 then
			helper_8cd371d7(3560150)
		end
		if at <= 36 then
			helper_8cd371d7(3560160)
		end
		if at <= 37 then
			helper_238b5abc(4)
		end
		if at <= 38 then
			helper_8cd371d7(3560170)
		end
		if at <= 39 then
			wait_frames_skipping(30)
		end
		if at <= 40 then
			helper_8cd371d7(3560180)
		end
		if at <= 41 then
			helper_344d6cd8()
		end
		if at <= 42 then
			wait_frames_skipping(30)
		end
		if at <= 43 then
			helper_8cd371d7(3560190)
		end
		if at <= 44 then
			wait_frames_skipping(30)
		end
		if at <= 45 then
			helper_8cd371d7(3560200)
		end
		if at <= 46 then
			helper_8cd371d7(3560210)
		end
		if at <= 47 then
			helper_8cd371d7(3560215)
		end
		if at <= 48 then
			helper_8cd371d7(3560220)
		end
		if at <= 49 then
			wait_frames_skipping(38)
		end
		if at <= 50 then
			wait_frames_skipping(30)
		end
		if at <= 51 then
			helper_52aadc70(3560230, -1)
		end
		if at <= 52 then
			wait_frames_skipping(170)
		end
		if at <= 53 then
			wait_frames_skipping(30)
		end
		if at <= 54 then
			helper_344d6cd8()
		end
		if at <= 59 then
			wait_frames_skipping(60)
		end
		if at <= 60 then
			helper_344d6cd8()
		end
		if at <= 61 then
			helper_8cd371d7(3560270)
		end
		if at <= 62 then
			wait_frames_skipping(60)
		end
		if at <= 63 then
			helper_8cd371d7(3560280)
		end
		if at <= 64 then
			wait_frames_skipping(30)
		end
		if at <= 65 then
			helper_8cd371d7(3560290)
		end
		if at <= 66 then
			helper_8cd371d7(3560295)
		end
		if at <= 67 then
			helper_8cd371d7(3560300)
		end
		if at <= 68 then
			helper_8cd371d7(3560310)
		end
		if at <= 69 then
			wait_frames_skipping(60)
		end
		if at <= 70 then
			helper_8cd371d7(3560320)
		end
		if at <= 71 then
			wait_frames_skipping(60)
		end
		if at <= 72 then
			helper_8cd371d7(3560330)
		end
		if at <= 73 then
			helper_344d6cd8()
		end
		if at <= 74 then
			wait_frames_skipping(200)
		end
		return true
	end)
	at = 76
	vm.entry(76)
	event.CancelDramaScene()
	event.SetFadeOut(30)
	at = 77
	wait_frames(30)
	event.SetProjection(projection)
	event.SetTime(time)
	event.SetTimeStepEnable(1)
	event.SndSeAllStop(4)
	event.SndSeAllStop(1)
	event.SoundLoadCancel()
	event.BgmLoadCancel()
	event.EsmClear()
	event.EohSetShow(9, 1)
	event.EohSetShow(15, 0)
	event.EohSetFootSoundId(1, 0)
	event.SndSeStop(var4, 14)
	event.SndSeStop(var4, 18)
	event.SndSeStop(var4, 19)
	event.SndSeStop(var4, 25)
	event.SndSeStop(var4, 30)
	event.SetMotionBlur(0)
	at = 78
	vm.wait(78)
	at = 79
	helper_31840()
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_10aa8()
	local active_chr_no: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	event.Initialize()
	event.AssignStack(5)
	event.ClearStack(5)
	event.InitSepia(5)
	event.StartSepia()
	vm.wait(1)
	vm.wait(2)
	active_chr_no = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 or active_chr_no == 3 then
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			global4 = out1 or global4
			global5 = out2 or global5
			global6 = out3 or global6
		end
		do
			local _, out2, _ = event.GetCharaRot(0)
			global7 = out2 or global7
		end
		event.DngSetupMainUnit(0)
		event.SetActiveChrNo(0)
		event.SetCharaChangeMask(0, 1)
		event.SetCharaChangeMask(2, 1)
		event.SetCharaChangeMask(1, 0)
		event.SetCharaChangeMask(3, 0)
		event.SetCharaPos(0, global0, global1, global2)
		event.SetCharaRot(0, 0.0, global3, 0.0)
		event.LoadSound(3690)
	else
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			global0 = out1 or global0
			global1 = out2 or global1
			global2 = out3 or global2
		end
		do
			local _, out2, _ = event.GetCharaRot(0)
			global3 = out2 or global3
		end
		event.DngSetupMainUnit(1)
		event.SetActiveChrNo(1)
		event.SetCharaChangeMask(0, 0)
		event.SetCharaChangeMask(2, 0)
		event.SetCharaChangeMask(1, 1)
		event.SetCharaChangeMask(3, 1)
		event.SetCharaPos(0, global4, global5, global6)
		event.SetCharaRot(0, 0.0, global7, 0.0)
		event.LoadSound(3691)
	end
	event.DngCollisionAllClr()
	event.SetMotion(0, "かまえ立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.ResetCamera(1, 3.14, 20.0)
	do
		local out1, out2, out3 = event.GetBeforeCameraPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	do
		local out1, out2, out3 = event.GetBeforeCameraRef()
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	event.SetCameraPos(pos_x, pos_y, pos_z)
	event.SetCameraRef(pos_x_2, pos_y_2, pos_z_2)
	event.EndSepia()
	event.SetCrossfade(1, 1, 20)
	vm.wait(3)
	event.Finish()
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
script.event_99 = helper_108ec

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event.Initialize()
	event.SetCharaPos(0, 0.0, 0.0, 0.0)
	event.SetCharaRot(0, 0.0, 0.0, 0.0)
	event.SetFadeIn(30)
	vm.wait(1)
	event.Finish()
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
script.key_open = helper_3cb94

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	local active_chr_no: s32 = 0
	local stage_id: s32 = 0
	local var2: s32 = 0
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.FadeOutBgm(10)
	event.SetFadeOut(10)
	wait_frames(10)
	event.StopBgm(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		event.DngSetupMainUnit(0)
	end
	if active_chr_no == 3 then
		event.DngSetupMainUnit(1)
	end
	event.DelMonster(-1)
	stage_id = event.DngGetStageId() or stage_id
	var2 = event.DngGetFloorId() or var2
	event.SetFloorInfo(stage_id, var2, 5, 2)
	vm.wait(2)
	event.GotoEdit(62, 504)
end

--- Event 502, which map data, a script or the engine runs by number.
script.event_502 = helper_13668

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	local time: f32 = 0
	local active_chr_no: s32 = 0
	local at: number = 0
	return vm.guard(function()
		helper_108ec()
		at = 1
		helper_1b1b4()
		at = 2
		helper_26f10()
		event.EohSyncObj_2(0, "p01_battleship")
		event.EohSetPos(0, -2194.9, 487.8, -474.2)
		event.EohSetRot(0, 0.0, 0.0, 0.0)
		time = event.GetTime() or time
		event.SetKeepTime(time)
		event.SetTimeStepEnable(0)
		event.SetTime(18.0)
		at = 3
		vm.wait(3)
		event.Initialize()
		at = 4
		vm.wait(4)
		event.StopBgm(0)
		at = 5
		wait_frames(4)
		event.LoadBgm(190)
		event.PlayBgm(0)
		event.LoadSound(3691)
		event.FuncPointShow("", "func0", 0)
		event.FuncPointShow("", "func2", 1)
		event.FuncPointShow("", "func3", 1)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no ~= 1 then
			event.DngSetupMainUnit(1)
			event.SetActiveChrNo(1)
		end
		event.SetCharaChangeMask(0, 0)
		event.SetCharaChangeMask(2, 0)
		event.SetBitCtrl(1, 1)
		event.SetCharaPos(0, -2195.0, 488.0, -515.0)
		event.SetCharaRot(0, 0.0, 0.0, 0.0)
		event.SetCameraRef(-2195.0, 513.0, -475.0)
		event.SetCameraPos(-2195.0, 518.0, -555.0)
		event.ResetCamera(0)
		event.SndInitPort(4)
		event.LoadMonsterFile(510, 1)
		event.LoadMonsterFile(513, 0)
		event.LoadMonsterFile(602, 0)
		event.AutoSetMonster(510, -2195.0, 488.0, -435.0, 0.0, 3.14, 0.0)
		event.AutoSetMonster(602, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		event.SetStatusbarShow(1, 0.16666667)
		event.SetFadeIn(30)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 5 then
			if at <= 1 then
				at = 2
				helper_26f10()
				return vm.continue_with(function()
					event.EohSyncObj_2(0, "p01_battleship")
					event.EohSetPos(0, -2194.9, 487.8, -474.2)
					event.EohSetRot(0, 0.0, 0.0, 0.0)
					time = event.GetTime() or time
					event.SetKeepTime(time)
					event.SetTimeStepEnable(0)
					event.SetTime(18.0)
					at = 3
					vm.wait(3)
					event.Initialize()
					at = 4
					vm.wait(4)
					event.StopBgm(0)
					at = 5
					wait_frames(4)
					event.LoadBgm(190)
					event.PlayBgm(0)
					event.LoadSound(3691)
					event.FuncPointShow("", "func0", 0)
					event.FuncPointShow("", "func2", 1)
					event.FuncPointShow("", "func3", 1)
					active_chr_no = event.GetActiveChrNo() or active_chr_no
					if active_chr_no ~= 1 then
						event.DngSetupMainUnit(1)
						event.SetActiveChrNo(1)
					end
					event.SetCharaChangeMask(0, 0)
					event.SetCharaChangeMask(2, 0)
					event.SetBitCtrl(1, 1)
					event.SetCharaPos(0, -2195.0, 488.0, -515.0)
					event.SetCharaRot(0, 0.0, 0.0, 0.0)
					event.SetCameraRef(-2195.0, 513.0, -475.0)
					event.SetCameraPos(-2195.0, 518.0, -555.0)
					event.ResetCamera(0)
					event.SndInitPort(4)
					event.LoadMonsterFile(510, 1)
					event.LoadMonsterFile(513, 0)
					event.LoadMonsterFile(602, 0)
					event.AutoSetMonster(510, -2195.0, 488.0, -435.0, 0.0, 3.14, 0.0)
					event.AutoSetMonster(602, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
					event.SetStatusbarShow(1, 0.16666667)
					event.SetFadeIn(30)
					event.Finish()
					return
				end)
			end
			if at <= 4 then
				wait_frames_skipping(4)
			end
			return 0
		end
		return nil
	end)
end

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	local keep_time: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.SetFadeOut(0)
		event.StopBgm(0)
		keep_time = event.GetKeepTime() or keep_time
		event.SetTime(keep_time)
		at = 1
		helper_2b9e4()
		at = 2
		helper_33a7c()
		event.MapJump_3(-1, "d03b01", 503)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_33a7c()
				return vm.continue_with(function()
					event.MapJump_3(-1, "d03b01", 503)
					at = 3
					vm.wait(3)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local flag: s32 = 0
	helper_10aa8()
	flag = event.GetFlag(64) or flag
	if flag == 0 then
		wait_frames(20)
		event.DngPause(3, 1)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		event.MesMake_2(0, "Protect Lin from the approaching Evil Flame!")
		helper_75684dd8(0, -1, 8, 0, 0)
		event.SetFlag(64, 1)
		event.DngPause(3, 0)
	end
end

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	local block: s32 = 0
	event.Initialize()
	event.DngPause(3, 1)
	event.FadeOutBgm(30)
	event.SetLoadbgFile_3(
		"snd2/bgm/bg_060.sound.json",
		"textures/dungeon/image/gameover/gameover_1.json",
		"event/boss_btl_lose_1.txt"
	)
	event.SetStatusbarShow(0, 0.033333335)
	wait_frames(30)
	helper_479dc9e9()
	event.StopBgm(0)
	event.LoadBgmPack(60)
	set_window_mode(0, 7)
	event.LoadMes(0, 5, "event/boss_btl_lose_1.txt")
	helper_0e75aa9e(3520430, -1, 10)
	wait_frames(10)
	event.LoadMes(0, -1)
	event.PlayBgm(0)
	block = event.LoadImg_4(5, "textures/dungeon/image/gameover/gameover_1.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "gameover1", block)
	event.SpriteSetColor(0, 128, 128, 128, 128)
	event.SpriteSetUvsize(0, 0, 0, 576, 128)
	event.SpriteSetPutsize(0, 576, 128)
	event.SpriteSetPos(0, -320, 208)
	event.SpriteSetDraw(0, 1)
	event.EohSyncSprite(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsMove(0, 288, 208, 0.0, 20)
	wait_frames(30)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "gameover1", block)
	event.SpriteSetColor(1, 128, 128, 128, 0)
	event.SpriteSetUvsize(1, 0, 128, 576, 64)
	event.SpriteSetPutsize(1, 576, 64)
	event.SpriteSetPos(1, 256, 208)
	event.SpriteSetDraw(1, 1)
	event.EohSyncSprite(1, 1)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	event.ObjsSetColor(1, 128, 128, 128, 128, 120)
	wait_frames(120)
	while true do
		if helper_581cb30c(0) ~= 0 then
			break
		else
			vm.wait(7)
		end
	end
	event.FadeOutBgm(30)
	event.SetFadeOut(30)
	wait_frames(30)
	event.StopBgm(0)
	event.SetExitFlag(1)
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 1 or active_chr_no == 3 then
			var1 = vm.float_bits(event.GetRand(100)) or var1
			if vm.imod(var1, 2) == 0 then
				at = 1
				helper_47084b1b(0, 8530100)
			else
				at = 2
				helper_47084b1b(0, 8530110)
			end
		else
			at = 3
			helper_f0ee9a01(0)
		end
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				helper_80ad60c2(0, 8530110)
			end
			if at <= 2 then
				helper_5a05ed59(0)
			end
			return 0
		end
		return nil
	end)
end

--- Event 13560, which map data, a script or the engine runs by number.
function script.event_13560()
	local at: number = 0
	return vm.guard(function()
		event.StopBgm(0)
		at = 1
		helper_2b9e4()
		at = 2
		helper_33a7c()
		event.MapJump_3(-1, "d03b01", 503)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_33a7c()
				return vm.continue_with(function()
					event.MapJump_3(-1, "d03b01", 503)
					at = 3
					vm.wait(3)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 23030, which map data, a script or the engine runs by number.
function script.event_23030()
	local argc: s32 = 0
	local active_chr_no: s32 = 0
	helper_108ec()
	event.Initialize()
	vm.wait(1)
	event.EohSyncObj_2(0, "p06_d03b01")
	event.EohSetShow(0, 1)
	event.SetTime(17.5)
	event.SetTimeStepEnable(0)
	event.SetCharaMaxhp(0, 240)
	event.SetCharaMaxhp(1, 96)
	event.SetCharaDefence(0, 94)
	event.SetCharaDefence(1, 28)
	argc = event.GetItemNum(270) or argc
	if argc < 20 then
		event.AddItem(270, vm.i32(20 - argc))
	end
	event.AddItem(20)
	event.SetCharaEquip(0, 20)
	event.AddItem(33)
	event.SetCharaEquip(0, 33)
	event.AddItem(54)
	event.SetCharaEquip(1, 54)
	event.AddItem(104)
	event.SetCharaEquip(1, 104)
	event.FuncPointShow("", "func0", 0)
	event.FuncPointShow("", "func2", 1)
	event.FuncPointShow("", "func3", 1)
	event.LoadBgm(190)
	event.PlayBgm(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no ~= 1 then
		event.DngSetupMainUnit(1)
		event.SetActiveChrNo(1)
	end
	event.SetCharaPos(0, -2195.0, 488.0, -515.0)
	event.SetCharaRot(0, 0.0, 0.0, 0.0)
	event.SetCameraRef(-2195.0, 513.0, -475.0)
	event.SetCameraPos(-2195.0, 518.0, -555.0)
	event.ResetCamera(0)
	event.LoadMonsterFile(510, 1)
	event.LoadMonsterFile(513, 0)
	event.LoadMonsterFile(602, 0)
	event.AutoSetMonster(510, -2195.0, 488.0, -435.0, 0.0, 3.14, 0.0)
	event.AutoSetMonster(602, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	event.SetStatusbarShow(1, 0.16666667)
	event.SetCharaChangeMask(0, 0)
	event.SetCharaChangeMask(2, 0)
	event.SetBitCtrl(1, 1)
	event.SetFadeIn(30)
	event.Finish()
end

return script
