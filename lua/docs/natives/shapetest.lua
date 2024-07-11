SHAPETEST = {}

-- int START_SHAPE_TEST_LOS_PROBE(float x1, float y1, float z1, float x2, float y2, float z2, int flags, Entity entity, int p8) // 0x7EE9F5D83DD4F90E
--[[
Asynchronously starts a line-of-sight (raycast) world probe shape test.

Use the handle with 0x3D87450E15D98694 or 0x65287525D951F6BE until it returns 0 or 2.

p8 is a bit mask with bits 1, 2 and/or 4, relating to collider types; 4 should usually be used.
--]]
function SHAPETEST.START_SHAPE_TEST_LOS_PROBE(x1, y1, z1, x2, y2, z2, flags, entity, p8)
  return native.invoke(
    Type.Int, 4823, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, flags),
    arg(Type.Entity, entity),
    arg(Type.Int, p8)
  )
end

-- int START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE(float x1, float y1, float z1, float x2, float y2, float z2, int flags, Entity entity, int p8) // 0x377906D8A31E5586
--[[
Does the same as 0x7EE9F5D83DD4F90E, except blocking until the shape test completes.
--]]
function SHAPETEST.START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE(x1, y1, z1, x2, y2, z2, flags, entity, p8)
  return native.invoke(
    Type.Int, 4824, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, flags),
    arg(Type.Entity, entity),
    arg(Type.Int, p8)
  )
end

-- int START_SHAPE_TEST_BOUNDING_BOX(Entity entity, int flags1, int flags2) // 0x052837721A854EC7
function SHAPETEST.START_SHAPE_TEST_BOUNDING_BOX(entity, flags1, flags2)
  return native.invoke(
    Type.Int, 4825, false,
    arg(Type.Entity, entity),
    arg(Type.Int, flags1),
    arg(Type.Int, flags2)
  )
end

-- int START_SHAPE_TEST_BOX(float x, float y, float z, float dimX, float dimY, float dimZ, float rotX, float rotY, float rotZ, Any p9, int flags, Entity entity, Any p12) // 0xFE466162C4401D18
function SHAPETEST.START_SHAPE_TEST_BOX(x, y, z, dimX, dimY, dimZ, rotX, rotY, rotZ, p9, flags, entity, p12)
  return native.invoke(
    Type.Int, 4826, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, dimX),
    arg(Type.Float, dimY),
    arg(Type.Float, dimZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Any, p9),
    arg(Type.Int, flags),
    arg(Type.Entity, entity),
    arg(Type.Any, p12)
  )
end

-- int START_SHAPE_TEST_BOUND(Entity entity, int flags1, int flags2) // 0x37181417CE7C8900
function SHAPETEST.START_SHAPE_TEST_BOUND(entity, flags1, flags2)
  return native.invoke(
    Type.Int, 4827, false,
    arg(Type.Entity, entity),
    arg(Type.Int, flags1),
    arg(Type.Int, flags2)
  )
end

-- int START_SHAPE_TEST_CAPSULE(float x1, float y1, float z1, float x2, float y2, float z2, float radius, int flags, Entity entity, int p9) // 0x28579D1B8F8AAC80
--[[
Raycast from point to point, where the ray has a radius. 

flags:
vehicles=10
peds =12

Iterating through flags yields many ped / vehicle/ object combinations

p9 = 7, but no idea what it does

Entity is an entity to ignore
--]]
function SHAPETEST.START_SHAPE_TEST_CAPSULE(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9)
  return native.invoke(
    Type.Int, 4828, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, radius),
    arg(Type.Int, flags),
    arg(Type.Entity, entity),
    arg(Type.Int, p9)
  )
end

-- int START_SHAPE_TEST_SWEPT_SPHERE(float x1, float y1, float z1, float x2, float y2, float z2, float radius, int flags, Entity entity, Any p9) // 0xE6AC6C45FBE83004
function SHAPETEST.START_SHAPE_TEST_SWEPT_SPHERE(x1, y1, z1, x2, y2, z2, radius, flags, entity, p9)
  return native.invoke(
    Type.Int, 4829, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, radius),
    arg(Type.Int, flags),
    arg(Type.Entity, entity),
    arg(Type.Any, p9)
  )
end

-- int START_SHAPE_TEST_MOUSE_CURSOR_LOS_PROBE(Vector3* pVec1, Vector3* pVec2, int flag, Entity entity, int flag2) // 0xFF6BE494C7987F34
--[[
Returns a ShapeTest handle that can be used with GET_SHAPE_TEST_RESULT.

In its only usage in game scripts its called with flag set to 511, entity to player_ped_id and flag2 set to 7
--]]
function SHAPETEST.START_SHAPE_TEST_MOUSE_CURSOR_LOS_PROBE(pVec1, pVec2, flag, entity, flag2)
  return native.invoke(
    Type.Int, 4830, false,
    ref(Type.Vector3, pVec1),
    ref(Type.Vector3, pVec2),
    arg(Type.Int, flag),
    arg(Type.Entity, entity),
    arg(Type.Int, flag2)
  )
end

-- int GET_SHAPE_TEST_RESULT(int shapeTestHandle, BOOL* hit, Vector3* endCoords, Vector3* surfaceNormal, Entity* entityHit) // 0x3D87450E15D98694
--[[
Returns the result of a shape test: 0 if the handle is invalid, 1 if the shape test is still pending, or 2 if the shape test has completed, and the handle should be invalidated.

When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.
--]]
function SHAPETEST.GET_SHAPE_TEST_RESULT(shapeTestHandle, hit, endCoords, surfaceNormal, entityHit)
  return native.invoke(
    Type.Int, 4831, false,
    arg(Type.Int, shapeTestHandle),
    ref(Type.Bool, hit),
    ref(Type.Vector3, endCoords),
    ref(Type.Vector3, surfaceNormal),
    ref(Type.Entity, entityHit)
  )
end

-- int GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL(int shapeTestHandle, BOOL* hit, Vector3* endCoords, Vector3* surfaceNormal, Hash* materialHash, Entity* entityHit) // 0x65287525D951F6BE
--[[
Returns the result of a shape test, also returning the material of any touched surface.

When used with an asynchronous shape test, this native should be looped until returning 0 or 2, after which the handle is invalidated.

Unless the return value is 2, the other return values are undefined.
--]]
function SHAPETEST.GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL(shapeTestHandle, hit, endCoords, surfaceNormal, materialHash, entityHit)
  return native.invoke(
    Type.Int, 4832, false,
    arg(Type.Int, shapeTestHandle),
    ref(Type.Bool, hit),
    ref(Type.Vector3, endCoords),
    ref(Type.Vector3, surfaceNormal),
    ref(Type.Hash, materialHash),
    ref(Type.Entity, entityHit)
  )
end

-- void RELEASE_SCRIPT_GUID_FROM_ENTITY(Entity entityHit) // 0x2B3334BCA57CD799
--[[
Invalidates the entity handle passed by removing the fwScriptGuid from the entity. This should be used when receiving an ambient entity from shape testing natives, but can also be used for other natives returning an 'irrelevant' entity handle.
--]]
function SHAPETEST.RELEASE_SCRIPT_GUID_FROM_ENTITY(entityHit)
  native.invoke(
    Type.Void, 4833, false,
    arg(Type.Entity, entityHit)
  )
end


