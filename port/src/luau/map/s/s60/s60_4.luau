--!strict
-- map/s/s60/s60_4.stb: event script, translated from the NTSC-timed bytecode by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_581cb30c = require("@lib/event/helper_581cb30c")
local helper_c3ae7eec = require("@lib/event/helper_c3ae7eec")
local wait_frames = require("@lib/event/wait_frames")

--- Helper function.
local function helper_be7c()
	local block: s32 = 0
	event.SetFadeOut(0)
	event.SoundAllStop()
	wait_frames(6)
	event.SetFadeIn(0)
	event.AssignStack(5)
	event.ClearStack(5)
	event.SetMovieCc(0, 0)
	event.SetMovieCc(1, 0, 300, "Urr[UNI00e0], urr[UNI00e0]!!", 150)
	event.SetMovieCc(1, 1, 600, "Hip, hip, hip, Urr[UNI00e0]!!", 150)
	event.SetMovieCc(1, 2, 900, "Okay, basta cos[UNI00ec]!", 150)
	event.SetMovieCc(1, 3, 1200, "Urr[UNI00e0]!! Urr[UNI00e0]!! ", 150)
	event.SetMovieCc(
		1,
		4,
		1500,
		"Da oggi, la Ferrovia Carbonero inizier[UNI00e0]\na viaggiare attraverso tutta la regione.",
		150
	)
	event.SetMovieCc(
		1,
		5,
		1800,
		"Mi auguro che il mondo intero segua il nostro esempio\ne ricominci a svilupparsi.",
		150
	)
	event.SetMovieCc(1, 6, 2100, "Wow, il sindaco sembra cos[UNI00ec] fiero adesso!", 150)
	event.SetMovieCc(1, 7, 2400, "Gi[UNI00e0], proprio cos[UNI00ec].", 150)
	event.SetMovieCc(
		1,
		8,
		2700,
		"Sebbene ci attendano ancora innumerevoli sacrifici,\nsono certo che, con il contributo di tutti,\nriusciremo ad affrontarli con successo!",
		150
	)
	event.SetMovieCc(1, 9, 3000, "Hip, hip, hip, Urr[UNI00e0]!!", 150)
	event.SetMovieCc(
		1,
		10,
		3300,
		"Voi tutti, valorosi cittadini di Vallecatini, avete\nsuperato tante bufere e resistito a tante avversit[UNI00e0],\nda meritare pienamente la vittoria di oggi!!",
		150
	)
	event.SetMovieCc(1, 11, 3600, "Urr[UNI00e0] per Vallecatini!! Urr[UNI00e0]!!", 150)
	event.SetMovieCc(1, 12, 3900, "Un tempo, il nostro mondo era ammantato dall'oscurit[UNI00e0].", 150)
	event.SetMovieCc(1, 13, 4200, "La gente dell'epoca lott[UNI00f2] per rivendicare il proprio futuro.", 150)
	event.SetMovieCc(
		1,
		14,
		4500,
		"Ma la storia di questa battaglia non fu mai tramandata\nalle generazioni successive.",
		150
	)
	event.SetMovieCc(
		1,
		15,
		4800,
		"Quest'incredibile avventura ha mai avuto luogo veramente?\nNessuno lo pu[UNI00f2] dire con certezza.",
		150
	)
	event.SetMovieCc(
		1,
		16,
		5100,
		"Ma...\nSe poteste rivolgervi a un cielo notturno e parlare alla luna,\nlei vi racconterebbe sicuramente tutto della nostra bizzarra avventura.",
		150
	)
	event.SetMovieCc(0, 1)
	event.LoadMovie(5, "movie/end2.mp4")
	vm.wait(2)
	event.SetMovieCc(0, 0)
	block = event.LoadImg_4(5, "textures/event/e700/e736/e73601.json", 0) or block
	event.SpriteInit(0)
	event.SpriteSetType(0, 0)
	event.SpriteSetColor(0, 0, 0, 0, 128)
	event.SpriteSetPutsize(0, 512, 448)
	event.SpriteSetPos(0, 256, 224)
	event.SpriteSetDraw(0, 1)
	event.SpriteInit(1)
	event.SpriteSetType(1, 0)
	event.SpriteSetTexture(1, "e73601", block)
	event.SpriteSetColor(1, 128, 128, 128, 128)
	event.SpriteSetUvsize(1, 0, 0, 512, 448)
	event.SpriteSetPutsize(1, 512, 448)
	event.SpriteSetPos(1, 256, 224)
	event.SpriteSetDraw(1, 1)
	event.SetFadeIn(60)
	wait_frames(90)
	while true do
		if helper_581cb30c(0) ~= 0 then
			break
		else
			vm.wait(4)
		end
	end
	event.SetFadeOut(30)
	wait_frames(30)
end

local script: { [any]: (...any) -> ...any } = {}

--- Runs when the script is loaded, before any program.
function script.setup() end

--- Event 99, which map data, a script or the engine runs by number.
-- Defined empty, so the engine runs this instead of its default.
function script.event_99() end

--- The event the engine runs on entering a town or interior, jumping to a map and leaving it, and the one an omitted event number means.
-- Defined empty, so the engine runs this instead of its default.
function script.default_event() end

--- The event the town walk runs when the square button is pressed, after reloading the map script.
function script.key_open()
	local at: number = 0
	return vm.guard(function()
		event.SetTime(22.0)
		event.SetTimeStepEnable(0)
		at = 1
		wait_frames(30)
		at = 2
		helper_c3ae7eec()
		return
	end, function(received: { any })
		if at <= 2 then
			if at <= 1 then
				at = 2
				helper_c3ae7eec()
				return vm.continue_with(function()
					return
				end)
			end
			return 0
		end
		return nil
	end)
end

--- Event 500, which map data, a script or the engine runs by number.
function script.event_500()
	helper_be7c()
	event.SetExitFlag(1)
end

return script
