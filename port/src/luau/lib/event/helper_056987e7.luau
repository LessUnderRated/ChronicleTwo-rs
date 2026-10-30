--!strict
-- Shared event helper used by 21 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")

--- Helper function.
local function helper_056987e7(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	event.MesMake_2(0, "最近、身体の\n調子が悪いの。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"ダック先生に診て頂いたけど、\n身体には何の問題もないって。<page>なぜかしら？"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.Finish()
end

return helper_056987e7
