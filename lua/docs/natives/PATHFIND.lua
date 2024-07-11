PATHFIND = {}

-- void SET_ROADS_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL nodeEnabled, BOOL unknown2) // 0xBF1A602B5BA52FEE
--[[
When nodeEnabled is set to false, all nodes in the area get disabled.
`GET_VEHICLE_NODE_IS_SWITCHED_OFF` returns true afterwards.
If it's true, `GET_VEHICLE_NODE_IS_SWITCHED_OFF` returns false.
--]]
function PATHFIND.SET_ROADS_IN_AREA(x1, y1, z1, x2, y2, z2, nodeEnabled, unknown2)
  native.invoke(
    Type.Void, 3783, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, nodeEnabled),
    arg(Type.Bool, unknown2)
  )
end

-- void SET_ROADS_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL unknown1, BOOL unknown2, BOOL unknown3) // 0x1A5AA1208AF5DB59
--[[
unknown3 is related to `SEND_SCRIPT_WORLD_STATE_EVENT > CNetworkRoadNodeWorldStateData` in networked environments.
See IS_POINT_IN_ANGLED_AREA for the definition of an angled area.
--]]
function PATHFIND.SET_ROADS_IN_ANGLED_AREA(x1, y1, z1, x2, y2, z2, width, unknown1, unknown2, unknown3)
  native.invoke(
    Type.Void, 3784, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Bool, unknown1),
    arg(Type.Bool, unknown2),
    arg(Type.Bool, unknown3)
  )
end

-- void SET_PED_PATHS_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL p6, Any p7) // 0x34F060F4BF92E018
function PATHFIND.SET_PED_PATHS_IN_AREA(x1, y1, z1, x2, y2, z2, p6, p7)
  native.invoke(
    Type.Void, 3785, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, p6),
    arg(Type.Any, p7)
  )
end

-- BOOL GET_SAFE_COORD_FOR_PED(float x, float y, float z, BOOL onGround, Vector3* outPosition, int flags) // 0xB61C8E878A4199CA
--[[
Flags are:
1 = 1 = B02_IsFootpath
2 = 4 = !B15_InteractionUnk
4 = 0x20 = !B14_IsInterior
8 = 0x40 = !B07_IsWater
16 = 0x200 = B17_IsFlatGround
When onGround == true outPosition is a position located on the nearest pavement.

When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.

In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16. 

16 works for me, 0 crashed the script.
--]]
function PATHFIND.GET_SAFE_COORD_FOR_PED(x, y, z, onGround, outPosition, flags)
  return native.invoke(
    Type.Bool, 3786, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, onGround),
    ref(Type.Vector3, outPosition),
    arg(Type.Int, flags)
  )
end

-- BOOL GET_CLOSEST_VEHICLE_NODE(float x, float y, float z, Vector3* outPosition, int nodeFlags, float p5, float p6) // 0x240A18690AE96513
--[[
https://gtaforums.com/topic/843561-pathfind-node-types
--]]
function PATHFIND.GET_CLOSEST_VEHICLE_NODE(x, y, z, outPosition, nodeFlags, p5, p6)
  return native.invoke(
    Type.Bool, 3787, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Vector3, outPosition),
    arg(Type.Int, nodeFlags),
    arg(Type.Float, p5),
    arg(Type.Float, p6)
  )
end

-- BOOL GET_CLOSEST_MAJOR_VEHICLE_NODE(float x, float y, float z, Vector3* outPosition, float unknown1, float unknown2) // 0x2EABE3B06F58C1BE
--[[
Get the closest vehicle node to a given position.
--]]
function PATHFIND.GET_CLOSEST_MAJOR_VEHICLE_NODE(x, y, z, outPosition, unknown1, unknown2)
  return native.invoke(
    Type.Bool, 3788, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Vector3, outPosition),
    arg(Type.Float, unknown1),
    arg(Type.Float, unknown2)
  )
end

-- BOOL GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, Vector3* outPosition, float* outHeading, int nodeType, float p6, float p7) // 0xFF071FB798B803B0
--[[
p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.

nodeType: 0 = main roads, 1 = any dry path, 3 = water
p6 is always 3.0
p7 is always 0

gtaforums.com/topic/843561-pathfind-node-types

Example of usage, moving vehicle to closest path/road:
Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true);
Vector3 closestVehicleNodeCoords; 
float roadHeading; 
PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0); 
ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading);
ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1);
VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);

