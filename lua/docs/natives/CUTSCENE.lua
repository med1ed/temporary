CUTSCENE = {}

-- void REQUEST_CUTSCENE(const char* cutsceneName, int flags) // 0x7A86743F475D9E09
--[[
flags: Usually 8
Full list of cutscene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/cutsceneNames.json
--]]
function CUTSCENE.REQUEST_CUTSCENE(cutsceneName, flags)
  native.invoke(
    Type.Void, 593, false,
    arg(Type.String, cutsceneName),
    arg(Type.Int, flags)
  )
end

-- void REQUEST_CUTSCENE_WITH_PLAYBACK_LIST(const char* cutsceneName, int playbackFlags, int flags) // 0xC23DE0E91C30B58C
--[[
flags: Usually 8

playbackFlags: Which scenes should be played.
Example: 0x105 (bit 0, 2 and 8 set) will enable scene 1, 3 and 9.
Full list of cutscene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/cutsceneNames.json
--]]
function CUTSCENE.REQUEST_CUTSCENE_WITH_PLAYBACK_LIST(cutsceneName, playbackFlags, flags)
  native.invoke(
    Type.Void, 594, false,
    arg(Type.String, cutsceneName),
    arg(Type.Int, playbackFlags),
    arg(Type.Int, flags)
  )
end

-- void REMOVE_CUTSCENE() // 0x440AF51A3462B86F
function CUTSCENE.REMOVE_CUTSCENE()
  native.invoke(
    Type.Void, 595, false
  )
end

-- BOOL HAS_CUTSCENE_LOADED() // 0xC59F528E9AB9F339
function CUTSCENE.HAS_CUTSCENE_LOADED()
  return native.invoke(
    Type.Bool, 596, false
  )
end

-- BOOL HAS_THIS_CUTSCENE_LOADED(const char* cutsceneName) // 0x228D3D94F8A11C3C
--[[
Full list of cutscene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/cutsceneNames.json
--]]
function CUTSCENE.HAS_THIS_CUTSCENE_LOADED(cutsceneName)
  return native.invoke(
    Type.Bool, 597, false,
    arg(Type.String, cutsceneName)
  )
end

-- void SET_SCRIPT_CAN_START_CUTSCENE(int threadId) // 0x8D9DF6ECA8768583
--[[
Sets the cutscene's owning thread ID.
--]]
function CUTSCENE.SET_SCRIPT_CAN_START_CUTSCENE(threadId)
  native.invoke(
    Type.Void, 598, false,
    arg(Type.Int, threadId)
  )
end

-- BOOL CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY() // 0xB56BBBCC2955D9CB
function CUTSCENE.CAN_REQUEST_ASSETS_FOR_CUTSCENE_ENTITY()
  return native.invoke(
    Type.Bool, 599, false
  )
end

-- BOOL IS_CUTSCENE_PLAYBACK_FLAG_SET(int flag) // 0x71B74D2AE19338D0
function CUTSCENE.IS_CUTSCENE_PLAYBACK_FLAG_SET(flag)
  return native.invoke(
    Type.Bool, 600, false,
    arg(Type.Int, flag)
  )
end

-- void SET_CUTSCENE_ENTITY_STREAMING_FLAGS(const char* cutsceneEntName, int p1, int p2) // 0x4C61C75BEE8184C2
function CUTSCENE.SET_CUTSCENE_ENTITY_STREAMING_FLAGS(cutsceneEntName, p1, p2)
  native.invoke(
    Type.Void, 601, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Int, p1),
    arg(Type.Int, p2)
  )
end

-- void REQUEST_CUT_FILE(const char* cutsceneName) // 0x06A3524161C502BA
--[[
Simply loads the cutscene and doesn't do extra stuff that REQUEST_CUTSCENE does.
Full list of cutscene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/cutsceneNames.json
--]]
function CUTSCENE.REQUEST_CUT_FILE(cutsceneName)
  native.invoke(
    Type.Void, 602, false,
    arg(Type.String, cutsceneName)
  )
