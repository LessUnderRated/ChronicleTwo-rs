--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

local set_window_mode = require("@lib/event/set_window_mode")
local show_message = require("@lib/event/show_message")

--- Helper function.
local function helper_db96f504()
	local var0: s32 = 0
	local now_party_chara_id: s32 = 0
	local var2: s32 = 0
	local var3: s32 = 0
	event.SetMesPreset(1, 4)
	set_window_mode(1, 4)
	event.MesSetBuff(1, 1, 1)
	now_party_chara_id = event.GetNowPartyChara() or now_party_chara_id
	if now_party_chara_id < 0 then
		var0 = 52
	else
		var2 = event.GetPartyCharaMesNo_3(now_party_chara_id, 0) or var2
		event.SetMesItemDirect(1, 2, var2)
		var3 = event.GetNpcStatus(now_party_chara_id) or var3
		if bit32.band(var3, 4) ~= 0 then
			var0 = 54
		else
			var0 = 53
		end
	end
	show_message(1, var0, 8, 0, 0)
	event.MesSetBuff(1, 1, 0)
end

return helper_db96f504
