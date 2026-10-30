--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_b440871b()
	event.SndInitPort(5)
	event.SndInitPort(8)
	event.SndInitPort(1)
	event.DelExtMotion(0)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(16)
	event.DeleteChara(17)
	event.DeleteChara(18)
	event.DeleteChara(19)
	event.DeleteChara(8)
	event.DeleteChara(13)
	event.DelImg(0)
	event.DelImg(1)
	event.SetBitCtrl(1, 0)
end

return helper_b440871b
