--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local show_message = require("@lib/event/show_message")

--- Helper function.
local function helper_de96f74d(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Je veux bien venir avec toi,\nmais y aura-t-il une lune l[UNI00e0]-bas ?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "C'est vrai ? Dois-je te croire sur\nparole. Les hommes mentent parfois.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "En fait, j'ai chang[UNI00e9] d'avis. Je\nvais attendre que la lune se\nmontre ici.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]C'est peut-[UNI00ea]tre li[UNI00e9] [UNI00e0] son histoire\n   pass[UNI00e9]e... Quoi qu'il en soit, Rufio\n   ne fait pas confiance aux hommes."
	)
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]Il faut que Rufio te croie.\n   Si tu lui donnes une photo\n   de la lune, [UNI00e7]a marchera peut-[UNI00ea]tre."
	)
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 14, 1)
end

return helper_de96f74d
