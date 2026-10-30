--!strict
-- Shared event helper used by 5 scripts, translated by tools/luau/stb2luau.

local vm = require("@lib/vm")
local close_message = require("@lib/event/close_message")
local helper_1584c528 = require("@lib/event/helper_1584c528")
local helper_238b5abc = require("@lib/event/helper_238b5abc")
local helper_344d6cd8 = require("@lib/event/helper_344d6cd8")
local helper_52aadc70 = require("@lib/event/helper_52aadc70")
local helper_705b02bc = require("@lib/event/helper_705b02bc")
local helper_917013c0 = require("@lib/event/helper_917013c0")
local helper_9cbdc640 = require("@lib/event/helper_9cbdc640")
local helper_d16eef1e = require("@lib/event/helper_d16eef1e")
local helper_f018b3c0 = require("@lib/event/helper_f018b3c0")
local open_message = require("@lib/event/open_message")
local wait_camera = require("@lib/event/wait_camera")
local wait_frames = require("@lib/event/wait_frames")
local wait_frames_skipping = require("@lib/event/wait_frames_skipping")
local wait_objects = require("@lib/event/wait_objects")

--- Helper function.
local function helper_bb8bad3f()
	local var0: s32 = 0
	local var1: s32 = 0
	local var2: s32 = 0
	local var4: s32 = 0
	local at: number = 0
	vm.section(function()
		event.DngPause(1, 1)
		event.SetStatusbarShow(0, 0.033333335)
		at = 1
		wait_frames(30)
		event.SetFadeOut(30)
		at = 2
		wait_frames(30)
		event.DelMonster(-1)
		event.DngPause(16384, 0)
		event.Initialize()
		event.SetStatusbarShow(0, 1.0)
		event.AddHpRate(1.0, 0)
		event.AddWhp(0, 999)
		var1 = event.SndLoadSound_2(1216) or var1
		event.AssignStack(5)
		event.ClearStack(5)
		event.LoadMes(0, 5, "event/opening/p4/op4ch1_1.txt")
		event.LoadMotion(5, "event/opening/p4/p4_mints3.gltf", "info", 0)
		event.CharaActive(0)
		event.EohSyncChara(0, 0)
		event.EohSetFootSoundId(0, 3)
		event.ObjsInit(0)
		event.ObjsSyncObj(0, 0)
		event.ObjsSetPos(0, 0.0, 0.0, 0.0)
		event.ObjsSetRot(0, 0.0, 0.0, 0.0)
		event.ObjsTexAnime(0, 0)
		event.EohSyncChara(21, 1)
		event.EohSetShow(21, 0)
		event.EohSyncChara(21, 2)
		event.EohSetShow(21, 0)
		event.LoadChara(5, "event/opening/p4/light.gltf", "info", 10)
		event.CharaActive(10)
		event.EohSyncChara(2, 10)
		event.EohSetFrameShow(2, "kusari", 0)
		event.ObjsInit(2)
		event.ObjsSyncObj(2, 2)
		event.ObjsSetPos(2, 0.0, 0.0, 0.0)
		event.ObjsSetRot(2, 0.0, 0.0, 0.0)
		event.EohSyncChrobj(7, 10, "light_rot")
		event.ObjsInit(7)
		event.ObjsSyncObj(7, 7)
		event.ObjsRotation(7, 0.01, 0.0, 0.0, -1)
		event.LoadChara(5, "event/opening/p4/p4_pierrot_kihon.gltf", "info", 11)
		event.LoadMotion(5, "event/opening/p4/p4_pierrot3.gltf", "info", 11)
		event.CharaActive(11)
		event.EohSyncChara(3, 11)
		event.EohSetSoundId(3, var1)
		event.ObjsInit(3)
		event.ObjsSyncObj(3, 3)
		event.ObjsSetPos(3, 0.0, 0.0, 0.0)
		event.ObjsSetRot(3, 0.0, 0.0, 0.0)
		event.CopyChara(5, 11, 12)
		event.CharaActive(12)
		event.EohSyncChara(4, 12)
		event.EohSetSoundId(4, var1)
		event.ObjsInit(4)
		event.ObjsSyncObj(4, 4)
		event.ObjsSetPos(4, 0.0, 0.0, 0.0)
		event.ObjsSetRot(4, 0.0, 0.0, 0.0)
		event.CopyChara(5, 11, 13)
		event.CharaActive(13)
		event.EohSyncChara(5, 13)
		event.EohSetSoundId(5, var1)
		event.ObjsInit(5)
		event.ObjsSyncObj(5, 5)
		event.ObjsSetPos(5, 0.0, 0.0, 0.0)
		event.ObjsSetRot(5, 0.0, 0.0, 0.0)
		event.CopyChara(5, 11, 14)
		event.CharaActive(0, 14)
		event.LoadChara(5, "event/opening/p4/p4_people.gltf", "info", 15)
		event.CharaActive(15)
		event.SetCharaPos(15, 0.0, 0.0, -405.0)
		event.LoadChara(5, "event/opening/p4/up_kusari.gltf", "info", 18)
		event.CharaActive(18)
		event.SetReference(10, "up_kusari", 18)
		event.LoadChara(5, "event/opening/p4/shuchusen.gltf", "info", 8)
		event.CharaActive(0, 8)
		event.EohSyncChara(6, 8)
		event.ObjsInit(6)
		event.ObjsSyncObj(6, 6)
		event.LoadChara(5, "event/opening/p4/p4_kemuri.gltf", "info", 20)
		event.CharaActive(0, 20)
		event.SetCharaPos(20, 0.0, 10.0, 0.0)
		event.ObjsSetMotion(4, "つかまりL", 4)
		event.SetReference(10, "pierrot2", 12)
		event.ObjsSetMotion(5, "つかまりL", 4)
		event.SetReference(10, "pierrot3", 13)
		event.ObjsSetMotion(3, "つかまりL", 4)
		event.SetReference(10, "pierrot1", 11)
		event.CharaActive(0, 11)
		event.CharaActive(0, 12)
		event.CharaActive(0, 13)
		event.SetReference(10, "mints", 0)
		event.ObjsSetMotion(0, "見上げるL", 4)
		event.ObjsResetDaPosition(0)
		event.ObjsSeDelay(0, 1)
		event.ObjsResetDaPosition(0)
		event.StreamOpen3(1, 40060)
		at = 3
		helper_9cbdc640(1)
		event.SetMotion(10, "落下", 6, 0.3)
		event.InitDramaScene()
		event.SetFadeIn(30)
		event.CmrsInit()
		event.CmrsSyncObj(0, 0.0, 0.0, 8.0, -0.16, 15.0, 20.0, "bcol00", 2)
		event.SndSePlay(var1, 33)
		event.CmrsCharaAttach(8, 60.0, 30)
		event.CharaActive(8)
		event.CharaActive(18)
		event.ObjsResetDaPosition(0)
		event.ObjsSeDelay(0, 1)
		event.ObjsResetDaPosition(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "落ちるー（３）")
		event.ObjsTexAnime(0, 1, "大口")
		event.StreamPlay(1)
		event.MesMake_2(0, 40060)
		open_message(0, -1, 8, 0, 0)
		at = 4
		helper_917013c0(0, 30)
		close_message(0)
		event.SetMesPos(0, 0)
		at = 5
		wait_objects(6)
		event.StreamClose(1)
		event.CmrsReleaseObj()
		event.CharaActive(0, 8)
		event.CmrsSetPos(0.0, 18.46, -95.54)
		event.CmrsSetRef(0.0, 194.33, 107.78)
		event.CmrsMove(0.0, 18.46, -95.54, 0.0, 66.62, 107.78, 30)
		event.CharaActive(11)
		event.CharaActive(12)
		event.CharaActive(13)
		event.CharaActive(0, 18)
		event.ObjsResetMotion(2)
		event.ObjsSetMotion(2, "落下", 6, 0.3)
		event.ObjsNextMotion(2, "停止", 4)
		event.SndSePlay(var1, 27)
		at = 6
		wait_frames(14)
		event.ObjsSetMotion(0, "飛び降りる", 2)
		event.ObjsNextMotion(0, "飛び降りるL", 6, 0.2)
		event.ObjsNextMotion(0, "ライトから着地", 6)
		event.ObjsMotionWait(0)
		event.ObjsMotionDelay(0, 10)
		at = 7
		wait_frames(10)
		event.DelReference(0)
		event.ObjsSetPos(0, 0.0, 65.81, 94.16)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsJump(0, 0.0, 10.6, 6.0, -0.2, 30)
		at = 8
		wait_frames(5)
		event.CharaActive(20)
		event.SetMotion(20, "けむり", 6)
		at = 9
		wait_objects(2)
		event.ObjsInit(7)
		event.DelReference(11)
		event.ObjsSetPos(3, -46.01, 150.0, 50.48)
		event.ObjsSetRot(3, 0.0, 2.42, 0.0)
		event.DelReference(12)
		event.ObjsSetPos(4, -48.62, 150.0, 60.52)
		event.ObjsSetRot(4, 0.0, -2.42, 0.0)
		event.DelReference(13)
		event.ObjsSetPos(5, -35.87, 150.0, -54.34)
		event.ObjsSetRot(5, 0.0, 0.38, 0.0)
		event.CharaActive(14)
		event.EohSyncChara(20, 14)
		event.ObjsInit(20)
		event.ObjsSyncObj(20, 20)
		event.ObjsSetPos(20, 30.12, 150.0, -61.93)
		event.ObjsSetRot(20, 0.0, -0.6, 0.0)
		at = 10
		wait_objects(0)
		event.CmrsSetPos(1.17, 26.95, -26.03)
		event.CmrsSetRef(1.17, 33.68, 4.49)
		event.ObjsSetPos(0, 0.0, 10.0, 6.0)
		event.ObjsSetRot(0, 0.0, 3.14, 0.0)
		event.ObjsSetMotion(0, "舞台上キョロキョロ", 6)
		event.ObjsMotionWait(0)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "拍手喝采（３）")
		event.ObjsTexAnime(0, 1, "開きからにこり")
		event.ObjsSePlay(0, var1, 28)
		at = 11
		wait_objects(0)
		event.CmrsSetRef(0.0, 33.68, 4.49)
		event.CmrsSetAhd(0.9, 9.0, 50.0)
		event.CmrsMoveAhd(-0.9, 9.0, 50.0, 180)
		event.ObjsSetMotion(0, "手を振る", 4)
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "感動（３）")
		event.ObjsTexAnime(0, 1, "うれし口（３）")
		at = 12
		wait_camera()
		event.CmrsSetPos(0.61, 45.86, -150.28)
		event.CmrsSetRef(0.57, 21.14, 5.95)
		event.CharaActive(0, 10)
		event.ObjsSetMotion(20, "落下中", 6, 0.15)
		event.ObjsNextMotion(20, "着地", 6)
		event.ObjsNextMotion(20, "立ち", 4)
		event.ObjsJump(20, 30.12, 8.8, -61.93, -0.2, 30)
		event.ObjsSeDelay(20, 30)
		event.ObjsSePlay(20, var1, 34)
		at = 13
		wait_frames(6)
		event.ObjsSetMotion(3, "落下中", 6, 0.15)
		event.ObjsNextMotion(3, "着地", 6)
		event.ObjsNextMotion(3, "立ち", 4)
		event.ObjsJump(3, -46.01, 8.8, 50.48, -0.2, 30)
		event.ObjsSeDelay(3, 30)
		event.ObjsSePlay(3, var1, 34)
		at = 14
		wait_frames(4)
		event.ObjsSetMotion(5, "落下中", 6, 0.15)
		event.ObjsNextMotion(5, "着地", 6)
		event.ObjsNextMotion(5, "立ち", 4)
		event.ObjsJump(5, -35.87, 8.8, -54.34, -0.2, 30)
		event.ObjsSeDelay(5, 30)
		event.ObjsSePlay(5, var1, 34)
		at = 15
		wait_frames(3)
		event.ObjsSetMotion(4, "落下中", 6, 0.15)
		event.ObjsNextMotion(4, "着地", 6)
		event.ObjsNextMotion(4, "立ち", 4)
		event.ObjsJump(4, 48.62, 8.8, 60.52, -0.2, 30)
		event.ObjsSeDelay(4, 30)
		event.ObjsSePlay(4, var1, 34)
		at = 16
		wait_frames(20)
		event.ObjsSetMotion(0, "キョロキョロ立ち")
		event.ObjsTexAnime(0, 0)
		event.ObjsTexAnime(0, 1, "怒り目")
		event.ObjsTexAnime(0, 1, "怒り口")
		at = 17
		helper_1584c528(40080, 30)
		at = 18
		wait_frames(10)
		event.CmrsSetPos(-20.61, 33.01, -18.61)
		event.CmrsSetRef(1.45, 30.1, 6.28)
		event.CharaActive(0, 11)
		event.CharaActive(0, 12)
		event.ObjsSetMotion(0, "レンチを取り出す", 6)
		event.ObjsNextMotion(0, "レンチを取り出すL", 4)
		event.StreamClose(1)
		var2 = 0
		at = 19
		wait_frames(40 - var2)
		event.EohSyncChara(21, 1)
		event.EohSetShow(21, 1)
		at = 20
		wait_frames(46)
		event.ObjsSePlay(0, var1, 35)
		at = 21
		wait_objects(0)
		at = 22
		wait_frames(30)
		event.CmrsSetPos(-4.51, 25.29, -32.6)
		event.CmrsSetRef(1.45, 30.1, 6.28)
		event.ObjsSetMotion(0, "かまえる", 6)
		event.ObjsNextMotion(0, "かまえるL", 4)
		event.ObjsSeDelay(0, 4)
		event.ObjsSePlay(0, var1, 36)
		at = 23
		wait_objects(0)
		at = 24
		wait_frames(30)
		event.CmrsFadeInit()
		event.CmrsFadeOut(30)
		at = 25
		wait_camera()
	end, function(received: { any }): boolean
		if at <= 1 then
			wait_frames_skipping(30)
		end
		if at <= 2 then
			helper_238b5abc(1)
		end
		if at <= 3 then
			helper_f018b3c0(0, -1, 8, 0, 0)
			helper_705b02bc(0, 30)
		end
		if at <= 4 then
			helper_d16eef1e(0)
			helper_238b5abc(6)
		end
		if at <= 5 then
			wait_frames_skipping(14)
		end
		if at <= 6 then
			wait_frames_skipping(10)
		end
		if at <= 7 then
			wait_frames_skipping(5)
		end
		if at <= 8 then
			helper_238b5abc(2)
		end
		if at <= 9 then
			helper_238b5abc(0)
		end
		if at <= 10 then
			helper_238b5abc(0)
		end
		if at <= 11 then
			helper_344d6cd8()
		end
		if at <= 12 then
			wait_frames_skipping(6)
		end
		if at <= 13 then
			wait_frames_skipping(4)
		end
		if at <= 14 then
			wait_frames_skipping(3)
		end
		if at <= 15 then
			wait_frames_skipping(20)
		end
		if at <= 16 then
			helper_52aadc70(40080, 30)
		end
		if at <= 17 then
			wait_frames_skipping(10)
		end
		if at <= 18 then
			var2 = 0
			wait_frames_skipping(40 - var2)
		end
		if at <= 19 then
			wait_frames_skipping(46)
		end
		if at <= 20 then
			helper_238b5abc(0)
		end
		if at <= 21 then
			wait_frames_skipping(30)
		end
		if at <= 22 then
			helper_238b5abc(0)
		end
		if at <= 23 then
			wait_frames_skipping(30)
		end
		if at <= 24 then
			helper_344d6cd8()
		end
		return true
	end)
	event.CancelDramaScene()
	event.SndSeStop(var1, 33)
	event.SndSeStop(var1, 27)
	event.SndSeStop(var1, 28)
	event.StreamClose(1)
	event.LoadMes(0, -1)
	event.LoadSound(1217)
	event.SndSeAllStop(4)
	for var3 = 0, 31 do
		event.ObjsInit(var3)
	end
	event.SetCameraRef(0.0, 33.8, 6.0)
	event.SetCameraPos(0.0, 38.8, 86.0)
	event.ResetCamera(0)
	event.DelExtMotion(0)
	event.DeleteChara(9)
	event.DeleteChara(10)
	event.DeleteChara(11)
	event.DeleteChara(12)
	event.DeleteChara(13)
	event.DeleteChara(14)
	event.DeleteChara(15)
	event.DeleteChara(18)
	event.DeleteChara(19)
	event.DeleteChara(20)
	event.DeleteChara(8)
	event.CharaActive(1, 0)
	event.DelReference(0)
	event.SetCharaPos(0, 0.0, 8.8, 6.0)
	event.SetCharaRot(0, 0.0, 3.14, 0.0)
	event.SetMotion(0, "バトル立ち", 4)
	event.CharaResetDa(0)
	event.EohSyncChara(21, 1)
	event.EohSetShow(21, 1)
	event.EohSyncChara(21, 2)
	event.EohSetShow(21, 0)
	event.SndInitPort(4)
	event.AssignStack(3)
	event.ClearStack(3)
	event.LoadMonsterFile(600, 1)
	event.AutoSetMonster(600, -46.01, 8.8, 50.48, 0.0, 2.42, 0.0)
	event.AutoSetMonster(600, 48.62, 8.8, 60.52, 0.0, -2.42, 0.0)
	event.AutoSetMonster(600, -35.87, 8.8, -54.34, 0.0, 0.38, 0.0)
	event.AutoSetMonster(600, 30.12, 8.8, -61.93, 0.0, -0.6, 0.0)
	var0 = event.SndLoadSound_3(4, "snd2/event/ev_200_000.sound.json") or var0
	event.SndSePlay(var0, 0)
	at = 26
	vm.wait(26)
	event.DngPause(16384, 1)
	var4 = event.GetSndId(4) or var4
	event.SetCharaExSoundid(0, var4)
	event.ActchrSoundInfoCopy(0)
	event.DngPause(1, 0)
	event.SetStatusbarShow(1, 1.0)
	event.SetFadeIn(30)
	event.Finish()
end

return helper_bb8bad3f
