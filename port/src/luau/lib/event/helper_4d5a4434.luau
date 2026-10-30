--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_4d5a4434()
	event.ObjsSetPos(2, 0.0, -24.0, -1000.0)
	event.ObjsSetRot(2, 0.0, 0.0, 0.0)
	event.EohSyncObj_3(10, "p01_train01", "train06-m0")
	event.ObjsInit(10)
	event.ObjsSyncObj(10, 10)
	event.EohSyncObj_3(11, "p01_train01", "train06-m1")
	event.ObjsInit(11)
	event.ObjsSyncObj(11, 11)
	event.EohSyncObj_3(12, "p01_train01", "train05-m10")
	event.ObjsInit(12)
	event.ObjsSyncObj(12, 12)
	event.EohSyncObj_3(13, "p01_train01", "train05-m11")
	event.ObjsInit(13)
	event.ObjsSyncObj(13, 13)
	event.EohSyncObj_3(14, "p01_train01", "train05-m12")
	event.ObjsInit(14)
	event.ObjsSyncObj(14, 14)
	event.EohSyncObj_3(15, "p01_train01", "train05-m13")
	event.ObjsInit(15)
	event.ObjsSyncObj(15, 15)
	event.EohSyncObj_3(16, "p01_train01", "train05-m14")
	event.ObjsInit(16)
	event.ObjsSyncObj(16, 16)
	event.EohSyncObj_3(17, "p01_train01", "train05-m15")
	event.ObjsInit(17)
	event.ObjsSyncObj(17, 17)
	event.EohSyncObj_3(18, "p01_train01", "train05-m16")
	event.ObjsInit(18)
	event.ObjsSyncObj(18, 18)
	event.EohSyncObj_3(19, "p01_train01", "train05-m17")
	event.ObjsInit(19)
	event.ObjsSyncObj(19, 19)
	event.EohSyncObj_3(20, "p01_train01", "train05-m18")
	event.ObjsInit(20)
	event.ObjsSyncObj(20, 20)
	event.EohSyncObj_3(21, "p01_train01", "train05-m19")
	event.ObjsInit(21)
	event.ObjsSyncObj(21, 21)
	for var0 = 0, 11 do
		event.ObjsRotation(10 + var0, 0.1, 0.0, 0.0, -1)
	end
end

return helper_4d5a4434
