--!strict
-- Shared event helper used by 4 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_15a714cb = require("@lib/event/helper_15a714cb")
local helper_2d4d5d3b = require("@lib/event/helper_2d4d5d3b")
local helper_39af59c5 = require("@lib/event/helper_39af59c5")
local helper_3fccffcb = require("@lib/event/helper_3fccffcb")
local helper_5a4034b0 = require("@lib/event/helper_5a4034b0")
local helper_6516b17d = require("@lib/event/helper_6516b17d")
local helper_680663c1 = require("@lib/event/helper_680663c1")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_ce85b54c = require("@lib/event/helper_ce85b54c")
local helper_d793ae41 = require("@lib/event/helper_d793ae41")
local helper_ed7641c7 = require("@lib/event/helper_ed7641c7")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local open_message = require("@lib/event/open_message")

--- Helper function.
local function helper_be90ad8d()
	local flags: s32 = 0
	local item_x: s32 = 0
	local item_y: s32 = 0
	local num_x: s32 = 0
	local num_y: s32 = 0
	local now_party_chara_id: s32 = 0
	local var6: any = 0
	local var8: s32 = 0
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		do
			local out1, out2, out3, out4, out5 = event.GetTboxParam()
			flags = out1 or flags
			item_x = out2 or item_x
			item_y = out3 or item_y
			num_x = out4 or num_x
			num_y = out5 or num_y
		end
		print("-----------------------------------------------------------------------------------------\n")
		print("tbox type = ", flags, "\n")
		print("item1 = ", item_x, ", ", num_x, "\n")
		print("item2 = ", item_y, ", ", num_y, "\n")
		print("-----------------------------------------------------------------------------------------\n")
		if bit32.band(flags, 256) ~= 0 then
			now_party_chara_id = event.GetNowPartyChara() or now_party_chara_id
			if now_party_chara_id == 9 then
				event.DngPause(513, 1)
				helper_ce85b54c()
				event.SetMesWindowMode(0, 1)
				event.SetMesShippo(0, 0)
				event.MesMake_2(0, "Was? Moment! Ich rieche etwas!\n      Vorsicht!\nIch glaub, es ist ein Mime.")
				at = 1
				helper_75684dd8(0, -1, 5, 0, 0)
				event.SetMesQuestionGyou(0, 1)
				event.SetMesShippo(0, 0)
				event.SetMesEtc(0, 0, 1)
				event.SetMesEtc(0, 1, 1)
				event.MesMake_2(0, "Immer noch [UNI00f6]ffnen?\nJa.\nNein.")
				open_message(0, -1, 5, 0, 0)
				at = 2
				var6 = helper_39af59c5(0, 2, 2, 0)
				event.SetMesQuestionGyou(0, 0)
				event.SetMesShippo(0, 1)
				event.SetMesEtc(0, 0, 0)
				event.SetMesEtc(0, 1, 0)
				event.DngPause(513, 0)
				if var6 == 1 then
				else
					return 0
				end
			end
			at = 3
			helper_5a4034b0(item_x, num_x)
			return 0
		end
		event.DngPause(513, 1)
		helper_ce85b54c()
		event.SetMesWindowMode(0, 1)
		event.SetMesQuestionGyou(0, 1)
		event.SetMesShippo(0, 0)
		event.SetMesEtc(0, 0, 1)
		event.SetMesEtc(0, 1, 1)
		if bit32.band(flags, 2) ~= 0 then
			at = 4
			local t0: s32
			t0, flags = helper_6516b17d(flags)
			if t0 ~= 0 then
				event.DngPause(513, 0)
				event.Finish()
				return 0
			end
		end
		if bit32.band(flags, 4) ~= 0 then
			at = 5
			local t1: s32
			t1, flags = helper_680663c1(flags)
			if t1 ~= 0 then
				event.DngPause(513, 0)
				event.Finish()
				return 0
			end
		end
		event.SetMesQuestionGyou(0, 0)
		event.SetMesShippo(0, 1)
		event.SetMesEtc(0, 0, 0)
		event.SetMesEtc(0, 1, 0)
		event.DngPause(513, 0)
		event.SetCrossfade(30)
		event.SetStatusbarShow(0, 0.16666667)
		event.CharaActive(0, 0)
		var8 = 0
		if bit32.band(flags, 512) ~= 0 then
			at = 6
			helper_3fccffcb(-1, -1)
			var8 = 1
		end
		if bit32.band(flags, 128) ~= 0 then
			at = 7
			helper_ed7641c7(item_x, num_x, item_y, num_y)
			var8 = 1
		end
		if var8 == 0 then
			at = 8
			helper_3fccffcb(item_x, num_x)
			var8 = 1
		end
		event.SetStatusbarShow(1, 0.16666667)
		return item_x
	end, function(received: { any })
		if at <= 2 then
			if at == 2 then
				var6 = received[1] :: number
			end
			if at <= 1 then
				helper_f018b3c0(0, -1, 5, 0, 0)
				var6 = helper_d793ae41(0, 2, 2, 0)
			end
			return 0
		end
		if at <= 3 then
			return 0
		end
		if at <= 4 then
			if at == 4 then
				local _ = received[1] :: number
				flags = received[2] :: number
			end
			return 0
		end
		if at <= 5 then
			if at == 5 then
				local _ = received[1] :: number
				flags = received[2] :: number
			end
			return 0
		end
		if at <= 8 then
			if at <= 6 then
				var8 = 1
				helper_2d4d5d3b(item_x, num_x, item_y, num_y)
			end
			if at <= 7 then
				var8 = 1
				helper_15a714cb(item_x, num_x)
			end
			local _ = var8 == 0
			var8 = 1
			return item_x
		end
		return nil
	end)
end

return helper_be90ad8d