------------------------------------------------------------------
C# Example (ins1de) : https://pastebin.com/fxtMWAHD
--]]
function PATHFIND.GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(x, y, z, outPosition, outHeading, nodeType, p6, p7)
  return native.invoke(
    Type.Bool, 3789, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Vector3, outPosition),
    ref(Type.Float, outHeading),
    arg(Type.Int, nodeType),
    arg(Type.Float, p6),
    arg(Type.Float, p7)
  )
end

-- BOOL GET_NTH_CLOSEST_VEHICLE_NODE(float x, float y, float z, int nthClosest, Vector3* outPosition, int nodeFlags, float unknown1, float unknown2) // 0xE50E52416CCF948B
function PATHFIND.GET_NTH_CLOSEST_VEHICLE_NODE(x, y, z, nthClosest, outPosition, nodeFlags, unknown1, unknown2)
  return native.invoke(
    Type.Bool, 3790, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, nthClosest),
    ref(Type.Vector3, outPosition),
    arg(Type.Int, nodeFlags),
    arg(Type.Float, unknown1),
    arg(Type.Float, unknown2)
  )
end

-- int GET_NTH_CLOSEST_VEHICLE_NODE_ID(float x, float y, float z, int nth, int nodeFlags, float p5, float p6) // 0x22D7275A79FE8215
--[[
Returns the id.
--]]
function PATHFIND.GET_NTH_CLOSEST_VEHICLE_NODE_ID(x, y, z, nth, nodeFlags, p5, p6)
  return native.invoke(
    Type.Int, 3791, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, nth),
    arg(Type.Int, nodeFlags),
    arg(Type.Float, p5),
    arg(Type.Float, p6)
  )
end

-- BOOL GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, float* outHeading, int* outNumLanes, int nodeFlags, float unknown3, float unknown4) // 0x80CA6A8B6C094CC4
--[[
Get the nth closest vehicle node and its heading.
--]]
function PATHFIND.GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(x, y, z, nthClosest, outPosition, outHeading, outNumLanes, nodeFlags, unknown3, unknown4)
  return native.invoke(
    Type.Bool, 3792, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, nthClosest),
    ref(Type.Vector3, outPosition),
    ref(Type.Float, outHeading),
    ref(Type.Int, outNumLanes),
    arg(Type.Int, nodeFlags),
    arg(Type.Float, unknown3),
    arg(Type.Float, unknown4)
  )
end

-- int GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, float* outHeading, int nodeFlags, float p7, float p8) // 0x6448050E9C2A7207
function PATHFIND.GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING(x, y, z, nthClosest, outPosition, outHeading, nodeFlags, p7, p8)
  return native.invoke(
    Type.Int, 3793, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, nthClosest),
    ref(Type.Vector3, outPosition),
    ref(Type.Float, outHeading),
    arg(Type.Int, nodeFlags),
    arg(Type.Float, p7),
    arg(Type.Float, p8)
  )
end

-- BOOL GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION(float x, float y, float z, float desiredX, float desiredY, float desiredZ, int nthClosest, Vector3* outPosition, float* outHeading, int nodeFlags, float p10, float p11) // 0x45905BE8654AE067
--[[
See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water

p10 always equals 3.0
p11 always equals 0
--]]
function PATHFIND.GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION(x, y, z, desiredX, desiredY, desiredZ, nthClosest, outPosition, outHeading, nodeFlags, p10, p11)
  return native.invoke(
    Type.Bool, 3794, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, desiredX),
    arg(Type.Float, desiredY),
    arg(Type.Float, desiredZ),
    arg(Type.Int, nthClosest),
    ref(Type.Vector3, outPosition),
    ref(Type.Float, outHeading),
    arg(Type.Int, nodeFlags),
    arg(Type.Float, p10),
    arg(Type.Float, p11)
  )
end

-- BOOL GET_VEHICLE_NODE_PROPERTIES(float x, float y, float z, int* density, int* flags) // 0x0568566ACBB5DEDC
--[[
Gets the density and flags of the closest node to the specified position.
Density is a value between 0 and 15, indicating how busy the road is.
Flags is a bit field.
--]]
function PATHFIND.GET_VEHICLE_NODE_PROPERTIES(x, y, z, density, flags)
  return native.invoke(
    Type.Bool, 3795, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Int, density),
    ref(Type.Int, flags)
  )
