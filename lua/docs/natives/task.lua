TASK = {}

-- void TASK_PAUSE(Ped ped, int ms) // 0xE73A266DB0CA9042
--[[
Stand still (?)
--]]
function TASK.TASK_PAUSE(ped, ms)
  native.invoke(
    Type.Void, 5360, false,
    arg(Type.Ped, ped),
    arg(Type.Int, ms)
  )
end

-- void TASK_STAND_STILL(Ped ped, int time) // 0x919BE13EED931959
--[[
Makes the specified ped stand still for (time) milliseconds.
--]]
function TASK.TASK_STAND_STILL(ped, time)
  native.invoke(
    Type.Void, 5361, false,
    arg(Type.Ped, ped),
    arg(Type.Int, time)
  )
end

-- void TASK_JUMP(Ped ped, BOOL usePlayerLaunchForce, BOOL doSuperJump, BOOL useFullSuperJumpForce) // 0x0AE4086104E067B1
--[[
Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).

v350: Ped ped, bool unused
v678: Ped ped, bool unused, bool flag1, bool flag2

flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.
--]]
function TASK.TASK_JUMP(ped, usePlayerLaunchForce, doSuperJump, useFullSuperJumpForce)
  native.invoke(
    Type.Void, 5362, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, usePlayerLaunchForce),
    arg(Type.Bool, doSuperJump),
    arg(Type.Bool, useFullSuperJumpForce)
  )
end

-- void TASK_COWER(Ped ped, int duration) // 0x3EB1FE9E8E908E15
function TASK.TASK_COWER(ped, duration)
  native.invoke(
    Type.Void, 5363, false,
    arg(Type.Ped, ped),
    arg(Type.Int, duration)
  )
end

-- void TASK_HANDS_UP(Ped ped, int duration, Ped facingPed, int timeToFacePed, int flags) // 0xF2EAB31979A7F910
--[[
In the scripts, p3 was always -1.

p3 seems to be duration or timeout of turn animation.
Also facingPed can be 0 or -1 so ped will just raise hands up.
--]]
function TASK.TASK_HANDS_UP(ped, duration, facingPed, timeToFacePed, flags)
  native.invoke(
    Type.Void, 5364, false,
    arg(Type.Ped, ped),
    arg(Type.Int, duration),
    arg(Type.Ped, facingPed),
    arg(Type.Int, timeToFacePed),
    arg(Type.Int, flags)
  )
end

-- void UPDATE_TASK_HANDS_UP_DURATION(Ped ped, int duration) // 0xA98FCAFD7893C834
function TASK.UPDATE_TASK_HANDS_UP_DURATION(ped, duration)
  native.invoke(
    Type.Void, 5365, false,
    arg(Type.Ped, ped),
    arg(Type.Int, duration)
  )
end

-- void TASK_OPEN_VEHICLE_DOOR(Ped ped, Vehicle vehicle, int timeOut, int seat, float speed) // 0x965791A9A488A062
--[[
The given ped will try to open the nearest door to 'seat'.
Example: telling the ped to open the door for the driver seat does not necessarily mean it will open the driver door, it may choose to open the passenger door instead if that one is closer.
--]]
function TASK.TASK_OPEN_VEHICLE_DOOR(ped, vehicle, timeOut, seat, speed)
  native.invoke(
    Type.Void, 5366, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, timeOut),
    arg(Type.Int, seat),
    arg(Type.Float, speed)
  )
end

-- void TASK_ENTER_VEHICLE(Ped ped, Vehicle vehicle, int timeout, int seat, float speed, int flag, const char* overrideEntryClipsetName, Any p7) // 0xC20E50AA46D09CA8
--[[
speed 1.0 = walk, 2.0 = run
p5 1 = normal, 3 = teleport to vehicle, 16 = teleport directly into vehicle
p6 is always 0

Usage of seat 
-1 = driver
0 = passenger
1 = left back seat
2 = right back seat
3 = outside left
4 = outside right
--]]
function TASK.TASK_ENTER_VEHICLE(ped, vehicle, timeout, seat, speed, flag, overrideEntryClipsetName, p7)
  native.invoke(
    Type.Void, 5367, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, timeout),
    arg(Type.Int, seat),
    arg(Type.Float, speed),
    arg(Type.Int, flag),
    arg(Type.String, overrideEntryClipsetName),
    arg(Type.Any, p7)
  )
end

-- void TASK_LEAVE_VEHICLE(Ped ped, Vehicle vehicle, int flags) // 0xD3DBCE61A490BE02
--[[
Flags from decompiled scripts:
0 = normal exit and closes door.
1 = normal exit and closes door.
16 = teleports outside, door kept closed.
64 = normal exit and closes door, maybe a bit slower animation than 0.
256 = normal exit but does not close the door.
4160 = ped is throwing himself out, even when the vehicle is still.
262144 = ped moves to passenger seat first, then exits normally

Others to be tried out: 320, 512, 131072.
--]]
function TASK.TASK_LEAVE_VEHICLE(ped, vehicle, flags)
  native.invoke(
    Type.Void, 5368, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, flags)
  )
end

-- void TASK_GET_OFF_BOAT(Ped ped, Vehicle boat) // 0x9C00E77AF14B2DFF
function TASK.TASK_GET_OFF_BOAT(ped, boat)
  native.invoke(
    Type.Void, 5369, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, boat)
  )
end

-- void TASK_SKY_DIVE(Ped ped, BOOL instant) // 0x601736CFE536B0A0
function TASK.TASK_SKY_DIVE(ped, instant)
  native.invoke(
    Type.Void, 5370, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, instant)
  )
end

-- void TASK_PARACHUTE(Ped ped, BOOL giveParachuteItem, BOOL instant) // 0xD2F1C53C97EE81AB
--[[
Second parameter is unused.

second parameter was for jetpack in the early stages of gta and the hard coded code is now removed
--]]
function TASK.TASK_PARACHUTE(ped, giveParachuteItem, instant)
  native.invoke(
    Type.Void, 5371, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, giveParachuteItem),
    arg(Type.Bool, instant)
  )
end

-- void TASK_PARACHUTE_TO_TARGET(Ped ped, float x, float y, float z) // 0xB33E291AFA6BD03A
--[[
makes ped parachute to coords x y z. Works well with PATHFIND::GET_SAFE_COORD_FOR_PED
--]]
function TASK.TASK_PARACHUTE_TO_TARGET(ped, x, y, z)
  native.invoke(
    Type.Void, 5372, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_PARACHUTE_TASK_TARGET(Ped ped, float x, float y, float z) // 0xC313379AF0FCEDA7
function TASK.SET_PARACHUTE_TASK_TARGET(ped, x, y, z)
  native.invoke(
    Type.Void, 5373, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_PARACHUTE_TASK_THRUST(Ped ped, float thrust) // 0x0729BAC1B8C64317
function TASK.SET_PARACHUTE_TASK_THRUST(ped, thrust)
  native.invoke(
    Type.Void, 5374, false,
    arg(Type.Ped, ped),
    arg(Type.Float, thrust)
  )
end

-- void TASK_RAPPEL_FROM_HELI(Ped ped, float minHeightAboveGround) // 0x09693B0312F91649
--[[
minHeightAboveGround: the minimum height above ground the heli must be at before the ped can start rappelling

Only appears twice in the scripts.

TASK::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 10.0f);
TASK::TASK_RAPPEL_FROM_HELI(a_0, 10.0f);
--]]
function TASK.TASK_RAPPEL_FROM_HELI(ped, minHeightAboveGround)
  native.invoke(
    Type.Void, 5375, false,
    arg(Type.Ped, ped),
    arg(Type.Float, minHeightAboveGround)
  )
end

-- void TASK_VEHICLE_DRIVE_TO_COORD(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, Any p6, Hash vehicleModel, int drivingMode, float stopRange, float straightLineDistance) // 0xE2A2AA2F659D77A7
--[[
info about driving modes: https://gtaforums.com/topic/822314-guide-driving-styles/
--]]
function TASK.TASK_VEHICLE_DRIVE_TO_COORD(ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, straightLineDistance)
  native.invoke(
    Type.Void, 5376, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, speed),
    arg(Type.Any, p6),
    arg(Type.Hash, vehicleModel),
    arg(Type.Int, drivingMode),
    arg(Type.Float, stopRange),
    arg(Type.Float, straightLineDistance)
  )
end

-- void TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, int driveMode, float stopRange) // 0x158BB33F920D360C
function TASK.TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(ped, vehicle, x, y, z, speed, driveMode, stopRange)
  native.invoke(
    Type.Void, 5377, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, speed),
    arg(Type.Int, driveMode),
    arg(Type.Float, stopRange)
  )
end

-- void TASK_VEHICLE_DRIVE_WANDER(Ped ped, Vehicle vehicle, float speed, int drivingStyle) // 0x480142959D337D00
function TASK.TASK_VEHICLE_DRIVE_WANDER(ped, vehicle, speed, drivingStyle)
  native.invoke(
    Type.Void, 5378, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, speed),
    arg(Type.Int, drivingStyle)
  )
end

-- void TASK_FOLLOW_TO_OFFSET_OF_ENTITY(Ped ped, Entity entity, float offsetX, float offsetY, float offsetZ, float movementSpeed, int timeout, float stoppingRange, BOOL persistFollowing) // 0x304AE42E357B8C7E
--[[
p6 always -1
p7 always 10.0
p8 always 1
--]]
function TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(ped, entity, offsetX, offsetY, offsetZ, movementSpeed, timeout, stoppingRange, persistFollowing)
  native.invoke(
    Type.Void, 5379, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Float, movementSpeed),
    arg(Type.Int, timeout),
    arg(Type.Float, stoppingRange),
    arg(Type.Bool, persistFollowing)
  )
end

-- void TASK_GO_STRAIGHT_TO_COORD(Ped ped, float x, float y, float z, float speed, int timeout, float targetHeading, float distanceToSlide) // 0xD76B57B44F1E6F8B
function TASK.TASK_GO_STRAIGHT_TO_COORD(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide)
  native.invoke(
    Type.Void, 5380, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, speed),
    arg(Type.Int, timeout),
    arg(Type.Float, targetHeading),
    arg(Type.Float, distanceToSlide)
  )
end

-- void TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY(Ped ped, Entity entity, float x, float y, float z, float moveBlendRatio, int time) // 0x61E360B7E040D12E
function TASK.TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY(ped, entity, x, y, z, moveBlendRatio, time)
  native.invoke(
    Type.Void, 5381, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Int, time)
  )
end

-- void TASK_ACHIEVE_HEADING(Ped ped, float heading, int timeout) // 0x93B93A37987F1F3D
--[[
Makes the specified ped achieve the specified heading.

pedHandle: The handle of the ped to assign the task to.
heading: The desired heading.
timeout: The time, in milliseconds, to allow the task to complete. If the task times out, it is cancelled, and the ped will stay at the heading it managed to reach in the time.
--]]
function TASK.TASK_ACHIEVE_HEADING(ped, heading, timeout)
  native.invoke(
    Type.Void, 5382, false,
    arg(Type.Ped, ped),
    arg(Type.Float, heading),
    arg(Type.Int, timeout)
  )
end

-- void TASK_FLUSH_ROUTE() // 0x841142A1376E9006
--[[
MulleKD19: Clears the current point route. Call this before TASK_EXTEND_ROUTE and TASK_FOLLOW_POINT_ROUTE.
--]]
function TASK.TASK_FLUSH_ROUTE()
  native.invoke(
    Type.Void, 5383, false
  )
end

-- void TASK_EXTEND_ROUTE(float x, float y, float z) // 0x1E7889778264843A
--[[
MulleKD19: Adds a new point to the current point route. Call TASK_FLUSH_ROUTE before the first call to this. Call TASK_FOLLOW_POINT_ROUTE to make the Ped go the route.

A maximum of 8 points can be added.
--]]
function TASK.TASK_EXTEND_ROUTE(x, y, z)
  native.invoke(
    Type.Void, 5384, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void TASK_FOLLOW_POINT_ROUTE(Ped ped, float speed, int mode) // 0x595583281858626E
--[[
MulleKD19: Makes the ped go on the created point route.

ped: The ped to give the task to.
speed: The speed to move at in m/s.
int: Unknown. Can be 0, 1, 2 or 3.

Example:
TASK_FLUSH_ROUTE();
TASK_EXTEND_ROUTE(0f, 0f, 70f);
TASK_EXTEND_ROUTE(10f, 0f, 70f);
TASK_EXTEND_ROUTE(10f, 10f, 70f);
TASK_FOLLOW_POINT_ROUTE(GET_PLAYER_PED(), 1f, 0);
--]]
function TASK.TASK_FOLLOW_POINT_ROUTE(ped, speed, mode)
  native.invoke(
    Type.Void, 5385, false,
    arg(Type.Ped, ped),
    arg(Type.Float, speed),
    arg(Type.Int, mode)
  )
end

-- void TASK_GO_TO_ENTITY(Entity entity, Entity target, int duration, float distance, float moveBlendRatio, float slowDownDistance, int flags) // 0x6A071245EB0D1882
--[[
The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0

Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.

Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)

Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).

enum EGOTO_ENTITY_SCRIPT_FLAGS
{
	EGOTO_ENTITY_NEVER_SLOW_FOR_PATH_LENGTH = 0x01,
};
--]]
function TASK.TASK_GO_TO_ENTITY(entity, target, duration, distance, moveBlendRatio, slowDownDistance, flags)
  native.invoke(
    Type.Void, 5386, false,
    arg(Type.Entity, entity),
    arg(Type.Entity, target),
    arg(Type.Int, duration),
    arg(Type.Float, distance),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Float, slowDownDistance),
    arg(Type.Int, flags)
  )
end

-- void TASK_SMART_FLEE_COORD(Ped ped, float x, float y, float z, float distance, int time, BOOL preferPavements, BOOL quitIfOutOfRange) // 0x94587F17E9C365D5
--[[
Makes the specified ped flee the specified distance from the specified position.
--]]
function TASK.TASK_SMART_FLEE_COORD(ped, x, y, z, distance, time, preferPavements, quitIfOutOfRange)
  native.invoke(
    Type.Void, 5387, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, distance),
    arg(Type.Int, time),
    arg(Type.Bool, preferPavements),
    arg(Type.Bool, quitIfOutOfRange)
  )
end

-- void TASK_SMART_FLEE_PED(Ped ped, Ped fleeTarget, float safeDistance, int fleeTime, BOOL preferPavements, BOOL updateToNearestHatedPed) // 0x22B0D0E37CCB840D
--[[
Makes a ped run away from another ped (fleeTarget).

distance = ped will flee this distance.
fleeTime = ped will flee for this amount of time, set to "-1" to flee forever
--]]
function TASK.TASK_SMART_FLEE_PED(ped, fleeTarget, safeDistance, fleeTime, preferPavements, updateToNearestHatedPed)
  native.invoke(
    Type.Void, 5388, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, fleeTarget),
    arg(Type.Float, safeDistance),
    arg(Type.Int, fleeTime),
    arg(Type.Bool, preferPavements),
    arg(Type.Bool, updateToNearestHatedPed)
  )
end

-- void TASK_REACT_AND_FLEE_PED(Ped ped, Ped fleeTarget) // 0x72C896464915D1B1
function TASK.TASK_REACT_AND_FLEE_PED(ped, fleeTarget)
  native.invoke(
    Type.Void, 5389, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, fleeTarget)
  )
end

-- void TASK_SHOCKING_EVENT_REACT(Ped ped, int eventHandle) // 0x452419CBD838065B
function TASK.TASK_SHOCKING_EVENT_REACT(ped, eventHandle)
  native.invoke(
    Type.Void, 5390, false,
    arg(Type.Ped, ped),
    arg(Type.Int, eventHandle)
  )
end

-- void TASK_WANDER_IN_AREA(Ped ped, float x, float y, float z, float radius, float minimalLength, float timeBetweenWalks) // 0xE054346CA3A0F315
function TASK.TASK_WANDER_IN_AREA(ped, x, y, z, radius, minimalLength, timeBetweenWalks)
  native.invoke(
    Type.Void, 5391, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Float, minimalLength),
    arg(Type.Float, timeBetweenWalks)
  )
end

-- void TASK_WANDER_STANDARD(Ped ped, float heading, int flags) // 0xBB9CE077274F6A1B
--[[
Makes ped walk around the area.

set p1 to 10.0f and p2 to 10 if you want the ped to walk anywhere without a duration.
--]]
function TASK.TASK_WANDER_STANDARD(ped, heading, flags)
  native.invoke(
    Type.Void, 5392, false,
    arg(Type.Ped, ped),
    arg(Type.Float, heading),
    arg(Type.Int, flags)
  )
end

-- void TASK_WANDER_SPECIFIC(Ped ped, const char* conditionalAnimGroupStr, const char* conditionalAnimStr, float heading) // 0x6919A2F136426098
function TASK.TASK_WANDER_SPECIFIC(ped, conditionalAnimGroupStr, conditionalAnimStr, heading)
  native.invoke(
    Type.Void, 5393, false,
    arg(Type.Ped, ped),
    arg(Type.String, conditionalAnimGroupStr),
    arg(Type.String, conditionalAnimStr),
    arg(Type.Float, heading)
  )
end

-- void TASK_VEHICLE_PARK(Ped ped, Vehicle vehicle, float x, float y, float z, float heading, int mode, float radius, BOOL keepEngineOn) // 0x0F3E34E968EA374E
--[[
Modes:
0 - ignore heading
1 - park forward
2 - park backwards

Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.

Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.
--]]
function TASK.TASK_VEHICLE_PARK(ped, vehicle, x, y, z, heading, mode, radius, keepEngineOn)
  native.invoke(
    Type.Void, 5394, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.Int, mode),
    arg(Type.Float, radius),
    arg(Type.Bool, keepEngineOn)
  )
end

-- void TASK_STEALTH_KILL(Ped killer, Ped target, Hash stealthKillActionResultHash, float desiredMoveBlendRatio, int stealthFlags) // 0xAA5DC05579D60BD9
--[[
known "killTypes" are: "AR_stealth_kill_knife" and "AR_stealth_kill_a".
--]]
function TASK.TASK_STEALTH_KILL(killer, target, stealthKillActionResultHash, desiredMoveBlendRatio, stealthFlags)
  native.invoke(
    Type.Void, 5395, false,
    arg(Type.Ped, killer),
    arg(Type.Ped, target),
    arg(Type.Hash, stealthKillActionResultHash),
    arg(Type.Float, desiredMoveBlendRatio),
    arg(Type.Int, stealthFlags)
  )
end

-- void TASK_PLANT_BOMB(Ped ped, float x, float y, float z, float heading) // 0x965FEC691D55E9BF
function TASK.TASK_PLANT_BOMB(ped, x, y, z, heading)
  native.invoke(
    Type.Void, 5396, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading)
  )
end

-- void TASK_FOLLOW_NAV_MESH_TO_COORD(Ped ped, float x, float y, float z, float moveBlendRatio, int time, float targetRadius, int flags, float targetHeading) // 0x15D3A79D4E44B913
--[[
If no timeout, set timeout to -1.
--]]
function TASK.TASK_FOLLOW_NAV_MESH_TO_COORD(ped, x, y, z, moveBlendRatio, time, targetRadius, flags, targetHeading)
  native.invoke(
    Type.Void, 5397, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Int, time),
    arg(Type.Float, targetRadius),
    arg(Type.Int, flags),
    arg(Type.Float, targetHeading)
  )
end

-- void TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED(Ped ped, float x, float y, float z, float moveBlendRatio, int time, float targetRadius, int flags, float slideToCoordHeading, float maxSlopeNavigable, float clampMaxSearchDistance, float targetHeading) // 0x17F58B88D085DBAC
function TASK.TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED(ped, x, y, z, moveBlendRatio, time, targetRadius, flags, slideToCoordHeading, maxSlopeNavigable, clampMaxSearchDistance, targetHeading)
  native.invoke(
    Type.Void, 5398, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Int, time),
    arg(Type.Float, targetRadius),
    arg(Type.Int, flags),
    arg(Type.Float, slideToCoordHeading),
    arg(Type.Float, maxSlopeNavigable),
    arg(Type.Float, clampMaxSearchDistance),
    arg(Type.Float, targetHeading)
  )
end

-- void SET_PED_PATH_CAN_USE_CLIMBOVERS(Ped ped, BOOL Toggle) // 0x8E06A6FE76C9EFF4
function TASK.SET_PED_PATH_CAN_USE_CLIMBOVERS(ped, Toggle)
  native.invoke(
    Type.Void, 5399, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, Toggle)
  )
end

-- void SET_PED_PATH_CAN_USE_LADDERS(Ped ped, BOOL Toggle) // 0x77A5B103C87F476E
function TASK.SET_PED_PATH_CAN_USE_LADDERS(ped, Toggle)
  native.invoke(
    Type.Void, 5400, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, Toggle)
  )
end

-- void SET_PED_PATH_CAN_DROP_FROM_HEIGHT(Ped ped, BOOL Toggle) // 0xE361C5C71C431A4F
function TASK.SET_PED_PATH_CAN_DROP_FROM_HEIGHT(ped, Toggle)
  native.invoke(
    Type.Void, 5401, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, Toggle)
  )
end

-- void SET_PED_PATH_CLIMB_COST_MODIFIER(Ped ped, float modifier) // 0x88E32DB8C1A4AA4B
--[[
Default modifier is 1.0, minimum is 0.0 and maximum is 10.0.
--]]
function TASK.SET_PED_PATH_CLIMB_COST_MODIFIER(ped, modifier)
  native.invoke(
    Type.Void, 5402, false,
    arg(Type.Ped, ped),
    arg(Type.Float, modifier)
  )
end

-- void SET_PED_PATH_MAY_ENTER_WATER(Ped ped, BOOL mayEnterWater) // 0xF35425A4204367EC
function TASK.SET_PED_PATH_MAY_ENTER_WATER(ped, mayEnterWater)
  native.invoke(
    Type.Void, 5403, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, mayEnterWater)
  )
end

-- void SET_PED_PATH_PREFER_TO_AVOID_WATER(Ped ped, BOOL avoidWater) // 0x38FE1EC73743793C
function TASK.SET_PED_PATH_PREFER_TO_AVOID_WATER(ped, avoidWater)
  native.invoke(
    Type.Void, 5404, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, avoidWater)
  )
