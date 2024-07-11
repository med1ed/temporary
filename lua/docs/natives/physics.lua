PHYSICS = {}

-- int ADD_ROPE(float x, float y, float z, float rotX, float rotY, float rotZ, float length, int ropeType, float maxLength, float minLength, float windingSpeed, BOOL p11, BOOL p12, BOOL rigid, float p14, BOOL breakWhenShot, Any* unkPtr) // 0xE832D760399EB220
--[[
Creates a rope at the specific position, that extends in the specified direction when not attached to any entities.
__

Add_Rope(pos.x,pos.y,pos.z,0.0,0.0,0.0,20.0,4,20.0,1.0,0.0,false,false,false,5.0,false,NULL)

When attached, Position<vector> does not matter
When attached, Angle<vector> does not matter

Rope Type:
4 and bellow is a thick rope
5 and up are small metal wires
0 crashes the game

Max_length - Rope is forced to this length, generally best to keep this the same as your rope length.

windingSpeed - Speed the Rope is being winded, using native START_ROPE_WINDING. Set positive for winding and negative for unwinding.

Rigid - If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).

breakable - Whether or not shooting the rope will break it.

unkPtr - unknown ptr, always 0 in orig scripts
__

Lengths can be calculated like so:

float distance = abs(x1 - x2) + abs(y1 - y2) + abs(z1 - z2); // Rope length


NOTES:

Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).

Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.
--]]
function PHYSICS.ADD_ROPE(x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, windingSpeed, p11, p12, rigid, p14, breakWhenShot, unkPtr)
  return native.invoke(
    Type.Int, 4455, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, length),
    arg(Type.Int, ropeType),
    arg(Type.Float, maxLength),
    arg(Type.Float, minLength),
    arg(Type.Float, windingSpeed),
    arg(Type.Bool, p11),
    arg(Type.Bool, p12),
    arg(Type.Bool, rigid),
    arg(Type.Float, p14),
    arg(Type.Bool, breakWhenShot),
    ref(Type.Any, unkPtr)
  )
end

-- void DELETE_ROPE(int* ropeId) // 0x52B4829281364649
function PHYSICS.DELETE_ROPE(ropeId)
  native.invoke(
    Type.Void, 4456, false,
    ref(Type.Int, ropeId)
  )
end

-- void DELETE_CHILD_ROPE(int ropeId) // 0xAA5D6B1888E4DB20
function PHYSICS.DELETE_CHILD_ROPE(ropeId)
  native.invoke(
    Type.Void, 4457, false,
    arg(Type.Int, ropeId)
  )
end

-- BOOL DOES_ROPE_EXIST(int* ropeId) // 0xFD5448BE3111ED96
function PHYSICS.DOES_ROPE_EXIST(ropeId)
  return native.invoke(
    Type.Bool, 4458, false,
    ref(Type.Int, ropeId)
  )
end

-- void ROPE_DRAW_ENABLED(int* ropeId, BOOL p1) // 0xA1AE736541B0FCA3
function PHYSICS.ROPE_DRAW_ENABLED(ropeId, p1)
  native.invoke(
    Type.Void, 4459, false,
    ref(Type.Int, ropeId),
    arg(Type.Bool, p1)
  )
end

-- void ROPE_DRAW_SHADOW_ENABLED(int* ropeId, BOOL toggle) // 0xF159A63806BB5BA8
function PHYSICS.ROPE_DRAW_SHADOW_ENABLED(ropeId, toggle)
  native.invoke(
    Type.Void, 4460, false,
    ref(Type.Int, ropeId),
    arg(Type.Bool, toggle)
  )
end

-- void LOAD_ROPE_DATA(int ropeId, const char* rope_preset) // 0xCBB203C04D1ABD27
--[[
Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
--]]
function PHYSICS.LOAD_ROPE_DATA(ropeId, rope_preset)
  native.invoke(
    Type.Void, 4461, false,
    arg(Type.Int, ropeId),
    arg(Type.String, rope_preset)
  )
end

