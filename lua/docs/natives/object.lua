OBJECT = {}

-- Object CREATE_OBJECT(Hash modelHash, float x, float y, float z, BOOL isNetwork, BOOL bScriptHostObj, BOOL dynamic) // 0x509D5878EB39E842
--[[
List of object models that can be created without any additional effort like making sure ytyp is loaded etc: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ObjectList.ini
--]]
function OBJECT.CREATE_OBJECT(modelHash, x, y, z, isNetwork, bScriptHostObj, dynamic)
  return native.invoke(
    Type.Object, 3572, false,
    arg(Type.Hash, modelHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, isNetwork),
    arg(Type.Bool, bScriptHostObj),
    arg(Type.Bool, dynamic)
  )
end

-- Object CREATE_OBJECT_NO_OFFSET(Hash modelHash, float x, float y, float z, BOOL isNetwork, BOOL bScriptHostObj, BOOL dynamic) // 0x9A294B2138ABB884
--[[
List of object models that can be created without any additional effort like making sure ytyp is loaded etc: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ObjectList.ini
--]]
function OBJECT.CREATE_OBJECT_NO_OFFSET(modelHash, x, y, z, isNetwork, bScriptHostObj, dynamic)
  return native.invoke(
    Type.Object, 3573, false,
    arg(Type.Hash, modelHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, isNetwork),
    arg(Type.Bool, bScriptHostObj),
    arg(Type.Bool, dynamic)
  )
end

-- void DELETE_OBJECT(Object* object) // 0x539E0AE3E6634B9F
--[[
Deletes the specified object, then sets the handle pointed to by the pointer to NULL.
--]]
function OBJECT.DELETE_OBJECT(object)
  native.invoke(
    Type.Void, 3574, false,
    ref(Type.Object, object)
  )
end

-- BOOL PLACE_OBJECT_ON_GROUND_PROPERLY(Object object) // 0x58A850EAEE20FAA3
function OBJECT.PLACE_OBJECT_ON_GROUND_PROPERLY(object)
  return native.invoke(
    Type.Bool, 3575, false,
    arg(Type.Object, object)
  )
end

-- BOOL PLACE_OBJECT_ON_GROUND_OR_OBJECT_PROPERLY(Object object) // 0xD76EEEF746057FD6
function OBJECT.PLACE_OBJECT_ON_GROUND_OR_OBJECT_PROPERLY(object)
  return native.invoke(
    Type.Bool, 3576, false,
    arg(Type.Object, object)
  )
end

-- BOOL ROTATE_OBJECT(Object object, float p1, float p2, BOOL p3) // 0xAFE24E4D29249E4A
function OBJECT.ROTATE_OBJECT(object, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3577, false,
    arg(Type.Object, object),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Bool, p3)
  )
end

-- BOOL SLIDE_OBJECT(Object object, float toX, float toY, float toZ, float speedX, float speedY, float speedZ, BOOL collision) // 0x2FDFF4107B8C1147
--[[
Returns true if the object has finished moving.

If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.

See also: https://gtagmodding.com/opcode-database/opcode/034E/
Has to be looped until it returns true.
--]]
function OBJECT.SLIDE_OBJECT(object, toX, toY, toZ, speedX, speedY, speedZ, collision)
  return native.invoke(
    Type.Bool, 3578, false,
    arg(Type.Object, object),
    arg(Type.Float, toX),
    arg(Type.Float, toY),
    arg(Type.Float, toZ),
    arg(Type.Float, speedX),
    arg(Type.Float, speedY),
    arg(Type.Float, speedZ),
    arg(Type.Bool, collision)
  )
end

-- void SET_OBJECT_TARGETTABLE(Object object, BOOL targettable, Any p2) // 0x8A7391690F5AFD81
function OBJECT.SET_OBJECT_TARGETTABLE(object, targettable, p2)
  native.invoke(
    Type.Void, 3579, false,
    arg(Type.Object, object),
    arg(Type.Bool, targettable),
    arg(Type.Any, p2)
  )
end

-- void SET_OBJECT_FORCE_VEHICLES_TO_AVOID(Object object, BOOL toggle) // 0x77F33F2CCF64B3AA
--[[
Overrides a flag on the object which determines if the object should be avoided by a vehicle in task CTaskVehicleGoToPointWithAvoidanceAutomobile.
--]]
function OBJECT.SET_OBJECT_FORCE_VEHICLES_TO_AVOID(object, toggle)
  native.invoke(
    Type.Void, 3580, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- Object GET_CLOSEST_OBJECT_OF_TYPE(float x, float y, float z, float radius, Hash modelHash, BOOL isMission, BOOL p6, BOOL p7) // 0xE143FA2249364369
--[[
Has 8 params in the latest patches.

isMission - if true doesn't return mission objects
--]]
function OBJECT.GET_CLOSEST_OBJECT_OF_TYPE(x, y, z, radius, modelHash, isMission, p6, p7)
  return native.invoke(
    Type.Object, 3581, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, modelHash),
    arg(Type.Bool, isMission),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7)
  )
end

-- BOOL HAS_OBJECT_BEEN_BROKEN(Object object, Any p1) // 0x8ABFB70C49CC43E2
function OBJECT.HAS_OBJECT_BEEN_BROKEN(object, p1)
  return native.invoke(
    Type.Bool, 3582, false,
    arg(Type.Object, object),
    arg(Type.Any, p1)
  )
end

-- BOOL HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_BROKEN(float p0, float p1, float p2, float p3, Hash modelHash, Any p5) // 0x761B0E69AC4D007E
function OBJECT.HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_BROKEN(p0, p1, p2, p3, modelHash, p5)
  return native.invoke(
    Type.Bool, 3583, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Hash, modelHash),
    arg(Type.Any, p5)
  )
end

-- BOOL HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_COMPLETELY_DESTROYED(float x, float y, float z, float radius, Hash modelHash, BOOL p5) // 0x46494A2475701343
function OBJECT.HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_COMPLETELY_DESTROYED(x, y, z, radius, modelHash, p5)
  return native.invoke(
    Type.Bool, 3584, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, modelHash),
    arg(Type.Bool, p5)
  )
end

-- BOOL GET_HAS_OBJECT_BEEN_COMPLETELY_DESTROYED(Any p0) // 0x2542269291C6AC84
function OBJECT.GET_HAS_OBJECT_BEEN_COMPLETELY_DESTROYED(p0)
  return native.invoke(
    Type.Bool, 3585, false,
    arg(Type.Any, p0)
  )
end

-- Vector3 GET_OFFSET_FROM_COORD_AND_HEADING_IN_WORLD_COORDS(float xPos, float yPos, float zPos, float heading, float xOffset, float yOffset, float zOffset) // 0x163E252DE035A133
function OBJECT.GET_OFFSET_FROM_COORD_AND_HEADING_IN_WORLD_COORDS(xPos, yPos, zPos, heading, xOffset, yOffset, zOffset)
  return native.invoke(
    Type.Vector3, 3586, false,
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Float, heading),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset)
  )
end

-- BOOL GET_COORDS_AND_ROTATION_OF_CLOSEST_OBJECT_OF_TYPE(float x, float y, float z, float radius, Hash modelHash, Vector3* outPosition, Vector3* outRotation, int rotationOrder) // 0x163F8B586BC95F2A
function OBJECT.GET_COORDS_AND_ROTATION_OF_CLOSEST_OBJECT_OF_TYPE(x, y, z, radius, modelHash, outPosition, outRotation, rotationOrder)
  return native.invoke(
    Type.Bool, 3587, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, modelHash),
    ref(Type.Vector3, outPosition),
    ref(Type.Vector3, outRotation),
    arg(Type.Int, rotationOrder)
  )
end

-- void SET_STATE_OF_CLOSEST_DOOR_OF_TYPE(Hash type, float x, float y, float z, BOOL locked, float heading, BOOL p6) // 0xF82D8F1926A02C3D
--[[
Hardcoded to not work in multiplayer.


Used to lock/unlock doors to interior areas of the game.

(Possible) Door Types:

https://pastebin.com/9S2m3qA4

Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior.
Locked means that the heading is locked.  
p6 is always 0. 

225 door types, model names and coords found in stripclub.c4:
https://pastebin.com/gywnbzsH

get door info: https://pastebin.com/i14rbekD
--]]
function OBJECT.SET_STATE_OF_CLOSEST_DOOR_OF_TYPE(type, x, y, z, locked, heading, p6)
  native.invoke(
    Type.Void, 3588, false,
    arg(Type.Hash, type),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, locked),
    arg(Type.Float, heading),
    arg(Type.Bool, p6)
  )
end

-- void GET_STATE_OF_CLOSEST_DOOR_OF_TYPE(Hash type, float x, float y, float z, BOOL* locked, float* heading) // 0xEDC1A5B84AEF33FF
--[[
locked is 0 if no door is found
locked is 0 if door is unlocked
locked is 1 if door is found and unlocked.

-------------
the locked bool is either 0(unlocked)(false) or 1(locked)(true)
--]]
function OBJECT.GET_STATE_OF_CLOSEST_DOOR_OF_TYPE(type, x, y, z, locked, heading)
  native.invoke(
    Type.Void, 3589, false,
    arg(Type.Hash, type),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Bool, locked),
    ref(Type.Float, heading)
  )