end

-- void SET_PED_PATH_AVOID_FIRE(Ped ped, BOOL avoidFire) // 0x4455517B28441E60
function TASK.SET_PED_PATH_AVOID_FIRE(ped, avoidFire)
  native.invoke(
    Type.Void, 5405, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, avoidFire)
  )
end

-- void SET_GLOBAL_MIN_BIRD_FLIGHT_HEIGHT(float height) // 0x6C6B148586F934F7
--[[
Needs to be looped! And yes, it does work and is not a hash collision.
Birds will try to reach the given height.
--]]
function TASK.SET_GLOBAL_MIN_BIRD_FLIGHT_HEIGHT(height)
  native.invoke(
    Type.Void, 5406, false,
    arg(Type.Float, height)
  )
end

-- int GET_NAVMESH_ROUTE_DISTANCE_REMAINING(Ped ped, float* distanceRemaining, BOOL* isPathReady) // 0xC6F5C0BCDC74D62D
--[[
Looks like the last parameter returns true if the path has been calculated, while the first returns the remaining distance to the end of the path.
Return value of native is the same as GET_NAVMESH_ROUTE_RESULT
Looks like the native returns an int for the path's state:
1 - ???
2 - ???
3 - Finished Generating 
--]]
function TASK.GET_NAVMESH_ROUTE_DISTANCE_REMAINING(ped, distanceRemaining, isPathReady)
  return native.invoke(
    Type.Int, 5407, false,
    arg(Type.Ped, ped),
    ref(Type.Float, distanceRemaining),
    ref(Type.Bool, isPathReady)
  )
end

-- int GET_NAVMESH_ROUTE_RESULT(Ped ped) // 0x632E831F382A0FA8
--[[
See GET_NAVMESH_ROUTE_DISTANCE_REMAINING for more details.
--]]
function TASK.GET_NAVMESH_ROUTE_RESULT(ped)
  return native.invoke(
    Type.Int, 5408, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_CONTROLLED_VEHICLE_UNABLE_TO_GET_TO_ROAD(Ped ped) // 0x3E38E28A1D80DDF6
function TASK.IS_CONTROLLED_VEHICLE_UNABLE_TO_GET_TO_ROAD(ped)
  return native.invoke(
    Type.Bool, 5409, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_GO_TO_COORD_ANY_MEANS(Ped ped, float x, float y, float z, float moveBlendRatio, Vehicle vehicle, BOOL useLongRangeVehiclePathing, int drivingFlags, float maxRangeToShootTargets) // 0x5BC448CB78FA3E88
--[[
example from fm_mission_controller

TASK::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
 
--]]
function TASK.TASK_GO_TO_COORD_ANY_MEANS(ped, x, y, z, moveBlendRatio, vehicle, useLongRangeVehiclePathing, drivingFlags, maxRangeToShootTargets)
  native.invoke(
    Type.Void, 5410, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, useLongRangeVehiclePathing),
    arg(Type.Int, drivingFlags),
    arg(Type.Float, maxRangeToShootTargets)
  )
end

-- void TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS(Ped ped, float x, float y, float z, float moveBlendRatio, Vehicle vehicle, BOOL useLongRangeVehiclePathing, int drivingFlags, float maxRangeToShootTargets, float extraVehToTargetDistToPreferVehicle, float driveStraightLineDistance, int extraFlags, float warpTimerMS) // 0x1DD45F9ECFDB1BC9
function TASK.TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS(ped, x, y, z, moveBlendRatio, vehicle, useLongRangeVehiclePathing, drivingFlags, maxRangeToShootTargets, extraVehToTargetDistToPreferVehicle, driveStraightLineDistance, extraFlags, warpTimerMS)
  native.invoke(
    Type.Void, 5411, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, useLongRangeVehiclePathing),
    arg(Type.Int, drivingFlags),
    arg(Type.Float, maxRangeToShootTargets),
    arg(Type.Float, extraVehToTargetDistToPreferVehicle),
    arg(Type.Float, driveStraightLineDistance),
    arg(Type.Int, extraFlags),
    arg(Type.Float, warpTimerMS)
  )
end

-- void TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED(Ped ped, float x, float y, float z, float moveBlendRatio, Vehicle vehicle, BOOL useLongRangeVehiclePathing, int drivingFlags, float maxRangeToShootTargets, float extraVehToTargetDistToPreferVehicle, float driveStraightLineDistance, int extraFlags, float cruiseSpeed, float targetArriveDist) // 0xB8ECD61F531A7B02
function TASK.TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED(ped, x, y, z, moveBlendRatio, vehicle, useLongRangeVehiclePathing, drivingFlags, maxRangeToShootTargets, extraVehToTargetDistToPreferVehicle, driveStraightLineDistance, extraFlags, cruiseSpeed, targetArriveDist)
  native.invoke(
    Type.Void, 5412, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, useLongRangeVehiclePathing),
    arg(Type.Int, drivingFlags),
    arg(Type.Float, maxRangeToShootTargets),
    arg(Type.Float, extraVehToTargetDistToPreferVehicle),
    arg(Type.Float, driveStraightLineDistance),
    arg(Type.Int, extraFlags),
    arg(Type.Float, cruiseSpeed),
    arg(Type.Float, targetArriveDist)
  )
end

-- void TASK_PLAY_ANIM(Ped ped, const char* animDictionary, const char* animationName, float blendInSpeed, float blendOutSpeed, int duration, int flag, float playbackRate, BOOL lockX, BOOL lockY, BOOL lockZ) // 0xEA47FE3719165B94
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

float speed > normal speed is 8.0f
----------------------

float speedMultiplier > multiply the playback speed
----------------------

int duration: time in millisecond
----------------------
-1 _ _ _ _ _ _ _> Default (see flag)
0 _ _ _ _ _ _ _ > Not play at all
Small value _ _ > Slow down animation speed
Other _ _ _ _ _ > freeze player control until specific time (ms) has 
_ _ _ _ _ _ _ _ _ passed. (No effect if flag is set to be 
_ _ _ _ _ _ _ _ _ controllable.)

int flag:
----------------------
enum eAnimationFlags
{
 ANIM_FLAG_NORMAL = 0,
   ANIM_FLAG_REPEAT = 1,
   ANIM_FLAG_STOP_LAST_FRAME = 2,
   ANIM_FLAG_UPPERBODY = 16,
   ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,
   ANIM_FLAG_CANCELABLE = 120,
};
Odd number : loop infinitely
Even number : Freeze at last frame
Multiple of 4: Freeze at last frame but controllable

01 to 15 > Full body
10 to 31 > Upper body
32 to 47 > Full body > Controllable
48 to 63 > Upper body > Controllable
...
001 to 255 > Normal
256 to 511 > Garbled
...

playbackRate:

values are between 0.0 and 1.0


lockX:  

0 in most cases 1 for rcmepsilonism8 and rcmpaparazzo_3
> 1 for mini@sprunk
 

lockY:

0 in most cases 
1 for missfam5_yoga, missfra1mcs_2_crew_react


lockZ: 

    0 for single player 
    Can be 1 but only for MP 
--]]
function TASK.TASK_PLAY_ANIM(ped, animDictionary, animationName, blendInSpeed, blendOutSpeed, duration, flag, playbackRate, lockX, lockY, lockZ)
  native.invoke(
    Type.Void, 5413, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDictionary),
    arg(Type.String, animationName),
    arg(Type.Float, blendInSpeed),
    arg(Type.Float, blendOutSpeed),
    arg(Type.Int, duration),
    arg(Type.Int, flag),
    arg(Type.Float, playbackRate),
    arg(Type.Bool, lockX),
    arg(Type.Bool, lockY),
    arg(Type.Bool, lockZ)
  )
end

-- void TASK_PLAY_ANIM_ADVANCED(Ped ped, const char* animDict, const char* animName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float animEnterSpeed, float animExitSpeed, int duration, Any flag, float animTime, int rotOrder, int ikFlags) // 0x83CDB10EA29B370B
--[[
It's similar to TASK_PLAY_ANIM, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function TASK.TASK_PLAY_ANIM_ADVANCED(ped, animDict, animName, posX, posY, posZ, rotX, rotY, rotZ, animEnterSpeed, animExitSpeed, duration, flag, animTime, rotOrder, ikFlags)
  native.invoke(
    Type.Void, 5414, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict),
    arg(Type.String, animName),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, animEnterSpeed),
    arg(Type.Float, animExitSpeed),
    arg(Type.Int, duration),
    arg(Type.Any, flag),
    arg(Type.Float, animTime),
    arg(Type.Int, rotOrder),
    arg(Type.Int, ikFlags)
  )
end

-- void STOP_ANIM_TASK(Entity entity, const char* animDictionary, const char* animationName, float blendDelta) // 0x97FF36A1D40EA00A
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function TASK.STOP_ANIM_TASK(entity, animDictionary, animationName, blendDelta)
  native.invoke(
    Type.Void, 5415, false,
    arg(Type.Entity, entity),
    arg(Type.String, animDictionary),
    arg(Type.String, animationName),
    arg(Type.Float, blendDelta)
  )
end

-- void TASK_SCRIPTED_ANIMATION(Ped ped, int* priorityLowData, int* priorityMidData, int* priorityHighData, float blendInDelta, float blendOutDelta) // 0x126EF75F1E17ABE5
--[[
From fm_mission_controller.c:
reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1);
           vVar28 = {0.094f, 0.02f, -0.005f};
            vVar29 = {-92.24f, 63.64f, 150.24f};
          func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1);
         set_entity_lod_dist(net_to_ent(uVar30), 500);
         attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1);
           Var31.imm_4 = 1065353216;
         Var31.imm_5 = 1065353216;
         Var31.imm_9 = 1065353216;
         Var31.imm_10 = 1065353216;
            Var31.imm_14 = 1065353216;
            Var31.imm_15 = 1065353216;
            Var31.imm_17 = 1040187392;
            Var31.imm_18 = 1040187392;
            Var31.imm_19 = -1;
            Var32.imm_4 = 1065353216;
         Var32.imm_5 = 1065353216;
         Var32.imm_9 = 1065353216;
         Var32.imm_10 = 1065353216;
            Var32.imm_14 = 1065353216;
            Var32.imm_15 = 1065353216;
            Var32.imm_17 = 1040187392;
            Var32.imm_18 = 1040187392;
            Var32.imm_19 = -1;
            Var31 = 1;
            Var31.imm_1 = "weapons@misc@jerrycan@mp_male";
          Var31.imm_2 = "idle";
           Var31.imm_20 = 1048633;
           Var31.imm_4 = 0.5f;
           Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R");
          task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f);
          set_model_as_no_longer_needed(joaat("prop_ld_case_01"));
            remove_anim_dict("anim@heists@biolab@");
--]]
function TASK.TASK_SCRIPTED_ANIMATION(ped, priorityLowData, priorityMidData, priorityHighData, blendInDelta, blendOutDelta)
  native.invoke(
    Type.Void, 5416, false,
    arg(Type.Ped, ped),
    ref(Type.Int, priorityLowData),
    ref(Type.Int, priorityMidData),
    ref(Type.Int, priorityHighData),
    arg(Type.Float, blendInDelta),
    arg(Type.Float, blendOutDelta)
  )
end

-- void PLAY_ENTITY_SCRIPTED_ANIM(Entity entity, int* priorityLowData, int* priorityMidData, int* priorityHighData, float blendInDelta, float blendOutDelta) // 0x77A1EEC547E7FCF1
function TASK.PLAY_ENTITY_SCRIPTED_ANIM(entity, priorityLowData, priorityMidData, priorityHighData, blendInDelta, blendOutDelta)
  native.invoke(
    Type.Void, 5417, false,
    arg(Type.Entity, entity),
    ref(Type.Int, priorityLowData),
    ref(Type.Int, priorityMidData),
    ref(Type.Int, priorityHighData),
    arg(Type.Float, blendInDelta),
    arg(Type.Float, blendOutDelta)
  )
end

-- void STOP_ANIM_PLAYBACK(Entity entity, int priority, BOOL secondary) // 0xEE08C992D238C5D1
--[[
Looks like p1 may be a flag, still need to do some research, though.
--]]
function TASK.STOP_ANIM_PLAYBACK(entity, priority, secondary)
  native.invoke(
    Type.Void, 5418, false,
    arg(Type.Entity, entity),
    arg(Type.Int, priority),
    arg(Type.Bool, secondary)
  )
end

-- void SET_ANIM_WEIGHT(Entity entity, float weight, int priority, int index, BOOL secondary) // 0x207F1A47C0342F48
function TASK.SET_ANIM_WEIGHT(entity, weight, priority, index, secondary)
  native.invoke(
    Type.Void, 5419, false,
    arg(Type.Entity, entity),
    arg(Type.Float, weight),
    arg(Type.Int, priority),
    arg(Type.Int, index),
    arg(Type.Bool, secondary)
  )
end

-- void SET_ANIM_PHASE(Entity entity, float phase, int priority, BOOL secondary) // 0xDDF3CB5A0A4C0B49
function TASK.SET_ANIM_PHASE(entity, phase, priority, secondary)
  native.invoke(
    Type.Void, 5420, false,
    arg(Type.Entity, entity),
    arg(Type.Float, phase),
    arg(Type.Int, priority),
    arg(Type.Bool, secondary)
  )
end

-- void SET_ANIM_RATE(Entity entity, float rate, int priority, BOOL secondary) // 0x032D49C5E359C847
function TASK.SET_ANIM_RATE(entity, rate, priority, secondary)
  native.invoke(
    Type.Void, 5421, false,
    arg(Type.Entity, entity),
    arg(Type.Float, rate),
    arg(Type.Int, priority),
    arg(Type.Bool, secondary)
  )
end

-- void SET_ANIM_LOOPED(Entity entity, BOOL looped, int priority, BOOL secondary) // 0x70033C3CC29A1FF4
function TASK.SET_ANIM_LOOPED(entity, looped, priority, secondary)
  native.invoke(
    Type.Void, 5422, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, looped),
    arg(Type.Int, priority),
    arg(Type.Bool, secondary)
  )
end

-- void TASK_PLAY_PHONE_GESTURE_ANIMATION(Ped ped, const char* animDict, const char* animation, const char* boneMaskType, float blendInDuration, float blendOutDuration, BOOL isLooping, BOOL holdLastFrame) // 0x8FBB6758B3B3E9EC
--[[
Example from the scripts:
TASK::TASK_PLAY_PHONE_GESTURE_ANIMATION(PLAYER::PLAYER_PED_ID(), v_3, v_2, v_4, 0.25, 0.25, 0, 0);

=========================================================
^^ No offense, but Idk how that would really help anyone.

As for the animDict & animation, they're both store in a global in all 5 scripts. So if anyone would be so kind as to read that global and comment what strings they use. Thanks.

Known boneMaskTypes'
"BONEMASK_HEADONLY"
"BONEMASK_HEAD_NECK_AND_ARMS"
"BONEMASK_HEAD_NECK_AND_L_ARM"
"BONEMASK_HEAD_NECK_AND_R_ARM"

p4 known args - 0.0f, 0.5f, 0.25f
p5 known args - 0.0f, 0.25f
p6 known args - 1 if a global if check is passed.
p7 known args - 1 if a global if check is passed.

The values found above, I found within the 5 scripts this is ever called in. (fmmc_launcher, fm_deathmatch_controller, fm_impromptu_dm_controller, fm_mission_controller, and freemode).
=========================================================

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function TASK.TASK_PLAY_PHONE_GESTURE_ANIMATION(ped, animDict, animation, boneMaskType, blendInDuration, blendOutDuration, isLooping, holdLastFrame)
  native.invoke(
    Type.Void, 5423, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict),
    arg(Type.String, animation),
    arg(Type.String, boneMaskType),
    arg(Type.Float, blendInDuration),
    arg(Type.Float, blendOutDuration),
    arg(Type.Bool, isLooping),
    arg(Type.Bool, holdLastFrame)
  )
end

-- void TASK_STOP_PHONE_GESTURE_ANIMATION(Ped ped, float blendOutOverride) // 0x3FA00D4F4641BFAE
function TASK.TASK_STOP_PHONE_GESTURE_ANIMATION(ped, blendOutOverride)
  native.invoke(
    Type.Void, 5424, false,
    arg(Type.Ped, ped),
    arg(Type.Float, blendOutOverride)
  )
end

-- BOOL IS_PLAYING_PHONE_GESTURE_ANIM(Ped ped) // 0xB8EBB1E9D3588C10
function TASK.IS_PLAYING_PHONE_GESTURE_ANIM(ped)
  return native.invoke(
    Type.Bool, 5425, false,
    arg(Type.Ped, ped)
  )
end

-- float GET_PHONE_GESTURE_ANIM_CURRENT_TIME(Ped ped) // 0x47619ABE8B268C60
function TASK.GET_PHONE_GESTURE_ANIM_CURRENT_TIME(ped)
  return native.invoke(
    Type.Float, 5426, false,
    arg(Type.Ped, ped)
  )
end

-- float GET_PHONE_GESTURE_ANIM_TOTAL_TIME(Ped ped) // 0x1EE0F68A7C25DEC6
function TASK.GET_PHONE_GESTURE_ANIM_TOTAL_TIME(ped)
  return native.invoke(
    Type.Float, 5427, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_VEHICLE_PLAY_ANIM(Vehicle vehicle, const char* animationSet, const char* animationName) // 0x69F5C3BD0F3EBD89
--[[
Most probably plays a specific animation on vehicle. For example getting chop out of van etc...

Here's how its used - 

TASK::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");

TASK::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");

FYI : Speedo is the name of van in which chop was put in the mission.
--]]
function TASK.TASK_VEHICLE_PLAY_ANIM(vehicle, animationSet, animationName)
  native.invoke(
    Type.Void, 5428, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.String, animationSet),
    arg(Type.String, animationName)
  )
end

-- void TASK_LOOK_AT_COORD(Entity entity, float x, float y, float z, int duration, int flags, int priority) // 0x6FA46612594F7973
--[[
enum eScriptLookatFlags
{
	SLF_SLOW_TURN_RATE            = 1,    // turn the head toward the target slowly
	SLF_FAST_TURN_RATE            = 2,    // turn the head toward the target quickly
	SLF_EXTEND_YAW_LIMIT        = 4,    // wide yaw head limits
	SLF_EXTEND_PITCH_LIMIT        = 8,    // wide pitch head limit
	SLF_WIDEST_YAW_LIMIT        = 16,   // widest yaw head limit
	SLF_WIDEST_PITCH_LIMIT        = 32,   // widest pitch head limit
	SLF_NARROW_YAW_LIMIT        = 64,   // narrow yaw head limits
	SLF_NARROW_PITCH_LIMIT        = 128,  // narrow pitch head limit
	SLF_NARROWEST_YAW_LIMIT        = 256,  // narrowest yaw head limit
	SLF_NARROWEST_PITCH_LIMIT    = 512,  // narrowest pitch head limit
	SLF_USE_TORSO                = 1024, // use the torso aswell as the neck and head (currently disabled)
	SLF_WHILE_NOT_IN_FOV        = 2048, // keep tracking the target even if they are not in the hard coded FOV
	SLF_USE_CAMERA_FOCUS        = 4096, // use the camera as the target
	SLF_USE_EYES_ONLY            = 8192, // only track the target with the eyes  
	SLF_USE_LOOK_DIR            = 16384, // use information in look dir DOF
	SLF_FROM_SCRIPT                = 32768, // internal use only
	SLF_USE_REF_DIR_ABSOLUTE    = 65536  // use absolute reference direction mode for solver
};
--]]
function TASK.TASK_LOOK_AT_COORD(entity, x, y, z, duration, flags, priority)
  native.invoke(
    Type.Void, 5429, false,
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, duration),
    arg(Type.Int, flags),
    arg(Type.Int, priority)
  )
end

-- void TASK_LOOK_AT_ENTITY(Ped ped, Entity lookAt, int duration, int flags, int priority) // 0x69F4BE8C8CC4796C
--[[
For flags, please refer to TASK_LOOK_AT_COORD.
--]]
function TASK.TASK_LOOK_AT_ENTITY(ped, lookAt, duration, flags, priority)
  native.invoke(
    Type.Void, 5430, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, lookAt),
    arg(Type.Int, duration),
    arg(Type.Int, flags),
    arg(Type.Int, priority)
  )
end

-- void TASK_CLEAR_LOOK_AT(Ped ped) // 0x0F804F1DB19B9689
function TASK.TASK_CLEAR_LOOK_AT(ped)
  native.invoke(
    Type.Void, 5431, false,
    arg(Type.Ped, ped)
  )
end

-- void OPEN_SEQUENCE_TASK(int* taskSequenceId) // 0xE8854A4326B9E12B
function TASK.OPEN_SEQUENCE_TASK(taskSequenceId)
  native.invoke(
    Type.Void, 5432, false,
    ref(Type.Int, taskSequenceId)
  )
end

-- void CLOSE_SEQUENCE_TASK(int taskSequenceId) // 0x39E72BC99E6360CB
function TASK.CLOSE_SEQUENCE_TASK(taskSequenceId)
  native.invoke(
    Type.Void, 5433, false,
    arg(Type.Int, taskSequenceId)
  )
end

-- void TASK_PERFORM_SEQUENCE(Ped ped, int taskSequenceId) // 0x5ABA3986D90D8A3B
function TASK.TASK_PERFORM_SEQUENCE(ped, taskSequenceId)
  native.invoke(
    Type.Void, 5434, false,
    arg(Type.Ped, ped),
    arg(Type.Int, taskSequenceId)
  )
end

-- void TASK_PERFORM_SEQUENCE_LOCALLY(Ped ped, int taskSequenceId) // 0x8C33220C8D78CA0D
function TASK.TASK_PERFORM_SEQUENCE_LOCALLY(ped, taskSequenceId)
  native.invoke(
    Type.Void, 5435, false,
    arg(Type.Ped, ped),
    arg(Type.Int, taskSequenceId)
  )
end

-- void CLEAR_SEQUENCE_TASK(int* taskSequenceId) // 0x3841422E9C488D8C
function TASK.CLEAR_SEQUENCE_TASK(taskSequenceId)
  native.invoke(
    Type.Void, 5436, false,
    ref(Type.Int, taskSequenceId)
  )
end

