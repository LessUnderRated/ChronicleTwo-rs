--!strict
-- Shared event helper used by 2 scripts, translated by tools/luau/stb2luau.

local helper_0ffc2526 = require("@lib/event/helper_0ffc2526")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_fb2b6b13 = require("@lib/event/helper_fb2b6b13")

--- Helper function.
local function helper_aea17467(arg0: s32, arg1: s32)
	event.SetMesPreset(0, 0)
	helper_fb2b6b13(arg1, arg0)
	event.MesMake_2(0, "Grumble, grumble...")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"What do you mean, what\nam I muttering about?<page>I'm trying to remember the\ncombination for the safe."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(
		0,
		"What do you mean,\nwhat safe?<page>The safe hidden behind the\npicture in my office of course..."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	helper_fb2b6b13(arg0, arg1)
	event.SetMotion(arg0, "会話")
	event.MesMake_2(
		0,
		"Ah, you gave me a fright!<page>Oh, blast!<page>I've gone and let out\nmy biggest secret!<page>Oh well, you know now.<page>Maybe you can give me a\nhand trying to work it out."
	)
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "I've got a big problem\nbecause I can't remember the\ncombination for the safe.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "It's a 4-digit number so I used\nClaire's birth date thinking\nthat I'd never forget it.")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.MesMake_2(0, "How could I possibly forget...<page>What a terrible father I am!")
	helper_0ffc2526(0, -1, arg0, arg1, 0)
	event.SetMotion(arg0, "立ち")
	event.SetMesPreset(0, 4)
	event.SetMesWindowMode(0, 4)
	event.MesMake_2(
		0,
		"[(!)]It looks like the Mayor's very troubled.\n   Listen to what he says about Claire's\n   birthday and figure out the combination."
	)
	helper_75684dd8(0, -1, 8, 0, 0)
	event.SetMesPreset(0, 0)
	event.Finish()
	event.SetQuestEtc(0, 12, 1)
end

return helper_aea17467
