--!strict
-- dungeon/sys_script/d04.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_12b74c6d = require("@lib/event/helper_12b74c6d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_271a78ae = require("@lib/event/helper_271a78ae")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_384e16e1 = require("@lib/event/helper_384e16e1")
local helper_39ab7f1f = require("@lib/event/helper_39ab7f1f")
local helper_3cf99f2c = require("@lib/event/helper_3cf99f2c")
local helper_3e279351 = require("@lib/event/helper_3e279351")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_52115bbf = require("@lib/event/helper_52115bbf")
local helper_54991ad7 = require("@lib/event/helper_54991ad7")
local helper_558828de = require("@lib/event/helper_558828de")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_5877209d = require("@lib/event/helper_5877209d")
local helper_5f322f9e = require("@lib/event/helper_5f322f9e")
local helper_6982e9f5 = require("@lib/event/helper_6982e9f5")
local helper_6b9da980 = require("@lib/event/helper_6b9da980")
local helper_6e932de7 = require("@lib/event/helper_6e932de7")
local helper_7203525c = require("@lib/event/helper_7203525c")
local helper_788e145d = require("@lib/event/helper_788e145d")
local helper_79d90c82 = require("@lib/event/helper_79d90c82")
local helper_7c78bc02 = require("@lib/event/helper_7c78bc02")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_92493aa2 = require("@lib/event/helper_92493aa2")
local helper_94011697 = require("@lib/event/helper_94011697")
local helper_998c6893 = require("@lib/event/helper_998c6893")
local helper_a9c4b39b = require("@lib/event/helper_a9c4b39b")
local helper_ac9d5b12 = require("@lib/event/helper_ac9d5b12")
local helper_b669d1f8 = require("@lib/event/helper_b669d1f8")
local helper_bb794e6a = require("@lib/event/helper_bb794e6a")
local helper_c8c8b790 = require("@lib/event/helper_c8c8b790")
local helper_c91e8d2f = require("@lib/event/helper_c91e8d2f")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_d1646134 = require("@lib/event/helper_d1646134")
local helper_d216348b = require("@lib/event/helper_d216348b")
local helper_d355d559 = require("@lib/event/helper_d355d559")
local helper_dff48a5c = require("@lib/event/helper_dff48a5c")
local helper_eef234e4 = require("@lib/event/helper_eef234e4")
local helper_f67d042f = require("@lib/event/helper_f67d042f")
local helper_f7fba8ce = require("@lib/event/helper_f7fba8ce")
local helper_fbf84a80 = require("@lib/event/helper_fbf84a80")
local helper_ff8f9531 = require("@lib/event/helper_ff8f9531")
local helper_ffd0427a = require("@lib/event/helper_ffd0427a")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_3742c()
	local var0: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local language_code: s32 = 0
	local var6: s32 = 0
	local var7: f32 = 0
	local rot_y: f32 = 0
	local var9: f32 = 0
	local vector_x: f32 = 0
	local vector_y: f32 = 0
	local vector_z: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.Initialize()
		event.InitDramaScene()
		event.DngPause(1, 1)
		event.AssignStack(5)
		event.ClearStack(5)
		event.DngPause(32, 1)
		var0 = event.SndLoadSound_3(8, "snd2/sp/sp_033.sound.json") or var0
		do
			local out1, out2, out3, out4 = event.GetDunWorldCoord(2)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
			var4 = out4 or var4
		end
		event.SetWorldCoord(var1, var2, var3, var4)
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 0.0, -145.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsResetDaPosition(0)
		event.EohSetFootSoundId(0, 18)
		language_code = event.GetLanguage() or language_code
		if language_code == 0 then
			event.LoadImg_3(5, "textures/dungeon/image/s_title/logo_d01.json", 0)
		else
			event.LoadImg_3(5, "dungeon/image/s_title/usa/logo_d03.img", 0)
		end
		event.ImgSetName(0, "logo_d03")
		event.ImgSetGet(0, 0, 0, 384, 128)
		event.ImgSetPut(0, -24, 300, 384, 128)
		event.ImgSetColor(0, 128, 128, 128, 0)
		event.ImgSetDraw(1, 0)
		event.ImgSetFade(0, 1, 60)
		var6 = event.GetEventData_2(9) or var6
		if helper_f7fba8ce(var4, 0.0, 1.0) == 0 or helper_f7fba8ce(var4, vm.f32(3.14), 1.0) == 0 then
			event.EohSyncObj_3(1, var6, "d04w10_2-m")
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.EohSyncObj_3(2, var6, "d04w10_4-m")
			event.EohSetShow(2, 1)
			event.ObjsInit(2)
			event.ObjsSyncObj(2, 2)
		else
			event.EohSyncObj_3(1, var6, "d04w10_5-m")
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.EohSyncObj_3(2, var6, "d04w10_6-m")
			event.EohSetShow(2, 1)
			event.ObjsInit(2)
			event.ObjsSyncObj(2, 2)
		end
		event.EohSyncObj_3(3, var6, "d04w10_3-m")
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		at = 2
		helper_ffd0427a(0, 1)
		event.CmrsInit()
		event.CmrsSetPos(51.16, 17.85, 158.67)
		event.CmrsSetRef(-12.94, 64.29, -60.21)
		event.SetFadeIn(30)
		event.SndSePlay(var0, 1)
		do
			local out1, out2, out3 = event.EohGetRot(1)
			var7 = out1 or var7
			rot_y = out2 or rot_y
			var9 = out3 or var9
		end
		do
			local out1, out2, out3 = event.CopyVector(var7, rot_y, var9)
			vector_x = out1 or vector_x
			vector_y = out2 or vector_y
			vector_z = out3 or vector_z
		end
		do
			local out1, out2, out3 = event.EohGetPos(3)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		if helper_f7fba8ce(var4, 0.0, 0.5) == 0 then
			var9 = vm.f32(vector_z + vm.f32(3.1415927))
			var9 = event.AngleLimit(var9) or var9
		end
		if helper_f7fba8ce(var4, vm.f32(3.14), 0.5) == 0 then
			var9 = vm.f32(vector_z - vm.f32(3.1415927))
			var9 = event.AngleLimit(var9) or var9
		end
		if helper_f7fba8ce(var4, vm.f32(1.57), 0.5) == 0 then
			var7 = vm.f32(vector_x + vm.f32(3.1415927))
			var7 = event.AngleLimit(var7) or var7
		end
		if helper_f7fba8ce(var4, vm.f32(-1.57), 0.5) == 0 then
			var7 = vm.f32(vector_x - vm.f32(3.1415927))
			var7 = event.AngleLimit(var7) or var7
		end
		event.ObjsRotation2(1, var7, rot_y, var9, 40, 0, 0.5)
		event.ObjsRotation2(2, var7, rot_y, var9, 40, 0, 0.5)
		at = 3
		wait_objects(1)
		event.ObjsMove2(3, pos_x, pos_y + 80.0, pos_z, 32, 1, 0.5)
		at = 4
		helper_888ab2a3(20)
		event.ObjsSetMotion(0, "走り")
		event.ObjsMove(0, 0.0, 0.0, 0.0, 30)
		at = 5
		wait_objects(3)
		event.ObjsMove2(3, pos_x, pos_y, pos_z, 32, 0, 0.5)
		at = 6
		wait_objects(0)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsMotionDelay(0, 30)
		event.ObjsPosDelay(0, 30)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMove(0, 0.0, 0.0, 40.0, 40)
		event.ObjsMotionDelay(0, 40)
		event.ObjsSetMotion(0, "立ち")
		event.ImgSetFade(0, 0, 60)
		at = 7
		wait_objects(3)
		event.ObjsRotation2(1, vector_x, vector_y, vector_z, 40, 0, 0.5)
		event.ObjsRotation2(2, vector_x, vector_y, vector_z, 40, 0, 0.5)
		at = 8
		helper_ffd0427a(1, 50)
		at = 9
		wait_objects(1)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_c91e8d2f(0, 1)
		end
		if at <= 2 then
			local _ = helper_fbf84a80(var4, 0.0, 1.0) == 0
			local _ = helper_fbf84a80(var4, vm.f32(3.14), 1.0) == 0
			local _ = helper_fbf84a80(var4, 0.0, 0.5) == 0
			var9 = vm.f32(vector_z + vm.f32(3.1415927))
			local _ = helper_fbf84a80(var4, vm.f32(3.14), 0.5) == 0
			var9 = vm.f32(vector_z - vm.f32(3.1415927))
			local _ = helper_fbf84a80(var4, vm.f32(1.57), 0.5) == 0
			var7 = vm.f32(vector_x + vm.f32(3.1415927))
			local _ = helper_fbf84a80(var4, vm.f32(-1.57), 0.5) == 0
			var7 = vm.f32(vector_x - vm.f32(3.1415927))
			helper_238b5abc(1)
		end
		if at <= 3 then
			helper_038a2e4d(20)
		end
		if at <= 4 then
			helper_238b5abc(3)
		end
		if at <= 5 then
			helper_238b5abc(0)
		end
		if at <= 6 then
			helper_238b5abc(3)
		end
		if at <= 7 then
			helper_c91e8d2f(1, 50)
		end
		if at <= 8 then
			helper_238b5abc(1)
		end
		return true
	end)
	at = 10
	vm.entry(10)
	event.SndSeStop(var0, 1)
	event.SetFadeIn(0)
	at = 11
	helper_ffd0427a(1, 1)
	event.DelImg(0)
	event.EohSetPos(0, 0.0, 0.0, 60.0)
	event.EohSetMotion(0, "立ち", 4)
	event.EohSetFootSoundId(0, -1)
	event.CmrsSetRef(0.0, 30.0, 60.0)
	event.CmrsSetPos(0.0, 35.0, -40.0)
	if helper_f7fba8ce(var4, 0.0, 1.0) == 0 or helper_f7fba8ce(var4, vm.f32(3.14), 1.0) == 0 then
		event.EohSyncObj_3(1, var6, "d04w10_2-m")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSyncObj_3(2, var6, "d04w10_4-m")
		event.EohSetShow(2, 1)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
	else
		event.EohSyncObj_3(1, var6, "d04w10_5-m")
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.EohSyncObj_3(2, var6, "d04w10_6-m")
		event.EohSetShow(2, 1)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
	end
	event.EohSyncObj_3(3, var6, "d04w10_3-m")
	event.ObjsInit(3)
	event.ObjsSyncObj(3, 3)
	event.ObjsSetRot(1, vector_x, vector_y, vector_z)
	event.ObjsSetRot(2, vector_x, vector_y, vector_z)
	event.ObjsSetPos(3, pos_x, pos_y, pos_z)
	at = 12
	vm.wait(12)
	event.EohResetDaPosition(0)
	event.SetActiveCmrid(1)
	event.SetBeforeCmrid(0)
	event.ResetCamera(0)
	event.DngPause(1, 0)
	event.Finish()
