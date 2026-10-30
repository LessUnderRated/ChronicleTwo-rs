--!strict
-- Shared event helper used by 30 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_40e84721(id: s32, enable: s32)
	local chara_id: s32 = 0
	chara_id = event.GetCharaId(id) or chara_id
	event.CharaActive(enable, chara_id)
end

return helper_40e84721
