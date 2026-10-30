--!strict
-- map/d/d06/b02/d06b02_5.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_080dd419 = require("@lib/event/helper_080dd419")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_3ab19c66 = require("@lib/event/helper_3ab19c66")
local helper_43f02c95 = require("@lib/event/helper_43f02c95")
local helper_4cedea73 = require("@lib/event/helper_4cedea73")
local helper_9dafbc83 = require("@lib/event/helper_9dafbc83")
local helper_add029f7 = require("@lib/event/helper_add029f7")
local helper_c057f6fd = require("@lib/event/helper_c057f6fd")
local helper_f9ac3902 = require("@lib/event/helper_f9ac3902")
local wait_frames = require("@lib/event/wait_frames")

--- Event 99, which map data, a script or the engine runs by number.
local function event_99() end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

script.event_99 = event_99

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
function script.default_event()
	local flag: s32 = 0
	local var1: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event_99()
		flag = event.GetFlag(728) or flag
		if flag == 1 then
			at = 1
			helper_add029f7()
			event.LoadSound(7691)
			event.SetCharaShow(1, 1)
			event.SetCharaShow(2, 1)
			event.SetStatusbarShow(1, 1.0)
			var1 = event.GetSndId(4) or var1
			print("btl_snd_id = ", var1, "\n")
			event.SetCharaExSoundid(0, var1)
			event.ActchrSoundInfoCopy(0)
			helper_9dafbc83(vm.f32(3846.1), vm.f32(1622.3), vm.f32(-2002.6), vm.f32(0.69))
			event.SetCameraPos(3744.75, 1652.31, -2126.35)
			event.SetCameraRef(3846.14, 1652.31, -2002.58)
			event.ResetCamera(0)
			event.LoadMonsterFile(603, 1)
			event.AutoSetMonster(603, 4034.9, 1622.3, -1778.2, 0.0, -2.46, 0.0)
		end
		event.SetFadeIn(30)
		event.Finish()
		return
	end, function(received: { any })
		if at <= 1 then
			print("btl_snd_id = ", var1, "\n")
			helper_43f02c95(vm.f32(3846.1), vm.f32(1622.3), vm.f32(-2002.6), vm.f32(0.69))
			return 0
		end
		return nil
	end)
end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-1")
	helper_080dd419()
end

--- Event 501, which map data, a script or the engine runs by number.
function script.event_501()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-3")
	helper_080dd419()
end

--- Event 502, which map data, a script or the engine runs by number.
function script.event_502()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-5")
	helper_080dd419()
end

--- Event 503, which map data, a script or the engine runs by number.
function script.event_503()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-7")
	helper_080dd419()
end

--- Event 504, which map data, a script or the engine runs by number.
function script.event_504()
	event.Initialize()
	event.EohSyncObj_2(0, "p11_d06b02-9")
	helper_080dd419()
end

