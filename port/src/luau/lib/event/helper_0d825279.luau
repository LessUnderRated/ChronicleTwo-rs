--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_0d825279(arg0: s32)
	local var1: s32 = 0
	if arg0 ~= 0 then
		var1 = 0
		while var1 < 10 do
			event.CharaActive(1, 42 + var1)
			event.SetMotion(42 + var1, "水晶にお辞儀", 4)
			var1 = var1 + 1
		end
		event.SetCharaPos(42, 112.7, 453.82, 410.32)
		event.SetCharaRot(42, 0.0, -2.4, 0.0)
		event.SetCharaPos(43, -128.56, 453.82, 417.45)
		event.SetCharaRot(43, 0.0, 2.37, 0.0)
		event.SetCharaPos(44, -316.94, 453.82, 298.96)
		event.SetCharaRot(44, 0.0, 2.4, 0.0)
		event.SetCharaPos(45, -415.03, 453.82, 114.12)
		event.SetCharaRot(45, 0.0, 1.68, 0.0)
		event.SetCharaPos(46, -428.97, 453.82, -76.2)
		event.SetCharaRot(46, 0.0, 1.32, 0.0)
		event.SetCharaPos(47, 421.58, 453.82, 122.95)
		event.SetCharaRot(47, 0.0, -1.8, 0.0)
		event.SetCharaPos(48, 422.72, 453.82, -107.04)
		event.SetCharaRot(48, 0.0, -1.32, 0.0)
		event.SetCharaPos(49, -303.33, 453.82, -301.24)
		event.SetCharaRot(49, 0.0, 0.72, 0.0)
		event.SetCharaPos(50, 123.16, 453.82, -418.07)
		event.SetCharaRot(50, 0.0, -0.24, 0.0)
		event.SetCharaPos(51, -108.32, 453.82, -423.81)
		event.SetCharaRot(51, 0.0, 0.24, 0.0)
	else
		var1 = 0
		while var1 < 10 do
			event.CharaActive(0, 42 + var1)
			var1 = var1 + 1
		end
	end
end

return helper_0d825279
