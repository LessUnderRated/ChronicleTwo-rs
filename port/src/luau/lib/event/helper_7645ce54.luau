--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_49ce41ea = require("@lib/event/helper_49ce41ea")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local show_message = require("@lib/event/show_message")

--- Helper function.
local function helper_7645ce54(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	local item: s32 = 0
	local var4: s32 = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 then
		helper_49ce41ea(arg0, arg1)
		return
	end
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Max, fixing this tree is my number\none priority.<page>Now, what I need to fix this\ntree...")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.GotoUseItem(276)
	vm.wait(4)
	item = vmhost.used_item() or item
	if item <= 0 then
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	if item ~= 276 then
		event.MesMake_2(0, "Max, this just won't work.<page>What I need is Holy Water from\nPriest Bruno.")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(0, "Yes! Max, you've done it! Now\nI can take care of this tree!<page>Thank you, Max.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"My work is all taken care of\nfor now.<page>Now I can go with you on your\nadventure!<page>Oh, and don't mention that Holy\nWater to you father, you hear?"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(0, "Gordon joined your party.")
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]You can use his abilities\n   from the Status command under\n   Characters on the Main Menu.<page>[(!)]If you recruit someone else\n   to join your adventure, that\n   person will get on the train."
	)
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]Talk to that person inside\n   the train to switch him or her\n   in as your third party member.<page>[(!)]To move one of your train friends\n   into a house, choose Move Person\n   from the door menu of that house."
	)
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(0, "[(!)]There may be many others\n   willing to join your party.\n   Be sure to look for them!")
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	var4 = event.GetEventData_2(14) or var4
	event.SetNpcStatus(var4, 130)
	event.Finish()
	event.SetQuestEtc(1, 0, 1)
end

return helper_7645ce54