-- void PIN_ROPE_VERTEX(int ropeId, int vertex, float x, float y, float z) // 0x2B320CF14146B69A
function PHYSICS.PIN_ROPE_VERTEX(ropeId, vertex, x, y, z)
  native.invoke(
    Type.Void, 4462, false,
    arg(Type.Int, ropeId),
    arg(Type.Int, vertex),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void UNPIN_ROPE_VERTEX(int ropeId, int vertex) // 0x4B5AE2EEE4A8F180
function PHYSICS.UNPIN_ROPE_VERTEX(ropeId, vertex)
  native.invoke(
    Type.Void, 4463, false,
    arg(Type.Int, ropeId),
    arg(Type.Int, vertex)
  )
end

-- int GET_ROPE_VERTEX_COUNT(int ropeId) // 0x3655F544CD30F0B5
function PHYSICS.GET_ROPE_VERTEX_COUNT(ropeId)
  return native.invoke(
    Type.Int, 4464, false,
    arg(Type.Int, ropeId)
  )
end

-- void ATTACH_ENTITIES_TO_ROPE(int ropeId, Entity ent1, Entity ent2, float ent1_x, float ent1_y, float ent1_z, float ent2_x, float ent2_y, float ent2_z, float length, BOOL p10, BOOL p11, Any* p12, Any* p13) // 0x3D95EC8B6D940AC3
--[[
Attaches entity 1 to entity 2.
--]]
function PHYSICS.ATTACH_ENTITIES_TO_ROPE(ropeId, ent1, ent2, ent1_x, ent1_y, ent1_z, ent2_x, ent2_y, ent2_z, length, p10, p11, p12, p13)
  native.invoke(
    Type.Void, 4465, false,
    arg(Type.Int, ropeId),
    arg(Type.Entity, ent1),
    arg(Type.Entity, ent2),
    arg(Type.Float, ent1_x),
    arg(Type.Float, ent1_y),
    arg(Type.Float, ent1_z),
    arg(Type.Float, ent2_x),
    arg(Type.Float, ent2_y),
    arg(Type.Float, ent2_z),
    arg(Type.Float, length),
    arg(Type.Bool, p10),
    arg(Type.Bool, p11),
    ref(Type.Any, p12),
    ref(Type.Any, p13)
  )
end

-- void ATTACH_ROPE_TO_ENTITY(int ropeId, Entity entity, float x, float y, float z, BOOL p5) // 0x4B490A6832559A65
--[[
The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.
--]]
function PHYSICS.ATTACH_ROPE_TO_ENTITY(ropeId, entity, x, y, z, p5)
  native.invoke(
    Type.Void, 4466, false,
    arg(Type.Int, ropeId),
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p5)
  )
end

-- void DETACH_ROPE_FROM_ENTITY(int ropeId, Entity entity) // 0xBCF3026912A8647D
function PHYSICS.DETACH_ROPE_FROM_ENTITY(ropeId, entity)
  native.invoke(
    Type.Void, 4467, false,
    arg(Type.Int, ropeId),
    arg(Type.Entity, entity)
  )
end

-- void ROPE_SET_UPDATE_PINVERTS(int ropeId) // 0xC8D667EE52114ABA
function PHYSICS.ROPE_SET_UPDATE_PINVERTS(ropeId)
  native.invoke(
    Type.Void, 4468, false,
    arg(Type.Int, ropeId)
  )
end

-- void ROPE_SET_UPDATE_ORDER(int ropeId, Any p1) // 0xDC57A637A20006ED
function PHYSICS.ROPE_SET_UPDATE_ORDER(ropeId, p1)
  native.invoke(
    Type.Void, 4469, false,
    arg(Type.Int, ropeId),
    arg(Type.Any, p1)
  )
end