end

-- BOOL HAS_CUT_FILE_LOADED(const char* cutsceneName) // 0xA1C996C2A744262E
--[[
Simply checks if the cutscene has loaded and doesn't check via CutSceneManager as opposed to HAS_[THIS]_CUTSCENE_LOADED.
Full list of cutscene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/cutsceneNames.json
--]]
function CUTSCENE.HAS_CUT_FILE_LOADED(cutsceneName)
  return native.invoke(
    Type.Bool, 603, false,
    arg(Type.String, cutsceneName)
  )
end

-- void REMOVE_CUT_FILE(const char* cutsceneName) // 0xD00D76A7DFC9D852
--[[
Simply unloads the cutscene and doesn't do extra stuff that REMOVE_CUTSCENE does.
Full list of cutscene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/cutsceneNames.json
--]]
function CUTSCENE.REMOVE_CUT_FILE(cutsceneName)
  native.invoke(
    Type.Void, 604, false,
    arg(Type.String, cutsceneName)
  )
end

-- int GET_CUT_FILE_CONCAT_COUNT(const char* cutsceneName) // 0x0ABC54DE641DC0FC
--[[
Full list of cutscene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/cutsceneNames.json
--]]
function CUTSCENE.GET_CUT_FILE_CONCAT_COUNT(cutsceneName)
  return native.invoke(
    Type.Int, 605, false,
    arg(Type.String, cutsceneName)
  )
end

-- void START_CUTSCENE(int flags) // 0x186D5CB5E7B0FF7B
--[[
flags: Usually 0.
--]]
function CUTSCENE.START_CUTSCENE(flags)
  native.invoke(
    Type.Void, 606, false,
    arg(Type.Int, flags)
  )
end

-- void START_CUTSCENE_AT_COORDS(float x, float y, float z, int flags) // 0x1C9ADDA3244A1FBF
--[[
flags: Usually 0.
--]]
function CUTSCENE.START_CUTSCENE_AT_COORDS(x, y, z, flags)
  native.invoke(
    Type.Void, 607, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, flags)
  )
end

-- void STOP_CUTSCENE(BOOL p0) // 0xC7272775B4DC786E
function CUTSCENE.STOP_CUTSCENE(p0)
  native.invoke(
    Type.Void, 608, false,
    arg(Type.Bool, p0)
  )
end

-- void STOP_CUTSCENE_IMMEDIATELY() // 0xD220BDD222AC4A1E
function CUTSCENE.STOP_CUTSCENE_IMMEDIATELY()
  native.invoke(
    Type.Void, 609, false
  )
end

-- void SET_CUTSCENE_ORIGIN(float x, float y, float z, float p3, int p4) // 0xB812B3FD1C01CF27
--[[
p3 could be heading. Needs more research.
--]]
function CUTSCENE.SET_CUTSCENE_ORIGIN(x, y, z, p3, p4)
  native.invoke(
    Type.Void, 610, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3),
    arg(Type.Int, p4)
  )
end

-- void SET_CUTSCENE_ORIGIN_AND_ORIENTATION(float x1, float y1, float z1, float x2, float y2, float z2, int p6) // 0x011883F41211432A
function CUTSCENE.SET_CUTSCENE_ORIGIN_AND_ORIENTATION(x1, y1, z1, x2, y2, z2, p6)
  native.invoke(
    Type.Void, 611, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, p6)
  )
end

-- int GET_CUTSCENE_TIME() // 0xE625BEABBAFFDAB9
function CUTSCENE.GET_CUTSCENE_TIME()
  return native.invoke(
    Type.Int, 612, false
  )
end

-- int GET_CUTSCENE_TOTAL_DURATION() // 0xEE53B14A19E480D4
function CUTSCENE.GET_CUTSCENE_TOTAL_DURATION()
  return native.invoke(
    Type.Int, 613, false
  )