end

--- Event 1000, which map data, a script or the engine runs by number.
local function event_1000()
	local var1: s32 = 0
	local var2: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetLocalFlag(0, 0)
		event.SetLocalFlag(1, 0)
		event.SetLocalFlag(2, 0)
		event.SetLocalFlag(3, 0)
		event.SetLocalFlag(4, 0)
		event.SetLocalFlag(5, 0)
		event.GotoDngMap(3)
		at = 1
		vm.wait(1)
		event.SetProjection(524.9)
		do
			local _, out2, out3, _ = event.GetMenuParam_4()
			var1 = out2 or var1
			var2 = out3 or var2
		end
		var1 = 3
		event.DngSetStageId(var1)
		event.DngSetFloorId(var2)
		helper_d1646134(var1, var2)
		if var2 == 3 then
			event.LoadDungeonMapFile("d05b01")
			event.SetFadeIn(1)
			return
		end
		if var2 == 2 then
			event.LoadDungeonMapFile("d04f02", "d04f02", 8)
			event.AutoSetTreasureBox(-1)
			event.LoadMonsterFile(0)
			event.AutoSetMonster(-1)
			at = 2
			helper_3742c()
		else
			event.LoadDungeonMapFile("d04f01", "d01f01")
			event.AutoSetTreasureBox(-1)
			event.LoadMonsterFile(0)
			event.AutoSetMonster(-1)
			at = 3
			helper_3742c()
		end
		helper_ac9d5b12()
		return
	end, function(received: { any })
		if at <= 1 then
			var1 = 3
			helper_384e16e1(var1, var2)
			return 0
		end
		if at <= 3 then
			if at <= 2 then
				at = 3
				helper_3742c()
				return vm.continue_with(function()
					helper_ac9d5b12()
					return
				end)
			end
			helper_344d6cd8()
			return 0
		end
		return nil
	end)
end

--- Helper function.
local function helper_3d760(arg0: s32)
	local argc: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	local item: s32 = 0
	local active_chr_no: s32 = 0
	local var6: any = 0
	local stage_id: s32 = 0
	local var8: s32 = 0
	local argc_2: s32 = 0
	local var11: s32 = 0
	event.SetMotion(0, "立ち")
	argc = event.GetLocalFlag(arg0) or argc
	event.DngPause(1, 1)
	if argc == 0 then
		var2 = event.GetEventData_2(6) or var2
		if var2 == 1 then
			event.Initialize()
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			var3 = helper_94011697(0, 3, 5, 256, 208, var3)
			event.SetMesWindowMode(0, 7)
			event.SetMesDrawspeed(0, 0)
			if var3 == 1 then
				var2 = 2
			end
			event.Finish()
		end
		if var2 == 2 then
			event.GotoUseItem(342)
			vm.wait(2)
			item = vmhost.used_item() or item
			if item == 342 then
				event.SetLocalFlag(arg0, 1)
				helper_54991ad7()
			elseif item <= 0 then
				event.Finish()
			else
				helper_eef234e4()
			end
		end
	else
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 or active_chr_no == 3 then
			event.Initialize()
			helper_52115bbf()
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 1)
			if active_chr_no == 2 then
				helper_c8c8b790(0, 20, 5, 256, 208)
			else
				helper_c8c8b790(0, 21, 5, 256, 208)
			end
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 0)
			event.DngPause(1, 0)
			event.Finish()
			return
		end
		event.SetMesQuestionGyou(0, 0)
		event.SetMesWindowMode(0, 5)
		event.SetMesDrawspeed(0, 1)
		var6 = helper_7c78bc02(0, 10, 8, 256, 208, 2, 1)
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		if var6 == 0 then
			stage_id = event.DngGetStageId() or stage_id
			var8 = event.DngGetFloorId() or var8
			argc_2 = event.GetNextFloor(var8, arg0) or argc_2
			event.DngSetFloorId(argc_2)
			event.SetFloorInfo(stage_id, var8, 5, 2)
			event.SetFloorInfo(stage_id, argc_2, 5, 1)
			helper_3e279351()
			var11 = event.GetE3Version() or var11
			if var11 == 1 then
				event.SetExitFlag(1)
				return
			else
				event.Finish()
				event_1000()
			end
		else
			event.Finish()
		end
	end
	event.DngPause(1, 0)
end

--- Helper function.
local function helper_3f0ac()
	local argc: s32 = 0
	local var1: s32 = 0
	local item: s32 = 0
	local var3: s32 = 0
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.DngPause(1, 1)
	argc = event.GetLocalFlag(4) or argc
	if argc == 0 then
		var1 = event.GetEventData_2(6) or var1
		if var1 == 2 then
			event.GotoUseItem(342)
			vm.wait(1)
			item = vmhost.used_item() or item
			if item == 362 then
				event.SetLocalFlag(4, 1)
				var3 = event.GetEventData_2(9) or var3
				event.EohSyncObj_3(0, var3, "star-m0")
				event.EohSetShow(0, 0)
				event.EohSyncObj_3(0, var3, "d02wa13-a")
				event.EohSetShow(0, 0)
				event.FuncPointShow(var3, "star", 0)
				world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
					helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
				event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
				event.AssignStack(5)
				event.ClearStack(5)
				event.EohSyncChara(0, 0)
				event.ObjsInit(0)
				event.ObjsSyncObj(0, 0)
				event.ObjsReference(0, 0.0, 0.0, 0.0, 0)
				event.LoadChara(5, "event/dng/key_star.gltf", "star", 12)
				event.CharaActive(12)
				event.EohSyncChara(1, 12)
				event.ObjsSyncObj(1, 1)
				event.EohSetPos(1, 0.0, 0.0, 160.0)
				event.EohSetRot(1, 0.0, 0.0, 0.0)
				event.EohSetScale(1, 20.0, 20.0, 20.0)
				event.ObjsSetScale(1, 20.0, 0.0, 20.0, 60)
				event.CmrsSetPos(-31.46, 57.29, 350.67)
				event.CmrsSetRef(4.66, 31.72, 192.41)
				event.SetCharaShow(12, 0, 1, 0.02)
				helper_888ab2a3(60)
				event.DeleteChara(12)
			elseif item <= 0 then
				event.Finish()
			else
				helper_eef234e4()
			end
		end
		if var1 == 1 then
			event.SetMesWindowMode(0, 4)
			event.SetMesDrawspeed(0, 1)
			helper_c8c8b790(0, 7, 8, 256, 208)
			event.SetMesWindowMode(0, 1)
			event.SetMesDrawspeed(0, 0)
		end
	end
	event.DngPause(1, 0)
	event.Finish()
end