-- void ROPE_SET_SMOOTH_REELIN(int ropeId, BOOL p1) // 0x36CCB9BE67B970FD
function PHYSICS.ROPE_SET_SMOOTH_REELIN(ropeId, p1)
  native.invoke(
    Type.Void, 4470, false,
    arg(Type.Int, ropeId),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_ROPE_ATTACHED_AT_BOTH_ENDS(int* ropeId) // 0x84DE3B5FB3E666F0
function PHYSICS.IS_ROPE_ATTACHED_AT_BOTH_ENDS(ropeId)
  return native.invoke(
    Type.Bool, 4471, false,
    ref(Type.Int, ropeId)
  )
end

-- Vector3 GET_ROPE_LAST_VERTEX_COORD(int ropeId) // 0x21BB0FBD3E217C2D
function PHYSICS.GET_ROPE_LAST_VERTEX_COORD(ropeId)
  return native.invoke(
    Type.Vector3, 4472, false,
    arg(Type.Int, ropeId)
  )
end

-- Vector3 GET_ROPE_VERTEX_COORD(int ropeId, int vertex) // 0xEA61CA8E80F09E4D
function PHYSICS.GET_ROPE_VERTEX_COORD(ropeId, vertex)
  return native.invoke(
    Type.Vector3, 4473, false,
    arg(Type.Int, ropeId),
    arg(Type.Int, vertex)
  )
end

-- void START_ROPE_WINDING(int ropeId) // 0x1461C72C889E343E
function PHYSICS.START_ROPE_WINDING(ropeId)
  native.invoke(
    Type.Void, 4474, false,
    arg(Type.Int, ropeId)
  )
end

-- void STOP_ROPE_WINDING(int ropeId) // 0xCB2D4AB84A19AA7C
function PHYSICS.STOP_ROPE_WINDING(ropeId)
  native.invoke(
    Type.Void, 4475, false,
    arg(Type.Int, ropeId)
  )
end

-- void START_ROPE_UNWINDING_FRONT(int ropeId) // 0x538D1179EC1AA9A9
function PHYSICS.START_ROPE_UNWINDING_FRONT(ropeId)
  native.invoke(
    Type.Void, 4476, false,
    arg(Type.Int, ropeId)
  )
end

-- void STOP_ROPE_UNWINDING_FRONT(int ropeId) // 0xFFF3A50779EFBBB3
function PHYSICS.STOP_ROPE_UNWINDING_FRONT(ropeId)
  native.invoke(
    Type.Void, 4477, false,
    arg(Type.Int, ropeId)
  )
end

-- void ROPE_CONVERT_TO_SIMPLE(int ropeId) // 0x5389D48EFA2F079A
function PHYSICS.ROPE_CONVERT_TO_SIMPLE(ropeId)
  native.invoke(
    Type.Void, 4478, false,
    arg(Type.Int, ropeId)
  )
end

-- void ROPE_LOAD_TEXTURES() // 0x9B9039DBF2D258C1
--[[
Loads rope textures for all ropes in the current scene.
--]]
function PHYSICS.ROPE_LOAD_TEXTURES()
  native.invoke(
    Type.Void, 4479, false
  )
end

-- BOOL ROPE_ARE_TEXTURES_LOADED() // 0xF2D0E6A75CC05597
function PHYSICS.ROPE_ARE_TEXTURES_LOADED()
  return native.invoke(
    Type.Bool, 4480, false
  )
end

-- void ROPE_UNLOAD_TEXTURES() // 0x6CE36C35C1AC8163
--[[
Unloads rope textures for all ropes in the current scene.
--]]
function PHYSICS.ROPE_UNLOAD_TEXTURES()
  native.invoke(
    Type.Void, 4481, false
  )
end

-- BOOL DOES_SCRIPT_OWN_ROPE(int ropeId) // 0x271C9D3ACA5D6409
function PHYSICS.DOES_SCRIPT_OWN_ROPE(ropeId)
  return native.invoke(
    Type.Bool, 4482, false,
    arg(Type.Int, ropeId)
  )
end

-- void ROPE_ATTACH_VIRTUAL_BOUND_GEOM(int ropeId, int p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float p12, float p13) // 0xBC0CE682D4D05650
function PHYSICS.ROPE_ATTACH_VIRTUAL_BOUND_GEOM(ropeId, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
  native.invoke(
    Type.Void, 4483, false,
    arg(Type.Int, ropeId),
    arg(Type.Int, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Float, p10),
    arg(Type.Float, p11),
    arg(Type.Float, p12),
    arg(Type.Float, p13)
  )
end

-- void ROPE_CHANGE_SCRIPT_OWNER(Any p0, BOOL p1, BOOL p2) // 0xB1B6216CA2E7B55E
function PHYSICS.ROPE_CHANGE_SCRIPT_OWNER(p0, p1, p2)
  native.invoke(
    Type.Void, 4484, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void ROPE_SET_REFFRAMEVELOCITY_COLLIDERORDER(int ropeId, int p1) // 0xB743F735C03D7810
function PHYSICS.ROPE_SET_REFFRAMEVELOCITY_COLLIDERORDER(ropeId, p1)
  native.invoke(
    Type.Void, 4485, false,
    arg(Type.Int, ropeId),
    arg(Type.Int, p1)
  )
end

-- float ROPE_GET_DISTANCE_BETWEEN_ENDS(int ropeId) // 0x73040398DFF9A4A6
function PHYSICS.ROPE_GET_DISTANCE_BETWEEN_ENDS(ropeId)
  return native.invoke(
    Type.Float, 4486, false,
    arg(Type.Int, ropeId)
  )
end

-- void ROPE_FORCE_LENGTH(int ropeId, float length) // 0xD009F759A723DB1B
--[[
Forces a rope to a certain length.
--]]
function PHYSICS.ROPE_FORCE_LENGTH(ropeId, length)
  native.invoke(
    Type.Void, 4487, false,
    arg(Type.Int, ropeId),
    arg(Type.Float, length)
  )
end

-- void ROPE_RESET_LENGTH(int ropeId, float length) // 0xC16DE94D9BEA14A0
--[[
Reset a rope to a certain length.
--]]
function PHYSICS.ROPE_RESET_LENGTH(ropeId, length)
  native.invoke(
    Type.Void, 4488, false,
    arg(Type.Int, ropeId),
    arg(Type.Float, length)
  )
end

-- void APPLY_IMPULSE_TO_CLOTH(float posX, float posY, float posZ, float vecX, float vecY, float vecZ, float impulse) // 0xE37F721824571784
function PHYSICS.APPLY_IMPULSE_TO_CLOTH(posX, posY, posZ, vecX, vecY, vecZ, impulse)
  native.invoke(
    Type.Void, 4489, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, vecX),
    arg(Type.Float, vecY),
    arg(Type.Float, vecZ),
    arg(Type.Float, impulse)
  )
end

-- void SET_DAMPING(Entity entity, int vertex, float value) // 0xEEA3B200A6FEB65B
function PHYSICS.SET_DAMPING(entity, vertex, value)
  native.invoke(
    Type.Void, 4490, false,
    arg(Type.Entity, entity),
    arg(Type.Int, vertex),
    arg(Type.Float, value)
  )
end

-- void ACTIVATE_PHYSICS(Entity entity) // 0x710311ADF0E20730
function PHYSICS.ACTIVATE_PHYSICS(entity)
  native.invoke(
    Type.Void, 4491, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_CGOFFSET(Entity entity, float x, float y, float z) // 0xD8FA3908D7B86904
function PHYSICS.SET_CGOFFSET(entity, x, y, z)
  native.invoke(
    Type.Void, 4492, false,
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- Vector3 GET_CGOFFSET(Entity entity) // 0x8214A4B5A7A33612
function PHYSICS.GET_CGOFFSET(entity)
  return native.invoke(
    Type.Vector3, 4493, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_CG_AT_BOUNDCENTER(Entity entity) // 0xBE520D9761FF811F
function PHYSICS.SET_CG_AT_BOUNDCENTER(entity)
  native.invoke(
    Type.Void, 4494, false,
    arg(Type.Entity, entity)
  )
end

-- void BREAK_ENTITY_GLASS(Entity entity, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, Any p9, BOOL p10) // 0x2E648D16F6E308F3
function PHYSICS.BREAK_ENTITY_GLASS(entity, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
  native.invoke(
    Type.Void, 4495, false,
    arg(Type.Entity, entity),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Any, p9),
    arg(Type.Bool, p10)
  )
end

-- BOOL GET_IS_ENTITY_A_FRAG(Object object) // 0x0C112765300C7E1E
function PHYSICS.GET_IS_ENTITY_A_FRAG(object)
  return native.invoke(
    Type.Bool, 4496, false,
    arg(Type.Object, object)
  )
end

-- void SET_DISABLE_BREAKING(Object object, BOOL toggle) // 0x5CEC1A84620E7D5B
function PHYSICS.SET_DISABLE_BREAKING(object, toggle)
  native.invoke(
    Type.Void, 4497, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- void RESET_DISABLE_BREAKING(Object object) // 0xCC6E963682533882
function PHYSICS.RESET_DISABLE_BREAKING(object)
  native.invoke(
    Type.Void, 4498, false,
    arg(Type.Object, object)
  )
end

-- void SET_DISABLE_FRAG_DAMAGE(Object object, BOOL toggle) // 0x01BA3AED21C16CFB
function PHYSICS.SET_DISABLE_FRAG_DAMAGE(object, toggle)
  native.invoke(
    Type.Void, 4499, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- void SET_USE_KINEMATIC_PHYSICS(Entity entity, BOOL toggle) // 0x15F944730C832252
--[[
PED_RAGDOLL_BUMP Proof?
--]]
function PHYSICS.SET_USE_KINEMATIC_PHYSICS(entity, toggle)
  native.invoke(
    Type.Void, 4500, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_IN_STUNT_MODE(BOOL p0) // 0x9EBD751E5787BAF2
function PHYSICS.SET_IN_STUNT_MODE(p0)
  native.invoke(
    Type.Void, 4501, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_IN_ARENA_MODE(BOOL toggle) // 0xAA6A6098851C396F
--[[
Related to the lower-end of a vehicles fTractionCurve, e.g., from standing starts and acceleration from low/zero speeds.
--]]
function PHYSICS.SET_IN_ARENA_MODE(toggle)
  native.invoke(
    Type.Void, 4502, false,
    arg(Type.Bool, toggle)
  )
end


