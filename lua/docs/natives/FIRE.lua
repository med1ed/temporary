FIRE = {}

-- FireId START_SCRIPT_FIRE(float X, float Y, float Z, int maxChildren, BOOL isGasFire) // 0x6B83617E04503888
--[[
Starts a fire:

xyz: Location of fire
maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing.
isGasFire: Whether or not the fire is powered by gasoline.
--]]
function FIRE.START_SCRIPT_FIRE(X, Y, Z, maxChildren, isGasFire)
  return native.invoke(
    Type.Fireid, 977, false,
    arg(Type.Float, X),
    arg(Type.Float, Y),
    arg(Type.Float, Z),
    arg(Type.Int, maxChildren),
    arg(Type.Bool, isGasFire)
  )
end

-- void REMOVE_SCRIPT_FIRE(FireId fireHandle) // 0x7FF548385680673F
function FIRE.REMOVE_SCRIPT_FIRE(fireHandle)
  native.invoke(
    Type.Void, 978, false,
    arg(Type.Fireid, fireHandle)
  )
end

-- FireId START_ENTITY_FIRE(Entity entity) // 0xF6A9D9708F6F23DF
function FIRE.START_ENTITY_FIRE(entity)
  return native.invoke(
    Type.Fireid, 979, false,
    arg(Type.Entity, entity)
  )
end

-- void STOP_ENTITY_FIRE(Entity entity) // 0x7F0DD2EBBB651AFF
function FIRE.STOP_ENTITY_FIRE(entity)
  native.invoke(
    Type.Void, 980, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_ON_FIRE(Entity entity) // 0x28D3FED7190D3A0B
function FIRE.IS_ENTITY_ON_FIRE(entity)
  return native.invoke(
    Type.Bool, 981, false,
    arg(Type.Entity, entity)
  )
end

-- int GET_NUMBER_OF_FIRES_IN_RANGE(float x, float y, float z, float radius) // 0x50CAD495A460B305
function FIRE.GET_NUMBER_OF_FIRES_IN_RANGE(x, y, z, radius)
  return native.invoke(
    Type.Int, 982, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void SET_FLAMMABILITY_MULTIPLIER(float p0) // 0x8F390AC4155099BA
function FIRE.SET_FLAMMABILITY_MULTIPLIER(p0)
  native.invoke(
    Type.Void, 983, false,
    arg(Type.Float, p0)
  )
end

-- void STOP_FIRE_IN_RANGE(float x, float y, float z, float radius) // 0x056A8A219B8E829F
function FIRE.STOP_FIRE_IN_RANGE(x, y, z, radius)
  native.invoke(
    Type.Void, 984, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- BOOL GET_CLOSEST_FIRE_POS(Vector3* outPosition, float x, float y, float z) // 0x352A9F6BCF90081F
--[[
Returns TRUE if it found something. FALSE if not.
--]]
function FIRE.GET_CLOSEST_FIRE_POS(outPosition, x, y, z)
  return native.invoke(
    Type.Bool, 985, true,
    ref(Type.Vector3, outPosition),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void ADD_EXPLOSION(float x, float y, float z, int explosionType, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake, BOOL noDamage) // 0xE3AD2BDBAEE269AC
--[[
BOOL isAudible = If explosion makes a sound.
BOOL isInvisible = If the explosion is invisible or not.

explosionType: https://alloc8or.re/gta5/doc/enums/eExplosionTag.txt
--]]
function FIRE.ADD_EXPLOSION(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake, noDamage)
  native.invoke(
    Type.Void, 986, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, explosionType),
    arg(Type.Float, damageScale),
    arg(Type.Bool, isAudible),
    arg(Type.Bool, isInvisible),
    arg(Type.Float, cameraShake),
    arg(Type.Bool, noDamage)
  )
end

-- void ADD_OWNED_EXPLOSION(Ped ped, float x, float y, float z, int explosionType, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake) // 0x172AA1B624FA1013
--[[
isAudible: If explosion makes a sound.
isInvisible: If the explosion is invisible or not.
explosionType: See ADD_EXPLOSION.
--]]
function FIRE.ADD_OWNED_EXPLOSION(ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake)
  native.invoke(
    Type.Void, 987, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, explosionType),
    arg(Type.Float, damageScale),
    arg(Type.Bool, isAudible),
    arg(Type.Bool, isInvisible),
    arg(Type.Float, cameraShake)
  )
end

-- void ADD_EXPLOSION_WITH_USER_VFX(float x, float y, float z, int explosionType, Hash explosionFx, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake) // 0x36DD3FE58B5E5212
--[[
isAudible: If explosion makes a sound.
isInvisible: If the explosion is invisible or not.
explosionType: See ADD_EXPLOSION.
--]]
function FIRE.ADD_EXPLOSION_WITH_USER_VFX(x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake)
  native.invoke(
    Type.Void, 988, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, explosionType),
    arg(Type.Hash, explosionFx),
    arg(Type.Float, damageScale),
    arg(Type.Bool, isAudible),
    arg(Type.Bool, isInvisible),
    arg(Type.Float, cameraShake)
  )
end

-- BOOL IS_EXPLOSION_IN_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2) // 0x2E2EBA0EE7CED0E0
--[[
explosionType: See ADD_EXPLOSION.
--]]
function FIRE.IS_EXPLOSION_IN_AREA(explosionType, x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Bool, 989, false,
    arg(Type.Int, explosionType),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- BOOL IS_EXPLOSION_ACTIVE_IN_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2) // 0x6070104B699B2EF4
--[[
explosionType: See ADD_EXPLOSION.
--]]
function FIRE.IS_EXPLOSION_ACTIVE_IN_AREA(explosionType, x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Bool, 990, false,
    arg(Type.Int, explosionType),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- BOOL IS_EXPLOSION_IN_SPHERE(int explosionType, float x, float y, float z, float radius) // 0xAB0F816885B0E483
--[[
explosionType: See ADD_EXPLOSION.
--]]
function FIRE.IS_EXPLOSION_IN_SPHERE(explosionType, x, y, z, radius)
  return native.invoke(
    Type.Bool, 991, false,
    arg(Type.Int, explosionType),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- Entity GET_OWNER_OF_EXPLOSION_IN_SPHERE(int explosionType, float x, float y, float z, float radius) // 0xB3CD51E3DB86F176
--[[
explosionType: See ADD_EXPLOSION.
--]]
function FIRE.GET_OWNER_OF_EXPLOSION_IN_SPHERE(explosionType, x, y, z, radius)
  return native.invoke(
    Type.Entity, 992, false,
    arg(Type.Int, explosionType),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- BOOL IS_EXPLOSION_IN_ANGLED_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2, float width) // 0xA079A6C51525DC4B
--[[
explosionType: See ADD_EXPLOSION, -1 for any explosion type

--]]
function FIRE.IS_EXPLOSION_IN_ANGLED_AREA(explosionType, x1, y1, z1, x2, y2, z2, width)
  return native.invoke(
    Type.Bool, 993, false,
    arg(Type.Int, explosionType),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width)
  )
end

-- Entity GET_OWNER_OF_EXPLOSION_IN_ANGLED_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2, float radius) // 0x14BA4BA137AF6CEC
--[[
Returns a handle to the first entity within the a circle spawned inside the 2 points from a radius.

explosionType: See ADD_EXPLOSION.
--]]
function FIRE.GET_OWNER_OF_EXPLOSION_IN_ANGLED_AREA(explosionType, x1, y1, z1, x2, y2, z2, radius)
  return native.invoke(
    Type.Entity, 994, false,
    arg(Type.Int, explosionType),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, radius)
  )
end