end

-- int GET_CUTSCENE_END_TIME() // 0x971D7B15BCDBEF99
function CUTSCENE.GET_CUTSCENE_END_TIME()
  return native.invoke(
    Type.Int, 614, false
  )
end

-- int GET_CUTSCENE_PLAY_DURATION() // 0x5D583F71C901F2A3
function CUTSCENE.GET_CUTSCENE_PLAY_DURATION()
  return native.invoke(
    Type.Int, 615, false
  )
end

-- BOOL WAS_CUTSCENE_SKIPPED() // 0x40C8656EDAEDD569
function CUTSCENE.WAS_CUTSCENE_SKIPPED()
  return native.invoke(
    Type.Bool, 616, false
  )
end

-- BOOL HAS_CUTSCENE_FINISHED() // 0x7C0A893088881D57
function CUTSCENE.HAS_CUTSCENE_FINISHED()
  return native.invoke(
    Type.Bool, 617, false
  )
end

-- BOOL IS_CUTSCENE_ACTIVE() // 0x991251AFC3981F84
function CUTSCENE.IS_CUTSCENE_ACTIVE()
  return native.invoke(
    Type.Bool, 618, false
  )
end

-- BOOL IS_CUTSCENE_PLAYING() // 0xD3C2E180A40F031E
function CUTSCENE.IS_CUTSCENE_PLAYING()
  return native.invoke(
    Type.Bool, 619, false
  )
end

-- int GET_CUTSCENE_SECTION_PLAYING() // 0x49010A6A396553D8
function CUTSCENE.GET_CUTSCENE_SECTION_PLAYING()
  return native.invoke(
    Type.Int, 620, false
  )
end

-- Entity GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY(const char* cutsceneEntName, Hash modelHash) // 0x0A2E9FDB9A8C62F6
function CUTSCENE.GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY(cutsceneEntName, modelHash)
  return native.invoke(
    Type.Entity, 621, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Hash, modelHash)
  )
end

-- int GET_CUTSCENE_CONCAT_SECTION_PLAYING() // 0x583DF8E3D4AFBD98
function CUTSCENE.GET_CUTSCENE_CONCAT_SECTION_PLAYING()
  return native.invoke(
    Type.Int, 622, false
  )
end

-- BOOL IS_CUTSCENE_AUTHORIZED(const char* cutsceneName) // 0x4CEBC1ED31E8925E
--[[
This function is hard-coded to always return 1.
--]]
function CUTSCENE.IS_CUTSCENE_AUTHORIZED(cutsceneName)
  return native.invoke(
    Type.Bool, 623, false,
    arg(Type.String, cutsceneName)
  )
end

-- int DOES_CUTSCENE_HANDLE_EXIST(int cutsceneHandle) // 0x4FCD976DA686580C
function CUTSCENE.DOES_CUTSCENE_HANDLE_EXIST(cutsceneHandle)
  return native.invoke(
    Type.Int, 624, false,
    arg(Type.Int, cutsceneHandle)
  )
end

-- void REGISTER_ENTITY_FOR_CUTSCENE(Ped cutscenePed, const char* cutsceneEntName, int p2, Hash modelHash, int p4) // 0xE40C1C56DF95C2E8
function CUTSCENE.REGISTER_ENTITY_FOR_CUTSCENE(cutscenePed, cutsceneEntName, p2, modelHash, p4)
  native.invoke(
    Type.Void, 625, false,
    arg(Type.Ped, cutscenePed),
    arg(Type.String, cutsceneEntName),
    arg(Type.Int, p2),
    arg(Type.Hash, modelHash),
    arg(Type.Int, p4)
  )
end

-- Entity GET_ENTITY_INDEX_OF_REGISTERED_ENTITY(const char* cutsceneEntName, Hash modelHash) // 0xC0741A26499654CD
function CUTSCENE.GET_ENTITY_INDEX_OF_REGISTERED_ENTITY(cutsceneEntName, modelHash)
  return native.invoke(
    Type.Entity, 626, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Hash, modelHash)
  )