end

-- BOOL IS_VEHICLE_NODE_ID_VALID(int vehicleNodeId) // 0x1EAF30FCFBF5AF74
--[[
Returns true if the id is non zero.
--]]
function PATHFIND.IS_VEHICLE_NODE_ID_VALID(vehicleNodeId)
  return native.invoke(
    Type.Bool, 3796, false,
    arg(Type.Int, vehicleNodeId)
  )
end

-- void GET_VEHICLE_NODE_POSITION(int nodeId, Vector3* outPosition) // 0x703123E5E7D429C2
--[[
Calling this with an invalid node id, will crash the game.
Note that IS_VEHICLE_NODE_ID_VALID simply checks if nodeId is not zero. It does not actually ensure that the id is valid.
Eg. IS_VEHICLE_NODE_ID_VALID(1) will return true, but will crash when calling GET_VEHICLE_NODE_POSITION().
--]]
function PATHFIND.GET_VEHICLE_NODE_POSITION(nodeId, outPosition)
  native.invoke(
    Type.Void, 3797, false,
    arg(Type.Int, nodeId),
    ref(Type.Vector3, outPosition)
  )
end

-- BOOL GET_VEHICLE_NODE_IS_GPS_ALLOWED(int nodeID) // 0xA2AE5C478B96E3B6
--[[
Returns false for nodes that aren't used for GPS routes.
Example:
Nodes in Fort Zancudo and LSIA are false
--]]
function PATHFIND.GET_VEHICLE_NODE_IS_GPS_ALLOWED(nodeID)
  return native.invoke(
    Type.Bool, 3798, false,
    arg(Type.Int, nodeID)
  )
end

-- BOOL GET_VEHICLE_NODE_IS_SWITCHED_OFF(int nodeID) // 0x4F5070AA58F69279
--[[
Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.
Normal roads where plenty of Peds spawn will return false
--]]
function PATHFIND.GET_VEHICLE_NODE_IS_SWITCHED_OFF(nodeID)
  return native.invoke(
    Type.Bool, 3799, false,
    arg(Type.Int, nodeID)
  )
end

-- BOOL GET_CLOSEST_ROAD(float x, float y, float z, float p3, int p4, Vector3* p5, Vector3* p6, Any* p7, Any* p8, float* p9, BOOL p10) // 0x132F52BBA570FE92
--[[
p1 seems to be always 1.0f in the scripts
--]]
function PATHFIND.GET_CLOSEST_ROAD(x, y, z, p3, p4, p5, p6, p7, p8, p9, p10)
  return native.invoke(
    Type.Bool, 3800, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3),
    arg(Type.Int, p4),
    ref(Type.Vector3, p5),
    ref(Type.Vector3, p6),
    ref(Type.Any, p7),
    ref(Type.Any, p8),
    ref(Type.Float, p9),
    arg(Type.Bool, p10)
  )
end

-- BOOL LOAD_ALL_PATH_NODES(BOOL set) // 0xC2AB6BFE34E92F8B
function PATHFIND.LOAD_ALL_PATH_NODES(set)
  return native.invoke(
    Type.Bool, 3801, false,
    arg(Type.Bool, set)
  )
end

-- void SET_ALLOW_STREAM_PROLOGUE_NODES(BOOL toggle) // 0x228E5C6AD4D74BFD
function PATHFIND.SET_ALLOW_STREAM_PROLOGUE_NODES(toggle)
  native.invoke(
    Type.Void, 3802, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_ALLOW_STREAM_HEIST_ISLAND_NODES(int type) // 0xF74B1FFA4A15FBEA
--[[
Activates Cayo Perico path nodes if passed `1`. GPS navigation will start working, maybe more stuff will change, not sure. It seems if you try to unload (pass `0`) when close to the island, your game might crash.
--]]
function PATHFIND.SET_ALLOW_STREAM_HEIST_ISLAND_NODES(type)
  native.invoke(
    Type.Void, 3803, false,
    arg(Type.Int, type)
  )
end

-- BOOL ARE_NODES_LOADED_FOR_AREA(float x1, float y1, float x2, float y2) // 0xF7B79A50B905A30D
function PATHFIND.ARE_NODES_LOADED_FOR_AREA(x1, y1, x2, y2)
  return native.invoke(
    Type.Bool, 3804, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, x2),
    arg(Type.Float, y2)
  )
