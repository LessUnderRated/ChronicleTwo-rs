--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_9cc4383b = require("@lib/event/helper_9cc4383b")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_ce699c36(arg0: s32, arg1: s32)
	local item: s32 = 0
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Did you get hold of any Chestnuts?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.GotoUseItem(301)
	vm.wait(3)
	item = vmhost.used_item() or item
	if item <= 0 then
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	if item ~= 301 then
		event.MesMake_2(0, "So you can't help...<page>Oh well, better give up on making\nCastagnaccio.")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(
		0,
		"Yes, that's it. Thanks very much.<page>Now I can try to make some Castagnaccio.<page>I'll let you try some as soon as it's ready."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"Actually, is there anything I can do in return?<page>What? You want me to go with you on an adventure?<page>Ha-ha! Of course I will.<page>Why didn't you just ask in the first place?"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_9cc4383b()
	event.Finish()
	event.SetQuestEtc(1, 3, 1)
end

return helper_ce699c36
