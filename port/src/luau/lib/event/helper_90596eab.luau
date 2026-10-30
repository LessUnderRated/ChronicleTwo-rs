--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_90596eab(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Ja, ich komme gern mit -\naber gibt's dort auch einen Mond?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "Ach ja? Vielleicht sagst du das nur.\nIch wei[UNI00df], dass Menschen oft l[UNI00fc]gen.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "Nein, ich hab's mir anders\n[UNI00fc]berlegt. Ich warte hier, bis der Mond kommt.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Vielleicht ist ihm fr[UNI00fc]her\n   etwas passiert - Rufio\n   vertraut Menschen offenbar nicht."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]Du musst Rufios Vertrauen\n   gewinnen. Vielleicht w[UNI00fc]rde\n   ein Foto des Mondes reichen."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 14, 1)
end

return helper_90596eab