-- void SET_SEQUENCE_TO_REPEAT(int taskSequenceId, BOOL repeat) // 0x58C70CF3A41E4AE7
function TASK.SET_SEQUENCE_TO_REPEAT(taskSequenceId, repeat_)
  native.invoke(
    Type.Void, 5437, false,
    arg(Type.Int, taskSequenceId),
    arg(Type.Bool, repeat_)
  )
end

-- int GET_SEQUENCE_PROGRESS(Ped ped) // 0x00A9010CFE1E3533
--[[
returned values:
0 to 7 = task that's currently in progress, 0 meaning the first one.
-1 no task sequence in progress.
--]]
function TASK.GET_SEQUENCE_PROGRESS(ped)
  return native.invoke(
    Type.Int, 5438, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL GET_IS_TASK_ACTIVE(Ped ped, int taskIndex) // 0xB0760331C7AA4155
--[[
Task index enum: https://alloc8or.re/gta5/doc/enums/eTaskTypeIndex.txt
--]]
function TASK.GET_IS_TASK_ACTIVE(ped, taskIndex)
  return native.invoke(
    Type.Bool, 5439, false,
    arg(Type.Ped, ped),
    arg(Type.Int, taskIndex)
  )
end

-- int GET_SCRIPT_TASK_STATUS(Ped ped, Hash taskHash) // 0x77F1BEB8863288D5
--[[
Gets the status of a script-assigned task.
taskHash: https://alloc8or.re/gta5/doc/enums/eScriptTaskHash.txt
--]]
function TASK.GET_SCRIPT_TASK_STATUS(ped, taskHash)
  return native.invoke(
    Type.Int, 5440, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, taskHash)
  )
end

-- int GET_ACTIVE_VEHICLE_MISSION_TYPE(Vehicle vehicle) // 0x534AEBA6E5ED4CAB
--[[
https://alloc8or.re/gta5/doc/enums/eVehicleMissionType.txt
--]]
function TASK.GET_ACTIVE_VEHICLE_MISSION_TYPE(vehicle)
  return native.invoke(
    Type.Int, 5441, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void TASK_LEAVE_ANY_VEHICLE(Ped ped, int delayTime, int flags) // 0x504D54DF3F6F2247
--[[
Flags are the same flags used in TASK_LEAVE_VEHICLE
--]]
function TASK.TASK_LEAVE_ANY_VEHICLE(ped, delayTime, flags)
  native.invoke(
    Type.Void, 5442, false,
    arg(Type.Ped, ped),
    arg(Type.Int, delayTime),
    arg(Type.Int, flags)
  )
end

-- void TASK_AIM_GUN_SCRIPTED(Ped ped, Hash scriptTask, BOOL disableBlockingClip, BOOL instantBlendToAim) // 0x7A192BE16D373D00
function TASK.TASK_AIM_GUN_SCRIPTED(ped, scriptTask, disableBlockingClip, instantBlendToAim)
  native.invoke(
    Type.Void, 5443, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, scriptTask),
    arg(Type.Bool, disableBlockingClip),
    arg(Type.Bool, instantBlendToAim)
  )
end

-- void TASK_AIM_GUN_SCRIPTED_WITH_TARGET(Ped ped, Ped target, float x, float y, float z, int gunTaskType, BOOL disableBlockingClip, BOOL forceAim) // 0x8605AF0DE8B3A5AC
function TASK.TASK_AIM_GUN_SCRIPTED_WITH_TARGET(ped, target, x, y, z, gunTaskType, disableBlockingClip, forceAim)
  native.invoke(
    Type.Void, 5444, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, gunTaskType),
    arg(Type.Bool, disableBlockingClip),
    arg(Type.Bool, forceAim)
  )
end

-- void UPDATE_TASK_AIM_GUN_SCRIPTED_TARGET(Ped ped, Ped target, float x, float y, float z, BOOL disableBlockingClip) // 0x9724FB59A3E72AD0
function TASK.UPDATE_TASK_AIM_GUN_SCRIPTED_TARGET(ped, target, x, y, z, disableBlockingClip)
  native.invoke(
    Type.Void, 5445, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, disableBlockingClip)
  )
end

-- const char* GET_CLIP_SET_FOR_SCRIPTED_GUN_TASK(int gunTaskType) // 0x3A8CADC7D37AACC5
function TASK.GET_CLIP_SET_FOR_SCRIPTED_GUN_TASK(gunTaskType)
  return native.invoke(
    Type.String, 5446, false,
    arg(Type.Int, gunTaskType)
  )
end

-- void TASK_AIM_GUN_AT_ENTITY(Ped ped, Entity entity, int duration, BOOL instantBlendToAim) // 0x9B53BB6E8943AF53
--[[
duration: the amount of time in milliseconds to do the task.  -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped
--]]
function TASK.TASK_AIM_GUN_AT_ENTITY(ped, entity, duration, instantBlendToAim)
  native.invoke(
    Type.Void, 5447, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity),
    arg(Type.Int, duration),
    arg(Type.Bool, instantBlendToAim)
  )
end

-- void TASK_TURN_PED_TO_FACE_ENTITY(Ped ped, Entity entity, int duration) // 0x5AD23D40115353AC
--[[
duration: the amount of time in milliseconds to do the task. -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped
--]]
function TASK.TASK_TURN_PED_TO_FACE_ENTITY(ped, entity, duration)
  native.invoke(
    Type.Void, 5448, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity),
    arg(Type.Int, duration)
  )
end

-- void TASK_AIM_GUN_AT_COORD(Ped ped, float x, float y, float z, int time, BOOL instantBlendToAim, BOOL playAnimIntro) // 0x6671F3EEC681BDA1
function TASK.TASK_AIM_GUN_AT_COORD(ped, x, y, z, time, instantBlendToAim, playAnimIntro)
  native.invoke(
    Type.Void, 5449, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, time),
    arg(Type.Bool, instantBlendToAim),
    arg(Type.Bool, playAnimIntro)
  )
end

-- void TASK_SHOOT_AT_COORD(Ped ped, float x, float y, float z, int duration, Hash firingPattern) // 0x46A6CC01E0826106
--[[
Firing Pattern Hash Information: https://pastebin.com/Px036isB
--]]
function TASK.TASK_SHOOT_AT_COORD(ped, x, y, z, duration, firingPattern)
  native.invoke(
    Type.Void, 5450, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, duration),
    arg(Type.Hash, firingPattern)
  )
end

-- void TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT(Ped ped, Vehicle vehicle, BOOL useAlternateShuffle) // 0x7AA80209BDA643EB
--[[
Makes the specified ped shuffle to the next vehicle seat.
The ped MUST be in a vehicle and the vehicle parameter MUST be the ped's current vehicle.
--]]
function TASK.TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT(ped, vehicle, useAlternateShuffle)
  native.invoke(
    Type.Void, 5451, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, useAlternateShuffle)
  )
end

-- void CLEAR_PED_TASKS(Ped ped) // 0xE1EF3C1216AFF2CD
function TASK.CLEAR_PED_TASKS(ped)
  native.invoke(
    Type.Void, 5452, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_PED_SECONDARY_TASK(Ped ped) // 0x176CECF6F920D707
function TASK.CLEAR_PED_SECONDARY_TASK(ped)
  native.invoke(
    Type.Void, 5453, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_EVERYONE_LEAVE_VEHICLE(Vehicle vehicle) // 0x7F93691AB4B92272
function TASK.TASK_EVERYONE_LEAVE_VEHICLE(vehicle)
  native.invoke(
    Type.Void, 5454, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void TASK_GOTO_ENTITY_OFFSET(Ped ped, Entity entity, int time, float seekRadius, float seekAngleDeg, float moveBlendRatio, int gotoEntityOffsetFlags) // 0xE39B4FF4FDEBDE27
--[[
enum ESEEK_ENTITY_OFFSET_FLAGS
{
	ESEEK_OFFSET_ORIENTATES_WITH_ENTITY = 0x01,
	ESEEK_KEEP_TO_PAVEMENTS = 0x02
};
--]]
function TASK.TASK_GOTO_ENTITY_OFFSET(ped, entity, time, seekRadius, seekAngleDeg, moveBlendRatio, gotoEntityOffsetFlags)
  native.invoke(
    Type.Void, 5455, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity),
    arg(Type.Int, time),
    arg(Type.Float, seekRadius),
    arg(Type.Float, seekAngleDeg),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Int, gotoEntityOffsetFlags)
  )
end

-- void TASK_GOTO_ENTITY_OFFSET_XY(Ped ped, Entity entity, int duration, float targetRadius, float offsetX, float offsetY, float moveBlendRatio, int gotoEntityOffsetFlags) // 0x338E7EF52B6095A9
function TASK.TASK_GOTO_ENTITY_OFFSET_XY(ped, entity, duration, targetRadius, offsetX, offsetY, moveBlendRatio, gotoEntityOffsetFlags)
  native.invoke(
    Type.Void, 5456, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity),
    arg(Type.Int, duration),
    arg(Type.Float, targetRadius),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Int, gotoEntityOffsetFlags)
  )
end

-- void TASK_TURN_PED_TO_FACE_COORD(Ped ped, float x, float y, float z, int duration) // 0x1DDA930A0AC38571
--[[
duration in milliseconds
--]]
function TASK.TASK_TURN_PED_TO_FACE_COORD(ped, x, y, z, duration)
  native.invoke(
    Type.Void, 5457, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, duration)
  )
end

-- void TASK_VEHICLE_TEMP_ACTION(Ped driver, Vehicle vehicle, int action, int time) // 0xC429DCEEB339E129
--[[
'1 - brake
'3 - brake + reverse
'4 - turn left 90 + braking
'5 - turn right 90 + braking
'6 - brake strong (handbrake?) until time ends
'7 - turn left + accelerate
'8 - turn right + accelerate
'9 - weak acceleration
'10 - turn left + restore wheel pos to center in the end
'11 - turn right + restore wheel pos to center in the end
'13 - turn left + go reverse
'14 - turn left + go reverse
'16 - crash the game after like 2 seconds :)
'17 - keep actual state, game crashed after few tries
'18 - game crash
'19 - strong brake + turn left/right
'20 - weak brake + turn left then turn right
'21 - weak brake + turn right then turn left
'22 - brake + reverse
'23 - accelerate fast
'24 - brake
'25 - brake turning left then when almost stopping it turns left more
'26 - brake turning right then when almost stopping it turns right more
'27 - brake until car stop or until time ends
'28 - brake + strong reverse acceleration
'30 - performs a burnout (brake until stop + brake and accelerate)
'31 - accelerate + handbrake
'32 - accelerate very strong

Seems to be this:
Works on NPCs, but overrides their current task. If inside a task sequence (and not being the last task), "time" will work, otherwise the task will be performed forever until tasked with something else
--]]
function TASK.TASK_VEHICLE_TEMP_ACTION(driver, vehicle, action, time)
  native.invoke(
    Type.Void, 5458, false,
    arg(Type.Ped, driver),
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, action),
    arg(Type.Int, time)
  )
end

-- void TASK_VEHICLE_MISSION(Ped driver, Vehicle vehicle, Vehicle vehicleTarget, int missionType, float cruiseSpeed, int drivingStyle, float targetReached, float straightLineDistance, BOOL DriveAgainstTraffic) // 0x659427E0EF36BCDE
--[[
missionType: https://alloc8or.re/gta5/doc/enums/eVehicleMissionType.txt
--]]
function TASK.TASK_VEHICLE_MISSION(driver, vehicle, vehicleTarget, missionType, cruiseSpeed, drivingStyle, targetReached, straightLineDistance, DriveAgainstTraffic)
  native.invoke(
    Type.Void, 5459, false,
    arg(Type.Ped, driver),
    arg(Type.Vehicle, vehicle),
    arg(Type.Vehicle, vehicleTarget),
    arg(Type.Int, missionType),
    arg(Type.Float, cruiseSpeed),
    arg(Type.Int, drivingStyle),
    arg(Type.Float, targetReached),
    arg(Type.Float, straightLineDistance),
    arg(Type.Bool, DriveAgainstTraffic)
  )
end

-- void TASK_VEHICLE_MISSION_PED_TARGET(Ped ped, Vehicle vehicle, Ped pedTarget, int missionType, float maxSpeed, int drivingStyle, float minDistance, float straightLineDistance, BOOL DriveAgainstTraffic) // 0x9454528DF15D657A
--[[
See TASK_VEHICLE_MISSION
--]]
function TASK.TASK_VEHICLE_MISSION_PED_TARGET(ped, vehicle, pedTarget, missionType, maxSpeed, drivingStyle, minDistance, straightLineDistance, DriveAgainstTraffic)
  native.invoke(
    Type.Void, 5460, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Ped, pedTarget),
    arg(Type.Int, missionType),
    arg(Type.Float, maxSpeed),
    arg(Type.Int, drivingStyle),
    arg(Type.Float, minDistance),
    arg(Type.Float, straightLineDistance),
    arg(Type.Bool, DriveAgainstTraffic)
  )
end

-- void TASK_VEHICLE_MISSION_COORS_TARGET(Ped ped, Vehicle vehicle, float x, float y, float z, int mission, float cruiseSpeed, int drivingStyle, float targetReached, float straightLineDistance, BOOL DriveAgainstTraffic) // 0xF0AF20AA7731F8C3
--[[
See TASK_VEHICLE_MISSION
--]]
function TASK.TASK_VEHICLE_MISSION_COORS_TARGET(ped, vehicle, x, y, z, mission, cruiseSpeed, drivingStyle, targetReached, straightLineDistance, DriveAgainstTraffic)
  native.invoke(
    Type.Void, 5461, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, mission),
    arg(Type.Float, cruiseSpeed),
    arg(Type.Int, drivingStyle),
    arg(Type.Float, targetReached),
    arg(Type.Float, straightLineDistance),
    arg(Type.Bool, DriveAgainstTraffic)
  )
end

-- void TASK_VEHICLE_ESCORT(Ped ped, Vehicle vehicle, Vehicle targetVehicle, int mode, float speed, int drivingStyle, float minDistance, int minHeightAboveTerrain, float noRoadsDistance) // 0x0FA6E4B75F302400
--[[
Makes a ped follow the targetVehicle with <minDistance> in between.

note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.

Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there.
-1 = behind
0 = ahead
1 = left
2 = right
3 = back left
4 = back right

if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.

Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/
--]]
function TASK.TASK_VEHICLE_ESCORT(ped, vehicle, targetVehicle, mode, speed, drivingStyle, minDistance, minHeightAboveTerrain, noRoadsDistance)
  native.invoke(
    Type.Void, 5462, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Vehicle, targetVehicle),
    arg(Type.Int, mode),
    arg(Type.Float, speed),
    arg(Type.Int, drivingStyle),
    arg(Type.Float, minDistance),
    arg(Type.Int, minHeightAboveTerrain),
    arg(Type.Float, noRoadsDistance)
  )
end

-- void TASK_VEHICLE_FOLLOW(Ped driver, Vehicle vehicle, Entity targetEntity, float speed, int drivingStyle, int minDistance) // 0xFC545A9F0626E3B6
--[[
Makes a ped in a vehicle follow an entity (ped, vehicle, etc.)

drivingStyle: http://gtaforums.com/topic/822314-guide-driving-styles/
--]]
function TASK.TASK_VEHICLE_FOLLOW(driver, vehicle, targetEntity, speed, drivingStyle, minDistance)
  native.invoke(
    Type.Void, 5463, false,
    arg(Type.Ped, driver),
    arg(Type.Vehicle, vehicle),
    arg(Type.Entity, targetEntity),
    arg(Type.Float, speed),
    arg(Type.Int, drivingStyle),
    arg(Type.Int, minDistance)
  )
end

-- void TASK_VEHICLE_CHASE(Ped driver, Entity targetEnt) // 0x3C08A8E30363B353
--[[
chases targetEnt fast and aggressively
--
Makes ped (needs to be in vehicle) chase targetEnt.
--]]
function TASK.TASK_VEHICLE_CHASE(driver, targetEnt)
  native.invoke(
    Type.Void, 5464, false,
    arg(Type.Ped, driver),
    arg(Type.Entity, targetEnt)
  )
end

-- void TASK_VEHICLE_HELI_PROTECT(Ped pilot, Vehicle vehicle, Entity entityToFollow, float targetSpeed, int drivingFlags, float radius, int altitude, int heliFlags) // 0x1E09C32048FEFD1C
--[[
pilot, vehicle and altitude are rather self-explanatory.

p4: is unused variable in the function.

entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.

'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.

'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.

NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.

NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.
--]]
function TASK.TASK_VEHICLE_HELI_PROTECT(pilot, vehicle, entityToFollow, targetSpeed, drivingFlags, radius, altitude, heliFlags)
  native.invoke(
    Type.Void, 5465, false,
    arg(Type.Ped, pilot),
    arg(Type.Vehicle, vehicle),
    arg(Type.Entity, entityToFollow),
    arg(Type.Float, targetSpeed),
    arg(Type.Int, drivingFlags),
    arg(Type.Float, radius),
    arg(Type.Int, altitude),
    arg(Type.Int, heliFlags)
  )
end

-- void SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG(Ped ped, int flag, BOOL set) // 0xCC665AAC360D31E7
--[[
Flag 8: Medium-aggressive boxing tactic with a bit of PIT
Flag 1: Aggressive ramming of suspect
Flag 2: Ram attempts
Flag 32: Stay back from suspect, no tactical contact. Convoy-like.
Flag 16: Ramming, seems to be slightly less aggressive than 1-2.
--]]
function TASK.SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG(ped, flag, set)
  native.invoke(
    Type.Void, 5466, false,
    arg(Type.Ped, ped),
    arg(Type.Int, flag),
    arg(Type.Bool, set)
  )
end

-- void SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE(Ped ped, float distance) // 0x639B642FACBE4EDD
function TASK.SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE(ped, distance)
  native.invoke(
    Type.Void, 5467, false,
    arg(Type.Ped, ped),
    arg(Type.Float, distance)
  )
end

