--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_aaaef248()
	event.Initialize()
	event.SetCharaPos(0, -380.0, 104.0, 0.0)
	event.SetCharaRot(0, 0.0, 1.57, 0.0)
	event.SetMotion(0, "立ち", 4)
	event.CharaNormalDrive(0)
	event.CharaResetDa(0)
	event.SetCameraRef(-380.0, 134.0, 0.0)
	event.SetCameraPos(-260.0, 134.0, 0.0)
	event.SetFadeIn(30)
end

return helper_aaaef248
