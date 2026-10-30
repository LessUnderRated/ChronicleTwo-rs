--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_a374ffdb(se_id: s32)
	local projection: f32 = 0
	local var2: f32 = 0
	local var3: f32 = 0
	local var4: f32 = 0
	local var5: f32 = 0
	local projection_2: f32 = 0
	event.CmrsSetPos(-120.59, 12.3, -121.56)
	event.CmrsSetRef(-121.3, 14.64, -178.67)
	event.GetProjection(projection)
	event.SetProjection(478.9)
	event.CharaActive(1, 0)
	event.ObjsSetPos(0, -128.93, -12.49, -206.0)
	event.ObjsSetRot(0, 0.0, 1.49, 0.0)
	event.CharaActive(1, 34)
	event.ObjsSetPos(2, -92.88, -13.05, -212.34)
	event.ObjsSetRot(2, 0.0, -1.44, 0.0)
	event.CharaActive(1, 35)
	event.ObjsSetPos(3, -128.93, -12.49, -206.0)
	event.ObjsSetRot(3, 0.0, 1.49, 0.0)
	event.EohSetShow(11, 0)
	vm.wait(1)
	event.ObjsSetMotion(2, "歩き", 4)
	event.ObjsRotation(2, 0.0, -2.88, 0.0, 15)
	event.ObjsMotionDelay(2, 15)
	event.ObjsSetMotion(2, "上見立ち", 0)
	event.SndSePlay(se_id, 4)
	event.ObjsResetMotion(0)
	event.ObjsResetMotion(3)
	event.ObjsSetMotion(0, "歩き（スティーブ）", 4)
	event.ObjsSetMotion(3, "歩き（スティーブ）", 4)
	event.ObjsRotation(0, 0.0, -3.11, 0.0, 30)
	event.ObjsRotation(3, 0.0, -3.11, 0.0, 30)
	wait_frames(30)
	event.ObjsSetMotion(0, "立ち（スティーブ）", 0)
	event.ObjsSetMotion(3, "立ち（スティーブ）", 0)
	event.SndSePlay(se_id, 5)
	event.ObjsRotation(12, 0.0, -1.57, 0.0, 50)
	event.ObjsRotation(13, 0.0, 1.57, 0.0, 50)
	wait_frames(50)
	event.ObjsSetMotion(0, "歩き（スティーブ）", 4, -1.0, 1)
	event.ObjsSetMotion(3, "歩き（スティーブ）", 4)
	event.ObjsMove(0, -125.29, -12.78, -310.13, 120)
	event.ObjsMove(3, -125.29, -12.78, -310.13, 120)
	event.CmrsFadeInit()
	event.CmrsFadeDelay(70)
	event.CmrsFadeOut(50, 0.0, 0.0, 0.0)
	var5 = 1.0
	var2 = vm.f32(132.00003)
	var3 = 120.0
	var4 = vm.f32(vm.fdiv(var2, var3))
	while true do
		projection_2 = vm.f32(vm.f32(478.9) + vm.f32(var4 * var5))
		event.SetProjection(projection_2)
		vm.wait(4)
		var5 = vm.f32(var5 + 1.0)
		if var5 > var3 then
			break
		end
	end
	event.SetProjection(projection)
end

return helper_a374ffdb