-- void TASK_HELI_CHASE(Ped pilot, Entity entityToFollow, float x, float y, float z) // 0xAC83B1DB38D0ADA0
--[[
Ped pilot should be in a heli.
EntityToFollow can be a vehicle or Ped.

x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)


NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.
--]]
function TASK.TASK_HELI_CHASE(pilot, entityToFollow, x, y, z)
  native.invoke(
    Type.Void, 5468, false,
    arg(Type.Ped, pilot),
    arg(Type.Entity, entityToFollow),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void TASK_PLANE_CHASE(Ped pilot, Entity entityToFollow, float x, float y, float z) // 0x2D2386F273FF7A25
function TASK.TASK_PLANE_CHASE(pilot, entityToFollow, x, y, z)
  native.invoke(
    Type.Void, 5469, false,
    arg(Type.Ped, pilot),
    arg(Type.Entity, entityToFollow),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void TASK_PLANE_LAND(Ped pilot, Vehicle plane, float runwayStartX, float runwayStartY, float runwayStartZ, float runwayEndX, float runwayEndY, float runwayEndZ) // 0xBF19721FA34D32C0
function TASK.TASK_PLANE_LAND(pilot, plane, runwayStartX, runwayStartY, runwayStartZ, runwayEndX, runwayEndY, runwayEndZ)
  native.invoke(
    Type.Void, 5470, false,
    arg(Type.Ped, pilot),
    arg(Type.Vehicle, plane),
    arg(Type.Float, runwayStartX),
    arg(Type.Float, runwayStartY),
    arg(Type.Float, runwayStartZ),
    arg(Type.Float, runwayEndX),
    arg(Type.Float, runwayEndY),
    arg(Type.Float, runwayEndZ)
  )
end

-- void CLEAR_DEFAULT_PRIMARY_TASK(Ped ped) // 0x6100B3CEFD43452E
function TASK.CLEAR_DEFAULT_PRIMARY_TASK(ped)
  native.invoke(
    Type.Void, 5471, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_PRIMARY_VEHICLE_TASK(Vehicle vehicle) // 0xDBBC7A2432524127
--[[
This native is very useful when switching the player to a ped inside a vehicle that has a task assigned prior to the player switch.
It is necessary to clear the ped's tasks AND call this native with the vehicle the player is switching into in order to allow the player to control the vehicle after the player switches.
--]]
function TASK.CLEAR_PRIMARY_VEHICLE_TASK(vehicle)
  native.invoke(
    Type.Void, 5472, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void CLEAR_VEHICLE_CRASH_TASK(Vehicle vehicle) // 0x53DDC75BC3AC0A90
function TASK.CLEAR_VEHICLE_CRASH_TASK(vehicle)
  native.invoke(
    Type.Void, 5473, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void TASK_PLANE_GOTO_PRECISE_VTOL(Ped ped, Vehicle vehicle, float x, float y, float z, int flightHeight, int minHeightAboveTerrain, BOOL useDesiredOrientation, float desiredOrientation, BOOL autopilot) // 0xF7F9DCCA89E7505B
function TASK.TASK_PLANE_GOTO_PRECISE_VTOL(ped, vehicle, x, y, z, flightHeight, minHeightAboveTerrain, useDesiredOrientation, desiredOrientation, autopilot)
  native.invoke(
    Type.Void, 5474, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, flightHeight),
    arg(Type.Int, minHeightAboveTerrain),
    arg(Type.Bool, useDesiredOrientation),
    arg(Type.Float, desiredOrientation),
    arg(Type.Bool, autopilot)
  )
end

-- void TASK_SUBMARINE_GOTO_AND_STOP(Ped ped, Vehicle submarine, float x, float y, float z, BOOL autopilot) // 0xC22B40579A498CA4
--[[
Used in am_vehicle_spawn.ysc and am_mp_submarine.ysc.

p0 is always 0, p5 is always 1

p1 is the vehicle handle of the submarine. Submarine must have a driver, but the ped handle is not passed to the native.

Speed can be set by calling SET_DRIVE_TASK_CRUISE_SPEED after
--]]
function TASK.TASK_SUBMARINE_GOTO_AND_STOP(ped, submarine, x, y, z, autopilot)
  native.invoke(
    Type.Void, 5475, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, submarine),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, autopilot)
  )
end

-- void TASK_HELI_MISSION(Ped pilot, Vehicle aircraft, Vehicle targetVehicle, Ped targetPed, float destinationX, float destinationY, float destinationZ, int missionFlag, float maxSpeed, float radius, float targetHeading, int maxHeight, int minHeight, float slowDownDistance, int behaviorFlags) // 0xDAD029E187A2BEB4
--[[
Must have targetVehicle, targetPed, OR destination X/Y/Z set
Will follow targeted vehicle/ped, or fly to destination
Set whichever is not being used to 0


Mission mode type:
 - 4, 7: Forces heli to snap to the heading if set, flies to destination or tracks specified entity (mode 4 only works for coordinates, 7 works for coordinates OR ped/vehicle)
 - 6: Attacks the target ped/vehicle with mounted weapons. If radius is set, will maintain that distance from target.
 - 8: Makes the heli flee from the ped/vehicle/coordinate
 - 9: Circles around target ped/vehicle, snaps to angle if set. Behavior flag (last parameter) of 2048 switches from counter-clockwise to clockwise circling. Does not work with coordinate destination.
 - 10, 11: Follows ped/vehicle target and imitates target heading. Only works with ped/vehicle target, not coord target
 - 19: Heli lands at specified coordinate, ignores heading (lands facing whatever direction it is facing when the task is started)
 - 20: Makes the heli land when near target ped. It won't resume chasing.
 - 21: Emulates a helicopter crash
 - 23: makes the heli circle erratically around ped


Heli will fly at maxSpeed (up to actual maximum speed defined by the model's handling config)
You can use SET_DRIVE_TASK_CRUISE_SPEED to modulate the speed based on distance to the target without having to re-invoke the task native. Setting to 8.0 when close to the destination results in a much smoother approach.

If minHeight and maxHeight are set, heli will fly between those specified elevations, relative to ground level and any obstructions/buildings below. You can specify -1 for either if you only want to specify one. Usually it is easiest to leave maxHeight at -1, and specify a reasonable minHeight to ensure clearance over any obstacles. Note this MUST be passed as an INT, not a FLOAT. 

Radius affects how closely the heli will follow tracked ped/vehicle, and when circling (mission type 9) sets the radius (in meters) that it will circle the target from

Heading is -1.0 for default behavior, which will point the nose of the helicopter towards the destination. Set a heading and the heli will lock to that direction when near its destination/target, but may still turn towards the destination when flying at higher speed from a further distance.

Behavior Flags is a bitwise value that modifies the AI behavior. Not clear what all flags do, but here are some guesses/notes:
   1: Forces heading to face E
   2: Unknown
   4: Tight circles around coordinate destination
   8: Unknown
  16: Circles around coordinate destination facing towards destination
  32: Flys to normally, then lands at coordinate destination and stays on the ground (using mission type 4)
  64: Ignores obstacles when flying, will follow at specified minHeight above ground level but will not avoid buildings, vehicles, etc.
 128: Unknown
 256: Unknown
 512: Unknown
1024: Unknown 
2048: Reverses direction of circling (mission type 9) to clockwise
4096: Hugs closer to the ground, maintains minHeight from ground generally, but barely clears buildings and dips down more between buildings instead of taking a more efficient/safe route
8192: Unknown

Unk3 is a float value, you may see -1082130432 for this value in decompiled native scripts, this is the equivalent to -1.0f. Seems to affect acceleration/aggressiveness, but not sure exactly how it works. Higher value seems to result in lower acceleration/less aggressive flying. Almost always -1.0 in native scripts, occasionally 20.0 or 50.0. Setting to 400.0 seems to work well for making the pilot not overshoot the destination when using coordinate destination.

Notes updated by PNWParksFan, May 2021

--]]
function TASK.TASK_HELI_MISSION(pilot, aircraft, targetVehicle, targetPed, destinationX, destinationY, destinationZ, missionFlag, maxSpeed, radius, targetHeading, maxHeight, minHeight, slowDownDistance, behaviorFlags)
  native.invoke(
    Type.Void, 5476, false,
    arg(Type.Ped, pilot),
    arg(Type.Vehicle, aircraft),
    arg(Type.Vehicle, targetVehicle),
    arg(Type.Ped, targetPed),
    arg(Type.Float, destinationX),
    arg(Type.Float, destinationY),
    arg(Type.Float, destinationZ),
    arg(Type.Int, missionFlag),
    arg(Type.Float, maxSpeed),
    arg(Type.Float, radius),
    arg(Type.Float, targetHeading),
    arg(Type.Int, maxHeight),
    arg(Type.Int, minHeight),
    arg(Type.Float, slowDownDistance),
    arg(Type.Int, behaviorFlags)
  )
end

-- void TASK_HELI_ESCORT_HELI(Ped pilot, Vehicle heli1, Vehicle heli2, float offsetX, float offsetY, float offsetZ) // 0xB385523325077210
function TASK.TASK_HELI_ESCORT_HELI(pilot, heli1, heli2, offsetX, offsetY, offsetZ)
  native.invoke(
    Type.Void, 5477, false,
    arg(Type.Ped, pilot),
    arg(Type.Vehicle, heli1),
    arg(Type.Vehicle, heli2),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ)
  )
end

-- void TASK_PLANE_MISSION(Ped pilot, Vehicle aircraft, Vehicle targetVehicle, Ped targetPed, float destinationX, float destinationY, float destinationZ, int missionFlag, float angularDrag, float targetReached, float targetHeading, float maxZ, float minZ, BOOL precise) // 0x23703CD154E83B88
--[[
EXAMPLE USAGE:

Fly around target (Precautiously, keeps high altitude):
Function.Call(Hash.TASK_PLANE_MISSION, pilot, selectedAirplane, 0, 0, Target.X, Target.Y, Target.Z, 4, 100f, 0f, 90f, 0, 200f);

Fly around target (Dangerously, keeps VERY low altitude):
Function.Call(Hash.TASK_PLANE_MISSION, pilot, selectedAirplane, 0, 0, Target.X, Target.Y, Target.Z, 4, 100f, 0f, 90f, 0, -500f);

Fly directly into target:
Function.Call(Hash.TASK_PLANE_MISSION, pilot, selectedAirplane, 0, 0, Target.X, Target.Y, Target.Z, 4, 100f, 0f, 90f, 0, -5000f);

EXPANDED INFORMATION FOR ADVANCED USAGE (custom pilot)

'physicsSpeed': (THIS IS NOT YOUR ORDINARY SPEED PARAMETER: READ!!)
Think of this -first- as a radius value, not a true speed value.  The ACTUAL effective speed of the plane will be that of the maximum speed permissible to successfully fly in a -circle- with a radius of 'physicsSpeed'.  This also means that the plane must complete a circle before it can begin its "bombing run", its straight line pass towards the target.  p9 appears to influence the angle at which a "bombing run" begins, although I can't confirm yet.

VERY IMPORTANT: A "bombing run" will only occur if a plane can successfully determine a possible navigable route (the slower the value of 'physicsSpeed', the more precise the pilot can be due to less influence of physics on flightpath).  Otherwise, the pilot will continue to patrol around Destination (be it a dynamic Entity position vector or a fixed world coordinate vector.)

0 = Plane's physics are almost entirely frozen, plane appears to "orbit" around precise destination point
1-299 = Blend of "frozen, small radius" vs. normal vs. "accelerated, hyperfast, large radius"
300+ =  Vehicle behaves entirely like a normal gameplay plane.

'patrolBlend' (The lower the value, the more the Destination is treated as a "fly AT" rather than a "fly AROUND point".)

Scenario: Destination is an Entity on ground level, wide open field
-5000 = Pilot kamikazes directly into Entity
-1000 = Pilot flies extremely low -around- Entity, very prone to crashing
-200 = Pilot flies lower than average around Entity.
0 = Pilot flies around Entity, normal altitude
200 = Pilot flies an extra eighty units or so higher than 0 while flying around Destination (this doesn't seem to correlate directly into distance units.)

-- Valid mission types found in the exe: --

0 = None
1 = Unk
2 = CTaskVehicleRam
3 = CTaskVehicleBlock
4 = CTaskVehicleGoToPlane
5 = CTaskVehicleStop
6 = CTaskVehicleAttack
7 = CTaskVehicleFollow
8 = CTaskVehicleFleeAirborne
9= CTaskVehicleCircle
10 = CTaskVehicleEscort
15 = CTaskVehicleFollowRecording
16 = CTaskVehiclePoliceBehaviour
17 = CTaskVehicleCrash
--]]
function TASK.TASK_PLANE_MISSION(pilot, aircraft, targetVehicle, targetPed, destinationX, destinationY, destinationZ, missionFlag, angularDrag, targetReached, targetHeading, maxZ, minZ, precise)
  native.invoke(
    Type.Void, 5478, false,
    arg(Type.Ped, pilot),
    arg(Type.Vehicle, aircraft),
    arg(Type.Vehicle, targetVehicle),
    arg(Type.Ped, targetPed),
    arg(Type.Float, destinationX),
    arg(Type.Float, destinationY),
    arg(Type.Float, destinationZ),
    arg(Type.Int, missionFlag),
    arg(Type.Float, angularDrag),
    arg(Type.Float, targetReached),
    arg(Type.Float, targetHeading),
    arg(Type.Float, maxZ),
    arg(Type.Float, minZ),
    arg(Type.Bool, precise)
  )
end

-- void TASK_PLANE_TAXI(Ped pilot, Vehicle aircraft, float x, float y, float z, float cruiseSpeed, float targetReached) // 0x92C360B5F15D2302
function TASK.TASK_PLANE_TAXI(pilot, aircraft, x, y, z, cruiseSpeed, targetReached)
  native.invoke(
    Type.Void, 5479, false,
    arg(Type.Ped, pilot),
    arg(Type.Vehicle, aircraft),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, cruiseSpeed),
    arg(Type.Float, targetReached)
  )
end

-- void TASK_BOAT_MISSION(Ped pedDriver, Vehicle vehicle, Vehicle targetVehicle, Ped targetPed, float x, float y, float z, int mission, float maxSpeed, int drivingStyle, float targetReached, Any boatFlags) // 0x15C86013127CE63F
--[[
You need to call PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS after TASK_BOAT_MISSION in order for the task to execute.

Working example
float vehicleMaxSpeed = VEHICLE::GET_VEHICLE_ESTIMATED_MAX_SPEED(ENTITY::GET_ENTITY_MODEL(pedVehicle));
TASK::TASK_BOAT_MISSION(pedDriver, pedVehicle, 0, 0, waypointCoord.x, waypointCoord.y, waypointCoord.z, 4, vehicleMaxSpeed, 786469, -1.0, 7);
PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pedDriver, 1);

P8 appears to be driving style flag - see gtaforums.com/topic/822314-guide-driving-styles/ for documentation
--]]
function TASK.TASK_BOAT_MISSION(pedDriver, vehicle, targetVehicle, targetPed, x, y, z, mission, maxSpeed, drivingStyle, targetReached, boatFlags)
  native.invoke(
    Type.Void, 5480, false,
    arg(Type.Ped, pedDriver),
    arg(Type.Vehicle, vehicle),
    arg(Type.Vehicle, targetVehicle),
    arg(Type.Ped, targetPed),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, mission),
    arg(Type.Float, maxSpeed),
    arg(Type.Int, drivingStyle),
    arg(Type.Float, targetReached),
    arg(Type.Any, boatFlags)
  )
end

-- void TASK_DRIVE_BY(Ped driverPed, Ped targetPed, Vehicle targetVehicle, float targetX, float targetY, float targetZ, float distanceToShoot, int pedAccuracy, BOOL pushUnderneathDrivingTaskIfDriving, Hash firingPattern) // 0x2F8AF0E82773A171
--[[
Example:

TASK::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});




Needs working example. Doesn't seem to do anything.

I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.
I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.
I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
--]]
function TASK.TASK_DRIVE_BY(driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, pushUnderneathDrivingTaskIfDriving, firingPattern)
  native.invoke(
    Type.Void, 5481, false,
    arg(Type.Ped, driverPed),
    arg(Type.Ped, targetPed),
    arg(Type.Vehicle, targetVehicle),
    arg(Type.Float, targetX),
    arg(Type.Float, targetY),
    arg(Type.Float, targetZ),
    arg(Type.Float, distanceToShoot),
    arg(Type.Int, pedAccuracy),
    arg(Type.Bool, pushUnderneathDrivingTaskIfDriving),
    arg(Type.Hash, firingPattern)
  )
end

-- void SET_DRIVEBY_TASK_TARGET(Ped shootingPed, Ped targetPed, Vehicle targetVehicle, float x, float y, float z) // 0xE5B302114D8162EE
--[[
For p1 & p2 (Ped, Vehicle). I could be wrong, as the only time this native is called in scripts is once and both are 0, but I assume this native will work like SET_MOUNTED_WEAPON_TARGET in which has the same exact amount of parameters and the 1st and last 3 parameters are right and the same for both natives.
--]]
function TASK.SET_DRIVEBY_TASK_TARGET(shootingPed, targetPed, targetVehicle, x, y, z)
  native.invoke(
    Type.Void, 5482, false,
    arg(Type.Ped, shootingPed),
    arg(Type.Ped, targetPed),
    arg(Type.Vehicle, targetVehicle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void CLEAR_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK(Ped ped) // 0xC35B5CDB2824CF69
function TASK.CLEAR_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK(ped)
  native.invoke(
    Type.Void, 5483, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK(Ped ped) // 0x8785E6E40C7A8818
function TASK.IS_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK(ped)
  return native.invoke(
    Type.Bool, 5484, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL CONTROL_MOUNTED_WEAPON(Ped ped) // 0xDCFE42068FE0135A
--[[
Forces the ped to use the mounted weapon.
Returns false if task is not possible.
--]]
function TASK.CONTROL_MOUNTED_WEAPON(ped)
  return native.invoke(
    Type.Bool, 5485, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_MOUNTED_WEAPON_TARGET(Ped shootingPed, Ped targetPed, Vehicle targetVehicle, float x, float y, float z, int taskMode, BOOL ignoreTargetVehDeadCheck) // 0xCCD892192C6D2BB9
--[[
Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.
--]]
function TASK.SET_MOUNTED_WEAPON_TARGET(shootingPed, targetPed, targetVehicle, x, y, z, taskMode, ignoreTargetVehDeadCheck)
  native.invoke(
    Type.Void, 5486, false,
    arg(Type.Ped, shootingPed),
    arg(Type.Ped, targetPed),
    arg(Type.Vehicle, targetVehicle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, taskMode),
    arg(Type.Bool, ignoreTargetVehDeadCheck)
  )
end

-- BOOL IS_MOUNTED_WEAPON_TASK_UNDERNEATH_DRIVING_TASK(Ped ped) // 0xA320EF046186FA3B
function TASK.IS_MOUNTED_WEAPON_TASK_UNDERNEATH_DRIVING_TASK(ped)
  return native.invoke(
    Type.Bool, 5487, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_USE_MOBILE_PHONE(Ped ped, BOOL usePhone, int desiredPhoneMode) // 0xBD2A8EC3AF4DE7DB
--[[
Actually has 3 params, not 2.

p0: Ped
p1: int (or bool?)
p2: int
--]]
function TASK.TASK_USE_MOBILE_PHONE(ped, usePhone, desiredPhoneMode)
  native.invoke(
    Type.Void, 5488, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, usePhone),
    arg(Type.Int, desiredPhoneMode)
  )
end

-- void TASK_USE_MOBILE_PHONE_TIMED(Ped ped, int duration) // 0x5EE02954A14C69DB
function TASK.TASK_USE_MOBILE_PHONE_TIMED(ped, duration)
  native.invoke(
    Type.Void, 5489, false,
    arg(Type.Ped, ped),
    arg(Type.Int, duration)
  )
end

-- void TASK_CHAT_TO_PED(Ped ped, Ped target, int flags, float goToLocationX, float goToLocationY, float goToLocationZ, float headingDegs, float idleTime) // 0x8C338E0263E4FD19
--[[
p2 tend to be 16, 17 or 1
p3 to p7 tend to be 0.0
--]]
function TASK.TASK_CHAT_TO_PED(ped, target, flags, goToLocationX, goToLocationY, goToLocationZ, headingDegs, idleTime)
  native.invoke(
    Type.Void, 5490, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Int, flags),
    arg(Type.Float, goToLocationX),
    arg(Type.Float, goToLocationY),
    arg(Type.Float, goToLocationZ),
    arg(Type.Float, headingDegs),
    arg(Type.Float, idleTime)
  )
end

-- void TASK_WARP_PED_INTO_VEHICLE(Ped ped, Vehicle vehicle, int seat) // 0x9A7D091411C5F684
--[[
Seat Numbers
-------------------------------
Driver = -1
Any = -2
Left-Rear = 1
Right-Front = 0
Right-Rear = 2
Extra seats = 3-14(This may differ from vehicle type e.g. Firetruck Rear Stand, Ambulance Rear)
--]]
function TASK.TASK_WARP_PED_INTO_VEHICLE(ped, vehicle, seat)
  native.invoke(
    Type.Void, 5491, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, seat)
  )
end

-- void TASK_SHOOT_AT_ENTITY(Entity entity, Entity target, int duration, Hash firingPattern) // 0x08DA95E8298AE772
--[[
//this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds
Entity aimedentity;
Player player = PLAYER::PLAYER_ID();
PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);

//bg is an array of peds
TASK::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));

in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.

Firing Pattern Hash Information: https://pastebin.com/Px036isB
--]]
function TASK.TASK_SHOOT_AT_ENTITY(entity, target, duration, firingPattern)
  native.invoke(
    Type.Void, 5492, false,
    arg(Type.Entity, entity),
    arg(Type.Entity, target),
    arg(Type.Int, duration),
    arg(Type.Hash, firingPattern)
  )
end

-- void TASK_CLIMB(Ped ped, BOOL usePlayerLaunchForce) // 0x89D9FCC2435112F1
--[[
Climbs or vaults the nearest thing.
usePlayerLaunchForce is unused.
--]]
function TASK.TASK_CLIMB(ped, usePlayerLaunchForce)
  native.invoke(
    Type.Void, 5493, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, usePlayerLaunchForce)
  )
end

-- void TASK_CLIMB_LADDER(Ped ped, BOOL fast) // 0xB6C987F9285A3814
function TASK.TASK_CLIMB_LADDER(ped, fast)
  native.invoke(
    Type.Void, 5494, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, fast)
  )
end

-- void TASK_RAPPEL_DOWN_WALL_USING_CLIPSET_OVERRIDE(Ped ped, float x1, float y1, float z1, float x2, float y2, float z2, float minZ, int ropeHandle, const char* clipSet, Any p10, Any p11) // 0xEAF66ACDDC794793
--[[
Attaches a ped to a rope and allows player control to rappel down a wall. Disables all collisions while on the rope.
p10: Usually 1 in the scripts, clipSet: Clipset to use for the task, minZ: Minimum Z that the player can descend to, ropeHandle: Rope to attach this task to created with ADD_ROPE
--]]
function TASK.TASK_RAPPEL_DOWN_WALL_USING_CLIPSET_OVERRIDE(ped, x1, y1, z1, x2, y2, z2, minZ, ropeHandle, clipSet, p10, p11)
  native.invoke(
    Type.Void, 5495, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, minZ),
    arg(Type.Int, ropeHandle),
    arg(Type.String, clipSet),
    arg(Type.Any, p10),
    arg(Type.Any, p11)
  )
end

-- int GET_TASK_RAPPEL_DOWN_WALL_STATE(Ped ped) // 0x9D252648778160DF
function TASK.GET_TASK_RAPPEL_DOWN_WALL_STATE(ped)
  return native.invoke(
    Type.Int, 5496, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_PED_TASKS_IMMEDIATELY(Ped ped) // 0xAAA34F8A7CB32098
--[[
Immediately stops the pedestrian from whatever it's doing. They stop fighting, animations, etc. they forget what they were doing.
--]]
function TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
  native.invoke(
    Type.Void, 5497, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_PERFORM_SEQUENCE_FROM_PROGRESS(Ped ped, int taskIndex, int progress1, int progress2) // 0x89221B16730234F0
function TASK.TASK_PERFORM_SEQUENCE_FROM_PROGRESS(ped, taskIndex, progress1, progress2)
  native.invoke(
    Type.Void, 5498, false,
    arg(Type.Ped, ped),
    arg(Type.Int, taskIndex),
    arg(Type.Int, progress1),
    arg(Type.Int, progress2)
  )
end

-- void SET_NEXT_DESIRED_MOVE_STATE(float nextMoveState) // 0xF1B9F16E89E2C93A
--[[
This native does absolutely nothing, just a nullsub

R* Comment:
SET_NEXT_DESIRED_MOVE_STATE - Function is deprecated - do not use anymore
--]]
function TASK.SET_NEXT_DESIRED_MOVE_STATE(nextMoveState)
  native.invoke(
    Type.Void, 5499, false,
    arg(Type.Float, nextMoveState)
  )
end

-- void SET_PED_DESIRED_MOVE_BLEND_RATIO(Ped ped, float newMoveBlendRatio) // 0x1E982AC8716912C5
function TASK.SET_PED_DESIRED_MOVE_BLEND_RATIO(ped, newMoveBlendRatio)
  native.invoke(
    Type.Void, 5500, false,
    arg(Type.Ped, ped),
    arg(Type.Float, newMoveBlendRatio)
  )
end

-- float GET_PED_DESIRED_MOVE_BLEND_RATIO(Ped ped) // 0x8517D4A6CA8513ED
function TASK.GET_PED_DESIRED_MOVE_BLEND_RATIO(ped)
  return native.invoke(
    Type.Float, 5501, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_GOTO_ENTITY_AIMING(Ped ped, Entity target, float distanceToStopAt, float StartAimingDist) // 0xA9DA48FAB8A76C12
--[[
eg

 TASK::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);

ped = Ped you want to perform this task.
target = the Entity they should aim at.
distanceToStopAt = distance from the target, where the ped should stop to aim.
StartAimingDist = distance where the ped should start to aim.
--]]
function TASK.TASK_GOTO_ENTITY_AIMING(ped, target, distanceToStopAt, StartAimingDist)
  native.invoke(
    Type.Void, 5502, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, target),
    arg(Type.Float, distanceToStopAt),
    arg(Type.Float, StartAimingDist)
  )
end

-- void TASK_SET_DECISION_MAKER(Ped ped, Hash decisionMakerId) // 0xEB8517DDA73720DA
--[[
p1 is always GET_HASH_KEY("empty") in scripts, for the rare times this is used
--]]
function TASK.TASK_SET_DECISION_MAKER(ped, decisionMakerId)
  native.invoke(
    Type.Void, 5503, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, decisionMakerId)
  )
