--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local show_message = require("@lib/event/show_message")

--- Helper function.
local function helper_202d127e(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	event.MesMake_2(0, "Ich soll dir einen Gefallen tun?<page>Warte - h[UNI00f6]r mich erst an.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"Ich rede nur mit Leuten, die\nich respektiere.<page>Und ich respektiere nur Leute,\ndie gr[UNI00f6][UNI00df]ere Fische geangelt\nhaben als ich."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"Mein gr[UNI00f6][UNI00df]ter Fang war\nein 60-cm-Nonky.<page>Bist du beeindruckt?\nWenn du gegen mich antreten\nm[UNI00f6]chtest, bin ich immer bereit!"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]Um ihn zu [UNI00fc]berzeugen, musst\n   du wohl einen Nonky fangen, der\n   l[UNI00e4]nger ist als 60 cm. Du schaffst es!"
	)
	show_message(0, -1, 8, 0, 0)
	event.MesMake_2(0, "[(!)]Versuch doch mal, im\n   See von Palm Brinks zu angeln.")
	show_message(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 15, 1)
end

return helper_202d127e
