--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_13169207(enable: s32)
	local chara_id: s32 = 0
	chara_id = event.GetCharaId(200) or chara_id
	event.CharaActive(enable, chara_id)
end

return helper_13169207