end

-- void SET_LOCKED_UNSTREAMED_IN_DOOR_OF_TYPE(Hash modelHash, float x, float y, float z, BOOL locked, float xRotMult, float yRotMult, float zRotMult) // 0x9B12F9A24FABEDB0
--[[
Hardcoded not to work in multiplayer environments.
When you set locked to 0 the door open and to 1 the door close
OBJECT::SET_LOCKED_UNSTREAMED_IN_DOOR_OF_TYPE(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 0, 0.0, 50.0, 0);  //door open

OBJECT::SET_LOCKED_UNSTREAMED_IN_DOOR_OF_TYPE(${prop_gate_prison_01}, 1845.0, 2605.0, 45.0, 1, 0.0, 50.0, 0);  //door close
--]]
function OBJECT.SET_LOCKED_UNSTREAMED_IN_DOOR_OF_TYPE(modelHash, x, y, z, locked, xRotMult, yRotMult, zRotMult)
  native.invoke(
    Type.Void, 3590, false,
    arg(Type.Hash, modelHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, locked),
    arg(Type.Float, xRotMult),
    arg(Type.Float, yRotMult),
    arg(Type.Float, zRotMult)
  )
end

-- void PLAY_OBJECT_AUTO_START_ANIM(Any p0) // 0x006E4B040ED37EC3
function OBJECT.PLAY_OBJECT_AUTO_START_ANIM(p0)
  native.invoke(
    Type.Void, 3591, false,
    arg(Type.Any, p0)
  )
end

-- void ADD_DOOR_TO_SYSTEM(Hash doorHash, Hash modelHash, float x, float y, float z, BOOL p5, BOOL scriptDoor, BOOL isLocal) // 0x6F8838D03D1DC226
--[[
doorHash has to be unique. scriptDoor false; relies upon getNetworkGameScriptHandler. isLocal On true disables the creation CRequestDoorEvent's in DOOR_SYSTEM_SET_DOOR_STATE.
p5 only set to true in single player native scripts.
If scriptDoor is true, register the door on the script handler host (note: there's a hardcap on the number of script IDs that can be added to the system at a given time). If scriptDoor and isLocal are both false, the door is considered to be in a "Persists w/o netobj" state.

door hashes normally look like PROP_[int]_DOOR_[int] for interior doors and PROP_BUILDING_[int]_DOOR_[int] exterior doors but you can just make up your own hash if you want
All doors need to be registered with ADD_DOOR_TO_SYSTEM before they can be manipulated with the door natives and the easiest way to get door models is just find the door in codewalker.

Example: AddDoorToSystem("PROP_43_DOOR_0", "hei_v_ilev_fh_heistdoor2", -1456.818, -520.5037, 69.67043, 0, 0, 0)
--]]
function OBJECT.ADD_DOOR_TO_SYSTEM(doorHash, modelHash, x, y, z, p5, scriptDoor, isLocal)
  native.invoke(
    Type.Void, 3592, false,
    arg(Type.Hash, doorHash),
    arg(Type.Hash, modelHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p5),
    arg(Type.Bool, scriptDoor),
    arg(Type.Bool, isLocal)
  )
end

-- void REMOVE_DOOR_FROM_SYSTEM(Hash doorHash, Any p1) // 0x464D8E1427156FE4
--[[
CDoor and CDoorSystemData still internally allocated (and their associations between doorHash, modelHash, and coordinates).
Only its NetObj removed and flag ``*(v2 + 192) |= 8u`` (1604 retail) toggled.
--]]
function OBJECT.REMOVE_DOOR_FROM_SYSTEM(doorHash, p1)
  native.invoke(
    Type.Void, 3593, false,
    arg(Type.Hash, doorHash),
    arg(Type.Any, p1)
  )
end

-- void DOOR_SYSTEM_SET_DOOR_STATE(Hash doorHash, int state, BOOL requestDoor, BOOL forceUpdate) // 0x6BAB9442830C7F53
--[[
Lockstates not applied and CNetObjDoor's not created until DOOR_SYSTEM_GET_IS_PHYSICS_LOADED returns true.
`requestDoor` on true, and when door system is configured to, i.e., "persists w/o netobj", generate a CRequestDoorEvent.
`forceUpdate` on true, forces an update on the door system (same path as netObjDoor_applyDoorStuff)
Door lock states:
0: UNLOCKED
1: LOCKED
2: DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA
3: DOORSTATE_FORCE_UNLOCKED_THIS_FRAME
4: DOORSTATE_FORCE_LOCKED_THIS_FRAME
5: DOORSTATE_FORCE_OPEN_THIS_FRAME
6: DOORSTATE_FORCE_CLOSED_THIS_FRAME
--]]
function OBJECT.DOOR_SYSTEM_SET_DOOR_STATE(doorHash, state, requestDoor, forceUpdate)
  native.invoke(
    Type.Void, 3594, false,
    arg(Type.Hash, doorHash),
    arg(Type.Int, state),
    arg(Type.Bool, requestDoor),
    arg(Type.Bool, forceUpdate)
  )
end

-- int DOOR_SYSTEM_GET_DOOR_STATE(Hash doorHash) // 0x160AA1B32F6139B8
function OBJECT.DOOR_SYSTEM_GET_DOOR_STATE(doorHash)
  return native.invoke(
    Type.Int, 3595, false,
    arg(Type.Hash, doorHash)
  )
end

-- int DOOR_SYSTEM_GET_DOOR_PENDING_STATE(Hash doorHash) // 0x4BC2854478F3A749
function OBJECT.DOOR_SYSTEM_GET_DOOR_PENDING_STATE(doorHash)
  return native.invoke(
    Type.Int, 3596, false,
    arg(Type.Hash, doorHash)
  )
end

-- void DOOR_SYSTEM_SET_AUTOMATIC_RATE(Hash doorHash, float rate, BOOL requestDoor, BOOL forceUpdate) // 0x03C27E13B42A0E82
--[[
Includes networking check: ownership vs. or the door itself **isn't** networked.
`forceUpdate` on true invokes DOOR_SYSTEM_SET_DOOR_STATE otherwise requestDoor is unused.
--]]
function OBJECT.DOOR_SYSTEM_SET_AUTOMATIC_RATE(doorHash, rate, requestDoor, forceUpdate)
  native.invoke(
    Type.Void, 3597, false,
    arg(Type.Hash, doorHash),
    arg(Type.Float, rate),
    arg(Type.Bool, requestDoor),
    arg(Type.Bool, forceUpdate)
  )
end

-- void DOOR_SYSTEM_SET_AUTOMATIC_DISTANCE(Hash doorHash, float distance, BOOL requestDoor, BOOL forceUpdate) // 0x9BA001CB45CBF627
--[[
`forceUpdate` on true invokes DOOR_SYSTEM_SET_DOOR_STATE otherwise requestDoor is unused.
--]]
function OBJECT.DOOR_SYSTEM_SET_AUTOMATIC_DISTANCE(doorHash, distance, requestDoor, forceUpdate)
  native.invoke(
    Type.Void, 3598, false,
    arg(Type.Hash, doorHash),
    arg(Type.Float, distance),
    arg(Type.Bool, requestDoor),
    arg(Type.Bool, forceUpdate)
  )
end

-- void DOOR_SYSTEM_SET_OPEN_RATIO(Hash doorHash, float ajar, BOOL requestDoor, BOOL forceUpdate) // 0xB6E6FBA95C7324AC
--[[
Sets the ajar angle of a door.
Ranges from -1.0 to 1.0, and 0.0 is closed / default.
`forceUpdate` on true invokes DOOR_SYSTEM_SET_DOOR_STATE otherwise requestDoor is unused.
--]]
function OBJECT.DOOR_SYSTEM_SET_OPEN_RATIO(doorHash, ajar, requestDoor, forceUpdate)
  native.invoke(
    Type.Void, 3599, false,
    arg(Type.Hash, doorHash),
    arg(Type.Float, ajar),
    arg(Type.Bool, requestDoor),
    arg(Type.Bool, forceUpdate)
  )
end

-- float DOOR_SYSTEM_GET_AUTOMATIC_DISTANCE(Hash doorHash) // 0xE851471AEFC3374F
function OBJECT.DOOR_SYSTEM_GET_AUTOMATIC_DISTANCE(doorHash)
  return native.invoke(
    Type.Float, 3600, false,
    arg(Type.Hash, doorHash)
  )
end

-- float DOOR_SYSTEM_GET_OPEN_RATIO(Hash doorHash) // 0x65499865FCA6E5EC
function OBJECT.DOOR_SYSTEM_GET_OPEN_RATIO(doorHash)
  return native.invoke(
    Type.Float, 3601, false,
    arg(Type.Hash, doorHash)
  )
end

-- void DOOR_SYSTEM_SET_SPRING_REMOVED(Hash doorHash, BOOL removed, BOOL requestDoor, BOOL forceUpdate) // 0xC485E07E4F0B7958
--[[
Includes networking check: ownership vs. or the door itself **isn't** networked.
`forceUpdate` on true invokes DOOR_SYSTEM_SET_DOOR_STATE otherwise requestDoor is unused.
--]]
function OBJECT.DOOR_SYSTEM_SET_SPRING_REMOVED(doorHash, removed, requestDoor, forceUpdate)
  native.invoke(
    Type.Void, 3602, false,
    arg(Type.Hash, doorHash),
    arg(Type.Bool, removed),
    arg(Type.Bool, requestDoor),
    arg(Type.Bool, forceUpdate)
  )
end

-- void DOOR_SYSTEM_SET_HOLD_OPEN(Hash doorHash, BOOL toggle) // 0xD9B71952F78A2640
--[[
Includes networking check: ownership vs. or the door itself **isn't** networked.
--]]
function OBJECT.DOOR_SYSTEM_SET_HOLD_OPEN(doorHash, toggle)
  native.invoke(
    Type.Void, 3603, false,
    arg(Type.Hash, doorHash),
    arg(Type.Bool, toggle)
  )
end

-- void DOOR_SYSTEM_SET_DOOR_OPEN_FOR_RACES(Hash doorHash, BOOL p1) // 0xA85A21582451E951
--[[
Some property related to gates. Native name between ``DOOR_SYSTEM_SET_AUTOMATIC_RATE`` and ``DOOR_SYSTEM_SET_DOOR_STATE``.
--]]
function OBJECT.DOOR_SYSTEM_SET_DOOR_OPEN_FOR_RACES(doorHash, p1)
  native.invoke(
    Type.Void, 3604, false,
    arg(Type.Hash, doorHash),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_DOOR_REGISTERED_WITH_SYSTEM(Hash doorHash) // 0xC153C43EA202C8C1
--[[
if (OBJECT::IS_DOOR_REGISTERED_WITH_SYSTEM(doorHash)) 
{
    OBJECT::REMOVE_DOOR_FROM_SYSTEM(doorHash);
}
--]]
function OBJECT.IS_DOOR_REGISTERED_WITH_SYSTEM(doorHash)
  return native.invoke(
    Type.Bool, 3605, false,
    arg(Type.Hash, doorHash)
  )
end

-- BOOL IS_DOOR_CLOSED(Hash doorHash) // 0xC531EE8A1145A149
function OBJECT.IS_DOOR_CLOSED(doorHash)
  return native.invoke(
    Type.Bool, 3606, false,
    arg(Type.Hash, doorHash)
  )
end

-- void OPEN_ALL_BARRIERS_FOR_RACE(BOOL p0) // 0xC7F29CA00F46350E
function OBJECT.OPEN_ALL_BARRIERS_FOR_RACE(p0)
  native.invoke(
    Type.Void, 3607, false,
    arg(Type.Bool, p0)
  )
end

-- void CLOSE_ALL_BARRIERS_FOR_RACE() // 0x701FDA1E82076BA4
--[[
Clears the fields sets by 0xC7F29CA00F46350E (1604 retail: 0x1424A7A10, 0x1424A7A11) and iterates over the global CDoor's bucket-list.
Related to its "Pre-networked state"?
--]]
function OBJECT.CLOSE_ALL_BARRIERS_FOR_RACE()
  native.invoke(
    Type.Void, 3608, false
  )
end

-- BOOL DOOR_SYSTEM_GET_IS_PHYSICS_LOADED(Any p0) // 0xDF97CDD4FC08FD34
function OBJECT.DOOR_SYSTEM_GET_IS_PHYSICS_LOADED(p0)
  return native.invoke(
    Type.Bool, 3609, false,
    arg(Type.Any, p0)
  )
end

-- BOOL DOOR_SYSTEM_FIND_EXISTING_DOOR(float x, float y, float z, Hash modelHash, Hash* outDoorHash) // 0x589F80B325CC82C5
--[[
Search radius: 0.5
--]]
function OBJECT.DOOR_SYSTEM_FIND_EXISTING_DOOR(x, y, z, modelHash, outDoorHash)
  return native.invoke(
    Type.Bool, 3610, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Hash, modelHash),
    ref(Type.Hash, outDoorHash)
  )
end

-- BOOL IS_GARAGE_EMPTY(Hash garageHash, BOOL p1, int p2) // 0x90E47239EA1980B8
function OBJECT.IS_GARAGE_EMPTY(garageHash, p1, p2)
  return native.invoke(
    Type.Bool, 3611, false,
    arg(Type.Hash, garageHash),
    arg(Type.Bool, p1),
    arg(Type.Int, p2)
  )
end

-- BOOL IS_PLAYER_ENTIRELY_INSIDE_GARAGE(Hash garageHash, Player player, float p2, int p3) // 0x024A60DEB0EA69F0
function OBJECT.IS_PLAYER_ENTIRELY_INSIDE_GARAGE(garageHash, player, p2, p3)
  return native.invoke(
    Type.Bool, 3612, false,
    arg(Type.Hash, garageHash),
    arg(Type.Player, player),
    arg(Type.Float, p2),
    arg(Type.Int, p3)
  )
end

-- BOOL IS_PLAYER_PARTIALLY_INSIDE_GARAGE(Hash garageHash, Player player, int p2) // 0x1761DC5D8471CBAA
function OBJECT.IS_PLAYER_PARTIALLY_INSIDE_GARAGE(garageHash, player, p2)
  return native.invoke(
    Type.Bool, 3613, false,
    arg(Type.Hash, garageHash),
    arg(Type.Player, player),
    arg(Type.Int, p2)
  )
end

-- BOOL ARE_ENTITIES_ENTIRELY_INSIDE_GARAGE(Hash garageHash, BOOL p1, BOOL p2, BOOL p3, Any p4) // 0x85B6C850546FDDE2
function OBJECT.ARE_ENTITIES_ENTIRELY_INSIDE_GARAGE(garageHash, p1, p2, p3, p4)
  return native.invoke(
    Type.Bool, 3614, false,
    arg(Type.Hash, garageHash),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Any, p4)
  )
