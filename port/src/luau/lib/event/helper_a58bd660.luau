--!strict
-- Shared event helper used by 4 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_b11a919c = require("@lib/event/helper_b11a919c")
local helper_bbae31fd = require("@lib/event/helper_bbae31fd")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_a58bd660(
	world_coord_pos: f32,
	world_coord_pos_2: f32,
	world_coord_pos_3: f32,
	world_coord_rot: f32,
	arg4: s32,
	arg5: s32
)
	local now_party_chara_id: s32 = 0
	local active_chr_no: s32 = 0
	local flag: s32 = 0
	local var12: s32 = 0
	local var13: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var17: s32 = 0
	local active_chr_no_2: s32 = 0
	local at: number = 0
	vm.section(function()
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetMotion(0, "立ち")
		if arg4 == 0 then
			event.SetLoadbgFile_2("event/time_gate/blue/tg_maru_blue.gltf", "event/time_gate/blue/tg_sita_blue.gltf")
		else
			event.SetLoadbgFile_2("event/time_gate/red/tg_maru_red.gltf", "event/time_gate/red/tg_sita_red.gltf")
		end
		event.CmrsInit()
		event.CmrsFadeInit()
		event.CmrsFadeOut(30)
		at = 1
		wait_camera()
		event.InitDramaScene()
		event.SetSkipBotton(20)
		event.SetSkipFcol(255.0, 255.0, 255.0)
		event.SetCharaShow(120, 0)
		event.SetCharaShow(121, 0)
		event.AssignStack(5)
		event.ClearStack(5)
		event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
		at = 2
		helper_479dc9e9()
		if arg4 == 0 then
			event.LoadChara(5, "event/time_gate/blue/tg_maru_blue.gltf", "info", 35)
			event.CharaActive(35)
			event.SetCharaType(35, 4)
			event.EohSyncChara(3, 35)
			event.ObjsInit(3)
			event.ObjsSyncObj(3, 3)
			event.ObjsSetPos(3, 0.0, 70.0, 0.0)
			event.ObjsSetRot(3, 0.0, 0.0, 0.0)
			event.LoadChara(5, "event/time_gate/blue/tg_sita_blue.gltf", "info2", 36)
			event.CharaActive(36)
			event.SetCharaType(36, 4)
			event.EohSyncChara(4, 36)
			event.ObjsInit(4)
			event.ObjsSyncObj(4, 4)
			event.ObjsSetPos(4, 0.0, 0.88, 0.0)
			event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		else
			event.LoadChara(5, "event/time_gate/red/tg_maru_red.gltf", "info", 35)
			event.CharaActive(35)
			event.SetCharaType(35, 4)
			event.EohSyncChara(3, 35)
			event.ObjsInit(3)
			event.ObjsSyncObj(3, 3)
			event.ObjsSetPos(3, 0.0, 70.0, 0.0)
			event.ObjsSetRot(3, 0.0, 0.0, 0.0)
			event.LoadChara(5, "event/time_gate/red/tg_sita_red.gltf", "info2", 36)
			event.CharaActive(36)
			event.SetCharaType(36, 4)
			event.EohSyncChara(4, 36)
			event.ObjsInit(4)
			event.ObjsSyncObj(4, 4)
			event.ObjsSetPos(4, 0.0, 0.88, 0.0)
			event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		end
		now_party_chara_id = event.GetNowPartyChara() or now_party_chara_id
		if now_party_chara_id ~= -1 then
			event.LoadCharaNpc(0, 5, now_party_chara_id, 34)
			event.CharaActive(34)
			event.EohSyncChara(2, 34)
			event.EohSetPos(2, 23.24, 0.0, -46.31)
			event.EohSetRot(2, 0.0, -0.44, 0.0)
			event.EohSetTexAnim(2, 0)
		end
		if arg5 ~= 0 then
			active_chr_no = event.GetActiveChrNo() or active_chr_no
			if active_chr_no == 1 then
				event.GetEquipItemno(0, 2)
				event.GetEquipItemno(0, 3)
				event.GetEquipItemno(0, 4)
			end
			if active_chr_no == 0 then
				event.GetEquipItemno(1, 2)
				event.GetEquipItemno(1, 3)
				event.GetEquipItemno(1, 4)
			end
			if active_chr_no == 1 then
				event.LoadMotion(5, "event/time_gate/blue/c02a_warp.gltf", "info", 0)
				event.CharaActive(0)
				event.EohSyncChara(0, 0)
				event.LoadChara(5, "chara/c01_base.gltf", "info", 33)
				event.CharaActive(33)
				event.EohSyncChara(1, 33)
				event.LoadEquip(5, 0, 4, "info", 33)
				event.LoadEquip(5, 0, 3, "info", 33)
				event.LoadEquip(5, 0, 2, "info", 33, 37)
				event.CharaActive(37)
				event.EohSyncChara(5, 37)
			end
			if active_chr_no == 0 then
				event.LoadChara(5, "chara/c02_base.gltf", "info", 32)
				event.CharaActive(32)
				event.EohSyncChara(0, 32)
				event.LoadEquip(5, 1, 4, "info", 32)
				event.LoadEquip(5, 1, 3, "info", 32)
				event.LoadEquip(5, 1, 2, "info", 32, 37)
				event.LoadMotion(5, "event/time_gate/blue/c02a_warp.gltf", "info", 32)
				event.CharaActive(37)
				event.EohSyncChara(5, 37)
				event.CharaActive(0)
				event.EohSyncChara(1, 0)
			end
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.ObjsSetPos(0, 3.19, 0.0, -55.28)
			event.ObjsSetRot(0, 0.0, 0.0, 0.0)
			event.ObjsSetMotion(0, "立ち", 4, 0.02)
			event.ObjsResetDaPosition(0)
			event.ObjsTexAnime(0, 0)
			event.EohSetPos(1, -23.79, 0.0, -39.77)
			event.EohSetRot(1, 0.0, 0.64, 0.0)
			event.EohSetMotion(1, "立ち", 0.02)
		else
			event.GetEquipItemno(1, 2)
			event.GetEquipItemno(1, 3)
			event.GetEquipItemno(1, 4)
			event.LoadMotion(5, "event/time_gate/blue/c02a_warp.gltf", "info", 0)
			event.CharaActive(0)
			event.EohSyncChara(0, 0)
			event.ObjsInit(0)
			event.ObjsSyncObj(0, 0)
			event.ObjsSetPos(0, 3.19, 0.0, -55.28)
			event.ObjsSetRot(0, 0.0, 0.0, 0.0)
			event.ObjsSetMotion(0, "立ち", 4, 0.02)
			event.ObjsResetDaPosition(0)
			event.ObjsTexAnime(0, 0)
		end
		flag = event.GetFlag(612) or flag
		if flag ~= 0 then
			var12 = event.SndLoadSound_3(8, "snd2/sp/sp_043.sound.json") or var12
		else
			var13 = event.SndLoadSound_3(8, "snd2/sp/sp_013.sound.json") or var13
		end
		if arg4 == 0 then
			event.SetLoadbgFile_2("event/time_gate/blue/atora_shine2.gltf", "event/time_gate/blue/atora_glare2.gltf")
		else
			event.SetLoadbgFile_2("event/time_gate/red/atora_shine2.chr", "event/time_gate/red/atora_glare2.chr")
		end
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetPos(0, 0.0, 0.0, 0.0)
		event.ObjsResetDaPosition(0)
		if flag ~= 0 then
			event.SndSePlay(var12, 0)
		else
			event.SndSePlay(var13, 0)
			at = 3
			wait_frames(20)
		end
		event.SetFadeIn(30)
		if flag ~= 0 then
			event.CmrsSetPos(21.59, 19.4, 49.13)
			event.CmrsSetRef(3.27, 21.44, 1.91)
		else
			event.CmrsSetPos(-1.62, 25.82, 35.3)
			event.CmrsSetRef(-0.26, 22.33, -0.02)
		end
		event.ObjsSetMotion(0, "タイムワープ", 6)
		event.ObjsNextMotion(0, "タイムワープL", 5)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "目を閉じる")
		event.ObjsTexAnime(0, 1, "すまし口")
		at = 4
		wait_objects(0)
		at = 5
		helper_479dc9e9()
		if arg4 == 0 then
			event.LoadChara(5, "event/time_gate/blue/atora_shine2.gltf", "info", 38)
		else
			event.LoadChara(5, "event/time_gate/red/atora_shine2.chr", "info", 38)
		end
		if flag ~= 0 then
			event.CharaActive(0, 38)
		else
			event.CharaActive(1, 38)
		end
		event.SetCharaType(38, 4)
		event.EohSyncChara(6, 38)
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 6)
		do
			local out1, out2, out3 = event.EohGetFramePos(0, "atoramiria")
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.ObjsSetPos(6, pos_x + vm.f32(0.18), pos_y + vm.f32(0.02), pos_z + vm.f32(0.3))
		event.ObjsSetRot(6, 0.0, 0.0, 0.0)
		var17 = event.GetEquipItemno(1, 4) or var17
		if var17 == 263 then
			print("pumpkin---------------------------\n")
			event.ObjsSetPos(6, -0.35, 22.68, 1.67)
			event.ObjsSetRot(6, 0.0, -6.33, 0.0)
		end
		if var17 == 264 then
			print("stripte -----------------------------\n")
			event.ObjsSetPos(6, -0.48, 22.78, 2.07)
			event.ObjsSetRot(6, 0.0, -6.4, 0.0)
		end
		if var17 == 265 then
			event.ObjsSetPos(6, -0.33, 22.73, 1.95)
			event.ObjsSetRot(6, 0.0, -6.4, 0.0)
		end
		if var17 == 266 then
			print("princess-----------------------------\n")
			event.ObjsSetPos(6, -0.42, 22.89, 1.99)
			event.ObjsSetRot(6, 0.0, -6.4, 0.0)
		end
		if var17 == 267 then
			print("separate----------------------------\n")
			event.ObjsSetPos(6, -0.23, 23.26, 2.52)
			event.ObjsSetRot(6, 0.0, -6.4, 0.0)
		end
		event.ObjsSetMotion(0, "タイムワープL", 5)
		event.ObjsSetMotion(6, "発動", 6)
		event.ObjsNextMotion(6, "発動L", 4)
		event.ObjsTexAnime(0, 0, "目を閉じる")
		event.ObjsTexAnime(0, 1, "閉じたまま")
		event.ObjsTexAnime(0, 1, "すまし口")
		if flag ~= 0 then
			event.SndSePlay(var12, 2)
		end
		at = 6
		wait_objects(6)
		if arg4 == 0 then
			event.LoadChara(5, "event/time_gate/blue/atora_glare2.gltf", "info", 39)
		else
			event.LoadChara(5, "event/time_gate/red/atora_glare2.chr", "info", 39)
		end
		event.CharaActive(39)
		event.SetCharaType(39, 4)
		event.EohSyncChara(7, 39)
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 7)
		event.ObjsSetPos(7, 0.0, 0.88, 0.0)
		event.ObjsSetRot(7, 0.0, 0.0, 0.0)
		event.CmrsSetPos(-2.99, 25.82, 71.15)
		event.CmrsSetRef(-0.26, 22.33, 0.02)
		event.CmrsMove2(-7.1, 25.8, 178.24, -0.26, 45.36, 0.02, 90, 0, 0.4)
		event.ObjsSetScale(3, 2.8, 2.8, 2.8, 90)
		event.ObjsSetScale(4, 2.0, 2.0, 2.0, 90)
		event.ObjsSetScale(7, 2.0, 2.0, 2.0, 90)
		at = 7
		wait_frames(60)
		event.SetFadeOut(60, 255.0, 255.0, 255.0)
		at = 8
		wait_frames(60)
		at = 9
		helper_b11a919c(0)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_344d6cd8()
		end
		if at <= 2 then
			wait_frames_skipping(20)
		end
		if at <= 3 then
			helper_238b5abc(0)
		end
		if at <= 4 then
			helper_344d6cd8()
		end
		if at <= 5 then
			print("pumpkin---------------------------\n")
			print("stripte -----------------------------\n")
			print("princess-----------------------------\n")
			print("separate----------------------------\n")
			helper_238b5abc(6)
		end
		if at <= 6 then
			wait_frames_skipping(60)
		end
		if at <= 7 then
			wait_frames_skipping(60)
		end
		if at <= 8 then
			helper_bbae31fd(0)
		end
		return true
	end)
	at = 10
	vm.entry(10)
	event.CancelDramaScene()
	if flag ~= 0 then
		event.SndSeStop(var12, 0)
	end
	event.FadeOutBgm(30)
	event.SndSeStop(var13, 0)
	now_party_chara_id = event.GetNowPartyChara() or now_party_chara_id
	active_chr_no_2 = event.GetActiveChrNo() or active_chr_no_2
	event.DeleteChara(37)
	if active_chr_no_2 == 1 then
		event.DelExtMotion(0)
		event.DeleteChara(33)
	end
	if active_chr_no_2 == 0 then
		event.DeleteChara(32)
	end
	if now_party_chara_id ~= -1 then
		event.DeleteChara(34)
	end
	event.DeleteChara(35)
	event.DeleteChara(36)
	event.DeleteChara(38)
	event.DeleteChara(39)
end

return helper_a58bd660