--- Helper function.
local function helper_44998(arg0: s32)
	local world_coord_pos: f32 = 0
	local world_coord_pos_2: f32 = 0
	local world_coord_pos_3: f32 = 0
	local world_coord_rot: f32 = 0
	local battle_bgm_vol: f32 = 0
	local var6: s32 = 0
	local battle_bgm_vol_2: f32 = 0
	local var8: s32 = 0
	event.SetCrossfade(10)
	world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot =
		helper_d355d559(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.SetWorldCoord(world_coord_pos, world_coord_pos_2, world_coord_pos_3, world_coord_rot)
	event.EohSyncChara(0, 0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetMotion(0, "走り", 4)
	if arg0 == 0 then
		event.CmrsSetPos(71.85, 16.72, -238.11)
		event.CmrsSetRef(10.53, 73.66, -36.93)
		event.ObjsSetPos(0, 0.0, 30.68, -72.59)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsMove(0, 0.0, 82.86, -9.67, 30)
		helper_888ab2a3(15)
		event.SetFadeOut(15)
		wait_objects(0)
		event.StopEnvBgm()
		event.LoadSeEnv(141)
		event.PlayEnvBgm(0)
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
		event.CmrsSetPos(0.0, 3239.0, 220.74)
		event.CmrsSetRef(0.0, 3234.0, 130.0)
		event.ObjsSetPos(0, 0.0, 3200.0, 94.0)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsResetDaPosition(0)
		event.ObjsMove(0, 0.0, 3147.0, 53.0, 30)
		helper_888ab2a3(15)
		event.SetFadeOut(15)
		wait_objects(0)
		event.StopEnvBgm()
		event.LoadSeEnv(140)
		event.PlayEnvBgm(0)
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
	event.ObjsSetMotion(0, "立ち")
	event.ResetCamera(0)
	event.Finish()
end

--- Helper function.
local function helper_23014(arg0: f32, arg1: f32, arg2: s32)
	local var3: s32 = 0
	local var4: s32 = 0
	local var5: s32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local angle: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local var14: f32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local at: number = 0
	return vm.guard(function()
		var4 = 60
		var5 = 76
		event.EohSyncChara(0, 0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var6 = out1 or var6
			var7 = out2 or var7
			var8 = out3 or var8
		end
		event.SetFcameraFollowFlag(1)
		event.SetCameraCtrl(1)
		event.CtrlcSetRotCancel(43)
		event.SetCameraSpeed(6.0)
		event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
		event.SetFcameraFollow(var6, var7 + 20.0, var8)
		event.SetFcameraHeight(0.0)
		event.SetFcameraDist(100.0)
		event.CtrlcMoveRange(10.0, 30.0, 80.0, 120.0)
		while true do
			do
				local out1, out2 = event.GetApad_2()
				var14 = out1 or var14
				var15 = out2 or var15
			end
			do
				local out1, out2, out3 = event.GetCharaPos(0)
				var16 = out1 or var16
				var17 = out2 or var17
				var18 = out3 or var18
			end
			do
				local out1, out2, out3 = event.GetCharaRot(0)
				var10 = out1 or var10
				var11 = out2 or var11
				var12 = out3 or var12
			end
			if var14 ~= 0.0 then
				if
					helper_b669d1f8(
						var16,
						var17,
						var18,
						vm.f32(var11 + vm.f32(1.5707964)),
						vm.f32(vm.f32(var11 - vm.f32(var14 / 32.0)) + vm.f32(1.5707964))
					) == 1
				then
					var11 = vm.f32(var11 - vm.f32(var14 / 32.0))
				else
					var14 = 0.0
				end
			end
			event.SetCharaRot(0, var10, var11, var12)
			if var4 <= 0 then
				event.SetMotion(0, "待機")
				var5 = 76
				var4 = 400
			else
				if var14 ~= 0.0 then
					event.SetMotion(0, "かまえバタバタ")
					var4 = 200
					var5 = 0
				elseif var5 <= 0 then
					event.SetMotion(0, "かまえ")
				else
					var5 = var5 - 1
				end
				var4 = var4 - 1
			end
			var13 = arg1
			var13 = vm.f32(var13 + var15)
			if var13 <= 5.0 then
				var13 = 5.0
			end
			if var13 >= 30.0 then
				var13 = 30.0
			end
			arg0 = var11
			arg1 = var13
			event.SphidaCalcCarry(vm.f32(arg1 * vm.f32(3.1415927)) / 180.0)
			angle = vm.f32(arg0 - vm.f32(3.1415927))
			angle = event.AngleLimit(angle) or angle
			event.CtrlcSetRotate(angle)
			event.CtrlcMoveCamera(0)
			event.CtrlcStep()
			helper_5877209d(arg0, arg1, arg2)
			if helper_6e932de7(32) ~= 0 then
				event.SetMotion(0, "かまえ")
				var3 = 0
				break
			elseif helper_6e932de7(64) ~= 0 then
				var3 = 1
				break
			else
				at = 1
				vm.wait(1)
			end
		end
		helper_a9c4b39b()
		at = 2
		vm.wait(2)
		return var3, arg0, arg1
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				helper_788e145d()
			end
			return var3, arg0, arg1
		end
		return nil, arg0, arg1
	end)
end

--- Helper function.
local function helper_24758(arg0: f32, arg1: any, arg2: f32, arg3: f32, arg4: f32, se_id: s32, arg6: s32)
	local angle: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local code: s32 = 0
	local var12: s32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local var15: f32 = 0
	local at: number = 0
	return vm.guard(function()
		angle = vm.f32(arg2 - vm.f32(3.1415927))
		angle = event.AngleLimit(angle) or angle
		var12 = 0
		code = -10
		event.SphidaResetPowgage()
		event.SphidaStartPowgage()
		while code == -10 do
			event.CtrlcSetRotate(angle)
			event.CtrlcMoveCamera(0)
			event.CtrlcStep()
			do
				local out1, out2 = event.GetApad_2()
				var8 = out1 or var8
				var9 = out2 or var9
			end
			event.SphidaSetSpinMarkPos(var8, var9)
			if (if var12 == 0 then helper_6e932de7(64) else 0) ~= 0 then
				event.SphidaSetSpinMarkPos(0.0, 0.0)
				event.SphidaResetPowgage()
				return 1, arg0, arg2, arg3, arg4, arg6
			end
			if helper_6e932de7(32) ~= 0 then
				event.SphidaTriggerPowgage()
				at = 1
				vm.wait(1)
				code = event.SphidaGetPowgageCode() or code
				if var12 == 0 or code ~= -10 then
					event.SndSePlay(se_id, 0)
					do
						local out1, out2 = event.SphidaGetPgCursorPos()
						x = out1 or x
						y = out2 or y
					end
					event.SpriteSetType(10 + var12, 0)
					event.SpriteSetAlphab(10 + var12, 2)
					event.SpriteSetUvsize(10 + var12, 0, 224, 32, 32)
					event.SpriteSetDraw(10 + var12, 1)
					event.SpriteSetPutsize(10 + var12, 32, 32)
					event.SpriteSetPos(10 + var12, x, y)
					event.SpriteSetScale(10 + var12, 0.2, 0.2, 0.2)
					event.EohSyncSprite(20 + var12, 10 + var12)
					event.ObjsInit(20 + var12)
					event.ObjsSyncObj(20 + var12, 20 + var12)
					event.ObjsSetScale(20 + var12, 2, 2, 2, 10)
					event.ObjsSetColor(20 + var12, 128, 128, 128, 128, 2)
					event.ObjsSetColor(20 + var12, 128, 128, 128, 0, 8)
					var12 = 1
				end
			else
				at = 2
				vm.wait(2)
			end
			code = event.SphidaGetPowgageCode() or code
		end
		if code == 5 then
			event.SphidaSetSpinMarkPos(0.0, 0.0)
			event.SphidaResetPowgage()
			return 1, arg0, arg2, arg3, arg4, arg6
		end
		arg0 = event.SphidaGetShotPow() or arg0
		if code == 4 then
			arg0 = vm.f32(arg0 * 0.0)
		end
		if code == -3 then
			arg0 = vm.f32(arg0 * vm.f32(0.4))
			var15 = event.GetRand(0.2) or var15
			var15 = vm.f32(var15 - vm.f32(0.1))
			arg2 = vm.f32(vm.f32(arg2 - vm.f32(0.4)) + var15)
			var8 = vm.f32(vm.f32(var8 * vm.f32(0.2)) * arg0)
			var9 = vm.f32(vm.f32(var9 * vm.f32(0.2)) * arg0)
		end
		if code == 3 then
			arg0 = vm.f32(arg0 * vm.f32(0.4))
			var15 = event.GetRand(0.2) or var15
			var15 = vm.f32(var15 - vm.f32(0.1))
			arg2 = vm.f32(vm.f32(arg2 + vm.f32(0.4)) + var15)
			var8 = vm.f32(vm.f32(var8 * vm.f32(0.2)) * arg0)
			var9 = vm.f32(vm.f32(var9 * vm.f32(0.2)) * arg0)
		end
		if code == -2 then
			arg0 = vm.f32(arg0 * vm.f32(0.8))
			var15 = event.GetRand(0.05) or var15
			var15 = vm.f32(var15 - vm.f32(0.025))
			arg2 = vm.f32(vm.f32(arg2 - vm.f32(0.1)) + var15)
			var8 = vm.f32(vm.f32(var8 * vm.f32(0.4)) * arg0)
			var9 = vm.f32(vm.f32(var9 * vm.f32(0.4)) * arg0)
		end
		if code == 2 then
			arg0 = vm.f32(arg0 * vm.f32(0.8))
			var15 = event.GetRand(0.05) or var15
			var15 = vm.f32(var15 - vm.f32(0.025))
			arg2 = vm.f32(vm.f32(arg2 + vm.f32(0.1)) + var15)
			var8 = vm.f32(vm.f32(var8 * vm.f32(0.4)) * arg0)
			var9 = vm.f32(vm.f32(var9 * vm.f32(0.4)) * arg0)
		end
		if code == -1 then
			arg0 = vm.f32(arg0 * 1.0)
			var15 = event.GetRand(0.01) or var15
			arg2 = vm.f32(arg2 - var15)
			var8 = vm.f32(vm.f32(var8 * vm.f32(0.6)) * arg0)
			var9 = vm.f32(vm.f32(var9 * vm.f32(0.6)) * arg0)
		end
		if code == 1 then
			arg0 = vm.f32(arg0 * 1.0)
			var15 = event.GetRand(0.01) or var15
			arg2 = vm.f32(arg2 + var15)
			var8 = vm.f32(vm.f32(var8 * vm.f32(0.6)) * arg0)
			var9 = vm.f32(vm.f32(var9 * vm.f32(0.6)) * arg0)
		end
		if code == 0 then
			arg0 = vm.f32(arg0 * vm.f32(1.1))
			var8 = vm.f32(var8 * arg0)
			var9 = vm.f32(var9 * arg0)
		end
		arg6 = code
		arg2 = event.AngleLimit(arg2) or arg2
		arg3 = var8
		arg4 = var9
		at = 3
		helper_888ab2a3(10)
		return 0, arg0, arg2, arg3, arg4, arg6
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				local _ = helper_6b9da980(32)
				local _ = var12 == 0
				var12 = 1
			end
			return 1, arg0, arg2, arg3, arg4, arg6
		end
		if at <= 3 then
			return 0, arg0, arg2, arg3, arg4, arg6
		end
		return nil, arg0, arg2, arg3, arg4, arg6
	end)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	event.Initialize()
	vm.wait(1)
	helper_c956b4a2(32)
	event.Finish()
end

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	helper_3d760(0)
end

--- The event run when the edit analysis found changes after a house door step or a Georama mode change.
function script.edit_analyze_changed()
	helper_3d760(1)
end

--- Event 320, which map data, a script or the engine runs by number.
function script.event_320()
	helper_3d760(2)
end

--- Event 330, which map data, a script or the engine runs by number.
function script.event_330()
	helper_3d760(3)
end

--- Event 340, which map data, a script or the engine runs by number.
script.event_340 = helper_3f0ac

--- Event 345, which map data, a script or the engine runs by number.
function script.event_345()
	local argc: s32 = 0
	event.Initialize()
	argc = event.GetLocalFlag(5) or argc
	if argc == 0 then
		event.SetLocalFlag(5, 1)
		event.DngPause(32, 0)
	else
		event.SetLocalFlag(5, 0)
		event.DngPause(32, 1)
	end
	helper_44998(argc)
end

script.event_1000 = event_1000

--- The dungeon system event run when the player opens a treasure box.
function script.treasure_box()
	local active_chr_no: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	event.Initialize()
	event.SetCrossfade(30)
	event.CharaActive(0, 0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 then
		var1 = event.GetRoboMoveType() or var1
		if var1 == 1 then
			event.SetMotion(0, "立ち-足")
		end
		if var1 == 2 then
			event.SetMotion(0, "立ち-キャタピラ")
		end
	end
	do
		local out1, out2 = event.GetTbItemno()
		var2 = out1 or var2
		var3 = out2 or var3
	end
	if var3 <= -1 then
		helper_f67d042f(var2)
	else
		helper_5f322f9e(var2, var3)
	end
end

--- The dungeon system event run when the player steps into a random circle.
function script.random_circle()
	local active_chr_no: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local yaw: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var11: s32 = 0
	local weight: f32 = 0
	local var14: f32 = 0
	local circle_id: s32 = 0
	local var17: s32 = 0
	local var18: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local pos_x_4: f32 = 0
	local pos_y_4: f32 = 0
	local pos_z_4: f32 = 0
	local var25: f32 = 0
	local var26: s32 = 0
	local angle: f32 = 0
	local var28: s32 = 0
	local var29: s32 = 0
	local bright_rate: f32 = 0
	local var31: s32 = 0
	local result: f32 = 0
	event.Initialize()
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.DngPause(1, 1)
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		helper_52115bbf()
		if active_chr_no == 2 then
			helper_c8c8b790(0, 22, 8, 0, 0)
		else
			helper_c8c8b790(0, 23, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		do
			local out1, out2, out3 = event.RandomCircleGetPos(-1)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		yaw = event.GetRefAngle(pos_x, pos_y, pos_z, var1, var2, var3) or yaw
		var1 = vm.f32(vm.f32(vm.sin(yaw) * 25.0) + pos_x)
		var2 = pos_y
		var3 = vm.f32(vm.f32(vm.cos(yaw) * 25.0) + pos_z)
		event.SetCharaPos(0, var1, var2, var3)
		event.DngPause(1, 0)
		event.Finish()
		return
	end
	do
		local out1, out2, out3 = event.RandomCircleGetPos(-1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	event.SetCameraCtrl(0)
	event.SetFcameraFollowFlag(1)
	event.SetFcameraFollowA(pos_x_2, pos_y_2 + 30.0, pos_z_2)
	event.SetCameraSpeed(8.0)
	event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
	event.SetFcameraHeight(0.0)
	event.SetFcameraDist(80.0)
	helper_52115bbf()
	event.DngPause(17, 1)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_1("snd2/sp/sp_011.sound.json")
	vm.wait(3)
	helper_479dc9e9()
	var11 = event.SndLoadSound_3(8, "snd2/sp/sp_011.sound.json") or var11
	event.SetLoadbgFile_2("event/dng/ring.gltf", "event/dng/randomcoin.gltf")
	vm.wait(5)
	helper_479dc9e9()
	weight = event.GetRndcMotNowt() or weight
	event.RandomCircleOff(-1)
	event.LoadChara(5, "event/dng/ring.gltf", "info", 12)
	event.CharaActive(1, 12)
	event.SetCharaPos(12, pos_x_2, pos_y_2, pos_z_2)
	event.SetMotion(12, "ループ", 6)
	event.CharaNormalDrive(12)
	event.SetCharaMotNowt(12, weight)
	event.EohSyncChara(4, 12)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.ObjsNextMotion(4, "消滅", 6)
	event.LoadChara(5, "event/dng/randomcoin.gltf", "info", 13)
	event.CharaActive(1, 13)
	event.SetCharaPos(13, pos_x_2, pos_y_2 - 30.0, pos_z_2)
	var14 = event.GetRand(6.2831855) or var14
	var14 = vm.f32(var14 - vm.f32(3.1415927))
	var14 = event.AngleLimit(var14) or var14
	event.SetCharaRot(13, 0.0, var14, 0.0)
	event.EohSyncChara(5, 13)
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.ObjsSetScale(5, 0.0, 0.0, 0.0)
	event.ObjsSetScale(5, 1.0, 1.0, 1.0, 40)
	event.ObjsMove2(5, pos_x_2, pos_y_2 + 40.0, pos_z_2, 30, 2, 0.5)
	var17 = 0
	var18 = vm.f32(0.6)
	while true do
		do
			local _, out2, _ = event.GetCharaRot(13)
			var14 = out2 or var14
		end
		var14 = vm.f32(var14 + var18)
		var14 = event.AngleLimit(var14) or var14
		event.SetCharaRot(13, 0.0, var14, 0.0)
		if var17 == 10 then
			event.SndSePlay(var11, 0)
		end
		if var17 == 30 then
			helper_6982e9f5()
		end
		if (if var17 >= 30 then helper_581cb30c(0) else 0) ~= 0 or var17 > 300 then
			event.SndSeStop(var11, 0)
			event.SndSePlay(var11, 3)
			vm.wait(7)
			break
		else
			var17 = var17 + 1
			vm.wait(8)
		end
	end
	helper_3cf99f2c()
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x_3 = out1 or pos_x_3
		pos_y_3 = out2 or pos_y_3
		pos_z_3 = out3 or pos_z_3
	end
	do
		local out1, out2, out3 = event.GetCameraRef()
		pos_x_4 = out1 or pos_x_4
		pos_y_4 = out2 or pos_y_4
		pos_z_4 = out3 or pos_z_4
	end
	var25 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var25
	var26 = 0
	var26 = vm.float_bits(event.GetRand(10)) or var26
	var26 = vm.i32(var26 + 4)
	var17 = 0
	while true do
		do
			local _, out2, _ = event.GetCharaRot(13)
			var14 = out2 or var14
		end
		var14 = vm.f32(var14 + var18)
		var14 = event.AngleLimit(var14) or var14
		event.SetCharaRot(13, 0.0, var14, 0.0)
		vm.wait(9)
		if var17 >= var26 then
			if var18 > vm.f32(0.08) then
				var18 = vm.f32(var18 * vm.f32(0.9))
			end
			angle = var25
			angle = event.AngleLimit(angle) or angle
			if var14 < angle and helper_f7fba8ce(var14, angle, vm.f32(0.08)) == 0 then
				event.SetCharaRot(13, 0.0, angle, 0.0)
				circle_id = 0
				break
			end
			angle = vm.f32(var25 - vm.f32(3.1415927))
			angle = event.AngleLimit(angle) or angle
			if var14 < angle and helper_f7fba8ce(var14, angle, vm.f32(0.08)) == 0 then
				event.SetCharaRot(13, 0.0, angle, 0.0)
				circle_id = 1
				break
			end
		end
		var17 = vm.i32(var17 + 1)
	end
	helper_888ab2a3(20)
	var28 = vm.float_bits(event.GetRand(10)) or var28
	if var28 < 6 then
		var28 = vm.float_bits(event.GetRand(10)) or var28
		if circle_id == 0 then
			var29 = 2
		else
			var29 = 4
		end
		if var28 < var29 then
			var25 = vm.f32(var25 + vm.f32(3.14))
			var25 = event.AngleLimit(var25) or var25
			event.ObjsRotation(5, 0.0, var25, 0.0, 8)
			if circle_id == 0 then
				circle_id = 1
			else
				circle_id = 0
			end
			helper_888ab2a3(10)
		else
			var28 = vm.float_bits(event.GetRand(10)) or var28
			if var28 < 1 then
				var25 = vm.f32(var25 + vm.f32(3.14))
				var25 = event.AngleLimit(var25) or var25
				event.ObjsRotation(5, 0.0, var25, 0.0, 6)
				var25 = vm.f32(var25 + vm.f32(1.57))
				var25 = event.AngleLimit(var25) or var25
				event.ObjsRotation(5, 0.0, var25, 0.0, 3)
				var25 = vm.f32(var25 + vm.f32(1.57))
				var25 = event.AngleLimit(var25) or var25
				event.ObjsRotation(5, 0.0, var25, 0.0, 3)
				helper_888ab2a3(20)
			end
		end
	end
	var25 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var25
	do
		local _, out2, _ = event.GetCharaRot(13)
		var14 = out2 or var14
	end
	if helper_f7fba8ce(var14, var25, 1.0) == 0 then
		circle_id = 0
	else
		circle_id = 1
	end
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	bright_rate = 1.0
	var17 = 0
	var31 = event.GetRndCircleTrapid(circle_id) or var31
	if circle_id == 0 then
		event.SndSePlay(var11, 1)
		while var17 < 30 do
			event.BscnSetBlightRate(bright_rate)
			bright_rate = vm.f32(bright_rate + vm.f32(0.03))
			var17 = var17 + 1
			vm.wait(13)
		end
		helper_c8c8b790(0, 2310, 8, 0, 0)
		result = event.SetRndCircleStatus(var31) or result
		if var31 == 1 then
			helper_c8c8b790(0, 2311, 8, 0, 0)
		end
		if var31 == 2 then
			helper_c8c8b790(0, 2312, 8, 0, 0)
		end
		if var31 == 3 then
			helper_c8c8b790(0, 2313, 8, 0, 0)
		end
		if var31 == 4 then
			event.PostTreasureBox(pos_x_2, pos_y_2, pos_z_2, var25, 294)
			helper_c8c8b790(0, 2314, 8, 0, 0)
		end
	else
		event.SndSePlay(var11, 2)
		while var17 < 30 do
			event.BscnSetBlightRate(bright_rate)
			bright_rate = vm.f32(bright_rate - vm.f32(0.03))
			var17 = var17 + 1
			vm.wait(19)
		end
		helper_c8c8b790(0, 2320, 8, 0, 0)
		result = event.SetRndCircleStatus(var31) or result
		if var31 == 5 then
			if active_chr_no == 0 or active_chr_no == 2 then
				helper_c8c8b790(0, 2321, 8, 0, 0)
			end
			if active_chr_no == 1 or active_chr_no == 3 then
				helper_c8c8b790(0, 2322, 8, 0, 0)
			end
		end
		if var31 == 6 then
			if active_chr_no == 0 then
				helper_c8c8b790(0, 2323, 8, 0, 0)
			end
			if active_chr_no == 1 or active_chr_no == 3 then
				helper_c8c8b790(0, 2324, 8, 0, 0)
			end
			if active_chr_no == 2 then
				helper_c8c8b790(0, 2325, 8, 0, 0)
			end
		end
		if var31 == 8 then
			helper_c8c8b790(0, 2326, 8, 0, 0)
		end
		if var31 == 9 then
			helper_c8c8b790(0, 2327, 8, 0, 0)
		end
		if var31 == 10 then
			helper_c8c8b790(0, 2328, 8, 0, 0)
		end
		if var31 == 11 then
			helper_c8c8b790(0, 2329, 8, 0, 0)
		end
		if var31 == 12 then
			helper_c8c8b790(0, 2330, 8, 0, 0)
		end
	end
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.BscnSetBlightRate(1.0)
	if var31 == 1 then
		event.SetPullItem(pos_x_2, pos_y_2, pos_z_2, 1, 10, result / 10.0)
	end
	event.DngPause(17, 0)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.SetCrossfade(15)
	event.Finish()
end

--- The dungeon system event run when the player uses the geostone.
function script.geostone()
	local active_chr_no: s32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local var17: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	event.Initialize()
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.DngPause(1, 1)
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		helper_52115bbf()
		if active_chr_no == 2 then
			helper_c8c8b790(0, 22, 8, 0, 0)
		else
			helper_c8c8b790(0, 23, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		event.DngPause(1, 0)
		event.Finish()
		return
	end
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetMotion(0, "立ち")
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var1 = out1 or var1
		var2 = out2 or var2
		var3 = out3 or var3
	end
	if active_chr_no == 0 then
		event.SetLoadbgFile_3(
			"dungeon/chara/c01_gio.gltf",
			"event/itemget_ev/itemget_ev.gltf",
			"snd2/sp/sp_012.sound.json"
		)
		vm.wait(3)
		helper_479dc9e9()
		event.LoadMotion(5, "dungeon/chara/c01_gio.gltf", "info", 0)
	end
	if active_chr_no == 1 then
		event.SetLoadbgFile_3(
			"dungeon/chara/c02_gio.gltf",
			"event/itemget_ev/itemget_ev.gltf",
			"snd2/sp/sp_012.sound.json"
		)
		vm.wait(5)
		helper_479dc9e9()
		event.LoadMotion(5, "dungeon/chara/c02_gio.gltf", "info", 0)
	end
	var4 = event.SndLoadSound_3(8, "snd2/sp/sp_012.sound.json") or var4
	event.DngPause(17, 1)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var8 = out1 or var8
		var9 = out2 or var9
		var10 = out3 or var10
	end
	event.CopyVector(var8, var9, var10)
	event.GeostoneAnimeOff()
	event.EohSyncGeostone(1)
	do
		local out1, out2, out3 = event.EohGetPos(1)
		pos_x_2 = out1 or pos_x_2
		pos_y_2 = out2 or pos_y_2
		pos_z_2 = out3 or pos_z_2
	end
	pos_y_2 = vm.f32(var9 + 18.0)
	event.EohSetPos(1, pos_x_2, pos_y_2, pos_z_2)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	var17 = event.GetRefAngle(pos_x_2, pos_y_2, pos_z_2, pos_x, pos_y, pos_z) or var17
	var17 = event.AngleLimit(var17) or var17
	if active_chr_no == 0 then
		var17 = vm.f32(var17 + vm.f32(2.9))
	end
	if active_chr_no == 1 then
		var17 = vm.f32(var17 + vm.f32(2.4))
	end
	var17 = event.AngleLimit(var17) or var17
	var8 = vm.f32(vm.f32(vm.sin(var17) * 14.0) + pos_x_2)
	var10 = vm.f32(vm.f32(vm.cos(var17) * 14.0) + pos_z_2)
	event.SetCharaPos(0, var8, var9, var10)
	var17 = vm.f32(var17 - vm.f32(3.1415927))
	var17 = event.AngleLimit(var17) or var17
	event.SetCharaRot(0, 0.0, var17, 0.0)
	event.EohResetDaPosition(0)
	event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 12)
	event.CharaActive(0, 12)
	if active_chr_no == 0 then
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(var8, var9 + 18.0, var10)
		event.SetCameraSpeed(16.0)
		event.SetFcameraFollowOfs(0.0, 6.0, 0.0)
		event.SetFcameraHeight(-14.0)
		event.SetFcameraDist(54.0)
		event.SetCharaPos(12, var8, var9 + 36.0, var10)
	end
	if active_chr_no == 1 then
		event.SetCameraCtrl(0)
		event.SetFcameraFollowFlag(1)
		event.SetFcameraFollowA(var8, var9 + 18.0, var10)
		event.SetCameraSpeed(16.0)
		event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
		event.SetFcameraHeight(-5.0)
		event.SetFcameraDist(34.0)
		pos_x_3 = vm.f32(vm.f32(vm.sin(var17) * 8.0) + var8)
		pos_y_3 = vm.f32(var9 + 18.0)
		pos_z_3 = vm.f32(vm.f32(vm.cos(var17) * 8.0) + var10)
		event.SetCharaPos(12, pos_x_3, pos_y_3, pos_z_3)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.SetCrossfade(30)
	event.ObjsSetMotion(0, "取る", 6)
	event.ObjsNextMotion(0, "取るL", 4)
	helper_888ab2a3(16)
	event.SndSePlay(var4, 0)
	helper_888ab2a3(2)
	event.EohSetPos(1, 0.0, 0.0, 0.0)
	event.GeostoneSetReference(0, "item")
	helper_888ab2a3(10)
	do
		local out1, out2, out3 = event.GetCameraPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var17 = event.GetRefAngle(var8, var9, var10, pos_x, pos_y, pos_z) or var17
	event.SetCharaRot(12, 0.0, var17, 0.0)
	event.CharaActive(1, 12)
	event.EohSyncChara(4, 12)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.ObjsSetMotion(4, "発動", 6, 1.2)
	event.ObjsMotionWait(4)
	event.ObjsResetMotion(4)
	event.ObjsSetMotion(4, "発動", 5)
	helper_888ab2a3(20)
	event.SndSePlay(var4, 1)
	wait_objects(0)
	helper_271a78ae(358, 1)
	event.SetCrossfade(10)
	if active_chr_no == 1 then
		event.SetMotion(0, "取る戻り", 6)
		vm.wait(13)
	end
	event.DngPause(17, 0)
	event.SetMotion(0, "立ち", 4)
	event.SetCharaPos(0, var1, var2, var3)
	event.EohResetDaPosition(0)
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.GeostoneDelReference()
	event.GeostoneSetFlag(0)
	event.EohSetScale(1, 1.0, 1.0, 1.0)
	event.DelExtMotion(0)
	event.DeleteChara(12)
	event.Finish()
end

--- The dungeon system event run for a monster that can be talked to.
function script.monster_talk()
	local var0: s32 = 0
	local var1: s32 = 0
	do
		local out1, out2 = event.GetMonsterTalkData_2()
		var0 = out1 or var0
		var1 = out2 or var1
	end
	helper_7203525c(var0, vm.i32(var1 + 1000))
end

--- Event 1200, which map data, a script or the engine runs by number.
script.event_1200 = helper_d216348b

--- The dungeon system event run when every monster on the floor has been defeated.
script.floor_clear = helper_92493aa2

--- The Sphida event run when the player stands at the ball and presses the action button.
function script.sphida_shot()
	local tex_bank: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local var9: f32 = 0
	local var10: f32 = 0
	local var11: f32 = 0
	local var12: f32 = 0
	local var13: f32 = 0
	local level: s32 = 0
	local var15: f32 = 0
	local var16: f32 = 0
	local var17: f32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local var20: f32 = 0
	local var21: s32 = 0
	local var22: f32 = 0
	local var23: f32 = 0
	local var24: f32 = 0
	local var25: f32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local var29: f32 = 0
	local var30: f32 = 0
	local var31: s32 = 0
	local var32: f32 = 0
	local var33: f32 = 0
	local var34: f32 = 0
	local var35: f32 = 0
	local var36: f32 = 0
	local var37: f32 = 0
	local var38: f32 = 0
	local var39: f32 = 0
	local var40: f32 = 0
	local var41: f32 = 0
	local var42: f32 = 0
	local var43: s32 = 0
	local var44: s32 = 0
	local var45: s32 = 0
	local var46: s32 = 0
	local pin_col: s32 = 0
	local ball_col: s32 = 0
	local var49: f32 = 0
	local x: f32 = 0
	local y: f32 = 0
	local z: f32 = 0
	local var53: f32 = 0
	local pos_x_2: f32 = 0
	local pos_y_2: f32 = 0
	local pos_z_2: f32 = 0
	local yaw: f32 = 0
	local count: s32 = 0
	local var59: any = 0
	vm.wait(1)
	event.Initialize()
	helper_52115bbf()
	event.SetMotion(0, "立ち")
	if helper_ff8f9531() ~= 0 then
		event.Finish()
		return
	end
	event.SetStatusbarShow(0.0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetLoadbgFile_3(
		"dungeon/sphida/c01_golf.gltf",
		"dungeon/chara/c01b_miss.gltf",
		"dungeon/sphida/gool_end.gltf"
	)
	vm.wait(3)
	helper_479dc9e9()
	event.LoadMotion(5, "dungeon/sphida/c01_golf.gltf", "info", 0)
	event.LoadMotion(5, "dungeon/chara/c01b_miss.gltf", "info", 0)
	tex_bank = event.SphidaGetTexb() or tex_bank
	event.LoadChara(5, "dungeon/sphida/gool_end.gltf", "info", 12)
	event.CharaActive(0, 12)
	var1 = event.SndLoadSound_3(5, "snd2/mon/en_900.sound.json") or var1
	event.CreateSwordEffect(5, 64, 16)
	event.SwordEffectColor(128, 128, 128, 80, 128, 128, 128, 80)
	event.EohSyncChara(0, 2)
	event.EohSetShow(0, 0)
	event.SetCrossfade(15)
	event.SphidaResetPowgage()
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var8 = out1 or var8
		var9 = out2 or var9
		var10 = out3 or var10
	end
	var2, var3, var4, var6 = helper_558828de(var2, var3, var4, var6)
	helper_998c6893(var6)
	event.SphidaSetStatusFlag(1)
	var11 = 12.5
	event.SphidaCalcCarry(vm.f32(var11 * vm.f32(3.1415927)) / 180.0)
	var12, var13, level = helper_39ab7f1f(var12, var13, level)
	event.SphidaSetPowgageSafeLevel(level)
	do
		local out1, out2, out3 = event.ZeroVector()
		var15 = out1 or var15
		var16 = out2 or var16
		var17 = out3 or var17
	end
	while true do
		event.SphidaSetMinimapFlag(1)
		event.SphidaSetMmLineFlag(1)
		local t0: s32
		t0, var6, var11 = helper_23014(var6, var11, tex_bank)
		if t0 ~= 0 then
			event.SphidaSetMinimapFlag(0)
			event.SphidaSetMmLineFlag(0)
			event.SetCharaPos(0, var8, var9, var10)
			helper_12b74c6d(0)
			return
		end
		event.SphidaSetMinimapFlag(0)
		event.SphidaSetMmLineFlag(0)
		local t1: s32
		t1, var12, var6, var16, var15, level = helper_24758(var12, tex_bank, var6, var16, var15, var1, level)
		if t1 == 0 then
			break
		else
			vm.wait(8)
		end
	end
	do
		local out1, out2, out3 = event.CopyVector(var2, var3, var4)
		var18 = out1 or var18
		var19 = out2 or var19
		var20 = out3 or var20
	end
	var21 = 0
	if level ~= 1 and level ~= -1 and level ~= 4 then
		event.SpriteSetType(0, 1)
		event.SpriteSetDraw(0, 1)
		event.SpriteSetPutsize(0, 10.8, 11.6)
		event.SpriteSetPos(0, var2, var3 + 30.0, var4)
		event.SpriteSetColor(0, 128, 128, 128, 0)
		if level == 0 then
			event.SpriteSetUvsize(0, 78, 198, 54, 58)
		end
		if level == 2 or level == -2 then
			event.SpriteSetUvsize(0, 186, 190, 70, 66)
		end
		if level == 3 or level == -3 then
			event.SpriteSetUvsize(0, 132, 198, 54, 58)
		end
		event.EohSyncSprite(18, 0)
		event.ObjsInit(18)
		event.ObjsSyncObj(18, 18)
		event.ObjsSetColor(18, 128, 128, 128, 128, 4)
		event.ObjsColorDelay(18, 20)
		event.ObjsSetColor(18, 128, 128, 128, 0, 6)
		helper_888ab2a3(10)
	end
	if var12 <= vm.f32(0.3) then
		event.SetMotion(0, "小ショット", 2)
		helper_888ab2a3(25)
		if level ~= 4 then
			event.SndSePlay(var1, 3)
		end
	elseif var12 <= vm.f32(0.6) then
		event.SetMotion(0, "中ショット", 2)
		helper_888ab2a3(34)
		event.SndSePlay(var1, 2)
	else
		event.SetMotion(0, "大ショット", 2)
		helper_888ab2a3(39)
		if level == 0 then
			event.SndSePlay(var1, 12)
		else
			event.SndSePlay(var1, 1)
		end
	end
	if level == 4 then
		helper_888ab2a3(50)
		helper_bb794e6a(var1)
		event.SetCharaPos(0, var8, var9, var10)
		helper_12b74c6d(0)
		return
	end
	if level == 0 then
		event.SpriteSetType(1, 0)
		event.SpriteSetDraw(1, 1)
		event.SpriteSetPos(1, 256, 278)
		event.SpriteSetUvsize(1, 246, 104, 266, 42)
		event.SpriteSetPutsize(1, 266, 42)
		event.SpriteSetColor(1, 128, 128, 128, 0)
		event.SpriteSetScale(1, 10, 10, 10)
		event.EohSyncSprite(19, 1)
		event.ObjsInit(19)
		event.ObjsSyncObj(19, 19)
		event.ObjsJump(19, 256, 138, 0, 3.6, 20)
		event.ObjsSetScale(19, 1, 1, 1, 18)
		event.ObjsSetColor(19, 128, 128, 128, 128, 12)
		event.ObjsColorDelay(19, 30)
		event.ObjsSetColor(19, 128, 128, 128, 0, 6)
	end
	var12 = helper_dff48a5c(var12)
	var11 = vm.f32(vm.f32(var11 * vm.f32(3.1415927)) / 180.0)
	var12 = vm.f32(var12 - vm.f32(var12 * var11))
	var22 = vm.f32(vm.sin(var6) * vm.f32(var12 * vm.cos(var11)))
	var23 = vm.f32(var12 * vm.sin(var11))
	var24 = vm.f32(vm.cos(var6) * vm.f32(var12 * vm.cos(var11)))
	var16 = vm.f32(vm.f32(var16 * vm.f32(3.1415927)) / 2.0)
	var17 = vm.f32(vm.f32(vm.f32(-var24 * var13) * var15) * vm.f32(0.4))
	var15 = vm.f32(vm.f32(vm.f32(-var22 * var13) * var15) * vm.f32(0.4))
	do
		local out1, out2, out3 = event.SphidaGetPinPos()
		pos_x = out1 or pos_x
		pos_y = out2 or pos_y
		pos_z = out3 or pos_z
	end
	var29 = 180.0
	var30 = -50.0
	var31 = 0
	level = 0
	var44 = 0
	var46 = 0
	while true do
		if var3 >= var29 then
			var22 = vm.f32(var22 * vm.f32(0.999))
			var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0098) * (var46 + 1)))
			var24 = vm.f32(var24 * vm.f32(0.999))
		else
			var43 = event.ChkIntersectionPoint_9(12, var2, var3, var4, var2, vm.f32(var3 - 3.0) - vm.f32(0.01), var4, 0)
				or var43
			if level == 1 and var43 >= 0 then
				var22 = vm.f32(var22 * vm.f32(0.94))
				var23 = vm.f32(var23 + vm.f32(vm.f32(-0.00045) * (var46 + 1)))
				var24 = vm.f32(var24 * vm.f32(0.94))
				var22 = vm.f32(var22 + var15)
				var24 = vm.f32(var24 + var17)
				var15 = vm.f32(var15 * vm.f32(0.8))
				var17 = vm.f32(var17 * vm.f32(0.8))
			else
				var22 = vm.f32(var22 * vm.f32(0.999))
				var23 = vm.f32(var23 + vm.f32(vm.f32(-0.0045) * (var46 + 1)))
				var24 = vm.f32(var24 * vm.f32(0.999))
			end
		end
		do
			local out1, out2, out3 = event.AddVector(var2, var3, var4, var22, var23, var24)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
		end
		if var16 ~= 0.0 then
			var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
			var11 = vm.f32(var11 + var16)
			var11 = event.AngleLimit(var11) or var11
			var22 = vm.f32(var22 + vm.f32(vm.f32(vm.sin(var11) / 10.0) * var13))
			var24 = vm.f32(var24 + vm.f32(vm.f32(vm.cos(var11) / 10.0) * var13))
		end
		var42 = event.DistVector(var15, 0.0, var17) or var42
		if var42 > vm.f32(0.01) then
			var25 = event.DistVector(var15, 0.0, var17) or var25
			var11 = event.GetRefAngle(var18, var19, var20, var18 + var15, var19, var20 + var17) or var11
			do
				local out1, out2, out3 = event.GetCharaRot(8)
				var5 = out1 or var5
				var6 = out2 or var6
				var7 = out3 or var7
			end
			event.SetCharaRot(8, var5, var11, var7)
			event.AddCharaRot(8, var25 * 12.0, 0.0, 0.0)
			event.SetCharaRot(9, var5, var11, var7)
			event.AddCharaRot(9, var25 * 12.0, 0.0, 0.0)
		else
			var25 = event.DistVector(var22, 0.0, var24) or var25
			var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
			do
				local out1, out2, out3 = event.GetCharaRot(8)
				var5 = out1 or var5
				var6 = out2 or var6
				var7 = out3 or var7
			end
			event.SetCharaRot(8, var5, var11, var7)
			event.AddCharaRot(8, var25 / 10.0, 0.0, 0.0)
			event.SetCharaRot(9, var5, var11, var7)
			event.AddCharaRot(9, var25 / 10.0, 0.0, 0.0)
		end
		var25 = event.DistVector(var22, var23, var24) or var25
		var41 = var25
		var11 = event.GetRefAngle(var18, var19, var20, var2, var3, var4) or var11
		var38 = vm.f32(vm.sin(vm.f32(var11 - vm.f32(1.5707964))) * 3.0)
		var40 = vm.f32(vm.cos(vm.f32(var11 - vm.f32(1.5707964))) * 3.0)
		event.SwordEffectAddPoint(
			var2 - var38,
			var3,
			var4 - var40,
			vm.f32(var2 + var38) + var38,
			var3,
			vm.f32(var4 + var40) + var40
		)
		do
			local out1, out2, out3 = event.CopyVector(var22, var23, var24)
			var38 = out1 or var38
			var39 = out2 or var39
			var40 = out3 or var40
		end
		do
			local out1, out2, out3 = event.NormalVector(var38, var39, var40)
			var38 = out1 or var38
			var39 = out2 or var39
			var40 = out3 or var40
		end
		do
			local out1, out2, out3 = event.ScaleVector(var38, var39, var40, 3.0)
			var38 = out1 or var38
			var39 = out2 or var39
			var40 = out3 or var40
		end
		do
			local out1, out2 =
				event.ChkIntersectionPoint_10(0, var18, var19, var20, var2 + var38, var3 + var39, var4 + var40, 0)
			var43 = out1 or var43
			var45 = out2 or var45
		end
		if var43 >= 0 and var45 == 1 then
			if var44 <= 0 then
				event.SndSePlay(var1, 11)
				var44 = 20
			end
		end
		do
			local out1, out2, out3, out4, out5, out6, out7 =
				event.ChkIntersectionPoint_15(12, var18, var19, var20, var2 + var38, var3 + var39, var4 + var40, 1)
			var32 = out1 or var32
			var33 = out2 or var33
			var34 = out3 or var34
			var35 = out4 or var35
			var36 = out5 or var36
			var37 = out6 or var37
			var43 = out7 or var43
		end
		while var43 >= 0 do
			var16 = 0.0
			if var25 > 8.0 then
				helper_79d90c82()
			end
			if var44 <= 0 then
				event.SndSePlay(var1, 6)
				var44 = 20
			end
			do
				local out1, out2, out3 = event.CopyVector(-var22, -var23, -var24)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.NormalVector(var22, var23, var24)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.ScaleVector(var22, var23, var24, 3.0)
				var22 = out1 or var22
				var23 = out2 or var23
				var24 = out3 or var24
			end
			do
				local out1, out2, out3 = event.AddVector(var32, var33, var34, var22, var23, var24)
				var32 = out1 or var32
				var33 = out2 or var33
				var34 = out3 or var34
			end
			do
				local out1, out2, out3 = event.SubVector(var18, var19, var20, var32, var33, var34)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			var42 = event.DistVector(var18, var19, var20) or var42
			var42 = vm.f32(var41 - var42)
			if var42 <= 0.0 then
				break
			else
				var41 = var42
				do
					local out1, out2, out3 = event.CopyVector(-var22, -var23, -var24)
					var22 = out1 or var22
					var23 = out2 or var23
					var24 = out3 or var24
				end
				if var23 < 0.0 and var36 > 0.0 then
					var22 = vm.f32(var15 * 2.0)
					var23 = 0.0
					var24 = vm.f32(var17 * 2.0)
					var15 = vm.f32(var15 * vm.f32(0.2))
					var17 = vm.f32(var17 * vm.f32(0.2))
				else
					if
						var22 < 0.0 and var35 > 0.0
						or var22 > 0.0 and var35 < 0.0
						or var24 < 0.0 and var37 > 0.0
						or var24 > 0.0 and var37 < 0.0
					then
						var15 = 0.0
						var17 = 0.0
					end
					var22 = 0.0
					var23 = 0.0
					var24 = 0.0
				end
				var22 = vm.f32(vm.f32(vm.f32(var35 * var25) * vm.f32(0.9)) + var22)
				var23 = vm.f32(vm.f32(vm.f32(var36 * var25) * vm.f32(0.58)) + var23)
				var24 = vm.f32(vm.f32(vm.f32(var37 * var25) * vm.f32(0.9)) + var24)
				do
					local out1, out2, out3 = event.CopyVector(var32, var33, var34)
					var18 = out1 or var18
					var19 = out2 or var19
					var20 = out3 or var20
				end
				do
					local out1, out2, out3 = event.CopyVector(var22, var23, var24)
					var38 = out1 or var38
					var39 = out2 or var39
					var40 = out3 or var40
				end
				do
					local out1, out2, out3 = event.NormalVector(var38, var39, var40)
					var38 = out1 or var38
					var39 = out2 or var39
					var40 = out3 or var40
				end
				do
					local out1, out2, out3 = event.ScaleVector(var38, var39, var40, 3.0)
					var38 = out1 or var38
					var39 = out2 or var39
					var40 = out3 or var40
				end
				do
					local out1, out2, out3 = event.ScaleVector(var35, var36, var37, var42)
					var35 = out1 or var35
					var36 = out2 or var36
					var37 = out3 or var37
				end
				do
					local out1, out2, out3 = event.CopyVector(var32, var33, var34)
					var2 = out1 or var2
					var3 = out2 or var3
					var4 = out3 or var4
				end
				do
					local out1, out2, out3 = event.AddVector(var2, var3, var4, var35, var36, var37)
					var2 = out1 or var2
					var3 = out2 or var3
					var4 = out3 or var4
				end
				do
					local out1, out2, out3, out4, out5, out6, out7 = event.ChkIntersectionPoint_15(
						12,
						var18,
						var19,
						var20,
						var2 + var38,
						var3 + var39,
						var4 + var40,
						1
					)
					var32 = out1 or var32
					var33 = out2 or var33
					var34 = out3 or var34
					var35 = out4 or var35
					var36 = out5 or var36
					var37 = out6 or var37
					var43 = out7 or var43
				end
			end
		end
		do
			local out1, out2, out3, out4, out5, out6, out7, out8 =
				event.ChkIntersectionPoint_16(12, var2, var3, var4, var2, var3 - 3.0, var4, 1)
			var32 = out1 or var32
			var33 = out2 or var33
			var34 = out3 or var34
			var35 = out4 or var35
			var36 = out5 or var36
			var37 = out6 or var37
			var43 = out7 or var43
			var45 = out8 or var45
		end
		if var43 >= 0 then
			var16 = 0.0
			var3 = vm.f32(var33 + 3.0)
			var42 = event.DistVector(var22, 0.0, var24) or var42
			if var42 < vm.f32(2.4) or var23 >= -1.0 and var23 <= 0.0 then
				var23 = 0.0
				level = 1
			else
				var22 = vm.f32(var22 * vm.f32(0.9))
				var23 = -vm.f32(var23 * vm.f32(0.58))
				var24 = vm.f32(var24 * vm.f32(0.9))
				var22 = vm.f32(var22 + vm.f32(var15 * 2.0))
				var24 = vm.f32(var24 + vm.f32(var17 * 2.0))
				var15 = vm.f32(var15 * vm.f32(0.2))
				var17 = vm.f32(var17 * vm.f32(0.2))
				if var25 > 8.0 then
					helper_79d90c82()
				end
				if var44 <= 0 then
					event.SndSePlay(var1, 5)
					var44 = 20
				end
			end
			var42 = event.DistVector(var15, 0.0, var17) or var42
			if var23 == 0.0 and var25 < vm.f32(1.6) and var42 < vm.f32(0.4) then
				if not (var45 == 6) then
					break
				end
				var31 = 1
				break
			end
		end
		if var3 < -500.0 then
			var31 = 1
			break
		elseif var46 >= 300 then
			var31 = 1
			break
		else
			pin_col = event.SphidaGetPinCol() or pin_col
			ball_col = event.SphidaGetBallCol() or ball_col
			x = vm.f32(pos_x - var2)
			y = vm.f32(pos_y - var3)
			z = vm.f32(pos_z - var4)
			var49 = event.DistVector(x, y, z) or var49
			if ball_col ~= pin_col then
				var53 = event.LinePointDist(var18, var19, var20, var2, var3, var4, pos_x, pos_y, pos_z) or var53
				if var53 >= 0.0 and var53 <= 30.0 then
					var21 = 1
					break
				end
				if var49 ~= 0.0 then
					if var49 <= 120.0 then
						do
							local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(vm.f32(0.6), var49))
							x = out1 or x
							y = out2 or y
							z = out3 or z
						end
						do
							local out1, out2, out3 = event.AddVector(var2, var3, var4, x, y, z)
							var2 = out1 or var2
							var3 = out2 or var3
							var4 = out3 or var4
						end
						do
							local out1, out2, out3 = event.AddVector(var22, var23, var24, x, y, z)
							var22 = out1 or var22
							var23 = out2 or var23
							var24 = out3 or var24
						end
					end
				else
					var21 = 1
					break
				end
			elseif var49 ~= 0.0 then
				if var49 <= 60.0 then
					do
						local out1, out2, out3 = event.ScaleVector(x, y, z, vm.fdiv(1.0, var49))
						x = out1 or x
						y = out2 or y
						z = out3 or z
					end
					do
						local out1, out2, out3 = event.SubVector(var2, var3, var4, x, y, z)
						var2 = out1 or var2
						var3 = out2 or var3
						var4 = out3 or var4
					end
					do
						local out1, out2, out3 = event.SubVector(var22, var23, var24, x, y, z)
						var22 = out1 or var22
						var23 = out2 or var23
						var24 = out3 or var24
					end
				end
			end
			event.SetCharaPos(8, var2, var3, var4)
			event.SetCharaPos(9, var2, var3, var4)
			do
				local out1, out2, out3 = event.CopyVector(var2, var3, var4)
				var18 = out1 or var18
				var19 = out2 or var19
				var20 = out3 or var20
			end
			if var3 <= var30 then
				event.SetFcameraFollowFlag(0)
				if var31 >= 30 then
					if var31 >= 50 then
						break
					end
				else
					event.SetCameraRef(var2, var3, var4)
				end
				var31 = var31 + 1
			elseif var46 >= 20 then
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetCameraSpeed(6.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				do
					local out1, out2, out3 = event.GetCameraPos()
					pos_x_2 = out1 or pos_x_2
					pos_y_2 = out2 or pos_y_2
					pos_z_2 = out3 or pos_z_2
				end
				event.SetFcameraHeight(30.0)
				event.SetFcameraDist(200.0)
				yaw = event.GetRefAngle(
					vm.f32(var2 + var22) + var22,
					vm.f32(var3 + var23) + var23,
					vm.f32(var4 + var24) + var24,
					pos_x_2,
					pos_y_2,
					pos_z_2
				) or yaw
				event.SetFcameraAngle(yaw)
				event.SetFcameraFollowA(
					vm.f32(var2 + var22) + var22,
					vm.f32(var3 + var23) + var23,
					vm.f32(var4 + var24) + var24
				)
				event.FcameraStep(1)
			end
			event.SphidaSetBallPos(var2, var3, var4)
			vm.wait(15)
			if var44 > 0 then
				var44 = var44 - 1
			end
			var46 = var46 + 1
		end
	end
	event.SetCharaPos(8, var2, var3, var4)
	event.SetCharaPos(9, var2, var3, var4)
	vm.wait(16)
	event.SphidaSetStatusFlag(0)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	if var31 == 0 then
		event.SphidaSetBallPos(var2, var3, var4)
		if var21 == 1 then
			event.CharaActive(0, 0)
			event.CharaActive(0, 8)
			event.CharaActive(0, 9)
			event.CharaActive(1, 12)
			event.SetCharaPos(12, pos_x, pos_y, pos_z)
			event.SetMotion(12, "発動", 6)
			event.SndSePlay(var1, 17)
			var46 = 0
			while var46 < 2 do
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetFcameraFollowA(pos_x, pos_y, pos_z)
				event.SetCameraSpeed(12.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				event.SetFcameraHeight(0.0)
				event.SetFcameraDist(100.0)
				event.FcameraStep(1)
				var46 = var46 + 1
				vm.wait(17)
			end
			event.CharaActive(0, 10)
			do
				local out1, out2, out3 = event.SphidaGetPinPos()
				pos_x = out1 or pos_x
				pos_y = out2 or pos_y
				pos_z = out3 or pos_z
			end
			var46 = 0
			while var46 < 100 do
				event.SetCameraCtrl(0)
				event.SetFcameraFollowFlag(1)
				event.SetFcameraFollowA(pos_x, pos_y, pos_z)
				event.SetCameraSpeed(12.0)
				event.SetFcameraFollowOfs(0.0, 0.0, 0.0)
				event.SetFcameraHeight(0.0)
				event.SetFcameraDist(100.0)
				event.FcameraStep(1)
				var46 = var46 + 1
				vm.wait(18)
			end
			event.CharaActive(0, 11)
			event.PostTreasureBox(pos_x, pos_y - 30.0, pos_z, var11, 294)
			helper_888ab2a3(54)
			helper_888ab2a3(30)
			event.DeleteChara(8)
			event.DeleteChara(9)
			event.DeleteChara(10)
			event.DeleteChara(11)
			event.SphidaSetPlayFlag(0)
			var1 = event.SndLoadSound_3(8, "snd2/sp/sp_000.sound.json") or var1
			event.StopBgm(0)
			event.SndSePlay(var1, 0)
			event.CharaActive(1, 0)
			event.SetFcameraFollowFlag(0)
			event.SetCameraCtrl(0)
			event.CmrsInit()
			event.CmrsSyncObj(0, 0.0, 15.0, 0.0, 0.0, 0.0, 80.0, "", 1)
			event.ObjsSetMotion(0, "カップインポーズ", 6)
			event.ObjsNormalDrive(0)
			event.ObjsNextMotion(0, "カップインポーズL", 4)
			event.ObjsResetDaPosition(0)
			event.SpriteInit(0)
			event.SpriteSetType(0, 0)
			event.SpriteSetTexture(0, "sphida_bar", tex_bank)
			event.SpriteSetUvsize(0, 258, 0, 254, 54)
			event.SpriteSetPos(0, 256, 208)
			event.SpriteSetPutsize(0, 254, 54)
			event.SpriteSetColor(0, 128, 128, 128, 0)
			event.SpriteSetScale(0, 5.0, 5.0)
			event.SpriteSetDraw(0, 1)
			event.EohSyncSprite(1, 0)
			event.ObjsInit(1)
			event.ObjsSyncObj(1, 1)
			event.ObjsSetScale(1, 1.0, 1.0, 0.0, 60)
			event.ObjsSetColor(1, 128, 128, 128, 128, 60)
			wait_objects(0)
			helper_888ab2a3(90)
			vm.wait(23)
			event.PlayBgm(0)
			event.SetCharaPos(0, var8, var9, var10)
			event.CmrsReleaseObj()
			event.SpriteSetDraw(0, 0)
		else
			count = event.SphidaGetParCount() or count
			if count >= 2 then
				event.SetMesWindowMode(0, 5)
				event.SetMesQuestionGyou(0, 0)
				var59 = helper_7c78bc02(0, 2002, 8, 256, 208, 2, 0)
				vm.wait(25)
				if var59 == 0 then
					do
						local out1, out2, out3, out4 = event.GetPartsFuncPos(var2, var3, var4, 100.0, "point")
						var43 = out1 or var43
						var8 = out2 or var8
						var9 = out3 or var9
						var10 = out4 or var10
					end
					if var43 == 0 then
						do
							local out1, out2, out3 = event.GetPartsOrigin(var2, var3, var4, 100.0)
							var8 = out1 or var8
							var9 = out2 or var9
							var10 = out3 or var10
						end
					end
					do
						local out1, out2, out3 = event.SphidaGetPinPos()
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					var25 = event.DistVector2(var8, var9, var10, pos_x, pos_y, pos_z) or var25
					if var25 < 40.0 then
						var11 = event.GetRand(6.2831855) or var11
						var11 = vm.f32(var11 - vm.f32(3.1415927))
						var8 = vm.f32(var8 + vm.f32(vm.sin(var11) * 50.0))
						var10 = vm.f32(var10 + vm.f32(vm.cos(var11) * 50.0))
					else
						do
							local out1, out2, out3, out4 = event.GetNearTboxPos(var8, var9, var10)
							var32 = out1 or var32
							var33 = out2 or var33
							var34 = out3 or var34
							var43 = out4 or var43
						end
						var46 = 0
						while var43 >= 0 do
							do
								local out1, out2, out3 = event.CopyVector(var8, var9, var10)
								var18 = out1 or var18
								var19 = out2 or var19
								var20 = out3 or var20
							end
							do
								local out1, out2, out3 = event.SubVector(var18, var19, var20, var32, var33, var34)
								var18 = out1 or var18
								var19 = out2 or var19
								var20 = out3 or var20
							end
							do
								local out1, out2, out3 = event.NormalVector(var18, var19, var20)
								var18 = out1 or var18
								var19 = out2 or var19
								var20 = out3 or var20
							end
							do
								local out1, out2, out3 = event.ScaleVector(var18, var19, var20, 32.0)
								var18 = out1 or var18
								var19 = out2 or var19
								var20 = out3 or var20
							end
							do
								local out1, out2, out3 = event.CopyVector(var32, var33, var34)
								var8 = out1 or var8
								var9 = out2 or var9
								var10 = out3 or var10
							end
							do
								local out1, out2, out3 = event.AddVector(var8, var9, var10, var18, var19, var20)
								var8 = out1 or var8
								var9 = out2 or var9
								var10 = out3 or var10
							end
							do
								local out1, out2, out3, out4 = event.GetNearTboxPos(var8, var9, var10)
								var32 = out1 or var32
								var33 = out2 or var33
								var34 = out3 or var34
								var43 = out4 or var43
							end
							var46 = var46 + 1
							if var46 > 6 then
								break
							end
						end
					end
					var6 = event.GetRefAngle(var8, var9, var10, var2, var3, var4) or var6
					event.SetCharaPos(0, var8, var9, var10)
					event.SetCharaRot(0, 0.0, var6, 0.0)
					event.SetCameraRef(var8, var9 + 30.0, var10)
					var6 = vm.f32(var6 - vm.f32(3.1415927))
					var6 = event.AngleLimit(var6) or var6
					var8 = vm.f32(vm.f32(vm.sin(var6) * 100.0) + var8)
					var9 = vm.f32(var9 + 30.0)
					var10 = vm.f32(vm.f32(vm.cos(var6) * 100.0) + var10)
					event.SetCameraPos(var8, var9, var10)
					event.ResetCamera(0)
				else
					event.SetCharaPos(0, var8, var9, var10)
				end
			else
				event.SetCharaPos(0, var8, var9, var10)
			end
		end
	else
		event.SndSePlay(var1, 18)
		event.SetFcameraFollowFlag(0)
		event.SetCameraCtrl(0)
		event.CmrsInit()
		event.CmrsSyncObj(0, 0.0, 15.0, 0.0, 0.0, 0.0, 80.0, "", 1)
		event.ObjsSetMotion(0, "だめだめ", 6)
		event.ObjsNormalDrive(0)
		event.ObjsNextMotion(0, "立ち", 4)
		event.ObjsResetDaPosition(0)
		event.SpriteInit(0)
		event.SpriteSetType(0, 0)
		event.SpriteSetTexture(0, "sphida_bar", tex_bank)
		event.SpriteSetUvsize(0, 334, 54, 178, 34)
		event.SpriteSetPos(0, 256, -25)
		event.SpriteSetPutsize(0, 160, 50)
		event.SpriteSetColor(0, 128, 128, 128, 128)
		event.SpriteSetDraw(0, 1)
		event.EohSyncSprite(1, 0)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 1.2, 16)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 2.0, 12)
		event.ObjsJump(1, 256.0, 208.0, 0.0, 1.5, 8)
		wait_objects(0)
		helper_888ab2a3(20)
		event.SpriteSetDraw(0, 0)
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var2 = out1 or var2
			var3 = out2 or var3
			var4 = out3 or var4
		end
		event.SphidaSetBallPos(var2, var3 + 3.0, var4)
		event.SetCharaPos(8, var2, var3 + 3.0, var4)
		event.SetCharaPos(9, var2, var3 + 3.0, var4)
		event.SetCharaPos(0, var8, var9, var10)
		event.CmrsReleaseObj()
	end
	if var21 == 1 then
		helper_bb794e6a(-1)
	else
		helper_bb794e6a(var1)
	end
	helper_12b74c6d(var21)
end

--- The Sphida event run when the menu button is pressed near the ball.
function script.sphida_near_ball()
	local var0: any = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	event.Initialize()
	helper_52115bbf()
	event.SetMesWindowMode(0, 5)
	event.SetMesQuestionGyou(0, 0)
	var0 = helper_7c78bc02(0, 2004, 8, 256, 208, 2, 0)
	if var0 == 0 then
		do
			local out1, out2, out3 = event.GetCharaPos(0)
			var1 = out1 or var1
			var2 = out2 or var2
			var3 = out3 or var3
		end
		event.SphidaSetBallPos(var1, var2 + 3.0, var3)
		event.SetCharaPos(8, var1, var2 + 3.0, var3)
		event.SetCharaPos(9, var1, var2 + 3.0, var3)
		helper_bb794e6a(-1)
		event.SetCrossfade(15)
	end
	vm.wait(2)
	event.Finish()
end

return script