end

-- void TASK_SET_SPHERE_DEFENSIVE_AREA(Ped ped, float x, float y, float z, float radius) // 0x933C06518B52A9A4
function TASK.TASK_SET_SPHERE_DEFENSIVE_AREA(ped, x, y, z, radius)
  native.invoke(
    Type.Void, 5504, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void TASK_CLEAR_DEFENSIVE_AREA(Ped ped) // 0x95A6C46A31D1917D
function TASK.TASK_CLEAR_DEFENSIVE_AREA(ped)
  native.invoke(
    Type.Void, 5505, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_PED_SLIDE_TO_COORD(Ped ped, float x, float y, float z, float heading, float speed) // 0xD04FE6765D990A06
function TASK.TASK_PED_SLIDE_TO_COORD(ped, x, y, z, heading, speed)
  native.invoke(
    Type.Void, 5506, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.Float, speed)
  )
end

-- void TASK_PED_SLIDE_TO_COORD_HDG_RATE(Ped ped, float x, float y, float z, float heading, float speed, float headingChangeRate) // 0x5A4A6A6D3DC64F52
function TASK.TASK_PED_SLIDE_TO_COORD_HDG_RATE(ped, x, y, z, heading, speed, headingChangeRate)
  native.invoke(
    Type.Void, 5507, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.Float, speed),
    arg(Type.Float, headingChangeRate)
  )
end

-- ScrHandle ADD_COVER_POINT(float x, float y, float z, float direction, int usage, int height, int arc, BOOL isPriority) // 0xD5C12A75C7B9497F
function TASK.ADD_COVER_POINT(x, y, z, direction, usage, height, arc, isPriority)
  return native.invoke(
    Type.Scrhandle, 5508, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, direction),
    arg(Type.Int, usage),
    arg(Type.Int, height),
    arg(Type.Int, arc),
    arg(Type.Bool, isPriority)
  )
end

-- void REMOVE_COVER_POINT(ScrHandle coverpoint) // 0xAE287C923D891715
function TASK.REMOVE_COVER_POINT(coverpoint)
  native.invoke(
    Type.Void, 5509, false,
    arg(Type.Scrhandle, coverpoint)
  )
end

-- BOOL DOES_SCRIPTED_COVER_POINT_EXIST_AT_COORDS(float x, float y, float z) // 0xA98B8E3C088E5A31
--[[
Checks if there is a cover point at position
--]]
function TASK.DOES_SCRIPTED_COVER_POINT_EXIST_AT_COORDS(x, y, z)
  return native.invoke(
    Type.Bool, 5510, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- Vector3 GET_SCRIPTED_COVER_POINT_COORDS(ScrHandle coverpoint) // 0x594A1028FC2A3E85
function TASK.GET_SCRIPTED_COVER_POINT_COORDS(coverpoint)
  return native.invoke(
    Type.Vector3, 5511, false,
    arg(Type.Scrhandle, coverpoint)
  )
end

-- void ADD_SCRIPTED_COVER_AREA(float x, float y, float z, float radius) // 0x28B7B9BFDAF274AA
function TASK.ADD_SCRIPTED_COVER_AREA(x, y, z, radius)
  native.invoke(
    Type.Void, 5512, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void TASK_COMBAT_PED(Ped ped, Ped targetPed, int combatFlags, int threatResponseFlags) // 0xF166E48407BAC484
--[[
Makes the specified ped attack the target ped.
p2 should be 0
p3 should be 16
--]]
function TASK.TASK_COMBAT_PED(ped, targetPed, combatFlags, threatResponseFlags)
  native.invoke(
    Type.Void, 5513, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, targetPed),
    arg(Type.Int, combatFlags),
    arg(Type.Int, threatResponseFlags)
  )
end

-- void TASK_COMBAT_PED_TIMED(Ped ped, Ped target, int time, int flags) // 0x944F30DCB7096BDE
function TASK.TASK_COMBAT_PED_TIMED(ped, target, time, flags)
  native.invoke(
    Type.Void, 5514, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Int, time),
    arg(Type.Int, flags)
  )
end

-- void TASK_SEEK_COVER_FROM_POS(Ped ped, float x, float y, float z, int duration, BOOL allowPeekingAndFiring) // 0x75AC2B60386D89F2
function TASK.TASK_SEEK_COVER_FROM_POS(ped, x, y, z, duration, allowPeekingAndFiring)
  native.invoke(
    Type.Void, 5515, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, duration),
    arg(Type.Bool, allowPeekingAndFiring)
  )
end

-- void TASK_SEEK_COVER_FROM_PED(Ped ped, Ped target, int duration, BOOL allowPeekingAndFiring) // 0x84D32B3BEC531324
function TASK.TASK_SEEK_COVER_FROM_PED(ped, target, duration, allowPeekingAndFiring)
  native.invoke(
    Type.Void, 5516, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Int, duration),
    arg(Type.Bool, allowPeekingAndFiring)
  )
end

-- void TASK_SEEK_COVER_TO_COVER_POINT(Ped ped, ScrHandle coverpoint, float x, float y, float z, int time, BOOL allowPeekingAndFiring) // 0xD43D95C7A869447F
--[[
p5 is always -1
--]]
function TASK.TASK_SEEK_COVER_TO_COVER_POINT(ped, coverpoint, x, y, z, time, allowPeekingAndFiring)
  native.invoke(
    Type.Void, 5517, false,
    arg(Type.Ped, ped),
    arg(Type.Scrhandle, coverpoint),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, time),
    arg(Type.Bool, allowPeekingAndFiring)
  )
end

-- void TASK_SEEK_COVER_TO_COORDS(Ped ped, float x1, float y1, float z1, float x2, float y2, float z2, int timeout, BOOL shortRoute) // 0x39246A6958EF072C
--[[
p8 causes the ped to take the shortest route to the cover position. It may have something to do with navmesh or pathfinding mechanics.

from michael2:
TASK::TASK_SEEK_COVER_TO_COORDS(ped, 967.5164794921875, -2121.603515625, 30.479299545288086, 978.94677734375, -2125.84130859375, 29.4752, -1, 1);


appears to be shorter variation
from michael3:
TASK::TASK_SEEK_COVER_TO_COORDS(ped, -2231.011474609375, 263.6326599121094, 173.60195922851562, -1, 0);
--]]
function TASK.TASK_SEEK_COVER_TO_COORDS(ped, x1, y1, z1, x2, y2, z2, timeout, shortRoute)
  native.invoke(
    Type.Void, 5518, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, timeout),
    arg(Type.Bool, shortRoute)
  )
end

-- void TASK_PUT_PED_DIRECTLY_INTO_COVER(Ped ped, float x, float y, float z, int time, BOOL allowPeekingAndFiring, float blendInDuration, BOOL forceInitialFacingDirection, BOOL forceFaceLeft, int identifier, BOOL doEntry) // 0x4172393E6BE1FECE
function TASK.TASK_PUT_PED_DIRECTLY_INTO_COVER(ped, x, y, z, time, allowPeekingAndFiring, blendInDuration, forceInitialFacingDirection, forceFaceLeft, identifier, doEntry)
  native.invoke(
    Type.Void, 5519, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, time),
    arg(Type.Bool, allowPeekingAndFiring),
    arg(Type.Float, blendInDuration),
    arg(Type.Bool, forceInitialFacingDirection),
    arg(Type.Bool, forceFaceLeft),
    arg(Type.Int, identifier),
    arg(Type.Bool, doEntry)
  )
end

-- void TASK_WARP_PED_DIRECTLY_INTO_COVER(Ped ped, int time, BOOL allowPeekingAndFiring, BOOL forceInitialFacingDirection, BOOL forceFaceLeft, int identifier) // 0x6E01E9E8D89F8276
function TASK.TASK_WARP_PED_DIRECTLY_INTO_COVER(ped, time, allowPeekingAndFiring, forceInitialFacingDirection, forceFaceLeft, identifier)
  native.invoke(
    Type.Void, 5520, false,
    arg(Type.Ped, ped),
    arg(Type.Int, time),
    arg(Type.Bool, allowPeekingAndFiring),
    arg(Type.Bool, forceInitialFacingDirection),
    arg(Type.Bool, forceFaceLeft),
    arg(Type.Int, identifier)
  )
end

-- void TASK_EXIT_COVER(Ped ped, int exitType, float x, float y, float z) // 0x79B258E397854D29
--[[
p1 is 1, 2, or 3 in scripts
--]]
function TASK.TASK_EXIT_COVER(ped, exitType, x, y, z)
  native.invoke(
    Type.Void, 5521, false,
    arg(Type.Ped, ped),
    arg(Type.Int, exitType),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void TASK_PUT_PED_DIRECTLY_INTO_MELEE(Ped ped, Ped meleeTarget, float blendInDuration, float timeInMelee, float strafePhaseSync, int aiCombatFlags) // 0x1C6CD14A876FFE39
--[[
from armenian3.c4

TASK::TASK_PUT_PED_DIRECTLY_INTO_MELEE(PlayerPed, armenianPed, 0.0, -1.0, 0.0, 0);

--]]
function TASK.TASK_PUT_PED_DIRECTLY_INTO_MELEE(ped, meleeTarget, blendInDuration, timeInMelee, strafePhaseSync, aiCombatFlags)
  native.invoke(
    Type.Void, 5522, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, meleeTarget),
    arg(Type.Float, blendInDuration),
    arg(Type.Float, timeInMelee),
    arg(Type.Float, strafePhaseSync),
    arg(Type.Int, aiCombatFlags)
  )
end

-- void TASK_TOGGLE_DUCK(Ped ped, int toggleType) // 0xAC96609B9995EDF8
--[[
used in sequence task

both parameters seems to be always 0
--]]
function TASK.TASK_TOGGLE_DUCK(ped, toggleType)
  native.invoke(
    Type.Void, 5523, false,
    arg(Type.Ped, ped),
    arg(Type.Int, toggleType)
  )
end

-- void TASK_GUARD_CURRENT_POSITION(Ped ped, float maxPatrolProximity, float defensiveAreaRadius, BOOL setDefensiveArea) // 0x4A58A47A72E3FCB4
--[[
From re_prisonvanbreak:

TASK::TASK_GUARD_CURRENT_POSITION(l_DD, 35.0, 35.0, 1);
--]]
function TASK.TASK_GUARD_CURRENT_POSITION(ped, maxPatrolProximity, defensiveAreaRadius, setDefensiveArea)
  native.invoke(
    Type.Void, 5524, false,
    arg(Type.Ped, ped),
    arg(Type.Float, maxPatrolProximity),
    arg(Type.Float, defensiveAreaRadius),
    arg(Type.Bool, setDefensiveArea)
  )
end

-- void TASK_GUARD_ASSIGNED_DEFENSIVE_AREA(Ped ped, float x, float y, float z, float heading, float maxPatrolProximity, int timer) // 0xD2A207EEBDF9889B
function TASK.TASK_GUARD_ASSIGNED_DEFENSIVE_AREA(ped, x, y, z, heading, maxPatrolProximity, timer)
  native.invoke(
    Type.Void, 5525, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.Float, maxPatrolProximity),
    arg(Type.Int, timer)
  )
end

-- void TASK_GUARD_SPHERE_DEFENSIVE_AREA(Ped ped, float defendPositionX, float defendPositionY, float defendPositionZ, float heading, float maxPatrolProximity, int time, float x, float y, float z, float defensiveAreaRadius) // 0xC946FE14BE0EB5E2
function TASK.TASK_GUARD_SPHERE_DEFENSIVE_AREA(ped, defendPositionX, defendPositionY, defendPositionZ, heading, maxPatrolProximity, time, x, y, z, defensiveAreaRadius)
  native.invoke(
    Type.Void, 5526, false,
    arg(Type.Ped, ped),
    arg(Type.Float, defendPositionX),
    arg(Type.Float, defendPositionY),
    arg(Type.Float, defendPositionZ),
    arg(Type.Float, heading),
    arg(Type.Float, maxPatrolProximity),
    arg(Type.Int, time),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, defensiveAreaRadius)
  )
end

-- void TASK_STAND_GUARD(Ped ped, float x, float y, float z, float heading, const char* scenarioName) // 0xAE032F8BBA959E90
--[[
scenarioName example: "WORLD_HUMAN_GUARD_STAND"
--]]
function TASK.TASK_STAND_GUARD(ped, x, y, z, heading, scenarioName)
  native.invoke(
    Type.Void, 5527, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.String, scenarioName)
  )
end

-- void SET_DRIVE_TASK_CRUISE_SPEED(Ped driver, float cruiseSpeed) // 0x5C9B84BD7D31D908
function TASK.SET_DRIVE_TASK_CRUISE_SPEED(driver, cruiseSpeed)
  native.invoke(
    Type.Void, 5528, false,
    arg(Type.Ped, driver),
    arg(Type.Float, cruiseSpeed)
  )
end

-- void SET_DRIVE_TASK_MAX_CRUISE_SPEED(Ped ped, float speed) // 0x404A5AA9B9F0B746
function TASK.SET_DRIVE_TASK_MAX_CRUISE_SPEED(ped, speed)
  native.invoke(
    Type.Void, 5529, false,
    arg(Type.Ped, ped),
    arg(Type.Float, speed)
  )
end

-- void SET_DRIVE_TASK_DRIVING_STYLE(Ped ped, int drivingStyle) // 0xDACE1BE37D88AF67
--[[
This native is used to set the driving style for specific ped.

Driving styles id seems to be:
786468
262144
786469

http://gtaforums.com/topic/822314-guide-driving-styles/
--]]
function TASK.SET_DRIVE_TASK_DRIVING_STYLE(ped, drivingStyle)
  native.invoke(
    Type.Void, 5530, false,
    arg(Type.Ped, ped),
    arg(Type.Int, drivingStyle)
  )
end

-- void ADD_COVER_BLOCKING_AREA(float startX, float startY, float startZ, float endX, float endY, float endZ, BOOL blockObjects, BOOL blockVehicles, BOOL blockMap, BOOL blockPlayer) // 0x45C597097DD7CB81
function TASK.ADD_COVER_BLOCKING_AREA(startX, startY, startZ, endX, endY, endZ, blockObjects, blockVehicles, blockMap, blockPlayer)
  native.invoke(
    Type.Void, 5531, false,
    arg(Type.Float, startX),
    arg(Type.Float, startY),
    arg(Type.Float, startZ),
    arg(Type.Float, endX),
    arg(Type.Float, endY),
    arg(Type.Float, endZ),
    arg(Type.Bool, blockObjects),
    arg(Type.Bool, blockVehicles),
    arg(Type.Bool, blockMap),
    arg(Type.Bool, blockPlayer)
  )
end

-- void REMOVE_ALL_COVER_BLOCKING_AREAS() // 0xDB6708C0B46F56D8
function TASK.REMOVE_ALL_COVER_BLOCKING_AREAS()
  native.invoke(
    Type.Void, 5532, false
  )
end

-- void REMOVE_COVER_BLOCKING_AREAS_AT_POSITION(float x, float y, float z) // 0xFA83CA6776038F64
function TASK.REMOVE_COVER_BLOCKING_AREAS_AT_POSITION(x, y, z)
  native.invoke(
    Type.Void, 5533, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void REMOVE_SPECIFIC_COVER_BLOCKING_AREAS(float startX, float startY, float startZ, float endX, float endY, float endZ, BOOL blockObjects, BOOL blockVehicles, BOOL blockMap, BOOL blockPlayer) // 0x1F351CF1C6475734
function TASK.REMOVE_SPECIFIC_COVER_BLOCKING_AREAS(startX, startY, startZ, endX, endY, endZ, blockObjects, blockVehicles, blockMap, blockPlayer)
  native.invoke(
    Type.Void, 5534, false,
    arg(Type.Float, startX),
    arg(Type.Float, startY),
    arg(Type.Float, startZ),
    arg(Type.Float, endX),
    arg(Type.Float, endY),
    arg(Type.Float, endZ),
    arg(Type.Bool, blockObjects),
    arg(Type.Bool, blockVehicles),
    arg(Type.Bool, blockMap),
    arg(Type.Bool, blockPlayer)
  )
end

-- void TASK_START_SCENARIO_IN_PLACE(Ped ped, const char* scenarioName, int unkDelay, BOOL playEnterAnim) // 0x142A02425FF02BD9
--[[
Plays a scenario on a Ped at their current location.

unkDelay - Usually 0 or -1, doesn't seem to have any effect. Might be a delay between sequences.
playEnterAnim - Plays the "Enter" anim if true, otherwise plays the "Exit" anim. Scenarios that don't have any "Enter" anims won't play if this is set to true.

----

From "am_hold_up.ysc.c4" at line 339:

TASK::TASK_START_SCENARIO_IN_PLACE(NETWORK::NET_TO_PED(l_8D._f4), sub_adf(), 0, 1);

I'm unsure of what the last two parameters are, however sub_adf() randomly returns 1 of 3 scenarios, those being:
WORLD_HUMAN_SMOKING
WORLD_HUMAN_HANG_OUT_STREET
WORLD_HUMAN_STAND_MOBILE

This makes sense, as these are what I commonly see when going by a liquor store.
-------------------------
List of scenarioNames: https://pastebin.com/6mrYTdQv
(^ Thank you so fucking much for this)

Also these:
WORLD_FISH_FLEE
DRIVE
WORLD_HUMAN_HIKER
WORLD_VEHICLE_ATTRACTOR
WORLD_VEHICLE_BICYCLE_MOUNTAIN
WORLD_VEHICLE_BIKE_OFF_ROAD_RACE
WORLD_VEHICLE_BIKER
WORLD_VEHICLE_CONSTRUCTION_PASSENGERS
WORLD_VEHICLE_CONSTRUCTION_SOLO
WORLD_VEHICLE_DRIVE_PASSENGERS
WORLD_VEHICLE_DRIVE_SOLO
WORLD_VEHICLE_EMPTY
WORLD_VEHICLE_PARK_PARALLEL
WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN
WORLD_VEHICLE_POLICE_BIKE
WORLD_VEHICLE_POLICE_CAR
WORLD_VEHICLE_POLICE_NEXT_TO_CAR
WORLD_VEHICLE_SALTON_DIRT_BIKE
WORLD_VEHICLE_TRUCK_LOGS

Full list of ped scenarios by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
--]]
function TASK.TASK_START_SCENARIO_IN_PLACE(ped, scenarioName, unkDelay, playEnterAnim)
  native.invoke(
    Type.Void, 5535, false,
    arg(Type.Ped, ped),
    arg(Type.String, scenarioName),
    arg(Type.Int, unkDelay),
    arg(Type.Bool, playEnterAnim)
  )
end

-- void TASK_START_SCENARIO_AT_POSITION(Ped ped, const char* scenarioName, float x, float y, float z, float heading, int duration, BOOL sittingScenario, BOOL teleport) // 0xFA4EFC79F69D4F07
--[[
Full list of ped scenarios by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json

Also a few more listed at TASK::TASK_START_SCENARIO_IN_PLACE just above.
---------------
The first parameter in every scenario has always been a Ped of some sort. The second like TASK_START_SCENARIO_IN_PLACE is the name of the scenario. 

The next 4 parameters were harder to decipher. After viewing "hairdo_shop_mp.ysc.c4", and being confused from seeing the case in other scripts, they passed the first three of the arguments as one array from a function, and it looked like it was obviously x, y, and z.

I haven't seen the sixth parameter go to or over 360, making me believe that it is rotation, but I really can't confirm anything.

I have no idea what the last 3 parameters are, but I'll try to find out.

-going on the last 3 parameters, they appear to always be "0, 0, 1"

p6 -1 also used in scrips

p7 used for sitting scenarios

p8 teleports ped to position
--]]
function TASK.TASK_START_SCENARIO_AT_POSITION(ped, scenarioName, x, y, z, heading, duration, sittingScenario, teleport)
  native.invoke(
    Type.Void, 5536, false,
    arg(Type.Ped, ped),
    arg(Type.String, scenarioName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.Int, duration),
    arg(Type.Bool, sittingScenario),
    arg(Type.Bool, teleport)
  )
end

-- void TASK_USE_NEAREST_SCENARIO_TO_COORD(Ped ped, float x, float y, float z, float distance, int duration) // 0x277F471BA9DB000B
--[[
Updated variables

An alternative to TASK::TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP. Makes the ped walk to the scenario instead.
--]]
function TASK.TASK_USE_NEAREST_SCENARIO_TO_COORD(ped, x, y, z, distance, duration)
  native.invoke(
    Type.Void, 5537, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, distance),
    arg(Type.Int, duration)
  )
end

-- void TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP(Ped ped, float x, float y, float z, float radius, int timeToLeave) // 0x58E2E0F23F6B76C3
function TASK.TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP(ped, x, y, z, radius, timeToLeave)
  native.invoke(
    Type.Void, 5538, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, timeToLeave)
  )
end

-- void TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD(Ped ped, float x, float y, float z, float maxRange, int timeToLeave) // 0x9FDA1B3D7E7028B3
--[[
p5 is always 0 in scripts
--]]
function TASK.TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD(ped, x, y, z, maxRange, timeToLeave)
  native.invoke(
    Type.Void, 5539, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, maxRange),
    arg(Type.Int, timeToLeave)
  )
end

-- void TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD_WARP(Ped ped, float x, float y, float z, float radius, int timeToLeave) // 0x97A28E63F0BA5631
--[[
p5 is always -1 or 0 in scripts
--]]
function TASK.TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD_WARP(ped, x, y, z, radius, timeToLeave)
  native.invoke(
    Type.Void, 5540, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, timeToLeave)
  )
end

-- BOOL DOES_SCENARIO_EXIST_IN_AREA(float x, float y, float z, float radius, BOOL mustBeFree) // 0x5A59271FFADD33C1
function TASK.DOES_SCENARIO_EXIST_IN_AREA(x, y, z, radius, mustBeFree)
  return native.invoke(
    Type.Bool, 5541, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Bool, mustBeFree)
  )
end

