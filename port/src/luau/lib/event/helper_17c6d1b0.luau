--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local show_message = require("@lib/event/show_message")

--- Helper function.
local function helper_17c6d1b0(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Bah, no me importa acompa[UNI00f1]arte,\npero... [UNI00bf]Hay luna en el lugar al que vamos?")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "[UNI00bf]De verdad? A lo mejor te lo inventas.\nS[UNI00e9] que los humanos mienten.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"En realidad he cambiado de opini[UNI00f3]n.\nEsperar[UNI00e9] aqu[UNI00ed] a que salga la luna."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Quiz[UNI00e1] se deba a alg[UNI00fa]n suceso pasado,\npero Rufio no se f[UNI00ed]a\n nada de los humanos."
	)
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(
		0,
		"[(!)]Tienes que conseguir que Rufio\nte crea. Si le dieras una\nfoto de la luna quiz[UNI00e1] lo lograr[UNI00ed]as."
	)
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 14, 1)
end

return helper_17c6d1b0
