--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_fd981dba()
	event.SndInitPort(5)
	event.SndInitPort(8)
	event.SndInitPort(1)
	event.DelExtMotion(0)
	event.DeleteChara(25)
	event.DeleteChara(26)
	event.DeleteChara(27)
	event.DeleteChara(28)
	event.DeleteChara(29)
	event.DeleteChara(30)
	event.DeleteChara(24)
	event.DeleteChara(8)
	event.SetBitCtrl(1, 0)
end

return helper_fd981dba