end

-- BOOL IS_ANY_ENTITY_ENTIRELY_INSIDE_GARAGE(Hash garageHash, BOOL p1, BOOL p2, BOOL p3, Any p4) // 0x673ED815D6E323B7
function OBJECT.IS_ANY_ENTITY_ENTIRELY_INSIDE_GARAGE(garageHash, p1, p2, p3, p4)
  return native.invoke(
    Type.Bool, 3615, false,
    arg(Type.Hash, garageHash),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Any, p4)
  )
end

-- BOOL IS_OBJECT_ENTIRELY_INSIDE_GARAGE(Hash garageHash, Entity entity, float p2, int p3) // 0x372EF6699146A1E4
--[[
Despite the name, it does work for any entity type.
--]]
function OBJECT.IS_OBJECT_ENTIRELY_INSIDE_GARAGE(garageHash, entity, p2, p3)
  return native.invoke(
    Type.Bool, 3616, false,
    arg(Type.Hash, garageHash),
    arg(Type.Entity, entity),
    arg(Type.Float, p2),
    arg(Type.Int, p3)
  )
end

-- BOOL IS_OBJECT_PARTIALLY_INSIDE_GARAGE(Hash garageHash, Entity entity, int p2) // 0xF0EED5A6BC7B237A
--[[
Despite the name, it does work for any entity type.
--]]
function OBJECT.IS_OBJECT_PARTIALLY_INSIDE_GARAGE(garageHash, entity, p2)
  return native.invoke(
    Type.Bool, 3617, false,
    arg(Type.Hash, garageHash),
    arg(Type.Entity, entity),
    arg(Type.Int, p2)
  )
end

-- void CLEAR_GARAGE(Hash garageHash, BOOL isNetwork) // 0xDA05194260CDCDF9
function OBJECT.CLEAR_GARAGE(garageHash, isNetwork)
  native.invoke(
    Type.Void, 3618, false,
    arg(Type.Hash, garageHash),
    arg(Type.Bool, isNetwork)
  )
end

-- void CLEAR_OBJECTS_INSIDE_GARAGE(Hash garageHash, BOOL vehicles, BOOL peds, BOOL objects, BOOL isNetwork) // 0x190428512B240692
function OBJECT.CLEAR_OBJECTS_INSIDE_GARAGE(garageHash, vehicles, peds, objects, isNetwork)
  native.invoke(
    Type.Void, 3619, false,
    arg(Type.Hash, garageHash),
    arg(Type.Bool, vehicles),
    arg(Type.Bool, peds),
    arg(Type.Bool, objects),
    arg(Type.Bool, isNetwork)
  )
end

-- void DISABLE_TIDYING_UP_IN_GARAGE(int id, BOOL toggle) // 0x659F9D71F52843F8
--[[
Sets a flag. A valid id is 0x157DC10D
--]]
function OBJECT.DISABLE_TIDYING_UP_IN_GARAGE(id, toggle)
  native.invoke(
    Type.Void, 3620, false,
    arg(Type.Int, id),
    arg(Type.Bool, toggle)
  )
end

-- void ENABLE_SAVING_IN_GARAGE(Hash garageHash, BOOL toggle) // 0xF2E1A7133DD356A6
function OBJECT.ENABLE_SAVING_IN_GARAGE(garageHash, toggle)
  native.invoke(
    Type.Void, 3621, false,
    arg(Type.Hash, garageHash),
    arg(Type.Bool, toggle)
  )
end