-- BOOL DOES_SCENARIO_OF_TYPE_EXIST_IN_AREA(float x, float y, float z, const char* scenarioName, float radius, BOOL mustBeFree) // 0x0A9D0C2A3BBC86C1
function TASK.DOES_SCENARIO_OF_TYPE_EXIST_IN_AREA(x, y, z, scenarioName, radius, mustBeFree)
  return native.invoke(
    Type.Bool, 5542, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.String, scenarioName),
    arg(Type.Float, radius),
    arg(Type.Bool, mustBeFree)
  )
end

-- BOOL IS_SCENARIO_OCCUPIED(float x, float y, float z, float maxRange, BOOL onlyUsersActuallyAtScenario) // 0x788756D73AC2E07C
function TASK.IS_SCENARIO_OCCUPIED(x, y, z, maxRange, onlyUsersActuallyAtScenario)
  return native.invoke(
    Type.Bool, 5543, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, maxRange),
    arg(Type.Bool, onlyUsersActuallyAtScenario)
  )
end

-- BOOL PED_HAS_USE_SCENARIO_TASK(Ped ped) // 0x295E3CCEC879CCD7
function TASK.PED_HAS_USE_SCENARIO_TASK(ped)
  return native.invoke(
    Type.Bool, 5544, false,
    arg(Type.Ped, ped)
  )
end

-- void PLAY_ANIM_ON_RUNNING_SCENARIO(Ped ped, const char* animDict, const char* animName) // 0x748040460F8DF5DC
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function TASK.PLAY_ANIM_ON_RUNNING_SCENARIO(ped, animDict, animName)
  native.invoke(
    Type.Void, 5545, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict),
    arg(Type.String, animName)
  )
end

-- BOOL DOES_SCENARIO_GROUP_EXIST(const char* scenarioGroup) // 0xF9034C136C9E00D3
--[[
Full list of scenario groups used in scripts by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenarioGroupNames.json
Occurrences in the b617d scripts:

"ARMY_GUARD",
"ARMY_HELI",
"Cinema_Downtown",
"Cinema_Morningwood",
"Cinema_Textile",
"City_Banks",
"Countryside_Banks",
"DEALERSHIP",
"GRAPESEED_PLANES",
"KORTZ_SECURITY",
"LOST_BIKERS",
"LSA_Planes",
"LSA_Planes",
"MP_POLICE",
"Observatory_Bikers", 
"POLICE_POUND1",
"POLICE_POUND2",
"POLICE_POUND3",
"POLICE_POUND4",
"POLICE_POUND5"
"QUARRY",
"SANDY_PLANES",
"SCRAP_SECURITY",
"SEW_MACHINE",
"SOLOMON_GATE",
"Triathlon_1_Start", 
"Triathlon_2_Start", 
"Triathlon_3_Start"

Sometimes used with IS_SCENARIO_GROUP_ENABLED:
if (TASK::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") && (!TASK::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {
else if (TASK::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {

--]]
function TASK.DOES_SCENARIO_GROUP_EXIST(scenarioGroup)
  return native.invoke(
    Type.Bool, 5546, false,
    arg(Type.String, scenarioGroup)
  )
end

-- BOOL IS_SCENARIO_GROUP_ENABLED(const char* scenarioGroup) // 0x367A09DED4E05B99
--[[
Full list of scenario groups used in scripts by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenarioGroupNames.json
Occurrences in the b617d scripts: 

 "ARMY_GUARD",
 "ARMY_HELI",
 "BLIMP",
 "Cinema_Downtown",
 "Cinema_Morningwood",
 "Cinema_Textile",
 "City_Banks",
 "Countryside_Banks",
 "DEALERSHIP",
 "KORTZ_SECURITY",
 "LSA_Planes",
 "MP_POLICE",
 "Observatory_Bikers",
 "POLICE_POUND1",
 "POLICE_POUND2",
 "POLICE_POUND3",
 "POLICE_POUND4",
 "POLICE_POUND5",
 "Rampage1",
 "SANDY_PLANES",
 "SCRAP_SECURITY",
 "SEW_MACHINE",
 "SOLOMON_GATE"

Sometimes used with DOES_SCENARIO_GROUP_EXIST:
if (TASK::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") &&   (!TASK::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) {
else if (TASK::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
--]]
function TASK.IS_SCENARIO_GROUP_ENABLED(scenarioGroup)
  return native.invoke(
    Type.Bool, 5547, false,
    arg(Type.String, scenarioGroup)
  )
end

-- void SET_SCENARIO_GROUP_ENABLED(const char* scenarioGroup, BOOL enabled) // 0x02C8E5B49848664E
--[[
Full list of scenario groups used in scripts by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenarioGroupNames.json
Occurrences in the b617d scripts: https://pastebin.com/Tvg2PRHU
--]]
function TASK.SET_SCENARIO_GROUP_ENABLED(scenarioGroup, enabled)
  native.invoke(
    Type.Void, 5548, false,
    arg(Type.String, scenarioGroup),
    arg(Type.Bool, enabled)
  )
end

-- void RESET_SCENARIO_GROUPS_ENABLED() // 0xDD902D0349AFAD3A
function TASK.RESET_SCENARIO_GROUPS_ENABLED()
  native.invoke(
    Type.Void, 5549, false
  )
end

-- void SET_EXCLUSIVE_SCENARIO_GROUP(const char* scenarioGroup) // 0x535E97E1F7FC0C6A
--[[
Full list of scenario groups used in scripts by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenarioGroupNames.json
Groups found in the scripts used with this native:

"AMMUNATION",
"QUARRY",
"Triathlon_1",
"Triathlon_2",
"Triathlon_3"
--]]
function TASK.SET_EXCLUSIVE_SCENARIO_GROUP(scenarioGroup)
  native.invoke(
    Type.Void, 5550, false,
    arg(Type.String, scenarioGroup)
  )
end

-- void RESET_EXCLUSIVE_SCENARIO_GROUP() // 0x4202BBCB8684563D
function TASK.RESET_EXCLUSIVE_SCENARIO_GROUP()
  native.invoke(
    Type.Void, 5551, false
  )
end

-- BOOL IS_SCENARIO_TYPE_ENABLED(const char* scenarioType) // 0x3A815DB3EA088722
--[[
Full list of scenario types used in scripts by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
Occurrences in the b617d scripts:
"PROP_HUMAN_SEAT_CHAIR",
"WORLD_HUMAN_DRINKING",
"WORLD_HUMAN_HANG_OUT_STREET",
"WORLD_HUMAN_SMOKING",
"WORLD_MOUNTAIN_LION_WANDER",
"WORLD_HUMAN_DRINKING"

Sometimes used together with MISC::IS_STRING_NULL_OR_EMPTY in the scripts.

scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.

--]]
function TASK.IS_SCENARIO_TYPE_ENABLED(scenarioType)
  return native.invoke(
    Type.Bool, 5552, false,
    arg(Type.String, scenarioType)
  )
end

-- void SET_SCENARIO_TYPE_ENABLED(const char* scenarioType, BOOL toggle) // 0xEB47EC4E34FB7EE1
--[[
Full list of scenario types used in scripts by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
seems to enable/disable specific scenario-types from happening in the game world.

Here are some scenario types from the scripts:
"WORLD_MOUNTAIN_LION_REST"                                             
"WORLD_MOUNTAIN_LION_WANDER"                                            
"DRIVE"                                                                  
"WORLD_VEHICLE_POLICE_BIKE"                                             
"WORLD_VEHICLE_POLICE_CAR"                                             
"WORLD_VEHICLE_POLICE_NEXT_TO_CAR"                                        
"WORLD_VEHICLE_DRIVE_SOLO"                                                 
"WORLD_VEHICLE_BIKER"                                                      
"WORLD_VEHICLE_DRIVE_PASSENGERS"                                           
"WORLD_VEHICLE_SALTON_DIRT_BIKE"                                           
"WORLD_VEHICLE_BICYCLE_MOUNTAIN"                                           
"PROP_HUMAN_SEAT_CHAIR"                                             
"WORLD_VEHICLE_ATTRACTOR"                                             
"WORLD_HUMAN_LEANING"                                                 
"WORLD_HUMAN_HANG_OUT_STREET"                                        
"WORLD_HUMAN_DRINKING"                                                
"WORLD_HUMAN_SMOKING"                                                
"WORLD_HUMAN_GUARD_STAND"                                            
"WORLD_HUMAN_CLIPBOARD"                                              
"WORLD_HUMAN_HIKER"                                                  
"WORLD_VEHICLE_EMPTY"                                                      
"WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"                                      
"WORLD_HUMAN_PAPARAZZI"                                               
"WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN"                            
"WORLD_VEHICLE_PARK_PARALLEL"                                              
"WORLD_VEHICLE_CONSTRUCTION_SOLO"                               
"WORLD_VEHICLE_CONSTRUCTION_PASSENGERS"                                                                    
"WORLD_VEHICLE_TRUCK_LOGS"

scenarioType could be the same as scenarioName, used in for example TASK::TASK_START_SCENARIO_AT_POSITION.
--]]
function TASK.SET_SCENARIO_TYPE_ENABLED(scenarioType, toggle)
  native.invoke(
    Type.Void, 5553, false,
    arg(Type.String, scenarioType),
    arg(Type.Bool, toggle)
  )
end

-- void RESET_SCENARIO_TYPES_ENABLED() // 0x0D40EE2A7F2B2D6D
function TASK.RESET_SCENARIO_TYPES_ENABLED()
  native.invoke(
    Type.Void, 5554, false
  )
end

-- BOOL IS_PED_ACTIVE_IN_SCENARIO(Ped ped) // 0xAA135F9482C82CC3
function TASK.IS_PED_ACTIVE_IN_SCENARIO(ped)
  return native.invoke(
    Type.Bool, 5555, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_PLAYING_BASE_CLIP_IN_SCENARIO(Ped ped) // 0x621C6E4729388E41
--[[
Used only once (am_mp_property_int)

ped was PLAYER_PED_ID()

Related to CTaskAmbientClips.
--]]
function TASK.IS_PED_PLAYING_BASE_CLIP_IN_SCENARIO(ped)
  return native.invoke(
    Type.Bool, 5556, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_CAN_PLAY_AMBIENT_IDLES(Ped ped, BOOL blockIdleClips, BOOL removeIdleClipIfPlaying) // 0x8FD89A6240813FD0
--[[
Appears only in fm_mission_controller and used only 3 times.

ped was always PLAYER_PED_ID()
p1 was always true
p2 was always true
--]]
function TASK.SET_PED_CAN_PLAY_AMBIENT_IDLES(ped, blockIdleClips, removeIdleClipIfPlaying)
  native.invoke(
    Type.Void, 5557, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, blockIdleClips),
    arg(Type.Bool, removeIdleClipIfPlaying)
  )
end

-- void TASK_COMBAT_HATED_TARGETS_IN_AREA(Ped ped, float x, float y, float z, float radius, int combatFlags) // 0x4CF5F55DAC3280A0
--[[
Despite its name, it only attacks ONE hated target. The one closest to the specified position.
--]]
function TASK.TASK_COMBAT_HATED_TARGETS_IN_AREA(ped, x, y, z, radius, combatFlags)
  native.invoke(
    Type.Void, 5558, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, combatFlags)
  )
end

-- void TASK_COMBAT_HATED_TARGETS_AROUND_PED(Ped ped, float radius, int combatFlags) // 0x7BF835BB9E2698C8
--[[
Despite its name, it only attacks ONE hated target. The one closest hated target.

p2 seems to be always 0
--]]
function TASK.TASK_COMBAT_HATED_TARGETS_AROUND_PED(ped, radius, combatFlags)
  native.invoke(
    Type.Void, 5559, false,
    arg(Type.Ped, ped),
    arg(Type.Float, radius),
    arg(Type.Int, combatFlags)
  )
end

-- void TASK_COMBAT_HATED_TARGETS_AROUND_PED_TIMED(Ped ped, float radius, int time, int combatFlags) // 0x2BBA30B854534A0C
function TASK.TASK_COMBAT_HATED_TARGETS_AROUND_PED_TIMED(ped, radius, time, combatFlags)
  native.invoke(
    Type.Void, 5560, false,
    arg(Type.Ped, ped),
    arg(Type.Float, radius),
    arg(Type.Int, time),
    arg(Type.Int, combatFlags)
  )
end

-- void TASK_THROW_PROJECTILE(Ped ped, float x, float y, float z, int ignoreCollisionEntityIndex, BOOL createInvincibleProjectile) // 0x7285951DBF6B5A51
--[[
In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.

The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates.
---
It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately).
It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover.
----------------------------------------------------
The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.
--]]
function TASK.TASK_THROW_PROJECTILE(ped, x, y, z, ignoreCollisionEntityIndex, createInvincibleProjectile)
  native.invoke(
    Type.Void, 5561, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, ignoreCollisionEntityIndex),
    arg(Type.Bool, createInvincibleProjectile)
  )
end

-- void TASK_SWAP_WEAPON(Ped ped, BOOL drawWeapon) // 0xA21C51255B205245
function TASK.TASK_SWAP_WEAPON(ped, drawWeapon)
  native.invoke(
    Type.Void, 5562, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, drawWeapon)
  )
end

-- void TASK_RELOAD_WEAPON(Ped ped, BOOL drawWeapon) // 0x62D2916F56B9CD2D
--[[
The 2nd param (drawWeapon) is not implemented.

-----------------------------------------------------------------------

The only occurrence I found in a R* script ("assassin_construction.ysc.c4"):

            if (((v_3 < v_4) && (TASK::GET_SCRIPT_TASK_STATUS(PLAYER::PLAYER_PED_ID(), 0x6a67a5cc) != 1)) && (v_5 > v_3)) {
                TASK::TASK_RELOAD_WEAPON(PLAYER::PLAYER_PED_ID(), 1);
            }
--]]
function TASK.TASK_RELOAD_WEAPON(ped, drawWeapon)
  native.invoke(
    Type.Void, 5563, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, drawWeapon)
  )
end

-- BOOL IS_PED_GETTING_UP(Ped ped) // 0x2A74E1D5F2F00EEC
function TASK.IS_PED_GETTING_UP(ped)
  return native.invoke(
    Type.Bool, 5564, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_WRITHE(Ped ped, Ped target, int minFireLoops, int startState, BOOL forceShootOnGround, int shootFromGroundTimer) // 0xCDDC2B77CE54AC6E
--[[
EX: Function.Call(Ped1, Ped2, Time, 0);

The last parameter is always 0 for some reason I do not know. The first parameter is the pedestrian who will writhe to the pedestrian in the other parameter. The third paremeter is how long until the Writhe task ends. When the task ends, the ped will die. If set to -1, he will not die automatically, and the task will continue until something causes it to end. This can be being touched by an entity, being shot, explosion, going into ragdoll, having task cleared. Anything that ends the current task will kill the ped at this point.



Third parameter does not appear to be time. The last parameter is not implemented (It's not used, regardless of value).
--]]
function TASK.TASK_WRITHE(ped, target, minFireLoops, startState, forceShootOnGround, shootFromGroundTimer)
  native.invoke(
    Type.Void, 5565, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Int, minFireLoops),
    arg(Type.Int, startState),
    arg(Type.Bool, forceShootOnGround),
    arg(Type.Int, shootFromGroundTimer)
  )
end

-- BOOL IS_PED_IN_WRITHE(Ped ped) // 0xDEB6D52126E7D640
--[[
This native checks if a ped is on the ground, in pain from a (gunshot) wound.
Returns `true` if the ped is in writhe, `false` otherwise.
--]]
function TASK.IS_PED_IN_WRITHE(ped)
  return native.invoke(
    Type.Bool, 5566, false,
    arg(Type.Ped, ped)
  )
end

-- void OPEN_PATROL_ROUTE(const char* patrolRoute) // 0xA36BFB5EE89F3D82
--[[
 patrolRoutes found in the b617d scripts:
 "miss_Ass0",
 "miss_Ass1",
 "miss_Ass2",
 "miss_Ass3",
 "miss_Ass4",
 "miss_Ass5",
 "miss_Ass6",
 "MISS_PATROL_6",
 "MISS_PATROL_7",
 "MISS_PATROL_8",
 "MISS_PATROL_9",
 "miss_Tower_01",
 "miss_Tower_02",
 "miss_Tower_03",
 "miss_Tower_04",
 "miss_Tower_05",
 "miss_Tower_06",
 "miss_Tower_07",
 "miss_Tower_08",
 "miss_Tower_10"
--]]
function TASK.OPEN_PATROL_ROUTE(patrolRoute)
  native.invoke(
    Type.Void, 5567, false,
    arg(Type.String, patrolRoute)
  )
end

-- void CLOSE_PATROL_ROUTE() // 0xB043ECA801B8CBC1
function TASK.CLOSE_PATROL_ROUTE()
  native.invoke(
    Type.Void, 5568, false
  )
end

-- void ADD_PATROL_ROUTE_NODE(int nodeId, const char* nodeType, float posX, float posY, float posZ, float headingX, float headingY, float headingZ, int duration) // 0x8EDF950167586B7C
--[[
Example: 
TASK::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", -193.4915, -2378.864990234375, 10.9719, -193.4915, -2378.864990234375, 10.9719, 3000);

p0 is between 0 and 4 in the scripts.

p1 is "WORLD_HUMAN_GUARD_STAND" or "StandGuard".

p2, p3 and p4 is only one parameter sometimes in the scripts. Most likely a Vector3 hence p2, p3 and p4 are coordinates. 
Examples: 
TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_739[7/*3*/], 0.0, 0.0, 0.0, 0);

TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_B0[17/*44*/]._f3, l_B0[17/*44*/]._f3, 2000);

p5, p6 and p7 are for example set to: 1599.0406494140625, 2713.392578125, 44.4309.

p8 is an int, often random set to for example: MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000).
--]]
function TASK.ADD_PATROL_ROUTE_NODE(nodeId, nodeType, posX, posY, posZ, headingX, headingY, headingZ, duration)
  native.invoke(
    Type.Void, 5569, false,
    arg(Type.Int, nodeId),
    arg(Type.String, nodeType),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, headingX),
    arg(Type.Float, headingY),
    arg(Type.Float, headingZ),
    arg(Type.Int, duration)
  )
end

-- void ADD_PATROL_ROUTE_LINK(int nodeId1, int nodeId2) // 0x23083260DEC3A551
function TASK.ADD_PATROL_ROUTE_LINK(nodeId1, nodeId2)
  native.invoke(
    Type.Void, 5570, false,
    arg(Type.Int, nodeId1),
    arg(Type.Int, nodeId2)
  )
end

-- void CREATE_PATROL_ROUTE() // 0xAF8A443CCC8018DC
function TASK.CREATE_PATROL_ROUTE()
  native.invoke(
    Type.Void, 5571, false
  )
end

-- void DELETE_PATROL_ROUTE(const char* patrolRoute) // 0x7767DD9D65E91319
--[[
From the b617d scripts:

TASK::DELETE_PATROL_ROUTE("miss_merc0");
TASK::DELETE_PATROL_ROUTE("miss_merc1");
TASK::DELETE_PATROL_ROUTE("miss_merc2");
TASK::DELETE_PATROL_ROUTE("miss_dock");
--]]
function TASK.DELETE_PATROL_ROUTE(patrolRoute)
  native.invoke(
    Type.Void, 5572, false,
    arg(Type.String, patrolRoute)
  )
end

-- BOOL GET_PATROL_TASK_INFO(Ped ped, int* timeLeftAtNode, int* nodeId) // 0x52F734CEBE20DFBA
function TASK.GET_PATROL_TASK_INFO(ped, timeLeftAtNode, nodeId)
  return native.invoke(
    Type.Bool, 5573, false,
    arg(Type.Ped, ped),
    ref(Type.Int, timeLeftAtNode),
    ref(Type.Int, nodeId)
  )
end

-- void TASK_PATROL(Ped ped, const char* patrolRouteName, int alertState, BOOL canChatToPeds, BOOL useHeadLookAt) // 0xBDA5DF49D080FE4E
--[[
After looking at some scripts the second parameter seems to be an id of some kind. Here are some I found from some R* scripts:

"miss_Tower_01" (this went from 01 - 10)
"miss_Ass0" (0, 4, 6, 3)
"MISS_PATROL_8"

I think they're patrol routes, but I'm not sure. And I believe the 3rd parameter is a BOOL, but I can't confirm other than only seeing 0 and 1 being passed.


As far as I can see the patrol routes names such as "miss_Ass0" have been defined earlier in the scripts. This leads me to believe we can defined our own new patrol routes by following the same approach. 
From the scripts

    TASK::OPEN_PATROL_ROUTE("miss_Ass0");
    TASK::ADD_PATROL_ROUTE_NODE(0, "WORLD_HUMAN_GUARD_STAND", l_738[0/*3*/], -139.4076690673828, -993.4732055664062, 26.2754, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
    TASK::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_738[1/*3*/], -116.1391830444336, -987.4984130859375, 26.38541030883789, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
    TASK::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", l_738[2/*3*/], -128.46847534179688, -979.0340576171875, 26.2754, MISC::GET_RANDOM_INT_IN_RANGE(5000, 10000));
    TASK::ADD_PATROL_ROUTE_LINK(0, 1);
    TASK::ADD_PATROL_ROUTE_LINK(1, 2);
    TASK::ADD_PATROL_ROUTE_LINK(2, 0);
    TASK::CLOSE_PATROL_ROUTE();
    TASK::CREATE_PATROL_ROUTE();


--]]
function TASK.TASK_PATROL(ped, patrolRouteName, alertState, canChatToPeds, useHeadLookAt)
  native.invoke(
    Type.Void, 5574, false,
    arg(Type.Ped, ped),
    arg(Type.String, patrolRouteName),
    arg(Type.Int, alertState),
    arg(Type.Bool, canChatToPeds),
    arg(Type.Bool, useHeadLookAt)
  )
end

-- void TASK_STAY_IN_COVER(Ped ped) // 0xE5DA8615A6180789
--[[
Makes the ped run to take cover
--]]
function TASK.TASK_STAY_IN_COVER(ped)
  native.invoke(
    Type.Void, 5575, false,
    arg(Type.Ped, ped)
  )
end

-- void ADD_VEHICLE_SUBTASK_ATTACK_COORD(Ped ped, float x, float y, float z) // 0x5CF0D8F9BBA0DD75
--[[
x, y, z: offset in world coords from some entity.
--]]
function TASK.ADD_VEHICLE_SUBTASK_ATTACK_COORD(ped, x, y, z)
  native.invoke(
    Type.Void, 5576, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void ADD_VEHICLE_SUBTASK_ATTACK_PED(Ped ped, Ped target) // 0x85F462BADC7DA47F
function TASK.ADD_VEHICLE_SUBTASK_ATTACK_PED(ped, target)
  native.invoke(
    Type.Void, 5577, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target)
  )
end

-- void TASK_VEHICLE_SHOOT_AT_PED(Ped ped, Ped target, float fireTolerance) // 0x10AB107B887214D8
function TASK.TASK_VEHICLE_SHOOT_AT_PED(ped, target, fireTolerance)
  native.invoke(
    Type.Void, 5578, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Float, fireTolerance)
  )