end

-- void SET_VEHICLE_MODEL_PLAYER_WILL_EXIT_SCENE(Hash modelHash) // 0x7F96F23FA9B73327
--[[
Full list of vehicles by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/vehicles.json
--]]
function CUTSCENE.SET_VEHICLE_MODEL_PLAYER_WILL_EXIT_SCENE(modelHash)
  native.invoke(
    Type.Void, 627, false,
    arg(Type.Hash, modelHash)
  )
end

-- void SET_CUTSCENE_TRIGGER_AREA(float x1, float y1, float z1, float x2, float y2, float z2) // 0x9896CE4721BE84BA
--[[
Only used twice in R* scripts
--]]
function CUTSCENE.SET_CUTSCENE_TRIGGER_AREA(x1, y1, z1, x2, y2, z2)
  native.invoke(
    Type.Void, 628, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- BOOL CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY(const char* cutsceneEntName, Hash modelHash) // 0x645D0B458D8E17B5
--[[
modelHash (p1) was always 0 in R* scripts
--]]
function CUTSCENE.CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY(cutsceneEntName, modelHash)
  return native.invoke(
    Type.Bool, 629, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Hash, modelHash)
  )
end

-- BOOL CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY(const char* cutsceneEntName, Hash modelHash) // 0x4C6A6451C79E4662
function CUTSCENE.CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY(cutsceneEntName, modelHash)
  return native.invoke(
    Type.Bool, 630, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Hash, modelHash)
  )
end