-- void CLOSE_SAFEHOUSE_GARAGES() // 0x66A49D021870FE88
function OBJECT.CLOSE_SAFEHOUSE_GARAGES()
  native.invoke(
    Type.Void, 3622, false
  )
end

-- BOOL DOES_OBJECT_OF_TYPE_EXIST_AT_COORDS(float x, float y, float z, float radius, Hash hash, BOOL p5) // 0xBFA48E2FF417213F
--[[
p5 is usually 0.
--]]
function OBJECT.DOES_OBJECT_OF_TYPE_EXIST_AT_COORDS(x, y, z, radius, hash, p5)
  return native.invoke(
    Type.Bool, 3623, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, hash),
    arg(Type.Bool, p5)
  )
end

-- BOOL IS_POINT_IN_ANGLED_AREA(float xPos, float yPos, float zPos, float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL debug, BOOL includeZ) // 0x2A70BAE8883E4C81
--[[
An angled area is an X-Z oriented rectangle with three parameters:
1. origin: the mid-point along a base edge of the rectangle;
2. extent: the mid-point of opposite base edge on the other Z;
3. width: the length of the base edge; (named derived from logging strings ``CNetworkRoadNodeWorldStateData``).

The oriented rectangle can then be derived from the direction of the two points (``norm(origin - extent)``), its orthonormal, and the width, e.g:
1. golf_mp https://i.imgur.com/JhsQAK9.png
2. am_taxi https://i.imgur.com/TJWCZaT.jpg
--]]
function OBJECT.IS_POINT_IN_ANGLED_AREA(xPos, yPos, zPos, x1, y1, z1, x2, y2, z2, width, debug, includeZ)
  return native.invoke(
    Type.Bool, 3624, false,
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Bool, debug),
    arg(Type.Bool, includeZ)
  )
end

-- void SET_OBJECT_ALLOW_LOW_LOD_BUOYANCY(Object object, BOOL toggle) // 0x4D89D607CB3DD1D2
--[[
Overrides the climbing/blocking flags of the object, used in the native scripts mostly for "prop_dock_bouy_*"
--]]
function OBJECT.SET_OBJECT_ALLOW_LOW_LOD_BUOYANCY(object, toggle)
  native.invoke(
    Type.Void, 3625, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- void SET_OBJECT_PHYSICS_PARAMS(Object object, float weight, float p2, float p3, float p4, float p5, float gravity, float p7, float p8, float p9, float p10, float buoyancy) // 0xF6DF6E90DE7DF90F
--[[
Adjust the physics parameters of a prop, or otherwise known as "object". This is useful for simulated gravity.

Other parameters seem to be unknown.

p2: seems to be weight and gravity related. Higher value makes the obj fall faster. Very sensitive?
p3: seems similar to p2
p4: makes obj fall slower the higher the value
p5: similar to p4
--]]
function OBJECT.SET_OBJECT_PHYSICS_PARAMS(object, weight, p2, p3, p4, p5, gravity, p7, p8, p9, p10, buoyancy)
  native.invoke(
    Type.Void, 3626, false,
    arg(Type.Object, object),
    arg(Type.Float, weight),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, gravity),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Float, p10),
    arg(Type.Float, buoyancy)
  )
end