end

-- void TASK_VEHICLE_AIM_AT_PED(Ped ped, Ped target) // 0xE41885592B08B097
function TASK.TASK_VEHICLE_AIM_AT_PED(ped, target)
  native.invoke(
    Type.Void, 5579, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target)
  )
end

-- void TASK_VEHICLE_SHOOT_AT_COORD(Ped ped, float x, float y, float z, float fireTolerance) // 0x5190796ED39C9B6D
function TASK.TASK_VEHICLE_SHOOT_AT_COORD(ped, x, y, z, fireTolerance)
  native.invoke(
    Type.Void, 5580, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, fireTolerance)
  )
end

-- void TASK_VEHICLE_AIM_AT_COORD(Ped ped, float x, float y, float z) // 0x447C1E9EF844BC0F
function TASK.TASK_VEHICLE_AIM_AT_COORD(ped, x, y, z)
  native.invoke(
    Type.Void, 5581, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void TASK_VEHICLE_GOTO_NAVMESH(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, int behaviorFlag, float stoppingRange) // 0x195AEEB13CEFE2EE
--[[
Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.

WARNING:
A behaviorFlag value of 0 will result in a clunky, stupid driver!

Recommended settings:
speed = 30.0f,
behaviorFlag = 156, 
stoppingRange = 5.0f;

If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption. 

If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.

EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/  
--]]
function TASK.TASK_VEHICLE_GOTO_NAVMESH(ped, vehicle, x, y, z, speed, behaviorFlag, stoppingRange)
  native.invoke(
    Type.Void, 5582, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, speed),
    arg(Type.Int, behaviorFlag),
    arg(Type.Float, stoppingRange)
  )
end

-- void TASK_GO_TO_COORD_WHILE_AIMING_AT_COORD(Ped ped, float x, float y, float z, float aimAtX, float aimAtY, float aimAtZ, float moveBlendRatio, BOOL shoot, float targetRadius, float slowDistance, BOOL useNavMesh, int navFlags, BOOL instantBlendToAim, Hash firingPattern) // 0x11315AB3385B8AC0
--[[
movement_speed: mostly 2f, but also 1/1.2f, etc.
p8: always false
p9: 2f
p10: 0.5f
p11: true
p12: 0 / 512 / 513, etc.
p13: 0
firing_pattern: ${firing_pattern_full_auto}, 0xC6EE6B4C
--]]
function TASK.TASK_GO_TO_COORD_WHILE_AIMING_AT_COORD(ped, x, y, z, aimAtX, aimAtY, aimAtZ, moveBlendRatio, shoot, targetRadius, slowDistance, useNavMesh, navFlags, instantBlendToAim, firingPattern)
  native.invoke(
    Type.Void, 5583, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, aimAtX),
    arg(Type.Float, aimAtY),
    arg(Type.Float, aimAtZ),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Bool, shoot),
    arg(Type.Float, targetRadius),
    arg(Type.Float, slowDistance),
    arg(Type.Bool, useNavMesh),
    arg(Type.Int, navFlags),
    arg(Type.Bool, instantBlendToAim),
    arg(Type.Hash, firingPattern)
  )
end

-- void TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY(Ped ped, float x, float y, float z, Entity aimAtID, float moveBlendRatio, BOOL shoot, float targetRadius, float slowDistance, BOOL useNavMesh, int navFlags, BOOL instantBlendToAim, Hash firingPattern, int time) // 0xB2A16444EAD9AE47
function TASK.TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY(ped, x, y, z, aimAtID, moveBlendRatio, shoot, targetRadius, slowDistance, useNavMesh, navFlags, instantBlendToAim, firingPattern, time)
  native.invoke(
    Type.Void, 5584, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Entity, aimAtID),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Bool, shoot),
    arg(Type.Float, targetRadius),
    arg(Type.Float, slowDistance),
    arg(Type.Bool, useNavMesh),
    arg(Type.Int, navFlags),
    arg(Type.Bool, instantBlendToAim),
    arg(Type.Hash, firingPattern),
    arg(Type.Int, time)
  )
end

-- void TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(Ped pedHandle, float goToLocationX, float goToLocationY, float goToLocationZ, float focusLocationX, float focusLocationY, float focusLocationZ, float speed, BOOL shootAtEnemies, float distanceToStopAt, float noRoadsDistance, BOOL useNavMesh, int navFlags, int taskFlags, Hash firingPattern) // 0xA55547801EB331FC
--[[
The ped will walk or run towards goToLocation, aiming towards goToLocation or focusLocation (depending on the aimingFlag) and shooting if shootAtEnemies = true to any enemy in his path.

If the ped is closer than noRoadsDistance, the ped will ignore pathing/navmesh and go towards goToLocation directly. This could cause the ped to get stuck behind tall walls if the goToLocation is on the other side. To avoid this, use 0.0f and the ped will always use pathing/navmesh to reach his destination.

If the speed is set to 0.0f, the ped will just stand there while aiming, if set to 1.0f he will walk while aiming, 2.0f will run while aiming.

The ped will stop aiming when he is closer than distanceToStopAt to goToLocation.

I still can't figure out what unkTrue is used for. I don't notice any difference if I set it to false but in the decompiled scripts is always true.

I think that unkFlag, like the driving styles, could be a flag that "work as a list of 32 bits converted to a decimal integer. Each bit acts as a flag, and enables or disables a function". What leads me to this conclusion is the fact that in the decompiled scripts, unkFlag takes values like: 0, 1, 5 (101 in binary) and 4097 (4096 + 1 or 1000000000001 in binary). For now, I don't know what behavior enable or disable this possible flag so I leave it at 0.

Note: After some testing, using unkFlag = 16 (0x10) enables the use of sidewalks while moving towards goToLocation.

The aimingFlag takes 2 values: 0 to aim at the focusLocation, 1 to aim at where the ped is heading (goToLocation).

Example:

enum AimFlag
{
   AimAtFocusLocation,
   AimAtGoToLocation
};

Vector3 goToLocation1 = { 996.2867f, 0, -2143.044f, 0, 28.4763f, 0 }; // remember the padding.

Vector3 goToLocation2 = { 990.2867f, 0, -2140.044f, 0, 28.4763f, 0 }; // remember the padding.

Vector3 focusLocation = { 994.3478f, 0, -2136.118f, 0, 29.2463f, 0 }; // the coord z should be a little higher, around +1.0f to avoid aiming at the ground

// 1st example
TASK::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation1.x, goToLocation1.y, goToLocation1.z, focusLocation.x, focusLocation.y, focusLocation.z, 2.0f /*run*/, true /*shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtGoToLocation, -957453492 /*FullAuto pattern*/);

// 2nd example
TASK::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation2.x, goToLocation2.y, goToLocation2.z, focusLocation.x, focusLocation.y, focusLocation.z, 1.0f /*walk*/, false /*don't shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtFocusLocation, -957453492 /*FullAuto pattern*/);


1st example: The ped (pedhandle) will run towards goToLocation1. While running and aiming towards goToLocation1, the ped will shoot on sight to any enemy in his path, using "FullAuto" firing pattern. The ped will stop once he is closer than distanceToStopAt to goToLocation1.

2nd example: The ped will walk towards goToLocation2. This time, while walking towards goToLocation2 and aiming at focusLocation, the ped will point his weapon on sight to any enemy in his path without shooting. The ped will stop once he is closer than distanceToStopAt to goToLocation2.
--]]
function TASK.TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocationX, goToLocationY, goToLocationZ, focusLocationX, focusLocationY, focusLocationZ, speed, shootAtEnemies, distanceToStopAt, noRoadsDistance, useNavMesh, navFlags, taskFlags, firingPattern)
  native.invoke(
    Type.Void, 5585, false,
    arg(Type.Ped, pedHandle),
    arg(Type.Float, goToLocationX),
    arg(Type.Float, goToLocationY),
    arg(Type.Float, goToLocationZ),
    arg(Type.Float, focusLocationX),
    arg(Type.Float, focusLocationY),
    arg(Type.Float, focusLocationZ),
    arg(Type.Float, speed),
    arg(Type.Bool, shootAtEnemies),
    arg(Type.Float, distanceToStopAt),
    arg(Type.Float, noRoadsDistance),
    arg(Type.Bool, useNavMesh),
    arg(Type.Int, navFlags),
    arg(Type.Int, taskFlags),
    arg(Type.Hash, firingPattern)
  )
end

-- void TASK_GO_TO_ENTITY_WHILE_AIMING_AT_COORD(Ped ped, Entity entity, float aimX, float aimY, float aimZ, float moveBlendRatio, BOOL shoot, float targetRadius, float slowDistance, BOOL useNavMesh, BOOL instantBlendToAim, Hash firingPattern) // 0x04701832B739DCE5
function TASK.TASK_GO_TO_ENTITY_WHILE_AIMING_AT_COORD(ped, entity, aimX, aimY, aimZ, moveBlendRatio, shoot, targetRadius, slowDistance, useNavMesh, instantBlendToAim, firingPattern)
  native.invoke(
    Type.Void, 5586, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity),
    arg(Type.Float, aimX),
    arg(Type.Float, aimY),
    arg(Type.Float, aimZ),
    arg(Type.Float, moveBlendRatio),
    arg(Type.Bool, shoot),
    arg(Type.Float, targetRadius),
    arg(Type.Float, slowDistance),
    arg(Type.Bool, useNavMesh),
    arg(Type.Bool, instantBlendToAim),
    arg(Type.Hash, firingPattern)
  )
end

-- void TASK_GO_TO_ENTITY_WHILE_AIMING_AT_ENTITY(Ped ped, Entity entityToWalkTo, Entity entityToAimAt, float speed, BOOL shootatEntity, float targetRadius, float slowDistance, BOOL useNavMesh, BOOL instantBlendToAim, Hash firingPattern) // 0x97465886D35210E9
--[[
shootatEntity:
If true, peds will shoot at Entity till it is dead.
If false, peds will just walk till they reach the entity and will cease shooting.
--]]
function TASK.TASK_GO_TO_ENTITY_WHILE_AIMING_AT_ENTITY(ped, entityToWalkTo, entityToAimAt, speed, shootatEntity, targetRadius, slowDistance, useNavMesh, instantBlendToAim, firingPattern)
  native.invoke(
    Type.Void, 5587, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entityToWalkTo),
    arg(Type.Entity, entityToAimAt),
    arg(Type.Float, speed),
    arg(Type.Bool, shootatEntity),
    arg(Type.Float, targetRadius),
    arg(Type.Float, slowDistance),
    arg(Type.Bool, useNavMesh),
    arg(Type.Bool, instantBlendToAim),
    arg(Type.Hash, firingPattern)
  )
end

-- void SET_HIGH_FALL_TASK(Ped ped, int minTime, int maxTime, int entryType) // 0x8C825BDC7741D37C
--[[
Makes the ped ragdoll like when falling from a great height
--]]
function TASK.SET_HIGH_FALL_TASK(ped, minTime, maxTime, entryType)
  native.invoke(
    Type.Void, 5588, false,
    arg(Type.Ped, ped),
    arg(Type.Int, minTime),
    arg(Type.Int, maxTime),
    arg(Type.Int, entryType)
  )
end

-- void REQUEST_WAYPOINT_RECORDING(const char* name) // 0x9EEFB62EB27B5792
--[[
Full list of waypoint recordings by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/waypointRecordings.json
For a full list of the points, see here: goo.gl/wIH0vn

Max number of loaded recordings is 32.
--]]
function TASK.REQUEST_WAYPOINT_RECORDING(name)
  native.invoke(
    Type.Void, 5589, false,
    arg(Type.String, name)
  )
end

-- BOOL GET_IS_WAYPOINT_RECORDING_LOADED(const char* name) // 0xCB4E8BE8A0063C5D
--[[
Full list of waypoint recordings by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/waypointRecordings.json
--]]
function TASK.GET_IS_WAYPOINT_RECORDING_LOADED(name)
  return native.invoke(
    Type.Bool, 5590, false,
    arg(Type.String, name)
  )
end

-- void REMOVE_WAYPOINT_RECORDING(const char* name) // 0xFF1B8B4AA1C25DC8
--[[
Full list of waypoint recordings by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/waypointRecordings.json
--]]
function TASK.REMOVE_WAYPOINT_RECORDING(name)
  native.invoke(
    Type.Void, 5591, false,
    arg(Type.String, name)
  )
end

-- BOOL WAYPOINT_RECORDING_GET_NUM_POINTS(const char* name, int* points) // 0x5343532C01A07234
--[[
Full list of waypoint recordings by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/waypointRecordings.json
For a full list of the points, see here: goo.gl/wIH0vn
--]]
function TASK.WAYPOINT_RECORDING_GET_NUM_POINTS(name, points)
  return native.invoke(
    Type.Bool, 5592, false,
    arg(Type.String, name),
    ref(Type.Int, points)
  )
end

-- BOOL WAYPOINT_RECORDING_GET_COORD(const char* name, int point, Vector3* coord) // 0x2FB897405C90B361
--[[
Full list of waypoint recordings by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/waypointRecordings.json
For a full list of the points, see here: goo.gl/wIH0vn
--]]
function TASK.WAYPOINT_RECORDING_GET_COORD(name, point, coord)
  return native.invoke(
    Type.Bool, 5593, false,
    arg(Type.String, name),
    arg(Type.Int, point),
    ref(Type.Vector3, coord)
  )
end

-- float WAYPOINT_RECORDING_GET_SPEED_AT_POINT(const char* name, int point) // 0x005622AEBC33ACA9
--[[
Full list of waypoint recordings by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/waypointRecordings.json
--]]
function TASK.WAYPOINT_RECORDING_GET_SPEED_AT_POINT(name, point)
  return native.invoke(
    Type.Float, 5594, false,
    arg(Type.String, name),
    arg(Type.Int, point)
  )
end

-- BOOL WAYPOINT_RECORDING_GET_CLOSEST_WAYPOINT(const char* name, float x, float y, float z, int* point) // 0xB629A298081F876F
--[[
Full list of waypoint recordings by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/waypointRecordings.json
For a full list of the points, see here: goo.gl/wIH0vn
--]]
function TASK.WAYPOINT_RECORDING_GET_CLOSEST_WAYPOINT(name, x, y, z, point)
  return native.invoke(
    Type.Bool, 5595, false,
    arg(Type.String, name),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Int, point)
  )
end

-- void TASK_FOLLOW_WAYPOINT_RECORDING(Ped ped, const char* name, int p2, int p3, int p4) // 0x0759591819534F7B
function TASK.TASK_FOLLOW_WAYPOINT_RECORDING(ped, name, p2, p3, p4)
  native.invoke(
    Type.Void, 5596, false,
    arg(Type.Ped, ped),
    arg(Type.String, name),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Int, p4)
  )
end

