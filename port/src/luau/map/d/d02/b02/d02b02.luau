--!strict
-- map/d/d02/b02/d02b02.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_038a2e4d = require("@lib/event/helper_038a2e4d")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_4bd7f01a = require("@lib/event/helper_4bd7f01a")
local helper_6f1a51c5 = require("@lib/event/helper_6f1a51c5")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_786b79f1 = require("@lib/event/helper_786b79f1")
local helper_888ab2a3 = require("@lib/event/helper_888ab2a3")
local helper_89dcac54 = require("@lib/event/helper_89dcac54")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_9e49aefe = require("@lib/event/helper_9e49aefe")
local helper_ad8b424a = require("@lib/event/helper_ad8b424a")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_d61bc810 = require("@lib/event/helper_d61bc810")
local helper_ee1c51d0 = require("@lib/event/helper_ee1c51d0")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local helper_fbd9683d = require("@lib/event/helper_fbd9683d")
local interpolate = require("@lib/event/interpolate")
local open_message = require("@lib/event/open_message")
local set_window_mode = require("@lib/event/set_window_mode")
local wait_objects = require("@lib/event/wait_objects")

local global0: s32 = 0
local global1: s32 = 0

--- Helper function.
local function helper_10864(arg0: s32)
	local active_chr_no: s32 = 0
	local block: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e200/e257/e257_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 13)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e200/e257/e257_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 13)
	end
	if active_chr_no == 1 then
		global0 = 8
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 13)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.LoadMotion(5, "event/e200/e257/e257_mints.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 13)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e200/e257/e257_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.SetCharaShow(1, 0)
	event.SetCharaShow(2, 0)
	event.LoadChara(5, "dungeon/monster/b02a.gltf", "info", 11)
	event.CharaActive(0, 11)
	event.EohSyncChara(3, 11)
	event.EohSetSoundId(3, arg0)
	event.ObjsInit(3, 11)
	event.ObjsSyncObj(3, 3)
	block = event.LoadImg_4(5, "textures/event/e200/e257/e257telop01.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "e257telop01", block)
	event.SpriteSetPos(0, 256, 312)
	event.SpriteSetPutsize(0, 512, 128)
	event.SpriteSetUvsize(0, 0, 0, 512, 128)
	event.SpriteSetColor(0, 128, 128, 128, 0)
	event.SpriteSetScale(0, 1.0, 1.0)
	event.SpriteSetDraw(0, 0)
	event.EohSyncSprite(10, 0)
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.LoadMes(0, 5, "event/e200/e257/e257.txt")
end

--- Helper function.
local function helper_22300000(arg0: s32)
	global0 = 0
	global1 = 8
	global0 = 8
	global1 = 0
end

--- Helper function.
local function helper_104e4()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(13)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(13)
	end
	event.SetCharaShow(1, 1)
	event.SetCharaShow(2, 1)
	event.DeleteChara(11)
	event.DelImg(0)
end

--- Helper function.
local function helper_119c8()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local rot_y: f32 = 0
	local pos_x: f32 = 0
	local pos_z: f32 = 0
	local pos_x_2: f32 = 0
	local pos_z_2: f32 = 0
	local pos_x_3: f32 = 0
	local pos_z_3: f32 = 0
	local var15: s32 = 0
	local stream_open_state: s32 = 0
	local stream_open_state_2: s32 = 0
	local var18: f32 = 0
	local var19: f32 = 0
	local pos_x_4: f32 = 0
	local pos_z_4: f32 = 0
	local rot_y_2: f32 = 0
	local var23: f32 = 0
	local var24: f32 = 0
	local var25: f32 = 0
	local var26: f32 = 0
	local pos_x_5: f32 = 0
	local pos_y: f32 = 0
	local pos_z_5: f32 = 0
	local var30: f32 = 0
	local rot_y_3: f32 = 0
	local rot_y_4: f32 = 0
	local at: number = 0
	vm.section(function()
		event.SetFlag(257, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		event.LoadSound(2833)
		var1 = event.SndLoadSound_2(2833) or var1
		event.StopBgm(0)
		at = 2
		helper_888ab2a3(4)
		event.LoadBgm(31)
		helper_10864(var1)
		event.ObjsSetMotion(11, "歩き")
		event.CharaActive(0, 11)
		event.SetStatusbarShow(0, 1.0)
		event.CmrsInit()
		event.CmrsSetPos(222.66, 860.66, 315.48)
		event.CmrsSetRef(386.81, 799.84, 241.69)
		event.SetFadeIn(30)
		at = 3
		helper_888ab2a3(60)
		event.CharaActive(1, global1)
		event.EohSetFootSoundId(1, 17)
		event.ObjsSetPos(1, 459.65, 700.0, 314.9)
		event.ObjsSetRot(1, 0.0, -1.63, 0.0)
		event.ObjsJump(1, 338.06, 791.14, 270.62, -0.6, 30)
		event.ObjsSetMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "飛びＬ", 6)
		event.ObjsNextMotion(1, "着地2", 6)
		event.ObjsNextMotion(1, "着地2Ｌ", 6)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		at = 4
		helper_888ab2a3(10)
		event.SndSePlay(var1, 0)
		event.CharaActive(1, global0)
		event.ObjsSetPos(0, 465.64, 700.0, 251.72)
		event.ObjsSetRot(0, 0.0, -1.63, 0.0)
		event.ObjsJump(0, 345.04, 787.93, 219.25, -0.6, 30)
		event.ObjsSetMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "飛びL", 6)
		event.ObjsNextMotion(0, "こける", 6)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "無表情")
		event.ObjsTexAnime(0, 1, "通常目パチ")
		event.CharaDaEnable(global0, 0)
		at = 5
		helper_888ab2a3(20)
		event.SndSePlay(var1, 1)
		at = 6
		helper_888ab2a3(10)
		event.SndSePlay(var1, 2)
		at = 7
		helper_888ab2a3(30)
		event.CharaDaEnable(global1, 0)
		event.CharaDaEnable(global0, 1)
		event.InitDramaScene()
		var2 = vm.f32(0.116339)
		var3 = vm.f32(0.074309)
		var4 = vm.f32(0.124094)
		var5 = vm.f32(496.65527)
		var6 = vm.f32(526.85187)
		var7 = vm.f32(483.53925)
		rot_y = vm.f32(-1.63)
		pos_x = vm.f32(vm.f32(vm.sin(var2) * var5) + vm.f32(268.802))
		pos_z = vm.f32(vm.f32(vm.cos(var2) * var5) + vm.f32(-322.002))
		pos_x_2 = vm.f32(vm.f32(vm.sin(var3) * var6) + vm.f32(268.802))
		pos_z_2 = vm.f32(vm.f32(vm.cos(var3) * var6) + vm.f32(-322.002))
		pos_x_3 = vm.f32(vm.f32(vm.sin(var4) * var7) + vm.f32(268.802))
		pos_z_3 = vm.f32(vm.f32(vm.cos(var4) * var7) + vm.f32(-322.002))
		event.CmrsSetPos(pos_x_2, 809.42, pos_z_2)
		event.CmrsSetRef(pos_x_3, 815.5, pos_z_3)
		event.ObjsSetPos(1, pos_x, 791.14, pos_z)
		event.ObjsSetRot(1, 0.0, rot_y, 0.0)
		event.ObjsSetMotion(1, "着地2Ｌ", 6, -1.0, 1)
		event.ObjsNextMotion(1, "立ちあがり", 6)
		event.ObjsNextMotion(1, "立ち", 4)
		at = 8
		vm.wait(8)
		event.CharaDaEnable(global1, 1)
		event.ObjsResetDaPosition(1)
		event.ObjsMotionDelay(1, 1)
		event.ObjsResetDaPosition(1)
		event.ObjsMotionDelay(1, 1)
		event.ObjsResetDaPosition(1)
		at = 9
		helper_888ab2a3(60)
		event.ObjsSetMotion(1, "きょろきょろ歩き", 2)
		event.ObjsNextMotion(1, "歩き", 4)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "無表情")
		event.ObjsTexAnime(1, 1, "通常目～ひき目")
		event.ObjsTexAnime(1, 1, "通常口パク")
		var15 = 2570010
		event.StreamOpen3(1, var15)
		while true do
			stream_open_state = event.StreamOpenCheck() or stream_open_state
			if stream_open_state == 0 then
				break
			else
				at = 10
				vm.wait(10)
			end
		end
		event.StreamStandby(1)
		while true do
			stream_open_state_2 = event.StreamOpenCheck() or stream_open_state_2
			if stream_open_state_2 == 0 then
				break
			else
				at = 11
				vm.wait(11)
			end
		end
		event.SetMesOkuri(0, 0)
		event.MesMake_2(0, var15)
		open_message(0, -1, 8, 0, 0)
		event.StreamPlay(1)
		var0 = 0
		while var0 < 180 do
			pos_x = vm.f32(vm.f32(vm.sin(var2) * var5) + vm.f32(268.802))
			pos_z = vm.f32(vm.f32(vm.cos(var2) * var5) + vm.f32(-322.002))
			pos_x_2 = vm.f32(vm.f32(vm.sin(var3) * var6) + vm.f32(268.802))
			pos_z_2 = vm.f32(vm.f32(vm.cos(var3) * var6) + vm.f32(-322.002))
			pos_x_3 = vm.f32(vm.f32(vm.sin(var4) * var7) + vm.f32(268.802))
			pos_z_3 = vm.f32(vm.f32(vm.cos(var4) * var7) + vm.f32(-322.002))
			event.ObjsSetPos(1, pos_x, 791.14, pos_z)
			event.ObjsSetRot(1, 0.0, rot_y, 0.0)
			event.CmrsSetPos(pos_x_2, 809.42, pos_z_2)
			event.CmrsSetRef(pos_x_3, 815.5, pos_z_3)
			var0 = var0 + 1
			at = 12
			vm.wait(12)
			var2 = helper_4bd7f01a(vm.f32(var2 - vm.f32(0.002)))
			rot_y = helper_4bd7f01a(vm.f32(rot_y - vm.f32(0.002)))
			var3 = helper_4bd7f01a(vm.f32(var3 - vm.f32(0.002)))
			var4 = helper_4bd7f01a(vm.f32(var4 - vm.f32(0.002)))
			if var0 == 158 then
				event.ObjsTexAnime(1, 0, "通常口パク")
			end
		end
		close_message(0)
		event.StreamClose(1)
		event.SetMesOkuri(0, 1)
		var18 = vm.f32(var2 + 0.0625)
		var19 = vm.f32(var5 - 100.0)
		pos_x_4 = vm.f32(vm.f32(vm.sin(var18) * var19) + vm.f32(268.802))
		pos_z_4 = vm.f32(vm.f32(vm.cos(var18) * var19) + vm.f32(-322.002))
		rot_y_2 = 2.0
		event.ObjsSetPos(0, pos_x_4, 783.25, pos_z_4)
		event.ObjsSetRot(0, 0.0, rot_y_2, 0.0)
		event.ObjsSetMotion(0, "キョロキョロ歩き")
		event.EohSetFootSoundId(0, 17)
		var0 = 0
		while var0 < 90 do
			var23 = interpolate(-0.125, 0.0625, var0, 90)
			var18 = helper_4bd7f01a(vm.f32(var2 + var23))
			pos_x_4 = vm.f32(vm.f32(vm.sin(var18) * var19) + vm.f32(268.802))
			pos_z_4 = vm.f32(vm.f32(vm.cos(var18) * var19) + vm.f32(-322.002))
			pos_x = vm.f32(vm.f32(vm.sin(var2) * var5) + vm.f32(268.802))
			pos_z = vm.f32(vm.f32(vm.cos(var2) * var5) + vm.f32(-322.002))
			pos_x_2 = vm.f32(vm.f32(vm.sin(var3) * var6) + vm.f32(268.802))
			pos_z_2 = vm.f32(vm.f32(vm.cos(var3) * var6) + vm.f32(-322.002))
			pos_x_3 = vm.f32(vm.f32(vm.sin(var4) * var7) + vm.f32(268.802))
			pos_z_3 = vm.f32(vm.f32(vm.cos(var4) * var7) + vm.f32(-322.002))
			event.ObjsSetPos(0, pos_x_4, 783.25, pos_z_4)
			event.ObjsSetRot(0, 0.0, rot_y_2, 0.0)
			event.ObjsSetPos(1, pos_x, 791.14, pos_z)
			event.ObjsSetRot(1, 0.0, rot_y, 0.0)
			event.CmrsSetPos(pos_x_2, 809.42, pos_z_2)
			event.CmrsSetRef(pos_x_3, 815.5, pos_z_3)
			var0 = var0 + 1
			at = 13
			vm.wait(13)
			rot_y_2 = helper_4bd7f01a(vm.f32(rot_y_2 - vm.f32(0.002)))
			var2 = helper_4bd7f01a(vm.f32(var2 - vm.f32(0.002)))
			rot_y = helper_4bd7f01a(vm.f32(rot_y - vm.f32(0.002)))
			var3 = helper_4bd7f01a(vm.f32(var3 - vm.f32(0.002)))
			var4 = helper_4bd7f01a(vm.f32(var4 - vm.f32(0.002)))
		end
		event.PlayBgm(0)
		event.ObjsSetMotion(1, "立ち")
		event.ObjsSetMotion(0, "指さす", 2)
		event.ObjsNextMotion(0, "指さすL", 4)
		at = 14
		helper_4116e6bb(2570020)
		event.ObjsSetMotion(1, "右振りかえり180度（ＰＧ）", 2)
		event.ObjsNextMotion(1, "立ち", 4)
		rot_y = vm.f32(-2.17)
		var0 = 0
		while var0 < 30 do
			event.ObjsSetRot(1, 0.0, rot_y, 0.0)
			at = 15
			vm.wait(15)
			rot_y = helper_4bd7f01a(vm.f32(rot_y - vm.f32(0.07)))
			var0 = var0 + 1
		end
		at = 16
		helper_888ab2a3(30)
		close_message(0)
		event.StreamClose(1)
		event.CharaActive(0, global0)
		event.CharaActive(0, global1)
		event.CharaActive(1, 11)
		event.CmrsSetPos(356.04, 805.96, -432.95)
		event.CmrsSetRef(414.81, 835.96, -493.23)
		var0 = 0
		while var0 < 240 do
			pos_y = interpolate(vm.f32(1691.85), vm.f32(858.57), var0, 240)
			var30 = interpolate(vm.f32(-3.926991), vm.f32(-1.5707964), var0, 240)
			pos_x_5 = vm.f32(vm.sin(var30) * vm.f32(1476.7))
			pos_z_5 = vm.f32(vm.cos(var30) * vm.f32(1476.7))
			pos_x_5 = vm.f32(pos_x_5 + vm.f32(1970.21))
			pos_z_5 = vm.f32(pos_z_5 + vm.f32(-576.77))
			var24 = event.GetRotLookPos(pos_x_5 - var25, pos_z_5 - var26) or var24
			event.ObjsSetPos(3, pos_x_5, pos_y, pos_z_5)
			event.ObjsSetRot(3, 0.0, var24, 0.0)
			at = 17
			vm.wait(17)
			var0 = var0 + 1
			var25 = pos_x_5
			var26 = pos_z_5
		end
		event.CmrsInit()
		event.CmrsSetPos(500.0, 1130.3, -916.4)
		event.CmrsSetRef(500.0, 1135.5, -1000.0)
		event.CmrsMove2(500.0, 1100.0, -500.0, 500.0, 1100.0, -1000.0, 150, 2, 1.0)
		event.ObjsSetPos(3, 500.0, 1100.0, -1000.0)
		event.ObjsSetRot(3, 0.0, 0.0, 0.0)
		event.SndSePlay(var1, 4)
		at = 18
		helper_888ab2a3(30)
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(10, 128.0, 128.0, 128.0, 128.0, 30)
		at = 19
		helper_888ab2a3(240)
		event.SpriteSetDraw(0, 0)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(0, 11)
		event.CmrsInit()
		event.CmrsSetPos(-242.49, 801.47, -239.88)
		event.CmrsSetRef(-175.51, 815.89, -178.94)
		event.ObjsSetPos(0, -219.74, 784.37, -209.85)
		event.ObjsSetRot(0, 0.0, -1.95, 0.0)
		event.ObjsSetMotion(0, "上向くL", 4)
		event.ObjsSetPos(1, -215.91, 784.38, -225.43)
		event.ObjsSetRot(1, 0.0, -1.39, 0.0)
		event.ObjsSetMotion(1, "上向くL", 4)
		event.ObjsResetDaPosition(1)
		at = 20
		helper_888ab2a3(60)
		event.SetPakuAnim(1, "通常口パク")
		at = 21
		helper_4116e6bb(2570030)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "上向くL")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsSetMotion(0, "かまえる", 2)
		event.ObjsNextMotion(0, "かまえるL", 4)
		at = 22
		helper_888ab2a3(30)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目パチ")
		event.SetPakuAnim(0, "通常口パク")
		at = 23
		helper_4116e6bb(2570040)
		event.ResetPakuAnim()
		at = 24
		helper_888ab2a3(15)
		event.CmrsSetPos(-212.52, 803.06, -183.32)
		event.CmrsSetRef(-203.01, 814.64, -250.93)
		event.ObjsSetPos(0, -214.38, 784.37, -234.13)
		event.ObjsSetRot(0, 0.0, 3.13, 0.0)
		event.ObjsSetMotion(0, "かまえるL", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おこり顔")
		event.ObjsTexAnime(0, 1, "おこり目パチ")
		event.ObjsSetPos(1, -202.79, 784.38, -212.64)
		event.ObjsSetRot(1, 0.0, -3.07, 0.0)
		event.ObjsSetMotion(1, "構えＬ", 4)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目～おこり目とじ")
		event.CharaActive(1, 11)
		event.ObjsSetPos(3, 115.96, 1381.16, -3665.01)
		event.ObjsSetRot(3, 0.7853982, -0.15, 0.0)
		event.ObjsMove(3, -243.09, 926.4, 17.21, 120)
		at = 25
		helper_888ab2a3(30)
		event.SndSePlay(var1, 5)
		at = 26
		helper_888ab2a3(30)
		event.ObjsSetMotion(0, "蝶迫る", 2)
		event.ObjsNextMotion(0, "蝶迫るL", 4)
		event.ObjsSetMotion(1, "構えから顔覆う", 2)
		event.ObjsNextMotion(1, "覆うＬ", 4)
		at = 27
		helper_888ab2a3(30)
		event.SetMotionBlur(96)
		event.SetWind(40.0, -9.51001, 0.0, 67.609985)
		at = 28
		helper_888ab2a3(30)
		event.SetMotionBlur(0)
		event.CharaActive(0, 11)
		event.ObjsSetMotion(0, "振り返る", 2)
		event.ObjsNextMotion(0, "上向くL", 4)
		event.ObjsSetMotion(1, "覆いから右回り右180", 2)
		event.ObjsNextMotion(1, "上向くL", 4)
		var0 = 0
		while var0 < 30 do
			rot_y_3 = interpolate(vm.f32(3.13), vm.f32(-0.15), var0, 30.0)
			rot_y_4 = interpolate(vm.f32(-3.07), vm.f32(-0.62), var0, 30.0)
			event.ObjsSetRot(0, 0.0, rot_y_3, 0.0)
			event.ObjsSetRot(1, 0.0, rot_y_4, 0.0)
			at = 29
			vm.wait(29)
			var0 = var0 + 1
		end
		event.SetWind(-1)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "おこり顔")
		event.ObjsTexAnime(1, 1, "おこり目とじ～おこり目あき")
		event.SetPakuAnim(1, "通常口パク")
		at = 30
		helper_4116e6bb(2570050)
		event.ResetPakuAnim()
		event.SetFadeOut(30)
		at = 31
		helper_888ab2a3(45)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(4)
		end
		if at <= 2 then
			helper_22300000(var1)
			helper_038a2e4d(60)
		end
		if at <= 3 then
			helper_038a2e4d(10)
		end
		if at <= 4 then
			helper_038a2e4d(20)
		end
		if at <= 5 then
			helper_038a2e4d(10)
		end
		if at <= 6 then
			helper_038a2e4d(30)
		end
		if at <= 7 then
			var2 = vm.f32(0.116339)
			var3 = vm.f32(0.074309)
			var4 = vm.f32(0.124094)
			var5 = vm.f32(496.65527)
			var6 = vm.f32(526.85187)
			var7 = vm.f32(483.53925)
			rot_y = vm.f32(-1.63)
			pos_x = vm.f32(vm.f32(vm.sin(var2) * var5) + vm.f32(268.802))
			pos_z = vm.f32(vm.f32(vm.cos(var2) * var5) + vm.f32(-322.002))
			pos_x_2 = vm.f32(vm.f32(vm.sin(var3) * var6) + vm.f32(268.802))
			pos_z_2 = vm.f32(vm.f32(vm.cos(var3) * var6) + vm.f32(-322.002))
			pos_x_3 = vm.f32(vm.f32(vm.sin(var4) * var7) + vm.f32(268.802))
			pos_z_3 = vm.f32(vm.f32(vm.cos(var4) * var7) + vm.f32(-322.002))
		end
		if at <= 8 then
			helper_038a2e4d(60)
		end
		if at <= 9 then
			var15 = 2570010
		end
		if at <= 11 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			var0 = 0
			pos_x = vm.f32(vm.f32(vm.sin(var2) * var5) + vm.f32(268.802))
			pos_z = vm.f32(vm.f32(vm.cos(var2) * var5) + vm.f32(-322.002))
			pos_x_2 = vm.f32(vm.f32(vm.sin(var3) * var6) + vm.f32(268.802))
			pos_z_2 = vm.f32(vm.f32(vm.cos(var3) * var6) + vm.f32(-322.002))
			pos_x_3 = vm.f32(vm.f32(vm.sin(var4) * var7) + vm.f32(268.802))
			pos_z_3 = vm.f32(vm.f32(vm.cos(var4) * var7) + vm.f32(-322.002))
			local _ = var0 < 180
			var0 = var0 + 1
		end
		if at <= 12 then
			var2 = helper_9e49aefe(vm.f32(var2 - vm.f32(0.002)))
			rot_y = helper_9e49aefe(vm.f32(rot_y - vm.f32(0.002)))
			var3 = helper_9e49aefe(vm.f32(var3 - vm.f32(0.002)))
			var4 = helper_9e49aefe(vm.f32(var4 - vm.f32(0.002)))
			helper_d16eef1e(0)
			var18 = vm.f32(var2 + 0.0625)
			var19 = vm.f32(var5 - 100.0)
			pos_x_4 = vm.f32(vm.f32(vm.sin(var18) * var19) + vm.f32(268.802))
			pos_z_4 = vm.f32(vm.f32(vm.cos(var18) * var19) + vm.f32(-322.002))
			rot_y_2 = 2.0
			local _ = var0 == 158
			var0 = 0
			var23 = interpolate(-0.125, 0.0625, var0, 90)
			var18 = helper_9e49aefe(vm.f32(var2 + var23))
			pos_x_4 = vm.f32(vm.f32(vm.sin(var18) * var19) + vm.f32(268.802))
			pos_z_4 = vm.f32(vm.f32(vm.cos(var18) * var19) + vm.f32(-322.002))
			pos_x = vm.f32(vm.f32(vm.sin(var2) * var5) + vm.f32(268.802))
			pos_z = vm.f32(vm.f32(vm.cos(var2) * var5) + vm.f32(-322.002))
			pos_x_2 = vm.f32(vm.f32(vm.sin(var3) * var6) + vm.f32(268.802))
			pos_z_2 = vm.f32(vm.f32(vm.cos(var3) * var6) + vm.f32(-322.002))
			pos_x_3 = vm.f32(vm.f32(vm.sin(var4) * var7) + vm.f32(268.802))
			pos_z_3 = vm.f32(vm.f32(vm.cos(var4) * var7) + vm.f32(-322.002))
			local _ = var0 < 90
			var0 = var0 + 1
		end
		if at <= 13 then
			rot_y_2 = helper_9e49aefe(vm.f32(rot_y_2 - vm.f32(0.002)))
			var2 = helper_9e49aefe(vm.f32(var2 - vm.f32(0.002)))
			rot_y = helper_9e49aefe(vm.f32(rot_y - vm.f32(0.002)))
			var3 = helper_9e49aefe(vm.f32(var3 - vm.f32(0.002)))
			var4 = helper_9e49aefe(vm.f32(var4 - vm.f32(0.002)))
			helper_8cd371d7(2570020)
		end
		if at <= 14 then
			rot_y = vm.f32(-2.17)
			var0 = 0
		end
		if at <= 15 then
			rot_y = helper_9e49aefe(vm.f32(rot_y - vm.f32(0.07)))
			local _ = var0 < 30
			var0 = var0 + 1
			helper_038a2e4d(30)
		end
		if at <= 16 then
			helper_d16eef1e(0)
			var0 = 0
			pos_y = interpolate(vm.f32(1691.85), vm.f32(858.57), var0, 240)
			var30 = interpolate(vm.f32(-3.926991), vm.f32(-1.5707964), var0, 240)
			pos_x_5 = vm.f32(vm.sin(var30) * vm.f32(1476.7))
			pos_z_5 = vm.f32(vm.cos(var30) * vm.f32(1476.7))
			pos_x_5 = vm.f32(pos_x_5 + vm.f32(1970.21))
			pos_z_5 = vm.f32(pos_z_5 + vm.f32(-576.77))
		end
		if at <= 17 then
			local _ = var0 < 240
			var0 = var0 + 1
			var25 = pos_x_5
			var26 = pos_z_5
			helper_038a2e4d(30)
		end
		if at <= 18 then
			helper_038a2e4d(240)
		end
		if at <= 19 then
			helper_038a2e4d(60)
		end
		if at <= 20 then
			helper_8cd371d7(2570030)
		end
		if at <= 21 then
			helper_038a2e4d(30)
		end
		if at <= 22 then
			helper_8cd371d7(2570040)
		end
		if at <= 23 then
			helper_038a2e4d(15)
		end
		if at <= 24 then
			helper_038a2e4d(30)
		end
		if at <= 25 then
			helper_038a2e4d(30)
		end
		if at <= 26 then
			helper_038a2e4d(30)
		end
		if at <= 27 then
			helper_038a2e4d(30)
		end
		if at <= 28 then
			var0 = 0
			rot_y_3 = interpolate(vm.f32(3.13), vm.f32(-0.15), var0, 30.0)
			rot_y_4 = interpolate(vm.f32(-3.07), vm.f32(-0.62), var0, 30.0)
		end
		if at <= 29 then
			local _ = var0 < 30
			var0 = var0 + 1
			helper_8cd371d7(2570050)
		end
		if at <= 30 then
			helper_038a2e4d(45)
		end
		return true
	end)
	event.CancelDramaScene()
	event.CharaDaEnable(global1, 1)
	event.SpriteSetDraw(0, 0)
	helper_104e4()
	event.SetStatusbarShow(1, 1.0)
	event.SetMotionBlur(0)
	event.PlayBgm(0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Helper function.
local function helper_17368()
	local active_chr_no: s32 = 0
	local block: s32 = 0
	event.SetMesWindowMode(0, 7)
	event.AssignStack(5)
	event.ClearStack(5)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		global0 = 0
		global1 = 8
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.LoadChara(5, "chara/c02_base.gltf", "info", global1)
		event.LoadEquip(5, 1, 4, "info", global1)
		event.LoadEquip(5, 1, 3, "info", global1)
		event.LoadEquip(5, 1, 2, "info", global1, 14)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e200/e260/e260_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
		event.CharaActive(1, 14)
	end
	if active_chr_no == 1 then
		global0 = 8
		global1 = 0
		event.LoadChara(5, "chara/c01_base.gltf", "info", global0)
		event.LoadEquip(5, 0, 4, "info", global0)
		event.LoadEquip(5, 0, 3, "info", global0)
		event.LoadEquip(5, 0, 2, "info", global0, 14)
		event.LoadMotion(5, "event/basic_evmot/mints_set.gltf", "info", global0)
		event.EohSyncChara(0, global0)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CharaActive(0, global0)
		event.CharaActive(1, 14)
		event.LoadMotion(5, "event/basic_evmot/monica_set.gltf", "info", global1)
		event.LoadMotion(5, "event/e200/e260/e260_monica.gltf", "info", global1)
		event.EohSyncChara(1, global1)
		event.ObjsInit(1)
		event.ObjsSyncObj(1, 1)
		event.CharaActive(0, global1)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 0)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 0)
	event.LoadChara(5, "event/itemget_ev/itemget_ev.gltf", "info", 11)
	event.CharaActive(0, 11)
	event.LoadChara(5, "event/e200/e260/e260_holly.gltf", "info", 12)
	event.CharaActive(0, 12)
	event.EohSyncChara(4, 12)
	event.ObjsInit(4, 12)
	event.ObjsSyncObj(4, 4)
	event.EohSetFrameStatus(4, "kami", 0)
	event.LoadChara(5, "event/e200/e260/e260_lettr1.gltf", "info", 13)
	event.CharaActive(0, 13)
	event.EohSyncChara(5, 13)
	event.ObjsInit(5, 13)
	event.ObjsSyncObj(5, 5)
	event.LoadChara(5, "dungeon/monster/b02a1.gltf", "b02a1", 15)
	event.CharaActive(0, 15)
	event.EohSyncChara(6, 15)
	event.ObjsInit(6, 15)
	event.ObjsSyncObj(6, 6)
	event.LoadChara(5, "dungeon/monster/b02a2.gltf", "b02a2", 16)
	event.CharaActive(0, 16)
	event.EohSyncChara(7, 16)
	event.ObjsInit(7, 16)
	event.ObjsSyncObj(7, 7)
	event.LoadChara(5, "dungeon/monster/b02a3.gltf", "b02a3", 17)
	event.CharaActive(0, 17)
	event.EohSyncChara(8, 17)
	event.ObjsInit(8, 17)
	event.ObjsSyncObj(8, 8)
	event.LoadChara(5, "dungeon/monster/b02a4.gltf", "b02a4", 18)
	event.CharaActive(0, 18)
	event.EohSyncChara(9, 18)
	event.ObjsInit(9, 18)
	event.ObjsSyncObj(9, 9)
	event.LoadChara(5, "dungeon/monster/b02a5.gltf", "b02a5", 19)
	event.CharaActive(0, 19)
	event.EohSyncChara(10, 19)
	event.ObjsInit(10, 19)
	event.ObjsSyncObj(10, 10)
	event.LoadChara(5, "dungeon/monster/b02a6.gltf", "b02a6", 20)
	event.CharaActive(0, 20)
	event.EohSyncChara(11, 20)
	event.ObjsInit(11, 20)
	event.ObjsSyncObj(11, 11)
	event.LoadChara(5, "dungeon/monster/b02a7.gltf", "b02a7", 21)
	event.CharaActive(0, 21)
	event.EohSyncChara(12, 21)
	event.ObjsInit(12, 21)
	event.ObjsSyncObj(12, 12)
	event.LoadChara(5, "event/e200/e260/e260_hohikari.gltf", "info", 22)
	event.CharaActive(0, 22)
	event.EohSyncChara(13, 22)
	event.ObjsInit(13, 22)
	event.ObjsSyncObj(13, 13)
	event.LoadChara(5, "event/e200/e260/e260_hohikari1.gltf", "info", 23)
	event.CharaActive(0, 23)
	event.EohSyncChara(14, 23)
	event.ObjsInit(14, 23)
	event.ObjsSyncObj(14, 14)
	block = event.LoadImg_4(5, "textures/event/e200/e260/e260.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetTexture(0, "e26001", block)
	event.SpriteSetColor(0, 128, 128, 128, 0)
	event.SpriteSetUvsize(0, 0, 0, 512, 416)
	event.SpriteSetPutsize(0, 512, 416)
	event.SpriteSetPos(0, 256, 208)
	event.SpriteSetDraw(0, 0)
	event.EohSyncSprite(20, 0)
	event.ObjsInit(20)
	event.ObjsSyncObj(20, 20)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "e26002", block)
	event.SpriteSetColor(1, 128, 128, 128, 0)
	event.SpriteSetUvsize(1, 0, 0, 512, 416)
	event.SpriteSetPutsize(1, 512, 416)
	event.SpriteSetPos(1, 256, 208)
	event.SpriteSetDraw(1, 0)
	event.EohSyncSprite(21, 1)
	event.ObjsInit(21)
	event.ObjsSyncObj(21, 21)
	event.SpriteInit(2)
	event.SpriteSetType(2, 0)
	event.SpriteSetTexture(2, "e26003", block)
	event.SpriteSetColor(2, 128, 128, 128, 0)
	event.SpriteSetUvsize(2, 0, 0, 512, 416)
	event.SpriteSetPutsize(2, 512, 416)
	event.SpriteSetPos(2, 256, 208)
	event.SpriteSetDraw(2, 0)
	event.EohSyncSprite(22, 2)
	event.ObjsInit(22)
	event.ObjsSyncObj(22, 22)
	event.SpriteInit(3)
	event.SpriteSetType(3, 0)
	event.SpriteSetTexture(3, "e26004", block)
	event.SpriteSetColor(3, 128, 128, 128, 0)
	event.SpriteSetUvsize(3, 0, 0, 512.0, 416)
	event.SpriteSetPutsize(3, 512, 416)
	event.SpriteSetPos(3, 256, 208)
	event.SpriteSetDraw(3, 0)
	event.EohSyncSprite(23, 3)
	event.ObjsInit(23)
	event.ObjsSyncObj(23, 23)
	event.SpriteInit(4)
	event.SpriteSetType(4, 0)
	event.SpriteSetTexture(4, "e26005", block)
	event.SpriteSetColor(4, 128, 128, 128, 0)
	event.SpriteSetUvsize(4, 0, 0, 512.0, 416)
	event.SpriteSetPutsize(4, 512, 416)
	event.SpriteSetPos(4, 256, 208)
	event.SpriteSetDraw(4, 0)
	event.EohSyncSprite(24, 4)
	event.ObjsInit(24)
	event.ObjsSyncObj(24, 24)
	event.LoadMes(0, 5, "event/e200/e260/e260.txt")
