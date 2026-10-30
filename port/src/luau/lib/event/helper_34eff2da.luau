--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_024677a1 = require("@lib/event/helper_024677a1")
local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_9cc4383b = require("@lib/event/helper_9cc4383b")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_34eff2da(arg0: s32, arg1: s32)
	local item: s32 = 0
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Ich hab dich erwartet.<page>Schnell, gib mir die Farbe,\ndann kann ich das Bild beleben.")
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
		event.MesMake_2(0, "Du machst Witze!<page>Ich brauche goldene Farbe.\nUnd nichts anderes!")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.SubItem(376)
	event.MesMake_2(0, "Das ist die goldene Farbe ...\nIch probiere sie sofort aus.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "S ... sie ... sie lebt ...<page>Unglaublich, sie ist perfekt!")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "Danke, Max.\nIch halte mein Versprechen. Nutze\nmeine neue Kraft, wann du willst.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_9cc4383b()
	event.SetNpcStatus(22, 130)
	helper_024677a1(22)
	event.Finish()
	event.SetQuestEtc(1, 1, 1)
end

return helper_34eff2da
