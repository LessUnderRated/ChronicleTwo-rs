--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_7f487db5(arg0: s32)
	event.FuncPointShow("", "rev_floor", arg0)
	if arg0 == 1 then
		event.AssignStack(4)
		event.ClearStack(4)
		event.LoadChara(4, "event/d03/p00_26a.gltf", "info", 8)
		event.CharaActive(1, 8)
		event.SetCharaPos(8, -1594.13, 282.8, -492.73)
		event.SetCharaRot(8, 0.0, 0.89, 0.0)
		event.SetMotion(8, "立ち", 4)
		event.SetStatus(1, 8, 8)
	else
		event.DeleteChara(8)
	end
end

return helper_7f487db5
