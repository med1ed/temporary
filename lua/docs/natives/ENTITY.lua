ENTITY = {}

-- BOOL DOES_ENTITY_EXIST(Entity entity) // 0x7239B21A38F536BA
--[[
Checks whether an entity exists in the game world.
--]]
function ENTITY.DOES_ENTITY_EXIST(entity)
  return native.invoke(
    Type.Bool, 727, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL DOES_ENTITY_BELONG_TO_THIS_SCRIPT(Entity entity, BOOL p1) // 0xDDE6DF5AE89981D2
function ENTITY.DOES_ENTITY_BELONG_TO_THIS_SCRIPT(entity, p1)
  return native.invoke(
    Type.Bool, 728, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, p1)
  )
end

-- BOOL DOES_ENTITY_HAVE_DRAWABLE(Entity entity) // 0x060D6E96F8B8E48D
function ENTITY.DOES_ENTITY_HAVE_DRAWABLE(entity)
  return native.invoke(
    Type.Bool, 729, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL DOES_ENTITY_HAVE_PHYSICS(Entity entity) // 0xDA95EA3317CC5064
function ENTITY.DOES_ENTITY_HAVE_PHYSICS(entity)
  return native.invoke(
    Type.Bool, 730, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL DOES_ENTITY_HAVE_SKELETON(Entity entity) // 0x764EB96874EFFDC1
function ENTITY.DOES_ENTITY_HAVE_SKELETON(entity)
  return native.invoke(
    Type.Bool, 731, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL DOES_ENTITY_HAVE_ANIM_DIRECTOR(Entity entity) // 0x2158E81A6AF65EA9
function ENTITY.DOES_ENTITY_HAVE_ANIM_DIRECTOR(entity)
  return native.invoke(
    Type.Bool, 732, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL HAS_ENTITY_ANIM_FINISHED(Entity entity, const char* animDict, const char* animName, int p3) // 0x20B711662962B472
--[[
P3 is always 3 as far as i cant tell

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.HAS_ENTITY_ANIM_FINISHED(entity, animDict, animName, p3)
  return native.invoke(
    Type.Bool, 733, false,
    arg(Type.Entity, entity),
    arg(Type.String, animDict),
    arg(Type.String, animName),
    arg(Type.Int, p3)
  )
end

-- BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT(Entity entity) // 0x95EB9964FF5C5C65
function ENTITY.HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT(entity)
  return native.invoke(
    Type.Bool, 734, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED(Entity entity) // 0x605F5A140F202491
function ENTITY.HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED(entity)
  return native.invoke(
    Type.Bool, 735, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE(Entity entity) // 0xDFD5033FDBA0A9C8
function ENTITY.HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE(entity)
  return native.invoke(
    Type.Bool, 736, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY(Entity entity1, Entity entity2, BOOL p2) // 0xC86D67D52A707CF8
--[[
Entity 1 = Victim
Entity 2 = Attacker

p2 seems to always be 1
--]]
function ENTITY.HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY(entity1, entity2, p2)
  return native.invoke(
    Type.Bool, 737, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Bool, p2)
  )
end

-- BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY(Entity entity1, Entity entity2, int traceType) // 0xFCDFF7B72D23A1AC
--[[
traceType is always 17 in the scripts.

There is other codes used for traceType:
19 - in jewelry_prep1a
126 - in am_hunt_the_beast
256 & 287 - in fm_mission_controller
--]]
function ENTITY.HAS_ENTITY_CLEAR_LOS_TO_ENTITY(entity1, entity2, traceType)
  return native.invoke(
    Type.Bool, 738, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Int, traceType)
  )
end

-- BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY_ADJUST_FOR_COVER(Entity entity1, Entity entity2, int traceType) // 0x394BDE2A7BBA031E
function ENTITY.HAS_ENTITY_CLEAR_LOS_TO_ENTITY_ADJUST_FOR_COVER(entity1, entity2, traceType)
  return native.invoke(
    Type.Bool, 739, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Int, traceType)
  )
end

-- BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT(Entity entity1, Entity entity2) // 0x0267D00AF114F17A
--[[
Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing.
This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops
--]]
function ENTITY.HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT(entity1, entity2)
  return native.invoke(
    Type.Bool, 740, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2)
  )
end

-- BOOL HAS_ENTITY_COLLIDED_WITH_ANYTHING(Entity entity) // 0x8BAD02F0368D9E14
--[[
Called on tick.
Tested with vehicles, returns true whenever the vehicle is touching any entity.

Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.
--]]
function ENTITY.HAS_ENTITY_COLLIDED_WITH_ANYTHING(entity)
  return native.invoke(
    Type.Bool, 741, false,
    arg(Type.Entity, entity)
  )
end

-- Entity _GET_LAST_ENTITY_HIT_BY_ENTITY(Entity entity) // 0xA75EE4F689B85391
function ENTITY._GET_LAST_ENTITY_HIT_BY_ENTITY(entity)
  return native.invoke(
    Type.Entity, 742, false,
    arg(Type.Entity, entity)
  )
end

-- Hash GET_LAST_MATERIAL_HIT_BY_ENTITY(Entity entity) // 0x5C3D0A935F535C4C
function ENTITY.GET_LAST_MATERIAL_HIT_BY_ENTITY(entity)
  return native.invoke(
    Type.Hash, 743, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY(Entity entity) // 0xE465D4AB7CA6AE72
function ENTITY.GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY(entity)
  return native.invoke(
    Type.Vector3, 744, false,
    arg(Type.Entity, entity)
  )
end

-- void FORCE_ENTITY_AI_AND_ANIMATION_UPDATE(Entity entity) // 0x40FDEDB72F8293B2
--[[
Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.
--]]
function ENTITY.FORCE_ENTITY_AI_AND_ANIMATION_UPDATE(entity)
  native.invoke(
    Type.Void, 745, false,
    arg(Type.Entity, entity)
  )
end

-- float GET_ENTITY_ANIM_CURRENT_TIME(Entity entity, const char* animDict, const char* animName) // 0x346D81500D088F42
--[[
Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.

Example:
0.000000 - mark the starting of animation.
0.500000 - mark the midpoint of the animation.
1.000000 - mark the end of animation.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.GET_ENTITY_ANIM_CURRENT_TIME(entity, animDict, animName)
  return native.invoke(
    Type.Float, 746, false,
    arg(Type.Entity, entity),
    arg(Type.String, animDict),
    arg(Type.String, animName)
  )
end

-- float GET_ENTITY_ANIM_TOTAL_TIME(Entity entity, const char* animDict, const char* animName) // 0x50BD2730B191E360
--[[
Returns a float value representing animation's total playtime in milliseconds.

Example:
GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b") 
return 20800.000000

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.GET_ENTITY_ANIM_TOTAL_TIME(entity, animDict, animName)
  return native.invoke(
    Type.Float, 747, false,
    arg(Type.Entity, entity),
    arg(Type.String, animDict),
    arg(Type.String, animName)
  )
end

-- float GET_ANIM_DURATION(const char* animDict, const char* animName) // 0xFEDDF04D62B8D790
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.GET_ANIM_DURATION(animDict, animName)
  return native.invoke(
    Type.Float, 748, false,
    arg(Type.String, animDict),
    arg(Type.String, animName)
  )
end

-- Entity GET_ENTITY_ATTACHED_TO(Entity entity) // 0x48C2BED9180FE123
function ENTITY.GET_ENTITY_ATTACHED_TO(entity)
  return native.invoke(
    Type.Entity, 749, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 GET_ENTITY_COORDS(Entity entity, BOOL alive) // 0x3FEF770D40960D5A
--[[
Gets the current coordinates for a specified entity.
`entity` = The entity to get the coordinates from.
`alive` = Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
--]]
function ENTITY.GET_ENTITY_COORDS(entity, alive)
  return native.invoke(
    Type.Vector3, 750, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, alive)
  )
end

-- Vector3 GET_ENTITY_FORWARD_VECTOR(Entity entity) // 0x0A794A5A57F8DF91
--[[
Gets the entity's forward vector.
--]]
function ENTITY.GET_ENTITY_FORWARD_VECTOR(entity)
  return native.invoke(
    Type.Vector3, 751, false,
    arg(Type.Entity, entity)
  )
end

-- float GET_ENTITY_FORWARD_X(Entity entity) // 0x8BB4EF4214E0E6D5
--[[
Gets the X-component of the entity's forward vector.
--]]
function ENTITY.GET_ENTITY_FORWARD_X(entity)
  return native.invoke(
    Type.Float, 752, false,
    arg(Type.Entity, entity)
  )
end

-- float GET_ENTITY_FORWARD_Y(Entity entity) // 0x866A4A5FAE349510
--[[
Gets the Y-component of the entity's forward vector.
--]]
function ENTITY.GET_ENTITY_FORWARD_Y(entity)
  return native.invoke(
    Type.Float, 753, false,
    arg(Type.Entity, entity)
  )
end

-- float GET_ENTITY_HEADING(Entity entity) // 0xE83D4F9BA2A38914
--[[
Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
--]]
function ENTITY.GET_ENTITY_HEADING(entity)
  return native.invoke(
    Type.Float, 754, false,
    arg(Type.Entity, entity)
  )
end

-- float GET_ENTITY_HEADING_FROM_EULERS(Entity entity) // 0x846BF6291198A71E
--[[
Gets the heading of the entity physics in degrees, which tends to be more accurate than just "GET_ENTITY_HEADING". This can be clearly seen while, for example, ragdolling a ped/player.

NOTE: The name and description of this native are based on independent research. If you find this native to be more suitable under a different name and/or described differently, please feel free to do so.
--]]
function ENTITY.GET_ENTITY_HEADING_FROM_EULERS(entity)
  return native.invoke(
    Type.Float, 755, false,
    arg(Type.Entity, entity)
  )
end

-- int GET_ENTITY_HEALTH(Entity entity) // 0xEEF059FAD016D209
--[[
Returns an integer value of entity's current health.

Example of range for ped:
- Player [0 to 200]
- Ped [100 to 200]
- Vehicle [0 to 1000]
- Object [0 to 1000]

Health is actually a float value but this native casts it to int.
In order to get the actual value, do:
float health = *(float *)(entityAddress + 0x280);
--]]
function ENTITY.GET_ENTITY_HEALTH(entity)
  return native.invoke(
    Type.Int, 756, false,
    arg(Type.Entity, entity)
  )
end

-- int GET_ENTITY_MAX_HEALTH(Entity entity) // 0x15D757606D170C3C
--[[
Return an integer value of entity's maximum health.

Example:
- Player = 200
- Ped = 150
--]]
function ENTITY.GET_ENTITY_MAX_HEALTH(entity)
  return native.invoke(
    Type.Int, 757, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_ENTITY_MAX_HEALTH(Entity entity, int value) // 0x166E7CF68597D8B5
--[[
For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849
--]]
function ENTITY.SET_ENTITY_MAX_HEALTH(entity, value)
  native.invoke(
    Type.Void, 758, false,
    arg(Type.Entity, entity),
    arg(Type.Int, value)
  )
end

-- float GET_ENTITY_HEIGHT(Entity entity, float X, float Y, float Z, BOOL atTop, BOOL inWorldCoords) // 0x5A504562485944DD
function ENTITY.GET_ENTITY_HEIGHT(entity, X, Y, Z, atTop, inWorldCoords)
  return native.invoke(
    Type.Float, 759, false,
    arg(Type.Entity, entity),
    arg(Type.Float, X),
    arg(Type.Float, Y),
    arg(Type.Float, Z),
    arg(Type.Bool, atTop),
    arg(Type.Bool, inWorldCoords)
  )
end

-- float GET_ENTITY_HEIGHT_ABOVE_GROUND(Entity entity) // 0x1DD55701034110E5
--[[
Return height (z-dimension) above ground. 
Example: The pilot in a titan plane is 1.844176 above ground.

How can i convert it to meters?
Everything seems to be in meters, probably this too.
--]]
function ENTITY.GET_ENTITY_HEIGHT_ABOVE_GROUND(entity)
  return native.invoke(
    Type.Float, 760, false,
    arg(Type.Entity, entity)
  )
end

-- void GET_ENTITY_MATRIX(Entity entity, Vector3* forwardVector, Vector3* rightVector, Vector3* upVector, Vector3* position) // 0xECB2FC7235A7D137
function ENTITY.GET_ENTITY_MATRIX(entity, forwardVector, rightVector, upVector, position)
  native.invoke(
    Type.Void, 761, true,
    arg(Type.Entity, entity),
    ref(Type.Vector3, forwardVector),
    ref(Type.Vector3, rightVector),
    ref(Type.Vector3, upVector),
    ref(Type.Vector3, position)
  )
end

-- Hash GET_ENTITY_MODEL(Entity entity) // 0x9F47B058362C84B5
--[[
Returns the model hash from the entity
--]]
function ENTITY.GET_ENTITY_MODEL(entity)
  return native.invoke(
    Type.Hash, 762, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(Entity entity, float posX, float posY, float posZ) // 0x2274BC1C4885E333
--[[
Converts world coords (posX - Z) to coords relative to the entity

Example:
posX is given as 50
entity's x coord is 40
the returned x coord will then be 10 or -10, not sure haven't used this in a while (think it is 10 though).
--]]
function ENTITY.GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(entity, posX, posY, posZ)
  return native.invoke(
    Type.Vector3, 763, false,
    arg(Type.Entity, entity),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- Vector3 GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(Entity entity, float offsetX, float offsetY, float offsetZ) // 0x1899F328B0E12848
--[[
Offset values are relative to the entity.

x = left/right
y = forward/backward
z = up/down
--]]
function ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(entity, offsetX, offsetY, offsetZ)
  return native.invoke(
    Type.Vector3, 764, false,
    arg(Type.Entity, entity),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ)
  )
end

-- float GET_ENTITY_PITCH(Entity entity) // 0xD45DC2893621E1FE
function ENTITY.GET_ENTITY_PITCH(entity)
  return native.invoke(
    Type.Float, 765, false,
    arg(Type.Entity, entity)
  )
end

-- void GET_ENTITY_QUATERNION(Entity entity, float* x, float* y, float* z, float* w) // 0x7B3703D2D32DFA18
--[[
w is the correct parameter name!
--]]
function ENTITY.GET_ENTITY_QUATERNION(entity, x, y, z, w)
  native.invoke(
    Type.Void, 766, false,
    arg(Type.Entity, entity),
    ref(Type.Float, x),
    ref(Type.Float, y),
    ref(Type.Float, z),
    ref(Type.Float, w)
  )
end

-- float GET_ENTITY_ROLL(Entity entity) // 0x831E0242595560DF
--[[
Displays the current ROLL axis of the entity [-180.0000/180.0000+]
(Sideways Roll) such as a vehicle tipped on its side
--]]
function ENTITY.GET_ENTITY_ROLL(entity)
  return native.invoke(
    Type.Float, 767, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 GET_ENTITY_ROTATION(Entity entity, int rotationOrder) // 0xAFBD61CC738D9EB9
--[[
rotationOrder is the order yaw, pitch and roll is applied. Usually 2. Returns a vector where the Z coordinate is the yaw.

rotationOrder refers to the order yaw pitch roll is applied; value ranges from 0 to 5 and is usually *2* in scripts.
What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.

What it returns is the yaw on the z part of the vector, which makes sense considering R* considers z as vertical. Here's a picture for those of you who don't understand pitch, yaw, and roll: www.allstar.fiu.edu/aero/images/pic5-1.gif

Rotation Orders:
0: ZYX - Rotate around the z-axis, then the y-axis and finally the x-axis.
1: YZX - Rotate around the y-axis, then the z-axis and finally the x-axis.
2: ZXY - Rotate around the z-axis, then the x-axis and finally the y-axis.
3: XZY - Rotate around the x-axis, then the z-axis and finally the y-axis.
4: YXZ - Rotate around the y-axis, then the x-axis and finally the z-axis.
5: XYZ - Rotate around the x-axis, then the y-axis and finally the z-axis.
--]]
function ENTITY.GET_ENTITY_ROTATION(entity, rotationOrder)
  return native.invoke(
    Type.Vector3, 768, false,
    arg(Type.Entity, entity),
    arg(Type.Int, rotationOrder)
  )
end

-- Vector3 GET_ENTITY_ROTATION_VELOCITY(Entity entity) // 0x213B91045D09B983
function ENTITY.GET_ENTITY_ROTATION_VELOCITY(entity)
  return native.invoke(
    Type.Vector3, 769, false,
    arg(Type.Entity, entity)
  )
end

-- const char* GET_ENTITY_SCRIPT(Entity entity, ScrHandle* script) // 0xA6E9C38DB51D7748
--[[
Returns the name of the script that owns/created the entity or nullptr. Second parameter is unused, can just be a nullptr.
--]]
function ENTITY.GET_ENTITY_SCRIPT(entity, script)
  return native.invoke(
    Type.String, 770, false,
    arg(Type.Entity, entity),
    ref(Type.Scrhandle, script)
  )
end

-- float GET_ENTITY_SPEED(Entity entity) // 0xD5037BA82E12416F
--[[
result is in meters per second

------------------------------------------------------------
So would the conversion to mph and km/h, be along the lines of this.

float speed = GET_ENTITY_SPEED(veh);
float kmh = (speed * 3.6);
float mph = (speed * 2.236936);
------------------------------------------------------------
--]]
function ENTITY.GET_ENTITY_SPEED(entity)
  return native.invoke(
    Type.Float, 771, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 GET_ENTITY_SPEED_VECTOR(Entity entity, BOOL relative) // 0x9A8D700A51CB7B0D
--[[
Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed). 
--]]
function ENTITY.GET_ENTITY_SPEED_VECTOR(entity, relative)
  return native.invoke(
    Type.Vector3, 772, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, relative)
  )
end

-- float GET_ENTITY_UPRIGHT_VALUE(Entity entity) // 0x95EED5A694951F9F
function ENTITY.GET_ENTITY_UPRIGHT_VALUE(entity)
  return native.invoke(
    Type.Float, 773, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 GET_ENTITY_VELOCITY(Entity entity) // 0x4805D2B1D8CF94A9
function ENTITY.GET_ENTITY_VELOCITY(entity)
  return native.invoke(
    Type.Vector3, 774, false,
    arg(Type.Entity, entity)
  )
end

-- Object GET_OBJECT_INDEX_FROM_ENTITY_INDEX(Entity entity) // 0xD7E3B9735C0F89D6
--[[
Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
--]]
function ENTITY.GET_OBJECT_INDEX_FROM_ENTITY_INDEX(entity)
  return native.invoke(
    Type.Object, 775, false,
    arg(Type.Entity, entity)
  )
end

-- Ped GET_PED_INDEX_FROM_ENTITY_INDEX(Entity entity) // 0x04A2A40C73395041
--[[
Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
--]]
function ENTITY.GET_PED_INDEX_FROM_ENTITY_INDEX(entity)
  return native.invoke(
    Type.Ped, 776, false,
    arg(Type.Entity, entity)
  )
end

-- Vehicle GET_VEHICLE_INDEX_FROM_ENTITY_INDEX(Entity entity) // 0x4B53F92932ADFAC0
--[[
Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
--]]
function ENTITY.GET_VEHICLE_INDEX_FROM_ENTITY_INDEX(entity)
  return native.invoke(
    Type.Vehicle, 777, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 GET_WORLD_POSITION_OF_ENTITY_BONE(Entity entity, int boneIndex) // 0x44A8FCB8ED227738
--[[
Returns the coordinates of an entity-bone.
--]]
function ENTITY.GET_WORLD_POSITION_OF_ENTITY_BONE(entity, boneIndex)
  return native.invoke(
    Type.Vector3, 778, false,
    arg(Type.Entity, entity),
    arg(Type.Int, boneIndex)
  )
end

-- Player GET_NEAREST_PLAYER_TO_ENTITY(Entity entity) // 0x7196842CB375CDB3
function ENTITY.GET_NEAREST_PLAYER_TO_ENTITY(entity)
  return native.invoke(
    Type.Player, 779, false,
    arg(Type.Entity, entity)
  )
end

-- Player GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM(Entity entity, int team) // 0x4DC9A62F844D9337
function ENTITY.GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM(entity, team)
  return native.invoke(
    Type.Player, 780, false,
    arg(Type.Entity, entity),
    arg(Type.Int, team)
  )
end

-- int GET_NEAREST_PARTICIPANT_TO_ENTITY(Entity entity) // 0xFFBD7052D65BE0FF
function ENTITY.GET_NEAREST_PARTICIPANT_TO_ENTITY(entity)
  return native.invoke(
    Type.Int, 781, false,
    arg(Type.Entity, entity)
  )
end

-- int GET_ENTITY_TYPE(Entity entity) // 0x8ACD366038D14505
--[[
Returns:
0 = no entity
1 = ped
2 = vehicle
3 = object
--]]
function ENTITY.GET_ENTITY_TYPE(entity)
  return native.invoke(
    Type.Int, 782, false,
    arg(Type.Entity, entity)
  )
end

-- int GET_ENTITY_POPULATION_TYPE(Entity entity) // 0xF6F5161F4534EDFF
--[[
A population type, from the following enum: https://alloc8or.re/gta5/doc/enums/ePopulationType.txt
--]]
function ENTITY.GET_ENTITY_POPULATION_TYPE(entity)
  return native.invoke(
    Type.Int, 783, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_AN_ENTITY(ScrHandle handle) // 0x731EC8A916BD11A1
function ENTITY.IS_AN_ENTITY(handle)
  return native.invoke(
    Type.Bool, 784, false,
    arg(Type.Scrhandle, handle)
  )
end

-- BOOL IS_ENTITY_A_PED(Entity entity) // 0x524AC5ECEA15343E
function ENTITY.IS_ENTITY_A_PED(entity)
  return native.invoke(
    Type.Bool, 785, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_A_MISSION_ENTITY(Entity entity) // 0x0A7B270912999B3C
function ENTITY.IS_ENTITY_A_MISSION_ENTITY(entity)
  return native.invoke(
    Type.Bool, 786, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_A_VEHICLE(Entity entity) // 0x6AC7003FA6E5575E
function ENTITY.IS_ENTITY_A_VEHICLE(entity)
  return native.invoke(
    Type.Bool, 787, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_AN_OBJECT(Entity entity) // 0x8D68C8FD0FACA94E
function ENTITY.IS_ENTITY_AN_OBJECT(entity)
  return native.invoke(
    Type.Bool, 788, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_AT_COORD(Entity entity, float xPos, float yPos, float zPos, float xSize, float ySize, float zSize, BOOL p7, BOOL p8, int p9) // 0x20B60995556D004F
--[[
Checks if entity is within x/y/zSize distance of x/y/z. 

Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0
--]]
function ENTITY.IS_ENTITY_AT_COORD(entity, xPos, yPos, zPos, xSize, ySize, zSize, p7, p8, p9)
  return native.invoke(
    Type.Bool, 789, false,
    arg(Type.Entity, entity),
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Float, xSize),
    arg(Type.Float, ySize),
    arg(Type.Float, zSize),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Int, p9)
  )
end

-- BOOL IS_ENTITY_AT_ENTITY(Entity entity1, Entity entity2, float xSize, float ySize, float zSize, BOOL p5, BOOL p6, int p7) // 0x751B70C3D034E187
--[[
Checks if entity1 is within the box defined by x/y/zSize of entity2.

Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0
--]]
function ENTITY.IS_ENTITY_AT_ENTITY(entity1, entity2, xSize, ySize, zSize, p5, p6, p7)
  return native.invoke(
    Type.Bool, 790, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Float, xSize),
    arg(Type.Float, ySize),
    arg(Type.Float, zSize),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6),
    arg(Type.Int, p7)
  )
end

-- BOOL IS_ENTITY_ATTACHED(Entity entity) // 0xB346476EF1A64897
--[[
Whether the entity is attached to any other entity.
--]]
function ENTITY.IS_ENTITY_ATTACHED(entity)
  return native.invoke(
    Type.Bool, 791, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_ATTACHED_TO_ANY_OBJECT(Entity entity) // 0xCF511840CEEDE0CC
function ENTITY.IS_ENTITY_ATTACHED_TO_ANY_OBJECT(entity)
  return native.invoke(
    Type.Bool, 792, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_ATTACHED_TO_ANY_PED(Entity entity) // 0xB1632E9A5F988D11
function ENTITY.IS_ENTITY_ATTACHED_TO_ANY_PED(entity)
  return native.invoke(
    Type.Bool, 793, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_ATTACHED_TO_ANY_VEHICLE(Entity entity) // 0x26AA915AD89BFB4B
function ENTITY.IS_ENTITY_ATTACHED_TO_ANY_VEHICLE(entity)
  return native.invoke(
    Type.Bool, 794, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_ATTACHED_TO_ENTITY(Entity from, Entity to) // 0xEFBE71898A993728
function ENTITY.IS_ENTITY_ATTACHED_TO_ENTITY(from, to)
  return native.invoke(
    Type.Bool, 795, false,
    arg(Type.Entity, from),
    arg(Type.Entity, to)
  )
end

-- BOOL IS_ENTITY_DEAD(Entity entity, BOOL p1) // 0x5F9532F3B5CC2551
function ENTITY.IS_ENTITY_DEAD(entity, p1)
  return native.invoke(
    Type.Bool, 796, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_ENTITY_IN_AIR(Entity entity) // 0x886E37EC497200B6
function ENTITY.IS_ENTITY_IN_AIR(entity)
  return native.invoke(
    Type.Bool, 797, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_IN_ANGLED_AREA(Entity entity, float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL debug, BOOL includeZ, Any p10) // 0x51210CED3DA1C78A
--[[
`p8` is a debug flag invoking functions in the same path as ``DRAW_MARKER``
`p10` is some entity flag check, also used in `IS_ENTITY_AT_ENTITY`, `IS_ENTITY_IN_AREA`, and `IS_ENTITY_AT_COORD`.
See IS_POINT_IN_ANGLED_AREA for the definition of an angled area.
--]]
function ENTITY.IS_ENTITY_IN_ANGLED_AREA(entity, x1, y1, z1, x2, y2, z2, width, debug, includeZ, p10)
  return native.invoke(
    Type.Bool, 798, false,
    arg(Type.Entity, entity),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Bool, debug),
    arg(Type.Bool, includeZ),
    arg(Type.Any, p10)
  )
end

-- BOOL IS_ENTITY_IN_AREA(Entity entity, float x1, float y1, float z1, float x2, float y2, float z2, BOOL p7, BOOL p8, Any p9) // 0x54736AA40E271165
function ENTITY.IS_ENTITY_IN_AREA(entity, x1, y1, z1, x2, y2, z2, p7, p8, p9)
  return native.invoke(
    Type.Bool, 799, false,
    arg(Type.Entity, entity),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Any, p9)
  )
end

-- BOOL IS_ENTITY_IN_ZONE(Entity entity, const char* zone) // 0xB6463CF6AF527071
--[[
Full list of zones by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/zones.json
--]]
function ENTITY.IS_ENTITY_IN_ZONE(entity, zone)
  return native.invoke(
    Type.Bool, 800, false,
    arg(Type.Entity, entity),
    arg(Type.String, zone)
  )
end

-- BOOL IS_ENTITY_IN_WATER(Entity entity) // 0xCFB0A0D8EDD145A3
function ENTITY.IS_ENTITY_IN_WATER(entity)
  return native.invoke(
    Type.Bool, 801, false,
    arg(Type.Entity, entity)
  )
end

-- float GET_ENTITY_SUBMERGED_LEVEL(Entity entity) // 0xE81AFC1BC4CC41CE
--[[
Get how much of the entity is submerged.  1.0f is whole entity.
--]]
function ENTITY.GET_ENTITY_SUBMERGED_LEVEL(entity)
  return native.invoke(
    Type.Float, 802, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_ENTITY_REQUIRES_MORE_EXPENSIVE_RIVER_CHECK(Entity entity, BOOL toggle) // 0x694E00132F2823ED
function ENTITY.SET_ENTITY_REQUIRES_MORE_EXPENSIVE_RIVER_CHECK(entity, toggle)
  native.invoke(
    Type.Void, 803, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_ENTITY_ON_SCREEN(Entity entity) // 0xE659E47AF827484B
--[[
Returns true if the entity is in between the minimum and maximum values for the 2d screen coords. 
This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location. 
Chipping
--]]
function ENTITY.IS_ENTITY_ON_SCREEN(entity)
  return native.invoke(
    Type.Bool, 804, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_PLAYING_ANIM(Entity entity, const char* animDict, const char* animName, int taskFlag) // 0x1F0B79228E461EC9
--[[
See also PED::IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM 0x6EC47A344923E1ED 0x3C30B447

Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)

p4 is always 3 in the scripts.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.IS_ENTITY_PLAYING_ANIM(entity, animDict, animName, taskFlag)
  return native.invoke(
    Type.Bool, 805, false,
    arg(Type.Entity, entity),
    arg(Type.String, animDict),
    arg(Type.String, animName),
    arg(Type.Int, taskFlag)
  )
end

-- BOOL IS_ENTITY_STATIC(Entity entity) // 0x1218E6886D3D8327
--[[
a static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "TASK::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.

how can I make an entity static???
--]]
function ENTITY.IS_ENTITY_STATIC(entity)
  return native.invoke(
    Type.Bool, 806, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_TOUCHING_ENTITY(Entity entity, Entity targetEntity) // 0x17FFC1B2BA35A494
function ENTITY.IS_ENTITY_TOUCHING_ENTITY(entity, targetEntity)
  return native.invoke(
    Type.Bool, 807, false,
    arg(Type.Entity, entity),
    arg(Type.Entity, targetEntity)
  )
end

-- BOOL IS_ENTITY_TOUCHING_MODEL(Entity entity, Hash modelHash) // 0x0F42323798A58C8C
function ENTITY.IS_ENTITY_TOUCHING_MODEL(entity, modelHash)
  return native.invoke(
    Type.Bool, 808, false,
    arg(Type.Entity, entity),
    arg(Type.Hash, modelHash)
  )
end

-- BOOL IS_ENTITY_UPRIGHT(Entity entity, float angle) // 0x5333F526F6AB19AA
function ENTITY.IS_ENTITY_UPRIGHT(entity, angle)
  return native.invoke(
    Type.Bool, 809, false,
    arg(Type.Entity, entity),
    arg(Type.Float, angle)
  )
end

-- BOOL IS_ENTITY_UPSIDEDOWN(Entity entity) // 0x1DBD58820FA61D71
function ENTITY.IS_ENTITY_UPSIDEDOWN(entity)
  return native.invoke(
    Type.Bool, 810, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_VISIBLE(Entity entity) // 0x47D6F43D77935C75
function ENTITY.IS_ENTITY_VISIBLE(entity)
  return native.invoke(
    Type.Bool, 811, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_VISIBLE_TO_SCRIPT(Entity entity) // 0xD796CB5BA8F20E32
function ENTITY.IS_ENTITY_VISIBLE_TO_SCRIPT(entity)
  return native.invoke(
    Type.Bool, 812, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_ENTITY_OCCLUDED(Entity entity) // 0xE31C2C72B8692B64
function ENTITY.IS_ENTITY_OCCLUDED(entity)
  return native.invoke(
    Type.Bool, 813, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL WOULD_ENTITY_BE_OCCLUDED(Hash entityModelHash, float x, float y, float z, BOOL p4) // 0xEE5D2A122E09EC42
function ENTITY.WOULD_ENTITY_BE_OCCLUDED(entityModelHash, x, y, z, p4)
  return native.invoke(
    Type.Bool, 814, false,
    arg(Type.Hash, entityModelHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p4)
  )
end

-- BOOL IS_ENTITY_WAITING_FOR_WORLD_COLLISION(Entity entity) // 0xD05BFF0C0A12C68F
function ENTITY.IS_ENTITY_WAITING_FOR_WORLD_COLLISION(entity)
  return native.invoke(
    Type.Bool, 815, false,
    arg(Type.Entity, entity)
  )
end

-- void APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(Entity entity, int forceType, float x, float y, float z, BOOL p5, BOOL isDirectionRel, BOOL isForceRel, BOOL p8) // 0x18FF00FC7EFF559E
--[[
Applies a force to the specified entity.

**List of force types (p1)**:
public enum ForceType
{
    MinForce = 0,
    MaxForceRot = 1,
    MinForce2 = 2,
    MaxForceRot2 = 3,
    ForceNoRot = 4,
    ForceRotPlusForce = 5
}
Research/documentation on the gtaforums can be found here https://gtaforums.com/topic/885669-precisely-define-object-physics/) and here https://gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/.

p6/relative - makes the xyz force not relative to world coords, but to something else
p7/highForce - setting false will make the force really low
--]]
function ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(entity, forceType, x, y, z, p5, isDirectionRel, isForceRel, p8)
  native.invoke(
    Type.Void, 816, false,
    arg(Type.Entity, entity),
    arg(Type.Int, forceType),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p5),
    arg(Type.Bool, isDirectionRel),
    arg(Type.Bool, isForceRel),
    arg(Type.Bool, p8)
  )
end

-- void APPLY_FORCE_TO_ENTITY(Entity entity, int forceFlags, float x, float y, float z, float offX, float offY, float offZ, int boneIndex, BOOL isDirectionRel, BOOL ignoreUpVec, BOOL isForceRel, BOOL p12, BOOL p13) // 0xC5F68BE9613E2D18
--[[
Documented here:
gtaforums.com/topic/885669-precisely-define-object-physics/
gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/

forceFlags:
First bit (lowest): Strong force flag, factor 100
Second bit: Unkown flag
Third bit: Momentum flag=1 (vector (x,y,z) is a momentum, more research needed)
If higher bits are unequal 0 the function doesn't applay any forces at all.
(As integer possible values are 0-7)

0: weak force
1: strong force
2: same as 0 (2nd bit?)
3: same as 1
4: weak momentum
5: strong momentum
6: same as 4
7: same as 5

isLocal: vector defined in local (body-fixed) coordinate frame
isMassRel: if true the force gets multiplied with the objects mass (this is why it was known as highForce) and different objects will have the same acceleration.

p8 !!! Whenever I set this !=0, my script stopped.
--]]
function ENTITY.APPLY_FORCE_TO_ENTITY(entity, forceFlags, x, y, z, offX, offY, offZ, boneIndex, isDirectionRel, ignoreUpVec, isForceRel, p12, p13)
  native.invoke(
    Type.Void, 817, false,
    arg(Type.Entity, entity),
    arg(Type.Int, forceFlags),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, offX),
    arg(Type.Float, offY),
    arg(Type.Float, offZ),
    arg(Type.Int, boneIndex),
    arg(Type.Bool, isDirectionRel),
    arg(Type.Bool, ignoreUpVec),
    arg(Type.Bool, isForceRel),
    arg(Type.Bool, p12),
    arg(Type.Bool, p13)
  )
end

-- void ATTACH_ENTITY_TO_ENTITY(Entity entity1, Entity entity2, int boneIndex, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, BOOL p9, BOOL useSoftPinning, BOOL collision, BOOL isPed, int vertexIndex, BOOL fixedRot, Any p15) // 0x6B9BBD38AB0796DF
--[[
Attaches entity1 to bone (boneIndex) of entity2.

boneIndex - this is different to boneID, use GET_PED_BONE_INDEX to get the index from the ID. use the index for attaching to specific bones. entity1 will be attached to entity2's centre if bone index given doesn't correspond to bone indexes for that entity type.

useSoftPinning - if set to false attached entity will not detach when fixed
collision - controls collision between the two entities (FALSE disables collision).
isPed - pitch doesnt work when false and roll will only work on negative numbers (only peds)
vertexIndex - position of vertex
fixedRot - if false it ignores entity vector 

--]]
function ENTITY.ATTACH_ENTITY_TO_ENTITY(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot, p15)
  native.invoke(
    Type.Void, 818, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Int, boneIndex),
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Bool, p9),
    arg(Type.Bool, useSoftPinning),
    arg(Type.Bool, collision),
    arg(Type.Bool, isPed),
    arg(Type.Int, vertexIndex),
    arg(Type.Bool, fixedRot),
    arg(Type.Any, p15)
  )
end

-- void ATTACH_ENTITY_BONE_TO_ENTITY_BONE(Entity entity1, Entity entity2, int boneIndex1, int boneIndex2, BOOL p4, BOOL p5) // 0x5C48B75732C8456C
function ENTITY.ATTACH_ENTITY_BONE_TO_ENTITY_BONE(entity1, entity2, boneIndex1, boneIndex2, p4, p5)
  native.invoke(
    Type.Void, 819, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Int, boneIndex1),
    arg(Type.Int, boneIndex2),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5)
  )
end

-- void ATTACH_ENTITY_BONE_TO_ENTITY_BONE_Y_FORWARD(Entity entity1, Entity entity2, int boneIndex1, int boneIndex2, BOOL p4, BOOL p5) // 0xFD1695C5D3B05439
function ENTITY.ATTACH_ENTITY_BONE_TO_ENTITY_BONE_Y_FORWARD(entity1, entity2, boneIndex1, boneIndex2, p4, p5)
  native.invoke(
    Type.Void, 820, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Int, boneIndex1),
    arg(Type.Int, boneIndex2),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5)
  )
end

-- void ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(Entity entity1, Entity entity2, int boneIndex1, int boneIndex2, float xPos1, float yPos1, float zPos1, float xPos2, float yPos2, float zPos2, float xRot, float yRot, float zRot, float breakForce, BOOL fixedRot, BOOL p15, BOOL collision, BOOL p17, int p18) // 0xC3675780C92F90F9
--[[
breakForce is the amount of force required to break the bond.
p14 - is always 1 in scripts
p15 - is 1 or 0 in scripts - unknoun what it does
p16 - controls collision between the two entities (FALSE disables collision).
p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone)
p18 - is always 2 in scripts.


--]]
function ENTITY.ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(entity1, entity2, boneIndex1, boneIndex2, xPos1, yPos1, zPos1, xPos2, yPos2, zPos2, xRot, yRot, zRot, breakForce, fixedRot, p15, collision, p17, p18)
  native.invoke(
    Type.Void, 821, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Int, boneIndex1),
    arg(Type.Int, boneIndex2),
    arg(Type.Float, xPos1),
    arg(Type.Float, yPos1),
    arg(Type.Float, zPos1),
    arg(Type.Float, xPos2),
    arg(Type.Float, yPos2),
    arg(Type.Float, zPos2),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, breakForce),
    arg(Type.Bool, fixedRot),
    arg(Type.Bool, p15),
    arg(Type.Bool, collision),
    arg(Type.Bool, p17),
    arg(Type.Int, p18)
  )
end

-- void ATTACH_ENTITY_TO_ENTITY_PHYSICALLY_OVERRIDE_INVERSE_MASS(Entity firstEntityIndex, Entity secondEntityIndex, int firstEntityBoneIndex, int secondEntityBoneIndex, float secondEntityOffsetX, float secondEntityOffsetY, float secondEntityOffsetZ, float firstEntityOffsetX, float firstEntityOffsetY, float firstEntityOffsetZ, float vecRotationX, float vecRotationY, float vecRotationZ, float physicalStrength, BOOL constrainRotation, BOOL doInitialWarp, BOOL collideWithEntity, BOOL addInitialSeperation, int rotOrder, float invMassScaleA, float invMassScaleB) // 0x168A09D1B25B0BA4
function ENTITY.ATTACH_ENTITY_TO_ENTITY_PHYSICALLY_OVERRIDE_INVERSE_MASS(firstEntityIndex, secondEntityIndex, firstEntityBoneIndex, secondEntityBoneIndex, secondEntityOffsetX, secondEntityOffsetY, secondEntityOffsetZ, firstEntityOffsetX, firstEntityOffsetY, firstEntityOffsetZ, vecRotationX, vecRotationY, vecRotationZ, physicalStrength, constrainRotation, doInitialWarp, collideWithEntity, addInitialSeperation, rotOrder, invMassScaleA, invMassScaleB)
  native.invoke(
    Type.Void, 822, false,
    arg(Type.Entity, firstEntityIndex),
    arg(Type.Entity, secondEntityIndex),
    arg(Type.Int, firstEntityBoneIndex),
    arg(Type.Int, secondEntityBoneIndex),
    arg(Type.Float, secondEntityOffsetX),
    arg(Type.Float, secondEntityOffsetY),
    arg(Type.Float, secondEntityOffsetZ),
    arg(Type.Float, firstEntityOffsetX),
    arg(Type.Float, firstEntityOffsetY),
    arg(Type.Float, firstEntityOffsetZ),
    arg(Type.Float, vecRotationX),
    arg(Type.Float, vecRotationY),
    arg(Type.Float, vecRotationZ),
    arg(Type.Float, physicalStrength),
    arg(Type.Bool, constrainRotation),
    arg(Type.Bool, doInitialWarp),
    arg(Type.Bool, collideWithEntity),
    arg(Type.Bool, addInitialSeperation),
    arg(Type.Int, rotOrder),
    arg(Type.Float, invMassScaleA),
    arg(Type.Float, invMassScaleB)
  )
end

-- void PROCESS_ENTITY_ATTACHMENTS(Entity entity) // 0xF4080490ADC51C6F
--[[
Called to update entity attachments.
--]]
function ENTITY.PROCESS_ENTITY_ATTACHMENTS(entity)
  native.invoke(
    Type.Void, 823, false,
    arg(Type.Entity, entity)
  )
end

-- int GET_ENTITY_BONE_INDEX_BY_NAME(Entity entity, const char* boneName) // 0xFB71170B7E76ACBA
--[[
Returns the index of the bone. If the bone was not found, -1 will be returned. 

list:
https://pastebin.com/D7JMnX1g

BoneNames:
  chassis,
  windscreen,
   seat_pside_r,
 seat_dside_r,
 bodyshell,
    suspension_lm,
    suspension_lr,
    platelight,
   attach_female,
    attach_male,
  bonnet,
   boot,
 chassis_dummy,  //Center of the dummy
 chassis_Control,    //Not found yet
   door_dside_f,   //Door left, front
    door_dside_r,   //Door left, back
 door_pside_f,   //Door right, front
   door_pside_r,   //Door right, back
    Gun_GripR,
    windscreen_f,
 platelight, //Position where the light above the numberplate is located
   VFX_Emitter,
  window_lf,  //Window left, front
  window_lr,  //Window left, back
   window_rf,  //Window right, front
 window_rr,  //Window right, back
  engine, //Position of the engine
  gun_ammo,
 ROPE_ATTATCH,   //Not misspelled. In script "finale_heist2b.c4".
    wheel_lf,   //Wheel left, front
   wheel_lr,   //Wheel left, back
    wheel_rf,   //Wheel right, front
  wheel_rr,   //Wheel right, back
   exhaust,    //Exhaust. shows only the position of the stock-exhaust
   overheat,   //A position on the engine(not exactly sure, how to name it)
  misc_e, //Not a car-bone.
 seat_dside_f,   //Driver-seat
 seat_pside_f,   //Seat next to driver
 Gun_Nuzzle,
   seat_r

I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.


--]]
function ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(entity, boneName)
  return native.invoke(
    Type.Int, 824, false,
    arg(Type.Entity, entity),
    arg(Type.String, boneName)
  )
end

-- void CLEAR_ENTITY_LAST_DAMAGE_ENTITY(Entity entity) // 0xA72CD9CA74A5ECBA
function ENTITY.CLEAR_ENTITY_LAST_DAMAGE_ENTITY(entity)
  native.invoke(
    Type.Void, 825, false,
    arg(Type.Entity, entity)
  )
end

-- void DELETE_ENTITY(Entity* entity) // 0xAE3CBE5BF394C9C9
--[[
Deletes the specified entity, then sets the handle pointed to by the pointer to NULL.
--]]
function ENTITY.DELETE_ENTITY(entity)
  native.invoke(
    Type.Void, 826, false,
    ref(Type.Entity, entity)
  )
end

-- void DETACH_ENTITY(Entity entity, BOOL dynamic, BOOL collision) // 0x961AC54BF0613F5D
--[[
If `collision` is set to true, both entities won't collide with the other until the distance between them is above 4 meters.
Set `dynamic` to true to keep velocity after dettaching
--]]
function ENTITY.DETACH_ENTITY(entity, dynamic, collision)
  native.invoke(
    Type.Void, 827, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, dynamic),
    arg(Type.Bool, collision)
  )
end

-- void FREEZE_ENTITY_POSITION(Entity entity, BOOL toggle) // 0x428CA6DBD1094446
--[[
Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using SET_ENTITY_COORDS.
--]]
function ENTITY.FREEZE_ENTITY_POSITION(entity, toggle)
  native.invoke(
    Type.Void, 828, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_SHOULD_FREEZE_WAITING_ON_COLLISION(Entity entity, BOOL toggle) // 0x3910051CCECDB00C
--[[
True means it can be deleted by the engine when switching lobbies/missions/etc, false means the script is expected to clean it up.

"Allow Freeze If No Collision"
--]]
function ENTITY.SET_ENTITY_SHOULD_FREEZE_WAITING_ON_COLLISION(entity, toggle)
  native.invoke(
    Type.Void, 829, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- BOOL PLAY_ENTITY_ANIM(Entity entity, const char* animName, const char* animDict, float p3, BOOL loop, BOOL stayInAnim, BOOL p6, float delta, Any bitset) // 0x7FB218262B810701
--[[
delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.

The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.PLAY_ENTITY_ANIM(entity, animName, animDict, p3, loop, stayInAnim, p6, delta, bitset)
  return native.invoke(
    Type.Bool, 830, false,
    arg(Type.Entity, entity),
    arg(Type.String, animName),
    arg(Type.String, animDict),
    arg(Type.Float, p3),
    arg(Type.Bool, loop),
    arg(Type.Bool, stayInAnim),
    arg(Type.Bool, p6),
    arg(Type.Float, delta),
    arg(Type.Any, bitset)
  )
end

-- BOOL PLAY_SYNCHRONIZED_ENTITY_ANIM(Entity entity, int syncedScene, const char* animation, const char* propName, float p4, float p5, Any p6, float p7) // 0xC77720A12FE14A86
--[[
p4 and p7 are usually 1000.0f.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.PLAY_SYNCHRONIZED_ENTITY_ANIM(entity, syncedScene, animation, propName, p4, p5, p6, p7)
  return native.invoke(
    Type.Bool, 831, false,
    arg(Type.Entity, entity),
    arg(Type.Int, syncedScene),
    arg(Type.String, animation),
    arg(Type.String, propName),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Any, p6),
    arg(Type.Float, p7)
  )
end

-- BOOL PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(float x1, float y1, float z1, float x2, Any y2, float z2, const char* p6, const char* p7, float p8, float p9, Any p10, float p11) // 0xB9C54555ED30FBC4
--[[
p6,p7 probably animname and animdict

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(x1, y1, z1, x2, y2, z2, p6, p7, p8, p9, p10, p11)
  return native.invoke(
    Type.Bool, 832, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Any, y2),
    arg(Type.Float, z2),
    arg(Type.String, p6),
    arg(Type.String, p7),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Any, p10),
    arg(Type.Float, p11)
  )
end

-- BOOL STOP_SYNCHRONIZED_MAP_ENTITY_ANIM(float x1, float y1, float z1, float x2, Any y2, float z2) // 0x11E79CAB7183B6F5
function ENTITY.STOP_SYNCHRONIZED_MAP_ENTITY_ANIM(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Bool, 833, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Any, y2),
    arg(Type.Float, z2)
  )
end

-- BOOL STOP_ENTITY_ANIM(Entity entity, const char* animation, const char* animGroup, float p3) // 0x28004F88151E03E0
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
--]]
function ENTITY.STOP_ENTITY_ANIM(entity, animation, animGroup, p3)
  return native.invoke(
    Type.Bool, 834, false,
    arg(Type.Entity, entity),
    arg(Type.String, animation),
    arg(Type.String, animGroup),
    arg(Type.Float, p3)
  )
end

-- BOOL STOP_SYNCHRONIZED_ENTITY_ANIM(Entity entity, float p1, BOOL p2) // 0x43D3807C077261E3
--[[
p1 sync task id?
--]]
function ENTITY.STOP_SYNCHRONIZED_ENTITY_ANIM(entity, p1, p2)
  return native.invoke(
    Type.Bool, 835, false,
    arg(Type.Entity, entity),
    arg(Type.Float, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL HAS_ANIM_EVENT_FIRED(Entity entity, Hash actionHash) // 0xEAF4CD9EA3E7E922
--[[
if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("CreateObject")))
--]]
function ENTITY.HAS_ANIM_EVENT_FIRED(entity, actionHash)
  return native.invoke(
    Type.Bool, 836, false,
    arg(Type.Entity, entity),
    arg(Type.Hash, actionHash)
  )
end

-- BOOL FIND_ANIM_EVENT_PHASE(const char* animDictionary, const char* animName, const char* p2, Any* p3, Any* p4) // 0x07F1BE2BCCAA27A7
--[[
In the script "player_scene_t_bbfight.c4":
"if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/*16*/], v_9, &v_A, &v_B))"
-- &l_16E (p0) is requested as an anim dictionary earlier in the script.
-- &l_19F[v_4/*16*/] (p1) is used in other natives in the script as the "animation" param.
-- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim
--v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for: 
"if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))"
Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.FIND_ANIM_EVENT_PHASE(animDictionary, animName, p2, p3, p4)
  return native.invoke(
    Type.Bool, 837, false,
    arg(Type.String, animDictionary),
    arg(Type.String, animName),
    arg(Type.String, p2),
    ref(Type.Any, p3),
    ref(Type.Any, p4)
  )
end

-- void SET_ENTITY_ANIM_CURRENT_TIME(Entity entity, const char* animDictionary, const char* animName, float time) // 0x4487C259F0F70977
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.SET_ENTITY_ANIM_CURRENT_TIME(entity, animDictionary, animName, time)
  native.invoke(
    Type.Void, 838, false,
    arg(Type.Entity, entity),
    arg(Type.String, animDictionary),
    arg(Type.String, animName),
    arg(Type.Float, time)
  )
end

-- void SET_ENTITY_ANIM_SPEED(Entity entity, const char* animDictionary, const char* animName, float speedMultiplier) // 0x28D1A16553C51776
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function ENTITY.SET_ENTITY_ANIM_SPEED(entity, animDictionary, animName, speedMultiplier)
  native.invoke(
    Type.Void, 839, false,
    arg(Type.Entity, entity),
    arg(Type.String, animDictionary),
    arg(Type.String, animName),
    arg(Type.Float, speedMultiplier)
  )
end

-- void SET_ENTITY_AS_MISSION_ENTITY(Entity entity, BOOL p1, BOOL p2) // 0xAD738C3085FE7E11
--[[
Makes the specified entity (ped, vehicle or object) persistent. Persistent entities will not automatically be removed by the engine.

p1 has no effect when either its on or off 
maybe a quick disassembly will tell us what it does

p2 has no effect when either its on or off 
maybe a quick disassembly will tell us what it does
--]]
function ENTITY.SET_ENTITY_AS_MISSION_ENTITY(entity, p1, p2)
  native.invoke(
    Type.Void, 840, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void SET_ENTITY_AS_NO_LONGER_NEEDED(Entity* entity) // 0xB736A491E64A32CF
--[[
Marks the specified entity (ped, vehicle or object) as no longer needed if its population type is set to the mission type.
If the entity is ped, it will also clear their tasks immediately just like when CLEAR_PED_TASKS_IMMEDIATELY is called.
Entities marked as no longer needed, will be deleted as the engine sees fit.
Use this if you just want to just let the game delete the ped:
void MarkPedAsAmbientPed(Ped ped) {
  auto addr = getScriptHandleBaseAddress(ped);

  if (!addr) {
    return;
  }

  //the game uses only lower 4 bits as entity population type 
  BYTE origValue = *(BYTE *)(addr + 0xDA);
  *(BYTE *)(addr + 0xDA) = ((origValue & 0xF0) | ePopulationType::POPTYPE_RANDOM_AMBIENT);
}
--]]
function ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(entity)
  native.invoke(
    Type.Void, 841, false,
    ref(Type.Entity, entity)
  )
end

-- void SET_PED_AS_NO_LONGER_NEEDED(Ped* ped) // 0x2595DD4236549CE3
--[[
This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
--]]
function ENTITY.SET_PED_AS_NO_LONGER_NEEDED(ped)
  native.invoke(
    Type.Void, 842, false,
    ref(Type.Ped, ped)
  )
end

-- void SET_VEHICLE_AS_NO_LONGER_NEEDED(Vehicle* vehicle) // 0x629BFA74418D6239
--[[
This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
--]]
function ENTITY.SET_VEHICLE_AS_NO_LONGER_NEEDED(vehicle)
  native.invoke(
    Type.Void, 843, false,
    ref(Type.Vehicle, vehicle)
  )
end

-- void SET_OBJECT_AS_NO_LONGER_NEEDED(Object* object) // 0x3AE22DEB5BA5A3E6
--[[
This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
--]]
function ENTITY.SET_OBJECT_AS_NO_LONGER_NEEDED(object)
  native.invoke(
    Type.Void, 844, false,
    ref(Type.Object, object)
  )
end

-- void SET_ENTITY_CAN_BE_DAMAGED(Entity entity, BOOL toggle) // 0x1760FFA8AB074D66
function ENTITY.SET_ENTITY_CAN_BE_DAMAGED(entity, toggle)
  native.invoke(
    Type.Void, 845, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_ENTITY_CAN_BE_DAMAGED(Entity entity) // 0xD95CC5D2AB15A09F
function ENTITY.GET_ENTITY_CAN_BE_DAMAGED(entity)
  return native.invoke(
    Type.Bool, 846, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP(Entity entity, BOOL bCanBeDamaged, int relGroup) // 0xE22D8FDE858B8119
function ENTITY.SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP(entity, bCanBeDamaged, relGroup)
  native.invoke(
    Type.Void, 847, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, bCanBeDamaged),
    arg(Type.Int, relGroup)
  )
end

-- void SET_ENTITY_CAN_ONLY_BE_DAMAGED_BY_SCRIPT_PARTICIPANTS(Entity entity, BOOL toggle) // 0x352E2B5CF420BF3B
function ENTITY.SET_ENTITY_CAN_ONLY_BE_DAMAGED_BY_SCRIPT_PARTICIPANTS(entity, toggle)
  native.invoke(
    Type.Void, 848, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS(Entity entity, BOOL toggle) // 0xD3997889736FD899
--[[
Sets whether the entity can be targeted without being in line-of-sight.
--]]
function ENTITY.SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS(entity, toggle)
  native.invoke(
    Type.Void, 849, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_COLLISION(Entity entity, BOOL toggle, BOOL keepPhysics) // 0x1A9205C1B9EE827F
function ENTITY.SET_ENTITY_COLLISION(entity, toggle, keepPhysics)
  native.invoke(
    Type.Void, 850, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle),
    arg(Type.Bool, keepPhysics)
  )
end

-- BOOL GET_ENTITY_COLLISION_DISABLED(Entity entity) // 0xCCF1E97BEFDAE480
function ENTITY.GET_ENTITY_COLLISION_DISABLED(entity)
  return native.invoke(
    Type.Bool, 851, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_ENTITY_COMPLETELY_DISABLE_COLLISION(Entity entity, BOOL toggle, BOOL keepPhysics) // 0x9EBC85ED0FFFE51C
function ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(entity, toggle, keepPhysics)
  native.invoke(
    Type.Void, 852, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle),
    arg(Type.Bool, keepPhysics)
  )
end

-- void SET_ENTITY_COORDS(Entity entity, float xPos, float yPos, float zPos, BOOL xAxis, BOOL yAxis, BOOL zAxis, BOOL clearArea) // 0x06843DA7060A026B
--[[
p7 is always 1 in the scripts. Set to 1, an area around the destination coords for the moved entity is cleared from other entities. 
 
Often ends with 1, 0, 0, 1); in the scripts. It works. 

Axis - Invert Axis Flags
--]]
function ENTITY.SET_ENTITY_COORDS(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
  native.invoke(
    Type.Void, 853, false,
    arg(Type.Entity, entity),
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis),
    arg(Type.Bool, clearArea)
  )
end

-- void SET_ENTITY_COORDS_WITHOUT_PLANTS_RESET(Entity entity, float xPos, float yPos, float zPos, BOOL alive, BOOL deadFlag, BOOL ragdollFlag, BOOL clearArea) // 0x621873ECE1178967
function ENTITY.SET_ENTITY_COORDS_WITHOUT_PLANTS_RESET(entity, xPos, yPos, zPos, alive, deadFlag, ragdollFlag, clearArea)
  native.invoke(
    Type.Void, 854, false,
    arg(Type.Entity, entity),
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Bool, alive),
    arg(Type.Bool, deadFlag),
    arg(Type.Bool, ragdollFlag),
    arg(Type.Bool, clearArea)
  )
end

-- void SET_ENTITY_COORDS_NO_OFFSET(Entity entity, float xPos, float yPos, float zPos, BOOL xAxis, BOOL yAxis, BOOL zAxis) // 0x239A3351AC1DA385
--[[
Axis - Invert Axis Flags
--]]
function ENTITY.SET_ENTITY_COORDS_NO_OFFSET(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis)
  native.invoke(
    Type.Void, 855, false,
    arg(Type.Entity, entity),
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis)
  )
end

-- void SET_ENTITY_DYNAMIC(Entity entity, BOOL toggle) // 0x1718DE8E3F2823CA
function ENTITY.SET_ENTITY_DYNAMIC(entity, toggle)
  native.invoke(
    Type.Void, 856, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_HEADING(Entity entity, float heading) // 0x8E2530AA8ADA980E
--[[
Set the heading of an entity in degrees also known as "Yaw".
--]]
function ENTITY.SET_ENTITY_HEADING(entity, heading)
  native.invoke(
    Type.Void, 857, false,
    arg(Type.Entity, entity),
    arg(Type.Float, heading)
  )
end

-- void SET_ENTITY_HEALTH(Entity entity, int health, Entity instigator, Hash weaponType) // 0x6B76DC1F3AE6E6A3
--[[
health >= 0
male ped ~= 100 - 200
female ped ~= 0 - 100
--]]
function ENTITY.SET_ENTITY_HEALTH(entity, health, instigator, weaponType)
  native.invoke(
    Type.Void, 858, false,
    arg(Type.Entity, entity),
    arg(Type.Int, health),
    arg(Type.Entity, instigator),
    arg(Type.Hash, weaponType)
  )
end

-- void SET_ENTITY_INVINCIBLE(Entity entity, BOOL toggle) // 0x3882114BDE571AD4
--[[
Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.

If you use this for a ped and you want Ragdoll to stay enabled, then do:
*(DWORD *)(pedAddress + 0x188) |= (1 << 9);

Use this if you want to get the invincibility status:
  bool IsPedInvincible(Ped ped)
 {
     auto addr = getScriptHandleBaseAddress(ped);    

        if (addr)
     {
         DWORD flag = *(DWORD *)(addr + 0x188);
            return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);
      }

       return false;
 }
--]]
function ENTITY.SET_ENTITY_INVINCIBLE(entity, toggle)
  native.invoke(
    Type.Void, 859, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_IS_TARGET_PRIORITY(Entity entity, BOOL p1, float p2) // 0xEA02E132F5C68722
function ENTITY.SET_ENTITY_IS_TARGET_PRIORITY(entity, p1, p2)
  native.invoke(
    Type.Void, 860, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, p1),
    arg(Type.Float, p2)
  )
end

-- void SET_ENTITY_LIGHTS(Entity entity, BOOL toggle) // 0x7CFBA6A80BDF3874
function ENTITY.SET_ENTITY_LIGHTS(entity, toggle)
  native.invoke(
    Type.Void, 861, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_LOAD_COLLISION_FLAG(Entity entity, BOOL toggle, Any p2) // 0x0DC7CABAB1E9B67E
--[[
Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.
Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.
--]]
function ENTITY.SET_ENTITY_LOAD_COLLISION_FLAG(entity, toggle, p2)
  native.invoke(
    Type.Void, 862, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle),
    arg(Type.Any, p2)
  )
end

-- BOOL HAS_COLLISION_LOADED_AROUND_ENTITY(Entity entity) // 0xE9676F61BC0B3321
function ENTITY.HAS_COLLISION_LOADED_AROUND_ENTITY(entity)
  return native.invoke(
    Type.Bool, 863, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_ENTITY_MAX_SPEED(Entity entity, float speed) // 0x0E46A3FCBDE2A1B1
function ENTITY.SET_ENTITY_MAX_SPEED(entity, speed)
  native.invoke(
    Type.Void, 864, false,
    arg(Type.Entity, entity),
    arg(Type.Float, speed)
  )
end

-- void SET_ENTITY_ONLY_DAMAGED_BY_PLAYER(Entity entity, BOOL toggle) // 0x79F020FF9EDC0748
function ENTITY.SET_ENTITY_ONLY_DAMAGED_BY_PLAYER(entity, toggle)
  native.invoke(
    Type.Void, 865, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP(Entity entity, BOOL p1, Any p2) // 0x7022BD828FA0B082
function ENTITY.SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP(entity, p1, p2)
  native.invoke(
    Type.Void, 866, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- void SET_ENTITY_PROOFS(Entity entity, BOOL bulletProof, BOOL fireProof, BOOL explosionProof, BOOL collisionProof, BOOL meleeProof, BOOL steamProof, BOOL p7, BOOL waterProof) // 0xFAEE099C6F890BB8
--[[
Enable / disable each type of damage.

waterProof is damage related to water not drowning
--------------
p7 is to to '1' in am_mp_property_ext/int: ENTITY::SET_ENTITY_PROOFS(uParam0->f_19, true, true, true, true, true, true, 1, true);

--]]
function ENTITY.SET_ENTITY_PROOFS(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, waterProof)
  native.invoke(
    Type.Void, 867, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, bulletProof),
    arg(Type.Bool, fireProof),
    arg(Type.Bool, explosionProof),
    arg(Type.Bool, collisionProof),
    arg(Type.Bool, meleeProof),
    arg(Type.Bool, steamProof),
    arg(Type.Bool, p7),
    arg(Type.Bool, waterProof)
  )
end

-- BOOL GET_ENTITY_PROOFS(Entity entity, BOOL* bulletProof, BOOL* fireProof, BOOL* explosionProof, BOOL* collisionProof, BOOL* meleeProof, BOOL* steamProof, BOOL* p7, BOOL* drownProof) // 0xBE8CD9BE829BBEBF
function ENTITY.GET_ENTITY_PROOFS(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, steamProof, p7, drownProof)
  return native.invoke(
    Type.Bool, 868, false,
    arg(Type.Entity, entity),
    ref(Type.Bool, bulletProof),
    ref(Type.Bool, fireProof),
    ref(Type.Bool, explosionProof),
    ref(Type.Bool, collisionProof),
    ref(Type.Bool, meleeProof),
    ref(Type.Bool, steamProof),
    ref(Type.Bool, p7),
    ref(Type.Bool, drownProof)
  )
end

-- void SET_ENTITY_QUATERNION(Entity entity, float x, float y, float z, float w) // 0x77B21BE7AC540F07
--[[
w is the correct parameter name!
--]]
function ENTITY.SET_ENTITY_QUATERNION(entity, x, y, z, w)
  native.invoke(
    Type.Void, 869, false,
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, w)
  )
end

-- void SET_ENTITY_RECORDS_COLLISIONS(Entity entity, BOOL toggle) // 0x0A50A1EEDAD01E65
function ENTITY.SET_ENTITY_RECORDS_COLLISIONS(entity, toggle)
  native.invoke(
    Type.Void, 870, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_ROTATION(Entity entity, float pitch, float roll, float yaw, int rotationOrder, BOOL p5) // 0x8524A8B0171D5E07
--[[
rotationOrder refers to the order yaw pitch roll is applied
value ranges from 0 to 5. What you use for rotationOrder when setting must be the same as rotationOrder when getting the rotation. 
Unsure what value corresponds to what rotation order, more testing will be needed for that.
For the most part R* uses 1 or 2 as the order.
p5 is usually set as true

--]]
function ENTITY.SET_ENTITY_ROTATION(entity, pitch, roll, yaw, rotationOrder, p5)
  native.invoke(
    Type.Void, 871, false,
    arg(Type.Entity, entity),
    arg(Type.Float, pitch),
    arg(Type.Float, roll),
    arg(Type.Float, yaw),
    arg(Type.Int, rotationOrder),
    arg(Type.Bool, p5)
  )
end

-- void SET_ENTITY_VISIBLE(Entity entity, BOOL toggle, BOOL p2) // 0xEA1C610A04DB6BBB
--[[
p2 is always 0.
--]]
function ENTITY.SET_ENTITY_VISIBLE(entity, toggle, p2)
  native.invoke(
    Type.Void, 872, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle),
    arg(Type.Bool, p2)
  )
end

-- void SET_ENTITY_WATER_REFLECTION_FLAG(Entity entity, BOOL toggle) // 0xC34BC448DA29F5E9
function ENTITY.SET_ENTITY_WATER_REFLECTION_FLAG(entity, toggle)
  native.invoke(
    Type.Void, 873, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_MIRROR_REFLECTION_FLAG(Entity entity, BOOL p1) // 0xE66377CDDADA4810
function ENTITY.SET_ENTITY_MIRROR_REFLECTION_FLAG(entity, p1)
  native.invoke(
    Type.Void, 874, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, p1)
  )
end

-- void SET_ENTITY_VELOCITY(Entity entity, float x, float y, float z) // 0x1C99BB7B6E96D16F
--[[
Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
--]]
function ENTITY.SET_ENTITY_VELOCITY(entity, x, y, z)
  native.invoke(
    Type.Void, 875, false,
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_ENTITY_ANGULAR_VELOCITY(Entity entity, float x, float y, float z) // 0x8339643499D1222E
function ENTITY.SET_ENTITY_ANGULAR_VELOCITY(entity, x, y, z)
  native.invoke(
    Type.Void, 876, false,
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_ENTITY_HAS_GRAVITY(Entity entity, BOOL toggle) // 0x4A4722448F18EEF5
function ENTITY.SET_ENTITY_HAS_GRAVITY(entity, toggle)
  native.invoke(
    Type.Void, 877, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_LOD_DIST(Entity entity, int value) // 0x5927F96A78577363
--[[
LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).
--]]
function ENTITY.SET_ENTITY_LOD_DIST(entity, value)
  native.invoke(
    Type.Void, 878, false,
    arg(Type.Entity, entity),
    arg(Type.Int, value)
  )
end

-- int GET_ENTITY_LOD_DIST(Entity entity) // 0x4159C2762B5791D6
--[[
Returns the LOD distance of an entity.
--]]
function ENTITY.GET_ENTITY_LOD_DIST(entity)
  return native.invoke(
    Type.Int, 879, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_ENTITY_ALPHA(Entity entity, int alphaLevel, BOOL skin) // 0x44A0870B7E92D7C0
--[[
skin - everything alpha except skin
Set entity alpha level. Ranging from 0 to 255 but chnages occur after every 20 percent (after every 51).
--]]
function ENTITY.SET_ENTITY_ALPHA(entity, alphaLevel, skin)
  native.invoke(
    Type.Void, 880, false,
    arg(Type.Entity, entity),
    arg(Type.Int, alphaLevel),
    arg(Type.Bool, skin)
  )
end

-- int GET_ENTITY_ALPHA(Entity entity) // 0x5A47B3B5E63E94C6
function ENTITY.GET_ENTITY_ALPHA(entity)
  return native.invoke(
    Type.Int, 881, false,
    arg(Type.Entity, entity)
  )
end

-- void RESET_ENTITY_ALPHA(Entity entity) // 0x9B1E824FFBB7027A
function ENTITY.RESET_ENTITY_ALPHA(entity)
  native.invoke(
    Type.Void, 882, false,
    arg(Type.Entity, entity)
  )
end

-- void RESET_PICKUP_ENTITY_GLOW(Entity entity) // 0x490861B88F4FD846
--[[
Similar to RESET_ENTITY_ALPHA
--]]
function ENTITY.RESET_PICKUP_ENTITY_GLOW(entity)
  native.invoke(
    Type.Void, 883, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_PICKUP_COLLIDES_WITH_PROJECTILES(Any p0, Any p1) // 0xCEA7C8E1B48FF68C
function ENTITY.SET_PICKUP_COLLIDES_WITH_PROJECTILES(p0, p1)
  native.invoke(
    Type.Void, 884, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_ENTITY_SORT_BIAS(Entity entity, float p1) // 0x5C3B791D580E0BC2
--[[
Only called once in the scripts.

Related to weapon objects.

--]]
function ENTITY.SET_ENTITY_SORT_BIAS(entity, p1)
  native.invoke(
    Type.Void, 885, false,
    arg(Type.Entity, entity),
    arg(Type.Float, p1)
  )
end

-- void SET_ENTITY_ALWAYS_PRERENDER(Entity entity, BOOL toggle) // 0xACAD101E1FB66689
function ENTITY.SET_ENTITY_ALWAYS_PRERENDER(entity, toggle)
  native.invoke(
    Type.Void, 886, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_RENDER_SCORCHED(Entity entity, BOOL toggle) // 0x730F5F8D3F0F2050
function ENTITY.SET_ENTITY_RENDER_SCORCHED(entity, toggle)
  native.invoke(
    Type.Void, 887, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_TRAFFICLIGHT_OVERRIDE(Entity entity, int state) // 0x57C5DB656185EAC4
--[[
Example here: www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340

0 = green
1 = red
2 = yellow
3 = reset changes
changing lights may not change the behavior of vehicles
--]]
function ENTITY.SET_ENTITY_TRAFFICLIGHT_OVERRIDE(entity, state)
  native.invoke(
    Type.Void, 888, false,
    arg(Type.Entity, entity),
    arg(Type.Int, state)
  )
end

-- void SET_ENTITY_IS_IN_VEHICLE(Entity entity) // 0x78E8E3A640178255
function ENTITY.SET_ENTITY_IS_IN_VEHICLE(entity)
  native.invoke(
    Type.Void, 889, false,
    arg(Type.Entity, entity)
  )
end

-- void CREATE_MODEL_SWAP(float x, float y, float z, float radius, Hash originalModel, Hash newModel, BOOL p6) // 0x92C47782FDA8B2A3
--[[
Only works with objects!
--]]
function ENTITY.CREATE_MODEL_SWAP(x, y, z, radius, originalModel, newModel, p6)
  native.invoke(
    Type.Void, 890, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, originalModel),
    arg(Type.Hash, newModel),
    arg(Type.Bool, p6)
  )
end

-- void REMOVE_MODEL_SWAP(float x, float y, float z, float radius, Hash originalModel, Hash newModel, BOOL p6) // 0x033C0F9A64E229AE
function ENTITY.REMOVE_MODEL_SWAP(x, y, z, radius, originalModel, newModel, p6)
  native.invoke(
    Type.Void, 891, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, originalModel),
    arg(Type.Hash, newModel),
    arg(Type.Bool, p6)
  )
end

-- void CREATE_MODEL_HIDE(float x, float y, float z, float radius, Hash modelHash, BOOL p5) // 0x8A97BCA30A0CE478
--[[
p5 = sets as true in scripts
Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.

Network players do not see changes done with this.
--]]
function ENTITY.CREATE_MODEL_HIDE(x, y, z, radius, modelHash, p5)
  native.invoke(
    Type.Void, 892, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, modelHash),
    arg(Type.Bool, p5)
  )
end

-- void CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS(float x, float y, float z, float radius, Hash modelHash, BOOL p5) // 0x3A52AE588830BF7F
function ENTITY.CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS(x, y, z, radius, modelHash, p5)
  native.invoke(
    Type.Void, 893, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, modelHash),
    arg(Type.Bool, p5)
  )
end

-- void REMOVE_MODEL_HIDE(float x, float y, float z, float radius, Hash modelHash, BOOL p5) // 0xD9E3006FB3CBD765
--[[
This native makes entities visible that are hidden by the native CREATE_MODEL_HIDE.
p5 should be false, true does nothing
--]]
function ENTITY.REMOVE_MODEL_HIDE(x, y, z, radius, modelHash, p5)
  native.invoke(
    Type.Void, 894, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, modelHash),
    arg(Type.Bool, p5)
  )
end

-- void CREATE_FORCED_OBJECT(float x, float y, float z, Any p3, Hash modelHash, BOOL p5) // 0x150E808B375A385A
function ENTITY.CREATE_FORCED_OBJECT(x, y, z, p3, modelHash, p5)
  native.invoke(
    Type.Void, 895, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Any, p3),
    arg(Type.Hash, modelHash),
    arg(Type.Bool, p5)
  )
end

-- void REMOVE_FORCED_OBJECT(float x, float y, float z, float p3, Hash modelHash) // 0x61B6775E83C0DB6F
function ENTITY.REMOVE_FORCED_OBJECT(x, y, z, p3, modelHash)
  native.invoke(
    Type.Void, 896, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3),
    arg(Type.Hash, modelHash)
  )
end

-- void SET_ENTITY_NO_COLLISION_ENTITY(Entity entity1, Entity entity2, BOOL thisFrameOnly) // 0xA53ED5520C07654A
--[[
Calling this function disables collision between two entities.
The importance of the order for entity1 and entity2 is unclear.
The third parameter, `thisFrame`, decides whether the collision is to be disabled until it is turned back on, or if it's just this frame.
--]]
function ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(entity1, entity2, thisFrameOnly)
  native.invoke(
    Type.Void, 897, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2),
    arg(Type.Bool, thisFrameOnly)
  )
end

-- void SET_ENTITY_MOTION_BLUR(Entity entity, BOOL toggle) // 0x295D82A8559F9150
function ENTITY.SET_ENTITY_MOTION_BLUR(entity, toggle)
  native.invoke(
    Type.Void, 898, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_CAN_AUTO_VAULT_ON_ENTITY(Entity entity, BOOL toggle) // 0xE12ABE5E3A389A6C
--[[
p1 always false.
--]]
function ENTITY.SET_CAN_AUTO_VAULT_ON_ENTITY(entity, toggle)
  native.invoke(
    Type.Void, 899, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_CAN_CLIMB_ON_ENTITY(Entity entity, BOOL toggle) // 0xA80AE305E0A3044F
--[[
p1 always false.
--]]
function ENTITY.SET_CAN_CLIMB_ON_ENTITY(entity, toggle)
  native.invoke(
    Type.Void, 900, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_WAIT_FOR_COLLISIONS_BEFORE_PROBE(Entity entity, BOOL toggle) // 0xDC6F8601FAF2E893
--[[
Only called within 1 script for x360. 'fm_mission_controller' and it used on an object. 

Ran after these 2 natives,
set_object_targettable(uParam0, 0);
set_entity_invincible(uParam0, 1);
--]]
function ENTITY.SET_WAIT_FOR_COLLISIONS_BEFORE_PROBE(entity, toggle)
  native.invoke(
    Type.Void, 901, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_NOWEAPONDECALS(Entity entity, BOOL p1) // 0x2C2E3DC128F44309
function ENTITY.SET_ENTITY_NOWEAPONDECALS(entity, p1)
  native.invoke(
    Type.Void, 902, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, p1)
  )
end

-- void SET_ENTITY_USE_MAX_DISTANCE_FOR_WATER_REFLECTION(Entity entity, BOOL p1) // 0x1A092BB0C3808B96
function ENTITY.SET_ENTITY_USE_MAX_DISTANCE_FOR_WATER_REFLECTION(entity, p1)
  native.invoke(
    Type.Void, 903, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, p1)
  )
end

-- Vector3 GET_ENTITY_BONE_ROTATION(Entity entity, int boneIndex) // 0xCE6294A232D03786
--[[
Gets the world rotation of the specified bone of the specified entity.
--]]
function ENTITY.GET_ENTITY_BONE_ROTATION(entity, boneIndex)
  return native.invoke(
    Type.Vector3, 904, false,
    arg(Type.Entity, entity),
    arg(Type.Int, boneIndex)
  )
end

-- Vector3 GET_ENTITY_BONE_POSTION(Entity entity, int boneIndex) // 0x46F8696933A63C9B
--[[
Gets the world position of the specified bone of the specified entity.
--]]
function ENTITY.GET_ENTITY_BONE_POSTION(entity, boneIndex)
  return native.invoke(
    Type.Vector3, 905, false,
    arg(Type.Entity, entity),
    arg(Type.Int, boneIndex)
  )
end

-- Vector3 GET_ENTITY_BONE_OBJECT_ROTATION(Entity entity, int boneIndex) // 0xBD8D32550E5CEBFE
--[[
Gets the local rotation of the specified bone of the specified entity.
--]]
function ENTITY.GET_ENTITY_BONE_OBJECT_ROTATION(entity, boneIndex)
  return native.invoke(
    Type.Vector3, 906, false,
    arg(Type.Entity, entity),
    arg(Type.Int, boneIndex)
  )
end

-- Vector3 GET_ENTITY_BONE_OBJECT_POSTION(Entity entity, int boneIndex) // 0xCF1247CC86961FD6
function ENTITY.GET_ENTITY_BONE_OBJECT_POSTION(entity, boneIndex)
  return native.invoke(
    Type.Vector3, 907, false,
    arg(Type.Entity, entity),
    arg(Type.Int, boneIndex)
  )
end

-- int GET_ENTITY_BONE_COUNT(Entity entity) // 0xB328DCC3A3AA401B
function ENTITY.GET_ENTITY_BONE_COUNT(entity)
  return native.invoke(
    Type.Int, 908, false,
    arg(Type.Entity, entity)
  )
end

-- void ENABLE_ENTITY_BULLET_COLLISION(Entity entity) // 0x6CE177D014502E8A
function ENTITY.ENABLE_ENTITY_BULLET_COLLISION(entity)
  native.invoke(
    Type.Void, 909, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_ENTITY_CAN_ONLY_BE_DAMAGED_BY_ENTITY(Entity entity1, Entity entity2) // 0xB17BC6453F6CF5AC
function ENTITY.SET_ENTITY_CAN_ONLY_BE_DAMAGED_BY_ENTITY(entity1, entity2)
  native.invoke(
    Type.Void, 910, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2)
  )
end

-- void SET_ENTITY_CANT_CAUSE_COLLISION_DAMAGED_ENTITY(Entity entity1, Entity entity2) // 0x68B562E124CC0AEF
function ENTITY.SET_ENTITY_CANT_CAUSE_COLLISION_DAMAGED_ENTITY(entity1, entity2)
  native.invoke(
    Type.Void, 911, false,
    arg(Type.Entity, entity1),
    arg(Type.Entity, entity2)
  )
end

-- void SET_ALLOW_MIGRATE_TO_SPECTATOR(Entity entity, Any p1) // 0x36F32DE87082343E
--[[
p1 is always set to 1
--]]
function ENTITY.SET_ALLOW_MIGRATE_TO_SPECTATOR(entity, p1)
  native.invoke(
    Type.Void, 912, false,
    arg(Type.Entity, entity),
    arg(Type.Any, p1)
  )
end

-- Entity GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(Entity entity, Hash modelHash) // 0x1F922734E259BD26
--[[
Gets the handle of an entity with a specific model hash attached to another entity, such as an object attached to a ped.
 This native does not appear to have anything to do with pickups as in scripts it is used with objects.

Example from fm_mission_controller_2020.c:

iVar8 = ENTITY::GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(bParam0->f_9, joaat("p_cs_clipboard"));
--]]
function ENTITY.GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(entity, modelHash)
  return native.invoke(
    Type.Entity, 913, false,
    arg(Type.Entity, entity),
    arg(Type.Hash, modelHash)
  )
end

-- void SET_PICK_UP_BY_CARGOBOB_DISABLED(Entity entity, BOOL toggle) // 0xD7B80E7C3BEFC396
function ENTITY.SET_PICK_UP_BY_CARGOBOB_DISABLED(entity, toggle)
  native.invoke(
    Type.Void, 914, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end


