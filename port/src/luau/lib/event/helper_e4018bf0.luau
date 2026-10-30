--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_473930cd = require("@lib/event/helper_473930cd")
local helper_59c8e763 = require("@lib/event/helper_59c8e763")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_e4018bf0(arg0: s32, arg1: s32)
	local item: s32 = 0
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(
		0,
		"I've been waiting for you.<page>Quick, give me the Paint so that\nI can give life to my picture."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.GotoUseItem(376)
	vm.wait(3)
	item = vmhost.used_item() or item
	if item <= 0 then
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	if item ~= 376 then
		event.MesMake_2(0, "You must be joking!<page>What I need is Golden Paint.\nGet it right!")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.SubItem(376)
	event.MesMake_2(0, "So this is Golden Paint...\nI'll try it straight away.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "Sh-she... She's real...<page>Amazing, she's perfect!")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "Thanks, Max.\nI haven't forgotten my promise. Please use\nmy new power whenever you want.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_473930cd()
	event.SetNpcStatus(22, 130)
	helper_59c8e763(22)
	event.Finish()
	event.SetQuestEtc(1, 1, 1)
end

return helper_e4018bf0