--- Event 550, which map data, a script or the engine runs by number.
function script.event_550()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		wait_frames(20)
		at = 2
		helper_c057f6fd()
		event.FuncPointShow("", "2f", 0)
		event.EohSyncObj_2(0, "p11_d06b02-2")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.EohSyncObj_2(0, "p11_d06b02-3")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.LoadMonsterFile(604, 1)
		event.AutoSetMonster(604, 3220.8, 2411.4, 3458.1, 0.0, 1.91, 0.0)
		event.SetCharaPos(0, 3482.7, 2411.4, 3361.8)
		event.SetCharaRot(0, 0.0, -1.21, 0.0)
		event.SetCameraPos(3776.37, 2452.2, 3256.29)
		event.SetCameraRef(3625.59, 2441.42, 3309.81)
		event.ResetCamera(0)
		event.SetFadeIn(20)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_c057f6fd()
				return vm.continue_with(function()
					event.FuncPointShow("", "2f", 0)
					event.EohSyncObj_2(0, "p11_d06b02-2")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.EohSyncObj_2(0, "p11_d06b02-3")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.LoadMonsterFile(604, 1)
					event.AutoSetMonster(604, 3220.8, 2411.4, 3458.1, 0.0, 1.91, 0.0)
					event.SetCharaPos(0, 3482.7, 2411.4, 3361.8)
					event.SetCharaRot(0, 0.0, -1.21, 0.0)
					event.SetCameraPos(3776.37, 2452.2, 3256.29)
					event.SetCameraRef(3625.59, 2441.42, 3309.81)
					event.ResetCamera(0)
					event.SetFadeIn(20)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 551, which map data, a script or the engine runs by number.
function script.event_551()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		wait_frames(20)
		at = 2
		helper_f9ac3902()
		event.FuncPointShow("", "3f", 0)
		event.EohSyncObj_2(0, "p11_d06b02-4")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.EohSyncObj_2(0, "p11_d06b02-5")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.LoadMonsterFile(605, 1)
		event.AutoSetMonster(605, -5000.8, 3914.3, 1335.4, 0.0, 0.5, 0.0)
		event.SetCharaPos(0, -4878.4, 3914.3, 1557.6)
		event.SetCharaRot(0, 0.0, -2.64, 0.0)
		event.SetCameraPos(-4801.28, 3960.04, 1697.72)
		event.SetCameraRef(-4878.44, 3944.32, 1557.56)
		event.ResetCamera(0)
		event.SetFadeIn(20)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_f9ac3902()
				return vm.continue_with(function()
					event.FuncPointShow("", "3f", 0)
					event.EohSyncObj_2(0, "p11_d06b02-4")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.EohSyncObj_2(0, "p11_d06b02-5")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.LoadMonsterFile(605, 1)
					event.AutoSetMonster(605, -5000.8, 3914.3, 1335.4, 0.0, 0.5, 0.0)
					event.SetCharaPos(0, -4878.4, 3914.3, 1557.6)
					event.SetCharaRot(0, 0.0, -2.64, 0.0)
					event.SetCameraPos(-4801.28, 3960.04, 1697.72)
					event.SetCameraRef(-4878.44, 3944.32, 1557.56)
					event.ResetCamera(0)
					event.SetFadeIn(20)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 552, which map data, a script or the engine runs by number.
function script.event_552()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		wait_frames(20)
		at = 2
		helper_4cedea73()
		event.FuncPointShow("", "4f", 0)
		event.EohSyncObj_2(0, "p11_d06b02-6")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.EohSyncObj_2(0, "p11_d06b02-7")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.LoadMonsterFile(606, 1)
		event.AutoSetMonster(606, -1126.9, 5303.1, -3005.0, 0.0, -1.78, 0.0)
		event.SetCharaPos(0, -1380.3, 5303.1, -3061.2)
		event.SetCharaRot(0, 0.0, 1.37, 0.0)
		event.SetCameraPos(-1537.07, 5363.09, -3093.39)
		event.SetCameraRef(-1380.34, 5333.14, -3061.24)
		event.ResetCamera(0)
		event.SetFadeIn(20)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_4cedea73()
				return vm.continue_with(function()
					event.FuncPointShow("", "4f", 0)
					event.EohSyncObj_2(0, "p11_d06b02-6")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.EohSyncObj_2(0, "p11_d06b02-7")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.LoadMonsterFile(606, 1)
					event.AutoSetMonster(606, -1126.9, 5303.1, -3005.0, 0.0, -1.78, 0.0)
					event.SetCharaPos(0, -1380.3, 5303.1, -3061.2)
					event.SetCharaRot(0, 0.0, 1.37, 0.0)
					event.SetCameraPos(-1537.07, 5363.09, -3093.39)
					event.SetCameraRef(-1380.34, 5333.14, -3061.24)
					event.ResetCamera(0)
					event.SetFadeIn(20)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 553, which map data, a script or the engine runs by number.
function script.event_553()
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(20)
		at = 1
		wait_frames(20)
		at = 2
		helper_3ab19c66()
		event.FuncPointShow("", "5f", 0)
		event.EohSyncObj_2(0, "p11_d06b02-8")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.EohSyncObj_2(0, "p11_d06b02-9")
		do
			local out1, out2, out3 = event.EohGetPos(0)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
		event.LoadMonsterFile(607, 1)
		event.LoadMonsterFile(608, 0)
		event.AutoSetMonster(607, -3980.8, 7277.16, 3321.3, 0.0, 1.46, 0.0)
		event.AutoSetMonster(608, -3947.0, 7277.16, 3460.7, 0.0, 2.07, 0.0)
		event.SetCharaPos(0, -3745.89, 7277.16, 3354.1)
		event.SetCharaRot(0, 0.0, -1.38, 0.0)
		event.SetCameraPos(-3588.72, 7334.8, 3324.13)
		event.SetCameraRef(-3745.89, 7307.16, 3354.1)
		event.ResetCamera(0)
		event.SetFadeIn(20)
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_3ab19c66()
				return vm.continue_with(function()
					event.FuncPointShow("", "5f", 0)
					event.EohSyncObj_2(0, "p11_d06b02-8")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.EohSyncObj_2(0, "p11_d06b02-9")
					do
						local out1, out2, out3 = event.EohGetPos(0)
						pos_x = out1 or pos_x
						pos_y = out2 or pos_y
						pos_z = out3 or pos_z
					end
					event.EohSetPos(0, pos_x, pos_y + 200.0, pos_z)
					event.LoadMonsterFile(607, 1)
					event.LoadMonsterFile(608, 0)
					event.AutoSetMonster(607, -3980.8, 7277.16, 3321.3, 0.0, 1.46, 0.0)
					event.AutoSetMonster(608, -3947.0, 7277.16, 3460.7, 0.0, 2.07, 0.0)
					event.SetCharaPos(0, -3745.89, 7277.16, 3354.1)
					event.SetCharaRot(0, 0.0, -1.38, 0.0)
					event.SetCameraPos(-3588.72, 7334.8, 3324.13)
					event.SetCameraRef(-3745.89, 7307.16, 3354.1)
					event.ResetCamera(0)
					event.SetFadeIn(20)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 554, which map data, a script or the engine runs by number.
function script.event_554()
	event.Initialize()
	event.ActchrSetDefMotion(0)
	event.SetFadeOut(20)
	wait_frames(20)
	event.LoadDungeonMapFile("d06b03")
	event.LoadScript("d06b03/d06b03.stb", 100)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- Event 27020, which map data, a script or the engine runs by number.
function script.event_27020()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(603, 1)
	event.AutoSetMonster(603, 4034.9, 1622.3, -1778.2, 0.0, -2.46, 0.0)
	helper_9dafbc83(3760.0, vm.f32(1622.3), -2117.0, vm.f32(0.68))
	event.SetCameraPos(3660.11, 1666.73, -2241.34)
	event.SetCameraRef(3760.76, 1652.31, -2116.96)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Event 27030, which map data, a script or the engine runs by number.
function script.event_27030()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(604, 1)
	event.AutoSetMonster(604, 3220.8, 2411.4, 3458.1, 0.0, 1.91, 0.0)
	event.SetCharaPos(0, 3482.7, 2411.4, 3361.8)
	event.SetCharaRot(0, 0.0, -1.21, 0.0)
	event.SetCameraPos(3776.37, 2452.2, 3256.29)
	event.SetCameraRef(3625.59, 2441.42, 3309.81)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Event 27040, which map data, a script or the engine runs by number.
function script.event_27040()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(605, 1)
	event.AutoSetMonster(605, -5000.8, 3914.3, 1335.4, 0.0, 0.5, 0.0)
	event.SetCharaPos(0, -4878.4, 3914.3, 1557.6)
	event.SetCharaRot(0, 0.0, -2.64, 0.0)
	event.SetCameraPos(-4801.28, 3960.04, 1697.72)
	event.SetCameraRef(-4878.44, 3944.32, 1557.56)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Event 27050, which map data, a script or the engine runs by number.
function script.event_27050()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(606, 1)
	event.AutoSetMonster(606, -1126.9, 5303.1, -3005.0, 0.0, -1.78, 0.0)
	event.SetCharaPos(0, -1380.3, 5303.1, -3061.2)
	event.SetCharaRot(0, 0.0, 1.37, 0.0)
	event.SetCameraPos(-1537.07, 5363.09, -3093.39)
	event.SetCameraRef(-1380.34, 5333.14, -3061.24)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

--- Event 27060, which map data, a script or the engine runs by number.
function script.event_27060()
	event.Initialize()
	event.SetFlag(728, 1)
	event.LoadMonsterFile(607, 1)
	event.LoadMonsterFile(608, 0)
	event.AutoSetMonster(607, -3980.8, 7277.16, 3321.3, 0.0, 1.46, 0.0)
	event.AutoSetMonster(608, -3947.0, 7277.16, 3460.7, 0.0, 2.07, 0.0)
	event.SetCharaPos(0, -3745.89, 7277.16, 3354.1)
	event.SetCharaRot(0, 0.0, -1.38, 0.0)
	event.SetCameraPos(-3588.72, 7334.8, 3324.13)
	event.SetCameraRef(-3745.89, 7307.16, 3354.1)
	event.ResetCamera(0)
	event.SetFadeIn(30)
end

return script
