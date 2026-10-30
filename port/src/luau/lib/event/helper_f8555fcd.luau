--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_9cc4383b = require("@lib/event/helper_9cc4383b")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_f8555fcd(arg0: s32, arg1: s32)
	local flag: s32 = 0
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	flag = event.GetFlag(41) or flag
	if flag == 0 then
		event.MesMake_2(0, "Se dice que los peces se parecen a sus amos.")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.MesMake_2(0, "No le voy a dirigir la palabra al\ndue[UNI00f1]o de una birria de pez.")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(
		0,
		"La he visto.\nHa sido una carrera muy emocionante.<page>No creo que yo hubiera\npodido criar un pez tan bueno.<page>Ll[UNI00e9]vame contigo, por favor.\nEns[UNI00e9][UNI00f1]ame c[UNI00f3]mo lo haces."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_9cc4383b()
	event.Finish()
	event.SetQuestEtc(1, 16, 1)
end

return helper_f8555fcd
