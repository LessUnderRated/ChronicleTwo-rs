--!strict
-- dungeon/eff_script/e732_snow.stb: effect script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")

local script = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Initialisation program that every effect script defines empty; the engine never runs it.
-- Defined empty, so the engine runs this instead of its default.
function script.init() end

--- Runs the effect from the frame it is created.
function script.on_start()
	local value: s32 = 0
	local work_vect1_x: f32 = 0
	local work_vect1_y: f32 = 0
	local work_vect1_z: f32 = 0
	local work_vect2_x: f32 = 0
	local work_vect2_z: f32 = 0
	local value_2: f32 = 0
	local value_3: f32 = 0
	local var9: f32 = 0
	local var10: s32 = 0
	local var11: s32 = 0
	local value_4: s32 = 0
	local value_5: f32 = 0
	local value_5_int = true
	do
		local out1, out2, out3 = effect.GetWorkVect1()
		work_vect1_x = out1 or work_vect1_x
		work_vect1_y = out2 or work_vect1_y
		work_vect1_z = out3 or work_vect1_z
	end
	do
		local out1, _, out3 = effect.GetWorkVect2()
		work_vect2_x = out1 or work_vect2_x
		work_vect2_z = out3 or work_vect2_z
	end
	value = effect.GetValue(0) or value
	effect.SptSetTexname("e732_snow")
	effect.SptAssignSprite_1(value)
	effect.SptInitSprite(0, value)
	effect.SptSetAlphab(0, 2, value)
	effect.SptSetDrawFlag(0, 1, value)
	effect.SptSetColor(0, 128.0, 128.0, 128.0, 0.0, value)
	effect.SptSetPutSize(0, 8.0, 8.0, value)
	effect.SptSetUvSize(0, 0.0, 0.0, 64.0, 64.0, value)
	var11 = 0
	var10 = 0
	while true do
		if vm.imod(var10, 2) == 0 then
			for var14 = 0, 3 do
				value_4 = effect.GetRandInt(4) or value_4
				effect.SptSetUvSize(
					var11,
					vm.i32(vm.imod(value_4, 2) * 32),
					vm.i32(vm.idiv(value_4, 2) * 32),
					32.0,
					32.0
				)
				value_2 = effect.GetRand(work_vect2_x) or value_2
				value_2 = vm.f32(vm.f32(value_2 - vm.f32(work_vect2_x / 2.0)) + work_vect1_x)
				value_3 = work_vect1_y
				var9 = effect.GetRand(work_vect2_z) or var9
				var9 = vm.f32(vm.f32(var9 - vm.f32(work_vect2_z / 2.0)) + work_vect1_z)
				effect.SptSetPos(var11, value_2, value_3, var9)
				value_5 = (if value_5_int then vm.float_bits(effect.GetRand(1.0)) else effect.GetRand(1.0)) or value_5
				value_5 = vm.f32(value_5 - 0.5)
				value_5_int = false
				effect.SptSetScale(var11, value_5, value_5)
				effect.SptSetColor(var11, 128.0, 128.0, 128.0, 64.0)
				effect.SptSetBlinking(var11, 0.0, 0.0, 0.0, 64.0, 0.3926991)
				value_3 = effect.GetRand(-0.3) or value_3
				value_3 = vm.f32(value_3 - vm.f32(0.3))
				effect.SptSetVeloPos(var11, 0.0, value_3, 0.0)
				var9 = effect.GetRand(6.2831855) or var9
				var9 = vm.f32(var9 - vm.f32(3.1415927))
				var9 = effect.AngleLimit(var9) or var9
				effect.SptSetRotz(var11, var9)
				if value_4 ~= 3 then
					var9 = effect.GetRand(0.4) or var9
					var9 = vm.f32(var9 - vm.f32(0.2))
					effect.SptSetVeloRotz(var11, var9)
				end
				var11 = vm.i32(var11 + 1)
				if var11 >= value then
					var11 = 0
				end
			end
		end
		var10 = vm.i32(var10 + 1)
		vm.wait()
	end
	var10 = 0
	while var10 < 30 do
		var10 = var10 + 1
		vm.wait()
	end
end

--- Ends an effect.
-- Defined empty, so the engine runs this instead of its default.
function script.on_finish() end

return script
