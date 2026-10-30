--!strict
-- Shared event helper used by 21 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_4e93f9fc = require("@lib/event/helper_4e93f9fc")

--- Helper function.
local function helper_b1a111d2(arg0: s32, arg1: s32)
	local active_chr_no: s32 = 0
	event.SetMesPreset(0, 0)
	helper_4e93f9fc(arg0, 0, 0)
	active_chr_no = event.GetActiveChrNo() or active_chr_no
	if active_chr_no == 0 then
		event.MesMake_2(0, "ねぇねぇ、お兄ちゃんって、\n町の外に出かけてるんでしょ。")
	else
		event.MesMake_2(0, "ねぇねぇ、お姉ちゃんって、\n町の外に出かけてるんでしょ。")
	end
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "いいなぁ、あたしも\n連れて行ってよ。")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.Finish()
end

return helper_b1a111d2
