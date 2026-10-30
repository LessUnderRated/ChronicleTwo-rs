--!strict
-- map/s/s51/s51_2.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_0660a773 = require("@lib/event/helper_0660a773")
local helper_2a1e9b48 = require("@lib/event/helper_2a1e9b48")
local helper_75684dd8 = require("@lib/event/helper_75684dd8")
local helper_bce61202 = require("@lib/event/helper_bce61202")
local wait_frames = require("@lib/event/wait_frames")

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
-- Defined empty, so the engine runs this instead of its default.
function script.key_open() end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_bce61202()
	event.LoadMonsterFile(523, 1)
	event.AutoSetMonster(523, -382.5, -0.2, 120.2, 0.0, 1.61, 0.0)
	event.AutoSetMonster(523, -428.0, -0.2, 202.7, 0.0, 1.71, 0.0)
	event.AutoSetMonster(523, -452.5, -0.2, 287.0, 0.0, 1.98, 0.0)
	event.AutoSetMonster(523, -324.2, -0.2, 260.5, 0.0, 2.34, 0.0)
	vm.wait(2)
	event.DngPause(16385, 1)
	event.SetFadeIn(20)
	event.SetMesWindowMode(0, 4)
	event.SetMesDrawspeed(0, 1)
	event.MesMake_2(0, "Viser : (X)\nParer : [r1]\nAttaquer : (O)\nMagie : [l1]+(O)")
	helper_75684dd8(0, -1, 8, 0, 0)
	event.DngPause(1, 0)
	event.Finish()
end

--- Event 510, which map data, a script or the engine runs by number.
function script.event_510()
	local at: number = 0
	return vm.guard(function()
		event.Initialize()
		event.ActchrSetDefMotion(0)
		event.SetFadeOut(30)
		at = 1
		wait_frames(30)
		event.DelMonster(-1)
		at = 2
		helper_0660a773()
		event.CheckEquepChange(1)
		event.SetActiveChrNo(0)
		event.JoinPartyMember(0, 1)
		event.JoinPartyMember(1, 0)
		event.AddItem(353)
		event.AddItem(311)
		event.AddItem(268, 5)
		event.AddItem(294, 3)
		event.AddItem(298, 3)
		event.AddItem(425, 3)
		event.AddItem(275, 2)
		event.SetFlag(54, 1)
		event.BgmLoadCancel()
		event.GotoEdit(19, 151)
		at = 3
		vm.wait(3)
		return
	end, function(received: { any })
		if at <= 3 then
			if at <= 1 then
				at = 2
				helper_0660a773()
				return vm.continue_with(function()
					event.CheckEquepChange(1)
					event.SetActiveChrNo(0)
					event.JoinPartyMember(0, 1)
					event.JoinPartyMember(1, 0)
					event.AddItem(353)
					event.AddItem(311)
					event.AddItem(268, 5)
					event.AddItem(294, 3)
					event.AddItem(298, 3)
					event.AddItem(425, 3)
					event.AddItem(275, 2)
					event.SetFlag(54, 1)
					event.BgmLoadCancel()
					event.GotoEdit(19, 151)
					at = 3
					vm.wait(3)
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 1200, which map data, a script or the engine runs by number.
function script.event_1200()
	helper_2a1e9b48(0)
end

--- Event 10500, which map data, a script or the engine runs by number.
function script.event_10500()
	event.AddItem(110)
	event.AddItem(127)
	event.AddItem(133)
	event.AddItem(266)
	event.SetCharaEquip(1, 110)
	event.SetCharaEquip(1, 127)
	event.SetCharaEquip(1, 133)
	event.SetCharaEquip(1, 266)
	event.DngSetupMainUnit(1)
	helper_bce61202()
	event.DngPause(16384, 1)
	event.LoadMonsterFile(523, 1)
	event.AutoSetMonster(523, -382.5, -0.2, 120.2, 0.0, 1.61, 0.0)
	event.AutoSetMonster(523, -428.0, -0.2, 202.7, 0.0, 1.71, 0.0)
	event.AutoSetMonster(523, -452.5, -0.2, 287.0, 0.0, 1.98, 0.0)
	event.AutoSetMonster(523, -324.2, -0.2, 260.5, 0.0, 2.34, 0.0)
	vm.wait(2)
	event.SetFadeIn(20)
	event.Finish()
end

return script
