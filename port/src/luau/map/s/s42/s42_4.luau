--!strict
-- map/s/s42/s42_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_17043bf1 = require("@lib/event/helper_17043bf1")
local helper_387dadc7 = require("@lib/event/helper_387dadc7")
local helper_51dafe33 = require("@lib/event/helper_51dafe33")
local helper_7d54f41c = require("@lib/event/helper_7d54f41c")
local helper_9e60b8f3 = require("@lib/event/helper_9e60b8f3")
local helper_bac0e30d = require("@lib/event/helper_bac0e30d")
local helper_f38eabca = require("@lib/event/helper_f38eabca")
local helper_f57795f8 = require("@lib/event/helper_f57795f8")
local show_message = require("@lib/event/show_message")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_e93c()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	local var4: f32 = 0
	local var6: f32 = 0
	local var7: f32 = 0
	local var8: f32 = 0
	local yaw: f32 = 0
	local var14: s32 = 0
	local var15: s32 = 0
	event.Initialize()
	event.SetMesWindowMode(0, 1)
	event.SetMesShippo(0, 1)
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.EohSyncChara(1, 9)
	event.ObjsInit(1)
	event.ObjsSyncObj(1, 1)
	do
		local out1, out2, out3 = event.GetCharaPos(0)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
	end
	do
		local _, out2, _ = event.GetCharaRot(0)
		var4 = out2 or var4
	end
	do
		local out1, out2, out3 = event.GetCharaPos(9)
		var6 = out1 or var6
		var7 = out2 or var7
		var8 = out3 or var8
	end
	event.GetCharaRot(9)
	yaw = event.GetRefAngle(var0, var1, var2, var6, var7, var8) or yaw
	event.GetRefAngle(var6, var7, var8, var0, var1, var2)
	var14 = 0
	var15 = event.AngleCmp(var4, yaw, 0.1) or var15
	if var15 ~= 0 then
		event.ObjsRotation(0, 0.0, yaw, 0.0, 10)
		event.ObjsSetMotion(0, "歩き")
		event.ObjsMotionDelay(0, 10)
		var14 = 20
	end
	event.ObjsSetMotion(0, "立ち")
	wait_frames(var14)
	event.MesMake_2(0, "[UNI00c8] sul tavolo al piano di sotto.\nMettiti al lavoro!")
	helper_0ffc2526(0, -1, 9, 0, 0)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
-- Defined empty, so the engine runs this instead of its default.
function script.event_99() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	helper_387dadc7()
	event.CheckMcLoad()
	event.SetTimeStepEnable(0)
	event.SetCharaPos(0, 49.9, 24.7, -68.2)
	event.SetCharaRot(0, 0.0, 0.0, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 1)
	event.SetMesShippo(0, 0)
	event.MesMake_2(0, "Non hai ancora terminato il lavoro\nche ti aveva chiesto Cedric.")
	show_message(0, -1, 5, 0, 0)
end

--- Event 400, which map data, a script or the engine runs by number.
script.event_400 = helper_f57795f8

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	event.SetCnt(5, 0)
	helper_9e60b8f3()
end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	local var0: s32 = 0
	local argc: s32 = 0
	local var2: any = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.SetMotion(0, "立ち")
		var0 = 0
		event.SetMesWindowMode(0, 1)
		event.SetMesShippo(0, 0)
		event.SetMesQuestionGyou(0, 0)
		argc = event.GetItemHaveNum(382) or argc
		if argc <= 0 then
			event.MesMake_2(0, "Dunque... mi pare che quell'arnese\nfosse nel ripostiglio sul retro...")
			at = 1
			show_message(0, -1, 5, 0, 0)
		else
			event.SetMesQuestionGyou(0, 1)
			event.SetMesEtc(0, 0, 1)
			event.SetMesEtc(0, 1, 1)
			argc = event.GetItemHaveNum(386) or argc
			if argc <= 0 then
				event.MesMake_2(
					0,
					"[UNI00c8] l'aspirapolvere di Gable.\nSembra ancora incompleto.\nBene, meglio darsi da fare!"
				)
				at = 2
				var2 = helper_bac0e30d(0, -1, 5, 256, 208, 2, 1)
				if var2 == 2 then
					var0 = 1
				end
			else
				event.MesMake_2(
					0,
					"[UNI00c8] l'aspirapolvere di Gable.\nOK! Ora lo aggiuster[UNI00f2]!\nMmh... lo far[UNI00f2] tra un po'!"
				)
				at = 3
				var2 = helper_bac0e30d(0, -1, 5, 256, 208, 2, 1)
				if var2 == 1 then
					var0 = 1
				end
			end
			event.SetMesEtc(0, 0, 0)
			event.SetMesEtc(0, 1, 0)
			event.SetMesQuestionGyou(0, 0)
		end
		event.SetMesShippo(0, 1)
		if var0 == 1 then
			at = 4
			helper_17043bf1()
			event.MapJump_3(-1, "m06", 151)
		end
		return
	end, function(received: { any })
		if at <= 4 then
			if at == 2 then
				var2 = received[1] :: number
			end
			if at == 3 then
				var2 = received[1] :: number
			end
			if at <= 1 then
				var2 = helper_7d54f41c(0, -1, 5, 256, 208, 2, 1)
			end
			if at <= 2 then
				var0 = 1
				var2 = helper_7d54f41c(0, -1, 5, 256, 208, 2, 1)
			end
			if at <= 3 then
				local _ = var2 == 2
				var0 = 1
				at = 4
				helper_17043bf1()
				return vm.continue_with(function()
					event.MapJump_3(-1, "m06", 151)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	helper_51dafe33()
	event.MapJump_3(-1, "m08", 151)
end

--- Event 510, which map data, a script or the engine runs by number.
script.event_510 = helper_e93c

--- Event 520, which map data, a script or the engine runs by number.
function script.event_520()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	event.Initialize()
	do
		local out1, out2, out3 = event.GetEventData_4(10)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
	end
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsMotionDelay(0, 10)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsReference(0, var0, var1, var2, 10)
	wait_frames(10)
	helper_f38eabca(382, 1)
	event.AddItem(382)
	event.FuncPointShow("", "item1", 0)
end

--- Event 521, which map data, a script or the engine runs by number.
function script.event_521()
	local var0: f32 = 0
	local var1: f32 = 0
	local var2: f32 = 0
	event.Initialize()
	do
		local out1, out2, out3 = event.GetEventData_4(10)
		var0 = out1 or var0
		var1 = out2 or var1
		var2 = out3 or var2
	end
	event.EohSyncChara(0, 0)
	event.ObjsInit(0)
	event.ObjsSyncObj(0, 0)
	event.ObjsSetMotion(0, "歩き")
	event.ObjsMotionDelay(0, 10)
	event.ObjsSetMotion(0, "立ち")
	event.ObjsReference(0, var0, var1, var2, 10)
	wait_frames(10)
	event.EohSyncObj_2(1, "memo")
	event.EohSetShow(1, 0)
	helper_f38eabca(386, 1)
	event.AddItem(386)
	event.FuncPointShow("", "item2", 0)
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	event.Initialize()
	event.SetMotion(0, "立ち")
	event.SetMesWindowMode(0, 1)
	event.SetMesShippo(0, 0)
	event.MesMake_2(0, "Sembra ci sia un libro importante,\nma ancora non puoi dirlo.")
	show_message(0, -1, 5, 0, 0)
end

return script
