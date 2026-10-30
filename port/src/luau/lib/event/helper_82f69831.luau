--!strict
-- Shared event helper used by 6 scripts, translated by tools/luau/stb2luau.

--- Helper function.
local function helper_82f69831()
	local flag: s32 = 0
	local var1: s32 = 0
	flag = event.GetFlag(500) or flag
	if flag == 0 then
		return
	end
	event.AssignStack(4)
	event.ClearStack(4)
	var1 = event.GetChapter() or var1
	if var1 ~= 6 and var1 ~= 7 then
		event.LoadChara(4, "chara/p01_03a.gltf", "info", 8)
		event.CharaActive(8)
		event.SetCharaPos(8, 2340.0, 0.0, 1645.0)
		event.SetCharaRot(8, 0.0, 3.14, 0.0)
		event.SetCharaNo(8, 1)
		event.RegisterVillager(8, 1)
	else
		event.LoadChara(4, "chara/p00_31a.gltf", "info", 8)
		event.CharaActive(8)
		event.SetCharaPos(8, 2340.0, 0.0, 1645.0)
		event.SetCharaRot(8, 0.0, 3.14, 0.0)
		event.SetCharaNo(8, 301)
		event.RegisterVillager(8, 301)
	end
end

return helper_82f69831