-- BOOL IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_PED(Ped ped) // 0xE03B3F2D3DC59B64
function TASK.IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_PED(ped)
  return native.invoke(
    Type.Bool, 5597, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_WAYPOINT_PROGRESS(Ped ped) // 0x2720AAA75001E094
function TASK.GET_PED_WAYPOINT_PROGRESS(ped)
  return native.invoke(
    Type.Int, 5598, false,
    arg(Type.Ped, ped)
  )
end

-- float GET_PED_WAYPOINT_DISTANCE(Any p0) // 0xE6A877C64CAF1BC5
function TASK.GET_PED_WAYPOINT_DISTANCE(p0)
  return native.invoke(
    Type.Float, 5599, false,
    arg(Type.Any, p0)
  )
end

-- BOOL SET_PED_WAYPOINT_ROUTE_OFFSET(Ped ped, float x, float y, float z) // 0xED98E10B0AFCE4B4
function TASK.SET_PED_WAYPOINT_ROUTE_OFFSET(ped, x, y, z)
  return native.invoke(
    Type.Bool, 5600, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- float GET_WAYPOINT_DISTANCE_ALONG_ROUTE(const char* name, int point) // 0xA5B769058763E497
function TASK.GET_WAYPOINT_DISTANCE_ALONG_ROUTE(name, point)
  return native.invoke(
    Type.Float, 5601, false,
    arg(Type.String, name),
    arg(Type.Int, point)
  )
end

-- BOOL WAYPOINT_PLAYBACK_GET_IS_PAUSED(Any p0) // 0x701375A7D43F01CB
function TASK.WAYPOINT_PLAYBACK_GET_IS_PAUSED(p0)
  return native.invoke(
    Type.Bool, 5602, false,
    arg(Type.Any, p0)
  )
end

-- void WAYPOINT_PLAYBACK_PAUSE(Any p0, BOOL p1, BOOL p2) // 0x0F342546AA06FED5
function TASK.WAYPOINT_PLAYBACK_PAUSE(p0, p1, p2)
  native.invoke(
    Type.Void, 5603, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void WAYPOINT_PLAYBACK_RESUME(Any p0, BOOL p1, Any p2, Any p3) // 0x244F70C84C547D2D
function TASK.WAYPOINT_PLAYBACK_RESUME(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5604, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void WAYPOINT_PLAYBACK_OVERRIDE_SPEED(Any p0, float p1, BOOL p2) // 0x7D7D2B47FA788E85
function TASK.WAYPOINT_PLAYBACK_OVERRIDE_SPEED(p0, p1, p2)
  native.invoke(
    Type.Void, 5605, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1),
    arg(Type.Bool, p2)
  )
end

-- void WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED(Any p0) // 0x6599D834B12D0800
function TASK.WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED(p0)
  native.invoke(
    Type.Void, 5606, false,
    arg(Type.Any, p0)
  )
end

-- void USE_WAYPOINT_RECORDING_AS_ASSISTED_MOVEMENT_ROUTE(const char* name, BOOL p1, float p2, float p3) // 0x5A353B8E6B1095B5
function TASK.USE_WAYPOINT_RECORDING_AS_ASSISTED_MOVEMENT_ROUTE(name, p1, p2, p3)
  native.invoke(
    Type.Void, 5607, false,
    arg(Type.String, name),
    arg(Type.Bool, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void WAYPOINT_PLAYBACK_START_AIMING_AT_PED(Ped ped, Ped target, BOOL p2) // 0x20E330937C399D29
function TASK.WAYPOINT_PLAYBACK_START_AIMING_AT_PED(ped, target, p2)
  native.invoke(
    Type.Void, 5608, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Bool, p2)
  )
end

-- void WAYPOINT_PLAYBACK_START_AIMING_AT_COORD(Ped ped, float x, float y, float z, BOOL p4) // 0x8968400D900ED8B3
function TASK.WAYPOINT_PLAYBACK_START_AIMING_AT_COORD(ped, x, y, z, p4)
  native.invoke(
    Type.Void, 5609, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p4)
  )
end

-- void WAYPOINT_PLAYBACK_START_SHOOTING_AT_PED(Ped ped, Ped ped2, BOOL p2, BOOL p3) // 0xE70BA7B90F8390DC
function TASK.WAYPOINT_PLAYBACK_START_SHOOTING_AT_PED(ped, ped2, p2, p3)
  native.invoke(
    Type.Void, 5610, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, ped2),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void WAYPOINT_PLAYBACK_START_SHOOTING_AT_COORD(Ped ped, float x, float y, float z, BOOL p4, Hash firingPattern) // 0x057A25CFCC9DB671
function TASK.WAYPOINT_PLAYBACK_START_SHOOTING_AT_COORD(ped, x, y, z, p4, firingPattern)
  native.invoke(
    Type.Void, 5611, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p4),
    arg(Type.Hash, firingPattern)
  )
end

-- void WAYPOINT_PLAYBACK_STOP_AIMING_OR_SHOOTING(Ped ped) // 0x47EFA040EBB8E2EA
function TASK.WAYPOINT_PLAYBACK_STOP_AIMING_OR_SHOOTING(ped)
  native.invoke(
    Type.Void, 5612, false,
    arg(Type.Ped, ped)
  )
end

-- void ASSISTED_MOVEMENT_REQUEST_ROUTE(const char* route) // 0x817268968605947A
--[[
Routes: "1_FIBStairs", "2_FIBStairs", "3_FIBStairs", "4_FIBStairs", "5_FIBStairs", "5_TowardsFire", "6a_FIBStairs", "7_FIBStairs", "8_FIBStairs", "Aprtmnt_1", "AssAfterLift", "ATM_1", "coroner2", "coroner_stairs", "f5_jimmy1", "fame1", "family5b", "family5c", "Family5d", "family5d", "FIB_Glass1", "FIB_Glass2", "FIB_Glass3", "finaBroute1A", "finalb1st", "finalB1sta", "finalbround", "finalbroute2", "Hairdresser1", "jan_foyet_ft_door", "Jo_3", "Lemar1", "Lemar2", "mansion_1", "Mansion_1", "pols_1", "pols_2", "pols_3", "pols_4", "pols_5", "pols_6", "pols_7", "pols_8", "Pro_S1", "Pro_S1a", "Pro_S2", "Towards_case", "trev_steps", "tunrs1", "tunrs2", "tunrs3", "Wave01457s"
--]]
function TASK.ASSISTED_MOVEMENT_REQUEST_ROUTE(route)
  native.invoke(
    Type.Void, 5613, false,
    arg(Type.String, route)
  )
end

-- void ASSISTED_MOVEMENT_REMOVE_ROUTE(const char* route) // 0x3548536485DD792B
function TASK.ASSISTED_MOVEMENT_REMOVE_ROUTE(route)
  native.invoke(
    Type.Void, 5614, false,
    arg(Type.String, route)
  )
end

-- BOOL ASSISTED_MOVEMENT_IS_ROUTE_LOADED(const char* route) // 0x60F9A4393A21F741
function TASK.ASSISTED_MOVEMENT_IS_ROUTE_LOADED(route)
  return native.invoke(
    Type.Bool, 5615, false,
    arg(Type.String, route)
  )
end

-- void ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES(const char* route, int props) // 0xD5002D78B7162E1B
function TASK.ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES(route, props)
  native.invoke(
    Type.Void, 5616, false,
    arg(Type.String, route),
    arg(Type.Int, props)
  )
end

-- void ASSISTED_MOVEMENT_OVERRIDE_LOAD_DISTANCE_THIS_FRAME(float dist) // 0x13945951E16EF912
function TASK.ASSISTED_MOVEMENT_OVERRIDE_LOAD_DISTANCE_THIS_FRAME(dist)
  native.invoke(
    Type.Void, 5617, false,
    arg(Type.Float, dist)
  )
end

-- void TASK_VEHICLE_FOLLOW_WAYPOINT_RECORDING(Ped ped, Vehicle vehicle, const char* WPRecording, int p3, int p4, int p5, int p6, float p7, BOOL p8, float p9) // 0x3123FAA6DB1CF7ED
--[[


p2 = Waypoint recording string (found in update\update.rpf\x64\levels\gta5\waypointrec.rpf
p3 = 786468
p4 = 0
p5 = 16
p6 = -1 (angle?)
p7/8/9 = usually v3.zero
p10 = bool (repeat?)
p11 = 1073741824

Full list of waypoint recordings by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/waypointRecordings.json
--]]
function TASK.TASK_VEHICLE_FOLLOW_WAYPOINT_RECORDING(ped, vehicle, WPRecording, p3, p4, p5, p6, p7, p8, p9)
  native.invoke(
    Type.Void, 5618, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.String, WPRecording),
    arg(Type.Int, p3),
    arg(Type.Int, p4),
    arg(Type.Int, p5),
    arg(Type.Int, p6),
    arg(Type.Float, p7),
    arg(Type.Bool, p8),
    arg(Type.Float, p9)
  )
end

-- BOOL IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_VEHICLE(Vehicle vehicle) // 0xF5134943EA29868C
function TASK.IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_VEHICLE(vehicle)
  return native.invoke(
    Type.Bool, 5619, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- int GET_VEHICLE_WAYPOINT_PROGRESS(Vehicle vehicle) // 0x9824CFF8FC66E159
function TASK.GET_VEHICLE_WAYPOINT_PROGRESS(vehicle)
  return native.invoke(
    Type.Int, 5620, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- int GET_VEHICLE_WAYPOINT_TARGET_POINT(Vehicle vehicle) // 0x416B62AC8B9E5BBD
function TASK.GET_VEHICLE_WAYPOINT_TARGET_POINT(vehicle)
  return native.invoke(
    Type.Int, 5621, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void VEHICLE_WAYPOINT_PLAYBACK_PAUSE(Vehicle vehicle) // 0x8A4E6AC373666BC5
function TASK.VEHICLE_WAYPOINT_PLAYBACK_PAUSE(vehicle)
  native.invoke(
    Type.Void, 5622, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void VEHICLE_WAYPOINT_PLAYBACK_RESUME(Vehicle vehicle) // 0xDC04FCAA7839D492
function TASK.VEHICLE_WAYPOINT_PLAYBACK_RESUME(vehicle)
  native.invoke(
    Type.Void, 5623, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void VEHICLE_WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED(Vehicle vehicle) // 0x5CEB25A7D2848963
function TASK.VEHICLE_WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED(vehicle)
  native.invoke(
    Type.Void, 5624, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void VEHICLE_WAYPOINT_PLAYBACK_OVERRIDE_SPEED(Vehicle vehicle, float speed) // 0x121F0593E0A431D7
function TASK.VEHICLE_WAYPOINT_PLAYBACK_OVERRIDE_SPEED(vehicle, speed)
  native.invoke(
    Type.Void, 5625, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, speed)
  )
end

-- void TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(Ped ped, BOOL toggle) // 0x90D2156198831D69
--[[
I cant believe I have to define this, this is one of the best natives.

It makes the ped ignore basically all shocking events around it. Occasionally the ped may comment or gesture, but other than that they just continue their daily activities. This includes shooting and wounding the ped. And - most importantly - they do not flee.

Since it is a task, every time the native is called the ped will stop for a moment. 
--]]
function TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, toggle)
  native.invoke(
    Type.Void, 5626, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void TASK_FORCE_MOTION_STATE(Ped ped, Hash state, BOOL forceRestart) // 0x4F056E1AFFEF17AB
--[[
p2 always false

[30/03/2017] ins1de :

See FORCE_PED_MOTION_STATE
--]]
function TASK.TASK_FORCE_MOTION_STATE(ped, state, forceRestart)
  native.invoke(
    Type.Void, 5627, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, state),
    arg(Type.Bool, forceRestart)
  )
end

-- void TASK_MOVE_NETWORK_BY_NAME(Ped ped, const char* task, float multiplier, BOOL allowOverrideCloneUpdate, const char* animDict, int flags) // 0x2D537BA194896636
--[[
Example:
TASK::TASK_MOVE_NETWORK_BY_NAME(PLAYER::PLAYER_PED_ID(), "arm_wrestling_sweep_paired_a_rev3", 0.0f, true, "mini@arm_wrestling", 0);
--]]
function TASK.TASK_MOVE_NETWORK_BY_NAME(ped, task, multiplier, allowOverrideCloneUpdate, animDict, flags)
  native.invoke(
    Type.Void, 5628, false,
    arg(Type.Ped, ped),
    arg(Type.String, task),
    arg(Type.Float, multiplier),
    arg(Type.Bool, allowOverrideCloneUpdate),
    arg(Type.String, animDict),
    arg(Type.Int, flags)
  )
end

-- void TASK_MOVE_NETWORK_ADVANCED_BY_NAME(Ped ped, const char* network, float x, float y, float z, float rotX, float rotY, float rotZ, int rotOrder, float blendDuration, BOOL allowOverrideCloneUpdate, const char* animDict, int flags) // 0xD5B35BEA41919ACB
--[[
Example:
TASK::TASK_MOVE_NETWORK_ADVANCED_BY_NAME(PLAYER::PLAYER_PED_ID(), "minigame_tattoo_michael_parts", 324.13f, 181.29f, 102.6f, 0.0f, 0.0f, 22.32f, 2, 0, false, 0, 0);
--]]
function TASK.TASK_MOVE_NETWORK_ADVANCED_BY_NAME(ped, network, x, y, z, rotX, rotY, rotZ, rotOrder, blendDuration, allowOverrideCloneUpdate, animDict, flags)
  native.invoke(
    Type.Void, 5629, false,
    arg(Type.Ped, ped),
    arg(Type.String, network),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Int, rotOrder),
    arg(Type.Float, blendDuration),
    arg(Type.Bool, allowOverrideCloneUpdate),
    arg(Type.String, animDict),
    arg(Type.Int, flags)
  )
end

-- void TASK_MOVE_NETWORK_BY_NAME_WITH_INIT_PARAMS(Ped ped, const char* network, int* initialParameters, float blendDuration, BOOL allowOverrideCloneUpdate, const char* animDict, int flags) // 0x3D45B0B355C5E0C9
--[[
Used only once in the scripts (am_mp_nightclub)
--]]
function TASK.TASK_MOVE_NETWORK_BY_NAME_WITH_INIT_PARAMS(ped, network, initialParameters, blendDuration, allowOverrideCloneUpdate, animDict, flags)
  native.invoke(
    Type.Void, 5630, false,
    arg(Type.Ped, ped),
    arg(Type.String, network),
    ref(Type.Int, initialParameters),
    arg(Type.Float, blendDuration),
    arg(Type.Bool, allowOverrideCloneUpdate),
    arg(Type.String, animDict),
    arg(Type.Int, flags)
  )
end

-- void TASK_MOVE_NETWORK_ADVANCED_BY_NAME_WITH_INIT_PARAMS(Ped ped, const char* network, int* initialParameters, float x, float y, float z, float rotX, float rotY, float rotZ, int rotOrder, float blendDuration, BOOL allowOverrideCloneUpdate, const char* dictionary, int flags) // 0x29682E2CCF21E9B5
function TASK.TASK_MOVE_NETWORK_ADVANCED_BY_NAME_WITH_INIT_PARAMS(ped, network, initialParameters, x, y, z, rotX, rotY, rotZ, rotOrder, blendDuration, allowOverrideCloneUpdate, dictionary, flags)
  native.invoke(
    Type.Void, 5631, false,
    arg(Type.Ped, ped),
    arg(Type.String, network),
    ref(Type.Int, initialParameters),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Int, rotOrder),
    arg(Type.Float, blendDuration),
    arg(Type.Bool, allowOverrideCloneUpdate),
    arg(Type.String, dictionary),
    arg(Type.Int, flags)
  )
end

-- BOOL IS_TASK_MOVE_NETWORK_ACTIVE(Ped ped) // 0x921CE12C489C4C41
function TASK.IS_TASK_MOVE_NETWORK_ACTIVE(ped)
  return native.invoke(
    Type.Bool, 5632, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_TASK_MOVE_NETWORK_READY_FOR_TRANSITION(Ped ped) // 0x30ED88D5E0C56A37
function TASK.IS_TASK_MOVE_NETWORK_READY_FOR_TRANSITION(ped)
  return native.invoke(
    Type.Bool, 5633, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL REQUEST_TASK_MOVE_NETWORK_STATE_TRANSITION(Ped ped, const char* name) // 0xD01015C7316AE176
function TASK.REQUEST_TASK_MOVE_NETWORK_STATE_TRANSITION(ped, name)
  return native.invoke(
    Type.Bool, 5634, false,
    arg(Type.Ped, ped),
    arg(Type.String, name)
  )
end

-- BOOL SET_EXPECTED_CLONE_NEXT_TASK_MOVE_NETWORK_STATE(Ped ped, const char* state) // 0xAB13A5565480B6D9
--[[
Used only once in the scripts (fm_mission_controller) like so:

TASK::SET_EXPECTED_CLONE_NEXT_TASK_MOVE_NETWORK_STATE(iLocal_3160, "Cutting");
--]]
function TASK.SET_EXPECTED_CLONE_NEXT_TASK_MOVE_NETWORK_STATE(ped, state)
  return native.invoke(
    Type.Bool, 5635, false,
    arg(Type.Ped, ped),
    arg(Type.String, state)
  )
end

-- const char* GET_TASK_MOVE_NETWORK_STATE(Ped ped) // 0x717E4D1F2048376D
function TASK.GET_TASK_MOVE_NETWORK_STATE(ped)
  return native.invoke(
    Type.String, 5636, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_TASK_MOVE_NETWORK_ANIM_SET(Ped ped, Hash clipSet, Hash variableClipSet) // 0x8423541E8B3A1589
function TASK.SET_TASK_MOVE_NETWORK_ANIM_SET(ped, clipSet, variableClipSet)
  native.invoke(
    Type.Void, 5637, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, clipSet),
    arg(Type.Hash, variableClipSet)
  )
end

-- void SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT(Ped ped, const char* signalName, float value) // 0xD5BB4025AE449A4E
--[[
signalName - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".
p2 - From what i can see it goes up to 1f (maybe).

Example: TASK::SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);
--]]
function TASK.SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT(ped, signalName, value)
  native.invoke(
    Type.Void, 5638, false,
    arg(Type.Ped, ped),
    arg(Type.String, signalName),
    arg(Type.Float, value)
  )
end

-- void SET_TASK_MOVE_NETWORK_SIGNAL_LOCAL_FLOAT(Ped ped, const char* signalName, float value) // 0x373EF409B82697A3
function TASK.SET_TASK_MOVE_NETWORK_SIGNAL_LOCAL_FLOAT(ped, signalName, value)
  native.invoke(
    Type.Void, 5639, false,
    arg(Type.Ped, ped),
    arg(Type.String, signalName),
    arg(Type.Float, value)
  )
end

-- void SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT_LERP_RATE(Ped ped, const char* signalName, float value) // 0x8634CEF2522D987B
function TASK.SET_TASK_MOVE_NETWORK_SIGNAL_FLOAT_LERP_RATE(ped, signalName, value)
  native.invoke(
    Type.Void, 5640, false,
    arg(Type.Ped, ped),
    arg(Type.String, signalName),
    arg(Type.Float, value)
  )
end

-- void SET_TASK_MOVE_NETWORK_SIGNAL_BOOL(Ped ped, const char* signalName, BOOL value) // 0xB0A6CFD2C69C1088
function TASK.SET_TASK_MOVE_NETWORK_SIGNAL_BOOL(ped, signalName, value)
  native.invoke(
    Type.Void, 5641, false,
    arg(Type.Ped, ped),
    arg(Type.String, signalName),
    arg(Type.Bool, value)
  )
end

-- float GET_TASK_MOVE_NETWORK_SIGNAL_FLOAT(Ped ped, const char* signalName) // 0x44AB0B3AFECCE242
function TASK.GET_TASK_MOVE_NETWORK_SIGNAL_FLOAT(ped, signalName)
  return native.invoke(
    Type.Float, 5642, false,
    arg(Type.Ped, ped),
    arg(Type.String, signalName)
  )
end

-- BOOL GET_TASK_MOVE_NETWORK_SIGNAL_BOOL(Ped ped, const char* signalName) // 0xA7FFBA498E4AAF67
function TASK.GET_TASK_MOVE_NETWORK_SIGNAL_BOOL(ped, signalName)
  return native.invoke(
    Type.Bool, 5643, false,
    arg(Type.Ped, ped),
    arg(Type.String, signalName)
  )
end

-- BOOL GET_TASK_MOVE_NETWORK_EVENT(Ped ped, const char* eventName) // 0xB4F47213DF45A64C
function TASK.GET_TASK_MOVE_NETWORK_EVENT(ped, eventName)
  return native.invoke(
    Type.Bool, 5644, false,
    arg(Type.Ped, ped),
    arg(Type.String, eventName)
  )
end

-- BOOL SET_TASK_MOVE_NETWORK_ENABLE_COLLISION_ON_NETWORK_CLONE_WHEN_FIXED(Ped ped, BOOL enable) // 0x0FFB3C758E8C07B9
--[[
Doesn't actually return anything.
--]]
function TASK.SET_TASK_MOVE_NETWORK_ENABLE_COLLISION_ON_NETWORK_CLONE_WHEN_FIXED(ped, enable)
  return native.invoke(
    Type.Bool, 5645, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, enable)
  )
end

-- void _SET_SCRIPT_TASK_ENABLE_COLLISION_ON_NETWORK_CLONE_WHEN_FIXED(Ped ped, BOOL enable) // 0x32F6EEF031F943DC
function TASK._SET_SCRIPT_TASK_ENABLE_COLLISION_ON_NETWORK_CLONE_WHEN_FIXED(ped, enable)
  native.invoke(
    Type.Void, 5646, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, enable)
  )
end

-- BOOL IS_MOVE_BLEND_RATIO_STILL(Ped ped) // 0x349CE7B56DAFD95C
function TASK.IS_MOVE_BLEND_RATIO_STILL(ped)
  return native.invoke(
    Type.Bool, 5647, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_MOVE_BLEND_RATIO_WALKING(Ped ped) // 0xF133BBBE91E1691F
function TASK.IS_MOVE_BLEND_RATIO_WALKING(ped)
  return native.invoke(
    Type.Bool, 5648, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_MOVE_BLEND_RATIO_RUNNING(Ped ped) // 0xD4D8636C0199A939
function TASK.IS_MOVE_BLEND_RATIO_RUNNING(ped)
  return native.invoke(
    Type.Bool, 5649, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_MOVE_BLEND_RATIO_SPRINTING(Ped ped) // 0x24A2AD74FA9814E2
function TASK.IS_MOVE_BLEND_RATIO_SPRINTING(ped)
  return native.invoke(
    Type.Bool, 5650, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_STILL(Ped ped) // 0xAC29253EEF8F0180
function TASK.IS_PED_STILL(ped)
  return native.invoke(
    Type.Bool, 5651, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_WALKING(Ped ped) // 0xDE4C184B2B9B071A
function TASK.IS_PED_WALKING(ped)
  return native.invoke(
    Type.Bool, 5652, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_RUNNING(Ped ped) // 0xC5286FFC176F28A2
function TASK.IS_PED_RUNNING(ped)
  return native.invoke(
    Type.Bool, 5653, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_SPRINTING(Ped ped) // 0x57E457CD2C0FC168
function TASK.IS_PED_SPRINTING(ped)
  return native.invoke(
    Type.Bool, 5654, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_STRAFING(Ped ped) // 0xE45B7F222DE47E09
--[[
What's strafing?
--]]
function TASK.IS_PED_STRAFING(ped)
  return native.invoke(
    Type.Bool, 5655, false,
    arg(Type.Ped, ped)
  )
end

-- void TASK_SYNCHRONIZED_SCENE(Ped ped, int scene, const char* animDictionary, const char* animationName, float blendIn, float blendOut, int flags, int ragdollBlockingFlags, float moverBlendDelta, int ikFlags) // 0xEEA929141F699854
--[[
 TASK::TASK_SYNCHRONIZED_SCENE(ped, scene, "creatures@rottweiler@in_vehicle@std_car", "get_in", 1000.0, -8.0, 4, 0, 0x447a0000, 0);

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function TASK.TASK_SYNCHRONIZED_SCENE(ped, scene, animDictionary, animationName, blendIn, blendOut, flags, ragdollBlockingFlags, moverBlendDelta, ikFlags)
  native.invoke(
    Type.Void, 5656, false,
    arg(Type.Ped, ped),
    arg(Type.Int, scene),
    arg(Type.String, animDictionary),
    arg(Type.String, animationName),
    arg(Type.Float, blendIn),
    arg(Type.Float, blendOut),
    arg(Type.Int, flags),
    arg(Type.Int, ragdollBlockingFlags),
    arg(Type.Float, moverBlendDelta),
    arg(Type.Int, ikFlags)
  )
end

-- void TASK_AGITATED_ACTION_CONFRONT_RESPONSE(Ped ped, Ped ped2) // 0x19D1B791CB3670FE
function TASK.TASK_AGITATED_ACTION_CONFRONT_RESPONSE(ped, ped2)
  native.invoke(
    Type.Void, 5657, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, ped2)
  )
end

-- void TASK_SWEEP_AIM_ENTITY(Ped ped, const char* animDict, const char* lowAnimName, const char* medAnimName, const char* hiAnimName, int runtime, Entity targetEntity, float turnRate, float blendInDuration) // 0x2047C02158D6405A
--[[
This function is called on peds in vehicles.

anim: animation name
p2, p3, p4: "sweep_low", "sweep_med" or "sweep_high"
p5: no idea what it does but is usually -1
--]]
function TASK.TASK_SWEEP_AIM_ENTITY(ped, animDict, lowAnimName, medAnimName, hiAnimName, runtime, targetEntity, turnRate, blendInDuration)
  native.invoke(
    Type.Void, 5658, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict),
    arg(Type.String, lowAnimName),
    arg(Type.String, medAnimName),
    arg(Type.String, hiAnimName),
    arg(Type.Int, runtime),
    arg(Type.Entity, targetEntity),
    arg(Type.Float, turnRate),
    arg(Type.Float, blendInDuration)
  )
end

-- void UPDATE_TASK_SWEEP_AIM_ENTITY(Ped ped, Entity entity) // 0xE4973DBDBE6E44B3
function TASK.UPDATE_TASK_SWEEP_AIM_ENTITY(ped, entity)
  native.invoke(
    Type.Void, 5659, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity)
  )
end

-- void TASK_SWEEP_AIM_POSITION(Ped ped, const char* animDict, const char* lowAnimName, const char* medAnimName, const char* hiAnimName, int runtime, float x, float y, float z, float turnRate, float blendInDuration) // 0x7AFE8FDC10BC07D2
function TASK.TASK_SWEEP_AIM_POSITION(ped, animDict, lowAnimName, medAnimName, hiAnimName, runtime, x, y, z, turnRate, blendInDuration)
  native.invoke(
    Type.Void, 5660, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict),
    arg(Type.String, lowAnimName),
    arg(Type.String, medAnimName),
    arg(Type.String, hiAnimName),
    arg(Type.Int, runtime),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, turnRate),
    arg(Type.Float, blendInDuration)
  )
end

-- void UPDATE_TASK_SWEEP_AIM_POSITION(Ped ped, float x, float y, float z) // 0xBB106883F5201FC4
function TASK.UPDATE_TASK_SWEEP_AIM_POSITION(ped, x, y, z)
  native.invoke(
    Type.Void, 5661, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void TASK_ARREST_PED(Ped ped, Ped target) // 0xF3B9A78A178572B1
--[[
Example from "me_amanda1.ysc.c4":
TASK::TASK_ARREST_PED(l_19F /* This is a Ped */ , PLAYER::PLAYER_PED_ID());

Example from "armenian1.ysc.c4":
if (!PED::IS_PED_INJURED(l_B18[0/*1*/])) {
    TASK::TASK_ARREST_PED(l_B18[0/*1*/], PLAYER::PLAYER_PED_ID());
}

I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.


Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.
--]]
function TASK.TASK_ARREST_PED(ped, target)
  native.invoke(
    Type.Void, 5662, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target)
  )
end

-- BOOL IS_PED_RUNNING_ARREST_TASK(Ped ped) // 0x3DC52677769B4AE0
function TASK.IS_PED_RUNNING_ARREST_TASK(ped)
  return native.invoke(
    Type.Bool, 5663, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_BEING_ARRESTED(Ped ped) // 0x90A09F3A45FED688
--[[
This function is hard-coded to always return 0.
--]]
function TASK.IS_PED_BEING_ARRESTED(ped)
  return native.invoke(
    Type.Bool, 5664, false,
    arg(Type.Ped, ped)
  )
end

-- void UNCUFF_PED(Ped ped) // 0x67406F2C8F87FC4F
function TASK.UNCUFF_PED(ped)
  native.invoke(
    Type.Void, 5665, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_CUFFED(Ped ped) // 0x74E559B3BC910685
function TASK.IS_PED_CUFFED(ped)
  return native.invoke(
    Type.Bool, 5666, false,
    arg(Type.Ped, ped)
  )
end


