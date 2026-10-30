--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_473930cd = require("@lib/event/helper_473930cd")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_1c6d97ce(arg0: s32, arg1: s32)
	local var2: s32 = 0
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "What was that?<page>Can't you talk a bit more slowly?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetQuestEtc(0, 19, 1)
	event.SetMenuEtc(0, 'Please enter, "Let\'s go together."', "Let's go together.", 0)
	event.GotoMenu(5)
	vm.wait(3)
	event.SetFadeIn(15)
	do
		local out1, _, _, _ = event.GetMenuParam_4()
		var2 = out1 or var2
	end
	if var2 == -1 then
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	if var2 == 0 then
		event.MesMake_2(0, "What are you going on about?\nI've no idea...")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(0, "An adventure?\nThat would be nice.<page>What use could an old\nwoman like me be?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_473930cd()
	event.Finish()
	event.SetQuestEtc(1, 19, 1)
end

return helper_1c6d97ce