end

-- BOOL REQUEST_PATH_NODES_IN_AREA_THIS_FRAME(float x1, float y1, float x2, float y2) // 0x07FB139B592FA687
--[[
Used internally for long range tasks
--]]
function PATHFIND.REQUEST_PATH_NODES_IN_AREA_THIS_FRAME(x1, y1, x2, y2)
  return native.invoke(
    Type.Bool, 3805, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, x2),
    arg(Type.Float, y2)
  )
end

-- void SET_ROADS_BACK_TO_ORIGINAL(float p0, float p1, float p2, float p3, float p4, float p5, Any p6) // 0x1EE7063B80FFC77C
function PATHFIND.SET_ROADS_BACK_TO_ORIGINAL(p0, p1, p2, p3, p4, p5, p6)
  native.invoke(
    Type.Void, 3806, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Any, p6)
  )
end

-- void SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width, Any p7) // 0x0027501B9F3B407E
--[[
See IS_POINT_IN_ANGLED_AREA for the definition of an angled area.
bool p7 - always 1
--]]
function PATHFIND.SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA(x1, y1, z1, x2, y2, z2, width, p7)
  native.invoke(
    Type.Void, 3807, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Any, p7)
  )
end

-- void SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME(float multiplier) // 0x0B919E1FB47CC4E0
function PATHFIND.SET_AMBIENT_PED_RANGE_MULTIPLIER_THIS_FRAME(multiplier)
  native.invoke(
    Type.Void, 3808, false,
    arg(Type.Float, multiplier)
  )
end

-- void ADJUST_AMBIENT_PED_SPAWN_DENSITIES_THIS_FRAME(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6) // 0xAA76052DDA9BFC3E
function PATHFIND.ADJUST_AMBIENT_PED_SPAWN_DENSITIES_THIS_FRAME(p0, p1, p2, p3, p4, p5, p6)
  native.invoke(
    Type.Void, 3809, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void SET_PED_PATHS_BACK_TO_ORIGINAL(float x1, float y1, float z1, float x2, float y2, float z2, Any p6) // 0xE04B48F2CC926253
--[[
p6 is always 0
--]]
function PATHFIND.SET_PED_PATHS_BACK_TO_ORIGINAL(x1, y1, z1, x2, y2, z2, p6)
  native.invoke(
    Type.Void, 3810, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Any, p6)
  )
end

-- BOOL GET_RANDOM_VEHICLE_NODE(float x, float y, float z, float radius, BOOL p4, BOOL p5, BOOL p6, Vector3* outPosition, int* nodeId) // 0x93E0DB8440B73A7D
function PATHFIND.GET_RANDOM_VEHICLE_NODE(x, y, z, radius, p4, p5, p6, outPosition, nodeId)
  return native.invoke(
    Type.Bool, 3811, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6),
    ref(Type.Vector3, outPosition),
    ref(Type.Int, nodeId)
  )
end

-- Vector3 GET_SPAWN_COORDS_FOR_VEHICLE_NODE(int nodeAddress, float towardsCoorsX, float towardsCoorsY, float towardsCoorsZ, Vector3* centrePoint, float* heading) // 0x809549AFC7AEC597
function PATHFIND.GET_SPAWN_COORDS_FOR_VEHICLE_NODE(nodeAddress, towardsCoorsX, towardsCoorsY, towardsCoorsZ, centrePoint, heading)
  return native.invoke(
    Type.Vector3, 3812, false,
    arg(Type.Int, nodeAddress),
    arg(Type.Float, towardsCoorsX),
    arg(Type.Float, towardsCoorsY),
    arg(Type.Float, towardsCoorsZ),
    ref(Type.Vector3, centrePoint),
    ref(Type.Float, heading)
  )
end

-- void GET_STREET_NAME_AT_COORD(float x, float y, float z, Hash* streetName, Hash* crossingRoad) // 0x2EB41072B4C1E4C0
--[[
Determines the name of the street which is the closest to the given coordinates.

x,y,z - the coordinates of the street
streetName - returns a hash to the name of the street the coords are on
crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road

Note: the names are returned as hashes, the strings can be returned using the function HUD::GET_STREET_NAME_FROM_HASH_KEY.
--]]
function PATHFIND.GET_STREET_NAME_AT_COORD(x, y, z, streetName, crossingRoad)
  native.invoke(
    Type.Void, 3813, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Hash, streetName),
    ref(Type.Hash, crossingRoad)
  )
