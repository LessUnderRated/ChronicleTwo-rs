--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_7b1dcc03 = require("@lib/event/helper_7b1dcc03")
local open_message = require("@lib/event/open_message")

--- Helper function.
local function helper_9c9ed513(arg0: s32, arg1: s32)
	local stream_open_state: s32 = 0
	local stream_open_state_2: s32 = 0
	event.StreamOpen3(1, arg0)
	while true do
		stream_open_state = event.StreamOpenCheck() or stream_open_state
		if stream_open_state == 0 then
			break
		else
			vm.wait(1)
		end
	end
	event.StreamStandby(1)
	while true do
		stream_open_state_2 = event.StreamOpenCheck() or stream_open_state_2
		if stream_open_state_2 == 0 then
			break
		else
			vm.wait(2)
		end
	end
	event.MesMake_2(0, arg0)
	open_message(0, -1, 8, 0, 0)
	event.StreamPlay(1)
	helper_7b1dcc03(0, arg1)
	close_message(0)
	event.StreamClose(1)
	event.SetMesPos(0, 0)
end

return helper_9c9ed513
