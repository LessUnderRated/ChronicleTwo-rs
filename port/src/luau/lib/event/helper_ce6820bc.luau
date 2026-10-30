--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_camera = require("@lib/event/wait_camera")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_ce6820bc(se_id: s32)
	local projection: f32 = 0
	local var2: f32 = 0
	local projection_2: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	event.CmrsSetPos(-118.58, 15.3, -131.62)
	event.CmrsSetRef(-119.04, 14.32, -218.31)
	projection = event.GetProjection() or projection
	event.SetProjection(417.9)
	event.ObjsSetPos(0, -119.53, -12.53, -229.18)
	event.ObjsSetRot(0, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 4)
	event.ObjsSetPos(1, -119.53, -12.53, -229.18)
	event.ObjsSetRot(1, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(1, "立ち（スティーブ）", 4)
	event.ObjsSetMotion(0, "歩き（スティーブ）")
	event.ObjsSetMotion(1, "歩き（スティーブ）")
	event.ObjsRotation(0, 0.0, 3.14, 0.0, 50)
	event.ObjsRotation(1, 0.0, 3.14, 0.0, 50)
	wait_objects(0)
	wait_objects(1)
	event.ObjsSetMotion(0, "立ち（スティーブ）")
	event.ObjsSetMotion(1, "立ち（スティーブ）")
	wait_objects(0)
	wait_objects(1)
	event.SndSePlay(se_id, 0)
	event.ObjsRotation(12, 0.0, -1.57, 0.0, 50)
	event.ObjsRotation(13, 0.0, 1.57, 0.0, 50)
	wait_objects(12)
	wait_objects(13)
	event.CmrsFadeInit()
	event.CmrsFadeDelay(100)
	event.CmrsFadeOut(50, 0.0, 0.0, 0.0)
	event.ObjsSetMotion(0, "歩き（スティーブ）", 0)
	event.ObjsSetMotion(1, "歩き（スティーブ）", 0)
	event.ObjsMove(0, -119.23, -12.53, -333.8, 150)
	event.ObjsMove(1, -119.23, -12.53, -333.8, 150)
	event.CmrsMove(-118.7, 15.3, -153.91, -119.04, 14.32, -218.31, 150)
	var4 = 150.0
	var5 = 1.0
	var2 = vm.f32(vm.fdiv(vm.f32(107.00003), var4))
	while true do
		projection_2 = vm.f32(var2 * var5)
		projection_2 = vm.f32(vm.f32(417.9) + projection_2)
		event.SetProjection(projection_2)
		vm.wait(7)
		var5 = vm.f32(var5 + 1.0)
		if var5 > var4 then
			break
		end
	end
	wait_objects(0)
	wait_objects(1)
	wait_camera()
	event.SetProjection(projection)
end

return helper_ce6820bc
