STREAMING = {}

-- void LOAD_ALL_OBJECTS_NOW() // 0xBD6E84632DD4CB3F
function STREAMING.LOAD_ALL_OBJECTS_NOW()
  native.invoke(
    Type.Void, 5240, false
  )
end

-- void LOAD_SCENE(float x, float y, float z) // 0x4448EB75B4904BDB
function STREAMING.LOAD_SCENE(x, y, z)
  native.invoke(
    Type.Void, 5241, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- BOOL NETWORK_UPDATE_LOAD_SCENE() // 0xC4582015556D1C46
function STREAMING.NETWORK_UPDATE_LOAD_SCENE()
  return native.invoke(
    Type.Bool, 5242, false
  )
end

-- BOOL IS_NETWORK_LOADING_SCENE() // 0x41CA5A33160EA4AB
function STREAMING.IS_NETWORK_LOADING_SCENE()
  return native.invoke(
    Type.Bool, 5243, false
  )
end

-- void SET_INTERIOR_ACTIVE(int interiorID, BOOL toggle) // 0xE37B76C387BE28ED
function STREAMING.SET_INTERIOR_ACTIVE(interiorID, toggle)
  native.invoke(
    Type.Void, 5244, false,
    arg(Type.Int, interiorID),
    arg(Type.Bool, toggle)
  )
end

-- void REQUEST_MODEL(Hash model) // 0x963D27A58DF860AC
--[[
Request a model to be loaded into memory.

--]]
function STREAMING.REQUEST_MODEL(model)
  native.invoke(
    Type.Void, 5245, false,
    arg(Type.Hash, model)
  )
end

-- void REQUEST_MENU_PED_MODEL(Hash model) // 0xA0261AEF7ACFC51E
function STREAMING.REQUEST_MENU_PED_MODEL(model)
  native.invoke(
    Type.Void, 5246, false,
    arg(Type.Hash, model)
  )
end

-- BOOL HAS_MODEL_LOADED(Hash model) // 0x98A4EB5D89A0C952
--[[
Checks if the specified model has loaded into memory.
--]]
function STREAMING.HAS_MODEL_LOADED(model)
  return native.invoke(
    Type.Bool, 5247, false,
    arg(Type.Hash, model)
  )
end

-- void REQUEST_MODELS_IN_ROOM(Interior interior, const char* roomName) // 0x8A7A40100EDFEC58
--[[
STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "V_FIB01_cur_elev");
STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "limbo");
STREAMING::REQUEST_MODELS_IN_ROOM(l_13BB, "V_Office_gnd_lifts");
STREAMING::REQUEST_MODELS_IN_ROOM(l_13BB, "limbo");
STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "v_fib01_jan_elev");
STREAMING::REQUEST_MODELS_IN_ROOM(l_13BC, "limbo");
--]]
function STREAMING.REQUEST_MODELS_IN_ROOM(interior, roomName)
  native.invoke(
    Type.Void, 5248, false,
    arg(Type.Interior, interior),
    arg(Type.String, roomName)
  )
end

-- void SET_MODEL_AS_NO_LONGER_NEEDED(Hash model) // 0xE532F5D78798DAAB
--[[
Unloads model from memory
--]]
function STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(model)
  native.invoke(
    Type.Void, 5249, false,
    arg(Type.Hash, model)
  )
end

-- BOOL IS_MODEL_IN_CDIMAGE(Hash model) // 0x35B9E0803292B641
--[[
Check if model is in cdimage(rpf)
--]]
function STREAMING.IS_MODEL_IN_CDIMAGE(model)
  return native.invoke(
    Type.Bool, 5250, false,
    arg(Type.Hash, model)
  )
end

-- BOOL IS_MODEL_VALID(Hash model) // 0xC0296A2EDF545E92
--[[
Returns whether the specified model exists in the game.
--]]
function STREAMING.IS_MODEL_VALID(model)
  return native.invoke(
    Type.Bool, 5251, false,
    arg(Type.Hash, model)
  )
end

-- BOOL IS_MODEL_A_PED(Hash model) // 0x75816577FEA6DAD5
function STREAMING.IS_MODEL_A_PED(model)
  return native.invoke(
    Type.Bool, 5252, false,
    arg(Type.Hash, model)
  )
end

-- BOOL IS_MODEL_A_VEHICLE(Hash model) // 0x19AAC8F07BFEC53E
--[[
Returns whether the specified model represents a vehicle.
--]]
function STREAMING.IS_MODEL_A_VEHICLE(model)
  return native.invoke(
    Type.Bool, 5253, false,
    arg(Type.Hash, model)
  )
end

