--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_937d87bc(se_id: s32)
	event.CmrsSetPos(3.45, 77.44, 1389.54)
	event.CmrsSetRef(3.0, 63.96, 1261.17)
	for var1 = 0, 11 do
		event.ObjsRotation(10 + var1, 0.03, 0.0, 0.0, -1)
	end
	event.SndSePlay(se_id, 15)
	event.ObjsSetPos(2, 0.0, -24.0, 500.0)
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
	event.CharaActive(1, 10)
	event.SetCharaPos(10, 1.55, 41.98, 824.64)
	event.SetMotion(10, "ｴﾌｪｸﾄ_列車ライトピカ！！", 6)
	wait_frames(30)
	event.CharaActive(0, 10)
	event.ObjsMove2(2, 0.0, -24.0, 5000.0, 360, 1, 0.7)
	event.SndSePlay(se_id, 16)
	event.CmrsSetPos(-423.7, 77.44, 613.24)
	event.CmrsSetRef(-149.56, 63.96, 588.35)
	wait_frames(75)
	event.CmrsSetPos(3.45, 77.44, 1389.54)
	event.CmrsSetRef(3.0, 63.96, 1261.17)
	event.CmrsMove2(4.3, 77.44, 1631.73, 3.0, 63.96, 1261.17, 75, 2, 0.2)
	wait_frames(75)
	event.CmrsSetPos(-741.43, 330.34, 349.51)
	event.CmrsSetRef(-180.96, 187.05, 261.6)
	event.CmrsMove2(-741.43, 330.34, 349.51, -335.86, 187.05, 767.89, 90, 2, 0.4)
	wait_frames(150)
	event.CmrsInit()
	event.CmrsFadeDelay(135)
	event.CmrsFadeOut(30, 0.0, 0.0)
	event.CmrsMove2(-1416.81, 608.29, -321.97, -333.28, 187.05, 759.45, 120, 0, 0.4)
	wait_frames(165)
	event.CmrsInit()
	wait_frames(180)
end

return helper_937d87bc