-- float GET_OBJECT_FRAGMENT_DAMAGE_HEALTH(Any p0, BOOL p1) // 0xB6FBFD079B8D0596
function OBJECT.GET_OBJECT_FRAGMENT_DAMAGE_HEALTH(p0, p1)
  return native.invoke(
    Type.Float, 3627, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_ACTIVATE_OBJECT_PHYSICS_AS_SOON_AS_IT_IS_UNFROZEN(Object object, BOOL toggle) // 0x406137F8EF90EAF5
function OBJECT.SET_ACTIVATE_OBJECT_PHYSICS_AS_SOON_AS_IT_IS_UNFROZEN(object, toggle)
  native.invoke(
    Type.Void, 3628, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_ANY_OBJECT_NEAR_POINT(float x, float y, float z, float range, BOOL p4) // 0x397DC58FF00298D1
function OBJECT.IS_ANY_OBJECT_NEAR_POINT(x, y, z, range, p4)
  return native.invoke(
    Type.Bool, 3629, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, range),
    arg(Type.Bool, p4)
  )
end

-- BOOL IS_OBJECT_NEAR_POINT(Hash objectHash, float x, float y, float z, float range) // 0x8C90FE4B381BA60A
function OBJECT.IS_OBJECT_NEAR_POINT(objectHash, x, y, z, range)
  return native.invoke(
    Type.Bool, 3630, false,
    arg(Type.Hash, objectHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, range)
  )
end

-- void REMOVE_OBJECT_HIGH_DETAIL_MODEL(Object object) // 0x4A39DB43E47CF3AA
function OBJECT.REMOVE_OBJECT_HIGH_DETAIL_MODEL(object)
  native.invoke(
    Type.Void, 3631, false,
    arg(Type.Object, object)
  )
end

-- void BREAK_OBJECT_FRAGMENT_CHILD(Object p0, Any p1, BOOL p2) // 0xE7E4C198B0185900
function OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(p0, p1, p2)
  native.invoke(
    Type.Void, 3632, false,
    arg(Type.Object, p0),
    arg(Type.Any, p1),
    arg(Type.Bool, p2)
  )
end

-- void DAMAGE_OBJECT_FRAGMENT_CHILD(Any p0, Any p1, Any p2) // 0xE05F6AEEFEB0BB02
function OBJECT.DAMAGE_OBJECT_FRAGMENT_CHILD(p0, p1, p2)
  native.invoke(
    Type.Void, 3633, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void FIX_OBJECT_FRAGMENT(Object object) // 0xF9C1681347C8BD15
function OBJECT.FIX_OBJECT_FRAGMENT(object)
  native.invoke(
    Type.Void, 3634, false,
    arg(Type.Object, object)
  )
end

-- void TRACK_OBJECT_VISIBILITY(Object object) // 0xB252BC036B525623
function OBJECT.TRACK_OBJECT_VISIBILITY(object)
  native.invoke(
    Type.Void, 3635, false,
    arg(Type.Object, object)
  )
end

-- BOOL IS_OBJECT_VISIBLE(Object object) // 0x8B32ACE6326A7546
function OBJECT.IS_OBJECT_VISIBLE(object)
  return native.invoke(
    Type.Bool, 3636, false,
    arg(Type.Object, object)
  )
end

-- void SET_OBJECT_IS_SPECIAL_GOLFBALL(Object object, BOOL toggle) // 0xC6033D32241F6FB5
function OBJECT.SET_OBJECT_IS_SPECIAL_GOLFBALL(object, toggle)
  native.invoke(
    Type.Void, 3637, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- void SET_OBJECT_TAKES_DAMAGE_FROM_COLLIDING_WITH_BUILDINGS(Any p0, BOOL p1) // 0xEB6F1A9B5510A5D2
function OBJECT.SET_OBJECT_TAKES_DAMAGE_FROM_COLLIDING_WITH_BUILDINGS(p0, p1)
  native.invoke(
    Type.Void, 3638, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- void ALLOW_DAMAGE_EVENTS_FOR_NON_NETWORKED_OBJECTS(BOOL value) // 0xABDABF4E1EDECBFA
function OBJECT.ALLOW_DAMAGE_EVENTS_FOR_NON_NETWORKED_OBJECTS(value)
  native.invoke(
    Type.Void, 3639, false,
    arg(Type.Bool, value)
  )
end

-- void SET_CUTSCENES_WEAPON_FLASHLIGHT_ON_THIS_FRAME(Object object, BOOL toggle) // 0xBCE595371A5FBAAF
--[[
Requires a component_at_*_flsh to be attached to the weapon object
--]]
function OBJECT.SET_CUTSCENES_WEAPON_FLASHLIGHT_ON_THIS_FRAME(object, toggle)
  native.invoke(
    Type.Void, 3640, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- Object GET_RAYFIRE_MAP_OBJECT(float x, float y, float z, float radius, const char* name) // 0xB48FCED898292E52
--[[
Example:
OBJECT::GET_RAYFIRE_MAP_OBJECT(-809.9619750976562, 170.919, 75.7406997680664, 3.0, "des_tvsmash");
--]]
function OBJECT.GET_RAYFIRE_MAP_OBJECT(x, y, z, radius, name)
  return native.invoke(
    Type.Object, 3641, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.String, name)
  )
end

-- void SET_STATE_OF_RAYFIRE_MAP_OBJECT(Object object, int state) // 0x5C29F698D404C5E1
--[[
Defines the state of a destructible object.
Use the GET_RAYFIRE_MAP_OBJECT native to find an object's handle with its name / coords.
State 2 == object just spawned
State 4 == Beginning of the animation
State 6 == Start animation
State 9 == End of the animation
--]]
function OBJECT.SET_STATE_OF_RAYFIRE_MAP_OBJECT(object, state)
  native.invoke(
    Type.Void, 3642, false,
    arg(Type.Object, object),
    arg(Type.Int, state)
  )
end

-- int GET_STATE_OF_RAYFIRE_MAP_OBJECT(Object object) // 0x899BA936634A322E
--[[
Get a destructible object's state.
Substract 1 to get the real state.
See SET_STATE_OF_RAYFIRE_MAP_OBJECT to see the different states
For example, if the object just spawned (state 2), the native will return 3.
--]]
function OBJECT.GET_STATE_OF_RAYFIRE_MAP_OBJECT(object)
  return native.invoke(
    Type.Int, 3643, false,
    arg(Type.Object, object)
  )
end

-- BOOL DOES_RAYFIRE_MAP_OBJECT_EXIST(Object object) // 0x52AF537A0C5B8AAD
--[[
Returns true if a destructible object with this handle exists, false otherwise.  
--]]
function OBJECT.DOES_RAYFIRE_MAP_OBJECT_EXIST(object)
  return native.invoke(
    Type.Bool, 3644, false,
    arg(Type.Object, object)
  )
end

-- float GET_RAYFIRE_MAP_OBJECT_ANIM_PHASE(Object object) // 0x260EE4FDBDF4DB01
--[[
`object`: The des-object handle to get the animation progress from.
Return value is a float between 0.0 and 1.0, 0.0 is the beginning of the animation, 1.0 is the end. Value resets to 0.0 instantly after reaching 1.0.
--]]
function OBJECT.GET_RAYFIRE_MAP_OBJECT_ANIM_PHASE(object)
  return native.invoke(
    Type.Float, 3645, false,
    arg(Type.Object, object)
  )
end

-- Pickup CREATE_PICKUP(Hash pickupHash, float posX, float posY, float posZ, int p4, int value, BOOL p6, Hash modelHash) // 0xFBA08C503DD5FA58
--[[
Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.CREATE_PICKUP(pickupHash, posX, posY, posZ, p4, value, p6, modelHash)
  return native.invoke(
    Type.Pickup, 3646, false,
    arg(Type.Hash, pickupHash),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Int, p4),
    arg(Type.Int, value),
    arg(Type.Bool, p6),
    arg(Type.Hash, modelHash)
  )
end

-- Pickup CREATE_PICKUP_ROTATE(Hash pickupHash, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, int flag, int amount, Any p9, BOOL p10, Hash modelHash) // 0x891804727E0A98B7
--[[
flags:
8 (1 << 3): place on ground
512 (1 << 9): spin around

Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.CREATE_PICKUP_ROTATE(pickupHash, posX, posY, posZ, rotX, rotY, rotZ, flag, amount, p9, p10, modelHash)
  return native.invoke(
    Type.Pickup, 3647, false,
    arg(Type.Hash, pickupHash),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Int, flag),
    arg(Type.Int, amount),
    arg(Type.Any, p9),
    arg(Type.Bool, p10),
    arg(Type.Hash, modelHash)
  )
end

-- void FORCE_PICKUP_ROTATE_FACE_UP() // 0x394CD08E31313C28
function OBJECT.FORCE_PICKUP_ROTATE_FACE_UP()
  native.invoke(
    Type.Void, 3648, false
  )
end

-- void SET_CUSTOM_PICKUP_WEAPON_HASH(Hash pickupHash, Pickup pickup) // 0x826D1EE4D1CAFC78
function OBJECT.SET_CUSTOM_PICKUP_WEAPON_HASH(pickupHash, pickup)
  native.invoke(
    Type.Void, 3649, false,
    arg(Type.Hash, pickupHash),
    arg(Type.Pickup, pickup)
  )
end

-- Object CREATE_AMBIENT_PICKUP(Hash pickupHash, float posX, float posY, float posZ, int flags, int value, Hash modelHash, BOOL p7, BOOL p8) // 0x673966A0C0FD7171
--[[
Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.CREATE_AMBIENT_PICKUP(pickupHash, posX, posY, posZ, flags, value, modelHash, p7, p8)
  return native.invoke(
    Type.Object, 3650, false,
    arg(Type.Hash, pickupHash),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Int, flags),
    arg(Type.Int, value),
    arg(Type.Hash, modelHash),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8)
  )
end

-- Object CREATE_NON_NETWORKED_AMBIENT_PICKUP(Hash pickupHash, float posX, float posY, float posZ, int flags, int value, Hash modelHash, BOOL p7, BOOL p8) // 0x9C93764223E29C50
function OBJECT.CREATE_NON_NETWORKED_AMBIENT_PICKUP(pickupHash, posX, posY, posZ, flags, value, modelHash, p7, p8)
  return native.invoke(
    Type.Object, 3651, false,
    arg(Type.Hash, pickupHash),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Int, flags),
    arg(Type.Int, value),
    arg(Type.Hash, modelHash),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8)
  )
end

-- void BLOCK_PLAYERS_FOR_AMBIENT_PICKUP(Any p0, Any p1) // 0x1E3F1B1B891A2AAA
function OBJECT.BLOCK_PLAYERS_FOR_AMBIENT_PICKUP(p0, p1)
  native.invoke(
    Type.Void, 3652, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- Object CREATE_PORTABLE_PICKUP(Hash pickupHash, float x, float y, float z, BOOL placeOnGround, Hash modelHash) // 0x2EAF1FDB2FB55698
--[[
Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.CREATE_PORTABLE_PICKUP(pickupHash, x, y, z, placeOnGround, modelHash)
  return native.invoke(
    Type.Object, 3653, false,
    arg(Type.Hash, pickupHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, placeOnGround),
    arg(Type.Hash, modelHash)
  )
end

-- Object CREATE_NON_NETWORKED_PORTABLE_PICKUP(Hash pickupHash, float x, float y, float z, BOOL placeOnGround, Hash modelHash) // 0x125494B98A21AAF7
--[[
Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.CREATE_NON_NETWORKED_PORTABLE_PICKUP(pickupHash, x, y, z, placeOnGround, modelHash)
  return native.invoke(
    Type.Object, 3654, false,
    arg(Type.Hash, pickupHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, placeOnGround),
    arg(Type.Hash, modelHash)
  )
end

-- void ATTACH_PORTABLE_PICKUP_TO_PED(Object pickupObject, Ped ped) // 0x8DC39368BDD57755
function OBJECT.ATTACH_PORTABLE_PICKUP_TO_PED(pickupObject, ped)
  native.invoke(
    Type.Void, 3655, false,
    arg(Type.Object, pickupObject),
    arg(Type.Ped, ped)
  )
end

-- void DETACH_PORTABLE_PICKUP_FROM_PED(Object pickupObject) // 0xCF463D1E9A0AECB1
function OBJECT.DETACH_PORTABLE_PICKUP_FROM_PED(pickupObject)
  native.invoke(
    Type.Void, 3656, false,
    arg(Type.Object, pickupObject)
  )
end

-- void FORCE_PORTABLE_PICKUP_LAST_ACCESSIBLE_POSITION_SETTING(Object object) // 0x5CE2E45A5CE2E45A
function OBJECT.FORCE_PORTABLE_PICKUP_LAST_ACCESSIBLE_POSITION_SETTING(object)
  native.invoke(
    Type.Void, 3657, false,
    arg(Type.Object, object)
  )
end

-- void HIDE_PORTABLE_PICKUP_WHEN_DETACHED(Object pickupObject, BOOL toggle) // 0x867458251D47CCB2
function OBJECT.HIDE_PORTABLE_PICKUP_WHEN_DETACHED(pickupObject, toggle)
  native.invoke(
    Type.Void, 3658, false,
    arg(Type.Object, pickupObject),
    arg(Type.Bool, toggle)
  )
end

-- void SET_MAX_NUM_PORTABLE_PICKUPS_CARRIED_BY_PLAYER(Hash modelHash, int number) // 0x0BF3B3BD47D79C08
function OBJECT.SET_MAX_NUM_PORTABLE_PICKUPS_CARRIED_BY_PLAYER(modelHash, number)
  native.invoke(
    Type.Void, 3659, false,
    arg(Type.Hash, modelHash),
    arg(Type.Int, number)
  )
end

-- void SET_LOCAL_PLAYER_CAN_COLLECT_PORTABLE_PICKUPS(BOOL toggle) // 0x78857FC65CADB909
function OBJECT.SET_LOCAL_PLAYER_CAN_COLLECT_PORTABLE_PICKUPS(toggle)
  native.invoke(
    Type.Void, 3660, false,
    arg(Type.Bool, toggle)
  )
end

-- Vector3 GET_SAFE_PICKUP_COORDS(float x, float y, float z, float p3, float p4) // 0x6E16BC2503FF1FF0
function OBJECT.GET_SAFE_PICKUP_COORDS(x, y, z, p3, p4)
  return native.invoke(
    Type.Vector3, 3661, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3),
    arg(Type.Float, p4)
  )
end

-- void ADD_EXTENDED_PICKUP_PROBE_AREA(float x, float y, float z, float radius) // 0xD4A7A435B3710D05
--[[
Adds an area that seems to be related to pickup physics behavior.
Max amount of areas is 10. Only works in multiplayer.
--]]
function OBJECT.ADD_EXTENDED_PICKUP_PROBE_AREA(x, y, z, radius)
  native.invoke(
    Type.Void, 3662, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void CLEAR_EXTENDED_PICKUP_PROBE_AREAS() // 0xB7C6D80FB371659A
--[[
Clears all areas created by ADD_EXTENDED_PICKUP_PROBE_AREA
--]]
function OBJECT.CLEAR_EXTENDED_PICKUP_PROBE_AREAS()
  native.invoke(
    Type.Void, 3663, false
  )
end

-- Vector3 GET_PICKUP_COORDS(Pickup pickup) // 0x225B8B35C88029B3
function OBJECT.GET_PICKUP_COORDS(pickup)
  return native.invoke(
    Type.Vector3, 3664, false,
    arg(Type.Pickup, pickup)
  )
end

-- void SUPPRESS_PICKUP_SOUND_FOR_PICKUP(Any p0, Any p1) // 0x8DCA505A5C196F05
function OBJECT.SUPPRESS_PICKUP_SOUND_FOR_PICKUP(p0, p1)
  native.invoke(
    Type.Void, 3665, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void REMOVE_ALL_PICKUPS_OF_TYPE(Hash pickupHash) // 0x27F9D613092159CF
--[[
Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.REMOVE_ALL_PICKUPS_OF_TYPE(pickupHash)
  native.invoke(
    Type.Void, 3666, false,
    arg(Type.Hash, pickupHash)
  )
end

-- BOOL HAS_PICKUP_BEEN_COLLECTED(Pickup pickup) // 0x80EC48E6679313F9
function OBJECT.HAS_PICKUP_BEEN_COLLECTED(pickup)
  return native.invoke(
    Type.Bool, 3667, false,
    arg(Type.Pickup, pickup)
  )
end

-- void REMOVE_PICKUP(Pickup pickup) // 0x3288D8ACAECD2AB2
function OBJECT.REMOVE_PICKUP(pickup)
  native.invoke(
    Type.Void, 3668, false,
    arg(Type.Pickup, pickup)
  )
end

-- void CREATE_MONEY_PICKUPS(float x, float y, float z, int value, int amount, Hash model) // 0x0589B5E791CE9B2B
--[[
Spawns one or more money pickups.

x: The X-component of the world position to spawn the money pickups at.
y: The Y-component of the world position to spawn the money pickups at.
z: The Z-component of the world position to spawn the money pickups at.
value: The combined value of the pickups (in dollars).
amount: The number of pickups to spawn.
model: The model to use, or 0 for default money model.

Example:
CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);

Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).

==============================================

Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000
--]]
function OBJECT.CREATE_MONEY_PICKUPS(x, y, z, value, amount, model)
  native.invoke(
    Type.Void, 3669, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, value),
    arg(Type.Int, amount),
    arg(Type.Hash, model)
  )
end

-- BOOL DOES_PICKUP_EXIST(Pickup pickup) // 0xAFC1CA75AD4074D1
function OBJECT.DOES_PICKUP_EXIST(pickup)
  return native.invoke(
    Type.Bool, 3670, false,
    arg(Type.Pickup, pickup)
  )
end

-- BOOL DOES_PICKUP_OBJECT_EXIST(Object pickupObject) // 0xD9EFB6DBF7DAAEA3
function OBJECT.DOES_PICKUP_OBJECT_EXIST(pickupObject)
  return native.invoke(
    Type.Bool, 3671, false,
    arg(Type.Object, pickupObject)
  )
end

-- Object GET_PICKUP_OBJECT(Pickup pickup) // 0x5099BC55630B25AE
function OBJECT.GET_PICKUP_OBJECT(pickup)
  return native.invoke(
    Type.Object, 3672, false,
    arg(Type.Pickup, pickup)
  )
end

-- BOOL IS_OBJECT_A_PICKUP(Object object) // 0xFC481C641EBBD27D
function OBJECT.IS_OBJECT_A_PICKUP(object)
  return native.invoke(
    Type.Bool, 3673, false,
    arg(Type.Object, object)
  )
end

-- BOOL IS_OBJECT_A_PORTABLE_PICKUP(Object object) // 0x0378C08504160D0D
function OBJECT.IS_OBJECT_A_PORTABLE_PICKUP(object)
  return native.invoke(
    Type.Bool, 3674, false,
    arg(Type.Object, object)
  )
end

-- BOOL DOES_PICKUP_OF_TYPE_EXIST_IN_AREA(Hash pickupHash, float x, float y, float z, float radius) // 0xF9C36251F6E48E33
--[[
Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.DOES_PICKUP_OF_TYPE_EXIST_IN_AREA(pickupHash, x, y, z, radius)
  return native.invoke(
    Type.Bool, 3675, false,
    arg(Type.Hash, pickupHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void SET_PICKUP_REGENERATION_TIME(Pickup pickup, int duration) // 0x78015C9B4B3ECC9D
function OBJECT.SET_PICKUP_REGENERATION_TIME(pickup, duration)
  native.invoke(
    Type.Void, 3676, false,
    arg(Type.Pickup, pickup),
    arg(Type.Int, duration)
  )
end

-- void FORCE_PICKUP_REGENERATE(Any p0) // 0x758A5C1B3B1E1990
function OBJECT.FORCE_PICKUP_REGENERATE(p0)
  native.invoke(
    Type.Void, 3677, false,
    arg(Type.Any, p0)
  )
end

-- void SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(Player player, Hash pickupHash, BOOL toggle) // 0x616093EC6B139DD9
--[[
Disabling/enabling a player from getting pickups. From the scripts:

OBJECT::SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
OBJECT::SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
OBJECT::SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 1);
OBJECT::SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(PLAYER::PLAYER_ID(), ${pickup_portable_package}, 0);
OBJECT::SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 0);
OBJECT::SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(PLAYER::PLAYER_ID(), ${pickup_armour_standard}, 1);

Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.SET_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_OF_TYPE(player, pickupHash, toggle)
  native.invoke(
    Type.Void, 3678, false,
    arg(Type.Player, player),
    arg(Type.Hash, pickupHash),
    arg(Type.Bool, toggle)
  )
end

-- void SET_LOCAL_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_WITH_MODEL(Hash modelHash, BOOL toggle) // 0x88EAEC617CD26926
--[[
Maximum amount of pickup models that can be disallowed is 30.
--]]
function OBJECT.SET_LOCAL_PLAYER_PERMITTED_TO_COLLECT_PICKUPS_WITH_MODEL(modelHash, toggle)
  native.invoke(
    Type.Void, 3679, false,
    arg(Type.Hash, modelHash),
    arg(Type.Bool, toggle)
  )
end

-- void ALLOW_ALL_PLAYERS_TO_COLLECT_PICKUPS_OF_TYPE(Hash pickupHash) // 0xFDC07C58E8AAB715
--[[
Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.ALLOW_ALL_PLAYERS_TO_COLLECT_PICKUPS_OF_TYPE(pickupHash)
  native.invoke(
    Type.Void, 3680, false,
    arg(Type.Hash, pickupHash)
  )
end

-- void SET_TEAM_PICKUP_OBJECT(Object object, Any p1, BOOL p2) // 0x53E0DF1A2A3CF0CA
function OBJECT.SET_TEAM_PICKUP_OBJECT(object, p1, p2)
  native.invoke(
    Type.Void, 3681, false,
    arg(Type.Object, object),
    arg(Type.Any, p1),
    arg(Type.Bool, p2)
  )
end

-- void PREVENT_COLLECTION_OF_PORTABLE_PICKUP(Object object, BOOL p1, BOOL p2) // 0x92AEFB5F6E294023
function OBJECT.PREVENT_COLLECTION_OF_PORTABLE_PICKUP(object, p1, p2)
  native.invoke(
    Type.Void, 3682, false,
    arg(Type.Object, object),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void SET_PICKUP_OBJECT_GLOW_WHEN_UNCOLLECTABLE(Pickup pickup, BOOL toggle) // 0x27F248C3FEBFAAD3
function OBJECT.SET_PICKUP_OBJECT_GLOW_WHEN_UNCOLLECTABLE(pickup, toggle)
  native.invoke(
    Type.Void, 3683, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PICKUP_GLOW_OFFSET(Pickup pickup, float p1) // 0x0596843B34B95CE5
--[[
p1 is always 0.51. This native is called before SET_PICKUP_REGENERATION_TIME in all occurances.
--]]
function OBJECT.SET_PICKUP_GLOW_OFFSET(pickup, p1)
  native.invoke(
    Type.Void, 3684, false,
    arg(Type.Pickup, pickup),
    arg(Type.Float, p1)
  )
end

-- void SET_PICKUP_OBJECT_GLOW_OFFSET(Pickup pickup, float p1, BOOL p2) // 0xA08FE5E49BDC39DD
--[[
p1 is always -0.2 in scripts and p2 is always true in scripts.
--]]
function OBJECT.SET_PICKUP_OBJECT_GLOW_OFFSET(pickup, p1, p2)
  native.invoke(
    Type.Void, 3685, false,
    arg(Type.Pickup, pickup),
    arg(Type.Float, p1),
    arg(Type.Bool, p2)
  )
end

-- void SET_OBJECT_GLOW_IN_SAME_TEAM(Pickup pickup) // 0x62454A641B41F3C5
function OBJECT.SET_OBJECT_GLOW_IN_SAME_TEAM(pickup)
  native.invoke(
    Type.Void, 3686, false,
    arg(Type.Pickup, pickup)
  )
end

-- void SET_PICKUP_OBJECT_ARROW_MARKER(Pickup pickup, BOOL toggle) // 0x39A5FB7EAF150840
function OBJECT.SET_PICKUP_OBJECT_ARROW_MARKER(pickup, toggle)
  native.invoke(
    Type.Void, 3687, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void ALLOW_PICKUP_ARROW_MARKER_WHEN_UNCOLLECTABLE(Pickup pickup, BOOL toggle) // 0x834344A414C7C85D
function OBJECT.ALLOW_PICKUP_ARROW_MARKER_WHEN_UNCOLLECTABLE(pickup, toggle)
  native.invoke(
    Type.Void, 3688, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- int GET_DEFAULT_AMMO_FOR_WEAPON_PICKUP(Hash pickupHash) // 0xDB41D07A45A6D4B7
function OBJECT.GET_DEFAULT_AMMO_FOR_WEAPON_PICKUP(pickupHash)
  return native.invoke(
    Type.Int, 3689, false,
    arg(Type.Hash, pickupHash)
  )
end

-- void SET_PICKUP_GENERATION_RANGE_MULTIPLIER(float multiplier) // 0x318516E02DE3ECE2
function OBJECT.SET_PICKUP_GENERATION_RANGE_MULTIPLIER(multiplier)
  native.invoke(
    Type.Void, 3690, false,
    arg(Type.Float, multiplier)
  )
end

-- float GET_PICKUP_GENERATION_RANGE_MULTIPLIER() // 0xB3ECA65C7317F174
function OBJECT.GET_PICKUP_GENERATION_RANGE_MULTIPLIER()
  return native.invoke(
    Type.Float, 3691, false
  )
end

-- void SET_ONLY_ALLOW_AMMO_COLLECTION_WHEN_LOW(BOOL p0) // 0x31F924B53EADDF65
function OBJECT.SET_ONLY_ALLOW_AMMO_COLLECTION_WHEN_LOW(p0)
  native.invoke(
    Type.Void, 3692, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_PICKUP_UNCOLLECTABLE(Pickup pickup, BOOL toggle) // 0x1C1B69FAE509BA97
function OBJECT.SET_PICKUP_UNCOLLECTABLE(pickup, toggle)
  native.invoke(
    Type.Void, 3693, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PICKUP_TRANSPARENT_WHEN_UNCOLLECTABLE(Pickup pickup, BOOL toggle) // 0x858EC9FD25DE04AA
function OBJECT.SET_PICKUP_TRANSPARENT_WHEN_UNCOLLECTABLE(pickup, toggle)
  native.invoke(
    Type.Void, 3694, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PICKUP_HIDDEN_WHEN_UNCOLLECTABLE(Pickup pickup, BOOL toggle) // 0x3ED2B83AB2E82799
function OBJECT.SET_PICKUP_HIDDEN_WHEN_UNCOLLECTABLE(pickup, toggle)
  native.invoke(
    Type.Void, 3695, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PICKUP_OBJECT_TRANSPARENT_WHEN_UNCOLLECTABLE(Pickup pickup, BOOL toggle) // 0x8881C98A31117998
function OBJECT.SET_PICKUP_OBJECT_TRANSPARENT_WHEN_UNCOLLECTABLE(pickup, toggle)
  native.invoke(
    Type.Void, 3696, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PICKUP_OBJECT_ALPHA_WHEN_TRANSPARENT(int p0) // 0x8CFF648FBD7330F1
--[[
p0 is either 0 or 50 in scripts.
--]]
function OBJECT.SET_PICKUP_OBJECT_ALPHA_WHEN_TRANSPARENT(p0)
  native.invoke(
    Type.Void, 3697, false,
    arg(Type.Int, p0)
  )
end

-- void SET_PORTABLE_PICKUP_PERSIST(Pickup pickup, BOOL toggle) // 0x46F3ADD1E2D5BAF2
function OBJECT.SET_PORTABLE_PICKUP_PERSIST(pickup, toggle)
  native.invoke(
    Type.Void, 3698, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void ALLOW_PORTABLE_PICKUP_TO_MIGRATE_TO_NON_PARTICIPANTS(Pickup pickup, BOOL toggle) // 0x641F272B52E2F0F8
function OBJECT.ALLOW_PORTABLE_PICKUP_TO_MIGRATE_TO_NON_PARTICIPANTS(pickup, toggle)
  native.invoke(
    Type.Void, 3699, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void FORCE_ACTIVATE_PHYSICS_ON_UNFIXED_PICKUP(Pickup pickup, BOOL toggle) // 0x4C134B4DF76025D0
function OBJECT.FORCE_ACTIVATE_PHYSICS_ON_UNFIXED_PICKUP(pickup, toggle)
  native.invoke(
    Type.Void, 3700, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void ALLOW_PICKUP_BY_NONE_PARTICIPANT(Pickup pickup, BOOL toggle) // 0xAA059C615DE9DD03
function OBJECT.ALLOW_PICKUP_BY_NONE_PARTICIPANT(pickup, toggle)
  native.invoke(
    Type.Void, 3701, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void SUPPRESS_PICKUP_REWARD_TYPE(int rewardType, BOOL suppress) // 0xF92099527DB8E2A7
--[[
enum ePickupRewardType
{
    PICKUP_REWARD_TYPE_AMMO = (1 << 0),
    PICKUP_REWARD_TYPE_BULLET_MP = (1 << 1),
    PICKUP_REWARD_TYPE_MISSILE_MP = (1 << 2),
    PICKUP_REWARD_TYPE_GRENADE_LAUNCHER_MP = (1 << 3),
    PICKUP_REWARD_TYPE_ARMOUR = (1 << 4),
    PICKUP_REWARD_TYPE_HEALTH = (1 << 5),
    PICKUP_REWARD_TYPE_HEALTH_VARIABLE = PICKUP_REWARD_TYPE_HEALTH,
    PICKUP_REWARD_TYPE_MONEY_FIXED = (1 << 6),
    PICKUP_REWARD_TYPE_MONEY_VARIABLE = PICKUP_REWARD_TYPE_MONEY_FIXED,
    PICKUP_REWARD_TYPE_WEAPON = (1 << 7),
    PICKUP_REWARD_TYPE_STAT = (1 << 8),
    PICKUP_REWARD_TYPE_STAT_VARIABLE = PICKUP_REWARD_TYPE_STAT,
    PICKUP_REWARD_TYPE_VEHICLE_FIX = (1 << 9),
    PICKUP_REWARD_TYPE_FIREWORK_MP = (1 << 10),
};
--]]
function OBJECT.SUPPRESS_PICKUP_REWARD_TYPE(rewardType, suppress)
  native.invoke(
    Type.Void, 3702, false,
    arg(Type.Int, rewardType),
    arg(Type.Bool, suppress)
  )
end

-- void CLEAR_ALL_PICKUP_REWARD_TYPE_SUPPRESSION() // 0xA2C1F5E92AFE49ED
function OBJECT.CLEAR_ALL_PICKUP_REWARD_TYPE_SUPPRESSION()
  native.invoke(
    Type.Void, 3703, false
  )
end

-- void CLEAR_PICKUP_REWARD_TYPE_SUPPRESSION(int rewardType) // 0x762DB2D380B48D04
function OBJECT.CLEAR_PICKUP_REWARD_TYPE_SUPPRESSION(rewardType)
  native.invoke(
    Type.Void, 3704, false,
    arg(Type.Int, rewardType)
  )
end

-- void RENDER_FAKE_PICKUP_GLOW(float x, float y, float z, int colorIndex) // 0x3430676B11CDF21D
--[[
draws circular marker at pos
-1 = none
0 = red
1 = green
2 = blue
3 = green larger
4 = nothing
5 = green small
--]]
function OBJECT.RENDER_FAKE_PICKUP_GLOW(x, y, z, colorIndex)
  native.invoke(
    Type.Void, 3705, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, colorIndex)
  )
end

-- void SET_PICKUP_OBJECT_COLLECTABLE_IN_VEHICLE(Pickup pickup) // 0x7813E8B8C4AE4799
function OBJECT.SET_PICKUP_OBJECT_COLLECTABLE_IN_VEHICLE(pickup)
  native.invoke(
    Type.Void, 3706, false,
    arg(Type.Pickup, pickup)
  )
end

-- void SET_PICKUP_TRACK_DAMAGE_EVENTS(Pickup pickup, BOOL toggle) // 0xBFFE53AE7E67FCDC
function OBJECT.SET_PICKUP_TRACK_DAMAGE_EVENTS(pickup, toggle)
  native.invoke(
    Type.Void, 3707, false,
    arg(Type.Pickup, pickup),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_FLAG_SUPPRESS_SHADOW(Entity entity, BOOL toggle) // 0xD05A3241B9A86F19
--[[
Sets entity+38 to C (when false) or 0xFF3f (when true)
--]]
function OBJECT.SET_ENTITY_FLAG_SUPPRESS_SHADOW(entity, toggle)
  native.invoke(
    Type.Void, 3708, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_FLAG_RENDER_SMALL_SHADOW(Object object, BOOL toggle) // 0xB2D0BDE54F0E8E5A
function OBJECT.SET_ENTITY_FLAG_RENDER_SMALL_SHADOW(object, toggle)
  native.invoke(
    Type.Void, 3709, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- Hash GET_WEAPON_TYPE_FROM_PICKUP_TYPE(Hash pickupHash) // 0x08F96CA6C551AD51
--[[
Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.GET_WEAPON_TYPE_FROM_PICKUP_TYPE(pickupHash)
  return native.invoke(
    Type.Hash, 3710, false,
    arg(Type.Hash, pickupHash)
  )
end

-- Hash GET_PICKUP_TYPE_FROM_WEAPON_HASH(Hash weaponHash) // 0xD6429A016084F1A5
--[[
Returns the pickup hash for the given weapon hash
--]]
function OBJECT.GET_PICKUP_TYPE_FROM_WEAPON_HASH(weaponHash)
  return native.invoke(
    Type.Hash, 3711, false,
    arg(Type.Hash, weaponHash)
  )
end

-- BOOL IS_PICKUP_WEAPON_OBJECT_VALID(Object object) // 0x11D1E53A726891FE
function OBJECT.IS_PICKUP_WEAPON_OBJECT_VALID(object)
  return native.invoke(
    Type.Bool, 3712, false,
    arg(Type.Object, object)
  )
end

-- int GET_OBJECT_TINT_INDEX(Object object) // 0xE84EB93729C5F36A
function OBJECT.GET_OBJECT_TINT_INDEX(object)
  return native.invoke(
    Type.Int, 3713, false,
    arg(Type.Object, object)
  )
end

-- void SET_OBJECT_TINT_INDEX(Object object, int textureVariation) // 0x971DA0055324D033
--[[
enum ObjectPaintVariants
{
 Pacific = 0,
  Azure = 1,
    Nautical = 2,
 Continental = 3,
  Battleship = 4,
   Intrepid = 5,
 Uniform = 6,
  Classico = 7,
 Mediterranean = 8,
    Command = 9,
  Mariner = 10,
 Ruby = 11,
    Vintage = 12,
 Pristine = 13,
    Merchant = 14,
    Voyager = 15
};
--]]
function OBJECT.SET_OBJECT_TINT_INDEX(object, textureVariation)
  native.invoke(
    Type.Void, 3714, false,
    arg(Type.Object, object),
    arg(Type.Int, textureVariation)
  )
end

-- BOOL SET_TINT_INDEX_CLOSEST_BUILDING_OF_TYPE(float x, float y, float z, float radius, Hash modelHash, int textureVariation) // 0xF12E33034D887F66
function OBJECT.SET_TINT_INDEX_CLOSEST_BUILDING_OF_TYPE(x, y, z, radius, modelHash, textureVariation)
  return native.invoke(
    Type.Bool, 3715, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, modelHash),
    arg(Type.Int, textureVariation)
  )
end

-- void SET_PROP_TINT_INDEX(Any p0, Any p1) // 0x31574B1B41268673
function OBJECT.SET_PROP_TINT_INDEX(p0, p1)
  native.invoke(
    Type.Void, 3716, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL SET_PROP_LIGHT_COLOR(Object object, BOOL p1, int r, int g, int b) // 0x5F048334B4A4E774
function OBJECT.SET_PROP_LIGHT_COLOR(object, p1, r, g, b)
  return native.invoke(
    Type.Bool, 3717, false,
    arg(Type.Object, object),
    arg(Type.Bool, p1),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b)
  )
end

-- BOOL IS_PROP_LIGHT_OVERRIDEN(Object object) // 0xADF084FB8F075D06
function OBJECT.IS_PROP_LIGHT_OVERRIDEN(object)
  return native.invoke(
    Type.Bool, 3718, false,
    arg(Type.Object, object)
  )
end

-- void SET_OBJECT_IS_VISIBLE_IN_MIRRORS(Object object, BOOL toggle) // 0x3B2FD68DB5F8331C
function OBJECT.SET_OBJECT_IS_VISIBLE_IN_MIRRORS(object, toggle)
  native.invoke(
    Type.Void, 3719, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- void SET_OBJECT_SPEED_BOOST_AMOUNT(Object object, Any p1) // 0x96EE0EBA0163DF80
function OBJECT.SET_OBJECT_SPEED_BOOST_AMOUNT(object, p1)
  native.invoke(
    Type.Void, 3720, false,
    arg(Type.Object, object),
    arg(Type.Any, p1)
  )
end

-- void SET_OBJECT_SPEED_BOOST_DURATION(Object object, float duration) // 0xDF6CA0330F2E737B
function OBJECT.SET_OBJECT_SPEED_BOOST_DURATION(object, duration)
  native.invoke(
    Type.Void, 3721, false,
    arg(Type.Object, object),
    arg(Type.Float, duration)
  )
end

-- Hash CONVERT_OLD_PICKUP_TYPE_TO_NEW(Hash pickupHash) // 0x5EAAD83F8CFB4575
--[[
returns pickup hash.

Full list of pickup types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pickupTypes.json
--]]
function OBJECT.CONVERT_OLD_PICKUP_TYPE_TO_NEW(pickupHash)
  return native.invoke(
    Type.Hash, 3722, false,
    arg(Type.Hash, pickupHash)
  )
end

-- void SET_FORCE_OBJECT_THIS_FRAME(float x, float y, float z, float p3) // 0xF538081986E49E9D
function OBJECT.SET_FORCE_OBJECT_THIS_FRAME(x, y, z, p3)
  native.invoke(
    Type.Void, 3723, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3)
  )
end

-- void ONLY_CLEAN_UP_OBJECT_WHEN_OUT_OF_RANGE(Object object) // 0xADBE4809F19F927A
--[[
is this like setting is as no longer needed?
--]]
function OBJECT.ONLY_CLEAN_UP_OBJECT_WHEN_OUT_OF_RANGE(object)
  native.invoke(
    Type.Void, 3724, false,
    arg(Type.Object, object)
  )
end

-- void SET_DISABLE_COLLISIONS_BETWEEN_CARS_AND_CAR_PARACHUTE(Any p0) // 0x8CAAB2BD3EA58BD4
function OBJECT.SET_DISABLE_COLLISIONS_BETWEEN_CARS_AND_CAR_PARACHUTE(p0)
  native.invoke(
    Type.Void, 3725, false,
    arg(Type.Any, p0)
  )
end

-- void SET_PROJECTILES_SHOULD_EXPLODE_ON_CONTACT(Entity entity, Any p1) // 0x63ECF581BC70E363
function OBJECT.SET_PROJECTILES_SHOULD_EXPLODE_ON_CONTACT(entity, p1)
  native.invoke(
    Type.Void, 3726, false,
    arg(Type.Entity, entity),
    arg(Type.Any, p1)
  )
end

-- void SET_DRIVE_ARTICULATED_JOINT(Object object, BOOL toggle, int p2) // 0x911024442F4898F0
--[[
Activate the physics to: "xs_prop_arena_{flipper,wall,bollard,turntable,pit}"
--]]
function OBJECT.SET_DRIVE_ARTICULATED_JOINT(object, toggle, p2)
  native.invoke(
    Type.Void, 3727, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle),
    arg(Type.Int, p2)
  )
end

-- void SET_DRIVE_ARTICULATED_JOINT_WITH_INFLICTOR(Object object, BOOL toggle, int p2, Ped ped) // 0xB20834A7DD3D8896
function OBJECT.SET_DRIVE_ARTICULATED_JOINT_WITH_INFLICTOR(object, toggle, p2, ped)
  native.invoke(
    Type.Void, 3728, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle),
    arg(Type.Int, p2),
    arg(Type.Ped, ped)
  )
end

-- void SET_OBJECT_IS_A_PRESSURE_PLATE(Object object, BOOL toggle) // 0x734E1714D077DA9A
function OBJECT.SET_OBJECT_IS_A_PRESSURE_PLATE(object, toggle)
  native.invoke(
    Type.Void, 3729, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- void SET_WEAPON_IMPACTS_APPLY_GREATER_FORCE(Object object, BOOL p1) // 0x1A6CBB06E2D0D79D
function OBJECT.SET_WEAPON_IMPACTS_APPLY_GREATER_FORCE(object, p1)
  native.invoke(
    Type.Void, 3730, false,
    arg(Type.Object, object),
    arg(Type.Bool, p1)
  )
end

-- BOOL GET_IS_ARTICULATED_JOINT_AT_MIN_ANGLE(Object object, Any p1) // 0x43C677F1E1158005
function OBJECT.GET_IS_ARTICULATED_JOINT_AT_MIN_ANGLE(object, p1)
  return native.invoke(
    Type.Bool, 3731, false,
    arg(Type.Object, object),
    arg(Type.Any, p1)
  )
end

-- BOOL GET_IS_ARTICULATED_JOINT_AT_MAX_ANGLE(Any p0, Any p1) // 0x3BD770D281982DB5
function OBJECT.GET_IS_ARTICULATED_JOINT_AT_MAX_ANGLE(p0, p1)
  return native.invoke(
    Type.Bool, 3732, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_IS_OBJECT_ARTICULATED(Object object, BOOL toggle) // 0x1C57C94A6446492A
function OBJECT.SET_IS_OBJECT_ARTICULATED(object, toggle)
  native.invoke(
    Type.Void, 3733, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- void SET_IS_OBJECT_BALL(Object object, BOOL toggle) // 0xB5B7742424BD4445
function OBJECT.SET_IS_OBJECT_BALL(object, toggle)
  native.invoke(
    Type.Void, 3734, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end