-- BOOL CAN_SET_EXIT_STATE_FOR_CAMERA(BOOL p0) // 0xB2CBCD0930DFB420
function CUTSCENE.CAN_SET_EXIT_STATE_FOR_CAMERA(p0)
  return native.invoke(
    Type.Bool, 631, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_PAD_CAN_SHAKE_DURING_CUTSCENE(BOOL toggle) // 0xC61B86C9F61EB404
--[[
Toggles a value (bool) for cutscenes.
--]]
function CUTSCENE.SET_PAD_CAN_SHAKE_DURING_CUTSCENE(toggle)
  native.invoke(
    Type.Void, 632, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_CUTSCENE_FADE_VALUES(BOOL p0, BOOL p1, BOOL p2, BOOL p3) // 0x8093F23ABACCC7D4
function CUTSCENE.SET_CUTSCENE_FADE_VALUES(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 633, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void SET_CUTSCENE_MULTIHEAD_FADE(BOOL p0, BOOL p1, BOOL p2, BOOL p3) // 0x20746F7B1032A3C7
function CUTSCENE.SET_CUTSCENE_MULTIHEAD_FADE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 634, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void SET_CUTSCENE_MULTIHEAD_FADE_MANUAL(BOOL p0) // 0x06EE9048FD080382
function CUTSCENE.SET_CUTSCENE_MULTIHEAD_FADE_MANUAL(p0)
  native.invoke(
    Type.Void, 635, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL IS_MULTIHEAD_FADE_UP() // 0xA0FE76168A189DDB
function CUTSCENE.IS_MULTIHEAD_FADE_UP()
  return native.invoke(
    Type.Bool, 636, false
  )
end

-- void NETWORK_SET_MOCAP_CUTSCENE_CAN_BE_SKIPPED(BOOL p0) // 0x2F137B508DE238F2
--[[
Stops current cutscene with a fade transition
p0: always true in R* Scripts
You will need to manually fade the screen back in
SET_CUTSCENE_INPUTS_PARTIALLY_FADE?
--]]
function CUTSCENE.NETWORK_SET_MOCAP_CUTSCENE_CAN_BE_SKIPPED(p0)
  native.invoke(
    Type.Void, 637, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_CAR_GENERATORS_CAN_UPDATE_DURING_CUTSCENE(BOOL p0) // 0xE36A98D8AB3D3C66
function CUTSCENE.SET_CAR_GENERATORS_CAN_UPDATE_DURING_CUTSCENE(p0)
  native.invoke(
    Type.Void, 638, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL CAN_USE_MOBILE_PHONE_DURING_CUTSCENE() // 0x5EDEF0CF8C1DAB3C
function CUTSCENE.CAN_USE_MOBILE_PHONE_DURING_CUTSCENE()
  return native.invoke(
    Type.Bool, 639, false
  )
end

-- void SET_CUTSCENE_CAN_BE_SKIPPED(BOOL p0) // 0x41FAA8FB2ECE8720
function CUTSCENE.SET_CUTSCENE_CAN_BE_SKIPPED(p0)
  native.invoke(
    Type.Void, 640, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_CAN_DISPLAY_MINIMAP_DURING_CUTSCENE_THIS_UPDATE() // 0x2131046957F31B04
function CUTSCENE.SET_CAN_DISPLAY_MINIMAP_DURING_CUTSCENE_THIS_UPDATE()
  native.invoke(
    Type.Void, 641, false
  )
end

-- void SET_CUTSCENE_PED_COMPONENT_VARIATION(const char* cutsceneEntName, int componentId, int drawableId, int textureId, Hash modelHash) // 0xBA01E7B6DEEFBBC9
--[[
Full list of ped components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedComponentVariations.json
--]]
function CUTSCENE.SET_CUTSCENE_PED_COMPONENT_VARIATION(cutsceneEntName, componentId, drawableId, textureId, modelHash)
  native.invoke(
    Type.Void, 642, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Int, componentId),
    arg(Type.Int, drawableId),
    arg(Type.Int, textureId),
    arg(Type.Hash, modelHash)
  )
end

-- void SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED(const char* cutsceneEntName, Ped ped, Hash modelHash) // 0x2A56C06EBEF2B0D9
function CUTSCENE.SET_CUTSCENE_PED_COMPONENT_VARIATION_FROM_PED(cutsceneEntName, ped, modelHash)
  native.invoke(
    Type.Void, 643, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Ped, ped),
    arg(Type.Hash, modelHash)
  )
end

-- BOOL DOES_CUTSCENE_ENTITY_EXIST(const char* cutsceneEntName, Hash modelHash) // 0x499EF20C5DB25C59
function CUTSCENE.DOES_CUTSCENE_ENTITY_EXIST(cutsceneEntName, modelHash)
  return native.invoke(
    Type.Bool, 644, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Hash, modelHash)
  )
end

-- void SET_CUTSCENE_PED_PROP_VARIATION(const char* cutsceneEntName, int componentId, int drawableId, int textureId, Hash modelHash) // 0x0546524ADE2E9723
--[[
Thanks R*! ;)

if ((l_161 == 0) || (l_161 == 2)) {
    sub_2ea27("Trying to set Jimmy prop variation");
    CUTSCENE::SET_CUTSCENE_PED_PROP_VARIATION("Jimmy_Boston", 1, 0, 0, 0);
}

Full list of ped components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedComponentVariations.json
--]]
function CUTSCENE.SET_CUTSCENE_PED_PROP_VARIATION(cutsceneEntName, componentId, drawableId, textureId, modelHash)
  native.invoke(
    Type.Void, 645, false,
    arg(Type.String, cutsceneEntName),
    arg(Type.Int, componentId),
    arg(Type.Int, drawableId),
    arg(Type.Int, textureId),
    arg(Type.Hash, modelHash)
  )
end

-- BOOL HAS_CUTSCENE_CUT_THIS_FRAME() // 0x708BDD8CD795B043
--[[
Possibly HAS_CUTSCENE_CUT_THIS_FRAME, needs more research.
--]]
function CUTSCENE.HAS_CUTSCENE_CUT_THIS_FRAME()
  return native.invoke(
    Type.Bool, 646, false
  )
end


