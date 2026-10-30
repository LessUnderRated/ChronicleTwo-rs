--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_473930cd = require("@lib/event/helper_473930cd")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_d61bc810 = require("@lib/event/helper_d61bc810")
local helper_e787350a = require("@lib/event/helper_e787350a")

--- Helper function.
local function helper_d4136172(arg0: s32, arg1: s32)
	local var2: s32 = 0
	local argc: s32 = 0
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	event.MesMake_2(0, "あ、坊ちゃん。やっと\n洋服が出来ました！")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"頂いた材料をむだにしては\nいけないと思って、最後まで\nがんばる事が出来ました。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "まだまだ満足いく出来じゃ\nないんですけど、\n着て頂けますか？")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	var2 = 259
	argc = event.GetItemNum(258) or argc
	if argc <= 0 then
		var2 = 258
	else
		argc = event.GetItemNum(260) or argc
		if argc <= 0 then
			var2 = 260
		end
	end
	event.AddItem(var2)
	helper_e787350a(var2, 1)
	helper_d61bc810(1)
	event.MesMake_2(
		0,
		"はぁ、何かをやりとげるって\n良い気持ちですね。<page>これで私も\n自分に自信がつきました。<page>私なりに精一杯がんばりますので、\n旅のお供をさせてください。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_473930cd()
	event.Finish()
	event.SetQuestEtc(1, 7, 1)
end

return helper_d4136172
