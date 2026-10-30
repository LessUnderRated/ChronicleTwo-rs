--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_57c93eff = require("@lib/event/helper_57c93eff")

--- Helper function.
local function helper_89af82b2(arg0: s32, arg1: s32, se_id: s32, voice: s32, arg4: f32)
	local var5: s32 = 0
	local get_now_frame_wait: f32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local var9: s32 = 0
	local var10: s32 = 0
	local var11: s32 = 0
	local loud: s32 = 0
	event.TrgPakuAnim(1)
	event.TrgPakuMotion(0)
	var5 = 0
	var10 = 0
	argc_2 = event.StreamGetStatus(1) or argc_2
	loud = 0
	while true do
		get_now_frame_wait = event.GetMotNowWait(arg1) or get_now_frame_wait
		if get_now_frame_wait < vm.f32(arg4 + vm.f32(0.01)) and get_now_frame_wait > vm.f32(arg4 - vm.f32(0.01)) then
			event.SndSePlay(se_id, voice)
		end
		argc_2 = argc
		argc = event.StreamGetStatus(1) or argc
		if argc_2 ~= 0 and argc == 0 then
			event.TrgPakuMotion(2)
			var5 = 2
		end
		var11 = loud
		loud = event.StreamSilentCheck(1) or loud
		if var11 == 0 and loud == 1 then
			event.TrgPakuAnim(1)
		end
		if var11 == 1 and loud == 0 then
			event.TrgPakuAnim(0)
		end
		local t0: s32
		t0, var5 = helper_57c93eff(arg0, var5)
		var9 = t0
		if var9 ~= 0 then
			var10 = vm.i32(var10 + 1)
			break
		else
			vm.wait(1)
			var10 = vm.i32(var10 + 1)
		end
	end
	if var5 == 0 then
		event.TrgPakuMotion(2)
	end
	event.ResetPakuMotion()
	event.TrgPakuAnim(0)
	event.ResetPakuAnim()
	event.StreamStop(1)
end

return helper_89af82b2
