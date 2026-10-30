--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")

--- Helper function.
local function helper_a7f38474()
	event.LoadMonsterFile(522, 1)
	event.LoadMonsterFile(514, 0)
	event.AutoSetMonster(
		514,
		250.0 + vm.f32(vm.sin(vm.f32(-2.617994)) * 450.0),
		0.0,
		250.0 + vm.f32(vm.cos(vm.f32(-2.617994)) * 450.0),
		0.0,
		0.5235988,
		0.0
	)
	event.AutoSetMonster(
		514,
		250.0 + vm.f32(vm.sin(vm.f32(-1.5707964)) * 450.0),
		0.0,
		250.0 + vm.f32(vm.cos(vm.f32(-1.5707964)) * 450.0),
		0.0,
		1.5707964,
		0.0
	)
	event.AutoSetMonster(
		514,
		250.0 + vm.f32(vm.sin(vm.f32(-0.5235988)) * 450.0),
		0.0,
		250.0 + vm.f32(vm.cos(vm.f32(-0.5235988)) * 450.0),
		0.0,
		2.617994,
		0.0
	)
	event.AutoSetMonster(
		514,
		250.0 + vm.f32(vm.sin(vm.f32(0.5235988)) * 450.0),
		0.0,
		250.0 + vm.f32(vm.cos(vm.f32(0.5235988)) * 450.0),
		0.0,
		-2.617994,
		0.0
	)
	event.AutoSetMonster(
		514,
		250.0 + vm.f32(vm.sin(vm.f32(1.5707964)) * 450.0),
		0.0,
		250.0 + vm.f32(vm.cos(vm.f32(1.5707964)) * 450.0),
		0.0,
		-1.5707964,
		0.0
	)
	event.AutoSetMonster(
		514,
		250.0 + vm.f32(vm.sin(vm.f32(2.617994)) * 450.0),
		0.0,
		250.0 + vm.f32(vm.cos(vm.f32(2.617994)) * 450.0),
		0.0,
		-0.5235988,
		0.0
	)
	event.AutoSetMonster(522, 0, 0, 0)
	event.EohSyncObj_2(0, "p04_d04b01")
	event.EohSetShow(0, 1)
	vm.wait(1)
end

return helper_a7f38474