end

--- Helper function.
local function helper_22a00000()
	global0 = 0
	global1 = 8
	global0 = 8
	global1 = 0
end

--- Helper function.
local function helper_16d78()
	local active_chr_no: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.CharaActive(1, global0)
		event.CharaActive(0, global1)
		event.DelExtMotion(global1)
		event.DeleteChara(global1)
		event.DeleteChara(14)
	end
	if active_chr_no == 1 then
		event.CharaActive(1, global1)
		event.CharaActive(0, global0)
		event.DelExtMotion(global1)
		event.DeleteChara(global0)
		event.DeleteChara(14)
	end
	event.EohSyncChara(2, 1)
	event.EohSetShow(2, 1)
	event.EohSyncChara(3, 2)
	event.EohSetShow(3, 1)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.DeleteChara(18)
	event.DeleteChara(19)
	event.DeleteChara(20)
	event.DeleteChara(21)
	event.DeleteChara(22)
	event.DeleteChara(23)
	event.SpriteSetDraw(0, 0)
	event.SpriteSetDraw(1, 0)
	event.SpriteSetDraw(2, 0)
	event.SpriteSetDraw(3, 0)
	event.SpriteSetDraw(4, 0)
	event.DelImg(0)
end

--- Helper function.
local function helper_19adc()
	local var0: s32 = 0
	local var1: s32 = 0
	local active_chr_no: s32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(260, 1)
		event.Initialize()
		event.SetMesWindowMode(0, 7)
		event.SetFadeOut(30)
		at = 2
		helper_888ab2a3(30)
		event.LoadSound(2836)
		var0 = event.SndLoadSound_2(2836) or var0
		var1 = event.SndLoadSound_3(8, "snd2/sp/sp_006.sound.json") or var1
		event.StopBgm(0)
		at = 3
		helper_888ab2a3(4)
		event.LoadBgm(53)
		event.SndSetEnvVol(0.6)
		active_chr_no = event.GetActiveChrNo() or active_chr_no
		if active_chr_no == 2 then
			event.DngSetupMainUnit(0)
		end
		if active_chr_no == 3 then
			event.DngSetupMainUnit(1)
		end
		helper_17368()
		event.CharaActive(0, global0)
		event.CharaActive(0, global1)
		event.CharaActive(0, 11)
		event.CharaActive(0, 12)
		event.CharaActive(0, 13)
		event.CharaActive(0, 14)
		event.CharaActive(0, 15)
		event.CharaActive(0, 16)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.CharaActive(0, 19)
		event.CharaActive(0, 20)
		event.CharaActive(0, 21)
		event.CharaActive(0, 22)
		event.CharaActive(0, 23)
		event.SetStatusbarShow(0, 1.0)
		event.InitDramaScene()
		event.CmrsInit()
		event.CmrsSetPos(0.0, 950.0, 200.0)
		event.CmrsSetRef(0.0, 1000.0, 0.0)
		event.SndSePlay(var0, 0)
		event.SetFadeIn(30)
		at = 4
		helper_888ab2a3(30)
		event.CharaActive(1, 15)
		event.CharaActive(1, 16)
		event.CharaActive(1, 17)
		event.CharaActive(1, 18)
		event.CharaActive(1, 19)
		event.CharaActive(1, 20)
		event.CharaActive(1, 21)
		event.EohSetScale(6, 0.5, 0.5, 0.5)
		event.EohSetScale(7, 0.5, 0.5, 0.5)
		event.EohSetScale(8, 0.5, 0.5, 0.5)
		event.EohSetScale(9, 0.5, 0.5, 0.5)
		event.EohSetScale(10, 0.5, 0.5, 0.5)
		event.EohSetScale(11, 0.5, 0.5, 0.5)
		event.EohSetScale(12, 0.5, 0.5, 0.5)
		event.ObjsSetPos(6, 0.0, 1000.0, 200.0)
		event.ObjsSetRot(6, 0.0, 3.1415927, 0.0)
		event.ObjsSetMotion(6, "飛行", 4)
		event.ObjsSetPos(7, 141.4, 950.0, 141.4)
		event.ObjsSetRot(7, 0.0, 3.926991, 0.0)
		event.ObjsSetMotion(7, "飛行", 4)
		event.ObjsSetPos(8, -141.4, 950.0, 141.4)
		event.ObjsSetRot(8, 0.0, 2.3561945, 0.0)
		event.ObjsSetMotion(8, "飛行", 4)
		event.ObjsSetPos(9, 70.7, 925.0, 170.7)
		event.ObjsSetRot(9, 0.0, 3.5342917, 0.0)
		event.ObjsSetMotion(9, "飛行", 4)
		event.ObjsSetPos(10, 70.7, 975.0, 170.7)
		event.ObjsSetRot(10, 0.0, 3.5342917, 0.0)
		event.ObjsSetMotion(10, "飛行", 4)
		event.ObjsSetPos(11, -70.7, 925.0, 170.7)
		event.ObjsSetRot(11, 0.0, 27.488937, 0.0)
		event.ObjsSetMotion(11, "飛行", 4)
		event.ObjsSetPos(12, -70.7, 975.0, 170.7)
		event.ObjsSetRot(12, 0.0, 27.488937, 0.0)
		event.ObjsSetMotion(12, "飛行", 4)
		event.ObjsMove(10, 0.0, 1000.0, 0.0, 120)
		at = 5
		helper_888ab2a3(3)
		event.ObjsMove(11, 0.0, 1000.0, 0.0, 120)
		at = 6
		helper_888ab2a3(3)
		event.ObjsMove(6, 0.0, 1000.0, 0.0, 120)
		at = 7
		helper_888ab2a3(3)
		event.ObjsMove(7, 0.0, 1000.0, 0.0, 120)
		at = 8
		helper_888ab2a3(3)
		event.ObjsMove(12, 0.0, 1000.0, 0.0, 120)
		at = 9
		helper_888ab2a3(3)
		event.ObjsMove(9, 0.0, 1000.0, 0.0, 120)
		at = 10
		helper_888ab2a3(3)
		event.ObjsMove(8, 0.0, 1000.0, 0.0, 120)
		at = 11
		helper_888ab2a3(60)
		event.CharaActive(1, 22)
		event.ObjsSetPos(13, 0.0, 1000.0, 0.0)
		event.ObjsSetMotion(13, "ホーリーの光", 6)
		event.SndSeStop(var0, 0)
		at = 12
		wait_objects(10)
		event.CharaActive(0, 19)
		at = 13
		wait_objects(11)
		event.CharaActive(0, 20)
		at = 14
		wait_objects(6)
		event.CharaActive(0, 15)
		at = 15
		wait_objects(7)
		event.CharaActive(0, 16)
		at = 16
		wait_objects(12)
		event.CharaActive(0, 21)
		at = 17
		wait_objects(9)
		event.CharaActive(0, 18)
		at = 18
		wait_objects(8)
		event.CharaActive(0, 17)
		event.SndSePlay(var0, 1)
		event.CharaActive(1, 12)
		event.SetCharaShow(12, 1, 1, 0.05)
		event.ObjsSetPos(4, 0.0, 980.0, 0.0)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(4, "現れる", 4)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "デフォルト顔")
		event.ObjsTexAnime(4, 1, "目とじ")
		event.CharaActive(1, 23)
		event.ObjsSetPos(14, 0.0, 980.0, 0.0)
		event.ObjsSetRot(14, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(14, "光MAX", 4)
		at = 19
		helper_888ab2a3(60)
		event.ObjsSetMotion(14, "消える", 2)
		at = 20
		helper_888ab2a3(60)
		event.CharaActive(0, 22)
		event.CharaActive(0, 23)
		event.CmrsSetPos(0.0, 1010.0, 35.0)
		event.CmrsSetRef(0.0, 1010.0, 0.0)
		event.ObjsSetPos(4, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(4, "立ち", 4)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "デフォルト顔")
		event.ObjsTexAnime(4, 1, "目とじ")
		event.CmrsMove(0.0, 1025.0, 35.0, 0.0, 1025.0, 0.0, 150)
		at = 21
		helper_888ab2a3(150)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "デフォルト顔")
		event.ObjsTexAnime(4, 1, "目とじ～目あき")
		event.PlayBgm(0)
		event.SetPakuAnim(4, "口パク")
		at = 22
		helper_4116e6bb(2600010)
		event.ResetPakuAnim()
		event.CmrsInit()
		event.CmrsSetPos(-2.24, 796.76, -510.87)
		event.CmrsSetRef(-68.02, 802.26, -509.43)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 14)
		event.CharaActive(0, 12)
		event.ObjsSetPos(0, -42.69, 774.65, -517.65)
		event.ObjsSetRot(0, 0.0, 2.13, 0.0)
		event.ObjsSetMotion(0, "立ち")
		event.ObjsSetPos(1, -28.93, 774.65, -505.13)
		event.ObjsSetRot(1, 0.0, 2.61, 0.0)
		event.ObjsResetDaPosition(1)
		event.SetPakuAnim(1, "通常口パク")
		at = 23
		helper_4116e6bb(2600020)
		event.ResetPakuAnim()
		event.CmrsSetPos(19.58, 1019.28, 33.73)
		event.CmrsSetRef(-28.59, 1038.2, -27.4)
		event.CharaActive(0, global0)
		event.CharaActive(0, global1)
		event.CharaActive(0, 14)
		event.CharaActive(1, 12)
		event.ObjsSetMotion(4, "会話2", 2)
		event.ObjsNextMotion(4, "立ち")
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "デフォルト顔")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.SetPakuAnim(4, "口パク")
		at = 24
		helper_4116e6bb(2600030)
		event.ObjsSetMotion(4, "立ち")
		event.ResetPakuAnim()
		at = 25
		wait_objects(4)
		event.CmrsSetPos(-2.24, 796.76, -510.87)
		event.CmrsSetRef(-68.02, 802.26, -509.43)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 14)
		event.CharaActive(0, 12)
		event.SetPakuAnim(1, "通常口パク")
		at = 26
		helper_4116e6bb(2600040)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち")
		event.SetPakuAnim(1, "通常口パク")
		at = 27
		helper_4116e6bb(2600045)
		event.ResetPakuAnim()
		event.CmrsSetPos(0.0, 1025.0, 35.0)
		event.CmrsSetRef(0.0, 1025.0, 0.0)
		event.CharaActive(0, global0)
		event.CharaActive(0, global1)
		event.CharaActive(0, 14)
		event.CharaActive(1, 12)
		event.ObjsSetMotion(4, "うつむく", 6)
		event.ObjsNextMotion(4, "うつむくL", 6)
		event.ObjsNextMotion(4, "顔を上げる", 2)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "デフォルト顔")
		event.ObjsTexAnime(4, 1, "目あき～目とじ")
		event.ObjsTexaDelay(4, 75)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "デフォルト顔")
		event.ObjsTexAnime(4, 1, "目とじ～目あき")
		event.SetPakuAnim(4, "口パク")
		at = 28
		helper_4116e6bb(2600050)
		event.ResetPakuAnim()
		at = 29
		wait_objects(4)
		event.CmrsSetPos(-2.24, 796.76, -510.87)
		event.CmrsSetRef(-68.02, 802.26, -509.43)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 14)
		event.CharaActive(0, 12)
		event.SetPakuAnim(1, "通常口パク")
		at = 30
		helper_4116e6bb(2600060)
		event.ResetPakuAnim()
		event.SpriteSetDraw(0, 1)
		event.ObjsSetColor(20, 128.0, 128.0, 128.0, 128.0, 15)
		at = 31
		helper_888ab2a3(15)
		event.CharaActive(0, global0)
		event.CharaActive(0, global1)
		event.CharaActive(0, 14)
		event.CharaActive(0, 12)
		at = 32
		helper_4116e6bb(2600070)
		at = 33
		helper_4116e6bb(2600075)
		at = 34
		helper_4116e6bb(2600080)
		event.SpriteSetDraw(1, 1)
		event.ObjsSetColor(21, 128.0, 128.0, 128.0, 128.0, 15)
		at = 35
		helper_888ab2a3(15)
		event.SpriteSetDraw(0, 0)
		at = 36
		helper_4116e6bb(2600090)
		event.SpriteSetDraw(2, 1)
		event.ObjsSetColor(22, 128.0, 128.0, 128.0, 128.0, 15)
		at = 37
		helper_888ab2a3(15)
		event.SpriteSetDraw(1, 0)
		at = 38
		helper_4116e6bb(2600100)
		at = 39
		helper_4116e6bb(2600110)
		at = 40
		helper_4116e6bb(2600115)
		event.SpriteSetDraw(3, 1)
		event.ObjsSetColor(23, 128.0, 128.0, 128.0, 128.0, 15)
		at = 41
		helper_888ab2a3(15)
		event.SpriteSetDraw(2, 0)
		at = 42
		helper_4116e6bb(2600120)
		at = 43
		helper_4116e6bb(2600130)
		event.SpriteSetDraw(4, 1)
		event.ObjsSetColor(24, 128.0, 128.0, 128.0, 128.0, 15)
		at = 44
		helper_888ab2a3(15)
		event.SpriteSetDraw(3, 0)
		at = 45
		helper_4116e6bb(2600140)
		at = 46
		helper_4116e6bb(2600145)
		at = 47
		helper_4116e6bb(2600150)
		at = 48
		helper_4116e6bb(2600160)
		event.CmrsSetPos(19.72, 819.45, -34.3)
		event.CmrsSetRef(0.0, 823.12, 0.0)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 14)
		event.CharaActive(1, 12)
		event.ObjsSetPos(0, -15.79, 795.0, 7.98)
		event.ObjsSetRot(0, 0.0, 2.3, 0.0)
		event.ObjsSetMotion(0, "立ち", 4)
		event.ObjsSetPos(1, 0.0, 795.0, 10.0)
		event.ObjsSetRot(1, 0.0, 3.1415927, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetPos(4, 0.0, 795.0, -10.0)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(4, "立ち", 4)
		event.ObjsTexAnime(4, 0)
		event.ObjsTexAnime(4, 1, "デフォルト顔")
		event.ObjsTexAnime(4, 1, "通常目パチ")
		event.ObjsSetColor(24, 128.0, 128.0, 128.0, 0.0, 15)
		at = 49
		helper_888ab2a3(15)
		event.SpriteSetDraw(4, 0)
		event.ObjsSetMotion(1, "会話", 2)
		event.ObjsNextMotion(1, "立ち")
		event.SetPakuAnim(1, "通常口パク")
		at = 50
		helper_4116e6bb(2600170)
		event.ResetPakuAnim()
		event.CmrsMoveAhd(0.79, -4.57, 45.0, 360)
		event.SetPakuAnim(4, "口パク")
		at = 51
		helper_4116e6bb(2600180)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "口パク")
		at = 52
		helper_4116e6bb(2600190)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "口パク")
		at = 53
		helper_4116e6bb(2600200)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "口パク")
		at = 54
		helper_4116e6bb(2600210)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "口パク")
		at = 55
		helper_4116e6bb(2600220)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "口パク")
		at = 56
		helper_4116e6bb(2600230)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "口パク")
		at = 57
		helper_4116e6bb(2600240)
		event.ResetPakuAnim()
		event.SetPakuAnim(1, "通常口パク")
		at = 58
		helper_4116e6bb(2600250)
		event.ResetPakuAnim()
		event.CharaActive(1, 13)
		event.SetReference(12, "letter", 13)
		event.ObjsSetMotion(4, "手紙を渡す", 2)
		event.ObjsNextMotion(4, "手紙を渡すL", 4)
		event.SndSePlay(var0, 2)
		event.SetPakuAnim(4, "口パク")
		at = 59
		helper_4116e6bb(2600260)
		event.ResetPakuAnim()
		at = 60
		wait_objects(4)
		event.CmrsInit()
		event.CmrsSetPos(-2.24, 796.76, -510.87)
		event.CmrsSetRef(-68.02, 802.26, -509.43)
		event.CharaActive(0, 12)
		event.ObjsSetPos(0, -42.69, 774.65, -517.65)
		event.ObjsSetRot(0, 0.0, 2.13, 0.0)
		event.DelReference(13)
		event.SetReference(global1, "sword_hand", 13)
		event.ObjsSetPos(1, -28.93, 774.65, -505.13)
		event.ObjsSetRot(1, 0.0, 2.61, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetMotion(1, "封筒受け取り", 6)
		event.ObjsNextMotion(1, "封筒受け取りＬ", 4)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "デフォルト顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.SndSePlay(var0, 3)
		event.SetPakuAnim(1, "わらい口パク")
		at = 61
		helper_4116e6bb(2600270)
		event.ResetPakuAnim()
		event.SndPauseBgm()
		event.CharaActive(1, 11)
		event.SetCharaPos(11, -18.72, 797.98, -512.22)
		event.SetCharaRot(11, 0.0, 1.5707964, 0.0)
		event.SetMotion(11, "発動", 6)
		at = 62
		helper_888ab2a3(2)
		event.SndSePlay(var1, 0)
		at = 63
		helper_888ab2a3(120)
		event.SndSePlay(var0, 4)
		event.SetMesPreset(1, 4)
		set_window_mode(1, 4)
		event.SetMesItem(1, 1, 385)
		at = 64
		helper_75684dd8(1, 10, 8, 0, 0)
		event.PlayBgm(0)
		event.CharaActive(0, 11)
		event.DelReference(13)
		event.CharaActive(0, 13)
		event.CmrsSetPos(0.0, 1017.78, 76.79)
		event.CmrsSetRef(0.0, 1025.0, 0.0)
		event.CmrsMove(0.0, 1025.0, 35.0, 0.0, 1025.0, 0.0, 180)
		event.CharaActive(0, global0)
		event.CharaActive(0, global1)
		event.CharaActive(0, 14)
		event.CharaActive(1, 12)
		event.ObjsSetPos(4, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(4, "立ち", 4)
		event.SetPakuAnim(4, "口パク")
		at = 65
		helper_4116e6bb(2600280)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "口パク")
		at = 66
		helper_4116e6bb(2600290)
		event.ResetPakuAnim()
		event.SetPakuAnim(4, "口パク")
		at = 67
		helper_4116e6bb(2600300)
		event.ResetPakuAnim()
		event.CharaActive(1, 23)
		event.ObjsSetPos(14, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(14, 0.0, 0.0, 0.0)
		event.ObjsSetMotion(14, "光る", 6)
		event.ObjsNextMotion(14, "光MAX", 4)
		event.SndSePlay(var0, 5)
		event.FadeOutBgm(30)
		at = 68
		helper_888ab2a3(60)
		event.CmrsInit()
		event.CmrsSetPos(186.87, 1388.53, 256.46)
		event.CmrsSetRef(0.0, 1025.0, 0.0)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.ObjsSetPos(0, -143.38, 788.23, 56.15)
		event.ObjsSetRot(0, 0.0, 2.3, 0.0)
		event.ObjsSetPos(1, -123.21, 788.97, 62.99)
		event.ObjsSetRot(1, 0.0, 2.46, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetMotion(0, "上向くL", 4)
		event.ObjsSetMotion(1, "上から左", 5)
		event.CharaActive(1, 22)
		event.ObjsSetPos(13, 0.0, 1000.0, 0.0)
		event.ObjsResetMotion(13)
		event.ObjsSetMotion(13, "ホーリーの光", 6)
		at = 69
		helper_888ab2a3(60)
		event.CharaActive(0, 12)
		event.CharaActive(0, 23)
		event.CharaActive(1, 15)
		event.CharaActive(1, 16)
		event.CharaActive(1, 17)
		event.CharaActive(1, 18)
		event.CharaActive(1, 19)
		event.CharaActive(1, 20)
		event.CharaActive(1, 21)
		event.ObjsSetPos(6, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(6, 0.0, 0.7853982, 0.0)
		event.ObjsSetPos(7, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(7, 0.0, 1.5707964, 0.0)
		event.ObjsSetPos(8, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(8, 0.0, 2.3561945, 0.0)
		event.ObjsSetPos(9, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(9, 0.0, 3.1415927, 0.0)
		event.ObjsSetPos(10, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(10, 0.0, -2.3561945, 0.0)
		event.ObjsSetPos(11, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(11, 0.0, -1.5707964, 0.0)
		event.ObjsSetPos(12, 0.0, 1000.0, 0.0)
		event.ObjsSetRot(12, 0.0, -0.7853982, 0.0)
		event.ObjsMove(6, 353.55338, 1000.0, 353.55338, 120)
		event.ObjsMove(7, 500.0, 1000.0, 0.0, 120)
		event.ObjsMove(8, 353.55338, 1000.0, -353.55338, 120)
		event.ObjsMove(9, 0.0, 1000.0, -500.0, 120)
		event.ObjsMove(10, -353.55338, 1000.0, -353.55338, 120)
		event.ObjsMove(11, -500.0, 1000.0, 0.0, 120)
		event.ObjsMove(12, -353.55338, 1000.0, 353.55338, 120)
		event.SndSePlay(var0, 6)
		at = 70
		helper_888ab2a3(150)
		event.CharaActive(0, 15)
		event.CharaActive(0, 16)
		event.CharaActive(0, 17)
		event.CharaActive(0, 18)
		event.CharaActive(0, 19)
		event.CharaActive(0, 20)
		event.CharaActive(0, 21)
		event.CharaActive(0, 22)
		event.CmrsSetPos(-2.24, 796.76, -510.87)
		event.CmrsSetRef(-68.02, 802.26, -509.43)
		event.SndSetEnvVol(1.0)
		event.CharaActive(1, global0)
		event.CharaActive(1, global1)
		event.CharaActive(1, 14)
		event.ObjsSetPos(0, -42.69, 774.65, -517.65)
		event.ObjsSetRot(0, 0.0, 2.49, 0.0)
		event.ObjsSetMotion(0, "上向くL", 4)
		event.ObjsSetPos(1, -28.93, 774.65, -505.13)
		event.ObjsSetRot(1, 0.0, 2.61, 0.0)
		event.ObjsResetDaPosition(1)
		event.ObjsSetMotion(1, "上から左", 5)
		at = 71
		helper_888ab2a3(90)
		event.ObjsSetMotion(1, "上から左", 2)
		event.ObjsNextMotion(1, "左向くL", 4)
		event.SetPakuAnim(1, "通常口パク")
		at = 72
		helper_4116e6bb(2600310)
		event.ResetPakuAnim()
		event.ObjsSetMotion(0, "上向く戻り", 2)
		event.ObjsNextMotion(0, "右向く", 6)
		event.ObjsMotionWait(0)
		at = 73
		wait_objects(0)
		event.ObjsSetMotion(0, "右向くうなづき", 6)
		event.ObjsNextMotion(0, "右向くL", 4)
		event.SetPakuAnim(0, "通常口パク")
		at = 74
		helper_4116e6bb(2600320)
		event.ResetPakuAnim()
		event.SetFadeOut(30)
		at = 75
		helper_888ab2a3(45)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_038a2e4d(30)
		end
		if at <= 2 then
			helper_038a2e4d(4)
		end
		if at <= 3 then
			helper_22a00000()
			helper_038a2e4d(30)
		end
		if at <= 4 then
			helper_038a2e4d(3)
		end
		if at <= 5 then
			helper_038a2e4d(3)
		end
		if at <= 6 then
			helper_038a2e4d(3)
		end
		if at <= 7 then
			helper_038a2e4d(3)
		end
		if at <= 8 then
			helper_038a2e4d(3)
		end
		if at <= 9 then
			helper_038a2e4d(3)
		end
		if at <= 10 then
			helper_038a2e4d(60)
		end
		if at <= 11 then
			helper_238b5abc(10)
		end
		if at <= 12 then
			helper_238b5abc(11)
		end
		if at <= 13 then
			helper_238b5abc(6)
		end
		if at <= 14 then
			helper_238b5abc(7)
		end
		if at <= 15 then
			helper_238b5abc(12)
		end
		if at <= 16 then
			helper_238b5abc(9)
		end
		if at <= 17 then
			helper_238b5abc(8)
		end
		if at <= 18 then
			helper_038a2e4d(60)
		end
		if at <= 19 then
			helper_038a2e4d(60)
		end
		if at <= 20 then
			helper_038a2e4d(150)
		end
		if at <= 21 then
			helper_8cd371d7(2600010)
		end
		if at <= 22 then
			helper_8cd371d7(2600020)
		end
		if at <= 23 then
			helper_8cd371d7(2600030)
		end
		if at <= 24 then
			helper_238b5abc(4)
		end
		if at <= 25 then
			helper_8cd371d7(2600040)
		end
		if at <= 26 then
			helper_8cd371d7(2600045)
		end
		if at <= 27 then
			helper_8cd371d7(2600050)
		end
		if at <= 28 then
			helper_238b5abc(4)
		end
		if at <= 29 then
			helper_8cd371d7(2600060)
		end
		if at <= 30 then
			helper_038a2e4d(15)
		end
		if at <= 31 then
			helper_8cd371d7(2600070)
		end
		if at <= 32 then
			helper_8cd371d7(2600075)
		end
		if at <= 33 then
			helper_8cd371d7(2600080)
		end
		if at <= 34 then
			helper_038a2e4d(15)
		end
		if at <= 35 then
			helper_8cd371d7(2600090)
		end
		if at <= 36 then
			helper_038a2e4d(15)
		end
		if at <= 37 then
			helper_8cd371d7(2600100)
		end
		if at <= 38 then
			helper_8cd371d7(2600110)
		end
		if at <= 39 then
			helper_8cd371d7(2600115)
		end
		if at <= 40 then
			helper_038a2e4d(15)
		end
		if at <= 41 then
			helper_8cd371d7(2600120)
		end
		if at <= 42 then
			helper_8cd371d7(2600130)
		end
		if at <= 43 then
			helper_038a2e4d(15)
		end
		if at <= 44 then
			helper_8cd371d7(2600140)
		end
		if at <= 45 then
			helper_8cd371d7(2600145)
		end
		if at <= 46 then
			helper_8cd371d7(2600150)
		end
		if at <= 47 then
			helper_8cd371d7(2600160)
		end
		if at <= 48 then
			helper_038a2e4d(15)
		end
		if at <= 49 then
			helper_8cd371d7(2600170)
		end
		if at <= 50 then
			helper_8cd371d7(2600180)
		end
		if at <= 51 then
			helper_8cd371d7(2600190)
		end
		if at <= 52 then
			helper_8cd371d7(2600200)
		end
		if at <= 53 then
			helper_8cd371d7(2600210)
		end
		if at <= 54 then
			helper_8cd371d7(2600220)
		end
		if at <= 55 then
			helper_8cd371d7(2600230)
		end
		if at <= 56 then
			helper_8cd371d7(2600240)
		end
		if at <= 57 then
			helper_8cd371d7(2600250)
		end
		if at <= 58 then
			helper_8cd371d7(2600260)
		end
		if at <= 59 then
			helper_238b5abc(4)
		end
		if at <= 60 then
			helper_8cd371d7(2600270)
		end
		if at <= 61 then
			helper_038a2e4d(2)
		end
		if at <= 62 then
			helper_038a2e4d(120)
		end
		if at <= 63 then
			helper_fbd9683d(1, 4)
			helper_ee1c51d0(1, 10, 8, 0, 0)
		end
		if at <= 64 then
			helper_8cd371d7(2600280)
		end
		if at <= 65 then
			helper_8cd371d7(2600290)
		end
		if at <= 66 then
			helper_8cd371d7(2600300)
		end
		if at <= 67 then
			helper_038a2e4d(60)
		end
		if at <= 68 then
			helper_038a2e4d(60)
		end
		if at <= 69 then
			helper_038a2e4d(150)
		end
		if at <= 70 then
			helper_038a2e4d(90)
		end
		if at <= 71 then
			helper_8cd371d7(2600310)
		end
		if at <= 72 then
			helper_238b5abc(0)
		end
		if at <= 73 then
			helper_8cd371d7(2600320)
		end
		if at <= 74 then
			helper_038a2e4d(45)
		end
		return true
	end)
	at = 76
	vm.entry(76)
	event.CancelDramaScene()
	event.SndSeStop(var0, 0)
	event.SndSeStop(var1, 0)
	event.StopBgm(0)
	helper_16d78()
	event.SetStatusbarShow(1, 1.0)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
script.default_event = helper_119c8

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	helper_89dcac54()
	helper_ad8b424a()
	event.StopBgm(0)
	helper_888ab2a3(4)
	event.LoadBgm(31)
	event.PlayBgm(0)
	event.SetCharaPos(0, -124.13, 782.88, -644.77)
	event.SetFadeIn(30)
	event.ResetCamera(0)
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_119c8()
	helper_89dcac54()
	helper_ad8b424a()
	vm.wait(3)
	event.SetCharaPos(0, -124.13, 782.88, -644.77)
	event.SetFadeIn(30)
	event.ResetCamera(0)
end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	local stage_id: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.StopBgm(0)
		event.SetFadeOut(30)
		at = 1
		helper_888ab2a3(30)
		event.DelMonster(-1)
		stage_id = event.DngGetStageId() or stage_id
		var1 = event.DngGetFloorId() or var1
		event.SetFloorInfo(stage_id, var1, 5, 2)
		at = 2
		helper_19adc()
		event.AddItem(385)
		at = 3
		helper_d61bc810(0)
		event.BgmLoadCancel()
		event.LoadDungeonMapFile("d02b01")
		event.LoadScript("d02b01/d02b01.stb", 201)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_19adc()
				return vm.continue_with(function()
					event.AddItem(385)
					at = 3
					helper_d61bc810(0)
					event.BgmLoadCancel()
					event.LoadDungeonMapFile("d02b01")
					event.LoadScript("d02b01/d02b01.stb", 201)
					return
				end)
			end
			if at <= 2 then
				helper_6f1a51c5(0)
			end
			return 0
		end
		return nil
	end)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	event.Initialize()
	event.DngPause(3, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(0, "蝶が７匹に分離したぞ。\n今なら一匹ずつ倒すチャンスだ！")
	helper_75684dd8(0, -1, 5, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(3, 0)
	event.Finish()
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	event.Initialize()
	event.DngPause(3, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"蝶は音や動きにびんかんなんだ。\nそっと近づかないと逃げられちゃうぞ。"
	)
	helper_75684dd8(0, -1, 5, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(3, 0)
	event.Finish()
end

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	event.Initialize()
	event.DngPause(3, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(0, "蝶には倒す順番があるんだ。\n七色といえば・・・")
	helper_75684dd8(0, -1, 5, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(3, 0)
	event.Finish()
end

--- Event 505, which map data, a script or the engine runs by number.
function script.event_505()
	event.Initialize()
	event.DngPause(3, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(0, "虹の色の順番にやっつけるんだ。\n最初は赤い奴からだよ。")
	helper_75684dd8(0, -1, 5, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(3, 0)
	event.Finish()
end

--- Event 506, which map data, a script or the engine runs by number.
function script.event_506()
	event.DngPause(3, 1)
	event.CmrsInit()
	event.CmrsSetPos(665.3, 1226.64, 776.05)
	event.CmrsSetRef(426.01, 939.19, -311.58)
	helper_888ab2a3(300)
	event.DngPause(3, 0)
end

--- Event 507, which map data, a script or the engine runs by number.
function script.event_507()
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.DngPause(1, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"[(!)]七色蝶にはあらゆる攻撃が効かないみたいだ。\n   このままでは手も足も出せない。\n   何か別の方法を考えた方が良さそうだ。"
	)
	helper_75684dd8(0, -1, 5, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]ラフレシアが咲いたら、すぐに七色蝶が現れた・・・\n   という事は、この花自体に七色蝶を倒すヒントが\n   隠されているのかも知れない。"
	)
	helper_75684dd8(0, -1, 5, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(1, 0)
	event.Finish()
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	event.PlayBgm(0)
end

--- Event 511, which map data, a script or the engine runs by number.
function script.event_511()
	event.PlayBgm(1)
end

--- Event 512, which map data, a script or the engine runs by number.
function script.event_512()
	event.StopBgm(0)
end

--- Event 513, which map data, a script or the engine runs by number.
function script.event_513()
	event.StopBgm(1)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_786b79f1(0)
end

--- Event 12551, which map data, a script or the engine runs by number.
function script.event_12551()
	event.LoadDungeonMapFile("d02b01")
	event.LoadScript("d02b01/d02b01.stb", 12551)
end

--- Event 12552, which map data, a script or the engine runs by number.
function script.event_12552()
	event.LoadDungeonMapFile("d02b01")
	event.LoadScript("d02b01/d02b01.stb", 12552)
end

--- Event 12560, which map data, a script or the engine runs by number.
function script.event_12560()
	event.LoadDungeonMapFile("d02b01")
	event.LoadScript("d02b01/d02b01.stb", 12560)
end

--- Event 12570, which map data, a script or the engine runs by number.
script.event_12570 = helper_119c8

--- Event 12600, which map data, a script or the engine runs by number.
script.event_12600 = helper_19adc

return script
