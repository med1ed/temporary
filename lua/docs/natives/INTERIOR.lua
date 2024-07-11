INTERIOR = {}

-- float GET_INTERIOR_HEADING(Interior interior) // 0xF49B58631D9E22D9
function INTERIOR.GET_INTERIOR_HEADING(interior)
  return native.invoke(
    Type.Float, 1908, false,
    arg(Type.Interior, interior)
  )
end

-- void GET_INTERIOR_LOCATION_AND_NAMEHASH(Interior interior, Vector3* position, Hash* nameHash) // 0x252BDC06B73FA6EA
function INTERIOR.GET_INTERIOR_LOCATION_AND_NAMEHASH(interior, position, nameHash)
  native.invoke(
    Type.Void, 1909, true,
    arg(Type.Interior, interior),
    ref(Type.Vector3, position),
    ref(Type.Hash, nameHash)
  )
end

-- int GET_INTERIOR_GROUP_ID(Interior interior) // 0xE4A84ABF135EF91A
--[[
Returns the group ID of the specified interior.
0 = default
1 = subway station, subway tracks, sewers
3 = train tunnel under mirror park
5 = tunnel near del perro
6 = train tunnel near chilliad
7 = train tunnel near josiah
8 = train tunnel in sandy shores
9 = braddock tunnel (near chilliad)
12 = tunnel under fort zancudo
14 = train tunnel under cypress flats
18 = rockford plaza parking garage
19 = arcadius parking garage
20 = union depository parking garage
21 = fib parking garage
--]]
function INTERIOR.GET_INTERIOR_GROUP_ID(interior)
  return native.invoke(
    Type.Int, 1910, false,
    arg(Type.Interior, interior)
  )
end