end

-- int GENERATE_DIRECTIONS_TO_COORD(float x, float y, float z, BOOL p3, int* direction, float* p5, float* distToNxJunction) // 0xF90125F1F79ECDF8
--[[
p3 is 0 in the only game script occurrence (trevor3) but 1 doesn't seem to make a difference

distToNxJunction seems to be the distance in metres * 10.0f

direction:
0 = This happens randomly during the drive for seemingly no reason but if you consider that this native is only used in trevor3, it seems to mean "Next frame, stop whatever's being said and tell the player the direction."
1 = Route is being calculated or the player is going in the wrong direction
2 = Please Proceed the Highlighted Route
3 = In (distToNxJunction) Turn Left
4 = In (distToNxJunction) Turn Right
5 = In (distToNxJunction) Keep Straight
6 = In (distToNxJunction) Turn Sharply To The Left
7 = In (distToNxJunction) Turn Sharply To The Right
8 = Route is being recalculated or the navmesh is confusing. This happens randomly during the drive but consistently at {2044.0358, 2996.6116, 44.9717} if you face towards the bar and the route needs you to turn right. In that particular case, it could be a bug with how the turn appears to be 270 deg. CCW instead of "right." Either way, this seems to be the engine saying "I don't know the route right now."

return value set to 0 always
--]]
function PATHFIND.GENERATE_DIRECTIONS_TO_COORD(x, y, z, p3, direction, p5, distToNxJunction)
  return native.invoke(
    Type.Int, 3814, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p3),
    ref(Type.Int, direction),
    ref(Type.Float, p5),
    ref(Type.Float, distToNxJunction)
  )
end

-- void SET_IGNORE_NO_GPS_FLAG(BOOL toggle) // 0x72751156E7678833
function PATHFIND.SET_IGNORE_NO_GPS_FLAG(toggle)
  native.invoke(
    Type.Void, 3815, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_IGNORE_NO_GPS_FLAG_UNTIL_FIRST_NORMAL_NODE(BOOL toggle) // 0x1FC289A0C3FF470F
--[[
See: SET_BLIP_ROUTE
--]]
function PATHFIND.SET_IGNORE_NO_GPS_FLAG_UNTIL_FIRST_NORMAL_NODE(toggle)
  native.invoke(
    Type.Void, 3816, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_GPS_DISABLED_ZONE(float x1, float y1, float z1, float x2, float y2, float z3) // 0xDC20483CD3DD5201
function PATHFIND.SET_GPS_DISABLED_ZONE(x1, y1, z1, x2, y2, z3)
  native.invoke(
    Type.Void, 3817, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z3)
  )
end

-- int GET_GPS_BLIP_ROUTE_LENGTH() // 0xBBB45C3CF5C8AA85
function PATHFIND.GET_GPS_BLIP_ROUTE_LENGTH()
  return native.invoke(
    Type.Int, 3818, false
  )
end

-- BOOL GET_POS_ALONG_GPS_TYPE_ROUTE(Vector3* result, BOOL p1, float p2, int p3) // 0xF3162836C28F9DA5
--[[
p3 can be 0, 1 or 2.
--]]
function PATHFIND.GET_POS_ALONG_GPS_TYPE_ROUTE(result, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3819, false,
    ref(Type.Vector3, result),
    arg(Type.Bool, p1),
    arg(Type.Float, p2),
    arg(Type.Int, p3)
  )
end

-- BOOL GET_GPS_BLIP_ROUTE_FOUND() // 0x869DAACBBE9FA006
function PATHFIND.GET_GPS_BLIP_ROUTE_FOUND()
  return native.invoke(
    Type.Bool, 3820, false
  )
end

-- BOOL GET_ROAD_BOUNDARY_USING_HEADING(float x, float y, float z, float heading, Vector3* outPosition) // 0xA0F8A7517A273C05
function PATHFIND.GET_ROAD_BOUNDARY_USING_HEADING(x, y, z, heading, outPosition)
  return native.invoke(
    Type.Bool, 3821, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    ref(Type.Vector3, outPosition)
  )
end

-- BOOL GET_POSITION_BY_SIDE_OF_ROAD(float x, float y, float z, int p3, Vector3* outPosition) // 0x16F46FB18C8009E4
function PATHFIND.GET_POSITION_BY_SIDE_OF_ROAD(x, y, z, p3, outPosition)
  return native.invoke(
    Type.Bool, 3822, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, p3),
    ref(Type.Vector3, outPosition)
  )
