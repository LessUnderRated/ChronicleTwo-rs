--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local helper_08ac1dd6 = require("@lib/event/helper_08ac1dd6")
local helper_18c31a0e = require("@lib/event/helper_18c31a0e")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_24692f72 = require("@lib/event/helper_24692f72")
local helper_28d4ec9f = require("@lib/event/helper_28d4ec9f")
local helper_4116e6bb = require("@lib/event/helper_4116e6bb")
local helper_72fcbec1 = require("@lib/event/helper_72fcbec1")
local helper_86ac6534 = require("@lib/event/helper_86ac6534")
local helper_8cd371d7 = require("@lib/event/helper_8cd371d7")
local helper_937d87bc = require("@lib/event/helper_937d87bc")
local helper_d77001f9 = require("@lib/event/helper_d77001f9")
local helper_edf10af6 = require("@lib/event/helper_edf10af6")
local helper_fee84847 = require("@lib/event/helper_fee84847")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_bac19723()
	local var0: s32 = 0
	local pos_x: f32 = 0
	local pos_y: f32 = 0
	local pos_z: f32 = 0
	local at: number = 0
	vm.section(function()
		at = 1
		vm.entry(1)
		event.SetFlag(202, 1)
		event.Initialize()
		var0 = event.SndLoadSound_2(1837) or var0
		helper_72fcbec1()
		event.EohSetFootSoundId(0, 0)
		event.StopBgm(0)
		event.InitDramaScene()
		event.SetFadeIn(30)
		event.CharaActive(1, 0)
		event.CmrsSetPos(-339.31, 136.54, 364.85)
		event.CmrsSetRef(-238.55, 35.08, 513.89)
		event.ObjsSetPos(0, -198.33, 13.59, 420.19)
		event.ObjsSetRot(0, 0.0, -0.35, 0.0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "ぼうぜん顔")
		event.ObjsTexAnime(0, 1, "つうじょう目パチ")
		event.ObjsSetMotion(0, "歩き", 4, -1.0, 1)
		event.ObjsInitPas(0)
		event.ObjsSetPasFrm(0, 160)
		event.ObjsAddPas(0, -198.33, 13.59, 420.19)
		event.ObjsAddPas(0, -203.12, 13.59, 502.05)
		event.ObjsAddPas(0, -216.28, 13.59, 545.08)
		event.ObjsAddPas(0, -238.62, 13.59, 586.39)
		event.ObjsStartPas(0)
		event.EohSetFootSoundId(0, 15)
		at = 2
		wait_frames(30)
		event.EohSetFootSoundId(0, 2)
		at = 3
		wait_frames(90)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.CmrsSetPos(-157.69, 69.09, 657.85)
		event.CmrsSetRef(-309.71, 39.39, 635.31)
		event.ObjsSetPos(0, -218.73, 13.59, 644.79)
		event.ObjsSetRot(0, 0.0, -1.67, 0.0)
		event.ObjsMove(0, -301.77, 13.77, 637.45, 60)
		event.CmrsInitPas()
		event.CmrsSetPasFrm(150)
		event.CmrsAddPas(-157.69, 69.09, 657.85, -309.71, 39.39, 635.31)
		event.CmrsAddPas(-182.29, 46.57, 654.2, -309.71, 39.39, 635.31)
		event.CmrsAddPas(-226.21, 39.3, 647.69, -309.71, 39.39, 635.31)
		event.CmrsStartPas()
		event.ObjsMotionDelay(0, 60)
		event.ObjsSetMotion(0, "立ち", 0)
		at = 4
		wait_frames(150)
		at = 5
		helper_4116e6bb(2020010)
		event.CmrsSetPos(-325.02, 31.34, 616.64)
		event.CmrsSetRef(-305.34, 35.79, 635.58)
		event.ObjsSetMotion(0, "上見立ち", 4, -1.0, 1)
		at = 6
		helper_4116e6bb(2020020)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "機関")
		event.CmrsSetPos(-333.76, 40.57, 633.22)
		event.CmrsSetRef(-302.99, 37.72, 637.65)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "通常目～うれし目")
		event.ObjsTexAnime(0, 1, "半口～うれし開き")
		at = 7
		wait_frames(15)
		event.ObjsTexAnime(0, 1, "きらきら目")
		event.CmrsMove2(-326.11, 40.57, 634.32, -302.99, 37.72, 637.65, 90, 2, 0.4)
		at = 8
		helper_4116e6bb(2020030)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "まえ向き～左むき")
		event.SndSePlay(var0, 6)
		event.ObjsSetMotion(0, "振り返る", 6, -1.0, 1)
		at = 9
		wait_frames(10)
		event.CmrsInit()
		helper_08ac1dd6(2200.0, 220)
		event.CmrsSetPos(-331.99, 42.11, 682.27)
		event.CmrsSetRef(-281.67, 40.37, 620.78)
		event.SndSePlay(var0, 8)
		at = 10
		wait_frames(50)
		event.ObjsSetMotion(0, "振り返るL", 6, -1.0, 1)
		at = 11
		wait_frames(70)
		event.SndSePlay(var0, 7)
		event.ObjsSetMotion(0, "列車を見る", 6, -1.0, 1)
		event.ObjsNextMotion(0, "列車を見るL", 0)
		at = 12
		wait_frames(120)
		event.CmrsSetPos(-704.28, 74.53, 644.02)
		event.CmrsSetRef(-229.0, 60.03, 630.45)
		event.EohSetShadow(0, 0)
		event.EohSetShadow(1, 0)
		at = 13
		wait_frames(60)
		event.CmrsSetPos(-272.98, 32.08, 611.38)
		event.CmrsSetRef(-292.01, 32.94, 630.57)
		event.ObjsSetRot(0, 0.0, 1.93, 0.0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "おどろき顔")
		event.ObjsTexAnime(0, 1, "おどろき目パチ")
		event.ObjsSetMotion(0, "キョロキョロ", 4, -1.0, 1)
		at = 14
		wait_frames(40)
		event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
		event.CharaActive(1, 9)
		event.CmrsSetPos(-344.7, 43.98, 674.78)
		event.CmrsSetRef(-270.62, 44.19, 558.35)
		event.ObjsSetRot(0, 0.0, 1.69, 0.0)
		event.ObjsSetPos(1, -57.93, 11.86, 130.81)
		event.ObjsSetRot(1, 0.0, -1.55, 0.0)
		do
			local out1, out2, out3 = event.EohGetPos(3)
			pos_x = out1 or pos_x
			pos_y = out2 or pos_y
			pos_z = out3 or pos_z
		end
		pos_z = vm.f32(pos_z + vm.f32(-517.642))
		event.ObjsSetPos(4, pos_x - 50.0, pos_y, pos_z)
		event.ObjsSetRot(4, 0.0, 0.0, 0.08726647)
		event.SndSePlay(var0, 9)
		event.ObjsRotation(8, 0.0, -1.57, 0.0, 30)
		event.ObjsRotation(7, 0.0, 1.57, 0.0, 30)
		event.ObjsRotation(24, 0.0, -1.57, 0.0, 30)
		event.ObjsRotation(23, 0.0, 1.57, 0.0, 30)
		event.ObjsSetMotion(0, "左を見る", 6)
		event.ObjsNextMotion(0, "左を見るL", 0)
		at = 15
		wait_frames(30)
		at = 16
		wait_frames(30)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsInitPas(1)
		event.ObjsSetPasFrm(1, 15)
		event.ObjsAddPas(1, -58.2, 12.83, 120.56)
		event.ObjsAddPas(1, -71.49, 12.83, 120.23)
		event.ObjsStartPas(1)
		at = 17
		wait_frames(15)
		event.ObjsSetPos(4, pos_x, pos_y, pos_z)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.ObjsSetRot(7, 0.0, 0.0, 0.0)
		event.ObjsSetRot(8, 0.0, 0.0, 0.0)
		event.ObjsSetRot(24, 0.0, 0.0, 0.0)
		event.ObjsSetRot(23, 0.0, 0.0, 0.0)
		event.CharaActive(1, 0)
		event.CharaActive(1, 9)
		event.CmrsSetPos(-429.29, 148.18, 653.31)
		event.CmrsSetRef(-322.93, 59.6, 619.28)
		event.ObjsSetRot(0, 0.0, 2.65, 0.0)
		event.ObjsSetPos(1, -223.19, 13.78, 510.23)
		event.ObjsSetRot(1, 0.0, -0.5, 0.0)
		event.EohSetFootSoundId(1, 2)
		event.ObjsSetMotion(0, "立ち", 4, -1.0, 1)
		event.ObjsSetMotion(1, "歩き", 4)
		event.ObjsMove(1, -268.59, 13.78, 585.68, 75)
		at = 18
		wait_frames(75)
		event.ObjsSetMotion(1, "立ち", 4)
		event.CmrsSetPos(-291.41, 39.19, 607.31)
		event.CmrsSetRef(-299.71, 35.93, 634.94)
		event.EohSetShadow(0, 1)
		event.EohSetShadow(1, 1)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "デフォルト顔")
		event.ObjsTexAnime(0, 1, "きらきら目")
		event.ObjsSetMotion(0, "会話", 6)
		event.ObjsNextMotion(0, "立ち", 0)
		event.SetPakuAnim(0, "通常口パク")
		at = 19
		helper_4116e6bb(2020040)
		event.ResetPakuAnim()
		at = 20
		wait_objects(0)
		event.CmrsSetPos(-315.4, 36.86, 675.88)
		event.CmrsSetRef(-291.69, 35.93, 632.9)
		event.ObjsSetRot(0, 0.0, 2.29, 0.0)
		event.ObjsSetPos(1, -271.9, 13.78, 616.69)
		event.ObjsSetRot(1, 0.0, -0.98, 0.0)
		event.ObjsTexAnime(1, 0)
		event.ObjsTexAnime(1, 1, "わらい顔")
		event.ObjsTexAnime(1, 1, "通常目パチ")
		event.ObjsSetMotion(1, "腰に手", 6)
		event.ObjsNextMotion(1, "腰に手L", 0)
		event.SetPakuAnim(1, "通常口パク")
		at = 21
		helper_4116e6bb(2020050)
		event.ResetPakuAnim()
		event.ObjsSetMotion(1, "乗れ", 6)
		event.ObjsNextMotion(1, "乗れL", 0)
		event.SetPakuAnim(1, "通常口パク")
		at = 22
		helper_4116e6bb(2020060)
		event.ResetPakuAnim()
		at = 23
		wait_objects(1)
		event.CmrsSetPos(-264.17, 27.45, 662.14)
		event.CmrsSetRef(-203.38, 37.55, 662.68)
		event.ObjsSetPos(0, -269.3, 13.77, 637.92)
		event.ObjsSetRot(0, 0.0, 1.57, 0.0)
		event.ObjsSetPos(1, -273.23, 13.77, 651.56)
		event.ObjsSetRot(1, 0.0, 1.44, 0.0)
		at = 24
		helper_d77001f9(var0)
		event.CharaActive(0, 0)
		event.CharaActive(0, 9)
		at = 25
		helper_937d87bc(var0)
		helper_86ac6534(var0)
		helper_86ac6534(var0)
		helper_86ac6534(var0)
		helper_86ac6534(var0)
		helper_86ac6534(var0)
		helper_86ac6534(var0)
	end, function(received: { any }): boolean
		if at <= 1 then
			helper_28d4ec9f()
			wait_frames_skipping(30)
		end
		if at <= 2 then
			wait_frames_skipping(90)
		end
		if at <= 3 then
			wait_frames_skipping(150)
		end
		if at <= 4 then
			helper_8cd371d7(2020010)
		end
		if at <= 5 then
			helper_8cd371d7(2020020)
		end
		if at <= 6 then
			wait_frames_skipping(15)
		end
		if at <= 7 then
			helper_8cd371d7(2020030)
		end
		if at <= 8 then
			wait_frames_skipping(10)
		end
		if at <= 9 then
			helper_24692f72(2200.0, 220)
			wait_frames_skipping(50)
		end
		if at <= 10 then
			wait_frames_skipping(70)
		end
		if at <= 11 then
			wait_frames_skipping(120)
		end
		if at <= 12 then
			wait_frames_skipping(60)
		end
		if at <= 13 then
			wait_frames_skipping(40)
		end
		if at <= 14 then
			pos_z = vm.f32(pos_z + vm.f32(-517.642))
			wait_frames_skipping(30)
		end
		if at <= 15 then
			wait_frames_skipping(30)
		end
		if at <= 16 then
			wait_frames_skipping(15)
		end
		if at <= 17 then
			wait_frames_skipping(75)
		end
		if at <= 18 then
			helper_8cd371d7(2020040)
		end
		if at <= 19 then
			helper_238b5abc(0)
		end
		if at <= 20 then
			helper_8cd371d7(2020050)
		end
		if at <= 21 then
			helper_8cd371d7(2020060)
		end
		if at <= 22 then
			helper_238b5abc(1)
		end
		if at <= 23 then
			helper_edf10af6(var0)
		end
		if at <= 24 then
			helper_fee84847(var0)
		end
		if at <= 25 then
			helper_86ac6534(var0)
			helper_86ac6534(var0)
			helper_86ac6534(var0)
			helper_86ac6534(var0)
			helper_86ac6534(var0)
			helper_86ac6534(var0)
		end
		return true
	end)
	at = 26
	vm.entry(26)
	event.CancelDramaScene()
	event.EohSetFootSoundId(0, 0)
	event.SndSeStop(var0, 7)
	event.SetMpcharaMotion("p01_train01", "kikan-m0", "停止")
	helper_18c31a0e()
	event.EsmClear()
	event.ResetCamera(1, 0.0, 20.0)
end

return helper_bac19723