-- Vector3 GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS(Interior interior, float x, float y, float z) // 0x9E3B3E6D66F6E22F
function INTERIOR.GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS(interior, x, y, z)
  return native.invoke(
    Type.Vector3, 1911, false,
    arg(Type.Interior, interior),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- BOOL IS_INTERIOR_SCENE() // 0xBC72B5D7A1CBD54D
function INTERIOR.IS_INTERIOR_SCENE()
  return native.invoke(
    Type.Bool, 1912, false
  )
end

-- BOOL IS_VALID_INTERIOR(Interior interior) // 0x26B0E73D7EAAF4D3
function INTERIOR.IS_VALID_INTERIOR(interior)
  return native.invoke(
    Type.Bool, 1913, false,
    arg(Type.Interior, interior)
  )
end

-- void CLEAR_ROOM_FOR_ENTITY(Entity entity) // 0xB365FC0C4E27FFA7
function INTERIOR.CLEAR_ROOM_FOR_ENTITY(entity)
  native.invoke(
    Type.Void, 1914, false,
    arg(Type.Entity, entity)
  )
end

-- void FORCE_ROOM_FOR_ENTITY(Entity entity, Interior interior, Hash roomHashKey) // 0x52923C4710DD9907
function INTERIOR.FORCE_ROOM_FOR_ENTITY(entity, interior, roomHashKey)
  native.invoke(
    Type.Void, 1915, false,
    arg(Type.Entity, entity),
    arg(Type.Interior, interior),
    arg(Type.Hash, roomHashKey)
  )
end

-- Hash GET_ROOM_KEY_FROM_ENTITY(Entity entity) // 0x47C2A06D4F5F424B
--[[
Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.
--]]
function INTERIOR.GET_ROOM_KEY_FROM_ENTITY(entity)
  return native.invoke(
    Type.Hash, 1916, false,
    arg(Type.Entity, entity)
  )
end

-- Hash GET_KEY_FOR_ENTITY_IN_ROOM(Entity entity) // 0x399685DB942336BC
--[[
Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY
--]]
function INTERIOR.GET_KEY_FOR_ENTITY_IN_ROOM(entity)
  return native.invoke(
    Type.Hash, 1917, false,
    arg(Type.Entity, entity)
  )
end

-- Interior GET_INTERIOR_FROM_ENTITY(Entity entity) // 0x2107BA504071A6BB
--[[
Returns the handle of the interior that the entity is in. Returns 0 if outside.
--]]
function INTERIOR.GET_INTERIOR_FROM_ENTITY(entity)
  return native.invoke(
    Type.Interior, 1918, false,
    arg(Type.Entity, entity)
  )
end

-- void RETAIN_ENTITY_IN_INTERIOR(Entity entity, Interior interior) // 0x82EBB79E258FA2B7
function INTERIOR.RETAIN_ENTITY_IN_INTERIOR(entity, interior)
  native.invoke(
    Type.Void, 1919, false,
    arg(Type.Entity, entity),
    arg(Type.Interior, interior)
  )
end

-- void CLEAR_INTERIOR_STATE_OF_ENTITY(Entity entity) // 0x85D5422B2039A70D
--[[
Immediately removes entity from an interior. Like sets entity to `limbo` room.
--]]
function INTERIOR.CLEAR_INTERIOR_STATE_OF_ENTITY(entity)
  native.invoke(
    Type.Void, 1920, false,
    arg(Type.Entity, entity)
  )
end

-- void FORCE_ACTIVATING_TRACKING_ON_ENTITY(Any p0, Any p1) // 0x38C1CB1CB119A016
function INTERIOR.FORCE_ACTIVATING_TRACKING_ON_ENTITY(p0, p1)
  native.invoke(
    Type.Void, 1921, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void FORCE_ROOM_FOR_GAME_VIEWPORT(int interiorID, Hash roomHashKey) // 0x920D853F3E17F1DA
function INTERIOR.FORCE_ROOM_FOR_GAME_VIEWPORT(interiorID, roomHashKey)
  native.invoke(
    Type.Void, 1922, false,
    arg(Type.Int, interiorID),
    arg(Type.Hash, roomHashKey)
  )
end

-- void SET_ROOM_FOR_GAME_VIEWPORT_BY_NAME(const char* roomName) // 0xAF348AFCB575A441
--[[
Example of use (carmod_shop)
INTERIOR::SET_ROOM_FOR_GAME_VIEWPORT_BY_NAME("V_CarModRoom");
--]]
function INTERIOR.SET_ROOM_FOR_GAME_VIEWPORT_BY_NAME(roomName)
  native.invoke(
    Type.Void, 1923, false,
    arg(Type.String, roomName)
  )
end

-- void SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY(Hash roomHashKey) // 0x405DC2AEF6AF95B9
--[[
Usage: INTERIOR::SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY(INTERIOR::GET_KEY_FOR_ENTITY_IN_ROOM(PLAYER::PLAYER_PED_ID()));
--]]
function INTERIOR.SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY(roomHashKey)
  native.invoke(
    Type.Void, 1924, false,
    arg(Type.Hash, roomHashKey)
  )
end

-- Hash GET_ROOM_KEY_FOR_GAME_VIEWPORT() // 0xA6575914D2A0B450
function INTERIOR.GET_ROOM_KEY_FOR_GAME_VIEWPORT()
  return native.invoke(
    Type.Hash, 1925, false
  )
end

-- void CLEAR_ROOM_FOR_GAME_VIEWPORT() // 0x23B59D8912F94246
function INTERIOR.CLEAR_ROOM_FOR_GAME_VIEWPORT()
  native.invoke(
    Type.Void, 1926, false
  )
end

-- Interior GET_INTERIOR_FROM_PRIMARY_VIEW() // 0xE7D267EC6CA966C3
--[[
Returns the current interior id from gameplay camera
--]]
function INTERIOR.GET_INTERIOR_FROM_PRIMARY_VIEW()
  return native.invoke(
    Type.Interior, 1927, false
  )
end

-- Interior GET_INTERIOR_AT_COORDS(float x, float y, float z) // 0xB0F7F8663821D9C3
--[[
Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.

Example for VB.NET
Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)
--]]
function INTERIOR.GET_INTERIOR_AT_COORDS(x, y, z)
  return native.invoke(
    Type.Interior, 1928, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME(Pickup pickup, const char* roomName) // 0x3F6167F351168730
function INTERIOR.ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME(pickup, roomName)
  native.invoke(
    Type.Void, 1929, false,
    arg(Type.Pickup, pickup),
    arg(Type.String, roomName)
  )
end

-- void PIN_INTERIOR_IN_MEMORY(Interior interior) // 0x2CA429C029CCF247
function INTERIOR.PIN_INTERIOR_IN_MEMORY(interior)
  native.invoke(
    Type.Void, 1930, false,
    arg(Type.Interior, interior)
  )
end

-- void UNPIN_INTERIOR(Interior interior) // 0x261CCE7EED010641
--[[
Does something similar to INTERIOR::DISABLE_INTERIOR.

You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside. 
--]]
function INTERIOR.UNPIN_INTERIOR(interior)
  native.invoke(
    Type.Void, 1931, false,
    arg(Type.Interior, interior)
  )
end

-- BOOL IS_INTERIOR_READY(Interior interior) // 0x6726BDCCC1932F0E
function INTERIOR.IS_INTERIOR_READY(interior)
  return native.invoke(
    Type.Bool, 1932, false,
    arg(Type.Interior, interior)
  )
end

-- BOOL SET_INTERIOR_IN_USE(Interior interior) // 0x4C2330E61D3DEB56
--[[
Only used once in the entire game scripts.
Does not actually return anything.
--]]
function INTERIOR.SET_INTERIOR_IN_USE(interior)
  return native.invoke(
    Type.Bool, 1933, false,
    arg(Type.Interior, interior)
  )
end

-- Interior GET_INTERIOR_AT_COORDS_WITH_TYPE(float x, float y, float z, const char* interiorType) // 0x05B7A89BD78797FC
--[[
Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.

Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))

Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.

Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.
--]]
function INTERIOR.GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interiorType)
  return native.invoke(
    Type.Interior, 1934, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.String, interiorType)
  )
