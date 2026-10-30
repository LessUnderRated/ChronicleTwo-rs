--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_fdadf923(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "I Firbit concedono\nfavori solo a chi [UNI00e8]\npi[UNI00f9] in gamba di loro.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "So il fatto mio quando\nsi tratta di pesci.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"Ho sentito dire che gli Umani\norganizzano un evento in cui\nfanno competere i loro pesci.<page>Se hai un pesce, perch[UNI00e9]\nnon cerchi di arrivare primo?<page>Se ci riesci, sapr[UNI00f2]\nche sei degno del mio aiuto."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Sembra che parli della Corsa dei\n   Pesci. Prova a vincere la Categoria\n   Principianti! Poi forse ti aiuter[UNI00e0]."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 16, 1)
end

return helper_fdadf923
