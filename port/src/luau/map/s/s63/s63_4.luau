--!strict
-- map/s/s63/s63_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_0fca4d01 = require("@lib/event/helper_0fca4d01")
local helper_1ef0d4b2 = require("@lib/event/helper_1ef0d4b2")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_3cf99f2c = require("@lib/event/helper_3cf99f2c")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_479dc9e9 = require("@lib/event/helper_479dc9e9")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_652391da = require("@lib/event/helper_652391da")
local helper_70289b8d = require("@lib/event/helper_70289b8d")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_7d7eee8f = require("@lib/event/helper_7d7eee8f")
local helper_c5c603a3 = require("@lib/event/helper_c5c603a3")
local helper_c956b4a2 = require("@lib/event/helper_c956b4a2")
local helper_ce85b54c = require("@lib/event/helper_ce85b54c")
local helper_ed4dc120 = require("@lib/event/helper_ed4dc120")
local helper_f7fba8ce = require("@lib/event/helper_f7fba8ce")
local open_message = require("@lib/event/open_message")
local wait_frames = require("@lib/event/wait_frames")
local wait_message_answer = require("@lib/event/wait_message_answer")
local wait_objects = require("@lib/event/wait_objects")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99()
	local var0: s32 = 0
	event.StopBgm(0)
	event.LoadSound(8694)
	var0 = event.GetCnt(17) or var0
	if bit32.band(var0, 16) == 0 or bit32.band(var0, 32) == 0 or bit32.band(var0, 64) == 0 then
		event.StopBgm(0)
		wait_frames(4)
		event.LoadBgm(190)
		event.PlayBgm(0)
	else
		event.SetLoadbgFile_1("snd2/bgm/bg_193.sound.json")
		helper_479dc9e9()
		event.LoadBgmPack(193)
		event.PlayBgm(0)
	end
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local var0: s32 = 0
	local at: number = 0
	return vm.guard(function()
		at = 1
		event_99()
		event.Initialize()
		at = 2
		vm.wait(2)
		var0 = event.GetCnt(17) or var0
		if bit32.band(var0, 16) == 0 or bit32.band(var0, 32) == 0 or bit32.band(var0, 64) == 0 then
			var0 = event.GetCnt(20) or var0
			if bit32.band(var0, 4) == 0 then
				at = 3
				helper_c5c603a3()
				var0 = event.GetCnt(20) or var0
				var0 = vm.i32(bit32.bor(var0, 4))
				event.SetCnt(20, var0)
			end
			helper_0fca4d01()
		end
		helper_7d7eee8f(-320.0, 0.0, -700.0, 0.0)
		event.SetCameraRef(-320.0, 30.0, -700.0)
		event.SetCameraPos(-320.0, 40.0, -820.0)
		event.ResetCamera(0)
		event.SetFadeIn(30)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 2 then
				at = 3
				helper_c5c603a3()
				return vm.continue_with(function()
					var0 = event.GetCnt(20) or var0
					var0 = vm.i32(bit32.bor(var0, 4))
					event.SetCnt(20, var0)
					helper_0fca4d01()
					helper_7d7eee8f(-320.0, 0.0, -700.0, 0.0)
					event.SetCameraRef(-320.0, 30.0, -700.0)
					event.SetCameraPos(-320.0, 40.0, -820.0)
					event.ResetCamera(0)
					event.SetFadeIn(30)
					event.Finish()
					return
				end)
			end
			local _ = if bit32.band(var0, 16) == 0 then 1 else 0
			local _ = if bit32.band(var0, 32) == 0 then 1 else 0
			local _ = if bit32.band(var0, 64) == 0 then 1 else 0
			local _ = if bit32.band(var0, 4) == 0 then 1 else 0
			var0 = vm.i32(bit32.bor(var0, 4))
			helper_1ef0d4b2()
			helper_43f02c95(-320.0, 0.0, -700.0, 0.0)
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 160, which map data, a script or the engine runs by number.
function script.event_160()
	helper_c5c603a3()
	vm.wait(2)
	helper_c956b4a2(64)
end

--- Event 170, which map data, a script or the engine runs by number.
function script.event_170()
	vm.wait(1)
	helper_c956b4a2(64)
end

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	local argc: s32 = 0
	event.Initialize()
	vm.wait(1)
	event.AddItem(305, 1)
	event.AddItem(306, 1)
	argc = event.GetItemHaveNum(10) or argc
	if argc <= 0 then
		event.AddItem(10, 1)
	end
	argc = event.GetItemHaveNum(302) or argc
	if argc <= 0 then
		event.AddItem(302, 1)
	end
	event.SetFlag(220, 1)
	event.SetFlag(317, 1)
	event.DelMonster(-1)
	event.Finish()
end

--- Event 300, which map data, a script or the engine runs by number.
function script.event_300()
	local active_chr_no: s32 = 0
	local var1: any = 0
	event.Initialize()
	event.ActchrSetDefMotion(0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 1)
		if active_chr_no == 2 then
			helper_75684dd8(0, 20, 5, 256, 208)
		else
			helper_75684dd8(0, 21, 5, 256, 208)
		end
		event.Finish()
		return
	end
	var1 = helper_ed4dc120(2, -1)
	if var1 == 0 then
		event.DngPause(16384, 0)
		event.SetFadeOut(30)
		wait_frames(30)
		event.DelMonster(-1)
		event.LoadScript("d07/d07.stb", 1000)
	else
		event.Finish()
	end
end

--- The dungeon system event run when the player opens a treasure box.
function script.treasure_box()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	var0 = helper_652391da()
	if var0 == 209 then
		var1 = event.GetCnt(17) or var1
		var1 = vm.i32(bit32.bor(var1, 16))
		event.SetCnt(17, var1)
	end
	if var0 == 203 then
		var2 = event.GetCnt(17) or var2
		var2 = vm.i32(bit32.bor(var2, 32))
		event.SetCnt(17, var2)
	end
	if var0 == 173 then
		var3 = event.GetCnt(17) or var3
		var3 = vm.i32(bit32.bor(var3, 64))
		event.SetCnt(17, var3)
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
	local now_party_chara_id: s32 = 0
	local circle_id: s32 = 0
	local var18: s32 = 0
	local var19: f32 = 0
	local pos_x_3: f32 = 0
	local pos_y_3: f32 = 0
	local pos_z_3: f32 = 0
	local pos_x_4: f32 = 0
	local pos_y_4: f32 = 0
	local pos_z_4: f32 = 0
	local var26: f32 = 0
	local var27: s32 = 0
	local angle: f32 = 0
	local var29: s32 = 0
	local var30: s32 = 0
	local bright_rate: f32 = 0
	local var32: s32 = 0
	local result: f32 = 0
	local position_x: f32 = 0
	local position_y: f32 = 0
	local position_z: f32 = 0
	event.Initialize()
	event.DngPause(513, 1)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		helper_ce85b54c()
		if active_chr_no == 2 then
			helper_75684dd8(0, 22, 8, 0, 0)
		else
			helper_75684dd8(0, 23, 8, 0, 0)
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
		event.DngPause(513, 0)
		event.Finish()
		return
	end
	event.SetLoadbgFile_1("snd2/sp/sp_011.sound.json")
	vm.wait(3)
	helper_ce85b54c()
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
	event.AssignStack(5)
	event.ClearStack(5)
	helper_479dc9e9()
	var11 = event.SndLoadSound_3(8, "snd2/sp/sp_011.sound.json") or var11
	event.ChangeDir("event/dng/")
	event.SetLoadbgFile_2("ring.gltf", "randomcoin.gltf")
	vm.wait(5)
	helper_479dc9e9()
	weight = event.GetRndcMotNowt() or weight
	event.RandomCircleOff(-1)
	event.LoadChara(5, "ring.gltf", "info", 12)
	event.CharaActive(1, 12)
	event.SetCharaPos(12, pos_x_2, pos_y_2, pos_z_2)
	event.SetMotion(12, "ループ", 6)
	event.CharaNormalDrive(12)
	event.SetCharaMotNowt(12, weight)
	event.EohSyncChara(4, 12)
	event.ObjsInit(4)
	event.ObjsSyncObj(4, 4)
	event.ObjsNextMotion(4, "消滅", 6)
	event.LoadChara(5, "randomcoin.gltf", "info", 13)
	event.CharaActive(1, 13)
	event.SetCharaPos(13, pos_x_2, pos_y_2 - 30.0, pos_z_2)
	var14 = event.GetRand(6.2831855) or var14
	var14 = vm.f32(var14 - vm.f32(3.1415927))
	var14 = event.AngleLimit(var14) or var14
	event.SetCharaRot(13, 0.0, var14, 0.0)
	event.ChangeDir("")
	now_party_chara_id = event.GetNowPartyChara() or now_party_chara_id
	event.EohSyncChara(5, 13)
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
	event.ObjsSetScale(5, 0.0, 0.0, 0.0)
	event.ObjsSetScale(5, 1.0, 1.0, 1.0, 40)
	event.ObjsMove2(5, pos_x_2, pos_y_2 + 40.0, pos_z_2, 30, 2, 0.5)
	var18 = 0
	var19 = vm.f32(0.6)
	while true do
		do
			local _, out2, _ = event.GetCharaRot(13)
			var14 = out2 or var14
		end
		var14 = vm.f32(var14 + var19)
		var14 = event.AngleLimit(var14) or var14
		event.SetCharaRot(13, 0.0, var14, 0.0)
		if var18 == 10 then
			event.SndSePlay(var11, 0)
		end
		if var18 == 30 then
			helper_70289b8d()
		end
		if (if var18 >= 30 then helper_581cb30c(0) else 0) ~= 0 or var18 > 300 then
			event.SndSeStop(var11, 0)
			event.SndSePlay(var11, 3)
			vm.wait(7)
			break
		else
			var18 = var18 + 1
			vm.wait(8)
		end
	end
	helper_3cf99f2c()
	event.EohSyncChara(5, 13)
	event.ObjsInit(5)
	event.ObjsSyncObj(5, 5)
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
	var26 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var26
	var27 = 0
	var27 = vm.float_bits(event.GetRand(10)) or var27
	var27 = vm.i32(var27 + 4)
	var18 = 0
	while true do
		do
			local _, out2, _ = event.GetCharaRot(13)
			var14 = out2 or var14
		end
		var14 = vm.f32(var14 + var19)
		var14 = event.AngleLimit(var14) or var14
		event.SetCharaRot(13, 0.0, var14, 0.0)
		vm.wait(9)
		if var18 >= var27 then
			if var19 > vm.f32(0.08) then
				var19 = vm.f32(var19 * vm.f32(0.9))
			end
			angle = var26
			angle = event.AngleLimit(angle) or angle
			if var14 < angle and helper_f7fba8ce(var14, angle, vm.f32(0.08)) == 0 then
				event.SetCharaRot(13, 0.0, angle, 0.0)
				circle_id = 0
				break
			end
			angle = vm.f32(var26 - vm.f32(3.1415927))
			angle = event.AngleLimit(angle) or angle
			if var14 < angle and helper_f7fba8ce(var14, angle, vm.f32(0.08)) == 0 then
				event.SetCharaRot(13, 0.0, angle, 0.0)
				circle_id = 1
				break
			end
		end
		var18 = vm.i32(var18 + 1)
	end
	var26 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var26
	do
		local _, out2, _ = event.GetCharaRot(13)
		var14 = out2 or var14
	end
	if helper_f7fba8ce(var14, var26, 1.0) == 0 then
		circle_id = 0
	else
		circle_id = 1
	end
	var26 = var14
	wait_frames(20)
	var29 = vm.float_bits(event.GetRand(10)) or var29
	if now_party_chara_id == 24 then
		var30 = 100
	else
		var30 = 6
	end
	if var29 < var30 then
		var29 = vm.float_bits(event.GetRand(10)) or var29
		if circle_id == 0 then
			if now_party_chara_id == 24 then
				var30 = 0
			else
				var30 = 2
			end
		elseif now_party_chara_id == 24 then
			var30 = 100
		else
			var30 = 4
		end
		if var29 < var30 then
			var26 = vm.f32(var26 + vm.f32(3.14))
			var26 = event.AngleLimit(var26) or var26
			event.ObjsRotation(5, 0.0, var26, 0.0, 8)
			if circle_id == 0 then
				circle_id = 1
			else
				circle_id = 0
			end
			wait_frames(10)
		else
			var29 = vm.float_bits(event.GetRand(10)) or var29
			if var29 < 1 then
				var26 = vm.f32(var26 + vm.f32(3.14))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 6)
				var26 = vm.f32(var26 + vm.f32(1.57))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 3)
				var26 = vm.f32(var26 + vm.f32(1.57))
				var26 = event.AngleLimit(var26) or var26
				event.ObjsRotation(5, 0.0, var26, 0.0, 3)
				wait_frames(20)
			end
		end
	end
	var26 = event.GetRefAngle(pos_x_4, pos_y_4, pos_z_4, pos_x_3, pos_y_3, pos_z_3) or var26
	do
		local _, out2, _ = event.GetCharaRot(13)
		var14 = out2 or var14
	end
	if helper_f7fba8ce(var14, var26, 1.0) == 0 then
		circle_id = 0
	else
		circle_id = 1
	end
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	bright_rate = 1.0
	var18 = 0
	var32 = event.GetRndCircleTrapid(circle_id) or var32
	if circle_id == 0 then
		event.SndSePlay(var11, 1)
		while var18 < 30 do
			event.BscnSetBlightRate(bright_rate)
			bright_rate = vm.f32(bright_rate + vm.f32(0.03))
			var18 = var18 + 1
			vm.wait(13)
		end
		helper_75684dd8(0, 2310, 8, 0, 0)
		result = event.SetRndCircleStatus(var32) or result
		if var32 == 1 then
			helper_75684dd8(0, 2311, 8, 0, 0)
		end
		if var32 == 2 then
			helper_75684dd8(0, 2312, 8, 0, 0)
		end
		if var32 == 3 then
			helper_75684dd8(0, 2313, 8, 0, 0)
		end
		if var32 == 4 then
			event.PostTreasureBox(pos_x_2, pos_y_2, pos_z_2, var26, 294)
			helper_75684dd8(0, 2314, 8, 0, 0)
		end
	else
		event.SndSePlay(var11, 2)
		while var18 < 30 do
			event.BscnSetBlightRate(bright_rate)
			bright_rate = vm.f32(bright_rate - vm.f32(0.03))
			var18 = var18 + 1
			vm.wait(19)
		end
		helper_75684dd8(0, 2320, 8, 0, 0)
		result = event.SetRndCircleStatus(var32) or result
		if var32 == 5 then
			if active_chr_no == 0 or active_chr_no == 2 then
				helper_75684dd8(0, 2321, 8, 0, 0)
			end
			if active_chr_no == 1 or active_chr_no == 3 then
				helper_75684dd8(0, 2322, 8, 0, 0)
			end
		end
		if var32 == 6 then
			if active_chr_no == 0 then
				helper_75684dd8(0, 2323, 8, 0, 0)
			end
			if active_chr_no == 1 or active_chr_no == 3 then
				helper_75684dd8(0, 2324, 8, 0, 0)
			end
			if active_chr_no == 2 then
				helper_75684dd8(0, 2325, 8, 0, 0)
			end
		end
		if var32 == 8 then
			helper_75684dd8(0, 2328, 8, 0, 0)
		end
		if var32 == 9 then
			helper_75684dd8(0, 2326, 8, 0, 0)
		end
		if var32 == 10 then
			helper_75684dd8(0, 2329, 8, 0, 0)
		end
		if var32 == 11 then
			helper_75684dd8(0, 2327, 8, 0, 0)
		end
		if var32 == 12 then
			helper_75684dd8(0, 2330, 8, 0, 0)
		end
	end
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.BscnSetBlightRate(1.0)
	if var32 == 1 then
		event.SetPullItem(pos_x_2, pos_y_2, pos_z_2, 1, 10, result / 10.0)
	end
	event.DngPause(513, 0)
	event.SetCameraCtrl(1)
	do
		local out1, out2, out3 = event.GetBeforeCameraNextPos()
		position_x = out1 or position_x
		position_y = out2 or position_y
		position_z = out3 or position_z
	end
	event.SetCameraPos(position_x, position_y, position_z)
	do
		local out1, out2, out3 = event.GetBeforeCameraNextRef()
		position_x = out1 or position_x
		position_y = out2 or position_y
		position_z = out3 or position_z
	end
	event.SetCameraRef(position_x, position_y, position_z)
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
	local argc: s32 = 0
	local stage_id: s32 = 0
	local var23: s32 = 0
	event.Initialize()
	event.DngPause(513, 1)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 2 or active_chr_no == 3 then
		event.SetMesPreset(0, 4)
		event.SetMesWindowMode(0, 4)
		event.SetMesDrawspeed(0, 1)
		helper_ce85b54c()
		if active_chr_no == 2 then
			helper_75684dd8(0, 22, 8, 0, 0)
		else
			helper_75684dd8(0, 23, 8, 0, 0)
		end
		event.SetMesWindowMode(0, 1)
		event.SetMesDrawspeed(0, 0)
		event.DngPause(513, 0)
		event.Finish()
		return
	end
	event.DngPause(16, 1)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetFlag(31, 1)
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
	wait_frames(16)
	event.SndSePlay(var4, 0)
	wait_frames(2)
	event.EohSetPos(1, 0.0, 0.0, 0.0)
	event.GeostoneSetReference(0, "item")
	wait_frames(10)
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
	wait_frames(20)
	event.SndSePlay(var4, 1)
	wait_objects(0)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	argc = event.GetSysSndId() or argc
	event.SndSePlay(argc, 18)
	helper_75684dd8(0, 2400, 8, 0, 0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	stage_id = event.DngGetStageId() or stage_id
	var23 = event.DngGetFloorId() or var23
	event.SetFloorInfo(stage_id, var23, 5, 256)
	event.SetCrossfade(10)
	if active_chr_no == 1 then
		event.SetMotion(0, "取る戻り", 6)
		vm.wait(13)
	end
	event.DngPause(529, 0)
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
	event.SetCameraCtrl(1)
	event.Finish()
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- The dungeon system event run when every monster on the floor has been defeated.
function script.floor_clear()
	local var0: s32 = 0
	local stage_id: s32 = 0
	local var2: s32 = 0
	event.Initialize()
	vm.wait(1)
	event.ActchrSetDefMotion(0, 4)
	event.FadeOutBgm(60)
	var0 = event.GetCnt(17) or var0
	if bit32.band(var0, 16) == 0 then
		event.PostTreasureBox(50.0, 0.0, 600.0, 3.14, 209)
	end
	if bit32.band(var0, 32) == 0 then
		event.PostTreasureBox(-50.0, 0.0, 600.0, 3.14, 203)
	end
	if bit32.band(var0, 64) == 0 then
		event.PostTreasureBox(0.0, 0.0, 530.0, 3.14, 173)
	end
	if bit32.band(var0, 16) == 0 or bit32.band(var0, 32) == 0 or bit32.band(var0, 64) == 0 then
		event.SetCrossfade(30)
		event.SetCameraPos(-8.23, 63.4, 205.93)
		event.SetCameraRef(-4.2, 50.04, 315.86)
		event.SetCharaPos(0, -4.2, 20.04, 315.86)
		event.SetCharaRot(0, 0.0, 0.04, 0.0)
		wait_frames(30)
		event.ResetCamera(0)
	end
	event.SetLoadbgFile_1("snd2/bgm/bg_193.sound.json")
	helper_479dc9e9()
	event.LoadBgmPack(193)
	event.PlayBgm(0)
	stage_id = event.DngGetStageId() or stage_id
	var2 = event.DngGetFloorId() or var2
	event.SetFloorInfo(stage_id, var2, 5, 2)
	event.Finish()
end

--- The dungeon system event run on the first examination of a random stone.
function script.random_stone_guide()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.DngPause(513, 1)
	event.SetFlag(50, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	helper_75684dd8(0, 2600, 8, 0, 0)
	vm.wait(2)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(513, 0)
	event.Finish()
end

--- Event 2510, which map data, a script or the engine runs by number.
function script.event_2510()
	local var0: s32 = 0
	event.Initialize()
	event.DngPause(515, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	open_message(0, 2610, 8, 0, 0)
	wait_frames(30)
	do
		local _: any
		_, var0 = wait_message_answer(0, 0, var0)
	end
	close_message(0)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(515, 0)
	event.Finish()
end

--- The dungeon system event run the first time the player levels up.
function script.level_up_guide()
	local var0: s32 = 0
	event.Initialize()
	event.DngPause(515, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	open_message(0, 2620, 8, 0, 0)
	wait_frames(30)
	do
		local _: any
		_, var0 = wait_message_answer(0, 0, var0)
	end
	close_message(0)
	helper_75684dd8(0, 2621, 8, 0, 0)
	helper_75684dd8(0, 2622, 8, 0, 0)
	helper_75684dd8(0, 2623, 8, 0, 0)
	event.MesMake_2(0, "Sei hai dubbi, vedi Guida da Menu principale.")
	helper_75684dd8(0, -1, 8, 0, 0)
	vm.wait(7)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(515, 0)
	event.Finish()
end

--- The dungeon system event run the first time the ridepod's wheels are used.
function script.robo_bike_guide()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.DngPause(513, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(
		0,
		"[(!)]Guida del Fuoristrada\n   Accelera con (L)↑; Rallenta con (L)↓.\n   Sterza con (L) ← oppure →.\n   Per le curve strette, [l1] + (L) ← o →."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	vm.wait(2)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(513, 0)
	event.Finish()
end

--- The dungeon system event run the first time the magic sword counter fills.
function script.magic_sword_guide()
	event.Initialize()
	event.DngPause(515, 1)
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(0, "[(!)]Ora sai usare la Spada Assorbi-magia.")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"In guardia, la Spada Assorbi-magia\nassorbe l'energia degli attacchi\nelementali, come Fuoco. In attacco,\nrilascer[UNI00e0] poi l'energia assorbita."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[UNI00c8] possibile caricare continuamente\nenergia dello stesso elemento.\nPer[UNI00f2], assorbendo un elemento\ndiverso, si perde l'intera carica."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(0, "L'energia elementale assorbibile\ndipende dalla robustezza dell'arma.")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"Per usare l'energia elementale\nassorbita come magia, premi\n[l1] mentre sei in guardia con [r1]."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	vm.wait(6)
	event.SetMesWindowMode(0, 1)
	event.SetMesDrawspeed(0, 0)
	event.DngPause(515, 0)
	event.Finish()
end

return script