end

-- BOOL IS_POINT_ON_ROAD(float x, float y, float z, Vehicle vehicle) // 0x125BF4ABFC536B09
--[[
Gets a value indicating whether the specified position is on a road.
The vehicle parameter is not implemented (ignored).
--]]
function PATHFIND.IS_POINT_ON_ROAD(x, y, z, vehicle)
  return native.invoke(
    Type.Bool, 3823, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Vehicle, vehicle)
  )
end

-- int GET_NEXT_GPS_DISABLED_ZONE_INDEX() // 0xD3A6A0EF48823A8C
--[[
Gets the next zone that has been disabled using SET_GPS_DISABLED_ZONE_AT_INDEX.
--]]
function PATHFIND.GET_NEXT_GPS_DISABLED_ZONE_INDEX()
  return native.invoke(
    Type.Int, 3824, false
  )
end

-- void SET_GPS_DISABLED_ZONE_AT_INDEX(float x1, float y1, float z1, float x2, float y2, float z2, int index) // 0xD0BC1C6FB18EE154
--[[
Disables the GPS route displayed on the minimap while within a certain zone (area). When in a disabled zone and creating a waypoint, the GPS route is not shown on the minimap until you are outside of the zone. When disabled, the direct distance is shown on minimap opposed to distance to travel. Seems to only work before setting a waypoint.
You can clear the disabled zone with CLEAR_GPS_DISABLED_ZONE_AT_INDEX.

**Setting a waypoint at the same coordinate:**
Disabled Zone: https://i.imgur.com/P9VUuxM.png
Enabled Zone (normal): https://i.imgur.com/BPi24aw.png
--]]
function PATHFIND.SET_GPS_DISABLED_ZONE_AT_INDEX(x1, y1, z1, x2, y2, z2, index)
  native.invoke(
    Type.Void, 3825, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, index)
  )
end

-- void CLEAR_GPS_DISABLED_ZONE_AT_INDEX(int index) // 0x2801D0012266DF07
--[[
Clears a disabled GPS route area from a certain index previously set using `SET_GPS_DISABLED_ZONE_AT_INDEX`.
--]]
function PATHFIND.CLEAR_GPS_DISABLED_ZONE_AT_INDEX(index)
  native.invoke(
    Type.Void, 3826, false,
    arg(Type.Int, index)
  )
end

-- void ADD_NAVMESH_REQUIRED_REGION(float x, float y, float radius) // 0x387EAD7EE42F6685
function PATHFIND.ADD_NAVMESH_REQUIRED_REGION(x, y, radius)
  native.invoke(
    Type.Void, 3827, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, radius)
  )
end

-- void REMOVE_NAVMESH_REQUIRED_REGIONS() // 0x916F0A3CDEC3445E
function PATHFIND.REMOVE_NAVMESH_REQUIRED_REGIONS()
  native.invoke(
    Type.Void, 3828, false
  )
end

-- BOOL IS_NAVMESH_REQUIRED_REGION_IN_USE() // 0x705A844002B39DC0
function PATHFIND.IS_NAVMESH_REQUIRED_REGION_IN_USE()
  return native.invoke(
    Type.Bool, 3829, false
  )
end

-- void DISABLE_NAVMESH_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL toggle) // 0x4C8872D8CDBE1B8B
--[[
Set toggle true to disable navmesh.
Set toggle false to enable navmesh.
--]]
function PATHFIND.DISABLE_NAVMESH_IN_AREA(x1, y1, z1, x2, y2, z2, toggle)
  native.invoke(
    Type.Void, 3830, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, toggle)
  )
end

-- BOOL ARE_ALL_NAVMESH_REGIONS_LOADED() // 0x8415D95B194A3AEA
function PATHFIND.ARE_ALL_NAVMESH_REGIONS_LOADED()
  return native.invoke(
    Type.Bool, 3831, false
  )
end