end

-- Interior GET_INTERIOR_AT_COORDS_WITH_TYPEHASH(float x, float y, float z, Hash typeHash) // 0xF0F77ADB9F67E79D
--[[
Hashed version of GET_INTERIOR_AT_COORDS_WITH_TYPE
--]]
function INTERIOR.GET_INTERIOR_AT_COORDS_WITH_TYPEHASH(x, y, z, typeHash)
  return native.invoke(
    Type.Interior, 1935, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Hash, typeHash)
  )
end

-- void ACTIVATE_INTERIOR_GROUPS_USING_CAMERA() // 0x483ACA1176CA93F1
function INTERIOR.ACTIVATE_INTERIOR_GROUPS_USING_CAMERA()
  native.invoke(
    Type.Void, 1936, false
  )
end

-- BOOL IS_COLLISION_MARKED_OUTSIDE(float x, float y, float z) // 0xEEA5AC2EDA7C33E8
--[[
Returns true if the collision at the specified coords is marked as being outside (false if there's an interior)
--]]
function INTERIOR.IS_COLLISION_MARKED_OUTSIDE(x, y, z)
  return native.invoke(
    Type.Bool, 1937, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- Interior GET_INTERIOR_FROM_COLLISION(float x, float y, float z) // 0xEC4CF9FCB29A4424
function INTERIOR.GET_INTERIOR_FROM_COLLISION(x, y, z)
  return native.invoke(
    Type.Interior, 1938, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void ENABLE_STADIUM_PROBES_THIS_FRAME(BOOL toggle) // 0x7ECDF98587E92DEC
function INTERIOR.ENABLE_STADIUM_PROBES_THIS_FRAME(toggle)
  native.invoke(
    Type.Void, 1939, false,
    arg(Type.Bool, toggle)
  )
end

-- void ACTIVATE_INTERIOR_ENTITY_SET(Interior interior, const char* entitySetName) // 0x55E86AF2712B36A1
--[[
More info: http://gtaforums.com/topic/836367-adding-props-to-interiors/

Full list of IPLs and interior entity sets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ipls.json
--]]
function INTERIOR.ACTIVATE_INTERIOR_ENTITY_SET(interior, entitySetName)
  native.invoke(
    Type.Void, 1940, false,
    arg(Type.Interior, interior),
    arg(Type.String, entitySetName)
  )
end

-- void DEACTIVATE_INTERIOR_ENTITY_SET(Interior interior, const char* entitySetName) // 0x420BD37289EEE162
--[[
Full list of IPLs and interior entity sets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ipls.json
--]]
function INTERIOR.DEACTIVATE_INTERIOR_ENTITY_SET(interior, entitySetName)
  native.invoke(
    Type.Void, 1941, false,
    arg(Type.Interior, interior),
    arg(Type.String, entitySetName)
  )
end

-- BOOL IS_INTERIOR_ENTITY_SET_ACTIVE(Interior interior, const char* entitySetName) // 0x35F7DD45E8C0A16D
--[[
Full list of IPLs and interior entity sets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ipls.json
--]]
function INTERIOR.IS_INTERIOR_ENTITY_SET_ACTIVE(interior, entitySetName)
  return native.invoke(
    Type.Bool, 1942, false,
    arg(Type.Interior, interior),
    arg(Type.String, entitySetName)
  )
end

-- void SET_INTERIOR_ENTITY_SET_TINT_INDEX(Interior interior, const char* entitySetName, int color) // 0xC1F1920BAF281317
--[[
Full list of IPLs and interior entity sets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ipls.json
--]]
function INTERIOR.SET_INTERIOR_ENTITY_SET_TINT_INDEX(interior, entitySetName, color)
  native.invoke(
    Type.Void, 1943, false,
    arg(Type.Interior, interior),
    arg(Type.String, entitySetName),
    arg(Type.Int, color)
  )
end

-- void REFRESH_INTERIOR(Interior interior) // 0x41F37C3427C75AE0
function INTERIOR.REFRESH_INTERIOR(interior)
  native.invoke(
    Type.Void, 1944, false,
    arg(Type.Interior, interior)
  )
end

-- void ENABLE_EXTERIOR_CULL_MODEL_THIS_FRAME(Hash mapObjectHash) // 0xA97F257D0151A6AB
--[[
This is the native that is used to hide the exterior of GTA Online apartment buildings when you are inside an apartment.

More info: http://gtaforums.com/topic/836301-hiding-gta-online-apartment-exteriors/
--]]
function INTERIOR.ENABLE_EXTERIOR_CULL_MODEL_THIS_FRAME(mapObjectHash)
  native.invoke(
    Type.Void, 1945, false,
    arg(Type.Hash, mapObjectHash)
  )
end

-- void ENABLE_SHADOW_CULL_MODEL_THIS_FRAME(Hash mapObjectHash) // 0x50C375537449F369
function INTERIOR.ENABLE_SHADOW_CULL_MODEL_THIS_FRAME(mapObjectHash)
  native.invoke(
    Type.Void, 1946, false,
    arg(Type.Hash, mapObjectHash)
  )
end

-- void DISABLE_INTERIOR(Interior interior, BOOL toggle) // 0x6170941419D7D8EC
--[[
Example: 
This removes the interior from the strip club and when trying to walk inside the player just falls:

INTERIOR::DISABLE_INTERIOR(118018, true);
--]]
function INTERIOR.DISABLE_INTERIOR(interior, toggle)
  native.invoke(
    Type.Void, 1947, false,
    arg(Type.Interior, interior),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_INTERIOR_DISABLED(Interior interior) // 0xBC5115A5A939DD15
function INTERIOR.IS_INTERIOR_DISABLED(interior)
  return native.invoke(
    Type.Bool, 1948, false,
    arg(Type.Interior, interior)
  )
end

-- void CAP_INTERIOR(Interior interior, BOOL toggle) // 0xD9175F941610DB54
--[[
Does something similar to INTERIOR::DISABLE_INTERIOR
--]]
function INTERIOR.CAP_INTERIOR(interior, toggle)
  native.invoke(
    Type.Void, 1949, false,
    arg(Type.Interior, interior),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_INTERIOR_CAPPED(Interior interior) // 0x92BAC8ACF88CEC26
function INTERIOR.IS_INTERIOR_CAPPED(interior)
  return native.invoke(
    Type.Bool, 1950, false,
    arg(Type.Interior, interior)
  )
end

-- void DISABLE_METRO_SYSTEM(BOOL toggle) // 0x9E6542F0CE8E70A3
function INTERIOR.DISABLE_METRO_SYSTEM(toggle)
  native.invoke(
    Type.Void, 1951, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_IS_EXTERIOR_ONLY(Entity entity, BOOL toggle) // 0x7241CCB7D020DB69
--[[
Jenkins hash _might_ be 0xFC227584.
--]]
function INTERIOR.SET_IS_EXTERIOR_ONLY(entity, toggle)
  native.invoke(
    Type.Void, 1952, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end


