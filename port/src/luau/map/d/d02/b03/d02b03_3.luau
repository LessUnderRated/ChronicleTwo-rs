--!strict
-- map/d/d02/b03/d02b03_3.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_a2e9bfec = require("@lib/event/helper_a2e9bfec")
local helper_b043e223 = require("@lib/event/helper_b043e223")
local helper_e6904d46 = require("@lib/event/helper_e6904d46")
local show_message = require("@lib/event/show_message")

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	event.MesMake_2(0, "どどーん")
	show_message(0, -1, 8, 0, 0)
end

--- Event 200, which map data, a script or the engine runs by number.
function script.event_200()
	event.SetCharaPos(0, -124.13, 782.88, -644.77)
	event.SetFadeIn(30)
	event.ResetCamera(0)
end

--- Event 400, which map data, a script or the engine runs by number.
function script.event_400()
	local var0: s32 = 0
	local flag: s32 = 0
	local item: s32 = 0
	print("event400\n")
	var0 = event.GetEventData_2(6) or var0
	if var0 == 1 then
		flag = event.GetFlag(24) or flag
		if flag ~= 0 then
		else
			flag = event.GetFlag(23) or flag
			if flag ~= 0 then
				event.SetMesShippo(0, 0)
				event.MesMake_2(
					0,
					"Da w[UNI00e4]chst ein gro[UNI00df]er Spross.\nAber irgendwas fehlt noch.<page>Etwas Wachstumsf[UNI00f6]rderndes ...?\n(Men[UNI00fc] [UNI00f6]ffnen mit (#).)"
				)
				show_message(0, -1, 5, 0, 0)
				event.SetMesShippo(0, 1)
			else
				event.SetMesShippo(0, 0)
				event.MesMake_2(
					0,
					"Da ist ein kleiner Sumpf. Er hat\netwas Geheimnisvolles ...\n(Men[UNI00fc] [UNI00f6]ffnen mit (#).)"
				)
				show_message(0, -1, 5, 0, 0)
				event.SetMesShippo(0, 1)
			end
		end
	end
	if var0 == 2 then
		flag = event.GetFlag(24) or flag
		if flag ~= 0 then
		else
			flag = event.GetFlag(23) or flag
			if flag ~= 0 then
				event.GotoUseItem(356)
				vm.wait(3)
				item = vmhost.used_item() or item
				if item == 356 then
					helper_e6904d46()
					event.SetFlag(24, 1)
				else
					helper_b043e223()
				end
			else
				event.GotoUseItem(361)
				vm.wait(6)
				item = vmhost.used_item() or item
				if item == 361 then
					helper_a2e9bfec()
					event.SetFlag(23, 1)
				else
					helper_b043e223()
				end
			end
		end
	end
end

return script