-- BOOL IS_NAVMESH_LOADED_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2) // 0xF813C7E63F9062A5
--[[
Returns whether navmesh for the region is loaded. The region is a rectangular prism defined by it's top left deepest corner to it's bottom right shallowest corner.

If you can re-word this so it makes more sense, please do. I'm horrible with words sometimes...
--]]
function PATHFIND.IS_NAVMESH_LOADED_IN_AREA(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Bool, 3832, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- int GET_NUM_NAVMESHES_EXISTING_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2) // 0x01708E8DD3FF8C65
function PATHFIND.GET_NUM_NAVMESHES_EXISTING_IN_AREA(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Int, 3833, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- int ADD_NAVMESH_BLOCKING_OBJECT(float p0, float p1, float p2, float p3, float p4, float p5, float p6, BOOL p7, Any p8) // 0xFCD5C8E06E502F5A
function PATHFIND.ADD_NAVMESH_BLOCKING_OBJECT(p0, p1, p2, p3, p4, p5, p6, p7, p8)
  return native.invoke(
    Type.Int, 3834, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Bool, p7),
    arg(Type.Any, p8)
  )
end

-- void UPDATE_NAVMESH_BLOCKING_OBJECT(Any p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, Any p8) // 0x109E99373F290687
function PATHFIND.UPDATE_NAVMESH_BLOCKING_OBJECT(p0, p1, p2, p3, p4, p5, p6, p7, p8)
  native.invoke(
    Type.Void, 3835, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Any, p8)
  )
end

-- void REMOVE_NAVMESH_BLOCKING_OBJECT(Any p0) // 0x46399A7895957C0E
function PATHFIND.REMOVE_NAVMESH_BLOCKING_OBJECT(p0)
  native.invoke(
    Type.Void, 3836, false,
    arg(Type.Any, p0)
  )
end

-- BOOL DOES_NAVMESH_BLOCKING_OBJECT_EXIST(Any p0) // 0x0EAEB0DB4B132399
function PATHFIND.DOES_NAVMESH_BLOCKING_OBJECT_EXIST(p0)
  return native.invoke(
    Type.Bool, 3837, false,
    arg(Type.Any, p0)
  )
end

-- float GET_APPROX_HEIGHT_FOR_POINT(float x, float y) // 0x29C24BFBED8AB8FB
--[[
Returns CGameWorldHeightMap's maximum Z value at specified point (grid node).
--]]
function PATHFIND.GET_APPROX_HEIGHT_FOR_POINT(x, y)
  return native.invoke(
    Type.Float, 3838, false,
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- float GET_APPROX_HEIGHT_FOR_AREA(float x1, float y1, float x2, float y2) // 0x8ABE8608576D9CE3
--[[
Returns CGameWorldHeightMap's maximum Z among all grid nodes that intersect with the specified rectangle.
--]]
function PATHFIND.GET_APPROX_HEIGHT_FOR_AREA(x1, y1, x2, y2)
  return native.invoke(
    Type.Float, 3839, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, x2),
    arg(Type.Float, y2)
  )
end

-- float GET_APPROX_FLOOR_FOR_POINT(float x, float y) // 0x336511A34F2E5185
--[[
Returns CGameWorldHeightMap's minimum Z value at specified point (grid node).
--]]
function PATHFIND.GET_APPROX_FLOOR_FOR_POINT(x, y)
  return native.invoke(
    Type.Float, 3840, false,
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- float GET_APPROX_FLOOR_FOR_AREA(float x1, float y1, float x2, float y2) // 0x3599D741C9AC6310
--[[
Returns CGameWorldHeightMap's minimum Z among all grid nodes that intersect with the specified rectangle.
--]]
function PATHFIND.GET_APPROX_FLOOR_FOR_AREA(x1, y1, x2, y2)
  return native.invoke(
    Type.Float, 3841, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, x2),
    arg(Type.Float, y2)
  )
end

-- float CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS(float x1, float y1, float z1, float x2, float y2, float z2) // 0xADD95C7005C4A197
--[[
Calculates the travel distance between a set of points.

Doesn't seem to correlate with distance on gps sometimes.
This function returns the value 100000.0 over long distances, seems to be a failure mode result, potentially occurring when not all path nodes are loaded into pathfind.
--]]
function PATHFIND.CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Float, 3842, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end