-- void REQUEST_COLLISION_AT_COORD(float x, float y, float z) // 0x07503F7948F491A7
function STREAMING.REQUEST_COLLISION_AT_COORD(x, y, z)
  native.invoke(
    Type.Void, 5254, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void REQUEST_COLLISION_FOR_MODEL(Hash model) // 0x923CB32A3B874FCB
function STREAMING.REQUEST_COLLISION_FOR_MODEL(model)
  native.invoke(
    Type.Void, 5255, false,
    arg(Type.Hash, model)
  )
end

-- BOOL HAS_COLLISION_FOR_MODEL_LOADED(Hash model) // 0x22CCA434E368F03A
function STREAMING.HAS_COLLISION_FOR_MODEL_LOADED(model)
  return native.invoke(
    Type.Bool, 5256, false,
    arg(Type.Hash, model)
  )
end

-- void REQUEST_ADDITIONAL_COLLISION_AT_COORD(float x, float y, float z) // 0xC9156DC11411A9EA
--[[
Alias of REQUEST_COLLISION_AT_COORD.
--]]
function STREAMING.REQUEST_ADDITIONAL_COLLISION_AT_COORD(x, y, z)
  native.invoke(
    Type.Void, 5257, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- BOOL DOES_ANIM_DICT_EXIST(const char* animDict) // 0x2DA49C3B79856961
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function STREAMING.DOES_ANIM_DICT_EXIST(animDict)
  return native.invoke(
    Type.Bool, 5258, false,
    arg(Type.String, animDict)
  )
end

-- void REQUEST_ANIM_DICT(const char* animDict) // 0xD3BD40951412FEF6
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function STREAMING.REQUEST_ANIM_DICT(animDict)
  native.invoke(
    Type.Void, 5259, false,
    arg(Type.String, animDict)
  )
end

-- BOOL HAS_ANIM_DICT_LOADED(const char* animDict) // 0xD031A9162D01088C
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function STREAMING.HAS_ANIM_DICT_LOADED(animDict)
  return native.invoke(
    Type.Bool, 5260, false,
    arg(Type.String, animDict)
  )
end

-- void REMOVE_ANIM_DICT(const char* animDict) // 0xF66A602F829E2A06
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function STREAMING.REMOVE_ANIM_DICT(animDict)
  native.invoke(
    Type.Void, 5261, false,
    arg(Type.String, animDict)
  )
end

-- void REQUEST_ANIM_SET(const char* animSet) // 0x6EA47DAE7FAD0EED
--[[
Starts loading the specified animation set. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function STREAMING.REQUEST_ANIM_SET(animSet)
  native.invoke(
    Type.Void, 5262, false,
    arg(Type.String, animSet)
  )
end

-- BOOL HAS_ANIM_SET_LOADED(const char* animSet) // 0xC4EA073D86FB29B0
--[[
Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.

Animation set and clip set are synonymous.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function STREAMING.HAS_ANIM_SET_LOADED(animSet)
  return native.invoke(
    Type.Bool, 5263, false,
    arg(Type.String, animSet)
  )
end

-- void REMOVE_ANIM_SET(const char* animSet) // 0x16350528F93024B3
--[[
Unloads the specified animation set. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.

Animation set and clip set are synonymous.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function STREAMING.REMOVE_ANIM_SET(animSet)
  native.invoke(
    Type.Void, 5264, false,
    arg(Type.String, animSet)
  )
end

-- void REQUEST_CLIP_SET(const char* clipSet) // 0xD2A71E1A77418A49
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function STREAMING.REQUEST_CLIP_SET(clipSet)
  native.invoke(
    Type.Void, 5265, false,
    arg(Type.String, clipSet)
  )
end

-- BOOL HAS_CLIP_SET_LOADED(const char* clipSet) // 0x318234F4F3738AF3
--[[
Alias for HAS_ANIM_SET_LOADED.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function STREAMING.HAS_CLIP_SET_LOADED(clipSet)
  return native.invoke(
    Type.Bool, 5266, false,
    arg(Type.String, clipSet)
  )
end

-- void REMOVE_CLIP_SET(const char* clipSet) // 0x01F73A131C18CD94
--[[
Alias for REMOVE_ANIM_SET.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function STREAMING.REMOVE_CLIP_SET(clipSet)
  native.invoke(
    Type.Void, 5267, false,
    arg(Type.String, clipSet)
  )
end

-- void REQUEST_IPL(const char* iplName) // 0x41B4893843BBDB74
--[[
Exemple: REQUEST_IPL("TrevorsTrailerTrash");

Full list of IPLs and interior entity sets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ipls.json
--]]
function STREAMING.REQUEST_IPL(iplName)
  native.invoke(
    Type.Void, 5268, false,
    arg(Type.String, iplName)
  )
end

-- void REMOVE_IPL(const char* iplName) // 0xEE6C5AD3ECE0A82D
--[[
Removes an IPL from the map.

Full list of IPLs and interior entity sets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ipls.json

Example:
C#:
Function.Call(Hash.REMOVE_IPL, "trevorstrailertidy");

C++:
STREAMING::REMOVE_IPL("trevorstrailertidy");

iplName = Name of IPL you want to remove.
--]]
function STREAMING.REMOVE_IPL(iplName)
  native.invoke(
    Type.Void, 5269, false,
    arg(Type.String, iplName)
  )
end

-- BOOL IS_IPL_ACTIVE(const char* iplName) // 0x88A741E44A2B3495
--[[
Full list of IPLs and interior entity sets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ipls.json
--]]
function STREAMING.IS_IPL_ACTIVE(iplName)
  return native.invoke(
    Type.Bool, 5270, false,
    arg(Type.String, iplName)
  )
end

-- void SET_STREAMING(BOOL toggle) // 0x6E0C692677008888
function STREAMING.SET_STREAMING(toggle)
  native.invoke(
    Type.Void, 5271, false,
    arg(Type.Bool, toggle)
  )
end

-- void LOAD_GLOBAL_WATER_FILE(int waterType) // 0x7E3F55ED251B76D3
--[[
0 - default
1 - HeistIsland
--]]
function STREAMING.LOAD_GLOBAL_WATER_FILE(waterType)
  native.invoke(
    Type.Void, 5272, false,
    arg(Type.Int, waterType)
  )
end

-- int GET_GLOBAL_WATER_FILE() // 0xF741BD853611592D
function STREAMING.GET_GLOBAL_WATER_FILE()
  return native.invoke(
    Type.Int, 5273, false
  )
end

-- void SET_GAME_PAUSES_FOR_STREAMING(BOOL toggle) // 0x717CD6E6FAEBBEDC
function STREAMING.SET_GAME_PAUSES_FOR_STREAMING(toggle)
  native.invoke(
    Type.Void, 5274, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_REDUCE_PED_MODEL_BUDGET(BOOL toggle) // 0x77B5F9A36BF96710
function STREAMING.SET_REDUCE_PED_MODEL_BUDGET(toggle)
  native.invoke(
    Type.Void, 5275, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_REDUCE_VEHICLE_MODEL_BUDGET(BOOL toggle) // 0x80C527893080CCF3
function STREAMING.SET_REDUCE_VEHICLE_MODEL_BUDGET(toggle)
  native.invoke(
    Type.Void, 5276, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_DITCH_POLICE_MODELS(BOOL toggle) // 0x42CBE54462D92634
--[[
This is a NOP function. It does nothing at all.
--]]
function STREAMING.SET_DITCH_POLICE_MODELS(toggle)
  native.invoke(
    Type.Void, 5277, false,
    arg(Type.Bool, toggle)
  )
end

-- int GET_NUMBER_OF_STREAMING_REQUESTS() // 0x4060057271CEBC89
function STREAMING.GET_NUMBER_OF_STREAMING_REQUESTS()
  return native.invoke(
    Type.Int, 5278, false
  )
end

-- void REQUEST_PTFX_ASSET() // 0x944955FB2A3935C8
--[[
maps script name (thread + 0xD0) by lookup via scriptfx.dat - does nothing when script name is empty
--]]
function STREAMING.REQUEST_PTFX_ASSET()
  native.invoke(
    Type.Void, 5279, false
  )
end

-- BOOL HAS_PTFX_ASSET_LOADED() // 0xCA7D9B86ECA7481B
function STREAMING.HAS_PTFX_ASSET_LOADED()
  return native.invoke(
    Type.Bool, 5280, false
  )
end

-- void REMOVE_PTFX_ASSET() // 0x88C6814073DD4A73
function STREAMING.REMOVE_PTFX_ASSET()
  native.invoke(
    Type.Void, 5281, false
  )
end

-- void REQUEST_NAMED_PTFX_ASSET(const char* fxName) // 0xB80D8756B4668AB6
--[[
 From the b678d decompiled scripts:

 STREAMING::REQUEST_NAMED_PTFX_ASSET("core_snow");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("fm_mission_controler");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("proj_xmas_firework");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_apartment_mp");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_biolab_heist");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_fireworks");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_parachute");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_wheelsmoke");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_cig_plane");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_creator");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_tankbattle");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_ornate_heist");
 STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_prison_break_heist_station");
--]]
function STREAMING.REQUEST_NAMED_PTFX_ASSET(fxName)
  native.invoke(
    Type.Void, 5282, false,
    arg(Type.String, fxName)
  )
end

-- BOOL HAS_NAMED_PTFX_ASSET_LOADED(const char* fxName) // 0x8702416E512EC454
function STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(fxName)
  return native.invoke(
    Type.Bool, 5283, false,
    arg(Type.String, fxName)
  )
end

-- void REMOVE_NAMED_PTFX_ASSET(const char* fxName) // 0x5F61EBBE1A00F96D
function STREAMING.REMOVE_NAMED_PTFX_ASSET(fxName)
  native.invoke(
    Type.Void, 5284, false,
    arg(Type.String, fxName)
  )
end

-- void SET_VEHICLE_POPULATION_BUDGET(int p0) // 0xCB9E1EB3BE2AF4E9
function STREAMING.SET_VEHICLE_POPULATION_BUDGET(p0)
  native.invoke(
    Type.Void, 5285, false,
    arg(Type.Int, p0)
  )
end

-- void SET_PED_POPULATION_BUDGET(int p0) // 0x8C95333CFC3340F3
--[[
Control how many new (ambient?) peds will spawn in the game world.
Range for p0 seems to be 0-3, where 0 is none and 3 is the normal level.
--]]
function STREAMING.SET_PED_POPULATION_BUDGET(p0)
  native.invoke(
    Type.Void, 5286, false,
    arg(Type.Int, p0)
  )
end

-- void CLEAR_FOCUS() // 0x31B73D1EA9F01DA2
function STREAMING.CLEAR_FOCUS()
  native.invoke(
    Type.Void, 5287, false
  )
end

-- void SET_FOCUS_POS_AND_VEL(float x, float y, float z, float offsetX, float offsetY, float offsetZ) // 0xBB7454BAFF08FE25
--[[
Override the area where the camera will render the terrain.
p3, p4 and p5 are usually set to 0.0

--]]
function STREAMING.SET_FOCUS_POS_AND_VEL(x, y, z, offsetX, offsetY, offsetZ)
  native.invoke(
    Type.Void, 5288, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ)
  )
end

-- void SET_FOCUS_ENTITY(Entity entity) // 0x198F77705FA0931D
--[[
It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.
--]]
function STREAMING.SET_FOCUS_ENTITY(entity)
  native.invoke(
    Type.Void, 5289, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_FOCUS(Entity entity) // 0x2DDFF3FB9075D747
function STREAMING.IS_ENTITY_FOCUS(entity)
  return native.invoke(
    Type.Bool, 5290, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_RESTORE_FOCUS_ENTITY(Entity p0) // 0x0811381EF5062FEC
function STREAMING.SET_RESTORE_FOCUS_ENTITY(p0)
  native.invoke(
    Type.Void, 5291, false,
    arg(Type.Entity, p0)
  )
end

-- void SET_MAPDATACULLBOX_ENABLED(const char* name, BOOL toggle) // 0xAF12610C644A35C9
--[[
Possible p0 values:

"prologue"
"Prologue_Main"
--]]
function STREAMING.SET_MAPDATACULLBOX_ENABLED(name, toggle)
  native.invoke(
    Type.Void, 5292, false,
    arg(Type.String, name),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ALL_MAPDATA_CULLED(Any p0) // 0x4E52E752C76E7E7A
--[[
This native does absolutely nothing, just a nullsub
--]]
function STREAMING.SET_ALL_MAPDATA_CULLED(p0)
  native.invoke(
    Type.Void, 5293, false,
    arg(Type.Any, p0)
  )
end

-- int STREAMVOL_CREATE_SPHERE(float x, float y, float z, float rad, Any p4, Any p5) // 0x219C7B8D53E429FD
--[[
Always returns zero.
--]]
function STREAMING.STREAMVOL_CREATE_SPHERE(x, y, z, rad, p4, p5)
  return native.invoke(
    Type.Int, 5294, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, rad),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- int STREAMVOL_CREATE_FRUSTUM(float p0, float p1, float p2, float p3, float p4, float p5, float p6, Any p7, Any p8) // 0x1F3F018BC3AFA77C
--[[
Always returns zero.
--]]
function STREAMING.STREAMVOL_CREATE_FRUSTUM(p0, p1, p2, p3, p4, p5, p6, p7, p8)
  return native.invoke(
    Type.Int, 5295, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Any, p7),
    arg(Type.Any, p8)
  )
end

-- int STREAMVOL_CREATE_LINE(float p0, float p1, float p2, float p3, float p4, float p5, Any p6) // 0x0AD9710CEE2F590F
--[[
Always returns zero.
--]]
function STREAMING.STREAMVOL_CREATE_LINE(p0, p1, p2, p3, p4, p5, p6)
  return native.invoke(
    Type.Int, 5296, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Any, p6)
  )
end

-- void STREAMVOL_DELETE(Any unused) // 0x1EE7D8DF4425F053
function STREAMING.STREAMVOL_DELETE(unused)
  native.invoke(
    Type.Void, 5297, false,
    arg(Type.Any, unused)
  )
end

-- BOOL STREAMVOL_HAS_LOADED(Any unused) // 0x7D41E9D2D17C5B2D
function STREAMING.STREAMVOL_HAS_LOADED(unused)
  return native.invoke(
    Type.Bool, 5298, false,
    arg(Type.Any, unused)
  )
end

-- BOOL STREAMVOL_IS_VALID(Any unused) // 0x07C313F94746702C
function STREAMING.STREAMVOL_IS_VALID(unused)
  return native.invoke(
    Type.Bool, 5299, false,
    arg(Type.Any, unused)
  )
end

-- BOOL IS_STREAMVOL_ACTIVE() // 0xBC9823AB80A3DCAC
function STREAMING.IS_STREAMVOL_ACTIVE()
  return native.invoke(
    Type.Bool, 5300, false
  )
end

-- BOOL NEW_LOAD_SCENE_START(float posX, float posY, float posZ, float offsetX, float offsetY, float offsetZ, float radius, int p7) // 0x212A8D0D2BABFAC2
--[[
`radius` value is usually between `3f` and `7000f` in original 1868 scripts.
`p7` is 0, 1, 2, 3 or 4 used in decompiled scripts, 0 is by far the most common.
Returns True if success, used only 7 times in decompiled scripts of 1868
--]]
function STREAMING.NEW_LOAD_SCENE_START(posX, posY, posZ, offsetX, offsetY, offsetZ, radius, p7)
  return native.invoke(
    Type.Bool, 5301, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Float, radius),
    arg(Type.Int, p7)
  )
end

-- BOOL NEW_LOAD_SCENE_START_SPHERE(float x, float y, float z, float radius, Any p4) // 0xACCFB4ACF53551B0
function STREAMING.NEW_LOAD_SCENE_START_SPHERE(x, y, z, radius, p4)
  return native.invoke(
    Type.Bool, 5302, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Any, p4)
  )
end

-- void NEW_LOAD_SCENE_STOP() // 0xC197616D221FF4A4
function STREAMING.NEW_LOAD_SCENE_STOP()
  native.invoke(
    Type.Void, 5303, false
  )
end

-- BOOL IS_NEW_LOAD_SCENE_ACTIVE() // 0xA41A05B6CB741B85
function STREAMING.IS_NEW_LOAD_SCENE_ACTIVE()
  return native.invoke(
    Type.Bool, 5304, false
  )
end

-- BOOL IS_NEW_LOAD_SCENE_LOADED() // 0x01B8247A7A8B9AD1
function STREAMING.IS_NEW_LOAD_SCENE_LOADED()
  return native.invoke(
    Type.Bool, 5305, false
  )
end

-- BOOL IS_SAFE_TO_START_PLAYER_SWITCH() // 0x71E7B2E657449AAD
function STREAMING.IS_SAFE_TO_START_PLAYER_SWITCH()
  return native.invoke(
    Type.Bool, 5306, false
  )
end

-- void START_PLAYER_SWITCH(Ped from, Ped to, int flags, int switchType) // 0xFAA23F2CBA159D67
--[[
// this enum comes directly from R* so don't edit this
enum ePlayerSwitchTypes
{
  SWITCH_TYPE_AUTO,
 SWITCH_TYPE_LONG,
 SWITCH_TYPE_MEDIUM,
   SWITCH_TYPE_SHORT
};

Use GET_IDEAL_PLAYER_SWITCH_TYPE for the best switch type.

----------------------------------------------------

Examples from the decompiled scripts:

STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 0, 3);
STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 2050, 3);
STREAMING::START_PLAYER_SWITCH(PLAYER::PLAYER_PED_ID(), l_832._f3, 1024, 3);
STREAMING::START_PLAYER_SWITCH(g_141F27, PLAYER::PLAYER_PED_ID(), 513, v_14);

Note: DO NOT, use SWITCH_TYPE_LONG with flag 513. It leaves you stuck in the clouds. You'll have to call STOP_PLAYER_SWITCH() to return to your ped.

Flag 8 w/ SWITCH_TYPE_LONG will zoom out 3 steps, then zoom in 2/3 steps and stop on the 3rd and just hang there.
Flag 8 w/ SWITCH_TYPE_MEDIUM will zoom out 1 step, and just hang there.
--]]
function STREAMING.START_PLAYER_SWITCH(from, to, flags, switchType)
  native.invoke(
    Type.Void, 5307, false,
    arg(Type.Ped, from),
    arg(Type.Ped, to),
    arg(Type.Int, flags),
    arg(Type.Int, switchType)
  )
end

-- void STOP_PLAYER_SWITCH() // 0x95C0A5BBDC189AA1
function STREAMING.STOP_PLAYER_SWITCH()
  native.invoke(
    Type.Void, 5308, false
  )
end

-- BOOL IS_PLAYER_SWITCH_IN_PROGRESS() // 0xD9D2CFFF49FAB35F
--[[
Returns true if the player is currently switching, false otherwise.
(When the camera is in the sky moving from Trevor to Franklin for example)
--]]
function STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 5309, false
  )
end

-- int GET_PLAYER_SWITCH_TYPE() // 0xB3C94A90D9FC9E62
function STREAMING.GET_PLAYER_SWITCH_TYPE()
  return native.invoke(
    Type.Int, 5310, false
  )
end

-- int GET_IDEAL_PLAYER_SWITCH_TYPE(float x1, float y1, float z1, float x2, float y2, float z2) // 0xB5D7B26B45720E05
--[[
x1, y1, z1 -- Coords of your ped model
x2, y2, z2 -- Coords of the ped you want to switch to
--]]
function STREAMING.GET_IDEAL_PLAYER_SWITCH_TYPE(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Int, 5311, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- int GET_PLAYER_SWITCH_STATE() // 0x470555300D10B2A5
function STREAMING.GET_PLAYER_SWITCH_STATE()
  return native.invoke(
    Type.Int, 5312, false
  )
end

-- int GET_PLAYER_SHORT_SWITCH_STATE() // 0x20F898A5D9782800
function STREAMING.GET_PLAYER_SHORT_SWITCH_STATE()
  return native.invoke(
    Type.Int, 5313, false
  )
end

-- void SET_PLAYER_SHORT_SWITCH_STYLE(int p0) // 0x5F2013F8BC24EE69
function STREAMING.SET_PLAYER_SHORT_SWITCH_STYLE(p0)
  native.invoke(
    Type.Void, 5314, false,
    arg(Type.Int, p0)
  )
end

-- int GET_PLAYER_SWITCH_JUMP_CUT_INDEX() // 0x78C0D93253149435
function STREAMING.GET_PLAYER_SWITCH_JUMP_CUT_INDEX()
  return native.invoke(
    Type.Int, 5315, false
  )
end

-- void SET_PLAYER_SWITCH_OUTRO(float cameraCoordX, float cameraCoordY, float cameraCoordZ, float camRotationX, float camRotationY, float camRotationZ, float camFov, float camFarClip, int rotationOrder) // 0xC208B673CE446B61
function STREAMING.SET_PLAYER_SWITCH_OUTRO(cameraCoordX, cameraCoordY, cameraCoordZ, camRotationX, camRotationY, camRotationZ, camFov, camFarClip, rotationOrder)
  native.invoke(
    Type.Void, 5316, false,
    arg(Type.Float, cameraCoordX),
    arg(Type.Float, cameraCoordY),
    arg(Type.Float, cameraCoordZ),
    arg(Type.Float, camRotationX),
    arg(Type.Float, camRotationY),
    arg(Type.Float, camRotationZ),
    arg(Type.Float, camFov),
    arg(Type.Float, camFarClip),
    arg(Type.Int, rotationOrder)
  )
end

-- void SET_PLAYER_SWITCH_ESTABLISHING_SHOT(const char* name) // 0x0FDE9DBFC0A6BC65
--[[
All names can be found in playerswitchestablishingshots.meta
--]]
function STREAMING.SET_PLAYER_SWITCH_ESTABLISHING_SHOT(name)
  native.invoke(
    Type.Void, 5317, false,
    arg(Type.String, name)
  )
end

-- void ALLOW_PLAYER_SWITCH_PAN() // 0x43D1680C6D19A8E9
function STREAMING.ALLOW_PLAYER_SWITCH_PAN()
  native.invoke(
    Type.Void, 5318, false
  )
end

-- void ALLOW_PLAYER_SWITCH_OUTRO() // 0x74DE2E8739086740
function STREAMING.ALLOW_PLAYER_SWITCH_OUTRO()
  native.invoke(
    Type.Void, 5319, false
  )
end

-- void ALLOW_PLAYER_SWITCH_ASCENT() // 0x8E2A065ABDAE6994
function STREAMING.ALLOW_PLAYER_SWITCH_ASCENT()
  native.invoke(
    Type.Void, 5320, false
  )
end

-- void ALLOW_PLAYER_SWITCH_DESCENT() // 0xAD5FDF34B81BFE79
function STREAMING.ALLOW_PLAYER_SWITCH_DESCENT()
  native.invoke(
    Type.Void, 5321, false
  )
end

-- BOOL IS_SWITCH_READY_FOR_DESCENT() // 0xDFA80CB25D0A19B3
function STREAMING.IS_SWITCH_READY_FOR_DESCENT()
  return native.invoke(
    Type.Bool, 5322, false
  )
end

-- void ENABLE_SWITCH_PAUSE_BEFORE_DESCENT() // 0xD4793DFF3AF2ABCD
function STREAMING.ENABLE_SWITCH_PAUSE_BEFORE_DESCENT()
  native.invoke(
    Type.Void, 5323, false
  )
end

-- void DISABLE_SWITCH_OUTRO_FX() // 0xBD605B8E0E18B3BB
function STREAMING.DISABLE_SWITCH_OUTRO_FX()
  native.invoke(
    Type.Void, 5324, false
  )
end

-- void SWITCH_TO_MULTI_FIRSTPART(Ped ped, int flags, int switchType) // 0xAAB3200ED59016BC
--[[
doesn't act normally when used on mount chilliad
Flags is a bitflag:
2^n - Enabled Functionality:
0 - Skip camera rotate up
3 - Wait for SET_PLAYER_SWITCH_ESTABLISHING_SHOT / hang at last step. You will still need to run 0x74DE2E8739086740 to exit "properly" and then STOP_PLAYER_SWITCH
6 - Invert Switch Direction (false = out, true = in)
8 - Hang above ped

switchType: 0 - 3
0: 1 step towards ped
1: 3 steps out from ped
2: 1 step out from ped
3: 1 step towards ped
--]]
function STREAMING.SWITCH_TO_MULTI_FIRSTPART(ped, flags, switchType)
  native.invoke(
    Type.Void, 5325, false,
    arg(Type.Ped, ped),
    arg(Type.Int, flags),
    arg(Type.Int, switchType)
  )
end

-- void SWITCH_TO_MULTI_SECONDPART(Ped ped) // 0xD8295AF639FD9CB8
function STREAMING.SWITCH_TO_MULTI_SECONDPART(ped)
  native.invoke(
    Type.Void, 5326, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_SWITCH_TO_MULTI_FIRSTPART_FINISHED() // 0x933BBEEB8C61B5F4
function STREAMING.IS_SWITCH_TO_MULTI_FIRSTPART_FINISHED()
  return native.invoke(
    Type.Bool, 5327, false
  )
end

-- int GET_PLAYER_SWITCH_INTERP_OUT_DURATION() // 0x08C2D6C52A3104BB
function STREAMING.GET_PLAYER_SWITCH_INTERP_OUT_DURATION()
  return native.invoke(
    Type.Int, 5328, false
  )
end

-- int GET_PLAYER_SWITCH_INTERP_OUT_CURRENT_TIME() // 0x5B48A06DD0E792A5
function STREAMING.GET_PLAYER_SWITCH_INTERP_OUT_CURRENT_TIME()
  return native.invoke(
    Type.Int, 5329, false
  )
end

-- BOOL IS_SWITCH_SKIPPING_DESCENT() // 0x5B74EA8CFD5E3E7E
function STREAMING.IS_SWITCH_SKIPPING_DESCENT()
  return native.invoke(
    Type.Bool, 5330, false
  )
end

-- void SET_SCENE_STREAMING_TRACKS_CAM_POS_THIS_FRAME() // 0x1E9057A74FD73E23
function STREAMING.SET_SCENE_STREAMING_TRACKS_CAM_POS_THIS_FRAME()
  native.invoke(
    Type.Void, 5331, false
  )
end

-- float GET_LODSCALE() // 0x0C15B0E443B2349D
function STREAMING.GET_LODSCALE()
  return native.invoke(
    Type.Float, 5332, false
  )
end

-- void OVERRIDE_LODSCALE_THIS_FRAME(float scaling) // 0xA76359FC80B2438E
--[[
This allows you to override "extended distance scaling" setting. Needs to be called each frame.
Max scaling seems to be 200.0, normal is 1.0
See https://gfycat.com/DetailedHauntingIncatern
--]]
function STREAMING.OVERRIDE_LODSCALE_THIS_FRAME(scaling)
  native.invoke(
    Type.Void, 5333, false,
    arg(Type.Float, scaling)
  )
end

-- void REMAP_LODSCALE_RANGE_THIS_FRAME(float p0, float p1, float p2, float p3) // 0xBED8CA5FF5E04113
function STREAMING.REMAP_LODSCALE_RANGE_THIS_FRAME(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5334, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void SUPPRESS_HD_MAP_STREAMING_THIS_FRAME() // 0x472397322E92A856
function STREAMING.SUPPRESS_HD_MAP_STREAMING_THIS_FRAME()
  native.invoke(
    Type.Void, 5335, false
  )
end

-- void SET_RENDER_HD_ONLY(BOOL toggle) // 0x40AEFD1A244741F2
function STREAMING.SET_RENDER_HD_ONLY(toggle)
  native.invoke(
    Type.Void, 5336, false,
    arg(Type.Bool, toggle)
  )
end

-- void FORCE_ALLOW_TIME_BASED_FADING_THIS_FRAME() // 0x03F1A106BDA7DD3E
function STREAMING.FORCE_ALLOW_TIME_BASED_FADING_THIS_FRAME()
  native.invoke(
    Type.Void, 5337, false
  )
end

-- void IPL_GROUP_SWAP_START(const char* iplName1, const char* iplName2) // 0x95A7DABDDBB78AE7
function STREAMING.IPL_GROUP_SWAP_START(iplName1, iplName2)
  native.invoke(
    Type.Void, 5338, false,
    arg(Type.String, iplName1),
    arg(Type.String, iplName2)
  )
end

-- void IPL_GROUP_SWAP_CANCEL() // 0x63EB2B972A218CAC
function STREAMING.IPL_GROUP_SWAP_CANCEL()
  native.invoke(
    Type.Void, 5339, false
  )
end

-- BOOL IPL_GROUP_SWAP_IS_READY() // 0xFB199266061F820A
function STREAMING.IPL_GROUP_SWAP_IS_READY()
  return native.invoke(
    Type.Bool, 5340, false
  )
end

-- void IPL_GROUP_SWAP_FINISH() // 0xF4A0DADB70F57FA6
function STREAMING.IPL_GROUP_SWAP_FINISH()
  native.invoke(
    Type.Void, 5341, false
  )
end

-- BOOL IPL_GROUP_SWAP_IS_ACTIVE() // 0x5068F488DDB54DD8
function STREAMING.IPL_GROUP_SWAP_IS_ACTIVE()
  return native.invoke(
    Type.Bool, 5342, false
  )
end

-- void PREFETCH_SRL(const char* srl) // 0x3D245789CE12982C
--[[
This native is used to attribute the SRL that BEGIN_SRL is going to load. This is usually used for 'in-game' cinematics (not cutscenes but camera stuff) instead of SET_FOCUS_POS_AND_VEL because it loads a specific area of the map which is pretty useful when the camera moves from distant areas.
For instance, GTA:O opening cutscene.
https://pastebin.com/2EeKVeLA : a list of SRL found in srllist.meta
https://pastebin.com/zd9XYUWY here is the content of a SRL file opened with codewalker.
--]]
function STREAMING.PREFETCH_SRL(srl)
  native.invoke(
    Type.Void, 5343, false,
    arg(Type.String, srl)
  )
end

-- BOOL IS_SRL_LOADED() // 0xD0263801A4C5B0BB
--[[
Returns true when the srl from BEGIN_SRL is loaded.
--]]
function STREAMING.IS_SRL_LOADED()
  return native.invoke(
    Type.Bool, 5344, false
  )
end

-- void BEGIN_SRL() // 0x9BADDC94EF83B823
function STREAMING.BEGIN_SRL()
  native.invoke(
    Type.Void, 5345, false
  )
end

-- void END_SRL() // 0x0A41540E63C9EE17
--[[
Clear the current srl and stop rendering the area selected by PREFETCH_SRL and started with BEGIN_SRL.
--]]
function STREAMING.END_SRL()
  native.invoke(
    Type.Void, 5346, false
  )
end

-- void SET_SRL_TIME(float p0) // 0xA74A541C6884E7B8
function STREAMING.SET_SRL_TIME(p0)
  native.invoke(
    Type.Void, 5347, false,
    arg(Type.Float, p0)
  )
end

-- void SET_SRL_POST_CUTSCENE_CAMERA(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0xEF39EE20C537E98C
function STREAMING.SET_SRL_POST_CUTSCENE_CAMERA(p0, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 5348, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void SET_SRL_READAHEAD_TIMES(Any p0, Any p1, Any p2, Any p3) // 0xBEB2D9A1D9A8F55A
function STREAMING.SET_SRL_READAHEAD_TIMES(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5349, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void SET_SRL_LONG_JUMP_MODE(BOOL p0) // 0x20C6C7E4EB082A7F
function STREAMING.SET_SRL_LONG_JUMP_MODE(p0)
  native.invoke(
    Type.Void, 5350, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_SRL_FORCE_PRESTREAM(Any p0) // 0xF8155A7F03DDFC8E
function STREAMING.SET_SRL_FORCE_PRESTREAM(p0)
  native.invoke(
    Type.Void, 5351, false,
    arg(Type.Any, p0)
  )
end

-- void SET_HD_AREA(float x, float y, float z, float radius) // 0xB85F26619073E775
function STREAMING.SET_HD_AREA(x, y, z, radius)
  native.invoke(
    Type.Void, 5352, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void CLEAR_HD_AREA() // 0xCE58B1CFB9290813
function STREAMING.CLEAR_HD_AREA()
  native.invoke(
    Type.Void, 5353, false
  )
end

-- void INIT_CREATOR_BUDGET() // 0xB5A4DB34FE89B88A
function STREAMING.INIT_CREATOR_BUDGET()
  native.invoke(
    Type.Void, 5354, false
  )
end

-- void SHUTDOWN_CREATOR_BUDGET() // 0xCCE26000E9A6FAD7
function STREAMING.SHUTDOWN_CREATOR_BUDGET()
  native.invoke(
    Type.Void, 5355, false
  )
end

-- BOOL ADD_MODEL_TO_CREATOR_BUDGET(Hash modelHash) // 0x0BC3144DEB678666
function STREAMING.ADD_MODEL_TO_CREATOR_BUDGET(modelHash)
  return native.invoke(
    Type.Bool, 5356, false,
    arg(Type.Hash, modelHash)
  )
end

-- void REMOVE_MODEL_FROM_CREATOR_BUDGET(Hash modelHash) // 0xF086AD9354FAC3A3
function STREAMING.REMOVE_MODEL_FROM_CREATOR_BUDGET(modelHash)
  native.invoke(
    Type.Void, 5357, false,
    arg(Type.Hash, modelHash)
  )
end

-- float GET_USED_CREATOR_BUDGET() // 0x3D3D8B3BE5A83D35
--[[
0.0 = no memory used
1.0 = all memory used

Maximum model memory (as defined in common\data\missioncreatordata.meta) is 100 MiB
--]]
function STREAMING.GET_USED_CREATOR_BUDGET()
  return native.invoke(
    Type.Float, 5358, false
  )
end

-- void SET_ISLAND_ENABLED(const char* name, BOOL toggle) // 0x9A9D1BA639675CF1
--[[
Enables the specified island. For more information, see islandhopper.meta
--]]
function STREAMING.SET_ISLAND_ENABLED(name, toggle)
  native.invoke(
    Type.Void, 5359, false,
    arg(Type.String, name),
    arg(Type.Bool, toggle)
  )
end


