--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_6b4ee5b8()
	event.Initialize()
	event.SetMesWindowMode(0, 0)
	event.SetFadeIn(30)
	event.MesMake_2(0, "Ｅ３５６　～ギルトーニ撃退・クレストとの別れ～(つづき)")
	helper_75684dd8(0, -1, 5, 0, 0)
	event.SetFadeOut(30)
	wait_frames(30)
	event.Finish()
end

return helper_6b4ee5b8
