--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")
local helper_9cc4383b = require("@lib/event/helper_9cc4383b")
local helper_c5602593 = require("@lib/event/helper_c5602593")

--- Helper function.
local function helper_7f1b43ad(arg0: s32, arg1: s32)
	local var2: s32 = 0
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	var2 = helper_c5602593()
	if 0 < var2 then
		event.MesMake_2(0, "どうやら、時はまだ\n満ちていないようですね。")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.MesMake_2(
			0,
			"未来の君には期待していますが、\n今の君に協力する事はできません。"
		)
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		return
	end
	event.MesMake_2(
		0,
		"よく分かりましたね。\nすばらしい。<page>君なら私の期待にも\n答えてくれることでしょう。<page>約束でしたね。私も\n君と共に行きましょう。"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_9cc4383b()
	event.Finish()
	event.SetQuestEtc(1, 13, 1)
end

return helper_7f1b43ad
