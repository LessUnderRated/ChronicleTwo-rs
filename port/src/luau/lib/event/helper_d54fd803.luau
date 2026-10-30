--!strict
-- Shared event helper used by 19 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_9cc4383b = require("@lib/event/helper_9cc4383b")
local helper_c8484b43 = require("@lib/event/helper_c8484b43")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_d54fd803(arg0: s32, arg1: s32)
	local var2: s32 = 0
	event.SetMesPreset(0, 0)
	helper_c8484b43(arg0, 0, 0)
	var2 = event.GetCnt(11) or var2
	if var2 < 1 then
		event.MesMake_2(0, "Oh! You found me!<page>But can you find me again?")
		helper_0ffc2526(0, -1, arg0, arg1, 0)
		event.SetMotion(arg0, "立ち")
		event.Finish()
		event.SetCnt(11, var2 + 1)
		event.SetFadeOut(30)
		wait_frames(30)
		event.SetAi(1, arg0)
		event.CharaActive(0, arg0)
		event.DeleteVillager(arg0)
		event.SetFadeIn(30)
		return
	end
	event.MesMake_2(
		0,
		"Oh! You found me...<page>I'm getting a bit fed up with this now.<page>Hiding is actually\nreally boring.<page>Oh well! Let's go off on\nour adventure then!"
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	helper_9cc4383b()
	event.Finish()
	event.SetQuestEtc(1, 18, 1)
end

return helper_d54fd803
