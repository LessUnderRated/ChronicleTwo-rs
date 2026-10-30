--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_13cc925c = require("@lib/event/helper_13cc925c")
local helper_9cc4383b = require("@lib/event/helper_9cc4383b")
local helper_ac02d4a5 = require("@lib/event/helper_ac02d4a5")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")

--- Helper function.
local function helper_4a43bcc7(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	local argc: s32 = 0
	local argc_2: s32 = 0
	local var5: any = 0
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 1 then
		helper_13cc925c(arg0, arg1)
		return
	end
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	argc = event.GetItemNum(201) or argc
	argc_2 = event.GetItemNum(202) or argc_2
	if argc <= 0 or argc_2 <= 0 then
		event.MesMake_2(
			0,
			"[UNI00bf]Qu[UNI00e9]? Ah, un coleccionista de monedas.<page>Estoy buscando la Moneda negra\ny la Moneda indestructible.<page>No se ven en ninguna parte. Las he buscado\npor todos lados pero no hay quien las encuentre."
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(
		0,
		"[UNI00bf]Eh? [UNI00bf]Las tienes? [UNI00a1]Incre[UNI00ed]ble!<page>[UNI00a1]No te quedes ah[UNI00ed]! [UNI00a1]Dame, dame, dame!"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMesShippo(0, 0)
	event.SetMesQuestionGyou(0, 0)
	event.SetMesEtc(0, 0, 1)
	event.MesMake_2(0, "Vale.\n[UNI00bf]Qu[UNI00e9] tengo que hacer?")
	var5 = helper_ac02d4a5(0, -1, 5, 256, 208, 2, 1)
	event.SetMesShippo(0, 1)
	event.SetMesEtc(0, 0, 0)
	if var5 ~= 0 then
		event.MesMake_2(0, "[UNI00a1]Agh! Si vas a cabrearme,\npaso de ayudarte.")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.SubItem(201)
	event.SubItem(202)
	event.MesMake_2(
		0,
		"[UNI00a1]Guau! [UNI00a1]Ya las tengo todas!\nCre[UNI00ed]a que era imposible...<page>Bueno, ahora creo que no tengo alternativa.\nSer[UNI00e1] mejor que vaya contigo."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_9cc4383b()
	event.Finish()
	event.SetQuestEtc(1, 2, 1)
end

return helper_4a43bcc7
