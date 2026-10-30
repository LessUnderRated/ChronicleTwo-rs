--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_ac9d5b12 = require("@lib/event/helper_ac9d5b12")
local helper_d355d559 = require("@lib/event/helper_d355d559")
local wait_frames = require("@lib/event/wait_frames")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_b1651851(arg0: s32)
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	local battle_bgm_vol: f32 = 0
	local var6: s32 = 0
	local battle_bgm_vol_2: f32 = 0
	local var8: s32 = 0
	event.SetCrossfade(10)
	vm.wait(1)
	world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
		helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.EohSyncChara(0, 0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetMotion(0, "走り", 4)
	if arg0 == 0 then
		event.EohSetFootSoundId(0, 16)
		event.CmrsSetPos(71.85, 16.72, -238.11)
		event.CmrsSetRef(10.53, 73.66, -36.93)
		event.ObjsSetPos(0, 0.0, 30.68, -72.59)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsMove(0, 0.0, 82.86, -9.67, 30)
		wait_frames(15)
		event.SetFadeOut(15)
		wait_frames(15)
		wait_objects(0)
		event.EohSetFootSoundId(0, 14)
		event.SeAllStop()
		event.LoadSound(4682)
		helper_ac9d5b12()
		battle_bgm_vol = vm.bits_float(event.GetBtlBgmVol()) or battle_bgm_vol
		var6 = event.GetEventInfoSndid(4) or var6
		if battle_bgm_vol <= 0.0 then
			event.SndSeStop(var6, 0)
		else
			event.SndSePlay(var6, 0)
			event.SndSetSeVol(var6, 0, battle_bgm_vol)
		end
		event.SetFadeIn(15)
		event.CmrsSetPos(0.0, 3253.14, -28.11)
		event.CmrsSetRef(0.0, 3230.0, 130.0)
		event.SetActiveLight(0)
		event.ObjsSetPos(0, 0.0, 3157.0, 45.0)
		event.ObjsResetDaPosition(0)
		event.ObjsMove(0, 0.0, 3200.0, 95.0, 20)
		event.ObjsMove(0, 0.0, 3200.0, 130.0, 10)
		wait_objects(0)
	else
		event.EohSetFootSoundId(0, 14)
		event.CmrsSetPos(0.0, 3239.0, 220.74)
		event.CmrsSetRef(0.0, 3234.0, 130.0)
		event.ObjsSetPos(0, 0.0, 3200.0, 94.0)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsMove(0, 0.0, 3147.0, 53.0, 30)
		wait_frames(15)
		event.SetFadeOut(15)
		wait_frames(15)
		wait_objects(0)
		event.EohSetFootSoundId(0, 16)
		event.SeAllStop()
		event.LoadSound(4600)
		helper_ac9d5b12()
		battle_bgm_vol_2 = vm.bits_float(event.GetBtlBgmVol()) or battle_bgm_vol_2
		var8 = event.GetEventInfoSndid(4) or var8
		if battle_bgm_vol_2 <= 0.0 then
			event.SndSeStop(var8, 0)
		else
			event.SndSePlay(var8, 0)
			event.SndSetSeVol(var8, 0, battle_bgm_vol_2)
		end
		event.SetFadeIn(15)
		event.CmrsSetPos(-56.2, 52.61, -305.55)
		event.CmrsSetRef(1.04, 57.84, -87.81)
		event.SetActiveLight(8)
		event.ObjsSetPos(0, 0.0, 50.06, -39.81)
		event.ObjsResetDaPosition(0)
		event.ObjsMove(0, 0.0, 20.0, -73.92, 16)
		event.ObjsMove(0, 0.0, 5.0, -130.0, 16)
		wait_objects(0)
	end
	event.EohSetFootSoundId(0, 0)
	event.ObjsSetMotion(0, "立ち")
	event.ResetCamera(0)
	event.Finish()
end

return helper_b1651851
