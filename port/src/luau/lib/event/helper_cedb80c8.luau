--!strict
-- Shared event helper used by 21 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_ac02d4a5 = require("@lib/event/helper_ac02d4a5")

--- Helper function.
local function helper_cedb80c8(arg0: s32, arg1: s32)
	local var2: any = 0
	event.SetMesShippo(0, 0)
	event.SetMesQuestionGyou(0, 0)
	event.SetMesEtc(0, 0, 1)
	event.MesMake_2(0, "Certo, ci prover[UNI00f2].\nNon me la sento.")
	var2 = helper_ac02d4a5(0, -1, 5, 256, 208, 2, 1)
	event.SetMesShippo(0, 1)
	event.SetMesEtc(0, 0, 0)
	if var2 ~= 0 then
		event.MesMake_2(0, "OK...<page>OK, se vuoi riprovarci pi[UNI00f9] avanti,\nfammelo sapere. Ti aspetto.")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		event.SetCnt(7, 0)
		return
	end
	event.MesMake_2(0, "Pronti, partenza,\nvia!")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.Finish()
	event.Stopwatch(3, 32, 364, 0)
	event.Stopwatch_1(0)
	event.SetCnt(7, 1)
end

return helper_cedb80c8
