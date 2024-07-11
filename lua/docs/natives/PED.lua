PED = {}

-- Ped CREATE_PED(int pedType, Hash modelHash, float x, float y, float z, float heading, BOOL isNetwork, BOOL bScriptHostPed) // 0xD49F9B0955C367DE
--[[
https://alloc8or.re/gta5/doc/enums/ePedType.txt

Full list of peds by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/peds.json
--]]
function PED.CREATE_PED(pedType, modelHash, x, y, z, heading, isNetwork, bScriptHostPed)
  return native.invoke(
    Type.Ped, 3843, false,
    arg(Type.Int, pedType),
    arg(Type.Hash, modelHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.Bool, isNetwork),
    arg(Type.Bool, bScriptHostPed)
  )
end

-- void DELETE_PED(Ped* ped) // 0x9614299DCB53E54B
--[[
Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.
--]]
function PED.DELETE_PED(ped)
  native.invoke(
    Type.Void, 3844, false,
    ref(Type.Ped, ped)
  )
end

-- Ped CLONE_PED(Ped ped, BOOL isNetwork, BOOL bScriptHostPed, BOOL copyHeadBlendFlag) // 0xEF29A16337FACADB
function PED.CLONE_PED(ped, isNetwork, bScriptHostPed, copyHeadBlendFlag)
  return native.invoke(
    Type.Ped, 3845, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, isNetwork),
    arg(Type.Bool, bScriptHostPed),
    arg(Type.Bool, copyHeadBlendFlag)
  )
end

-- Ped CLONE_PED_ALT(Ped ped, BOOL isNetwork, BOOL bScriptHostPed, BOOL copyHeadBlendFlag, BOOL p4) // 0x668FD40BCBA5DE48
function PED.CLONE_PED_ALT(ped, isNetwork, bScriptHostPed, copyHeadBlendFlag, p4)
  return native.invoke(
    Type.Ped, 3846, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, isNetwork),
    arg(Type.Bool, bScriptHostPed),
    arg(Type.Bool, copyHeadBlendFlag),
    arg(Type.Bool, p4)
  )
end

-- void CLONE_PED_TO_TARGET(Ped ped, Ped targetPed) // 0xE952D6431689AD9A
--[[
Copies ped's components and props to targetPed.
--]]
function PED.CLONE_PED_TO_TARGET(ped, targetPed)
  native.invoke(
    Type.Void, 3847, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, targetPed)
  )
end

-- void CLONE_PED_TO_TARGET_ALT(Ped ped, Ped targetPed, BOOL p2) // 0x148B08C2D2ACB884
function PED.CLONE_PED_TO_TARGET_ALT(ped, targetPed, p2)
  native.invoke(
    Type.Void, 3848, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, targetPed),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_PED_IN_VEHICLE(Ped ped, Vehicle vehicle, BOOL atGetIn) // 0xA3EE4A07279BB9DB
--[[
Gets a value indicating whether the specified ped is in the specified vehicle.

If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.
--]]
function PED.IS_PED_IN_VEHICLE(ped, vehicle, atGetIn)
  return native.invoke(
    Type.Bool, 3849, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, atGetIn)
  )
end

-- BOOL IS_PED_IN_MODEL(Ped ped, Hash modelHash) // 0x796D90EFB19AA332
function PED.IS_PED_IN_MODEL(ped, modelHash)
  return native.invoke(
    Type.Bool, 3850, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, modelHash)
  )
end

-- BOOL IS_PED_IN_ANY_VEHICLE(Ped ped, BOOL atGetIn) // 0x997ABD671D25CA0B
--[[
Gets a value indicating whether the specified ped is in any vehicle.

If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.
--]]
function PED.IS_PED_IN_ANY_VEHICLE(ped, atGetIn)
  return native.invoke(
    Type.Bool, 3851, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, atGetIn)
  )
end

-- BOOL IS_COP_PED_IN_AREA_3D(float x1, float y1, float z1, float x2, float y2, float z2) // 0x16EC4839969F9F5E
--[[
xyz - relative to the world origin.
--]]
function PED.IS_COP_PED_IN_AREA_3D(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Bool, 3852, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- BOOL IS_PED_INJURED(Ped ped) // 0x84A2DD9AC37C35C1
--[[
Gets a value indicating whether this ped's health is below its injured threshold.

The default threshold is 100.
--]]
function PED.IS_PED_INJURED(ped)
  return native.invoke(
    Type.Bool, 3853, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_HURT(Ped ped) // 0x5983BB449D7FDB12
--[[
Returns whether the specified ped is hurt.
--]]
function PED.IS_PED_HURT(ped)
  return native.invoke(
    Type.Bool, 3854, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_FATALLY_INJURED(Ped ped) // 0xD839450756ED5A80
--[[
Gets a value indicating whether this ped's health is below its fatally injured threshold. The default threshold is 100.
If the handle is invalid, the function returns true.
--]]
function PED.IS_PED_FATALLY_INJURED(ped)
  return native.invoke(
    Type.Bool, 3855, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_DEAD_OR_DYING(Ped ped, BOOL p1) // 0x3317DEDB88C95038
--[[
Seems to consistently return true if the ped is dead.

p1 is always passed 1 in the scripts.

I suggest to remove "OR_DYING" part, because it does not detect dying phase.

That's what the devs call it, cry about it.

lol
--]]
function PED.IS_PED_DEAD_OR_DYING(ped, p1)
  return native.invoke(
    Type.Bool, 3856, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_CONVERSATION_PED_DEAD(Ped ped) // 0xE0A0AEC214B1FABA
function PED.IS_CONVERSATION_PED_DEAD(ped)
  return native.invoke(
    Type.Bool, 3857, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_AIMING_FROM_COVER(Ped ped) // 0x3998B1276A3300E5
function PED.IS_PED_AIMING_FROM_COVER(ped)
  return native.invoke(
    Type.Bool, 3858, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_RELOADING(Ped ped) // 0x24B100C68C645951
--[[
Returns whether the specified ped is reloading.
--]]
function PED.IS_PED_RELOADING(ped)
  return native.invoke(
    Type.Bool, 3859, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_A_PLAYER(Ped ped) // 0x12534C348C6CB68B
--[[
Returns true if the given ped has a valid pointer to CPlayerInfo in its CPed class. That's all.
--]]
function PED.IS_PED_A_PLAYER(ped)
  return native.invoke(
    Type.Bool, 3860, false,
    arg(Type.Ped, ped)
  )
end

-- Ped CREATE_PED_INSIDE_VEHICLE(Vehicle vehicle, int pedType, Hash modelHash, int seat, BOOL isNetwork, BOOL bScriptHostPed) // 0x7DD959874C1FD534
--[[
pedType: see CREATE_PED

Full list of peds by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/peds.json
--]]
function PED.CREATE_PED_INSIDE_VEHICLE(vehicle, pedType, modelHash, seat, isNetwork, bScriptHostPed)
  return native.invoke(
    Type.Ped, 3861, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, pedType),
    arg(Type.Hash, modelHash),
    arg(Type.Int, seat),
    arg(Type.Bool, isNetwork),
    arg(Type.Bool, bScriptHostPed)
  )
end

-- void SET_PED_DESIRED_HEADING(Ped ped, float heading) // 0xAA5A7ECE2AA8FE70
function PED.SET_PED_DESIRED_HEADING(ped, heading)
  native.invoke(
    Type.Void, 3862, false,
    arg(Type.Ped, ped),
    arg(Type.Float, heading)
  )
end

-- void FORCE_ALL_HEADING_VALUES_TO_ALIGN(Ped ped) // 0xFF287323B0E2C69A
function PED.FORCE_ALL_HEADING_VALUES_TO_ALIGN(ped)
  native.invoke(
    Type.Void, 3863, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_FACING_PED(Ped ped, Ped otherPed, float angle) // 0xD71649DB0A545AA3
--[[
angle is ped's view cone
--]]
function PED.IS_PED_FACING_PED(ped, otherPed, angle)
  return native.invoke(
    Type.Bool, 3864, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, otherPed),
    arg(Type.Float, angle)
  )
end

-- BOOL IS_PED_IN_MELEE_COMBAT(Ped ped) // 0x4E209B2C1EAD5159
--[[
Notes: The function only returns true while the ped is: 
A.) Swinging a random melee attack (including pistol-whipping)

B.) Reacting to being hit by a melee attack (including pistol-whipping)

C.) Is locked-on to an enemy (arms up, strafing/skipping in the default fighting-stance, ready to dodge+counter). 

You don't have to be holding the melee-targetting button to be in this stance; you stay in it by default for a few seconds after swinging at someone. If you do a sprinting punch, it returns true for the duration of the punch animation and then returns false again, even if you've punched and made-angry many peds
--]]
function PED.IS_PED_IN_MELEE_COMBAT(ped)
  return native.invoke(
    Type.Bool, 3865, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_STOPPED(Ped ped) // 0x530944F6F4B8A214
--[[
Returns true if the ped doesn't do any movement. If the ped is being pushed forwards by using APPLY_FORCE_TO_ENTITY for example, the function returns false.
--]]
function PED.IS_PED_STOPPED(ped)
  return native.invoke(
    Type.Bool, 3866, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_SHOOTING_IN_AREA(Ped ped, float x1, float y1, float z1, float x2, float y2, float z2, BOOL p7, BOOL p8) // 0x7E9DFE24AC1E58EF
function PED.IS_PED_SHOOTING_IN_AREA(ped, x1, y1, z1, x2, y2, z2, p7, p8)
  return native.invoke(
    Type.Bool, 3867, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8)
  )
end

-- BOOL IS_ANY_PED_SHOOTING_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL p6, BOOL p7) // 0xA0D3D71EA1086C55
function PED.IS_ANY_PED_SHOOTING_IN_AREA(x1, y1, z1, x2, y2, z2, p6, p7)
  return native.invoke(
    Type.Bool, 3868, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7)
  )
end

-- BOOL IS_PED_SHOOTING(Ped ped) // 0x34616828CD07F1A1
--[[
Returns whether the specified ped is shooting.
--]]
function PED.IS_PED_SHOOTING(ped)
  return native.invoke(
    Type.Bool, 3869, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_ACCURACY(Ped ped, int accuracy) // 0x7AEFB85C1D49DEB6
--[[
accuracy = 0-100, 100 being perfectly accurate
--]]
function PED.SET_PED_ACCURACY(ped, accuracy)
  native.invoke(
    Type.Void, 3870, false,
    arg(Type.Ped, ped),
    arg(Type.Int, accuracy)
  )
end

-- int GET_PED_ACCURACY(Ped ped) // 0x37F4AD56ECBC0CD6
function PED.GET_PED_ACCURACY(ped)
  return native.invoke(
    Type.Int, 3871, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_AMBIENT_LAW_PED_ACCURACY_MODIFIER(float multiplier) // 0x87DDEB611B329A9C
function PED.SET_AMBIENT_LAW_PED_ACCURACY_MODIFIER(multiplier)
  native.invoke(
    Type.Void, 3872, false,
    arg(Type.Float, multiplier)
  )
end

-- BOOL IS_PED_MODEL(Ped ped, Hash modelHash) // 0xC9D55B1A358A5BF7
function PED.IS_PED_MODEL(ped, modelHash)
  return native.invoke(
    Type.Bool, 3873, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, modelHash)
  )
end

-- void EXPLODE_PED_HEAD(Ped ped, Hash weaponHash) // 0x2D05CED3A38D0F3A
--[[
Forces the ped to fall back and kills it.

It doesn't really explode the ped's head but it kills the ped
--]]
function PED.EXPLODE_PED_HEAD(ped, weaponHash)
  native.invoke(
    Type.Void, 3874, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash)
  )
end

-- void REMOVE_PED_ELEGANTLY(Ped* ped) // 0xAC6D445B994DF95E
--[[
Judging purely from a quick disassembly, if the ped is in a vehicle, the ped will be deleted immediately. If not, it'll be marked as no longer needed. - very elegant..
--]]
function PED.REMOVE_PED_ELEGANTLY(ped)
  native.invoke(
    Type.Void, 3875, false,
    ref(Type.Ped, ped)
  )
end

-- void ADD_ARMOUR_TO_PED(Ped ped, int amount) // 0x5BA652A0CD14DF2F
--[[
Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.
--]]
function PED.ADD_ARMOUR_TO_PED(ped, amount)
  native.invoke(
    Type.Void, 3876, false,
    arg(Type.Ped, ped),
    arg(Type.Int, amount)
  )
end

-- void SET_PED_ARMOUR(Ped ped, int amount) // 0xCEA04D83135264CC
--[[
Sets the armor of the specified ped.

ped: The Ped to set the armor of.
amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
--]]
function PED.SET_PED_ARMOUR(ped, amount)
  native.invoke(
    Type.Void, 3877, false,
    arg(Type.Ped, ped),
    arg(Type.Int, amount)
  )
end

-- void SET_PED_INTO_VEHICLE(Ped ped, Vehicle vehicle, int seatIndex) // 0xF75B0D629E1C063D
--[[
Ped: The ped to warp.
vehicle: The vehicle to warp the ped into.
Seat_Index: [-1 is driver seat, -2 first free passenger seat]

Moreinfo of Seat Index
DriverSeat = -1
Passenger = 0
Left Rear = 1
RightRear = 2
--]]
function PED.SET_PED_INTO_VEHICLE(ped, vehicle, seatIndex)
  native.invoke(
    Type.Void, 3878, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, seatIndex)
  )
end

-- void SET_PED_ALLOW_VEHICLES_OVERRIDE(Ped ped, BOOL toggle) // 0x3C028C636A414ED9
function PED.SET_PED_ALLOW_VEHICLES_OVERRIDE(ped, toggle)
  native.invoke(
    Type.Void, 3879, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL CAN_CREATE_RANDOM_PED(BOOL p0) // 0x3E8349C08E4B82E4
function PED.CAN_CREATE_RANDOM_PED(p0)
  return native.invoke(
    Type.Bool, 3880, false,
    arg(Type.Bool, p0)
  )
end

-- Ped CREATE_RANDOM_PED(float posX, float posY, float posZ) // 0xB4AC7D0CF06BFE8F
--[[
vb.net
Dim ped_handle As Integer
                    With Game.Player.Character
                        Dim pos As Vector3 = .Position + .ForwardVector * 3
                        ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)
                    End With

Creates a Ped at the specified location, returns the Ped Handle.  
Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.
--]]
function PED.CREATE_RANDOM_PED(posX, posY, posZ)
  return native.invoke(
    Type.Ped, 3881, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- Ped CREATE_RANDOM_PED_AS_DRIVER(Vehicle vehicle, BOOL returnHandle) // 0x9B62392B474F44A0
function PED.CREATE_RANDOM_PED_AS_DRIVER(vehicle, returnHandle)
  return native.invoke(
    Type.Ped, 3882, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, returnHandle)
  )
end

-- BOOL CAN_CREATE_RANDOM_DRIVER() // 0xB8EB95E5B4E56978
function PED.CAN_CREATE_RANDOM_DRIVER()
  return native.invoke(
    Type.Bool, 3883, false
  )
end

-- BOOL CAN_CREATE_RANDOM_BIKE_RIDER() // 0xEACEEDA81751915C
function PED.CAN_CREATE_RANDOM_BIKE_RIDER()
  return native.invoke(
    Type.Bool, 3884, false
  )
end

-- void SET_PED_MOVE_ANIMS_BLEND_OUT(Ped ped) // 0x9E8C908F41584ECD
function PED.SET_PED_MOVE_ANIMS_BLEND_OUT(ped)
  native.invoke(
    Type.Void, 3885, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_CAN_BE_DRAGGED_OUT(Ped ped, BOOL toggle) // 0xC1670E958EEE24E5
function PED.SET_PED_CAN_BE_DRAGGED_OUT(ped, toggle)
  native.invoke(
    Type.Void, 3886, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_ALLOW_HURT_COMBAT_FOR_ALL_MISSION_PEDS(BOOL toggle) // 0xF2BEBCDFAFDAA19E
--[[
ntoggle was always false except in one instance (b678).

The one time this is set to true seems to do with when you fail the mission.
--]]
function PED.SET_PED_ALLOW_HURT_COMBAT_FOR_ALL_MISSION_PEDS(toggle)
  native.invoke(
    Type.Void, 3887, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_MALE(Ped ped) // 0x6D9F5FAA7488BA46
--[[
Returns true/false if the ped is/isn't male.
--]]
function PED.IS_PED_MALE(ped)
  return native.invoke(
    Type.Bool, 3888, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_HUMAN(Ped ped) // 0xB980061DA992779D
--[[
Returns true/false if the ped is/isn't humanoid.
--]]
function PED.IS_PED_HUMAN(ped)
  return native.invoke(
    Type.Bool, 3889, false,
    arg(Type.Ped, ped)
  )
end

-- Vehicle GET_VEHICLE_PED_IS_IN(Ped ped, BOOL includeEntering) // 0x9A9112A0FE9A4713
--[[
Gets the vehicle the specified Ped is in. Returns 0 if the ped is/was not in a vehicle.
--]]
function PED.GET_VEHICLE_PED_IS_IN(ped, includeEntering)
  return native.invoke(
    Type.Vehicle, 3890, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, includeEntering)
  )
end

-- void RESET_PED_LAST_VEHICLE(Ped ped) // 0xBB8DE8CF6A8DD8BB
--[[
Resets the value for the last vehicle driven by the Ped.
--]]
function PED.RESET_PED_LAST_VEHICLE(ped)
  native.invoke(
    Type.Void, 3891, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_DENSITY_MULTIPLIER_THIS_FRAME(float multiplier) // 0x95E3D6257B166CF2
function PED.SET_PED_DENSITY_MULTIPLIER_THIS_FRAME(multiplier)
  native.invoke(
    Type.Void, 3892, false,
    arg(Type.Float, multiplier)
  )
end

-- void SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME(float p0, float p1) // 0x7A556143A1C03898
function PED.SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME(p0, p1)
  native.invoke(
    Type.Void, 3893, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- void SUPPRESS_AMBIENT_PED_AGGRESSIVE_CLEANUP_THIS_FRAME() // 0x5A7F62FDA59759BD
function PED.SUPPRESS_AMBIENT_PED_AGGRESSIVE_CLEANUP_THIS_FRAME()
  native.invoke(
    Type.Void, 3894, false
  )
end

-- void SET_SCRIPTED_CONVERSION_COORD_THIS_FRAME(float x, float y, float z) // 0x5086C7843552CF85
function PED.SET_SCRIPTED_CONVERSION_COORD_THIS_FRAME(x, y, z)
  native.invoke(
    Type.Void, 3895, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_PED_NON_CREATION_AREA(float x1, float y1, float z1, float x2, float y2, float z2) // 0xEE01041D559983EA
--[[
The distance between these points, is the diagonal of a box (remember it's 3D).
--]]
function PED.SET_PED_NON_CREATION_AREA(x1, y1, z1, x2, y2, z2)
  native.invoke(
    Type.Void, 3896, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- void CLEAR_PED_NON_CREATION_AREA() // 0x2E05208086BA0651
function PED.CLEAR_PED_NON_CREATION_AREA()
  native.invoke(
    Type.Void, 3897, false
  )
end

-- void INSTANTLY_FILL_PED_POPULATION() // 0x4759CC730F947C81
function PED.INSTANTLY_FILL_PED_POPULATION()
  native.invoke(
    Type.Void, 3898, false
  )
end

-- BOOL IS_PED_ON_MOUNT(Ped ped) // 0x460BC76A0E10655E
--[[
Same function call as PED::GET_MOUNT, aka just returns 0
--]]
function PED.IS_PED_ON_MOUNT(ped)
  return native.invoke(
    Type.Bool, 3899, false,
    arg(Type.Ped, ped)
  )
end

-- Ped GET_MOUNT(Ped ped) // 0xE7E11B8DCBED1058
--[[

Function just returns 0
void __fastcall ped__get_mount(NativeContext *a1)
{
  NativeContext *v1; // rbx@1

  v1 = a1;
  GetAddressOfPedFromScriptHandle(a1->Args->Arg1);
  v1->Returns->Item1= 0;
}
--]]
function PED.GET_MOUNT(ped)
  return native.invoke(
    Type.Ped, 3900, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_ON_VEHICLE(Ped ped) // 0x67722AEB798E5FAB
--[[
Gets a value indicating whether the specified ped is on top of any vehicle.

Return 1 when ped is on vehicle.
Return 0 when ped is not on a vehicle.

--]]
function PED.IS_PED_ON_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 3901, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_ON_SPECIFIC_VEHICLE(Ped ped, Vehicle vehicle) // 0xEC5F66E459AF3BB2
function PED.IS_PED_ON_SPECIFIC_VEHICLE(ped, vehicle)
  return native.invoke(
    Type.Bool, 3902, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_PED_MONEY(Ped ped, int amount) // 0xA9C8960E8684C1B5
--[[
Maximum possible amount of money on MP is 2000. ~JX

-----------------------------------------------------------------------------

Maximum amount that a ped can theoretically have is 65535 (0xFFFF) since the amount is stored as an unsigned short (uint16_t) value.
--]]
function PED.SET_PED_MONEY(ped, amount)
  native.invoke(
    Type.Void, 3903, false,
    arg(Type.Ped, ped),
    arg(Type.Int, amount)
  )
end

-- int GET_PED_MONEY(Ped ped) // 0x3F69145BBA87BAE7
function PED.GET_PED_MONEY(ped)
  return native.invoke(
    Type.Int, 3904, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_HEALTH_SNACKS_CARRIED_BY_ALL_NEW_PEDS(float p0, Any p1) // 0xFF4803BC019852D9
--[[
Related to Peds dropping pickup_health_snack; p0 is a value between [0.0, 1.0] that corresponds to drop rate
--]]
function PED.SET_HEALTH_SNACKS_CARRIED_BY_ALL_NEW_PEDS(p0, p1)
  native.invoke(
    Type.Void, 3905, false,
    arg(Type.Float, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_AMBIENT_PEDS_DROP_MONEY(BOOL p0) // 0x6B0E6172C9A4D902
function PED.SET_AMBIENT_PEDS_DROP_MONEY(p0)
  native.invoke(
    Type.Void, 3906, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_BLOCKING_OF_NON_TEMPORARY_EVENTS_FOR_AMBIENT_PEDS_THIS_FRAME(BOOL p0) // 0x9911F4A24485F653
function PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS_FOR_AMBIENT_PEDS_THIS_FRAME(p0)
  native.invoke(
    Type.Void, 3907, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_PED_SUFFERS_CRITICAL_HITS(Ped ped, BOOL toggle) // 0xEBD76F2359F190AC
--[[
Ped no longer takes critical damage modifiers if set to FALSE.
Example: Headshotting a player no longer one shots them. Instead they will take the same damage as a torso shot.
--]]
function PED.SET_PED_SUFFERS_CRITICAL_HITS(ped, toggle)
  native.invoke(
    Type.Void, 3908, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_UPPER_BODY_DAMAGE_ONLY(Ped ped, BOOL toggle) // 0xAFC976FD0580C7B3
function PED.SET_PED_UPPER_BODY_DAMAGE_ONLY(ped, toggle)
  native.invoke(
    Type.Void, 3909, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_SITTING_IN_VEHICLE(Ped ped, Vehicle vehicle) // 0xA808AA1D79230FC2
--[[
Detect if ped is sitting in the specified vehicle
[True/False]
--]]
function PED.IS_PED_SITTING_IN_VEHICLE(ped, vehicle)
  return native.invoke(
    Type.Bool, 3910, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle)
  )
end

-- BOOL IS_PED_SITTING_IN_ANY_VEHICLE(Ped ped) // 0x826AA586EDB9FEF8
--[[
Detect if ped is in any vehicle
[True/False]
--]]
function PED.IS_PED_SITTING_IN_ANY_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 3911, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_ON_FOOT(Ped ped) // 0x01FEE67DB37F59B2
function PED.IS_PED_ON_FOOT(ped)
  return native.invoke(
    Type.Bool, 3912, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_ON_ANY_BIKE(Ped ped) // 0x94495889E22C6479
function PED.IS_PED_ON_ANY_BIKE(ped)
  return native.invoke(
    Type.Bool, 3913, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_PLANTING_BOMB(Ped ped) // 0xC70B5FAE151982D8
function PED.IS_PED_PLANTING_BOMB(ped)
  return native.invoke(
    Type.Bool, 3914, false,
    arg(Type.Ped, ped)
  )
end

-- Vector3 GET_DEAD_PED_PICKUP_COORDS(Ped ped, float p1, float p2) // 0xCD5003B097200F36
function PED.GET_DEAD_PED_PICKUP_COORDS(ped, p1, p2)
  return native.invoke(
    Type.Vector3, 3915, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1),
    arg(Type.Float, p2)
  )
end

-- BOOL IS_PED_IN_ANY_BOAT(Ped ped) // 0x2E0E1C2B4F6CB339
function PED.IS_PED_IN_ANY_BOAT(ped)
  return native.invoke(
    Type.Bool, 3916, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_ANY_SUB(Ped ped) // 0xFBFC01CCFB35D99E
function PED.IS_PED_IN_ANY_SUB(ped)
  return native.invoke(
    Type.Bool, 3917, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_ANY_HELI(Ped ped) // 0x298B91AE825E5705
function PED.IS_PED_IN_ANY_HELI(ped)
  return native.invoke(
    Type.Bool, 3918, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_ANY_PLANE(Ped ped) // 0x5FFF4CFC74D8FB80
function PED.IS_PED_IN_ANY_PLANE(ped)
  return native.invoke(
    Type.Bool, 3919, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_FLYING_VEHICLE(Ped ped) // 0x9134873537FA419C
function PED.IS_PED_IN_FLYING_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 3920, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_DIES_IN_WATER(Ped ped, BOOL toggle) // 0x56CEF0AC79073BDE
function PED.SET_PED_DIES_IN_WATER(ped, toggle)
  native.invoke(
    Type.Void, 3921, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_PED_DIES_IN_WATER(Ped ped) // 0x65671A4FB8218930
function PED.GET_PED_DIES_IN_WATER(ped)
  return native.invoke(
    Type.Bool, 3922, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_DIES_IN_SINKING_VEHICLE(Ped ped, BOOL toggle) // 0xD718A22995E2B4BC
function PED.SET_PED_DIES_IN_SINKING_VEHICLE(ped, toggle)
  native.invoke(
    Type.Void, 3923, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- int GET_PED_ARMOUR(Ped ped) // 0x9483AF821605B1D8
function PED.GET_PED_ARMOUR(ped)
  return native.invoke(
    Type.Int, 3924, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_STAY_IN_VEHICLE_WHEN_JACKED(Ped ped, BOOL toggle) // 0xEDF4079F9D54C9A1
function PED.SET_PED_STAY_IN_VEHICLE_WHEN_JACKED(ped, toggle)
  native.invoke(
    Type.Void, 3925, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_BE_SHOT_IN_VEHICLE(Ped ped, BOOL toggle) // 0xC7EF1BA83230BA07
function PED.SET_PED_CAN_BE_SHOT_IN_VEHICLE(ped, toggle)
  native.invoke(
    Type.Void, 3926, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_PED_LAST_DAMAGE_BONE(Ped ped, int* outBone) // 0xD75960F6BD9EA49C
function PED.GET_PED_LAST_DAMAGE_BONE(ped, outBone)
  return native.invoke(
    Type.Bool, 3927, false,
    arg(Type.Ped, ped),
    ref(Type.Int, outBone)
  )
end

-- void CLEAR_PED_LAST_DAMAGE_BONE(Ped ped) // 0x8EF6B7AC68E2F01B
function PED.CLEAR_PED_LAST_DAMAGE_BONE(ped)
  native.invoke(
    Type.Void, 3928, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_AI_WEAPON_DAMAGE_MODIFIER(float value) // 0x1B1E2A40A65B8521
function PED.SET_AI_WEAPON_DAMAGE_MODIFIER(value)
  native.invoke(
    Type.Void, 3929, false,
    arg(Type.Float, value)
  )
end

-- void RESET_AI_WEAPON_DAMAGE_MODIFIER() // 0xEA16670E7BA4743C
function PED.RESET_AI_WEAPON_DAMAGE_MODIFIER()
  native.invoke(
    Type.Void, 3930, false
  )
end

-- void SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER(float modifier) // 0x66460DEDDD417254
function PED.SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER(modifier)
  native.invoke(
    Type.Void, 3931, false,
    arg(Type.Float, modifier)
  )
end

-- void RESET_AI_MELEE_WEAPON_DAMAGE_MODIFIER() // 0x46E56A7CD1D63C3F
function PED.RESET_AI_MELEE_WEAPON_DAMAGE_MODIFIER()
  native.invoke(
    Type.Void, 3932, false
  )
end

-- void SET_TREAT_AS_AMBIENT_PED_FOR_DRIVER_LOCKON(Ped ped, BOOL p1) // 0x2F3C3D9F50681DE4
function PED.SET_TREAT_AS_AMBIENT_PED_FOR_DRIVER_LOCKON(ped, p1)
  native.invoke(
    Type.Void, 3933, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_CAN_BE_TARGETTED(Ped ped, BOOL toggle) // 0x63F58F7C80513AAD
function PED.SET_PED_CAN_BE_TARGETTED(ped, toggle)
  native.invoke(
    Type.Void, 3934, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_BE_TARGETTED_BY_TEAM(Ped ped, int team, BOOL toggle) // 0xBF1CA77833E58F2C
function PED.SET_PED_CAN_BE_TARGETTED_BY_TEAM(ped, team, toggle)
  native.invoke(
    Type.Void, 3935, false,
    arg(Type.Ped, ped),
    arg(Type.Int, team),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_BE_TARGETTED_BY_PLAYER(Ped ped, Player player, BOOL toggle) // 0x66B57B72E0836A76
function PED.SET_PED_CAN_BE_TARGETTED_BY_PLAYER(ped, player, toggle)
  native.invoke(
    Type.Void, 3936, false,
    arg(Type.Ped, ped),
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ALLOW_LOCKON_TO_PED_IF_FRIENDLY(Ped ped, BOOL toggle) // 0x061CB768363D6424
function PED.SET_ALLOW_LOCKON_TO_PED_IF_FRIENDLY(ped, toggle)
  native.invoke(
    Type.Void, 3937, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_USE_CAMERA_HEADING_FOR_DESIRED_DIRECTION_LOCK_ON_TEST(Ped ped, BOOL toggle) // 0xFD325494792302D7
function PED.SET_USE_CAMERA_HEADING_FOR_DESIRED_DIRECTION_LOCK_ON_TEST(ped, toggle)
  native.invoke(
    Type.Void, 3938, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_IN_ANY_POLICE_VEHICLE(Ped ped) // 0x0BD04E29640C9C12
function PED.IS_PED_IN_ANY_POLICE_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 3939, false,
    arg(Type.Ped, ped)
  )
end

-- void FORCE_PED_TO_OPEN_PARACHUTE(Ped ped) // 0x16E42E800B472221
function PED.FORCE_PED_TO_OPEN_PARACHUTE(ped)
  native.invoke(
    Type.Void, 3940, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_PARACHUTE_FREE_FALL(Ped ped) // 0x7DCE8BDA0F1C1200
function PED.IS_PED_IN_PARACHUTE_FREE_FALL(ped)
  return native.invoke(
    Type.Bool, 3941, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_FALLING(Ped ped) // 0xFB92A102F1C4DFA3
function PED.IS_PED_FALLING(ped)
  return native.invoke(
    Type.Bool, 3942, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_JUMPING(Ped ped) // 0xCEDABC5900A0BF97
function PED.IS_PED_JUMPING(ped)
  return native.invoke(
    Type.Bool, 3943, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_LANDING(Any p0) // 0x412F1364FA066CFB
function PED.IS_PED_LANDING(p0)
  return native.invoke(
    Type.Bool, 3944, false,
    arg(Type.Any, p0)
  )
end

-- BOOL IS_PED_DOING_A_BEAST_JUMP(Any p0) // 0x451D05012CCEC234
function PED.IS_PED_DOING_A_BEAST_JUMP(p0)
  return native.invoke(
    Type.Bool, 3945, false,
    arg(Type.Any, p0)
  )
end

-- BOOL IS_PED_CLIMBING(Ped ped) // 0x53E8CB4F48BFE623
function PED.IS_PED_CLIMBING(ped)
  return native.invoke(
    Type.Bool, 3946, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_VAULTING(Ped ped) // 0x117C70D1F5730B5E
function PED.IS_PED_VAULTING(ped)
  return native.invoke(
    Type.Bool, 3947, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_DIVING(Ped ped) // 0x5527B8246FEF9B11
function PED.IS_PED_DIVING(ped)
  return native.invoke(
    Type.Bool, 3948, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_JUMPING_OUT_OF_VEHICLE(Ped ped) // 0x433DDFFE2044B636
function PED.IS_PED_JUMPING_OUT_OF_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 3949, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_OPENING_DOOR(Ped ped) // 0x26AF0E8E30BD2A2C
--[[
Returns true if the ped is currently opening a door (CTaskOpenDoor).
--]]
function PED.IS_PED_OPENING_DOOR(ped)
  return native.invoke(
    Type.Bool, 3950, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_PARACHUTE_STATE(Ped ped) // 0x79CFD9827CC979B6
--[[
Returns:

-1: Normal
0: Wearing parachute on back
1: Parachute opening
2: Parachute open
3: Falling to doom (e.g. after exiting parachute)

Normal means no parachute?
--]]
function PED.GET_PED_PARACHUTE_STATE(ped)
  return native.invoke(
    Type.Int, 3951, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_PARACHUTE_LANDING_TYPE(Ped ped) // 0x8B9F1FC6AE8166C0
--[[
-1: no landing
0: landing on both feet
1: stumbling
2: rolling
3: ragdoll
--]]
function PED.GET_PED_PARACHUTE_LANDING_TYPE(ped)
  return native.invoke(
    Type.Int, 3952, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_PARACHUTE_TINT_INDEX(Ped ped, int tintIndex) // 0x333FC8DB079B7186
function PED.SET_PED_PARACHUTE_TINT_INDEX(ped, tintIndex)
  native.invoke(
    Type.Void, 3953, false,
    arg(Type.Ped, ped),
    arg(Type.Int, tintIndex)
  )
end

-- void GET_PED_PARACHUTE_TINT_INDEX(Ped ped, int* outTintIndex) // 0xEAF5F7E5AE7C6C9D
function PED.GET_PED_PARACHUTE_TINT_INDEX(ped, outTintIndex)
  native.invoke(
    Type.Void, 3954, false,
    arg(Type.Ped, ped),
    ref(Type.Int, outTintIndex)
  )
end

-- void SET_PED_RESERVE_PARACHUTE_TINT_INDEX(Ped ped, Any p1) // 0xE88DA0751C22A2AD
function PED.SET_PED_RESERVE_PARACHUTE_TINT_INDEX(ped, p1)
  native.invoke(
    Type.Void, 3955, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1)
  )
end

-- Object CREATE_PARACHUTE_BAG_OBJECT(Ped ped, BOOL p1, BOOL p2) // 0x8C4F3BF23B6237DB
function PED.CREATE_PARACHUTE_BAG_OBJECT(ped, p1, p2)
  return native.invoke(
    Type.Object, 3956, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void SET_PED_DUCKING(Ped ped, BOOL toggle) // 0x030983CA930B692D
--[[
This is the SET_CHAR_DUCKING from GTA IV, that makes Peds duck. This function does nothing in GTA V. It cannot set the ped as ducking in vehicles, and IS_PED_DUCKING will always return false.
--]]
function PED.SET_PED_DUCKING(ped, toggle)
  native.invoke(
    Type.Void, 3957, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_DUCKING(Ped ped) // 0xD125AE748725C6BC
function PED.IS_PED_DUCKING(ped)
  return native.invoke(
    Type.Bool, 3958, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_ANY_TAXI(Ped ped) // 0x6E575D6A898AB852
function PED.IS_PED_IN_ANY_TAXI(ped)
  return native.invoke(
    Type.Bool, 3959, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_ID_RANGE(Ped ped, float value) // 0xF107E836A70DCE05
function PED.SET_PED_ID_RANGE(ped, value)
  native.invoke(
    Type.Void, 3960, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_HIGHLY_PERCEPTIVE(Ped ped, BOOL toggle) // 0x52D59AB61DDC05DD
function PED.SET_PED_HIGHLY_PERCEPTIVE(ped, toggle)
  native.invoke(
    Type.Void, 3961, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_COP_PERCEPTION_OVERRIDES(float seeingRange, float seeingRangePeripheral, float hearingRange, float visualFieldMinAzimuthAngle, float visualFieldMaxAzimuthAngle, float fieldOfGazeMaxAngle, float p6) // 0x2F074C904D85129E
function PED.SET_COP_PERCEPTION_OVERRIDES(seeingRange, seeingRangePeripheral, hearingRange, visualFieldMinAzimuthAngle, visualFieldMaxAzimuthAngle, fieldOfGazeMaxAngle, p6)
  native.invoke(
    Type.Void, 3962, false,
    arg(Type.Float, seeingRange),
    arg(Type.Float, seeingRangePeripheral),
    arg(Type.Float, hearingRange),
    arg(Type.Float, visualFieldMinAzimuthAngle),
    arg(Type.Float, visualFieldMaxAzimuthAngle),
    arg(Type.Float, fieldOfGazeMaxAngle),
    arg(Type.Float, p6)
  )
end

-- void SET_PED_INJURED_ON_GROUND_BEHAVIOUR(Ped ped, float p1) // 0xEC4B4B3B9908052A
function PED.SET_PED_INJURED_ON_GROUND_BEHAVIOUR(ped, p1)
  native.invoke(
    Type.Void, 3963, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1)
  )
end

-- void DISABLE_PED_INJURED_ON_GROUND_BEHAVIOUR(Ped ped) // 0x733C87D4CE22BEA2
function PED.DISABLE_PED_INJURED_ON_GROUND_BEHAVIOUR(ped)
  native.invoke(
    Type.Void, 3964, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_SEEING_RANGE(Ped ped, float value) // 0xF29CF591C4BF6CEE
function PED.SET_PED_SEEING_RANGE(ped, value)
  native.invoke(
    Type.Void, 3965, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_HEARING_RANGE(Ped ped, float value) // 0x33A8F7F7D5F7F33C
function PED.SET_PED_HEARING_RANGE(ped, value)
  native.invoke(
    Type.Void, 3966, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_VISUAL_FIELD_MIN_ANGLE(Ped ped, float value) // 0x2DB492222FB21E26
function PED.SET_PED_VISUAL_FIELD_MIN_ANGLE(ped, value)
  native.invoke(
    Type.Void, 3967, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_VISUAL_FIELD_MAX_ANGLE(Ped ped, float value) // 0x70793BDCA1E854D4
function PED.SET_PED_VISUAL_FIELD_MAX_ANGLE(ped, value)
  native.invoke(
    Type.Void, 3968, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_VISUAL_FIELD_MIN_ELEVATION_ANGLE(Ped ped, float angle) // 0x7A276EB2C224D70F
--[[
This native refers to the field of vision the ped has below them, starting at 0 degrees. The angle value should be negative.
-90f should let the ped see 90 degrees below them, for example.
--]]
function PED.SET_PED_VISUAL_FIELD_MIN_ELEVATION_ANGLE(ped, angle)
  native.invoke(
    Type.Void, 3969, false,
    arg(Type.Ped, ped),
    arg(Type.Float, angle)
  )
end

-- void SET_PED_VISUAL_FIELD_MAX_ELEVATION_ANGLE(Ped ped, float angle) // 0x78D0B67629D75856
--[[
This native refers to the field of vision the ped has above them, starting at 0 degrees. 90f would let the ped see enemies directly above of them.
--]]
function PED.SET_PED_VISUAL_FIELD_MAX_ELEVATION_ANGLE(ped, angle)
  native.invoke(
    Type.Void, 3970, false,
    arg(Type.Ped, ped),
    arg(Type.Float, angle)
  )
end

-- void SET_PED_VISUAL_FIELD_PERIPHERAL_RANGE(Ped ped, float range) // 0x9C74B0BC831B753A
function PED.SET_PED_VISUAL_FIELD_PERIPHERAL_RANGE(ped, range)
  native.invoke(
    Type.Void, 3971, false,
    arg(Type.Ped, ped),
    arg(Type.Float, range)
  )
end

-- void SET_PED_VISUAL_FIELD_CENTER_ANGLE(Ped ped, float angle) // 0x3B6405E8AB34A907
function PED.SET_PED_VISUAL_FIELD_CENTER_ANGLE(ped, angle)
  native.invoke(
    Type.Void, 3972, false,
    arg(Type.Ped, ped),
    arg(Type.Float, angle)
  )
end

-- float GET_PED_VISUAL_FIELD_CENTER_ANGLE(Ped ped) // 0xEF2C71A32CAD5FBD
function PED.GET_PED_VISUAL_FIELD_CENTER_ANGLE(ped)
  return native.invoke(
    Type.Float, 3973, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_STEALTH_MOVEMENT(Ped ped, BOOL p1, const char* action) // 0x88CBB5CEB96B7BD2
--[[
p1 is usually 0 in the scripts. action is either 0 or a pointer to "DEFAULT_ACTION".
--]]
function PED.SET_PED_STEALTH_MOVEMENT(ped, p1, action)
  native.invoke(
    Type.Void, 3974, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.String, action)
  )
end

-- BOOL GET_PED_STEALTH_MOVEMENT(Ped ped) // 0x7C2AC9CA66575FBF
--[[
Returns whether the entity is in stealth mode
--]]
function PED.GET_PED_STEALTH_MOVEMENT(ped)
  return native.invoke(
    Type.Bool, 3975, false,
    arg(Type.Ped, ped)
  )
end

-- int CREATE_GROUP(int unused) // 0x90370EBE0FEE1A3D
--[[
Creates a new ped group.
Groups can contain up to 8 peds.

The parameter is unused.

Returns a handle to the created group, or 0 if a group couldn't be created.
--]]
function PED.CREATE_GROUP(unused)
  return native.invoke(
    Type.Int, 3976, false,
    arg(Type.Int, unused)
  )
end

-- void SET_PED_AS_GROUP_LEADER(Ped ped, int groupId) // 0x2A7819605465FBCE
function PED.SET_PED_AS_GROUP_LEADER(ped, groupId)
  native.invoke(
    Type.Void, 3977, false,
    arg(Type.Ped, ped),
    arg(Type.Int, groupId)
  )
end

-- void SET_PED_AS_GROUP_MEMBER(Ped ped, int groupId) // 0x9F3480FE65DB31B5
function PED.SET_PED_AS_GROUP_MEMBER(ped, groupId)
  native.invoke(
    Type.Void, 3978, false,
    arg(Type.Ped, ped),
    arg(Type.Int, groupId)
  )
end

-- void SET_PED_CAN_TELEPORT_TO_GROUP_LEADER(Ped pedHandle, int groupHandle, BOOL toggle) // 0x2E2F4240B3F24647
--[[
This only will teleport the ped to the group leader if the group leader teleports (sets coords).

Only works in singleplayer
--]]
function PED.SET_PED_CAN_TELEPORT_TO_GROUP_LEADER(pedHandle, groupHandle, toggle)
  native.invoke(
    Type.Void, 3979, false,
    arg(Type.Ped, pedHandle),
    arg(Type.Int, groupHandle),
    arg(Type.Bool, toggle)
  )
end

-- void REMOVE_GROUP(int groupId) // 0x8EB2F69076AF7053
function PED.REMOVE_GROUP(groupId)
  native.invoke(
    Type.Void, 3980, false,
    arg(Type.Int, groupId)
  )
end

-- void REMOVE_PED_FROM_GROUP(Ped ped) // 0xED74007FFB146BC2
function PED.REMOVE_PED_FROM_GROUP(ped)
  native.invoke(
    Type.Void, 3981, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_GROUP_MEMBER(Ped ped, int groupId) // 0x9BB01E3834671191
function PED.IS_PED_GROUP_MEMBER(ped, groupId)
  return native.invoke(
    Type.Bool, 3982, false,
    arg(Type.Ped, ped),
    arg(Type.Int, groupId)
  )
end

-- BOOL IS_PED_HANGING_ON_TO_VEHICLE(Ped ped) // 0x1C86D8AEF8254B78
function PED.IS_PED_HANGING_ON_TO_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 3983, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_GROUP_SEPARATION_RANGE(int groupHandle, float separationRange) // 0x4102C7858CFEE4E4
--[[
Sets the range at which members will automatically leave the group.
--]]
function PED.SET_GROUP_SEPARATION_RANGE(groupHandle, separationRange)
  native.invoke(
    Type.Void, 3984, false,
    arg(Type.Int, groupHandle),
    arg(Type.Float, separationRange)
  )
end

-- void SET_PED_MIN_GROUND_TIME_FOR_STUNGUN(Ped ped, int ms) // 0xFA0675AB151073FA
--[[
Ped will stay on the ground after being stunned for at lest ms time. (in milliseconds)
--]]
function PED.SET_PED_MIN_GROUND_TIME_FOR_STUNGUN(ped, ms)
  native.invoke(
    Type.Void, 3985, false,
    arg(Type.Ped, ped),
    arg(Type.Int, ms)
  )
end

-- BOOL IS_PED_PRONE(Ped ped) // 0xD6A86331A537A7B9
function PED.IS_PED_PRONE(ped)
  return native.invoke(
    Type.Bool, 3986, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_COMBAT(Ped ped, Ped target) // 0x4859F1FC66A6278E
--[[
Checks to see if ped and target are in combat with eachother. Only goes one-way: if target is engaged in combat with ped but ped has not yet reacted, the function will return false until ped starts fighting back.

p1 is usually 0 in the scripts because it gets the ped id during the task sequence. For instance: PED::IS_PED_IN_COMBAT(l_42E[4/*14*/], PLAYER::PLAYER_PED_ID()) // armenian2.ct4: 43794
--]]
function PED.IS_PED_IN_COMBAT(ped, target)
  return native.invoke(
    Type.Bool, 3987, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target)
  )
end

-- Entity GET_PED_TARGET_FROM_COMBAT_PED(Ped ped, Any p1) // 0x32C27A11307B01CC
function PED.GET_PED_TARGET_FROM_COMBAT_PED(ped, p1)
  return native.invoke(
    Type.Entity, 3988, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1)
  )
end

-- BOOL CAN_PED_IN_COMBAT_SEE_TARGET(Ped ped, Ped target) // 0xEAD42DE3610D0721
function PED.CAN_PED_IN_COMBAT_SEE_TARGET(ped, target)
  return native.invoke(
    Type.Bool, 3989, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target)
  )
end

-- BOOL IS_PED_DOING_DRIVEBY(Ped ped) // 0xB2C086CC1BF8F2BF
function PED.IS_PED_DOING_DRIVEBY(ped)
  return native.invoke(
    Type.Bool, 3990, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_JACKING(Ped ped) // 0x4AE4FF911DFB61DA
function PED.IS_PED_JACKING(ped)
  return native.invoke(
    Type.Bool, 3991, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_BEING_JACKED(Ped ped) // 0x9A497FE2DF198913
function PED.IS_PED_BEING_JACKED(ped)
  return native.invoke(
    Type.Bool, 3992, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_BEING_STUNNED(Ped ped, int p1) // 0x4FBACCE3B4138EE8
--[[
p1 is always 0
--]]
function PED.IS_PED_BEING_STUNNED(ped, p1)
  return native.invoke(
    Type.Bool, 3993, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1)
  )
end

-- Ped GET_PEDS_JACKER(Ped ped) // 0x9B128DC36C1E04CF
function PED.GET_PEDS_JACKER(ped)
  return native.invoke(
    Type.Ped, 3994, false,
    arg(Type.Ped, ped)
  )
end

-- Ped GET_JACK_TARGET(Ped ped) // 0x5486A79D9FBD342D
function PED.GET_JACK_TARGET(ped)
  return native.invoke(
    Type.Ped, 3995, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_FLEEING(Ped ped) // 0xBBCCE00B381F8482
function PED.IS_PED_FLEEING(ped)
  return native.invoke(
    Type.Bool, 3996, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_COVER(Ped ped, BOOL exceptUseWeapon) // 0x60DFD0691A170B88
--[[
p1 is nearly always 0 in the scripts. 
--]]
function PED.IS_PED_IN_COVER(ped, exceptUseWeapon)
  return native.invoke(
    Type.Bool, 3997, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, exceptUseWeapon)
  )
end

-- BOOL IS_PED_IN_COVER_FACING_LEFT(Ped ped) // 0x845333B3150583AB
function PED.IS_PED_IN_COVER_FACING_LEFT(ped)
  return native.invoke(
    Type.Bool, 3998, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_HIGH_COVER(Ped ped) // 0x6A03BF943D767C93
function PED.IS_PED_IN_HIGH_COVER(ped)
  return native.invoke(
    Type.Bool, 3999, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_GOING_INTO_COVER(Ped ped) // 0x9F65DBC537E59AD5
function PED.IS_PED_GOING_INTO_COVER(ped)
  return native.invoke(
    Type.Bool, 4000, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL SET_PED_PINNED_DOWN(Ped ped, BOOL pinned, int i) // 0xAAD6D1ACF08F4612
--[[
i could be time. Only example in the decompiled scripts uses it as -1.
--]]
function PED.SET_PED_PINNED_DOWN(ped, pinned, i)
  return native.invoke(
    Type.Bool, 4001, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, pinned),
    arg(Type.Int, i)
  )
end

-- BOOL _HAS_PED_CLEAR_LOS_TO_ENTITY(Ped ped, Entity entity, float x, float y, float z, int p5, BOOL p6, BOOL p7) // 0xA32ABFEB2A03B306
function PED._HAS_PED_CLEAR_LOS_TO_ENTITY(ped, entity, x, y, z, p5, p6, p7)
  return native.invoke(
    Type.Bool, 4002, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, p5),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7)
  )
end

-- int GET_SEAT_PED_IS_TRYING_TO_ENTER(Ped ped) // 0x6F4C85ACD641BCD2
function PED.GET_SEAT_PED_IS_TRYING_TO_ENTER(ped)
  return native.invoke(
    Type.Int, 4003, false,
    arg(Type.Ped, ped)
  )
end

-- Vehicle GET_VEHICLE_PED_IS_TRYING_TO_ENTER(Ped ped) // 0x814FA8BE5449445D
function PED.GET_VEHICLE_PED_IS_TRYING_TO_ENTER(ped)
  return native.invoke(
    Type.Vehicle, 4004, false,
    arg(Type.Ped, ped)
  )
end

-- Entity GET_PED_SOURCE_OF_DEATH(Ped ped) // 0x93C8B64DEB84728C
--[[
Returns the Entity (Ped, Vehicle, or ?Object?) that killed the 'ped'

Is best to check if the Ped is dead before asking for its killer.
--]]
function PED.GET_PED_SOURCE_OF_DEATH(ped)
  return native.invoke(
    Type.Entity, 4005, false,
    arg(Type.Ped, ped)
  )
end

-- Hash GET_PED_CAUSE_OF_DEATH(Ped ped) // 0x16FFE42AB2D2DC59
--[[
Returns the hash of the weapon/model/object that killed the ped.
--]]
function PED.GET_PED_CAUSE_OF_DEATH(ped)
  return native.invoke(
    Type.Hash, 4006, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_TIME_OF_DEATH(Ped ped) // 0x1E98817B311AE98A
function PED.GET_PED_TIME_OF_DEATH(ped)
  return native.invoke(
    Type.Int, 4007, false,
    arg(Type.Ped, ped)
  )
end

-- int COUNT_PEDS_IN_COMBAT_WITH_TARGET(Ped ped) // 0x5407B7288D0478B7
function PED.COUNT_PEDS_IN_COMBAT_WITH_TARGET(ped)
  return native.invoke(
    Type.Int, 4008, false,
    arg(Type.Ped, ped)
  )
end

-- int COUNT_PEDS_IN_COMBAT_WITH_TARGET_WITHIN_RADIUS(Ped ped, float x, float y, float z, float radius) // 0x336B3D200AB007CB
function PED.COUNT_PEDS_IN_COMBAT_WITH_TARGET_WITHIN_RADIUS(ped, x, y, z, radius)
  return native.invoke(
    Type.Int, 4009, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void SET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH(Ped ped, Hash hash) // 0xADB3F206518799E8
function PED.SET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH(ped, hash)
  native.invoke(
    Type.Void, 4010, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, hash)
  )
end

-- void SET_PED_RELATIONSHIP_GROUP_HASH(Ped ped, Hash hash) // 0xC80A74AC829DDD92
function PED.SET_PED_RELATIONSHIP_GROUP_HASH(ped, hash)
  native.invoke(
    Type.Void, 4011, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, hash)
  )
end

-- void SET_RELATIONSHIP_BETWEEN_GROUPS(int relationship, Hash group1, Hash group2) // 0xBF25EB89375A37AD
--[[
Sets the relationship between two groups. This should be called twice (once for each group).

Relationship types:
0 = Companion
1 = Respect
2 = Like
3 = Neutral
4 = Dislike
5 = Hate
255 = Pedestrians

Example:
PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);
PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);
--]]
function PED.SET_RELATIONSHIP_BETWEEN_GROUPS(relationship, group1, group2)
  native.invoke(
    Type.Void, 4012, false,
    arg(Type.Int, relationship),
    arg(Type.Hash, group1),
    arg(Type.Hash, group2)
  )
end

-- void CLEAR_RELATIONSHIP_BETWEEN_GROUPS(int relationship, Hash group1, Hash group2) // 0x5E29243FB56FC6D4
--[[
Clears the relationship between two groups. This should be called twice (once for each group).

Relationship types:
0 = Companion
1 = Respect
2 = Like
3 = Neutral
4 = Dislike
5 = Hate
255 = Pedestrians
(Credits: Inco)

Example:
PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C);
PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);
--]]
function PED.CLEAR_RELATIONSHIP_BETWEEN_GROUPS(relationship, group1, group2)
  native.invoke(
    Type.Void, 4013, false,
    arg(Type.Int, relationship),
    arg(Type.Hash, group1),
    arg(Type.Hash, group2)
  )
end

-- BOOL ADD_RELATIONSHIP_GROUP(const char* name, Hash* groupHash) // 0xF372BC22FCB88606
--[[
Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.
--]]
function PED.ADD_RELATIONSHIP_GROUP(name, groupHash)
  return native.invoke(
    Type.Bool, 4014, false,
    arg(Type.String, name),
    ref(Type.Hash, groupHash)
  )
end

-- void REMOVE_RELATIONSHIP_GROUP(Hash groupHash) // 0xB6BA2444AB393DA2
function PED.REMOVE_RELATIONSHIP_GROUP(groupHash)
  native.invoke(
    Type.Void, 4015, false,
    arg(Type.Hash, groupHash)
  )
end

-- BOOL DOES_RELATIONSHIP_GROUP_EXIST(Hash groupHash) // 0xCC6E3B6BB69501F1
function PED.DOES_RELATIONSHIP_GROUP_EXIST(groupHash)
  return native.invoke(
    Type.Bool, 4016, false,
    arg(Type.Hash, groupHash)
  )
end

-- int GET_RELATIONSHIP_BETWEEN_PEDS(Ped ped1, Ped ped2) // 0xEBA5AD3A0EAF7121
--[[
Gets the relationship between two peds. This should be called twice (once for each ped).

Relationship types:
0 = Companion
1 = Respect
2 = Like
3 = Neutral
4 = Dislike
5 = Hate
255 = Pedestrians
(Credits: Inco)

Example:
PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, l_1017, 0xA49E591C);
PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, 0xA49E591C, l_1017);
--]]
function PED.GET_RELATIONSHIP_BETWEEN_PEDS(ped1, ped2)
  return native.invoke(
    Type.Int, 4017, false,
    arg(Type.Ped, ped1),
    arg(Type.Ped, ped2)
  )
end

-- Hash GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH(Ped ped) // 0x42FDD0F017B1E38E
function PED.GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH(ped)
  return native.invoke(
    Type.Hash, 4018, false,
    arg(Type.Ped, ped)
  )
end

-- Hash GET_PED_RELATIONSHIP_GROUP_HASH(Ped ped) // 0x7DBDD04862D95F04
function PED.GET_PED_RELATIONSHIP_GROUP_HASH(ped)
  return native.invoke(
    Type.Hash, 4019, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_RELATIONSHIP_BETWEEN_GROUPS(Hash group1, Hash group2) // 0x9E6B70061662AE5C
--[[
Gets the relationship between two groups. This should be called twice (once for each group).

Relationship types:
0 = Companion
1 = Respect
2 = Like
3 = Neutral
4 = Dislike
5 = Hate
255 = Pedestrians

Example:
PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C);
PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);
--]]
function PED.GET_RELATIONSHIP_BETWEEN_GROUPS(group1, group2)
  return native.invoke(
    Type.Int, 4020, false,
    arg(Type.Hash, group1),
    arg(Type.Hash, group2)
  )
end

-- void SET_RELATIONSHIP_GROUP_AFFECTS_WANTED_LEVEL(Hash group, BOOL p1) // 0x5615E0C5EB2BC6E2
function PED.SET_RELATIONSHIP_GROUP_AFFECTS_WANTED_LEVEL(group, p1)
  native.invoke(
    Type.Void, 4021, false,
    arg(Type.Hash, group),
    arg(Type.Bool, p1)
  )
end

-- void TELL_GROUP_PEDS_IN_AREA_TO_ATTACK(Ped ped, Any p1, float p2, Hash hash, Any p4, Any p5) // 0xAD27D957598E49E9
function PED.TELL_GROUP_PEDS_IN_AREA_TO_ATTACK(ped, p1, p2, hash, p4, p5)
  native.invoke(
    Type.Void, 4022, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1),
    arg(Type.Float, p2),
    arg(Type.Hash, hash),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void SET_PED_CAN_BE_TARGETED_WITHOUT_LOS(Ped ped, BOOL toggle) // 0x4328652AE5769C71
function PED.SET_PED_CAN_BE_TARGETED_WITHOUT_LOS(ped, toggle)
  native.invoke(
    Type.Void, 4023, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_TO_INFORM_RESPECTED_FRIENDS(Ped ped, float radius, int maxFriends) // 0x112942C6E708F70B
function PED.SET_PED_TO_INFORM_RESPECTED_FRIENDS(ped, radius, maxFriends)
  native.invoke(
    Type.Void, 4024, false,
    arg(Type.Ped, ped),
    arg(Type.Float, radius),
    arg(Type.Int, maxFriends)
  )
end

-- BOOL IS_PED_RESPONDING_TO_EVENT(Ped ped, Any event) // 0x625B774D75C87068
function PED.IS_PED_RESPONDING_TO_EVENT(ped, event)
  return native.invoke(
    Type.Bool, 4025, false,
    arg(Type.Ped, ped),
    arg(Type.Any, event)
  )
end

-- BOOL GET_POS_FROM_FIRED_EVENT(Ped ped, int eventType, Any* outData) // 0xBA656A3BB01BDEA3
function PED.GET_POS_FROM_FIRED_EVENT(ped, eventType, outData)
  return native.invoke(
    Type.Bool, 4026, false,
    arg(Type.Ped, ped),
    arg(Type.Int, eventType),
    ref(Type.Any, outData)
  )
end

-- void SET_PED_FIRING_PATTERN(Ped ped, Hash patternHash) // 0x9AC577F5A12AD8A9
--[[
FIRING_PATTERN_BURST_FIRE = 0xD6FF6D61 ( 1073727030 )
FIRING_PATTERN_BURST_FIRE_IN_COVER = 0x026321F1 ( 40051185 )
FIRING_PATTERN_BURST_FIRE_DRIVEBY = 0xD31265F2 ( -753768974 )
FIRING_PATTERN_FROM_GROUND = 0x2264E5D6 ( 577037782 )
FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 0x7A845691 ( 2055493265 )
FIRING_PATTERN_FULL_AUTO = 0xC6EE6B4C ( -957453492 )
FIRING_PATTERN_SINGLE_SHOT = 0x5D60E4E0 ( 1566631136 )
FIRING_PATTERN_BURST_FIRE_PISTOL = 0xA018DB8A ( -1608983670 )
FIRING_PATTERN_BURST_FIRE_SMG = 0xD10DADEE ( 1863348768 )
FIRING_PATTERN_BURST_FIRE_RIFLE = 0x9C74B406 ( -1670073338 )
FIRING_PATTERN_BURST_FIRE_MG = 0xB573C5B4 ( -1250703948 )
FIRING_PATTERN_BURST_FIRE_PUMPSHOTGUN = 0x00BAC39B ( 12239771 )
FIRING_PATTERN_BURST_FIRE_HELI = 0x914E786F ( -1857128337 )
FIRING_PATTERN_BURST_FIRE_MICRO = 0x42EF03FD ( 1122960381 )
FIRING_PATTERN_SHORT_BURSTS = 0x1A92D7DF ( 445831135 )
FIRING_PATTERN_SLOW_FIRE_TANK = 0xE2CA3A71 ( -490063247 )

Firing pattern info: https://pastebin.com/Px036isB
--]]
function PED.SET_PED_FIRING_PATTERN(ped, patternHash)
  native.invoke(
    Type.Void, 4027, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, patternHash)
  )
end

-- void SET_PED_SHOOT_RATE(Ped ped, int shootRate) // 0x614DA022990752DC
--[[
shootRate 0-1000
--]]
function PED.SET_PED_SHOOT_RATE(ped, shootRate)
  native.invoke(
    Type.Void, 4028, false,
    arg(Type.Ped, ped),
    arg(Type.Int, shootRate)
  )
end

-- void SET_COMBAT_FLOAT(Ped ped, int combatType, float p2) // 0xFF41B4B141ED981C
--[[
combatType can be between 0-14. See GET_COMBAT_FLOAT below for a list of possible parameters.
--]]
function PED.SET_COMBAT_FLOAT(ped, combatType, p2)
  native.invoke(
    Type.Void, 4029, false,
    arg(Type.Ped, ped),
    arg(Type.Int, combatType),
    arg(Type.Float, p2)
  )
end

-- float GET_COMBAT_FLOAT(Ped ped, int p1) // 0x52DFF8A10508090A
--[[
p0: Ped Handle
p1: int i | 0 <= i <= 27

p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:

<BlindFireChance value="0.1"/>
<WeaponShootRateModifier value="1.0"/>
<TimeBetweenBurstsInCover value="1.25"/>
<BurstDurationInCover value="2.0"/>
<TimeBetweenPeeks value="10.0"/>
<WeaponAccuracy value="0.18"/>
<FightProficiency value="0.8"/>
<StrafeWhenMovingChance value="1.0"/>
<WalkWhenStrafingChance value="0.0"/>
<AttackWindowDistanceForCover value="55.0"/>
<TimeToInvalidateInjuredTarget value="9.0"/>
<TriggerChargeTime_Near value="4.0"/>
<TriggerChargeTime_Far value="10.0"/>

-------------Confirmed by editing combatbehavior.meta:
p1:
0=BlindFireChance
1=BurstDurationInCover
3=TimeBetweenBurstsInCover
4=TimeBetweenPeeks
5=StrafeWhenMovingChance
8=WalkWhenStrafingChance
11=AttackWindowDistanceForCover
12=TimeToInvalidateInjuredTarget
16=OptimalCoverDistance

--]]
function PED.GET_COMBAT_FLOAT(ped, p1)
  return native.invoke(
    Type.Float, 4030, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1)
  )
end

-- void GET_GROUP_SIZE(int groupID, Any* p1, int* sizeInMembers) // 0x8DE69FE35CA09A45
--[[
p1 may be a BOOL representing whether or not the group even exists
--]]
function PED.GET_GROUP_SIZE(groupID, p1, sizeInMembers)
  native.invoke(
    Type.Void, 4031, false,
    arg(Type.Int, groupID),
    ref(Type.Any, p1),
    ref(Type.Int, sizeInMembers)
  )
end

-- BOOL DOES_GROUP_EXIST(int groupId) // 0x7C6B0C22F9F40BBE
function PED.DOES_GROUP_EXIST(groupId)
  return native.invoke(
    Type.Bool, 4032, false,
    arg(Type.Int, groupId)
  )
end

-- int GET_PED_GROUP_INDEX(Ped ped) // 0xF162E133B4E7A675
--[[
Returns the group id of which the specified ped is a member of.
--]]
function PED.GET_PED_GROUP_INDEX(ped)
  return native.invoke(
    Type.Int, 4033, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_IN_GROUP(Ped ped) // 0x5891CAC5D4ACFF74
function PED.IS_PED_IN_GROUP(ped)
  return native.invoke(
    Type.Bool, 4034, false,
    arg(Type.Ped, ped)
  )
end

-- Player GET_PLAYER_PED_IS_FOLLOWING(Ped ped) // 0x6A3975DEA89F9A17
function PED.GET_PLAYER_PED_IS_FOLLOWING(ped)
  return native.invoke(
    Type.Player, 4035, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_GROUP_FORMATION(int groupId, int formationType) // 0xCE2F5FC3AF7E8C1E
--[[
0: Default
1: Circle Around Leader
2: Alternative Circle Around Leader
3: Line, with Leader at center
--]]
function PED.SET_GROUP_FORMATION(groupId, formationType)
  native.invoke(
    Type.Void, 4036, false,
    arg(Type.Int, groupId),
    arg(Type.Int, formationType)
  )
end

-- void SET_GROUP_FORMATION_SPACING(int groupId, float x, float y, float z) // 0x1D9D45004C28C916
function PED.SET_GROUP_FORMATION_SPACING(groupId, x, y, z)
  native.invoke(
    Type.Void, 4037, false,
    arg(Type.Int, groupId),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void RESET_GROUP_FORMATION_DEFAULT_SPACING(int groupHandle) // 0x63DAB4CCB3273205
function PED.RESET_GROUP_FORMATION_DEFAULT_SPACING(groupHandle)
  native.invoke(
    Type.Void, 4038, false,
    arg(Type.Int, groupHandle)
  )
end

-- Vehicle GET_VEHICLE_PED_IS_USING(Ped ped) // 0x6094AD011A2EA87D
--[[
Gets ID of vehicle player using. It means it can get ID at any interaction with vehicle. Enter\exit for example. And that means it is faster than GET_VEHICLE_PED_IS_IN but less safe.
--]]
function PED.GET_VEHICLE_PED_IS_USING(ped)
  return native.invoke(
    Type.Vehicle, 4039, false,
    arg(Type.Ped, ped)
  )
end

-- Vehicle GET_VEHICLE_PED_IS_ENTERING(Ped ped) // 0xF92691AED837A5FC
function PED.GET_VEHICLE_PED_IS_ENTERING(ped)
  return native.invoke(
    Type.Vehicle, 4040, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_GRAVITY(Ped ped, BOOL toggle) // 0x9FF447B6B6AD960A
--[[
enable or disable the gravity of a ped

Examples:
PED::SET_PED_GRAVITY(PLAYER::PLAYER_PED_ID(), 0x00000001);
PED::SET_PED_GRAVITY(Local_289[iVar0 /*20*/], 0x00000001);
--]]
function PED.SET_PED_GRAVITY(ped, toggle)
  native.invoke(
    Type.Void, 4041, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void APPLY_DAMAGE_TO_PED(Ped ped, int damageAmount, BOOL p2, Any p3, Hash weaponType) // 0x697157CED63F18D4
--[[
damages a ped with the given amount
--]]
function PED.APPLY_DAMAGE_TO_PED(ped, damageAmount, p2, p3, weaponType)
  native.invoke(
    Type.Void, 4042, false,
    arg(Type.Ped, ped),
    arg(Type.Int, damageAmount),
    arg(Type.Bool, p2),
    arg(Type.Any, p3),
    arg(Type.Hash, weaponType)
  )
end

-- int GET_TIME_PED_DAMAGED_BY_WEAPON(Ped ped, Hash weaponHash) // 0x36B77BB84687C318
function PED.GET_TIME_PED_DAMAGED_BY_WEAPON(ped, weaponHash)
  return native.invoke(
    Type.Int, 4043, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash)
  )
end

-- void SET_PED_ALLOWED_TO_DUCK(Ped ped, BOOL toggle) // 0xDA1F1B7BE1A8766F
function PED.SET_PED_ALLOWED_TO_DUCK(ped, toggle)
  native.invoke(
    Type.Void, 4044, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_NEVER_LEAVES_GROUP(Ped ped, BOOL toggle) // 0x3DBFC55D5C9BB447
function PED.SET_PED_NEVER_LEAVES_GROUP(ped, toggle)
  native.invoke(
    Type.Void, 4045, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- int GET_PED_TYPE(Ped ped) // 0xFF059E1E4C01E63C
--[[
https://alloc8or.re/gta5/doc/enums/ePedType.txt
--]]
function PED.GET_PED_TYPE(ped)
  return native.invoke(
    Type.Int, 4046, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_AS_COP(Ped ped, BOOL toggle) // 0xBB03C38DD3FB7FFD
--[[
Turns the desired ped into a cop. If you use this on the player ped, you will become almost invisible to cops dispatched for you. You will also report your own crimes, get a generic cop voice, get a cop-vision-cone on the radar, and you will be unable to shoot at other cops. SWAT and Army will still shoot at you. Toggling ped as "false" has no effect; you must change p0's ped model to disable the effect.
--]]
function PED.SET_PED_AS_COP(ped, toggle)
  native.invoke(
    Type.Void, 4047, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_HEALTH_PENDING_LAST_DAMAGE_EVENT_OVERRIDE_FLAG(BOOL toggle) // 0xB3352E018D6F89DF
function PED.SET_PED_HEALTH_PENDING_LAST_DAMAGE_EVENT_OVERRIDE_FLAG(toggle)
  native.invoke(
    Type.Void, 4048, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_MAX_HEALTH(Ped ped, int value) // 0xF5F6378C4F3419D3
--[[
Sets the maximum health of a ped.
--]]
function PED.SET_PED_MAX_HEALTH(ped, value)
  native.invoke(
    Type.Void, 4049, false,
    arg(Type.Ped, ped),
    arg(Type.Int, value)
  )
end

-- int GET_PED_MAX_HEALTH(Ped ped) // 0x4700A416E8324EF3
function PED.GET_PED_MAX_HEALTH(ped)
  return native.invoke(
    Type.Int, 4050, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_MAX_TIME_IN_WATER(Ped ped, float value) // 0x43C851690662113D
function PED.SET_PED_MAX_TIME_IN_WATER(ped, value)
  native.invoke(
    Type.Void, 4051, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_MAX_TIME_UNDERWATER(Ped ped, float value) // 0x6BA428C528D9E522
function PED.SET_PED_MAX_TIME_UNDERWATER(ped, value)
  native.invoke(
    Type.Void, 4052, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_CORPSE_RAGDOLL_FRICTION(Ped ped, float p1) // 0x2735233A786B1BEF
function PED.SET_CORPSE_RAGDOLL_FRICTION(ped, p1)
  native.invoke(
    Type.Void, 4053, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1)
  )
end

-- void SET_PED_VEHICLE_FORCED_SEAT_USAGE(Ped ped, Vehicle vehicle, int seatIndex, int flags, Any p4) // 0x952F06BEECD775CC
--[[
seatIndex must be <= 2
--]]
function PED.SET_PED_VEHICLE_FORCED_SEAT_USAGE(ped, vehicle, seatIndex, flags, p4)
  native.invoke(
    Type.Void, 4054, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, seatIndex),
    arg(Type.Int, flags),
    arg(Type.Any, p4)
  )
end

-- void CLEAR_ALL_PED_VEHICLE_FORCED_SEAT_USAGE(Ped ped) // 0xE6CA85E7259CE16B
function PED.CLEAR_ALL_PED_VEHICLE_FORCED_SEAT_USAGE(ped)
  native.invoke(
    Type.Void, 4055, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_CAN_BE_KNOCKED_OFF_BIKE(Any p0, Any p1) // 0xB282749D5E028163
--[[
This native does absolutely nothing, just a nullsub
--]]
function PED.SET_PED_CAN_BE_KNOCKED_OFF_BIKE(p0, p1)
  native.invoke(
    Type.Void, 4056, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE(Ped ped, int state) // 0x7A6535691B477C48
--[[
state: https://alloc8or.re/gta5/doc/enums/eKnockOffVehicle.txt
--]]
function PED.SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE(ped, state)
  native.invoke(
    Type.Void, 4057, false,
    arg(Type.Ped, ped),
    arg(Type.Int, state)
  )
end

-- BOOL CAN_KNOCK_PED_OFF_VEHICLE(Ped ped) // 0x51AC07A44D4F5B8A
function PED.CAN_KNOCK_PED_OFF_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 4058, false,
    arg(Type.Ped, ped)
  )
end

-- void KNOCK_PED_OFF_VEHICLE(Ped ped) // 0x45BBCBA77C29A841
function PED.KNOCK_PED_OFF_VEHICLE(ped)
  native.invoke(
    Type.Void, 4059, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_COORDS_NO_GANG(Ped ped, float posX, float posY, float posZ) // 0x87052FE446E07247
function PED.SET_PED_COORDS_NO_GANG(ped, posX, posY, posZ)
  native.invoke(
    Type.Void, 4060, false,
    arg(Type.Ped, ped),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- Ped GET_PED_AS_GROUP_MEMBER(int groupID, int memberNumber) // 0x51455483CF23ED97
--[[
from fm_mission_controller.c4 (variable names changed for clarity):

int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID());
PED::GET_GROUP_SIZE(group, &unused, &groupSize);
if (groupSize >= 1) {
. . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) {
. . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber);
. . . . . . . . //and so on
--]]
function PED.GET_PED_AS_GROUP_MEMBER(groupID, memberNumber)
  return native.invoke(
    Type.Ped, 4061, false,
    arg(Type.Int, groupID),
    arg(Type.Int, memberNumber)
  )
end

-- Ped GET_PED_AS_GROUP_LEADER(int groupID) // 0x5CCE68DBD5FE93EC
function PED.GET_PED_AS_GROUP_LEADER(groupID)
  return native.invoke(
    Type.Ped, 4062, false,
    arg(Type.Int, groupID)
  )
end

-- void SET_PED_KEEP_TASK(Ped ped, BOOL toggle) // 0x971D38760FBC02EF
function PED.SET_PED_KEEP_TASK(ped, toggle)
  native.invoke(
    Type.Void, 4063, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_ALLOW_MINOR_REACTIONS_AS_MISSION_PED(Ped ped, BOOL toggle) // 0x49E50BDB8BA4DAB2
function PED.SET_PED_ALLOW_MINOR_REACTIONS_AS_MISSION_PED(ped, toggle)
  native.invoke(
    Type.Void, 4064, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_SWIMMING(Ped ped) // 0x9DE327631295B4C2
function PED.IS_PED_SWIMMING(ped)
  return native.invoke(
    Type.Bool, 4065, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_SWIMMING_UNDER_WATER(Ped ped) // 0xC024869A53992F34
function PED.IS_PED_SWIMMING_UNDER_WATER(ped)
  return native.invoke(
    Type.Bool, 4066, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_COORDS_KEEP_VEHICLE(Ped ped, float posX, float posY, float posZ) // 0x9AFEFF481A85AB2E
--[[
teleports ped to coords along with the vehicle ped is in
--]]
function PED.SET_PED_COORDS_KEEP_VEHICLE(ped, posX, posY, posZ)
  native.invoke(
    Type.Void, 4067, false,
    arg(Type.Ped, ped),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- void SET_PED_DIES_IN_VEHICLE(Ped ped, BOOL toggle) // 0x2A30922C90C9B42C
function PED.SET_PED_DIES_IN_VEHICLE(ped, toggle)
  native.invoke(
    Type.Void, 4068, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_CREATE_RANDOM_COPS(BOOL toggle) // 0x102E68B2024D536D
function PED.SET_CREATE_RANDOM_COPS(toggle)
  native.invoke(
    Type.Void, 4069, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_CREATE_RANDOM_COPS_NOT_ON_SCENARIOS(BOOL toggle) // 0x8A4986851C4EF6E7
function PED.SET_CREATE_RANDOM_COPS_NOT_ON_SCENARIOS(toggle)
  native.invoke(
    Type.Void, 4070, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_CREATE_RANDOM_COPS_ON_SCENARIOS(BOOL toggle) // 0x444CB7D7DBE6973D
function PED.SET_CREATE_RANDOM_COPS_ON_SCENARIOS(toggle)
  native.invoke(
    Type.Void, 4071, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL CAN_CREATE_RANDOM_COPS() // 0x5EE2CAFF7F17770D
function PED.CAN_CREATE_RANDOM_COPS()
  return native.invoke(
    Type.Bool, 4072, false
  )
end

-- void SET_PED_AS_ENEMY(Ped ped, BOOL toggle) // 0x02A0C9720B854BFA
function PED.SET_PED_AS_ENEMY(ped, toggle)
  native.invoke(
    Type.Void, 4073, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_SMASH_GLASS(Ped ped, BOOL p1, BOOL p2) // 0x1CCE141467FF42A2
function PED.SET_PED_CAN_SMASH_GLASS(ped, p1, p2)
  native.invoke(
    Type.Void, 4074, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_PED_IN_ANY_TRAIN(Ped ped) // 0x6F972C1AB75A1ED0
function PED.IS_PED_IN_ANY_TRAIN(ped)
  return native.invoke(
    Type.Bool, 4075, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_GETTING_INTO_A_VEHICLE(Ped ped) // 0xBB062B2B5722478E
function PED.IS_PED_GETTING_INTO_A_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 4076, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_TRYING_TO_ENTER_A_LOCKED_VEHICLE(Ped ped) // 0x44D28D5DDFE5F68C
function PED.IS_PED_TRYING_TO_ENTER_A_LOCKED_VEHICLE(ped)
  return native.invoke(
    Type.Bool, 4077, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_ENABLE_HANDCUFFS(Ped ped, BOOL toggle) // 0xDF1AF8B5D56542FA
--[[
ped can not pull out a weapon when true
--]]
function PED.SET_ENABLE_HANDCUFFS(ped, toggle)
  native.invoke(
    Type.Void, 4078, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENABLE_BOUND_ANKLES(Ped ped, BOOL toggle) // 0xC52E0F855C58FC2E
--[[
Used with SET_ENABLE_HANDCUFFS in decompiled scripts. From my observations, I have noticed that while being ragdolled you are not able to get up but you can still run. Your legs can also bend.
--]]
function PED.SET_ENABLE_BOUND_ANKLES(ped, toggle)
  native.invoke(
    Type.Void, 4079, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENABLE_SCUBA(Ped ped, BOOL toggle) // 0xF99F62004024D506
--[[
Enables diving motion when underwater.
--]]
function PED.SET_ENABLE_SCUBA(ped, toggle)
  native.invoke(
    Type.Void, 4080, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_CAN_ATTACK_FRIENDLY(Ped ped, BOOL toggle, BOOL p2) // 0xB3B1CB349FF9C75D
--[[
Setting ped to true allows the ped to shoot "friendlies".

p2 set to true when toggle is also true seams to make peds permanently unable to aim at, even if you set p2 back to false.

p1 = false & p2 = false for unable to aim at.
p1 = true & p2 = false for able to aim at. 
--]]
function PED.SET_CAN_ATTACK_FRIENDLY(ped, toggle, p2)
  native.invoke(
    Type.Void, 4081, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle),
    arg(Type.Bool, p2)
  )
end

-- int GET_PED_ALERTNESS(Ped ped) // 0xF6AA118530443FD2
--[[
Returns the ped's alertness (0-3).

Values : 

0 : Neutral
1 : Heard something (gun shot, hit, etc)
2 : Knows (the origin of the event)
3 : Fully alerted (is facing the event?)

If the Ped does not exist, returns -1.
--]]
function PED.GET_PED_ALERTNESS(ped)
  return native.invoke(
    Type.Int, 4082, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_ALERTNESS(Ped ped, int value) // 0xDBA71115ED9941A6
--[[
value ranges from 0 to 3.
--]]
function PED.SET_PED_ALERTNESS(ped, value)
  native.invoke(
    Type.Void, 4083, false,
    arg(Type.Ped, ped),
    arg(Type.Int, value)
  )
end

-- void SET_PED_GET_OUT_UPSIDE_DOWN_VEHICLE(Ped ped, BOOL toggle) // 0xBC0ED94165A48BC2
function PED.SET_PED_GET_OUT_UPSIDE_DOWN_VEHICLE(ped, toggle)
  native.invoke(
    Type.Void, 4084, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_MOVEMENT_CLIPSET(Ped ped, const char* clipSet, float transitionSpeed) // 0xAF8A94EDE7712BEF
--[[
transitionSpeed is the time in seconds it takes to transition from one movement clipset to another.	ransitionSpeed is usually 1.0f

List of movement clipsets:
Thanks to elsewhat for list.

 "ANIM_GROUP_MOVE_BALLISTIC"
 "ANIM_GROUP_MOVE_LEMAR_ALLEY"
 "clipset@move@trash_fast_turn"
 "FEMALE_FAST_RUNNER"
 "missfbi4prepp1_garbageman"
 "move_characters@franklin@fire"
 "move_characters@Jimmy@slow@"
 "move_characters@michael@fire"
 "move_f@flee@a"
 "move_f@scared"
 "move_f@sexy@a"
 "move_heist_lester"
 "move_injured_generic"
 "move_lester_CaneUp"
 "move_m@bag"
 "MOVE_M@BAIL_BOND_NOT_TAZERED"
 "MOVE_M@BAIL_BOND_TAZERED"
 "move_m@brave"
 "move_m@casual@d"
 "move_m@drunk@moderatedrunk"
 "MOVE_M@DRUNK@MODERATEDRUNK"
 "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP"
 "MOVE_M@DRUNK@SLIGHTLYDRUNK"
 "MOVE_M@DRUNK@VERYDRUNK"
 "move_m@fire"
 "move_m@gangster@var_e"
 "move_m@gangster@var_f"
 "move_m@gangster@var_i"
 "move_m@JOG@"
 "MOVE_M@PRISON_GAURD"
 "MOVE_P_M_ONE"
 "MOVE_P_M_ONE_BRIEFCASE"
 "move_p_m_zero_janitor"
 "move_p_m_zero_slow"
 "move_ped_bucket"
 "move_ped_crouched"
 "move_ped_mop"
 "MOVE_M@FEMME@"
 "MOVE_F@FEMME@"
 "MOVE_M@GANGSTER@NG"
 "MOVE_F@GANGSTER@NG"
 "MOVE_M@POSH@"
 "MOVE_F@POSH@"
 "MOVE_M@TOUGH_GUY@"
 "MOVE_F@TOUGH_GUY@"

~ NotCrunchyTaco

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function PED.SET_PED_MOVEMENT_CLIPSET(ped, clipSet, transitionSpeed)
  native.invoke(
    Type.Void, 4085, false,
    arg(Type.Ped, ped),
    arg(Type.String, clipSet),
    arg(Type.Float, transitionSpeed)
  )
end

-- void RESET_PED_MOVEMENT_CLIPSET(Ped ped, float p1) // 0xAA74EC0CB0AAEA2C
--[[
If p1 is 0.0, I believe you are back to normal. 
If p1 is 1.0, it looks like you can only rotate the ped, not walk.

Using the following code to reset back to normal
PED::RESET_PED_MOVEMENT_CLIPSET(PLAYER::PLAYER_PED_ID(), 0.0);
--]]
function PED.RESET_PED_MOVEMENT_CLIPSET(ped, p1)
  native.invoke(
    Type.Void, 4086, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1)
  )
end

-- void SET_PED_STRAFE_CLIPSET(Ped ped, const char* clipSet) // 0x29A28F3F8CF6D854
--[[
Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function PED.SET_PED_STRAFE_CLIPSET(ped, clipSet)
  native.invoke(
    Type.Void, 4087, false,
    arg(Type.Ped, ped),
    arg(Type.String, clipSet)
  )
end

-- void RESET_PED_STRAFE_CLIPSET(Ped ped) // 0x20510814175EA477
function PED.RESET_PED_STRAFE_CLIPSET(ped)
  native.invoke(
    Type.Void, 4088, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_WEAPON_MOVEMENT_CLIPSET(Ped ped, const char* clipSet) // 0x2622E35B77D3ACA2
function PED.SET_PED_WEAPON_MOVEMENT_CLIPSET(ped, clipSet)
  native.invoke(
    Type.Void, 4089, false,
    arg(Type.Ped, ped),
    arg(Type.String, clipSet)
  )
end

-- void RESET_PED_WEAPON_MOVEMENT_CLIPSET(Ped ped) // 0x97B0DB5B4AA74E77
function PED.RESET_PED_WEAPON_MOVEMENT_CLIPSET(ped)
  native.invoke(
    Type.Void, 4090, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_DRIVE_BY_CLIPSET_OVERRIDE(Ped ped, const char* clipset) // 0xED34AB6C5CB36520
function PED.SET_PED_DRIVE_BY_CLIPSET_OVERRIDE(ped, clipset)
  native.invoke(
    Type.Void, 4091, false,
    arg(Type.Ped, ped),
    arg(Type.String, clipset)
  )
end

-- void CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE(Ped ped) // 0x4AFE3690D7E0B5AC
function PED.CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE(ped)
  native.invoke(
    Type.Void, 4092, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_MOTION_IN_COVER_CLIPSET_OVERRIDE(Ped ped, const char* p1) // 0x9DBA107B4937F809
--[[
Found in the b617d scripts:
PED::SET_PED_MOTION_IN_COVER_CLIPSET_OVERRIDE(v_7, "trevor_heist_cover_2h");
--]]
function PED.SET_PED_MOTION_IN_COVER_CLIPSET_OVERRIDE(ped, p1)
  native.invoke(
    Type.Void, 4093, false,
    arg(Type.Ped, ped),
    arg(Type.String, p1)
  )
end

-- void CLEAR_PED_MOTION_IN_COVER_CLIPSET_OVERRIDE(Ped ped) // 0xC79196DCB36F6121
function PED.CLEAR_PED_MOTION_IN_COVER_CLIPSET_OVERRIDE(ped)
  native.invoke(
    Type.Void, 4094, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_PED_FALL_UPPER_BODY_CLIPSET_OVERRIDE(Ped ped) // 0x80054D7FCC70EEC6
function PED.CLEAR_PED_FALL_UPPER_BODY_CLIPSET_OVERRIDE(ped)
  native.invoke(
    Type.Void, 4095, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_IN_VEHICLE_CONTEXT(Ped ped, Hash context) // 0x530071295899A8C6
--[[
PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_PASSENGER"));
PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, MISC::GET_HASH_KEY("MINI_PROSTITUTE_LOW_RESTRICTED_PASSENGER"));
PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT"));
PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, MISC::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT_REAR"));
PED::SET_PED_IN_VEHICLE_CONTEXT(l_95, MISC::GET_HASH_KEY("MISS_FAMILY2_JIMMY_BICYCLE"));
PED::SET_PED_IN_VEHICLE_CONTEXT(num3, MISC::GET_HASH_KEY("MISSFBI2_MICHAEL_DRIVEBY"));
PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISS_ARMENIAN3_FRANKLIN_TENSE"));
PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("MISSFBI5_TREVOR_DRIVING"));
--]]
function PED.SET_PED_IN_VEHICLE_CONTEXT(ped, context)
  native.invoke(
    Type.Void, 4096, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, context)
  )
end

-- void RESET_PED_IN_VEHICLE_CONTEXT(Ped ped) // 0x22EF8FF8778030EB
function PED.RESET_PED_IN_VEHICLE_CONTEXT(ped)
  native.invoke(
    Type.Void, 4097, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM(Ped ped, const char* animDict, const char* anim) // 0x6EC47A344923E1ED
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function PED.IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM(ped, animDict, anim)
  return native.invoke(
    Type.Bool, 4098, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict),
    arg(Type.String, anim)
  )
end

-- void SET_PED_ALTERNATE_WALK_ANIM(Ped ped, const char* animDict, const char* animName, float p3, BOOL p4) // 0x6C60394CB4F75E9A
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function PED.SET_PED_ALTERNATE_WALK_ANIM(ped, animDict, animName, p3, p4)
  native.invoke(
    Type.Void, 4099, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict),
    arg(Type.String, animName),
    arg(Type.Float, p3),
    arg(Type.Bool, p4)
  )
end

-- void CLEAR_PED_ALTERNATE_WALK_ANIM(Ped ped, float p1) // 0x8844BBFCE30AA9E9
function PED.CLEAR_PED_ALTERNATE_WALK_ANIM(ped, p1)
  native.invoke(
    Type.Void, 4100, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1)
  )
end

-- void SET_PED_ALTERNATE_MOVEMENT_ANIM(Ped ped, int stance, const char* animDictionary, const char* animationName, float p4, BOOL p5) // 0x90A43CC281FFAB46
--[[
stance:
0 = idle
1 = walk
2 = running

p5 = usually set to true

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json

Full list of movement clipsets by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json
--]]
function PED.SET_PED_ALTERNATE_MOVEMENT_ANIM(ped, stance, animDictionary, animationName, p4, p5)
  native.invoke(
    Type.Void, 4101, false,
    arg(Type.Ped, ped),
    arg(Type.Int, stance),
    arg(Type.String, animDictionary),
    arg(Type.String, animationName),
    arg(Type.Float, p4),
    arg(Type.Bool, p5)
  )
end

-- void CLEAR_PED_ALTERNATE_MOVEMENT_ANIM(Ped ped, int stance, float p2) // 0xD8D19675ED5FBDCE
function PED.CLEAR_PED_ALTERNATE_MOVEMENT_ANIM(ped, stance, p2)
  native.invoke(
    Type.Void, 4102, false,
    arg(Type.Ped, ped),
    arg(Type.Int, stance),
    arg(Type.Float, p2)
  )
end

-- void SET_PED_GESTURE_GROUP(Ped ped, const char* animGroupGesture) // 0xDDF803377F94AAA8
--[[
From the scripts:
PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),
"ANIM_GROUP_GESTURE_MISS_FRA0");
PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(),
"ANIM_GROUP_GESTURE_MISS_DocksSetup1");
--]]
function PED.SET_PED_GESTURE_GROUP(ped, animGroupGesture)
  native.invoke(
    Type.Void, 4103, false,
    arg(Type.Ped, ped),
    arg(Type.String, animGroupGesture)
  )
end

-- Vector3 GET_ANIM_INITIAL_OFFSET_POSITION(const char* animDict, const char* animName, float x, float y, float z, float xRot, float yRot, float zRot, float p8, int p9) // 0xBE22B26DD764C040
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function PED.GET_ANIM_INITIAL_OFFSET_POSITION(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9)
  return native.invoke(
    Type.Vector3, 4104, false,
    arg(Type.String, animDict),
    arg(Type.String, animName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, p8),
    arg(Type.Int, p9)
  )
end

-- Vector3 GET_ANIM_INITIAL_OFFSET_ROTATION(const char* animDict, const char* animName, float x, float y, float z, float xRot, float yRot, float zRot, float p8, int p9) // 0x4B805E6046EE9E47
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function PED.GET_ANIM_INITIAL_OFFSET_ROTATION(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9)
  return native.invoke(
    Type.Vector3, 4105, false,
    arg(Type.String, animDict),
    arg(Type.String, animName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, p8),
    arg(Type.Int, p9)
  )
end

-- int GET_PED_DRAWABLE_VARIATION(Ped ped, int componentId) // 0x67F3780DD425D4FC
--[[
Ids
0 - Head
1 - Beard
2 - Hair
3 - Torso
4 - Legs
5 - Hands
6 - Foot
7 - ------
8 - Accessories 1
9 - Accessories 2
10- Decals
11 - Auxiliary parts for torso
--]]
function PED.GET_PED_DRAWABLE_VARIATION(ped, componentId)
  return native.invoke(
    Type.Int, 4106, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId)
  )
end

-- int GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS(Ped ped, int componentId) // 0x27561561732A7842
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS(ped, componentId)
  return native.invoke(
    Type.Int, 4107, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId)
  )
end

-- int GET_PED_TEXTURE_VARIATION(Ped ped, int componentId) // 0x04A355E041E004E6
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.GET_PED_TEXTURE_VARIATION(ped, componentId)
  return native.invoke(
    Type.Int, 4108, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId)
  )
end

-- int GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(Ped ped, int componentId, int drawableId) // 0x8F7156A3142A6BAD
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(ped, componentId, drawableId)
  return native.invoke(
    Type.Int, 4109, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId),
    arg(Type.Int, drawableId)
  )
end

-- int GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS(Ped ped, int propId) // 0x5FAF9754E789FB47
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS(ped, propId)
  return native.invoke(
    Type.Int, 4110, false,
    arg(Type.Ped, ped),
    arg(Type.Int, propId)
  )
end

-- int GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(Ped ped, int propId, int drawableId) // 0xA6E7F1CEB523E171
--[[
Need to check behavior when drawableId = -1

- Doofy.Ass
Why this function doesn't work and return nill value?
GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(PLAYER.PLAYER_PED_ID(), 0, 5)

tick: scripts/addins/menu_execute.lua:51: attempt to call field 'GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS' (a nil value)


List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(ped, propId, drawableId)
  return native.invoke(
    Type.Int, 4111, false,
    arg(Type.Ped, ped),
    arg(Type.Int, propId),
    arg(Type.Int, drawableId)
  )
end

-- int GET_PED_PALETTE_VARIATION(Ped ped, int componentId) // 0xE3DD5F2A84B42281
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.GET_PED_PALETTE_VARIATION(ped, componentId)
  return native.invoke(
    Type.Int, 4112, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId)
  )
end

-- BOOL GET_MP_OUTFIT_DATA_FROM_METADATA(Any* p0, Any* p1) // 0x9E30E91FB03A2CAF
function PED.GET_MP_OUTFIT_DATA_FROM_METADATA(p0, p1)
  return native.invoke(
    Type.Bool, 4113, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- int GET_FM_MALE_SHOP_PED_APPAREL_ITEM_INDEX(int p0) // 0x1E77FA7A62EE6C4C
function PED.GET_FM_MALE_SHOP_PED_APPAREL_ITEM_INDEX(p0)
  return native.invoke(
    Type.Int, 4114, false,
    arg(Type.Int, p0)
  )
end

-- int GET_FM_FEMALE_SHOP_PED_APPAREL_ITEM_INDEX(int p0) // 0xF033419D1B81FAE8
function PED.GET_FM_FEMALE_SHOP_PED_APPAREL_ITEM_INDEX(p0)
  return native.invoke(
    Type.Int, 4115, false,
    arg(Type.Int, p0)
  )
end

-- BOOL IS_PED_COMPONENT_VARIATION_VALID(Ped ped, int componentId, int drawableId, int textureId) // 0xE825F6B6CEA7671D
--[[
Checks if the component variation is valid, this works great for randomizing components using loops.

List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html

Full list of ped components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedComponentVariations.json
--]]
function PED.IS_PED_COMPONENT_VARIATION_VALID(ped, componentId, drawableId, textureId)
  return native.invoke(
    Type.Bool, 4116, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId),
    arg(Type.Int, drawableId),
    arg(Type.Int, textureId)
  )
end

-- void SET_PED_COMPONENT_VARIATION(Ped ped, int componentId, int drawableId, int textureId, int paletteId) // 0x262B14F48D29DE80
--[[
paletteId: 0 to 3.

componentId:
enum ePedVarComp
{
	PV_COMP_INVALID = -1,
	PV_COMP_HEAD,
	PV_COMP_BERD,
	PV_COMP_HAIR,
	PV_COMP_UPPR,
	PV_COMP_LOWR,
	PV_COMP_HAND,
	PV_COMP_FEET,
	PV_COMP_TEEF,
	PV_COMP_ACCS,
	PV_COMP_TASK,
	PV_COMP_DECL,
	PV_COMP_JBIB,
	PV_COMP_MAX
};

Examples: https://gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html

Full list of ped components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedComponentVariations.json
--]]
function PED.SET_PED_COMPONENT_VARIATION(ped, componentId, drawableId, textureId, paletteId)
  native.invoke(
    Type.Void, 4117, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId),
    arg(Type.Int, drawableId),
    arg(Type.Int, textureId),
    arg(Type.Int, paletteId)
  )
end

-- void SET_PED_RANDOM_COMPONENT_VARIATION(Ped ped, int p1) // 0xC8A9481A01E63C28
--[[
p1 is always 0 in R* scripts.

List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.SET_PED_RANDOM_COMPONENT_VARIATION(ped, p1)
  native.invoke(
    Type.Void, 4118, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1)
  )
end

-- void SET_PED_RANDOM_PROPS(Ped ped) // 0xC44AA05345C992C6
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.SET_PED_RANDOM_PROPS(ped)
  native.invoke(
    Type.Void, 4119, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_DEFAULT_COMPONENT_VARIATION(Ped ped) // 0x45EEE61580806D63
--[[
Sets Ped Default Clothes
--]]
function PED.SET_PED_DEFAULT_COMPONENT_VARIATION(ped)
  native.invoke(
    Type.Void, 4120, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_BLEND_FROM_PARENTS(Ped ped, Any p1, Any p2, float p3, float p4) // 0x137BBD05230DB22D
function PED.SET_PED_BLEND_FROM_PARENTS(ped, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4121, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4)
  )
end

-- void SET_PED_HEAD_BLEND_DATA(Ped ped, int shapeFirstID, int shapeSecondID, int shapeThirdID, int skinFirstID, int skinSecondID, int skinThirdID, float shapeMix, float skinMix, float thirdMix, BOOL isParent) // 0x9414E18B9434C2FE
--[[
The "shape" parameters control the shape of the ped's face. The "skin" parameters control the skin tone. ShapeMix and skinMix control how much the first and second IDs contribute,(typically mother and father.) ThirdMix overrides the others in favor of the third IDs. IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.

The IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.

!!!Can someone add working example for this???

try this:
       headBlendData headData;
       GET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), &headData);

       SET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), headData.shapeFirst, headData.shapeSecond, headData.shapeThird, headData.skinFirst, headData.skinSecond
          , headData.skinThird, headData.shapeMix, headData.skinMix, headData.skinThird, 0);


For more info please refer to this topic. 
gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained
--]]
function PED.SET_PED_HEAD_BLEND_DATA(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent)
  native.invoke(
    Type.Void, 4122, false,
    arg(Type.Ped, ped),
    arg(Type.Int, shapeFirstID),
    arg(Type.Int, shapeSecondID),
    arg(Type.Int, shapeThirdID),
    arg(Type.Int, skinFirstID),
    arg(Type.Int, skinSecondID),
    arg(Type.Int, skinThirdID),
    arg(Type.Float, shapeMix),
    arg(Type.Float, skinMix),
    arg(Type.Float, thirdMix),
    arg(Type.Bool, isParent)
  )
end

-- BOOL GET_PED_HEAD_BLEND_DATA(Ped ped, Any* headBlendData) // 0x2746BD9D88C5C5D0
--[[
The pointer is to a padded struct that matches the arguments to SET_PED_HEAD_BLEND_DATA(...). There are 4 bytes of padding after each field.
pass this struct in the second parameter 
struct headBlendData
{
    int shapeFirst;
    int padding1;
    int shapeSecond;
    int padding2;
    int shapeThird;
    int padding3;
    int skinFirst;
    int padding4;
    int skinSecond;
    int padding5;
    int skinThird;
    int padding6;
    float shapeMix;
    int padding7;
    float skinMix;
    int padding8;
    float thirdMix;
    int padding9;
    bool isParent;
};
--]]
function PED.GET_PED_HEAD_BLEND_DATA(ped, headBlendData)
  return native.invoke(
    Type.Bool, 4123, false,
    arg(Type.Ped, ped),
    ref(Type.Any, headBlendData)
  )
end

-- void UPDATE_PED_HEAD_BLEND_DATA(Ped ped, float shapeMix, float skinMix, float thirdMix) // 0x723538F61C647C5A
--[[
See SET_PED_HEAD_BLEND_DATA().
--]]
function PED.UPDATE_PED_HEAD_BLEND_DATA(ped, shapeMix, skinMix, thirdMix)
  native.invoke(
    Type.Void, 4124, false,
    arg(Type.Ped, ped),
    arg(Type.Float, shapeMix),
    arg(Type.Float, skinMix),
    arg(Type.Float, thirdMix)
  )
end

-- void SET_HEAD_BLEND_EYE_COLOR(Ped ped, int index) // 0x50B56988B170AFDF
--[[
Used for freemode (online) characters.

For some reason, the scripts use a rounded float for the index.
Indexes:
1. black
2. very light blue/green
3. dark blue
4. brown
5. darker brown
6. light brown
7. blue
8. light blue
9. pink
10. yellow
11. purple
12. black
13. dark green
14. light brown
15. yellow/black pattern
16. light colored spiral pattern
17. shiny red
18. shiny half blue/half red
19. half black/half light blue
20. white/red perimter
21. green snake
22. red snake
23. dark blue snake
24. dark yellow
25. bright yellow
26. all black
28. red small pupil
29. devil blue/black
30. white small pupil
31. glossed over
--]]
function PED.SET_HEAD_BLEND_EYE_COLOR(ped, index)
  native.invoke(
    Type.Void, 4125, false,
    arg(Type.Ped, ped),
    arg(Type.Int, index)
  )
end

-- int GET_HEAD_BLEND_EYE_COLOR(Ped ped) // 0x76BBA2CEE66D47E9
--[[
A getter for _SET_PED_EYE_COLOR. Returns -1 if fails to get.
--]]
function PED.GET_HEAD_BLEND_EYE_COLOR(ped)
  return native.invoke(
    Type.Int, 4126, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_HEAD_OVERLAY(Ped ped, int overlayID, int index, float opacity) // 0x48F44967FA05CC1E
--[[
OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0. 

overlayID       Part                  Index, to disable
0               Blemishes             0 - 23, 255
1               Facial Hair           0 - 28, 255
2               Eyebrows              0 - 33, 255
3               Ageing                0 - 14, 255
4               Makeup                0 - 74, 255
5               Blush                 0 - 6, 255
6               Complexion            0 - 11, 255
7               Sun Damage            0 - 10, 255
8               Lipstick              0 - 9, 255
9               Moles/Freckles        0 - 17, 255
10              Chest Hair            0 - 16, 255
11              Body Blemishes        0 - 11, 255
12              Add Body Blemishes    0 - 1, 255
--]]
function PED.SET_PED_HEAD_OVERLAY(ped, overlayID, index, opacity)
  native.invoke(
    Type.Void, 4127, false,
    arg(Type.Ped, ped),
    arg(Type.Int, overlayID),
    arg(Type.Int, index),
    arg(Type.Float, opacity)
  )
end

-- int GET_PED_HEAD_OVERLAY(Ped ped, int overlayID) // 0xA60EF3B6461A4D43
--[[
Likely a char, if that overlay is not set, e.i. "None" option, returns 255;

This might be the once removed native GET_PED_HEAD_OVERLAY.
--]]
function PED.GET_PED_HEAD_OVERLAY(ped, overlayID)
  return native.invoke(
    Type.Int, 4128, false,
    arg(Type.Ped, ped),
    arg(Type.Int, overlayID)
  )
end

-- int GET_PED_HEAD_OVERLAY_NUM(int overlayID) // 0xCF1CE768BB43480E
function PED.GET_PED_HEAD_OVERLAY_NUM(overlayID)
  return native.invoke(
    Type.Int, 4129, false,
    arg(Type.Int, overlayID)
  )
end

-- void SET_PED_HEAD_OVERLAY_TINT(Ped ped, int overlayID, int colorType, int colorID, int secondColorID) // 0x497BF74A7B9CB952
--[[


ColorType is 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.

Called after SET_PED_HEAD_OVERLAY().
--]]
function PED.SET_PED_HEAD_OVERLAY_TINT(ped, overlayID, colorType, colorID, secondColorID)
  native.invoke(
    Type.Void, 4130, false,
    arg(Type.Ped, ped),
    arg(Type.Int, overlayID),
    arg(Type.Int, colorType),
    arg(Type.Int, colorID),
    arg(Type.Int, secondColorID)
  )
end

-- void SET_PED_HAIR_TINT(Ped ped, int colorID, int highlightColorID) // 0x4CFFC65454C93A49
function PED.SET_PED_HAIR_TINT(ped, colorID, highlightColorID)
  native.invoke(
    Type.Void, 4131, false,
    arg(Type.Ped, ped),
    arg(Type.Int, colorID),
    arg(Type.Int, highlightColorID)
  )
end

-- int GET_NUM_PED_HAIR_TINTS() // 0xE5C0CF872C2AD150
function PED.GET_NUM_PED_HAIR_TINTS()
  return native.invoke(
    Type.Int, 4132, false
  )
end

-- int GET_NUM_PED_MAKEUP_TINTS() // 0xD1F7CA1535D22818
function PED.GET_NUM_PED_MAKEUP_TINTS()
  return native.invoke(
    Type.Int, 4133, false
  )
end

-- void GET_PED_HAIR_TINT_COLOR(int hairColorIndex, int* outR, int* outG, int* outB) // 0x4852FC386E2E1BB5
--[[
Input: Haircolor index, value between 0 and 63 (inclusive).
Output: RGB values for the haircolor specified in the input.

This is used with the hair color swatches scaleform.
Use `GET_PED_MAKEUP_TINT_COLOR` to get the makeup colors.
--]]
function PED.GET_PED_HAIR_TINT_COLOR(hairColorIndex, outR, outG, outB)
  native.invoke(
    Type.Void, 4134, false,
    arg(Type.Int, hairColorIndex),
    ref(Type.Int, outR),
    ref(Type.Int, outG),
    ref(Type.Int, outB)
  )
end

-- void GET_PED_MAKEUP_TINT_COLOR(int makeupColorIndex, int* outR, int* outG, int* outB) // 0x013E5CFC38CD5387
--[[
Input: Makeup color index, value between 0 and 63 (inclusive).
Output: RGB values for the makeup color specified in the input.

This is used with the makeup color swatches scaleform.
Use `GET_PED_HAIR_TINT_COLOR` to get the hair colors.
--]]
function PED.GET_PED_MAKEUP_TINT_COLOR(makeupColorIndex, outR, outG, outB)
  native.invoke(
    Type.Void, 4135, false,
    arg(Type.Int, makeupColorIndex),
    ref(Type.Int, outR),
    ref(Type.Int, outG),
    ref(Type.Int, outB)
  )
end

-- BOOL IS_PED_HAIR_TINT_FOR_CREATOR(int colorId) // 0xED6D8E27A43B8CDE
function PED.IS_PED_HAIR_TINT_FOR_CREATOR(colorId)
  return native.invoke(
    Type.Bool, 4136, false,
    arg(Type.Int, colorId)
  )
end

-- int GET_DEFAULT_SECONDARY_TINT_FOR_CREATOR(int colorId) // 0xEA9960D07DADCF10
function PED.GET_DEFAULT_SECONDARY_TINT_FOR_CREATOR(colorId)
  return native.invoke(
    Type.Int, 4137, false,
    arg(Type.Int, colorId)
  )
end

-- BOOL IS_PED_LIPSTICK_TINT_FOR_CREATOR(int colorId) // 0x3E802F11FBE27674
function PED.IS_PED_LIPSTICK_TINT_FOR_CREATOR(colorId)
  return native.invoke(
    Type.Bool, 4138, false,
    arg(Type.Int, colorId)
  )
end

-- BOOL IS_PED_BLUSH_TINT_FOR_CREATOR(int colorId) // 0xF41B5D290C99A3D6
function PED.IS_PED_BLUSH_TINT_FOR_CREATOR(colorId)
  return native.invoke(
    Type.Bool, 4139, false,
    arg(Type.Int, colorId)
  )
end

-- BOOL IS_PED_HAIR_TINT_FOR_BARBER(int colorID) // 0xE0D36E5D9E99CC21
function PED.IS_PED_HAIR_TINT_FOR_BARBER(colorID)
  return native.invoke(
    Type.Bool, 4140, false,
    arg(Type.Int, colorID)
  )
end

-- int GET_DEFAULT_SECONDARY_TINT_FOR_BARBER(int colorID) // 0xAAA6A3698A69E048
function PED.GET_DEFAULT_SECONDARY_TINT_FOR_BARBER(colorID)
  return native.invoke(
    Type.Int, 4141, false,
    arg(Type.Int, colorID)
  )
end

-- BOOL IS_PED_LIPSTICK_TINT_FOR_BARBER(int colorID) // 0x0525A2C2562F3CD4
function PED.IS_PED_LIPSTICK_TINT_FOR_BARBER(colorID)
  return native.invoke(
    Type.Bool, 4142, false,
    arg(Type.Int, colorID)
  )
end

-- BOOL IS_PED_BLUSH_TINT_FOR_BARBER(int colorID) // 0x604E810189EE3A59
function PED.IS_PED_BLUSH_TINT_FOR_BARBER(colorID)
  return native.invoke(
    Type.Bool, 4143, false,
    arg(Type.Int, colorID)
  )
end

-- BOOL IS_PED_BLUSH_FACEPAINT_TINT_FOR_BARBER(int colorId) // 0x09E7ECA981D9B210
function PED.IS_PED_BLUSH_FACEPAINT_TINT_FOR_BARBER(colorId)
  return native.invoke(
    Type.Bool, 4144, false,
    arg(Type.Int, colorId)
  )
end

-- int GET_TINT_INDEX_FOR_LAST_GEN_HAIR_TEXTURE(Hash modelHash, int drawableId, int textureId) // 0xC56FBF2F228E1DAC
function PED.GET_TINT_INDEX_FOR_LAST_GEN_HAIR_TEXTURE(modelHash, drawableId, textureId)
  return native.invoke(
    Type.Int, 4145, false,
    arg(Type.Hash, modelHash),
    arg(Type.Int, drawableId),
    arg(Type.Int, textureId)
  )
end

-- void SET_PED_MICRO_MORPH(Ped ped, int index, float scale) // 0x71A5C1DBA060049E
--[[
Sets the various freemode face features, e.g. nose length, chin shape. Scale ranges from -1.0 to 1.0.



0 - Nose Width (Thin/Wide)

1 - Nose Peak (Up/Down)

2 - Nose Length (Long/Short)

3 - Nose Bone Curveness (Crooked/Curved)

4 - Nose Tip (Up/Down)

5 - Nose Bone Twist (Left/Right)

6 - Eyebrow (Up/Down)

7 - Eyebrow (In/Out)

8 - Cheek Bones (Up/Down)

9 - Cheek Sideways Bone Size (In/Out)

10 - Cheek Bones Width (Puffed/Gaunt)

11 - Eye Opening (Both) (Wide/Squinted)

12 - Lip Thickness (Both) (Fat/Thin)

13 - Jaw Bone Width (Narrow/Wide)

14 - Jaw Bone Shape (Round/Square)

15 - Chin Bone (Up/Down)

16 - Chin Bone Length (In/Out or Backward/Forward)

17 - Chin Bone Shape (Pointed/Square)

18 - Chin Hole (Chin Bum)

19 - Neck Thickness (Thin/Thick)
--]]
function PED.SET_PED_MICRO_MORPH(ped, index, scale)
  native.invoke(
    Type.Void, 4146, false,
    arg(Type.Ped, ped),
    arg(Type.Int, index),
    arg(Type.Float, scale)
  )
end

-- BOOL HAS_PED_HEAD_BLEND_FINISHED(Ped ped) // 0x654CD0A825161131
function PED.HAS_PED_HEAD_BLEND_FINISHED(ped)
  return native.invoke(
    Type.Bool, 4147, false,
    arg(Type.Ped, ped)
  )
end

-- void FINALIZE_HEAD_BLEND(Ped ped) // 0x4668D80430D6C299
function PED.FINALIZE_HEAD_BLEND(ped)
  native.invoke(
    Type.Void, 4148, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_HEAD_BLEND_PALETTE_COLOR(Ped ped, int r, int g, int b, int id) // 0xCC9682B8951C5229
--[[
p4 seems to vary from 0 to 3.
Preview: https://gfycat.com/MaleRareAmazonparrot
--]]
function PED.SET_HEAD_BLEND_PALETTE_COLOR(ped, r, g, b, id)
  native.invoke(
    Type.Void, 4149, false,
    arg(Type.Ped, ped),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, id)
  )
end

-- void DISABLE_HEAD_BLEND_PALETTE_COLOR(Ped ped) // 0xA21C118553BBDF02
function PED.DISABLE_HEAD_BLEND_PALETTE_COLOR(ped)
  native.invoke(
    Type.Void, 4150, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_HEAD_BLEND_FIRST_INDEX(int type) // 0x68D353AB88B97E0C
--[[
Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.

Used when calling SET_PED_HEAD_BLEND_DATA.
--]]
function PED.GET_PED_HEAD_BLEND_FIRST_INDEX(type)
  return native.invoke(
    Type.Int, 4151, false,
    arg(Type.Int, type)
  )
end

-- int GET_PED_HEAD_BLEND_NUM_HEADS(int type) // 0x5EF37013A6539C9D
--[[
Type equals 0 for male non-dlc, 1 for female non-dlc, 2 for male dlc, and 3 for female dlc.
--]]
function PED.GET_PED_HEAD_BLEND_NUM_HEADS(type)
  return native.invoke(
    Type.Int, 4152, false,
    arg(Type.Int, type)
  )
end

-- int SET_PED_PRELOAD_VARIATION_DATA(Ped ped, int slot, int drawableId, int textureId) // 0x39D55A620FCB6A3A
--[[
from extreme3.c4
PED::SET_PED_PRELOAD_VARIATION_DATA(PLAYER::PLAYER_PED_ID(), 8, PED::GET_PED_DRAWABLE_VARIATION(PLAYER::PLAYER_PED_ID(), 8), PED::GET_PED_TEXTURE_VARIATION(PLAYER::PLAYER_PED_ID(), 8));

p1 is probably componentId
--]]
function PED.SET_PED_PRELOAD_VARIATION_DATA(ped, slot, drawableId, textureId)
  return native.invoke(
    Type.Int, 4153, false,
    arg(Type.Ped, ped),
    arg(Type.Int, slot),
    arg(Type.Int, drawableId),
    arg(Type.Int, textureId)
  )
end

-- BOOL HAS_PED_PRELOAD_VARIATION_DATA_FINISHED(Ped ped) // 0x66680A92700F43DF
function PED.HAS_PED_PRELOAD_VARIATION_DATA_FINISHED(ped)
  return native.invoke(
    Type.Bool, 4154, false,
    arg(Type.Ped, ped)
  )
end

-- void RELEASE_PED_PRELOAD_VARIATION_DATA(Ped ped) // 0x5AAB586FFEC0FD96
function PED.RELEASE_PED_PRELOAD_VARIATION_DATA(ped)
  native.invoke(
    Type.Void, 4155, false,
    arg(Type.Ped, ped)
  )
end

-- int SET_PED_PRELOAD_PROP_DATA(Ped ped, int componentId, int drawableId, int TextureId) // 0x2B16A3BFF1FBCE49
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.SET_PED_PRELOAD_PROP_DATA(ped, componentId, drawableId, TextureId)
  return native.invoke(
    Type.Int, 4156, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId),
    arg(Type.Int, drawableId),
    arg(Type.Int, TextureId)
  )
end

-- BOOL HAS_PED_PRELOAD_PROP_DATA_FINISHED(Ped ped) // 0x784002A632822099
function PED.HAS_PED_PRELOAD_PROP_DATA_FINISHED(ped)
  return native.invoke(
    Type.Bool, 4157, false,
    arg(Type.Ped, ped)
  )
end

-- void RELEASE_PED_PRELOAD_PROP_DATA(Ped ped) // 0xF79F9DEF0AADE61A
function PED.RELEASE_PED_PRELOAD_PROP_DATA(ped)
  native.invoke(
    Type.Void, 4158, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_PROP_INDEX(Ped ped, int componentId, Any p2) // 0x898CC20EA75BACD8
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.GET_PED_PROP_INDEX(ped, componentId, p2)
  return native.invoke(
    Type.Int, 4159, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId),
    arg(Type.Any, p2)
  )
end

-- void SET_PED_PROP_INDEX(Ped ped, int componentId, int drawableId, int TextureId, BOOL attach, Any p5) // 0x93376B65A266EB5F
--[[
ComponentId can be set to various things based on what category you're wanting to set
enum PedPropsData
{
    PED_PROP_HATS = 0,
    PED_PROP_GLASSES = 1,
 PED_PROP_EARS = 2,
    PED_PROP_WATCHES = 3,
};
Usage: SET_PED_PROP_INDEX(playerPed, PED_PROP_HATS, GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS(playerPed, PED_PROP_HATS), GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(playerPed, PED_PROP_HATS, 0), TRUE);

List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.SET_PED_PROP_INDEX(ped, componentId, drawableId, TextureId, attach, p5)
  native.invoke(
    Type.Void, 4160, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId),
    arg(Type.Int, drawableId),
    arg(Type.Int, TextureId),
    arg(Type.Bool, attach),
    arg(Type.Any, p5)
  )
end

-- void KNOCK_OFF_PED_PROP(Ped ped, BOOL p1, BOOL p2, BOOL p3, BOOL p4) // 0x6FD7816A36615F48
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.KNOCK_OFF_PED_PROP(ped, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4161, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4)
  )
end

-- void CLEAR_PED_PROP(Ped ped, int propId, Any p2) // 0x0943E5B8E078E76E
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.CLEAR_PED_PROP(ped, propId, p2)
  native.invoke(
    Type.Void, 4162, false,
    arg(Type.Ped, ped),
    arg(Type.Int, propId),
    arg(Type.Any, p2)
  )
end

-- void CLEAR_ALL_PED_PROPS(Ped ped, Any p1) // 0xCD8A7537A9B52F06
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.CLEAR_ALL_PED_PROPS(ped, p1)
  native.invoke(
    Type.Void, 4163, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1)
  )
end

-- void DROP_AMBIENT_PROP(Ped ped) // 0xAFF4710E2A0A6C12
function PED.DROP_AMBIENT_PROP(ped)
  native.invoke(
    Type.Void, 4164, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_PROP_TEXTURE_INDEX(Ped ped, int componentId) // 0xE131A28626F81AB2
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.GET_PED_PROP_TEXTURE_INDEX(ped, componentId)
  return native.invoke(
    Type.Int, 4165, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId)
  )
end

-- void CLEAR_PED_PARACHUTE_PACK_VARIATION(Ped ped) // 0x1280804F7CFD2D6C
function PED.CLEAR_PED_PARACHUTE_PACK_VARIATION(ped)
  native.invoke(
    Type.Void, 4166, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_SCUBA_GEAR_VARIATION(Ped ped) // 0x36C6984C3ED0C911
--[[
This native sets a scuba mask for freemode models and an oxygen bottle for player_* models. It works on freemode and player_* models.
--]]
function PED.SET_PED_SCUBA_GEAR_VARIATION(ped)
  native.invoke(
    Type.Void, 4167, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_PED_SCUBA_GEAR_VARIATION(Ped ped) // 0xB50EB4CCB29704AC
--[[
Removes the scubagear (for mp male: component id: 8, drawableId: 123, textureId: any) from peds. Does not play the 'remove scuba gear' animation, but instantly removes it.
--]]
function PED.CLEAR_PED_SCUBA_GEAR_VARIATION(ped)
  native.invoke(
    Type.Void, 4168, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_USING_PED_SCUBA_GEAR_VARIATION(Any p0) // 0xFEC9A3B1820F3331
function PED.IS_USING_PED_SCUBA_GEAR_VARIATION(p0)
  return native.invoke(
    Type.Bool, 4169, false,
    arg(Type.Any, p0)
  )
end

-- void SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(Ped ped, BOOL toggle) // 0x9F8AA94D6D97DBF4
--[[
works with TASK::TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS to make a ped completely oblivious to all events going on around him
--]]
function PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, toggle)
  native.invoke(
    Type.Void, 4170, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_BOUNDS_ORIENTATION(Ped ped, float p1, float p2, float x, float y, float z) // 0x4F5F651ACCC9C4CF
function PED.SET_PED_BOUNDS_ORIENTATION(ped, p1, p2, x, y, z)
  native.invoke(
    Type.Void, 4171, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void REGISTER_TARGET(Ped ped, Ped target) // 0x2F25D9AEFA34FBA2
--[[
PED::REGISTER_TARGET(l_216, PLAYER::PLAYER_PED_ID()); from re_prisonbreak.txt.

l_216 = RECSBRobber1
--]]
function PED.REGISTER_TARGET(ped, target)
  native.invoke(
    Type.Void, 4172, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target)
  )
end

-- void REGISTER_HATED_TARGETS_AROUND_PED(Ped ped, float radius) // 0x9222F300BF8354FE
--[[
Based on TASK_COMBAT_HATED_TARGETS_AROUND_PED, the parameters are likely similar (PedHandle, and area to attack in).
--]]
function PED.REGISTER_HATED_TARGETS_AROUND_PED(ped, radius)
  native.invoke(
    Type.Void, 4173, false,
    arg(Type.Ped, ped),
    arg(Type.Float, radius)
  )
end

-- Ped GET_RANDOM_PED_AT_COORD(float x, float y, float z, float xRadius, float yRadius, float zRadius, int pedType) // 0x876046A8E3A4B71C
--[[
Gets a random ped in the x/y/zRadius near the x/y/z coordinates passed. 

Ped Types:
Any = -1
Player = 1
Male = 4 
Female = 5 
Cop = 6
Human = 26
SWAT = 27 
Animal = 28
Army = 29
--]]
function PED.GET_RANDOM_PED_AT_COORD(x, y, z, xRadius, yRadius, zRadius, pedType)
  return native.invoke(
    Type.Ped, 4174, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, xRadius),
    arg(Type.Float, yRadius),
    arg(Type.Float, zRadius),
    arg(Type.Int, pedType)
  )
end

-- BOOL GET_CLOSEST_PED(float x, float y, float z, float radius, BOOL p4, BOOL p5, Ped* outPed, BOOL p7, BOOL p8, int pedType) // 0xC33AB876A77F8164
--[[
Gets the closest ped in a radius.

Ped Types:
Any ped = -1
Player = 1
Male = 4 
Female = 5 
Cop = 6
Human = 26
SWAT = 27 
Animal = 28
Army = 29

------------------
P4 P5 P7 P8
1  0  x  x  = return nearest walking Ped
1  x  0  x  = return nearest walking Ped
x  1  1  x  = return Ped you are using
0  0  x  x  = no effect
0  x  0  x  = no effect

x = can be 1 or 0. Does not have any obvious changes.

This function does not return ped who is:
1. Standing still
2. Driving
3. Fleeing
4. Attacking

This function only work if the ped is:
1. walking normally.
2. waiting to cross a road.

Note: PED::GET_PED_NEARBY_PEDS works for more peds.
--]]
function PED.GET_CLOSEST_PED(x, y, z, radius, p4, p5, outPed, p7, p8, pedType)
  return native.invoke(
    Type.Bool, 4175, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5),
    ref(Type.Ped, outPed),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Int, pedType)
  )
end

-- void SET_SCENARIO_PEDS_TO_BE_RETURNED_BY_NEXT_COMMAND(BOOL value) // 0x14F19A8782C8071E
--[[
Sets a value indicating whether scenario peds should be returned by the next call to a command that returns peds. Eg. GET_CLOSEST_PED.
--]]
function PED.SET_SCENARIO_PEDS_TO_BE_RETURNED_BY_NEXT_COMMAND(value)
  native.invoke(
    Type.Void, 4176, false,
    arg(Type.Bool, value)
  )
end

-- BOOL GET_CAN_PED_BE_GRABBED_BY_SCRIPT(Ped ped, BOOL p1, BOOL p2, BOOL p3, BOOL p4, BOOL p5, BOOL p6, BOOL p7, Any p8) // 0x03EA03AF85A85CB7
function PED.GET_CAN_PED_BE_GRABBED_BY_SCRIPT(ped, p1, p2, p3, p4, p5, p6, p7, p8)
  return native.invoke(
    Type.Bool, 4177, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7),
    arg(Type.Any, p8)
  )
end

-- void SET_DRIVER_RACING_MODIFIER(Ped driver, float modifier) // 0xDED5AF5A0EA4B297
--[[
Scripts use 0.2, 0.5 and 1.0. Value must be >= 0.0 && <= 1.0
--]]
function PED.SET_DRIVER_RACING_MODIFIER(driver, modifier)
  native.invoke(
    Type.Void, 4178, false,
    arg(Type.Ped, driver),
    arg(Type.Float, modifier)
  )
end

-- void SET_DRIVER_ABILITY(Ped driver, float ability) // 0xB195FFA8042FC5C3
--[[
The function specifically verifies the value is equal to, or less than 1.0f. If it is greater than 1.0f, the function does nothing at all.
--]]
function PED.SET_DRIVER_ABILITY(driver, ability)
  native.invoke(
    Type.Void, 4179, false,
    arg(Type.Ped, driver),
    arg(Type.Float, ability)
  )
end

-- void SET_DRIVER_AGGRESSIVENESS(Ped driver, float aggressiveness) // 0xA731F608CA104E3C
--[[
range 0.0f - 1.0f
--]]
function PED.SET_DRIVER_AGGRESSIVENESS(driver, aggressiveness)
  native.invoke(
    Type.Void, 4180, false,
    arg(Type.Ped, driver),
    arg(Type.Float, aggressiveness)
  )
end

-- BOOL CAN_PED_RAGDOLL(Ped ped) // 0x128F79EDCECE4FD5
--[[
Prevents the ped from going limp.

[Example: Can prevent peds from falling when standing on moving vehicles.]
--]]
function PED.CAN_PED_RAGDOLL(ped)
  return native.invoke(
    Type.Bool, 4181, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL SET_PED_TO_RAGDOLL(Ped ped, int time1, int time2, int ragdollType, BOOL p4, BOOL p5, BOOL p6) // 0xAE99FB955581844A
--[[
p4/p5: Unused in TU27
Ragdoll Types:
**0**: CTaskNMRelax
**1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.
**Else**: CTaskNMBalance
time1- Time(ms) Ped is in ragdoll mode; only applies to ragdoll types 0 and not 1.

time2- Unknown time, in milliseconds

ragdollType-
0 : Normal ragdoll
1 : Falls with stiff legs/body
2 : Narrow leg stumble(may not fall)
3 : Wide leg stumble(may not fall)

p4, p5, p6- No idea. In R*'s scripts they are usually either "true, true, false" or "false, false, false".




EDIT 3/11/16: unclear what 'mircoseconds' mean-- a microsecond is 1000x a ms, so time2 must be 1000x time1?  more testing needed.  -sob

Edit Mar 21, 2017: removed part about time2 being the microseconds version of time1. this just isn't correct. time2 is in milliseconds, and time1 and time2 don't seem to be connected in any way.
--]]
function PED.SET_PED_TO_RAGDOLL(ped, time1, time2, ragdollType, p4, p5, p6)
  return native.invoke(
    Type.Bool, 4182, false,
    arg(Type.Ped, ped),
    arg(Type.Int, time1),
    arg(Type.Int, time2),
    arg(Type.Int, ragdollType),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6)
  )
end

-- BOOL SET_PED_TO_RAGDOLL_WITH_FALL(Ped ped, int time, int p2, int ragdollType, float x, float y, float z, float velocity, float p8, float p9, float p10, float p11, float p12, float p13) // 0xD76632D99E4966C8
--[[
Return variable is never used in R*'s scripts.

Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.

enum eRagdollType
{
 RD_MALE=0,
 RD_FEMALE = 1,
 RD_MALE_LARGE = 2,
 RD_CUSTOM = 3,
}

x, y, and z are coordinates, most likely to where the ped will fall.

p8 to p13 are always 0f in R*'s scripts.

(Simplified) Example of the usage of the function from R*'s scripts:
ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);

--]]
function PED.SET_PED_TO_RAGDOLL_WITH_FALL(ped, time, p2, ragdollType, x, y, z, velocity, p8, p9, p10, p11, p12, p13)
  return native.invoke(
    Type.Bool, 4183, false,
    arg(Type.Ped, ped),
    arg(Type.Int, time),
    arg(Type.Int, p2),
    arg(Type.Int, ragdollType),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, velocity),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Float, p10),
    arg(Type.Float, p11),
    arg(Type.Float, p12),
    arg(Type.Float, p13)
  )
end

-- void SET_PED_RAGDOLL_ON_COLLISION(Ped ped, BOOL toggle) // 0xF0A4F1BBF4FA7497
--[[
Causes Ped to ragdoll on collision with any object (e.g Running into trashcan). If applied to player you will sometimes trip on the sidewalk.
--]]
function PED.SET_PED_RAGDOLL_ON_COLLISION(ped, toggle)
  native.invoke(
    Type.Void, 4184, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_RAGDOLL(Ped ped) // 0x47E4E977581C5B55
--[[
If the ped handle passed through the parenthesis is in a ragdoll state this will return true.
--]]
function PED.IS_PED_RAGDOLL(ped)
  return native.invoke(
    Type.Bool, 4185, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_RUNNING_RAGDOLL_TASK(Ped ped) // 0xE3B6097CC25AA69E
function PED.IS_PED_RUNNING_RAGDOLL_TASK(ped)
  return native.invoke(
    Type.Bool, 4186, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_RAGDOLL_FORCE_FALL(Ped ped) // 0x01F6594B923B9251
function PED.SET_PED_RAGDOLL_FORCE_FALL(ped)
  native.invoke(
    Type.Void, 4187, false,
    arg(Type.Ped, ped)
  )
end

-- void RESET_PED_RAGDOLL_TIMER(Ped ped) // 0x9FA4664CF62E47E8
function PED.RESET_PED_RAGDOLL_TIMER(ped)
  native.invoke(
    Type.Void, 4188, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_CAN_RAGDOLL(Ped ped, BOOL toggle) // 0xB128377056A54E2A
function PED.SET_PED_CAN_RAGDOLL(ped, toggle)
  native.invoke(
    Type.Void, 4189, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_RUNNING_MELEE_TASK(Ped ped) // 0xD1871251F3B5ACD7
function PED.IS_PED_RUNNING_MELEE_TASK(ped)
  return native.invoke(
    Type.Bool, 4190, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_RUNNING_MOBILE_PHONE_TASK(Ped ped) // 0x2AFE52F782F25775
function PED.IS_PED_RUNNING_MOBILE_PHONE_TASK(ped)
  return native.invoke(
    Type.Bool, 4191, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_MOBILE_PHONE_TO_PED_EAR(Ped ped) // 0xA3F3564A5B3646C0
function PED.IS_MOBILE_PHONE_TO_PED_EAR(ped)
  return native.invoke(
    Type.Bool, 4192, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_RAGDOLL_BLOCKING_FLAGS(Ped ped, int blockingFlag) // 0x26695EC767728D84
--[[
Works for both player and peds,

enum eRagdollBlockingFlags
{
 RBF_BULLET_IMPACT = 0,
 RBF_VEHICLE_IMPACT = 1,
 RBF_FIRE = 2,
 RBF_ELECTROCUTION = 3,
 RBF_PLAYER_IMPACT = 4,
 RBF_EXPLOSION = 5,0
 RBF_IMPACT_OBJECT = 6,
 RBF_MELEE = 7,
 RBF_RUBBER_BULLET = 8,
 RBF_FALLING = 9,
 RBF_WATER_JET = 10,
 RBF_DROWNING = 11,
 _0x9F52E2C4 = 12,
 RBF_PLAYER_BUMP = 13,
 RBF_PLAYER_RAGDOLL_BUMP = 14,
 RBF_PED_RAGDOLL_BUMP = 15,
 RBF_VEHICLE_GRAB = 16,
 RBF_SMOKE_GRENADE = 17,
};


--]]
function PED.SET_RAGDOLL_BLOCKING_FLAGS(ped, blockingFlag)
  native.invoke(
    Type.Void, 4193, false,
    arg(Type.Ped, ped),
    arg(Type.Int, blockingFlag)
  )
end

-- void CLEAR_RAGDOLL_BLOCKING_FLAGS(Ped ped, int blockingFlag) // 0xD86D101FCFD00A4B
--[[
See SET_RAGDOLL_BLOCKING_FLAGS for flags
--]]
function PED.CLEAR_RAGDOLL_BLOCKING_FLAGS(ped, blockingFlag)
  native.invoke(
    Type.Void, 4194, false,
    arg(Type.Ped, ped),
    arg(Type.Int, blockingFlag)
  )
end

-- void SET_PED_ANGLED_DEFENSIVE_AREA(Ped ped, float p1, float p2, float p3, float p4, float p5, float p6, float p7, BOOL p8, BOOL p9) // 0xC7F76DF27A5045A1
function PED.SET_PED_ANGLED_DEFENSIVE_AREA(ped, p1, p2, p3, p4, p5, p6, p7, p8, p9)
  native.invoke(
    Type.Void, 4195, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Bool, p8),
    arg(Type.Bool, p9)
  )
end

-- void SET_PED_SPHERE_DEFENSIVE_AREA(Ped ped, float x, float y, float z, float radius, BOOL p5, BOOL p6) // 0x9D3151A373974804
function PED.SET_PED_SPHERE_DEFENSIVE_AREA(ped, x, y, z, radius, p5, p6)
  native.invoke(
    Type.Void, 4196, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6)
  )
end

-- void SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_PED(Ped ped, Ped target, float xOffset, float yOffset, float zOffset, float radius, BOOL p6) // 0xF9B8F91AAD3B953E
function PED.SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_PED(ped, target, xOffset, yOffset, zOffset, radius, p6)
  native.invoke(
    Type.Void, 4197, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, target),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Float, radius),
    arg(Type.Bool, p6)
  )
end

-- void SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_VEHICLE(Ped ped, Vehicle target, float xOffset, float yOffset, float zOffset, float radius, BOOL p6) // 0xE4723DB6E736CCFF
function PED.SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_VEHICLE(ped, target, xOffset, yOffset, zOffset, radius, p6)
  native.invoke(
    Type.Void, 4198, false,
    arg(Type.Ped, ped),
    arg(Type.Vehicle, target),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Float, radius),
    arg(Type.Bool, p6)
  )
end

-- void SET_PED_DEFENSIVE_AREA_ATTACHED_TO_PED(Ped ped, Ped attachPed, float p2, float p3, float p4, float p5, float p6, float p7, float p8, BOOL p9, BOOL p10) // 0x4EF47FE21698A8B6
function PED.SET_PED_DEFENSIVE_AREA_ATTACHED_TO_PED(ped, attachPed, p2, p3, p4, p5, p6, p7, p8, p9, p10)
  native.invoke(
    Type.Void, 4199, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, attachPed),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Bool, p9),
    arg(Type.Bool, p10)
  )
end

-- void SET_PED_DEFENSIVE_AREA_DIRECTION(Ped ped, float p1, float p2, float p3, BOOL p4) // 0x413C6C763A4AFFAD
function PED.SET_PED_DEFENSIVE_AREA_DIRECTION(ped, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4200, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Bool, p4)
  )
end

-- void REMOVE_PED_DEFENSIVE_AREA(Ped ped, BOOL toggle) // 0x74D4E028107450A9
--[[
Ped will no longer get angry when you stay near him.
--]]
function PED.REMOVE_PED_DEFENSIVE_AREA(ped, toggle)
  native.invoke(
    Type.Void, 4201, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- Vector3 GET_PED_DEFENSIVE_AREA_POSITION(Ped ped, BOOL p1) // 0x3C06B8786DD94CD1
function PED.GET_PED_DEFENSIVE_AREA_POSITION(ped, p1)
  return native.invoke(
    Type.Vector3, 4202, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_PED_DEFENSIVE_AREA_ACTIVE(Ped ped, BOOL p1) // 0xBA63D9FE45412247
function PED.IS_PED_DEFENSIVE_AREA_ACTIVE(ped, p1)
  return native.invoke(
    Type.Bool, 4203, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_PREFERRED_COVER_SET(Ped ped, Any itemSet) // 0x8421EB4DA7E391B9
function PED.SET_PED_PREFERRED_COVER_SET(ped, itemSet)
  native.invoke(
    Type.Void, 4204, false,
    arg(Type.Ped, ped),
    arg(Type.Any, itemSet)
  )
end

-- void REMOVE_PED_PREFERRED_COVER_SET(Ped ped) // 0xFDDB234CF74073D9
function PED.REMOVE_PED_PREFERRED_COVER_SET(ped)
  native.invoke(
    Type.Void, 4205, false,
    arg(Type.Ped, ped)
  )
end

-- void REVIVE_INJURED_PED(Ped ped) // 0x8D8ACD8388CD99CE
--[[
It will revive/cure the injured ped. The condition is ped must not be dead.

Upon setting and converting the health int, found, if health falls below 5, the ped will lay on the ground in pain(Maximum default health is 100).

This function is well suited there.
--]]
function PED.REVIVE_INJURED_PED(ped)
  native.invoke(
    Type.Void, 4206, false,
    arg(Type.Ped, ped)
  )
end

-- void RESURRECT_PED(Ped ped) // 0x71BC8E838B9C6035
--[[
This function will simply bring the dead person back to life.

Try not to use it alone, since using this function alone, will make peds fall through ground in hell(well for the most of the times).

Instead, before calling this function, you may want to declare the position, where your Resurrected ped to be spawn at.(For instance, Around 2 floats of Player's current position.) 

Also, disabling any assigned task immediately helped in the number of scenarios, where If you want peds to perform certain decided tasks.
--]]
function PED.RESURRECT_PED(ped)
  native.invoke(
    Type.Void, 4207, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_NAME_DEBUG(Ped ped, const char* name) // 0x98EFA132A4117BE1
--[[
NOTE: Debugging functions are not present in the retail version of the game.

*untested but char *name could also be a hash for a localized string
--]]
function PED.SET_PED_NAME_DEBUG(ped, name)
  native.invoke(
    Type.Void, 4208, false,
    arg(Type.Ped, ped),
    arg(Type.String, name)
  )
end

-- Vector3 GET_PED_EXTRACTED_DISPLACEMENT(Ped ped, BOOL worldSpace) // 0xE0AF41401ADF87E3
--[[
Gets the offset the specified ped has moved since the previous tick.

If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.

If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.
--]]
function PED.GET_PED_EXTRACTED_DISPLACEMENT(ped, worldSpace)
  return native.invoke(
    Type.Vector3, 4209, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, worldSpace)
  )
end

-- void SET_PED_DIES_WHEN_INJURED(Ped ped, BOOL toggle) // 0x5BA7919BED300023
function PED.SET_PED_DIES_WHEN_INJURED(ped, toggle)
  native.invoke(
    Type.Void, 4210, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_ENABLE_WEAPON_BLOCKING(Ped ped, BOOL toggle) // 0x97A790315D3831FD
function PED.SET_PED_ENABLE_WEAPON_BLOCKING(ped, toggle)
  native.invoke(
    Type.Void, 4211, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SPECIAL_FUNCTION_DO_NOT_USE(Ped ped, BOOL p1) // 0xF9ACF4A08098EA25
--[[
p1 was always 1 (true).

Kicks the ped from the current vehicle and keeps the rendering-focus on this ped (also disables its collision). If doing this for your player ped, you'll still be able to drive the vehicle.
--]]
function PED.SPECIAL_FUNCTION_DO_NOT_USE(ped, p1)
  native.invoke(
    Type.Void, 4212, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void RESET_PED_VISIBLE_DAMAGE(Ped ped) // 0x3AC1F7B898F30C05
function PED.RESET_PED_VISIBLE_DAMAGE(ped)
  native.invoke(
    Type.Void, 4213, false,
    arg(Type.Ped, ped)
  )
end

-- void APPLY_PED_BLOOD_DAMAGE_BY_ZONE(Ped ped, Any p1, float p2, float p3, Any p4) // 0x816F6981C60BF53B
function PED.APPLY_PED_BLOOD_DAMAGE_BY_ZONE(ped, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4214, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Any, p4)
  )
end

-- void APPLY_PED_BLOOD(Ped ped, int boneIndex, float xRot, float yRot, float zRot, const char* woundType) // 0x83F7E01C7B769A26
--[[
woundTypes:
- soak_splat
- wound_sheet
- BulletSmall
- BulletLarge
- ShotgunSmall
- ShotgunSmallMonolithic
- ShotgunLarge
- ShotgunLargeMonolithic
- NonFatalHeadshot
- stab
- BasicSlash
- Scripted_Ped_Splash_Back
- BackSplash
--]]
function PED.APPLY_PED_BLOOD(ped, boneIndex, xRot, yRot, zRot, woundType)
  native.invoke(
    Type.Void, 4215, false,
    arg(Type.Ped, ped),
    arg(Type.Int, boneIndex),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.String, woundType)
  )
end

-- void APPLY_PED_BLOOD_BY_ZONE(Ped ped, int p1, float p2, float p3, const char* p4) // 0x3311E47B91EDCBBC
function PED.APPLY_PED_BLOOD_BY_ZONE(ped, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4216, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.String, p4)
  )
end

-- void APPLY_PED_BLOOD_SPECIFIC(Ped ped, int p1, float p2, float p3, float p4, float p5, int p6, float p7, const char* p8) // 0xEF0D582CBF2D9B0F
function PED.APPLY_PED_BLOOD_SPECIFIC(ped, p1, p2, p3, p4, p5, p6, p7, p8)
  native.invoke(
    Type.Void, 4217, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Int, p6),
    arg(Type.Float, p7),
    arg(Type.String, p8)
  )
end

-- void APPLY_PED_DAMAGE_DECAL(Ped ped, int damageZone, float xOffset, float yOffset, float heading, float scale, float alpha, int variation, BOOL fadeIn, const char* decalName) // 0x397C38AA7B4A5F83
--[[
enum eDamageZone
{
	DZ_Torso = 0,
	DZ_Head,
	DZ_LeftArm,
	DZ_RightArm,
	DZ_LeftLeg,
	DZ_RightLeg,
};

Decal Names:
scar
blushing
cs_flush_anger
cs_flush_anger_face
bruise
bruise_large
herpes
ArmorBullet
basic_dirt_cloth
basic_dirt_skin
cs_trev1_dirt

APPLY_PED_DAMAGE_DECAL(ped, 1, 0.5f, 0.513f, 0f, 1f, unk, 0, 0, "blushing");
--]]
function PED.APPLY_PED_DAMAGE_DECAL(ped, damageZone, xOffset, yOffset, heading, scale, alpha, variation, fadeIn, decalName)
  native.invoke(
    Type.Void, 4218, false,
    arg(Type.Ped, ped),
    arg(Type.Int, damageZone),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, heading),
    arg(Type.Float, scale),
    arg(Type.Float, alpha),
    arg(Type.Int, variation),
    arg(Type.Bool, fadeIn),
    arg(Type.String, decalName)
  )
end

-- void APPLY_PED_DAMAGE_PACK(Ped ped, const char* damagePack, float damage, float mult) // 0x46DF918788CB093F
--[[
Damage Packs:

"SCR_TrevorTreeBang"
"HOSPITAL_0"
"HOSPITAL_1"
"HOSPITAL_2"
"HOSPITAL_3"
"HOSPITAL_4"
"HOSPITAL_5"
"HOSPITAL_6"
"HOSPITAL_7"
"HOSPITAL_8"
"HOSPITAL_9"
"SCR_Dumpster"
"BigHitByVehicle"
"SCR_Finale_Michael_Face"
"SCR_Franklin_finb"
"SCR_Finale_Michael"
"SCR_Franklin_finb2"
"Explosion_Med"
"SCR_Torture"
"SCR_TracySplash"
"Skin_Melee_0"

Additional damage packs:

gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227
Full list of ped damage packs by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedDamagePacks.json
--]]
function PED.APPLY_PED_DAMAGE_PACK(ped, damagePack, damage, mult)
  native.invoke(
    Type.Void, 4219, false,
    arg(Type.Ped, ped),
    arg(Type.String, damagePack),
    arg(Type.Float, damage),
    arg(Type.Float, mult)
  )
end

-- void CLEAR_PED_BLOOD_DAMAGE(Ped ped) // 0x8FE22675A5A45817
function PED.CLEAR_PED_BLOOD_DAMAGE(ped)
  native.invoke(
    Type.Void, 4220, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_PED_BLOOD_DAMAGE_BY_ZONE(Ped ped, int p1) // 0x56E3B78C5408D9F4
--[[
Somehow related to changing ped's clothes.
--]]
function PED.CLEAR_PED_BLOOD_DAMAGE_BY_ZONE(ped, p1)
  native.invoke(
    Type.Void, 4221, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1)
  )
end

-- void HIDE_PED_BLOOD_DAMAGE_BY_ZONE(Ped ped, Any p1, BOOL p2) // 0x62AB793144DE75DC
function PED.HIDE_PED_BLOOD_DAMAGE_BY_ZONE(ped, p1, p2)
  native.invoke(
    Type.Void, 4222, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1),
    arg(Type.Bool, p2)
  )
end

-- void CLEAR_PED_DAMAGE_DECAL_BY_ZONE(Ped ped, int p1, const char* p2) // 0x523C79AEEFCC4A2A
--[[
p1: from 0 to 5 in the b617d scripts.
p2: "blushing" and "ALL" found in the b617d scripts.
--]]
function PED.CLEAR_PED_DAMAGE_DECAL_BY_ZONE(ped, p1, p2)
  native.invoke(
    Type.Void, 4223, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1),
    arg(Type.String, p2)
  )
end

-- int GET_PED_DECORATIONS_STATE(Ped ped) // 0x71EAB450D86954A1
function PED.GET_PED_DECORATIONS_STATE(ped)
  return native.invoke(
    Type.Int, 4224, false,
    arg(Type.Ped, ped)
  )
end

-- void MARK_PED_DECORATIONS_AS_CLONED_FROM_LOCAL_PLAYER(Ped ped, BOOL p1) // 0x2B694AFCF64E6994
function PED.MARK_PED_DECORATIONS_AS_CLONED_FROM_LOCAL_PLAYER(ped, p1)
  native.invoke(
    Type.Void, 4225, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void CLEAR_PED_WETNESS(Ped ped) // 0x9C720776DAA43E7E
--[[
It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.
--]]
function PED.CLEAR_PED_WETNESS(ped)
  native.invoke(
    Type.Void, 4226, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_WETNESS_HEIGHT(Ped ped, float height) // 0x44CB6447D2571AA0
--[[
It adds the wetness level to the player clothing/outfit. As if player just got out from water surface.


--]]
function PED.SET_PED_WETNESS_HEIGHT(ped, height)
  native.invoke(
    Type.Void, 4227, false,
    arg(Type.Ped, ped),
    arg(Type.Float, height)
  )
end

-- void SET_PED_WETNESS_ENABLED_THIS_FRAME(Ped ped) // 0xB5485E4907B53019
--[[
combined with PED::SET_PED_WETNESS_HEIGHT(), this native makes the ped drenched in water up to the height specified in the other function
--]]
function PED.SET_PED_WETNESS_ENABLED_THIS_FRAME(ped)
  native.invoke(
    Type.Void, 4228, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_WETNESS(Ped ped, float wetLevel) // 0xAC0BB4D87777CAE2
function PED.SET_PED_WETNESS(ped, wetLevel)
  native.invoke(
    Type.Void, 4229, false,
    arg(Type.Ped, ped),
    arg(Type.Float, wetLevel)
  )
end

-- void CLEAR_PED_ENV_DIRT(Ped ped) // 0x6585D955A68452A5
function PED.CLEAR_PED_ENV_DIRT(ped)
  native.invoke(
    Type.Void, 4230, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_SWEAT(Ped ped, float sweat) // 0x27B0405F59637D1F
--[[
Sweat is set to 100.0 or 0.0 in the decompiled scripts.
--]]
function PED.SET_PED_SWEAT(ped, sweat)
  native.invoke(
    Type.Void, 4231, false,
    arg(Type.Ped, ped),
    arg(Type.Float, sweat)
  )
end

-- void ADD_PED_DECORATION_FROM_HASHES(Ped ped, Hash collection, Hash overlay) // 0x5F5D1665E352A839
--[[
Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.

collection - PedDecorationCollection filename hash
overlay - Item name hash

Example:
Entry inside "mpbeach_overlays.xml" -
<Item>
  <uvPos x="0.500000" y="0.500000" />
  <scale x="0.600000" y="0.500000" />
  <rotation value="0.000000" />
  <nameHash>FM_Hair_Fuzz</nameHash>
  <txdHash>mp_hair_fuzz</txdHash>
  <txtHash>mp_hair_fuzz</txtHash>
  <zone>ZONE_HEAD</zone>
  <type>TYPE_TATTOO</type>
  <faction>FM</faction>
  <garment>All</garment>
  <gender>GENDER_DONTCARE</gender>
  <award />
  <awardLevel />
</Item>

Code:
PED::ADD_PED_DECORATION_FROM_HASHES(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))

Full list of ped overlays / decorations by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedOverlayCollections.json
--]]
function PED.ADD_PED_DECORATION_FROM_HASHES(ped, collection, overlay)
  native.invoke(
    Type.Void, 4232, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, collection),
    arg(Type.Hash, overlay)
  )
end

-- void ADD_PED_DECORATION_FROM_HASHES_IN_CORONA(Ped ped, Hash collection, Hash overlay) // 0x5619BFA07CFD7833
--[[
Full list of ped overlays / decorations by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedOverlayCollections.json
--]]
function PED.ADD_PED_DECORATION_FROM_HASHES_IN_CORONA(ped, collection, overlay)
  native.invoke(
    Type.Void, 4233, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, collection),
    arg(Type.Hash, overlay)
  )
end

-- int GET_PED_DECORATION_ZONE_FROM_HASHES(Hash collection, Hash overlay) // 0x9FD452BFBE7A7A8B
--[[
Returns the zoneID for the overlay if it is a member of collection.
enum ePedDecorationZone
{
	ZONE_TORSO = 0,
	ZONE_HEAD = 1,
	ZONE_LEFT_ARM = 2,
	ZONE_RIGHT_ARM = 3,
	ZONE_LEFT_LEG = 4,
	ZONE_RIGHT_LEG = 5,
	ZONE_MEDALS = 6,
	ZONE_INVALID = 7
};

Full list of ped overlays / decorations by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedOverlayCollections.json
--]]
function PED.GET_PED_DECORATION_ZONE_FROM_HASHES(collection, overlay)
  return native.invoke(
    Type.Int, 4234, false,
    arg(Type.Hash, collection),
    arg(Type.Hash, overlay)
  )
end

-- void CLEAR_PED_DECORATIONS(Ped ped) // 0x0E5173C163976E38
function PED.CLEAR_PED_DECORATIONS(ped)
  native.invoke(
    Type.Void, 4235, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_PED_DECORATIONS_LEAVE_SCARS(Ped ped) // 0xE3B27E70CEAB9F0C
function PED.CLEAR_PED_DECORATIONS_LEAVE_SCARS(ped)
  native.invoke(
    Type.Void, 4236, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL WAS_PED_SKELETON_UPDATED(Ped ped) // 0x11B499C1E0FF8559
--[[
Despite this function's name, it simply returns whether the specified handle is a Ped.
--]]
function PED.WAS_PED_SKELETON_UPDATED(ped)
  return native.invoke(
    Type.Bool, 4237, false,
    arg(Type.Ped, ped)
  )
end

-- Vector3 GET_PED_BONE_COORDS(Ped ped, int boneId, float offsetX, float offsetY, float offsetZ) // 0x17C07FC640E86B4E
--[[
Gets the position of the specified bone of the specified ped.

ped: The ped to get the position of a bone from.
boneId: The ID of the bone to get the position from. This is NOT the index.
offsetX: The X-component of the offset to add to the position relative to the bone's rotation.
offsetY: The Y-component of the offset to add to the position relative to the bone's rotation.
offsetZ: The Z-component of the offset to add to the position relative to the bone's rotation.
--]]
function PED.GET_PED_BONE_COORDS(ped, boneId, offsetX, offsetY, offsetZ)
  return native.invoke(
    Type.Vector3, 4238, false,
    arg(Type.Ped, ped),
    arg(Type.Int, boneId),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ)
  )
end

-- void CREATE_NM_MESSAGE(BOOL startImmediately, int messageId) // 0x418EF2A1BCE56685
--[[
Creates a new NaturalMotion message.

startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized.
messageId: The ID of the NaturalMotion message.

If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.
--]]
function PED.CREATE_NM_MESSAGE(startImmediately, messageId)
  native.invoke(
    Type.Void, 4239, false,
    arg(Type.Bool, startImmediately),
    arg(Type.Int, messageId)
  )
end

-- void GIVE_PED_NM_MESSAGE(Ped ped) // 0xB158DFCCC56E5C5B
--[[
Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.

If a message hasn't been created already, this function does nothing.
If the Ped is not ragdolled with Euphoria enabled, this function does nothing.
The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);

Call order:
SET_PED_TO_RAGDOLL
CREATE_NM_MESSAGE
GIVE_PED_NM_MESSAGE

Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made:
SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);
CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff.
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling.
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around.
GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
--]]
function PED.GIVE_PED_NM_MESSAGE(ped)
  native.invoke(
    Type.Void, 4240, false,
    arg(Type.Ped, ped)
  )
end

-- int ADD_SCENARIO_BLOCKING_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL p6, BOOL p7, BOOL p8, BOOL p9, Any p10) // 0x1B5C85C612E5256E
function PED.ADD_SCENARIO_BLOCKING_AREA(x1, y1, z1, x2, y2, z2, p6, p7, p8, p9, p10)
  return native.invoke(
    Type.Int, 4241, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Bool, p9),
    arg(Type.Any, p10)
  )
end

-- void REMOVE_SCENARIO_BLOCKING_AREAS() // 0xD37401D78A929A49
function PED.REMOVE_SCENARIO_BLOCKING_AREAS()
  native.invoke(
    Type.Void, 4242, false
  )
end

-- void REMOVE_SCENARIO_BLOCKING_AREA(Any p0, BOOL p1) // 0x31D16B74C6E29D66
function PED.REMOVE_SCENARIO_BLOCKING_AREA(p0, p1)
  native.invoke(
    Type.Void, 4243, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_SCENARIO_PEDS_SPAWN_IN_SPHERE_AREA(float x, float y, float z, float range, int p4) // 0x28157D43CF600981
function PED.SET_SCENARIO_PEDS_SPAWN_IN_SPHERE_AREA(x, y, z, range, p4)
  native.invoke(
    Type.Void, 4244, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, range),
    arg(Type.Int, p4)
  )
end

-- BOOL DOES_SCENARIO_BLOCKING_AREA_EXISTS(float x1, float y1, float z1, float x2, float y2, float z2) // 0x8A24B067D175A7BD
function PED.DOES_SCENARIO_BLOCKING_AREA_EXISTS(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Bool, 4245, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- BOOL IS_PED_USING_SCENARIO(Ped ped, const char* scenario) // 0x1BF094736DD62C2E
--[[
Full list of ped scenarios by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scenariosCompact.json
--]]
function PED.IS_PED_USING_SCENARIO(ped, scenario)
  return native.invoke(
    Type.Bool, 4246, false,
    arg(Type.Ped, ped),
    arg(Type.String, scenario)
  )
end

-- BOOL IS_PED_USING_ANY_SCENARIO(Ped ped) // 0x57AB4A3080F85143
function PED.IS_PED_USING_ANY_SCENARIO(ped)
  return native.invoke(
    Type.Bool, 4247, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL SET_PED_PANIC_EXIT_SCENARIO(Any p0, Any p1, Any p2, Any p3) // 0xFE07FF6495D52E2A
function PED.SET_PED_PANIC_EXIT_SCENARIO(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 4248, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void TOGGLE_SCENARIO_PED_COWER_IN_PLACE(Ped ped, BOOL toggle) // 0x9A77DFD295E29B09
function PED.TOGGLE_SCENARIO_PED_COWER_IN_PLACE(ped, toggle)
  native.invoke(
    Type.Void, 4249, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL TRIGGER_PED_SCENARIO_PANICEXITTOFLEE(Any p0, Any p1, Any p2, Any p3) // 0x25361A96E0F7E419
function PED.TRIGGER_PED_SCENARIO_PANICEXITTOFLEE(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 4250, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- BOOL SET_PED_SHOULD_PLAY_DIRECTED_NORMAL_SCENARIO_EXIT(Any p0, Any p1, Any p2, Any p3) // 0xEC6935EBE0847B90
function PED.SET_PED_SHOULD_PLAY_DIRECTED_NORMAL_SCENARIO_EXIT(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 4251, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void SET_PED_SHOULD_PLAY_NORMAL_SCENARIO_EXIT(Ped ped) // 0xA3A9299C4F2ADB98
function PED.SET_PED_SHOULD_PLAY_NORMAL_SCENARIO_EXIT(ped)
  native.invoke(
    Type.Void, 4252, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_SHOULD_PLAY_IMMEDIATE_SCENARIO_EXIT(Ped ped) // 0xF1C03A5352243A30
function PED.SET_PED_SHOULD_PLAY_IMMEDIATE_SCENARIO_EXIT(ped)
  native.invoke(
    Type.Void, 4253, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL SET_PED_SHOULD_PLAY_FLEE_SCENARIO_EXIT(Ped ped, Any p1, Any p2, Any p3) // 0xEEED8FAFEC331A70
function PED.SET_PED_SHOULD_PLAY_FLEE_SCENARIO_EXIT(ped, p1, p2, p3)
  return native.invoke(
    Type.Bool, 4254, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void SET_PED_SHOULD_IGNORE_SCENARIO_EXIT_COLLISION_CHECKS(Ped ped, BOOL p1) // 0x425AECF167663F48
function PED.SET_PED_SHOULD_IGNORE_SCENARIO_EXIT_COLLISION_CHECKS(ped, p1)
  native.invoke(
    Type.Void, 4255, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_SHOULD_IGNORE_SCENARIO_NAV_CHECKS(Any p0, BOOL p1) // 0x5B6010B3CBC29095
function PED.SET_PED_SHOULD_IGNORE_SCENARIO_NAV_CHECKS(p0, p1)
  native.invoke(
    Type.Void, 4256, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_SHOULD_PROBE_FOR_SCENARIO_EXITS_IN_ONE_FRAME(Any p0, BOOL p1) // 0xCEDA60A74219D064
function PED.SET_PED_SHOULD_PROBE_FOR_SCENARIO_EXITS_IN_ONE_FRAME(p0, p1)
  native.invoke(
    Type.Void, 4257, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_PED_GESTURING(Any p0) // 0xC30BDAEE47256C13
function PED.IS_PED_GESTURING(p0)
  return native.invoke(
    Type.Bool, 4258, false,
    arg(Type.Any, p0)
  )
end

-- void RESET_FACIAL_IDLE_ANIM(Ped ped) // 0x007FDE5A7897E426
function PED.RESET_FACIAL_IDLE_ANIM(ped)
  native.invoke(
    Type.Void, 4259, false,
    arg(Type.Ped, ped)
  )
end

-- void PLAY_FACIAL_ANIM(Ped ped, const char* animName, const char* animDict) // 0xE1E65CA8AC9C00ED
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function PED.PLAY_FACIAL_ANIM(ped, animName, animDict)
  native.invoke(
    Type.Void, 4260, false,
    arg(Type.Ped, ped),
    arg(Type.String, animName),
    arg(Type.String, animDict)
  )
end

-- void SET_FACIAL_CLIPSET(Ped ped, const char* animDict) // 0x5687C7F05B39E401
--[[
Clipsets:
facials@gen_female@base
facials@gen_male@base
facials@p_m_zero@base

Typically followed with SET_FACIAL_IDLE_ANIM_OVERRIDE:
mood_drunk_1
mood_stressed_1
mood_happy_1
mood_talking_1

--]]
function PED.SET_FACIAL_CLIPSET(ped, animDict)
  native.invoke(
    Type.Void, 4261, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict)
  )
end

-- void SET_FACIAL_IDLE_ANIM_OVERRIDE(Ped ped, const char* animName, const char* animDict) // 0xFFC24B988B938B38
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function PED.SET_FACIAL_IDLE_ANIM_OVERRIDE(ped, animName, animDict)
  native.invoke(
    Type.Void, 4262, false,
    arg(Type.Ped, ped),
    arg(Type.String, animName),
    arg(Type.String, animDict)
  )
end

-- void CLEAR_FACIAL_IDLE_ANIM_OVERRIDE(Ped ped) // 0x726256CC1EEB182F
function PED.CLEAR_FACIAL_IDLE_ANIM_OVERRIDE(ped)
  native.invoke(
    Type.Void, 4263, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_CAN_PLAY_GESTURE_ANIMS(Ped ped, BOOL toggle) // 0xBAF20C5432058024
function PED.SET_PED_CAN_PLAY_GESTURE_ANIMS(ped, toggle)
  native.invoke(
    Type.Void, 4264, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_PLAY_VISEME_ANIMS(Ped ped, BOOL toggle, BOOL p2) // 0xF833DDBA3B104D43
--[[
p2 usually 0
--]]
function PED.SET_PED_CAN_PLAY_VISEME_ANIMS(ped, toggle, p2)
  native.invoke(
    Type.Void, 4265, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle),
    arg(Type.Bool, p2)
  )
end

-- void SET_PED_IS_IGNORED_BY_AUTO_OPEN_DOORS(Ped ped, BOOL p1) // 0x33A60D8BDD6E508C
function PED.SET_PED_IS_IGNORED_BY_AUTO_OPEN_DOORS(ped, p1)
  native.invoke(
    Type.Void, 4266, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_CAN_PLAY_AMBIENT_ANIMS(Ped ped, BOOL toggle) // 0x6373D1349925A70E
function PED.SET_PED_CAN_PLAY_AMBIENT_ANIMS(ped, toggle)
  native.invoke(
    Type.Void, 4267, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_PLAY_AMBIENT_BASE_ANIMS(Ped ped, BOOL toggle) // 0x0EB0585D15254740
function PED.SET_PED_CAN_PLAY_AMBIENT_BASE_ANIMS(ped, toggle)
  native.invoke(
    Type.Void, 4268, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void TRIGGER_IDLE_ANIMATION_ON_PED(Ped ped) // 0xC2EE020F5FB4DB53
function PED.TRIGGER_IDLE_ANIMATION_ON_PED(ped)
  native.invoke(
    Type.Void, 4269, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_CAN_ARM_IK(Ped ped, BOOL toggle) // 0x6C3B4D6D13B4C841
function PED.SET_PED_CAN_ARM_IK(ped, toggle)
  native.invoke(
    Type.Void, 4270, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_HEAD_IK(Ped ped, BOOL toggle) // 0xC11C18092C5530DC
function PED.SET_PED_CAN_HEAD_IK(ped, toggle)
  native.invoke(
    Type.Void, 4271, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_LEG_IK(Ped ped, BOOL toggle) // 0x73518ECE2485412B
function PED.SET_PED_CAN_LEG_IK(ped, toggle)
  native.invoke(
    Type.Void, 4272, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_TORSO_IK(Ped ped, BOOL toggle) // 0xF2B7106D37947CE0
function PED.SET_PED_CAN_TORSO_IK(ped, toggle)
  native.invoke(
    Type.Void, 4273, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_TORSO_REACT_IK(Ped ped, BOOL p1) // 0xF5846EDB26A98A24
function PED.SET_PED_CAN_TORSO_REACT_IK(ped, p1)
  native.invoke(
    Type.Void, 4274, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_CAN_TORSO_VEHICLE_IK(Ped ped, BOOL p1) // 0x6647C5F6F5792496
function PED.SET_PED_CAN_TORSO_VEHICLE_IK(ped, p1)
  native.invoke(
    Type.Void, 4275, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_CAN_USE_AUTO_CONVERSATION_LOOKAT(Ped ped, BOOL toggle) // 0xEC4686EC06434678
function PED.SET_PED_CAN_USE_AUTO_CONVERSATION_LOOKAT(ped, toggle)
  native.invoke(
    Type.Void, 4276, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_HEADTRACKING_PED(Ped ped1, Ped ped2) // 0x5CD3CB88A7F8850D
function PED.IS_PED_HEADTRACKING_PED(ped1, ped2)
  return native.invoke(
    Type.Bool, 4277, false,
    arg(Type.Ped, ped1),
    arg(Type.Ped, ped2)
  )
end

-- BOOL IS_PED_HEADTRACKING_ENTITY(Ped ped, Entity entity) // 0x813A0A7C9D2E831F
function PED.IS_PED_HEADTRACKING_ENTITY(ped, entity)
  return native.invoke(
    Type.Bool, 4278, false,
    arg(Type.Ped, ped),
    arg(Type.Entity, entity)
  )
end

-- void SET_PED_PRIMARY_LOOKAT(Ped ped, Ped lookAt) // 0xCD17B554996A8D9E
--[[
This is only called once in the scripts.

sub_1CD9(&l_49, 0, getElem(3, &l_34, 4), "MICHAEL", 0, 1);
                    sub_1CA8("WORLD_HUMAN_SMOKING", 2);
                    PED::SET_PED_PRIMARY_LOOKAT(getElem(3, &l_34, 4), PLAYER::PLAYER_PED_ID());
--]]
function PED.SET_PED_PRIMARY_LOOKAT(ped, lookAt)
  native.invoke(
    Type.Void, 4279, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, lookAt)
  )
end

-- void SET_PED_CLOTH_PIN_FRAMES(Any p0, Any p1) // 0x78C4E9961DB3EB5B
function PED.SET_PED_CLOTH_PIN_FRAMES(p0, p1)
  native.invoke(
    Type.Void, 4280, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_PED_CLOTH_PACKAGE_INDEX(Any p0, Any p1) // 0x82A3D6D9CC2CB8E3
function PED.SET_PED_CLOTH_PACKAGE_INDEX(p0, p1)
  native.invoke(
    Type.Void, 4281, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_PED_CLOTH_PRONE(Any p0, BOOL p1) // 0xA660FAF550EB37E5
function PED.SET_PED_CLOTH_PRONE(p0, p1)
  native.invoke(
    Type.Void, 4282, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_CONFIG_FLAG(Ped ped, int flagId, BOOL value) // 0x1913FE4CBF41C463
--[[
enum ePedConfigFlags
{
	_CPED_CONFIG_FLAG_0xC63DE95E = 1,
	CPED_CONFIG_FLAG_NoCriticalHits = 2,
	CPED_CONFIG_FLAG_DrownsInWater = 3,
	CPED_CONFIG_FLAG_DisableReticuleFixedLockon = 4,
	_CPED_CONFIG_FLAG_0x37D196F4 = 5,
	_CPED_CONFIG_FLAG_0xE2462399 = 6,
	CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,
	_CPED_CONFIG_FLAG_0xEDDEB838 = 8,
	_CPED_CONFIG_FLAG_0xB398B6FD = 9,
	_CPED_CONFIG_FLAG_0xF6664E68 = 10,
	_CPED_CONFIG_FLAG_0xA05E7CA3 = 11,
	_CPED_CONFIG_FLAG_0xCE394045 = 12,
	CPED_CONFIG_FLAG_NeverLeavesGroup = 13,
	_CPED_CONFIG_FLAG_0xCD8D1411 = 14,
	_CPED_CONFIG_FLAG_0xB031F1A9 = 15,
	_CPED_CONFIG_FLAG_0xFE65BEE3 = 16,
	CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,
	_CPED_CONFIG_FLAG_0x380165BD = 18,
	_CPED_CONFIG_FLAG_0x07C045C7 = 19,
	_CPED_CONFIG_FLAG_0x583B5E2D = 20,
	_CPED_CONFIG_FLAG_0x475EDA58 = 21,
	_CPED_CONFIG_FLAG_0x8629D05B = 22,
	_CPED_CONFIG_FLAG_0x1522968B = 23,
	CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,
	_CPED_CONFIG_FLAG_0x4CC09C4B = 25,
	_CPED_CONFIG_FLAG_0x034F3053 = 26,
	_CPED_CONFIG_FLAG_0xD91BA7CC = 27,
	_CPED_CONFIG_FLAG_0x5C8DC66E = 28,
	CPED_CONFIG_FLAG_GetOutUndriveableVehicle = 29,
	_CPED_CONFIG_FLAG_0x6580B9D2 = 30,
	_CPED_CONFIG_FLAG_0x0EF7A297 = 31,
	CPED_CONFIG_FLAG_WillFlyThruWindscreen = 32,
	CPED_CONFIG_FLAG_DieWhenRagdoll = 33,
	CPED_CONFIG_FLAG_HasHelmet = 34,
	CPED_CONFIG_FLAG_UseHelmet = 35,
	CPED_CONFIG_FLAG_DontTakeOffHelmet = 36,
	_CPED_CONFIG_FLAG_0xB130D17B = 37,
	_CPED_CONFIG_FLAG_0x5F071200 = 38,
	CPED_CONFIG_FLAG_DisableEvasiveDives = 39,
	_CPED_CONFIG_FLAG_0xC287AAFF = 40,
	_CPED_CONFIG_FLAG_0x203328CC = 41,
	CPED_CONFIG_FLAG_DontInfluenceWantedLevel = 42,
	CPED_CONFIG_FLAG_DisablePlayerLockon = 43,
	CPED_CONFIG_FLAG_DisableLockonToRandomPeds = 44,
	CPED_CONFIG_FLAG_AllowLockonToFriendlyPlayers = 45,
	_CPED_CONFIG_FLAG_0xDB115BFA = 46,
	CPED_CONFIG_FLAG_PedBeingDeleted = 47,
	CPED_CONFIG_FLAG_BlockWeaponSwitching = 48,
	_CPED_CONFIG_FLAG_0xF8E99565 = 49,
	_CPED_CONFIG_FLAG_0xDD17FEE6 = 50,
	_CPED_CONFIG_FLAG_0x7ED9B2C9 = 51,
	_CPED_CONFIG_FLAG_NoCollison = 52,
	_CPED_CONFIG_FLAG_0x5A6C1F6E = 53,
	_CPED_CONFIG_FLAG_0xD749FC41 = 54,
	_CPED_CONFIG_FLAG_0x357F63F3 = 55,
	_CPED_CONFIG_FLAG_0xC5E60961 = 56,
	_CPED_CONFIG_FLAG_0x29275C3E = 57,
	CPED_CONFIG_FLAG_IsFiring = 58,
	CPED_CONFIG_FLAG_WasFiring = 59,
	CPED_CONFIG_FLAG_IsStanding = 60,
	CPED_CONFIG_FLAG_WasStanding = 61,
	CPED_CONFIG_FLAG_InVehicle = 62,
	CPED_CONFIG_FLAG_OnMount = 63,
	CPED_CONFIG_FLAG_AttachedToVehicle = 64,
	CPED_CONFIG_FLAG_IsSwimming = 65,
	CPED_CONFIG_FLAG_WasSwimming = 66,
	CPED_CONFIG_FLAG_IsSkiing = 67,
	CPED_CONFIG_FLAG_IsSitting = 68,
	CPED_CONFIG_FLAG_KilledByStealth = 69,
	CPED_CONFIG_FLAG_KilledByTakedown = 70,
	CPED_CONFIG_FLAG_Knockedout = 71,
	_CPED_CONFIG_FLAG_0x3E3C4560 = 72,
	_CPED_CONFIG_FLAG_0x2994C7B7 = 73,
	_CPED_CONFIG_FLAG_0x6D59D275 = 74,
	CPED_CONFIG_FLAG_UsingCoverPoint = 75,
	CPED_CONFIG_FLAG_IsInTheAir = 76,
	_CPED_CONFIG_FLAG_0x2D493FB7 = 77,
	CPED_CONFIG_FLAG_IsAimingGun = 78,
	_CPED_CONFIG_FLAG_0x14D69875 = 79,
	_CPED_CONFIG_FLAG_0x40B05311 = 80,
	_CPED_CONFIG_FLAG_0x8B230BC5 = 81,
	_CPED_CONFIG_FLAG_0xC74E5842 = 82,
	_CPED_CONFIG_FLAG_0x9EA86147 = 83,
	_CPED_CONFIG_FLAG_0x674C746C = 84,
	_CPED_CONFIG_FLAG_0x3E56A8C2 = 85,
	_CPED_CONFIG_FLAG_0xC144A1EF = 86,
	_CPED_CONFIG_FLAG_0x0548512D = 87,
	_CPED_CONFIG_FLAG_0x31C93909 = 88,
	_CPED_CONFIG_FLAG_0xA0269315 = 89,
	_CPED_CONFIG_FLAG_0xD4D59D4D = 90,
	_CPED_CONFIG_FLAG_0x411D4420 = 91,
	_CPED_CONFIG_FLAG_0xDF4AEF0D = 92,
	CPED_CONFIG_FLAG_ForcePedLoadCover = 93,
	_CPED_CONFIG_FLAG_0x300E4CD3 = 94,
	_CPED_CONFIG_FLAG_0xF1C5BF04 = 95,
	_CPED_CONFIG_FLAG_0x89C2EF13 = 96,
	CPED_CONFIG_FLAG_VaultFromCover = 97,
	_CPED_CONFIG_FLAG_0x02A852C8 = 98,
	_CPED_CONFIG_FLAG_0x3D9407F1 = 99,
	_CPED_CONFIG_FLAG_IsDrunk = 100, // 0x319B4558
	CPED_CONFIG_FLAG_ForcedAim = 101,
	_CPED_CONFIG_FLAG_0xB942D71A = 102,
	_CPED_CONFIG_FLAG_0xD26C55A8 = 103,
	CPED_CONFIG_FLAG_OpenDoorArmIK = 104,
	CPED_CONFIG_FLAG_ForceReload = 105,
	CPED_CONFIG_FLAG_DontActivateRagdollFromVehicleImpact = 106,
	CPED_CONFIG_FLAG_DontActivateRagdollFromBulletImpact = 107,
	CPED_CONFIG_FLAG_DontActivateRagdollFromExplosions = 108,
	CPED_CONFIG_FLAG_DontActivateRagdollFromFire = 109,
	CPED_CONFIG_FLAG_DontActivateRagdollFromElectrocution = 110,
	_CPED_CONFIG_FLAG_0x83C0A4BF = 111,
	_CPED_CONFIG_FLAG_0x0E0FAF8C = 112,
	CPED_CONFIG_FLAG_KeepWeaponHolsteredUnlessFired = 113,
	_CPED_CONFIG_FLAG_0x43B80B79 = 114,
	_CPED_CONFIG_FLAG_0x0D2A9309 = 115,
	CPED_CONFIG_FLAG_GetOutBurningVehicle = 116,
	CPED_CONFIG_FLAG_BumpedByPlayer = 117,
	CPED_CONFIG_FLAG_RunFromFiresAndExplosions = 118,
	CPED_CONFIG_FLAG_TreatAsPlayerDuringTargeting = 119,
	CPED_CONFIG_FLAG_IsHandCuffed = 120,
	CPED_CONFIG_FLAG_IsAnkleCuffed = 121,
	CPED_CONFIG_FLAG_DisableMelee = 122,
	CPED_CONFIG_FLAG_DisableUnarmedDrivebys = 123,
	CPED_CONFIG_FLAG_JustGetsPulledOutWhenElectrocuted = 124,
	_CPED_CONFIG_FLAG_0x5FED6BFD = 125,
	CPED_CONFIG_FLAG_WillNotHotwireLawEnforcementVehicle = 126,
	CPED_CONFIG_FLAG_WillCommandeerRatherThanJack = 127,
	CPED_CONFIG_FLAG_CanBeAgitated = 128,
	CPED_CONFIG_FLAG_ForcePedToFaceLeftInCover = 129,
	CPED_CONFIG_FLAG_ForcePedToFaceRightInCover = 130,
	CPED_CONFIG_FLAG_BlockPedFromTurningInCover = 131,
	CPED_CONFIG_FLAG_KeepRelationshipGroupAfterCleanUp = 132,
	CPED_CONFIG_FLAG_ForcePedToBeDragged = 133,
	CPED_CONFIG_FLAG_PreventPedFromReactingToBeingJacked = 134,
	CPED_CONFIG_FLAG_IsScuba = 135,
	CPED_CONFIG_FLAG_WillArrestRatherThanJack = 136,
	CPED_CONFIG_FLAG_RemoveDeadExtraFarAway = 137,
	CPED_CONFIG_FLAG_RidingTrain = 138,
	CPED_CONFIG_FLAG_ArrestResult = 139,
	CPED_CONFIG_FLAG_CanAttackFriendly = 140,
	CPED_CONFIG_FLAG_WillJackAnyPlayer = 141,
	_CPED_CONFIG_FLAG_0x6901E731 = 142,
	_CPED_CONFIG_FLAG_0x9EC9BF6C = 143,
	CPED_CONFIG_FLAG_WillJackWantedPlayersRatherThanStealCar = 144,
	CPED_CONFIG_FLAG_ShootingAnimFlag = 145,
	CPED_CONFIG_FLAG_DisableLadderClimbing = 146,
	CPED_CONFIG_FLAG_StairsDetected = 147,
	CPED_CONFIG_FLAG_SlopeDetected = 148,
	_CPED_CONFIG_FLAG_0x1A15670B = 149,
	CPED_CONFIG_FLAG_CowerInsteadOfFlee = 150,
	CPED_CONFIG_FLAG_CanActivateRagdollWhenVehicleUpsideDown = 151,
	CPED_CONFIG_FLAG_AlwaysRespondToCriesForHelp = 152,
	CPED_CONFIG_FLAG_DisableBloodPoolCreation = 153,
	CPED_CONFIG_FLAG_ShouldFixIfNoCollision = 154,
	CPED_CONFIG_FLAG_CanPerformArrest = 155,
	CPED_CONFIG_FLAG_CanPerformUncuff = 156,
	CPED_CONFIG_FLAG_CanBeArrested = 157,
	_CPED_CONFIG_FLAG_0xF7960FF5 = 158,
	CPED_CONFIG_FLAG_PlayerPreferFrontSeatMP = 159,
	_CPED_CONFIG_FLAG_0x0C6C3099 = 160,
	_CPED_CONFIG_FLAG_0x645F927A = 161,
	_CPED_CONFIG_FLAG_0xA86549B9 = 162,
	_CPED_CONFIG_FLAG_0x8AAF337A = 163,
	_CPED_CONFIG_FLAG_0x13BAA6E7 = 164,
	_CPED_CONFIG_FLAG_0x5FB9D1F5 = 165,
	CPED_CONFIG_FLAG_IsInjured = 166,
	CPED_CONFIG_FLAG_DontEnterVehiclesInPlayersGroup = 167,
	_CPED_CONFIG_FLAG_0xD8072639 = 168,
	CPED_CONFIG_FLAG_PreventAllMeleeTaunts = 169,
	CPED_CONFIG_FLAG_ForceDirectEntry = 170,
	CPED_CONFIG_FLAG_AlwaysSeeApproachingVehicles = 171,
	CPED_CONFIG_FLAG_CanDiveAwayFromApproachingVehicles = 172,
	CPED_CONFIG_FLAG_AllowPlayerToInterruptVehicleEntryExit = 173,
	CPED_CONFIG_FLAG_OnlyAttackLawIfPlayerIsWanted = 174,
	_CPED_CONFIG_FLAG_0x90008BFA = 175,
	_CPED_CONFIG_FLAG_0x07C7A910 = 176,
	CPED_CONFIG_FLAG_PedsJackingMeDontGetIn = 177,
	_CPED_CONFIG_FLAG_0xCE4E8BE2 = 178,
	CPED_CONFIG_FLAG_PedIgnoresAnimInterruptEvents = 179,
	CPED_CONFIG_FLAG_IsInCustody = 180,
	CPED_CONFIG_FLAG_ForceStandardBumpReactionThresholds = 181,
	CPED_CONFIG_FLAG_LawWillOnlyAttackIfPlayerIsWanted = 182,
	CPED_CONFIG_FLAG_IsAgitated = 183,
	CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat = 184,
	CPED_CONFIG_FLAG_UseKinematicModeWhenStationary = 185,
	CPED_CONFIG_FLAG_EnableWeaponBlocking = 186,
	CPED_CONFIG_FLAG_HasHurtStarted = 187,
	CPED_CONFIG_FLAG_DisableHurt = 188,
	CPED_CONFIG_FLAG_PlayerIsWeird = 189,
	_CPED_CONFIG_FLAG_0x32FC208B = 190,
	_CPED_CONFIG_FLAG_0x0C296E5A = 191,
	_CPED_CONFIG_FLAG_0xE63B73EC = 192,
	CPED_CONFIG_FLAG_DoNothingWhenOnFootByDefault = 193,
	CPED_CONFIG_FLAG_UsingScenario = 194,
	CPED_CONFIG_FLAG_VisibleOnScreen = 195,
	_CPED_CONFIG_FLAG_0xD88C58A1 = 196,
	_CPED_CONFIG_FLAG_0x5A3DCF43 = 197,
	_CPED_CONFIG_FLAG_0xEA02B420 = 198,
	CPED_CONFIG_FLAG_DontActivateRagdollOnVehicleCollisionWhenDead = 199,
	CPED_CONFIG_FLAG_HasBeenInArmedCombat = 200,
	_CPED_CONFIG_FLAG_0x5E6466F6 = 201,
	CPED_CONFIG_FLAG_Avoidance_Ignore_All = 202,
	CPED_CONFIG_FLAG_Avoidance_Ignored_by_All = 203,
	CPED_CONFIG_FLAG_Avoidance_Ignore_Group1 = 204,
	CPED_CONFIG_FLAG_Avoidance_Member_of_Group1 = 205,
	CPED_CONFIG_FLAG_ForcedToUseSpecificGroupSeatIndex = 206,
	_CPED_CONFIG_FLAG_0x415B26B9 = 207,
	CPED_CONFIG_FLAG_DisableExplosionReactions = 208,
	CPED_CONFIG_FLAG_DodgedPlayer = 209,
	CPED_CONFIG_FLAG_WaitingForPlayerControlInterrupt = 210,
	CPED_CONFIG_FLAG_ForcedToStayInCover = 211,
	CPED_CONFIG_FLAG_GeneratesSoundEvents = 212,
	CPED_CONFIG_FLAG_ListensToSoundEvents = 213,
	CPED_CONFIG_FLAG_AllowToBeTargetedInAVehicle = 214,
	CPED_CONFIG_FLAG_WaitForDirectEntryPointToBeFreeWhenExiting = 215,
	CPED_CONFIG_FLAG_OnlyRequireOnePressToExitVehicle = 216,
	CPED_CONFIG_FLAG_ForceExitToSkyDive = 217,
	_CPED_CONFIG_FLAG_0x3C7DF9DF = 218,
	_CPED_CONFIG_FLAG_0x848FFEF2 = 219,
	CPED_CONFIG_FLAG_DontEnterLeadersVehicle = 220,
	CPED_CONFIG_FLAG_DisableExitToSkyDive = 221,
	_CPED_CONFIG_FLAG_0x84F722FA = 222,
	_CPED_CONFIG_FLAG_Shrink = 223, // 0xD1B87B1F
	_CPED_CONFIG_FLAG_0x728AA918 = 224,
	CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse = 225,
	CPED_CONFIG_FLAG_DisablePedAvoidance = 226,
	CPED_CONFIG_FLAG_ForceRagdollUponDeath = 227,
	_CPED_CONFIG_FLAG_0x1EA7225F = 228,
	CPED_CONFIG_FLAG_DisablePanicInVehicle = 229,
	CPED_CONFIG_FLAG_AllowedToDetachTrailer = 230,
	_CPED_CONFIG_FLAG_0xFC3E572D = 231,
	_CPED_CONFIG_FLAG_0x08E9F9CF = 232,
	_CPED_CONFIG_FLAG_0x2D3BA52D = 233,
	_CPED_CONFIG_FLAG_0xFD2F53EA = 234,
	_CPED_CONFIG_FLAG_0x31A1B03B = 235,
	CPED_CONFIG_FLAG_IsHoldingProp = 236,
	CPED_CONFIG_FLAG_BlocksPathingWhenDead = 237,
	_CPED_CONFIG_FLAG_0xCE57C9A3 = 238,
	_CPED_CONFIG_FLAG_0x26149198 = 239,
	CPED_CONFIG_FLAG_ForceSkinCharacterCloth = 240,
	CPED_CONFIG_FLAG_LeaveEngineOnWhenExitingVehicles = 241,
	CPED_CONFIG_FLAG_PhoneDisableTextingAnimations = 242,
	CPED_CONFIG_FLAG_PhoneDisableTalkingAnimations = 243,
	CPED_CONFIG_FLAG_PhoneDisableCameraAnimations = 244,
	CPED_CONFIG_FLAG_DisableBlindFiringInShotReactions = 245,
	CPED_CONFIG_FLAG_AllowNearbyCoverUsage = 246,
	_CPED_CONFIG_FLAG_0x0C754ACA = 247,
	CPED_CONFIG_FLAG_CanPlayInCarIdles = 248,
	CPED_CONFIG_FLAG_CanAttackNonWantedPlayerAsLaw = 249,
	CPED_CONFIG_FLAG_WillTakeDamageWhenVehicleCrashes = 250,
	CPED_CONFIG_FLAG_AICanDrivePlayerAsRearPassenger = 251,
	CPED_CONFIG_FLAG_PlayerCanJackFriendlyPlayers = 252,
	CPED_CONFIG_FLAG_OnStairs = 253,
	_CPED_CONFIG_FLAG_0xE1A2F73F = 254,
	CPED_CONFIG_FLAG_AIDriverAllowFriendlyPassengerSeatEntry = 255,
	_CPED_CONFIG_FLAG_0xF1EB20A9 = 256,
	CPED_CONFIG_FLAG_AllowMissionPedToUseInjuredMovement = 257,
	_CPED_CONFIG_FLAG_0x329DCF1A = 258,
	_CPED_CONFIG_FLAG_0x8D90DD1B = 259,
	_CPED_CONFIG_FLAG_0xB8A292B7 = 260,
	CPED_CONFIG_FLAG_PreventUsingLowerPrioritySeats = 261,
	_CPED_CONFIG_FLAG_0x2AF558F0 = 262,
	_CPED_CONFIG_FLAG_0x82251455 = 263,
	_CPED_CONFIG_FLAG_0x30CF498B = 264,
	_CPED_CONFIG_FLAG_0xE1CD50AF = 265,
	_CPED_CONFIG_FLAG_0x72E4AE48 = 266,
	_CPED_CONFIG_FLAG_0xC2657EA1 = 267,
	CPED_CONFIG_FLAG_TeleportToLeaderVehicle = 268,
	CPED_CONFIG_FLAG_Avoidance_Ignore_WeirdPedBuffer = 269,
	CPED_CONFIG_FLAG_OnStairSlope = 270,
	_CPED_CONFIG_FLAG_0xA0897933 = 271,
	CPED_CONFIG_FLAG_DontBlipCop = 272,
	CPED_CONFIG_FLAG_ClimbedShiftedFence = 273,
	_CPED_CONFIG_FLAG_0xF7823618 = 274,
	CPED_CONFIG_FLAG_KillWhenTrapped = 275,
	CPED_CONFIG_FLAG_EdgeDetected = 276,
	_CPED_CONFIG_FLAG_0x92B67896 = 277,
	_CPED_CONFIG_FLAG_0xCAD677C9 = 278,
	CPED_CONFIG_FLAG_AvoidTearGas = 279,
	_CPED_CONFIG_FLAG_0x5276AC7B = 280,
	CPED_CONFIG_FLAG_DisableGoToWritheWhenInjured = 281,
	CPED_CONFIG_FLAG_OnlyUseForcedSeatWhenEnteringHeliInGroup = 282,
	_CPED_CONFIG_FLAG_0x9139724D = 283,
	_CPED_CONFIG_FLAG_0xA1457461 = 284,
	CPED_CONFIG_FLAG_DisableWeirdPedEvents = 285,
	CPED_CONFIG_FLAG_ShouldChargeNow = 286,
	CPED_CONFIG_FLAG_RagdollingOnBoat = 287,
	CPED_CONFIG_FLAG_HasBrandishedWeapon = 288,
	_CPED_CONFIG_FLAG_0x1B9EE8A1 = 289,
	_CPED_CONFIG_FLAG_0xF3F5758C = 290,
	_CPED_CONFIG_FLAG_0x2A9307F1 = 291,
	_CPED_CONFIG_FLAG_FreezePosition = 292, // 0x7403D216
	_CPED_CONFIG_FLAG_0xA06A3C6C = 293,
	CPED_CONFIG_FLAG_DisableShockingEvents = 294,
	_CPED_CONFIG_FLAG_0xF8DA25A5 = 295,
	CPED_CONFIG_FLAG_NeverReactToPedOnRoof = 296,
	_CPED_CONFIG_FLAG_0xB31F1187 = 297,
	_CPED_CONFIG_FLAG_0x84315402 = 298,
	CPED_CONFIG_FLAG_DisableShockingDrivingOnPavementEvents = 299,
	_CPED_CONFIG_FLAG_0xC7829B67 = 300,
	CPED_CONFIG_FLAG_DisablePedConstraints = 301,
	CPED_CONFIG_FLAG_ForceInitialPeekInCover = 302,
	_CPED_CONFIG_FLAG_0x2ADA871B = 303,
	_CPED_CONFIG_FLAG_0x47BC8A58 = 304,
	CPED_CONFIG_FLAG_DisableJumpingFromVehiclesAfterLeader = 305,
	_CPED_CONFIG_FLAG_0x4A133C50 = 306,
	_CPED_CONFIG_FLAG_0xC58099C3 = 307,
	_CPED_CONFIG_FLAG_0xF3D76D41 = 308,
	_CPED_CONFIG_FLAG_0xB0EEE9F2 = 309,
	CPED_CONFIG_FLAG_IsInCluster = 310,
	CPED_CONFIG_FLAG_ShoutToGroupOnPlayerMelee = 311,
	CPED_CONFIG_FLAG_IgnoredByAutoOpenDoors = 312,
	_CPED_CONFIG_FLAG_0xD4136C22 = 313,
	CPED_CONFIG_FLAG_ForceIgnoreMeleeActiveCombatant = 314,
	CPED_CONFIG_FLAG_CheckLoSForSoundEvents = 315,
	_CPED_CONFIG_FLAG_0xD5C98277 = 316,
	CPED_CONFIG_FLAG_CanSayFollowedByPlayerAudio = 317,
	CPED_CONFIG_FLAG_ActivateRagdollFromMinorPlayerContact = 318,
	_CPED_CONFIG_FLAG_0xD8BE1D54 = 319,
	CPED_CONFIG_FLAG_ForcePoseCharacterCloth = 320,
	CPED_CONFIG_FLAG_HasClothCollisionBounds = 321,
	CPED_CONFIG_FLAG_HasHighHeels = 322,
	_CPED_CONFIG_FLAG_0x86B01E54 = 323,
	CPED_CONFIG_FLAG_DontBehaveLikeLaw = 324,
	_CPED_CONFIG_FLAG_0xC03B736C = 325, // SpawnedAtScenario?
	CPED_CONFIG_FLAG_DisablePoliceInvestigatingBody = 326,
	CPED_CONFIG_FLAG_DisableWritheShootFromGround = 327,
	CPED_CONFIG_FLAG_LowerPriorityOfWarpSeats = 328,
	CPED_CONFIG_FLAG_DisableTalkTo = 329,
	CPED_CONFIG_FLAG_DontBlip = 330,
	CPED_CONFIG_FLAG_IsSwitchingWeapon = 331,
	CPED_CONFIG_FLAG_IgnoreLegIkRestrictions = 332,
	_CPED_CONFIG_FLAG_0x150468FD = 333,
	_CPED_CONFIG_FLAG_0x914EBD6B = 334,
	_CPED_CONFIG_FLAG_0x79AF3B6D = 335,
	_CPED_CONFIG_FLAG_0x75C7A632 = 336,
	_CPED_CONFIG_FLAG_0x52D530E2 = 337,
	_CPED_CONFIG_FLAG_0xDB2A90E0 = 338,
	CPED_CONFIG_FLAG_AllowTaskDoNothingTimeslicing = 339,
	_CPED_CONFIG_FLAG_0x12ADB567 = 340,
	_CPED_CONFIG_FLAG_0x105C8518 = 341,
	CPED_CONFIG_FLAG_NotAllowedToJackAnyPlayers = 342,
	_CPED_CONFIG_FLAG_0xED152C3E = 343,
	_CPED_CONFIG_FLAG_0xA0EFE6A8 = 344,
	CPED_CONFIG_FLAG_AlwaysLeaveTrainUponArrival = 345,
	_CPED_CONFIG_FLAG_0xCDDFE830 = 346,
	CPED_CONFIG_FLAG_OnlyWritheFromWeaponDamage = 347,
	CPED_CONFIG_FLAG_UseSloMoBloodVfx = 348,
	CPED_CONFIG_FLAG_EquipJetpack = 349,
	CPED_CONFIG_FLAG_PreventDraggedOutOfCarThreatResponse = 350,
	_CPED_CONFIG_FLAG_0xE13D1F7C = 351,
	_CPED_CONFIG_FLAG_0x40E25FB9 = 352,
	_CPED_CONFIG_FLAG_0x930629D9 = 353,
	_CPED_CONFIG_FLAG_0xECCF0C7F = 354,
	_CPED_CONFIG_FLAG_0xB6E9613B = 355,
	CPED_CONFIG_FLAG_ForceDeepSurfaceCheck = 356,
	CPED_CONFIG_FLAG_DisableDeepSurfaceAnims = 357,
	CPED_CONFIG_FLAG_DontBlipNotSynced = 358,
	CPED_CONFIG_FLAG_IsDuckingInVehicle = 359,
	CPED_CONFIG_FLAG_PreventAutoShuffleToTurretSeat = 360,
	CPED_CONFIG_FLAG_DisableEventInteriorStatusCheck = 361,
	CPED_CONFIG_FLAG_HasReserveParachute = 362,
	CPED_CONFIG_FLAG_UseReserveParachute = 363,
	CPED_CONFIG_FLAG_TreatDislikeAsHateWhenInCombat = 364,
	CPED_CONFIG_FLAG_OnlyUpdateTargetWantedIfSeen = 365,
	CPED_CONFIG_FLAG_AllowAutoShuffleToDriversSeat = 366,
	_CPED_CONFIG_FLAG_0xD7E07D37 = 367,
	_CPED_CONFIG_FLAG_0x03C4FD24 = 368,
	_CPED_CONFIG_FLAG_0x7675789A = 369,
	_CPED_CONFIG_FLAG_0xB7288A88 = 370,
	_CPED_CONFIG_FLAG_0xC06B6291 = 371,
	CPED_CONFIG_FLAG_PreventReactingToSilencedCloneBullets = 372,
	CPED_CONFIG_FLAG_DisableInjuredCryForHelpEvents = 373,
	CPED_CONFIG_FLAG_NeverLeaveTrain = 374,
	CPED_CONFIG_FLAG_DontDropJetpackOnDeath = 375,
	_CPED_CONFIG_FLAG_0x147F1FFB = 376,
	_CPED_CONFIG_FLAG_0x4376DD79 = 377,
	_CPED_CONFIG_FLAG_0xCD3DB518 = 378,
	_CPED_CONFIG_FLAG_0xFE4BA4B6 = 379,
	CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInBikes = 380,
	_CPED_CONFIG_FLAG_0xBCD816CD = 381,
	_CPED_CONFIG_FLAG_0xCF02DD69 = 382,
	_CPED_CONFIG_FLAG_0xF73AFA2E = 383,
	_CPED_CONFIG_FLAG_0x80B9A9D0 = 384,
	_CPED_CONFIG_FLAG_0xF601F7EE = 385,
	_CPED_CONFIG_FLAG_0xA91350FC = 386,
	_CPED_CONFIG_FLAG_0x3AB23B96 = 387,
	CPED_CONFIG_FLAG_IsClimbingLadder = 388,
	CPED_CONFIG_FLAG_HasBareFeet = 389,
	CPED_CONFIG_FLAG_UNUSED_REPLACE_ME_2 = 390,
	CPED_CONFIG_FLAG_GoOnWithoutVehicleIfItIsUnableToGetBackToRoad = 391,
	CPED_CONFIG_FLAG_BlockDroppingHealthSnacksOnDeath = 392,
	_CPED_CONFIG_FLAG_0xC11D3E8F = 393,
	CPED_CONFIG_FLAG_ForceThreatResponseToNonFriendToFriendMeleeActions = 394,
	CPED_CONFIG_FLAG_DontRespondToRandomPedsDamage = 395,
	CPED_CONFIG_FLAG_AllowContinuousThreatResponseWantedLevelUpdates = 396,
	CPED_CONFIG_FLAG_KeepTargetLossResponseOnCleanup = 397,
	CPED_CONFIG_FLAG_PlayersDontDragMeOutOfCar = 398,
	CPED_CONFIG_FLAG_BroadcastRepondedToThreatWhenGoingToPointShooting = 399,
	CPED_CONFIG_FLAG_IgnorePedTypeForIsFriendlyWith = 400,
	CPED_CONFIG_FLAG_TreatNonFriendlyAsHateWhenInCombat = 401,
	CPED_CONFIG_FLAG_DontLeaveVehicleIfLeaderNotInVehicle = 402,
	_CPED_CONFIG_FLAG_0x5E5B9591 = 403,
	CPED_CONFIG_FLAG_AllowMeleeReactionIfMeleeProofIsOn = 404,
	_CPED_CONFIG_FLAG_0x77840177 = 405,
	_CPED_CONFIG_FLAG_0x1C7ACAC4 = 406,
	CPED_CONFIG_FLAG_UseNormalExplosionDamageWhenBlownUpInVehicle = 407,
	CPED_CONFIG_FLAG_DisableHomingMissileLockForVehiclePedInside = 408,
	CPED_CONFIG_FLAG_DisableTakeOffScubaGear = 409,
	CPED_CONFIG_FLAG_IgnoreMeleeFistWeaponDamageMult = 410,
	CPED_CONFIG_FLAG_LawPedsCanFleeFromNonWantedPlayer = 411,
	CPED_CONFIG_FLAG_ForceBlipSecurityPedsIfPlayerIsWanted = 412,
	CPED_CONFIG_FLAG_IsHolsteringWeapon = 413,
	CPED_CONFIG_FLAG_UseGoToPointForScenarioNavigation = 414,
	CPED_CONFIG_FLAG_DontClearLocalPassengersWantedLevel = 415,
	CPED_CONFIG_FLAG_BlockAutoSwapOnWeaponPickups = 416,
	CPED_CONFIG_FLAG_ThisPedIsATargetPriorityForAI = 417,
	CPED_CONFIG_FLAG_IsSwitchingHelmetVisor = 418,
	CPED_CONFIG_FLAG_ForceHelmetVisorSwitch = 419,
	_CPED_CONFIG_FLAG_0xCFF5F6DE = 420,
	CPED_CONFIG_FLAG_UseOverrideFootstepPtFx = 421,
	CPED_CONFIG_FLAG_DisableVehicleCombat = 422,
	_CPED_CONFIG_FLAG_0xFE401D26 = 423,
	CPED_CONFIG_FLAG_FallsLikeAircraft = 424,
	_CPED_CONFIG_FLAG_0x2B42AE82 = 425,
	CPED_CONFIG_FLAG_UseLockpickVehicleEntryAnimations = 426,
	CPED_CONFIG_FLAG_IgnoreInteriorCheckForSprinting = 427,
	CPED_CONFIG_FLAG_SwatHeliSpawnWithinLastSpottedLocation = 428,
	CPED_CONFIG_FLAG_DisableStartEngine = 429,
	CPED_CONFIG_FLAG_IgnoreBeingOnFire = 430,
	CPED_CONFIG_FLAG_DisableTurretOrRearSeatPreference = 431,
	CPED_CONFIG_FLAG_DisableWantedHelicopterSpawning = 432,
	CPED_CONFIG_FLAG_UseTargetPerceptionForCreatingAimedAtEvents = 433,
	CPED_CONFIG_FLAG_DisableHomingMissileLockon = 434,
	CPED_CONFIG_FLAG_ForceIgnoreMaxMeleeActiveSupportCombatants = 435,
	CPED_CONFIG_FLAG_StayInDefensiveAreaWhenInVehicle = 436,
	CPED_CONFIG_FLAG_DontShoutTargetPosition = 437,
	CPED_CONFIG_FLAG_DisableHelmetArmor = 438,
	_CPED_CONFIG_FLAG_0xCB7F3A1E = 439,
	_CPED_CONFIG_FLAG_0x50178878 = 440,
	CPED_CONFIG_FLAG_PreventVehExitDueToInvalidWeapon = 441,
	CPED_CONFIG_FLAG_IgnoreNetSessionFriendlyFireCheckForAllowDamage = 442,
	CPED_CONFIG_FLAG_DontLeaveCombatIfTargetPlayerIsAttackedByPolice = 443,
	CPED_CONFIG_FLAG_CheckLockedBeforeWarp = 444,
	CPED_CONFIG_FLAG_DontShuffleInVehicleToMakeRoom = 445,
	CPED_CONFIG_FLAG_GiveWeaponOnGetup = 446,
	CPED_CONFIG_FLAG_DontHitVehicleWithProjectiles = 447,
	CPED_CONFIG_FLAG_DisableForcedEntryForOpenVehiclesFromTryLockedDoor = 448,
	CPED_CONFIG_FLAG_FiresDummyRockets = 449,
	CPED_CONFIG_FLAG_PedIsArresting = 450,
	CPED_CONFIG_FLAG_IsDecoyPed = 451,
	CPED_CONFIG_FLAG_HasEstablishedDecoy = 452,
	CPED_CONFIG_FLAG_BlockDispatchedHelicoptersFromLanding = 453,
	CPED_CONFIG_FLAG_DontCryForHelpOnStun = 454,
	_CPED_CONFIG_FLAG_0xB68D3EAB = 455,
	CPED_CONFIG_FLAG_CanBeIncapacitated = 456,
	_CPED_CONFIG_FLAG_0x4BD5EBAD = 457,
	CPED_CONFIG_FLAG_DontChangeTargetFromMelee = 458,
};
--]]
function PED.SET_PED_CONFIG_FLAG(ped, flagId, value)
  native.invoke(
    Type.Void, 4283, false,
    arg(Type.Ped, ped),
    arg(Type.Int, flagId),
    arg(Type.Bool, value)
  )
end

-- void SET_PED_RESET_FLAG(Ped ped, int flagId, BOOL doReset) // 0xC1E8A365BF3B29F2
--[[
PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
Known values:
PRF_PreventGoingIntoStillInVehicleState = 236 *(fanatic2.c)*
--]]
function PED.SET_PED_RESET_FLAG(ped, flagId, doReset)
  native.invoke(
    Type.Void, 4284, false,
    arg(Type.Ped, ped),
    arg(Type.Int, flagId),
    arg(Type.Bool, doReset)
  )
end

-- BOOL GET_PED_CONFIG_FLAG(Ped ped, int flagId, BOOL p2) // 0x7EE53118C892B513
--[[
See SET_PED_CONFIG_FLAG
--]]
function PED.GET_PED_CONFIG_FLAG(ped, flagId, p2)
  return native.invoke(
    Type.Bool, 4285, false,
    arg(Type.Ped, ped),
    arg(Type.Int, flagId),
    arg(Type.Bool, p2)
  )
end

-- BOOL GET_PED_RESET_FLAG(Ped ped, int flagId) // 0xAF9E59B1B1FBF2A0
function PED.GET_PED_RESET_FLAG(ped, flagId)
  return native.invoke(
    Type.Bool, 4286, false,
    arg(Type.Ped, ped),
    arg(Type.Int, flagId)
  )
end

-- void SET_PED_GROUP_MEMBER_PASSENGER_INDEX(Ped ped, int index) // 0x0BDDB8D9EC6BCF3C
function PED.SET_PED_GROUP_MEMBER_PASSENGER_INDEX(ped, index)
  native.invoke(
    Type.Void, 4287, false,
    arg(Type.Ped, ped),
    arg(Type.Int, index)
  )
end

-- void SET_PED_CAN_EVASIVE_DIVE(Ped ped, BOOL toggle) // 0x6B7A646C242A7059
function PED.SET_PED_CAN_EVASIVE_DIVE(ped, toggle)
  native.invoke(
    Type.Void, 4288, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_EVASIVE_DIVING(Ped ped, Entity* evadingEntity) // 0x414641C26E105898
--[[
Presumably returns the Entity that the Ped is currently diving out of the way of.

var num3;
    if (PED::IS_PED_EVASIVE_DIVING(A_0, &num3) != 0)
        if (ENTITY::IS_ENTITY_A_VEHICLE(num3) != 0)
--]]
function PED.IS_PED_EVASIVE_DIVING(ped, evadingEntity)
  return native.invoke(
    Type.Bool, 4289, false,
    arg(Type.Ped, ped),
    ref(Type.Entity, evadingEntity)
  )
end

-- void SET_PED_SHOOTS_AT_COORD(Ped ped, float x, float y, float z, BOOL toggle) // 0x96A05E4FB321B1BA
function PED.SET_PED_SHOOTS_AT_COORD(ped, x, y, z, toggle)
  native.invoke(
    Type.Void, 4290, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_MODEL_IS_SUPPRESSED(Hash modelHash, BOOL toggle) // 0xE163A4BCE4DE6F11
--[[
Full list of peds by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/peds.json
--]]
function PED.SET_PED_MODEL_IS_SUPPRESSED(modelHash, toggle)
  native.invoke(
    Type.Void, 4291, false,
    arg(Type.Hash, modelHash),
    arg(Type.Bool, toggle)
  )
end

-- void STOP_ANY_PED_MODEL_BEING_SUPPRESSED() // 0xB47BD05FA66B40CF
function PED.STOP_ANY_PED_MODEL_BEING_SUPPRESSED()
  native.invoke(
    Type.Void, 4292, false
  )
end

-- void SET_PED_CAN_BE_TARGETED_WHEN_INJURED(Ped ped, BOOL toggle) // 0x638C03B0F9878F57
function PED.SET_PED_CAN_BE_TARGETED_WHEN_INJURED(ped, toggle)
  native.invoke(
    Type.Void, 4293, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_GENERATES_DEAD_BODY_EVENTS(Ped ped, BOOL toggle) // 0x7FB17BA2E7DECA5B
function PED.SET_PED_GENERATES_DEAD_BODY_EVENTS(ped, toggle)
  native.invoke(
    Type.Void, 4294, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void BLOCK_PED_FROM_GENERATING_DEAD_BODY_EVENTS_WHEN_DEAD(Ped ped, BOOL toggle) // 0xE43A13C9E4CCCBCF
function PED.BLOCK_PED_FROM_GENERATING_DEAD_BODY_EVENTS_WHEN_DEAD(ped, toggle)
  native.invoke(
    Type.Void, 4295, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_WILL_ONLY_ATTACK_WANTED_PLAYER(Any p0, Any p1) // 0x3E9679C1DFCF422C
function PED.SET_PED_WILL_ONLY_ATTACK_WANTED_PLAYER(p0, p1)
  native.invoke(
    Type.Void, 4296, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(Ped ped, BOOL toggle) // 0xDF993EE5E90ABA25
function PED.SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(ped, toggle)
  native.invoke(
    Type.Void, 4297, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void GIVE_PED_HELMET(Ped ped, BOOL cannotRemove, int helmetFlag, int textureIndex) // 0x54C7C4A94367717E
--[[
PoliceMotorcycleHelmet   1024    
RegularMotorcycleHelmet   4096    
FiremanHelmet 16384   
PilotHeadset  32768   
PilotHelmet   65536
--
p2 is generally 4096 or 16384 in the scripts. p1 varies between 1 and 0.
--]]
function PED.GIVE_PED_HELMET(ped, cannotRemove, helmetFlag, textureIndex)
  native.invoke(
    Type.Void, 4298, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, cannotRemove),
    arg(Type.Int, helmetFlag),
    arg(Type.Int, textureIndex)
  )
end

-- void REMOVE_PED_HELMET(Ped ped, BOOL instantly) // 0xA7B2458D0AD6DED8
function PED.REMOVE_PED_HELMET(ped, instantly)
  native.invoke(
    Type.Void, 4299, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, instantly)
  )
end

-- BOOL IS_PED_TAKING_OFF_HELMET(Ped ped) // 0x14590DDBEDB1EC85
function PED.IS_PED_TAKING_OFF_HELMET(ped)
  return native.invoke(
    Type.Bool, 4300, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_HELMET(Ped ped, BOOL canWearHelmet) // 0x560A43136EB58105
function PED.SET_PED_HELMET(ped, canWearHelmet)
  native.invoke(
    Type.Void, 4301, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, canWearHelmet)
  )
end

-- void SET_PED_HELMET_FLAG(Ped ped, int helmetFlag) // 0xC0E78D5C2CE3EB25
function PED.SET_PED_HELMET_FLAG(ped, helmetFlag)
  native.invoke(
    Type.Void, 4302, false,
    arg(Type.Ped, ped),
    arg(Type.Int, helmetFlag)
  )
end

-- void SET_PED_HELMET_PROP_INDEX(Ped ped, int propIndex, BOOL p2) // 0x26D83693ED99291C
--[[
List of component/props ID
gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
--]]
function PED.SET_PED_HELMET_PROP_INDEX(ped, propIndex, p2)
  native.invoke(
    Type.Void, 4303, false,
    arg(Type.Ped, ped),
    arg(Type.Int, propIndex),
    arg(Type.Bool, p2)
  )
end

-- void SET_PED_HELMET_VISOR_PROP_INDICES(Ped ped, BOOL p1, int p2, int p3) // 0x3F7325574E41B44D
function PED.SET_PED_HELMET_VISOR_PROP_INDICES(ped, p1, p2, p3)
  native.invoke(
    Type.Void, 4304, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3)
  )
end

-- BOOL IS_PED_HELMET_VISOR_UP(Ped ped) // 0xB9496CE47546DB2C
function PED.IS_PED_HELMET_VISOR_UP(ped)
  return native.invoke(
    Type.Bool, 4305, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_HELMET_TEXTURE_INDEX(Ped ped, int textureIndex) // 0xF1550C4BD22582E2
function PED.SET_PED_HELMET_TEXTURE_INDEX(ped, textureIndex)
  native.invoke(
    Type.Void, 4306, false,
    arg(Type.Ped, ped),
    arg(Type.Int, textureIndex)
  )
end

-- BOOL IS_PED_WEARING_HELMET(Ped ped) // 0xF33BDFE19B309B19
--[[
Returns true if the ped passed through the parenthesis is wearing a helmet.
--]]
function PED.IS_PED_WEARING_HELMET(ped)
  return native.invoke(
    Type.Bool, 4307, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_PED_STORED_HAT_PROP(Ped ped) // 0x687C0B594907D2E8
function PED.CLEAR_PED_STORED_HAT_PROP(ped)
  native.invoke(
    Type.Void, 4308, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_HELMET_STORED_HAT_PROP_INDEX(Ped ped) // 0x451294E859ECC018
function PED.GET_PED_HELMET_STORED_HAT_PROP_INDEX(ped)
  return native.invoke(
    Type.Int, 4309, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_PED_HELMET_STORED_HAT_TEX_INDEX(Ped ped) // 0x9D728C1E12BF5518
function PED.GET_PED_HELMET_STORED_HAT_TEX_INDEX(ped)
  return native.invoke(
    Type.Int, 4310, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_CURRENT_HEAD_PROP_A_HELMET(Any p0) // 0xF2385935BFFD4D92
function PED.IS_CURRENT_HEAD_PROP_A_HELMET(p0)
  return native.invoke(
    Type.Bool, 4311, false,
    arg(Type.Any, p0)
  )
end

-- void SET_PED_TO_LOAD_COVER(Ped ped, BOOL toggle) // 0x332B562EEDA62399
function PED.SET_PED_TO_LOAD_COVER(ped, toggle)
  native.invoke(
    Type.Void, 4312, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_COWER_IN_COVER(Ped ped, BOOL toggle) // 0xCB7553CDCEF4A735
--[[
It simply makes the said ped to cower behind cover object(wall, desk, car)

Peds flee attributes must be set to not to flee, first. Else, most of the peds, will just flee from gunshot sounds or any other panic situations.
--]]
function PED.SET_PED_CAN_COWER_IN_COVER(ped, toggle)
  native.invoke(
    Type.Void, 4313, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_PEEK_IN_COVER(Ped ped, BOOL toggle) // 0xC514825C507E3736
function PED.SET_PED_CAN_PEEK_IN_COVER(ped, toggle)
  native.invoke(
    Type.Void, 4314, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_PLAYS_HEAD_ON_HORN_ANIM_WHEN_DIES_IN_VEHICLE(Ped ped, BOOL toggle) // 0x94D94BF1A75AED3D
--[[
This native does absolutely nothing, just a nullsub
--]]
function PED.SET_PED_PLAYS_HEAD_ON_HORN_ANIM_WHEN_DIES_IN_VEHICLE(ped, toggle)
  native.invoke(
    Type.Void, 4315, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_LEG_IK_MODE(Ped ped, int mode) // 0xC396F5B86FF9FEBD
--[[
"IK" stands for "Inverse kinematics." I assume this has something to do with how the ped uses his legs to balance. In the scripts, the second parameter is always an int with a value of 2, 0, or sometimes 1
--]]
function PED.SET_PED_LEG_IK_MODE(ped, mode)
  native.invoke(
    Type.Void, 4316, false,
    arg(Type.Ped, ped),
    arg(Type.Int, mode)
  )
end

-- void SET_PED_MOTION_BLUR(Ped ped, BOOL toggle) // 0x0A986918B102B448
function PED.SET_PED_MOTION_BLUR(ped, toggle)
  native.invoke(
    Type.Void, 4317, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CAN_SWITCH_WEAPON(Ped ped, BOOL toggle) // 0xED7F7EFE9FABF340
function PED.SET_PED_CAN_SWITCH_WEAPON(ped, toggle)
  native.invoke(
    Type.Void, 4318, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_DIES_INSTANTLY_IN_WATER(Ped ped, BOOL toggle) // 0xEEB64139BA29A7CF
function PED.SET_PED_DIES_INSTANTLY_IN_WATER(ped, toggle)
  native.invoke(
    Type.Void, 4319, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_LADDER_CLIMB_INPUT_STATE(Ped ped, int p1) // 0x1A330D297AAC6BC1
--[[
Only appears in lamar1 script.
--]]
function PED.SET_LADDER_CLIMB_INPUT_STATE(ped, p1)
  native.invoke(
    Type.Void, 4320, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1)
  )
end

-- void STOP_PED_WEAPON_FIRING_WHEN_DROPPED(Ped ped) // 0xC158D28142A34608
function PED.STOP_PED_WEAPON_FIRING_WHEN_DROPPED(ped)
  native.invoke(
    Type.Void, 4321, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_SCRIPTED_ANIM_SEAT_OFFSET(Ped ped, float p1) // 0x5917BBA32D06C230
function PED.SET_SCRIPTED_ANIM_SEAT_OFFSET(ped, p1)
  native.invoke(
    Type.Void, 4322, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1)
  )
end

-- void SET_PED_COMBAT_MOVEMENT(Ped ped, int combatMovement) // 0x4D9CA1009AFBD057
--[[
enum eCombatMovement // 0x4F456B61
{
	CM_Stationary,
	CM_Defensive,
	CM_WillAdvance,
	CM_WillRetreat
};
--]]
function PED.SET_PED_COMBAT_MOVEMENT(ped, combatMovement)
  native.invoke(
    Type.Void, 4323, false,
    arg(Type.Ped, ped),
    arg(Type.Int, combatMovement)
  )
end

-- int GET_PED_COMBAT_MOVEMENT(Ped ped) // 0xDEA92412FCAEB3F5
--[[
See SET_PED_COMBAT_MOVEMENT
--]]
function PED.GET_PED_COMBAT_MOVEMENT(ped)
  return native.invoke(
    Type.Int, 4324, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_COMBAT_ABILITY(Ped ped, int abilityLevel) // 0xC7622C0D36B2FDA8
--[[
enum eCombatAbility // 0xE793438C
{
	CA_Poor,
	CA_Average,
	CA_Professional,
	CA_NumTypes
};
--]]
function PED.SET_PED_COMBAT_ABILITY(ped, abilityLevel)
  native.invoke(
    Type.Void, 4325, false,
    arg(Type.Ped, ped),
    arg(Type.Int, abilityLevel)
  )
end

-- void SET_PED_COMBAT_RANGE(Ped ped, int combatRange) // 0x3C606747B23E497B
--[[
enum eCombatRange // 0xB69160F5
{
	CR_Near,
	CR_Medium,
	CR_Far,
	CR_VeryFar,
	CR_NumRanges
};
--]]
function PED.SET_PED_COMBAT_RANGE(ped, combatRange)
  native.invoke(
    Type.Void, 4326, false,
    arg(Type.Ped, ped),
    arg(Type.Int, combatRange)
  )
end

-- int GET_PED_COMBAT_RANGE(Ped ped) // 0xF9D9F7F2DB8E2FA0
--[[
See SET_PED_COMBAT_RANGE
--]]
function PED.GET_PED_COMBAT_RANGE(ped)
  return native.invoke(
    Type.Int, 4327, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_COMBAT_ATTRIBUTES(Ped ped, int attributeId, BOOL enabled) // 0x9F7794730795E019
--[[
enum eCombatAttributes // 0x0E8E7201
{
	BF_CanUseCover = 0,
	BF_CanUseVehicles = 1,
	BF_CanDoDrivebys = 2,
	BF_CanLeaveVehicle = 3,
	BF_CanUseDynamicStrafeDecisions = 4,
	BF_AlwaysFight = 5,
	BF_0x66BB9FCC = 6,
	BF_0x6837DA41 = 7,
	BF_0xB4A13A5A = 8,
	BF_0xEE326AAD = 9,
	BF_0x7DF2CCFA = 10,
	BF_0x0036D422 = 11,
	BF_BlindFireWhenInCover = 12,
	BF_Aggressive = 13,
	BF_CanInvestigate = 14,
	BF_HasRadio = 15,
	BF_0x6BDE28D1 = 16,
	BF_AlwaysFlee = 17,
	BF_0x7852797D = 18,
	BF_0x33497B95 = 19,
	BF_CanTauntInVehicle = 20,
	BF_CanChaseTargetOnFoot = 21,
	BF_WillDragInjuredPedsToSafety = 22,
	BF_0xCD7168B8 = 23,
	BF_UseProximityFiringRate = 24,
	BF_0x48F914F8 = 25,
	BF_0x2EA543D0 = 26,
	BF_PerfectAccuracy = 27,
	BF_CanUseFrustratedAdvance = 28,
	BF_0x3D131AC1 = 29,
	BF_0x3AD95F27 = 30,
	BF_MaintainMinDistanceToTarget = 31,
	BF_0xEAD68AD2 = 32,
	BF_0xA206C2E0 = 33,
	BF_CanUsePeekingVariations = 34,
	BF_0xA5715184 = 35,
	BF_0xD5265533 = 36,
	BF_0x2B84C2BF = 37,
	BF_DisableBulletReactions = 38,
	BF_CanBust = 39,
	BF_0xAA525726 = 40,
	BF_CanCommandeerVehicles = 41,
	BF_CanFlank = 42,
	BF_SwitchToAdvanceIfCantFindCover = 43,
	BF_SwitchToDefensiveIfInCover = 44,
	BF_0xEB4786A0 = 45,
	BF_CanFightArmedPedsWhenNotArmed = 46,
	BF_0xA08E9402 = 47,
	BF_0x952EAD7D = 48,
	BF_UseEnemyAccuracyScaling = 49,
	BF_CanCharge = 50,
	BF_0xDA8C2BD3 = 51,
	BF_0x6562F017 = 52,
	BF_0xA2C3D53B = 53,
	BF_AlwaysEquipBestWeapon = 54,
	BF_CanSeeUnderwaterPeds = 55,
	BF_0xF619486B = 56,
	BF_0x61EB63A3 = 57,
	BF_DisableFleeFromCombat = 58,
	BF_0x8976D12B = 59,
	BF_CanThrowSmokeGrenade = 60,
	BF_NonMissionPedsFleeFromThisPedUnlessArmed = 61,
	BF_0x5452A10C = 62,
	BF_FleesFromInvincibleOpponents = 63,
	BF_DisableBlockFromPursueDuringVehicleChase = 64,
	BF_DisableSpinOutDuringVehicleChase = 65,
	BF_DisableCruiseInFrontDuringBlockDuringVehicleChase = 66,
	BF_0x0B404731 = 67,
	BF_DisableReactToBuddyShot = 68,
	BF_0x7FFD6AEB = 69,
	BF_0x51F4AEF8 = 70,
	BF_PermitChargeBeyondDefensiveArea = 71,
	BF_0x63E0A8E2 = 72,
	BF_0xDF974436 = 73,
	BF_0x556C080B = 74,
	BF_0xA4D50035 = 75,
	BF_SetDisableShoutTargetPositionOnCombatStart = 76,
	BF_DisableRespondedToThreatBroadcast = 77,
	BF_0xCBB01765 = 78,
	BF_0x4F862ED4 = 79,
	BF_0xEF9C7C40 = 80,
	BF_0xE51B494F = 81,
	BF_0x054D0199 = 82,
	BF_0xD36BCE94 = 83,
	BF_0xFB11F690 = 84,
	BF_0xD208A9AD = 85,
	BF_AllowDogFighting = 86,
	BF_0x07A6E531 = 87,
	BF_0x34F9317B = 88,
	BF_0x4240F5A9 = 89,
	BF_0xEE129DBD = 90,
	BF_0x053AEAD9 = 91
};
--]]
function PED.SET_PED_COMBAT_ATTRIBUTES(ped, attributeId, enabled)
  native.invoke(
    Type.Void, 4328, false,
    arg(Type.Ped, ped),
    arg(Type.Int, attributeId),
    arg(Type.Bool, enabled)
  )
end

-- void SET_PED_TARGET_LOSS_RESPONSE(Ped ped, int responseType) // 0x0703B9079823DA4A
--[[
enum eTargetLossResponseType
{
	TLR_ExitTask,
	TLR_NeverLoseTarget,
	TLR_SearchForTarget
};
--]]
function PED.SET_PED_TARGET_LOSS_RESPONSE(ped, responseType)
  native.invoke(
    Type.Void, 4329, false,
    arg(Type.Ped, ped),
    arg(Type.Int, responseType)
  )
end

-- BOOL IS_PED_PERFORMING_MELEE_ACTION(Ped ped) // 0xDCCA191DF9980FD7
function PED.IS_PED_PERFORMING_MELEE_ACTION(ped)
  return native.invoke(
    Type.Bool, 4330, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_PERFORMING_STEALTH_KILL(Ped ped) // 0xFD4CCDBCC59941B7
function PED.IS_PED_PERFORMING_STEALTH_KILL(ped)
  return native.invoke(
    Type.Bool, 4331, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_PERFORMING_A_COUNTER_ATTACK(Ped ped) // 0xEBD0EDBA5BE957CF
function PED.IS_PED_PERFORMING_A_COUNTER_ATTACK(ped)
  return native.invoke(
    Type.Bool, 4332, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_BEING_STEALTH_KILLED(Ped ped) // 0x863B23EFDE9C5DF2
function PED.IS_PED_BEING_STEALTH_KILLED(ped)
  return native.invoke(
    Type.Bool, 4333, false,
    arg(Type.Ped, ped)
  )
end

-- Ped GET_MELEE_TARGET_FOR_PED(Ped ped) // 0x18A3E9EE1297FD39
function PED.GET_MELEE_TARGET_FOR_PED(ped)
  return native.invoke(
    Type.Ped, 4334, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL WAS_PED_KILLED_BY_STEALTH(Ped ped) // 0xF9800AA1A771B000
function PED.WAS_PED_KILLED_BY_STEALTH(ped)
  return native.invoke(
    Type.Bool, 4335, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL WAS_PED_KILLED_BY_TAKEDOWN(Ped ped) // 0x7F08E26039C7347C
function PED.WAS_PED_KILLED_BY_TAKEDOWN(ped)
  return native.invoke(
    Type.Bool, 4336, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL WAS_PED_KNOCKED_OUT(Ped ped) // 0x61767F73EACEED21
function PED.WAS_PED_KNOCKED_OUT(ped)
  return native.invoke(
    Type.Bool, 4337, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_FLEE_ATTRIBUTES(Ped ped, int attributeFlags, BOOL enable) // 0x70A2D1137C8ED7C9
--[[
bit 1 (0x2) = use vehicle
bit 15 (0x8000) = force cower
--]]
function PED.SET_PED_FLEE_ATTRIBUTES(ped, attributeFlags, enable)
  native.invoke(
    Type.Void, 4338, false,
    arg(Type.Ped, ped),
    arg(Type.Int, attributeFlags),
    arg(Type.Bool, enable)
  )
end

-- void SET_PED_COWER_HASH(Ped ped, const char* p1) // 0xA549131166868ED3
--[[
p1: Only "CODE_HUMAN_STAND_COWER" found in the b617d scripts.
--]]
function PED.SET_PED_COWER_HASH(ped, p1)
  native.invoke(
    Type.Void, 4339, false,
    arg(Type.Ped, ped),
    arg(Type.String, p1)
  )
end

-- void SET_PED_STEERS_AROUND_DEAD_BODIES(Ped ped, BOOL toggle) // 0x2016C603D6B8987C
function PED.SET_PED_STEERS_AROUND_DEAD_BODIES(ped, toggle)
  native.invoke(
    Type.Void, 4340, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_STEERS_AROUND_PEDS(Ped ped, BOOL toggle) // 0x46F2193B3AD1D891
function PED.SET_PED_STEERS_AROUND_PEDS(ped, toggle)
  native.invoke(
    Type.Void, 4341, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_STEERS_AROUND_OBJECTS(Ped ped, BOOL toggle) // 0x1509C089ADC208BF
function PED.SET_PED_STEERS_AROUND_OBJECTS(ped, toggle)
  native.invoke(
    Type.Void, 4342, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_STEERS_AROUND_VEHICLES(Ped ped, BOOL toggle) // 0xEB6FB9D48DDE23EC
function PED.SET_PED_STEERS_AROUND_VEHICLES(ped, toggle)
  native.invoke(
    Type.Void, 4343, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_IS_AVOIDED_BY_OTHERS(Any p0, BOOL p1) // 0xA9B61A329BFDCBEA
function PED.SET_PED_IS_AVOIDED_BY_OTHERS(p0, p1)
  native.invoke(
    Type.Void, 4344, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_PED_INCREASED_AVOIDANCE_RADIUS(Ped ped) // 0x570389D1C3DE3C6B
function PED.SET_PED_INCREASED_AVOIDANCE_RADIUS(ped)
  native.invoke(
    Type.Void, 4345, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_BLOCKS_PATHING_WHEN_DEAD(Ped ped, BOOL toggle) // 0x576594E8D64375E2
function PED.SET_PED_BLOCKS_PATHING_WHEN_DEAD(ped, toggle)
  native.invoke(
    Type.Void, 4346, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_NO_TIME_DELAY_BEFORE_SHOT(Any p0) // 0xA52D5247A4227E14
function PED.SET_PED_NO_TIME_DELAY_BEFORE_SHOT(p0)
  native.invoke(
    Type.Void, 4347, false,
    arg(Type.Any, p0)
  )
end

-- BOOL IS_ANY_PED_NEAR_POINT(float x, float y, float z, float radius) // 0x083961498679DC9F
function PED.IS_ANY_PED_NEAR_POINT(x, y, z, radius)
  return native.invoke(
    Type.Bool, 4348, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void FORCE_PED_AI_AND_ANIMATION_UPDATE(Ped ped, BOOL p1, BOOL p2) // 0x2208438012482A1A
function PED.FORCE_PED_AI_AND_ANIMATION_UPDATE(ped, p1, p2)
  native.invoke(
    Type.Void, 4349, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_PED_HEADING_TOWARDS_POSITION(Ped ped, float x, float y, float z, float p4) // 0xFCF37A457CB96DC0
function PED.IS_PED_HEADING_TOWARDS_POSITION(ped, x, y, z, p4)
  return native.invoke(
    Type.Bool, 4350, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p4)
  )
end

-- void REQUEST_PED_VISIBILITY_TRACKING(Ped ped) // 0x7D7A2E43E74E2EB8
function PED.REQUEST_PED_VISIBILITY_TRACKING(ped)
  native.invoke(
    Type.Void, 4351, false,
    arg(Type.Ped, ped)
  )
end

-- void REQUEST_PED_VEHICLE_VISIBILITY_TRACKING(Ped ped, BOOL p1) // 0x2BC338A7B21F4608
function PED.REQUEST_PED_VEHICLE_VISIBILITY_TRACKING(ped, p1)
  native.invoke(
    Type.Void, 4352, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void REQUEST_PED_RESTRICTED_VEHICLE_VISIBILITY_TRACKING(Ped ped, BOOL p1) // 0xCD018C591F94CB43
function PED.REQUEST_PED_RESTRICTED_VEHICLE_VISIBILITY_TRACKING(ped, p1)
  native.invoke(
    Type.Void, 4353, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void REQUEST_PED_USE_SMALL_BBOX_VISIBILITY_TRACKING(Ped ped, BOOL p1) // 0x75BA1CB3B7D40CAF
function PED.REQUEST_PED_USE_SMALL_BBOX_VISIBILITY_TRACKING(ped, p1)
  native.invoke(
    Type.Void, 4354, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_TRACKED_PED_VISIBLE(Ped ped) // 0x91C8E617F64188AC
--[[
returns whether or not a ped is visible within your FOV, not this check auto's to false after a certain distance.


Target needs to be tracked.. won't work otherwise.
--]]
function PED.IS_TRACKED_PED_VISIBLE(ped)
  return native.invoke(
    Type.Bool, 4355, false,
    arg(Type.Ped, ped)
  )
end

-- int GET_TRACKED_PED_PIXELCOUNT(Ped ped) // 0x511F1A683387C7E2
function PED.GET_TRACKED_PED_PIXELCOUNT(ped)
  return native.invoke(
    Type.Int, 4356, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_TRACKED(Ped ped) // 0x4C5E1F087CD10BB7
function PED.IS_PED_TRACKED(ped)
  return native.invoke(
    Type.Bool, 4357, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL HAS_PED_RECEIVED_EVENT(Ped ped, int eventId) // 0x8507BCB710FA6DC0
function PED.HAS_PED_RECEIVED_EVENT(ped, eventId)
  return native.invoke(
    Type.Bool, 4358, false,
    arg(Type.Ped, ped),
    arg(Type.Int, eventId)
  )
end

-- BOOL CAN_PED_SEE_HATED_PED(Ped ped1, Ped ped2) // 0x6CD5A433374D4CFB
function PED.CAN_PED_SEE_HATED_PED(ped1, ped2)
  return native.invoke(
    Type.Bool, 4359, false,
    arg(Type.Ped, ped1),
    arg(Type.Ped, ped2)
  )
end

-- BOOL CAN_PED_SHUFFLE_TO_OR_FROM_TURRET_SEAT(Ped ped, int* p1) // 0x9C6A6C19B6C0C496
function PED.CAN_PED_SHUFFLE_TO_OR_FROM_TURRET_SEAT(ped, p1)
  return native.invoke(
    Type.Bool, 4360, false,
    arg(Type.Ped, ped),
    ref(Type.Int, p1)
  )
end

-- BOOL CAN_PED_SHUFFLE_TO_OR_FROM_EXTRA_SEAT(Ped ped, int* p1) // 0x2DFC81C9B9608549
function PED.CAN_PED_SHUFFLE_TO_OR_FROM_EXTRA_SEAT(ped, p1)
  return native.invoke(
    Type.Bool, 4361, false,
    arg(Type.Ped, ped),
    ref(Type.Int, p1)
  )
end

-- int GET_PED_BONE_INDEX(Ped ped, int boneId) // 0x3F428D08BE5AAE31
--[[
no bone= -1

boneIds:
        SKEL_ROOT = 0x0,
   SKEL_Pelvis = 0x2e28,
 SKEL_L_Thigh = 0xe39f,
    SKEL_L_Calf = 0xf9bb,
 SKEL_L_Foot = 0x3779,
 SKEL_L_Toe0 = 0x83c,
  IK_L_Foot = 0xfedd,
   PH_L_Foot = 0xe175,
   MH_L_Knee = 0xb3fe,
   SKEL_R_Thigh = 0xca72,
    SKEL_R_Calf = 0x9000,
 SKEL_R_Foot = 0xcc4d,
 SKEL_R_Toe0 = 0x512d,
 IK_R_Foot = 0x8aae,
   PH_R_Foot = 0x60e6,
   MH_R_Knee = 0x3fcf,
   RB_L_ThighRoll = 0x5c57,
  RB_R_ThighRoll = 0x192a,
  SKEL_Spine_Root = 0xe0fd,
 SKEL_Spine0 = 0x5c01,
 SKEL_Spine1 = 0x60f0,
 SKEL_Spine2 = 0x60f1,
 SKEL_Spine3 = 0x60f2,
 SKEL_L_Clavicle = 0xfcd9,
 SKEL_L_UpperArm = 0xb1c5,
 SKEL_L_Forearm = 0xeeeb,
  SKEL_L_Hand = 0x49d9,
 SKEL_L_Finger00 = 0x67f2,
 SKEL_L_Finger01 = 0xff9,
  SKEL_L_Finger02 = 0xffa,
  SKEL_L_Finger10 = 0x67f3,
 SKEL_L_Finger11 = 0x1049,
 SKEL_L_Finger12 = 0x104a,
 SKEL_L_Finger20 = 0x67f4,
 SKEL_L_Finger21 = 0x1059,
 SKEL_L_Finger22 = 0x105a,
 SKEL_L_Finger30 = 0x67f5,
 SKEL_L_Finger31 = 0x1029,
 SKEL_L_Finger32 = 0x102a,
 SKEL_L_Finger40 = 0x67f6,
 SKEL_L_Finger41 = 0x1039,
 SKEL_L_Finger42 = 0x103a,
 PH_L_Hand = 0xeb95,
   IK_L_Hand = 0x8cbd,
   RB_L_ForeArmRoll = 0xee4f,
    RB_L_ArmRoll = 0x1470,
    MH_L_Elbow = 0x58b7,
  SKEL_R_Clavicle = 0x29d2,
 SKEL_R_UpperArm = 0x9d4d,
 SKEL_R_Forearm = 0x6e5c,
  SKEL_R_Hand = 0xdead,
 SKEL_R_Finger00 = 0xe5f2,
 SKEL_R_Finger01 = 0xfa10,
 SKEL_R_Finger02 = 0xfa11,
 SKEL_R_Finger10 = 0xe5f3,
 SKEL_R_Finger11 = 0xfa60,
 SKEL_R_Finger12 = 0xfa61,
 SKEL_R_Finger20 = 0xe5f4,
 SKEL_R_Finger21 = 0xfa70,
 SKEL_R_Finger22 = 0xfa71,
 SKEL_R_Finger30 = 0xe5f5,
 SKEL_R_Finger31 = 0xfa40,
 SKEL_R_Finger32 = 0xfa41,
 SKEL_R_Finger40 = 0xe5f6,
 SKEL_R_Finger41 = 0xfa50,
 SKEL_R_Finger42 = 0xfa51,
 PH_R_Hand = 0x6f06,
   IK_R_Hand = 0x188e,
   RB_R_ForeArmRoll = 0xab22,
    RB_R_ArmRoll = 0x90ff,
    MH_R_Elbow = 0xbb0,
   SKEL_Neck_1 = 0x9995,
 SKEL_Head = 0x796e,
   IK_Head = 0x322c,
 FACIAL_facialRoot = 0xfe2c,
   FB_L_Brow_Out_000 = 0xe3db,
   FB_L_Lid_Upper_000 = 0xb2b6,
  FB_L_Eye_000 = 0x62ac,
    FB_L_CheekBone_000 = 0x542e,
  FB_L_Lip_Corner_000 = 0x74ac,
 FB_R_Lid_Upper_000 = 0xaa10,
  FB_R_Eye_000 = 0x6b52,
    FB_R_CheekBone_000 = 0x4b88,
  FB_R_Brow_Out_000 = 0x54c,
    FB_R_Lip_Corner_000 = 0x2ba6,
 FB_Brow_Centre_000 = 0x9149,
  FB_UpperLipRoot_000 = 0x4ed2,
 FB_UpperLip_000 = 0xf18f,
 FB_L_Lip_Top_000 = 0x4f37,
    FB_R_Lip_Top_000 = 0x4537,
    FB_Jaw_000 = 0xb4a0,
  FB_LowerLipRoot_000 = 0x4324,
 FB_LowerLip_000 = 0x508f,
 FB_L_Lip_Bot_000 = 0xb93b,
    FB_R_Lip_Bot_000 = 0xc33b,
    FB_Tongue_000 = 0xb987,
   RB_Neck_1 = 0x8b93,
   IK_Root = 0xdd1c
--]]
function PED.GET_PED_BONE_INDEX(ped, boneId)
  return native.invoke(
    Type.Int, 4362, false,
    arg(Type.Ped, ped),
    arg(Type.Int, boneId)
  )
end

-- int GET_PED_RAGDOLL_BONE_INDEX(Ped ped, int bone) // 0x2057EF813397A772
function PED.GET_PED_RAGDOLL_BONE_INDEX(ped, bone)
  return native.invoke(
    Type.Int, 4363, false,
    arg(Type.Ped, ped),
    arg(Type.Int, bone)
  )
end

-- void SET_PED_ENVEFF_SCALE(Ped ped, float value) // 0xBF29516833893561
--[[
Values look to be between 0.0 and 1.0
From decompiled scripts: 0.0, 0.6, 0.65, 0.8, 1.0

You are correct, just looked in IDA it breaks from the function if it's less than 0.0f or greater than 1.0f.
--]]
function PED.SET_PED_ENVEFF_SCALE(ped, value)
  native.invoke(
    Type.Void, 4364, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- float GET_PED_ENVEFF_SCALE(Ped ped) // 0x9C14D30395A51A3C
function PED.GET_PED_ENVEFF_SCALE(ped)
  return native.invoke(
    Type.Float, 4365, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_ENABLE_PED_ENVEFF_SCALE(Ped ped, BOOL toggle) // 0xD2C5AA0C0E8D0F1E
function PED.SET_ENABLE_PED_ENVEFF_SCALE(ped, toggle)
  native.invoke(
    Type.Void, 4366, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_ENVEFF_CPV_ADD(Ped ped, float p1) // 0x110F526AB784111F
--[[
In agency_heist3b.c4, its like this 90% of the time:

PED::SET_PED_ENVEFF_CPV_ADD(ped, 0.099);
PED::SET_PED_ENVEFF_SCALE(ped, 1.0);
PED::SET_PED_ENVEFF_CPV_ADD(ped, 87, 81, 68);
PED::SET_ENABLE_PED_ENVEFF_SCALE(ped, 1);

and its like this 10% of the time:

PED::SET_PED_ENVEFF_CPV_ADD(ped, 0.2);
PED::SET_PED_ENVEFF_SCALE(ped, 0.65);
PED::SET_PED_ENVEFF_COLOR_MODULATOR(ped, 74, 69, 60);
PED::SET_ENABLE_PED_ENVEFF_SCALE(ped, 1);
--]]
function PED.SET_PED_ENVEFF_CPV_ADD(ped, p1)
  native.invoke(
    Type.Void, 4367, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1)
  )
end

-- void SET_PED_ENVEFF_COLOR_MODULATOR(Ped ped, int p1, int p2, int p3) // 0xD69411AA0CEBF9E9
--[[
Something related to the environmental effects natives.
In the "agency_heist3b" script, p1 - p3 are always under 100 - usually they are {87, 81, 68}. If SET_PED_ENVEFF_SCALE is set to 0.65 (instead of the usual 1.0), they use {74, 69, 60}
--]]
function PED.SET_PED_ENVEFF_COLOR_MODULATOR(ped, p1, p2, p3)
  native.invoke(
    Type.Void, 4368, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3)
  )
end

-- void SET_PED_EMISSIVE_SCALE(Ped ped, float intensity) // 0x4E90D746056E273D
--[[
intensity: 0.0f - 1.0f

This native sets the emissive intensity for the given ped. It is used for different 'glow' levels on illuminated clothing.
--]]
function PED.SET_PED_EMISSIVE_SCALE(ped, intensity)
  native.invoke(
    Type.Void, 4369, false,
    arg(Type.Ped, ped),
    arg(Type.Float, intensity)
  )
end

-- float GET_PED_EMISSIVE_SCALE(Ped ped) // 0x1461B28A06717D68
--[[
Use 0x4E90D746056E273D to set the illuminated clothing glow intensity for a specific ped.
Returns a float between 0.0 and 1.0 representing the current illuminated clothing glow intensity.
--]]
function PED.GET_PED_EMISSIVE_SCALE(ped)
  return native.invoke(
    Type.Float, 4370, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_SHADER_READY(Ped ped) // 0x81AA517FBBA05D39
function PED.IS_PED_SHADER_READY(ped)
  return native.invoke(
    Type.Bool, 4371, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_ENABLE_CREW_EMBLEM(Ped ped, BOOL toggle) // 0xE906EC930F5FE7C8
function PED.SET_PED_ENABLE_CREW_EMBLEM(ped, toggle)
  native.invoke(
    Type.Void, 4372, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void REQUEST_RAGDOLL_BOUNDS_UPDATE(Any p0, Any p1) // 0x1216E0BFA72CC703
--[[
This native does absolutely nothing, just a nullsub
--]]
function PED.REQUEST_RAGDOLL_BOUNDS_UPDATE(p0, p1)
  native.invoke(
    Type.Void, 4373, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_PED_AO_BLOB_RENDERING(Ped ped, BOOL toggle) // 0x2B5AA717A181FB4C
--[[
Enable/disable ped shadow (ambient occlusion). https://gfycat.com/thankfulesteemedgecko
--]]
function PED.SET_PED_AO_BLOB_RENDERING(ped, toggle)
  native.invoke(
    Type.Void, 4374, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PED_SHELTERED(Ped ped) // 0xB8B52E498014F5B0
function PED.IS_PED_SHELTERED(ped)
  return native.invoke(
    Type.Bool, 4375, false,
    arg(Type.Ped, ped)
  )
end

-- int CREATE_SYNCHRONIZED_SCENE(float x, float y, float z, float roll, float pitch, float yaw, int p6) // 0x8C18E0F9080ADD73
--[[
p6 always 2 (but it doesnt seem to matter...)

roll and pitch 0
yaw to Ped.rotation
--]]
function PED.CREATE_SYNCHRONIZED_SCENE(x, y, z, roll, pitch, yaw, p6)
  return native.invoke(
    Type.Int, 4376, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, roll),
    arg(Type.Float, pitch),
    arg(Type.Float, yaw),
    arg(Type.Int, p6)
  )
end

-- int CREATE_SYNCHRONIZED_SCENE_AT_MAP_OBJECT(float x, float y, float z, float radius, Hash object) // 0x62EC273D00187DCA
function PED.CREATE_SYNCHRONIZED_SCENE_AT_MAP_OBJECT(x, y, z, radius, object)
  return native.invoke(
    Type.Int, 4377, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Hash, object)
  )
end

-- BOOL IS_SYNCHRONIZED_SCENE_RUNNING(int sceneId) // 0x25D39B935A038A26
--[[
Returns true if a synchronized scene is running
--]]
function PED.IS_SYNCHRONIZED_SCENE_RUNNING(sceneId)
  return native.invoke(
    Type.Bool, 4378, false,
    arg(Type.Int, sceneId)
  )
end

-- void SET_SYNCHRONIZED_SCENE_ORIGIN(int sceneID, float x, float y, float z, float roll, float pitch, float yaw, BOOL p7) // 0x6ACF6B7225801CD7
function PED.SET_SYNCHRONIZED_SCENE_ORIGIN(sceneID, x, y, z, roll, pitch, yaw, p7)
  native.invoke(
    Type.Void, 4379, false,
    arg(Type.Int, sceneID),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, roll),
    arg(Type.Float, pitch),
    arg(Type.Float, yaw),
    arg(Type.Bool, p7)
  )
end

-- void SET_SYNCHRONIZED_SCENE_PHASE(int sceneID, float phase) // 0x734292F4F0ABF6D0
function PED.SET_SYNCHRONIZED_SCENE_PHASE(sceneID, phase)
  native.invoke(
    Type.Void, 4380, false,
    arg(Type.Int, sceneID),
    arg(Type.Float, phase)
  )
end

-- float GET_SYNCHRONIZED_SCENE_PHASE(int sceneID) // 0xE4A310B1D7FA73CC
function PED.GET_SYNCHRONIZED_SCENE_PHASE(sceneID)
  return native.invoke(
    Type.Float, 4381, false,
    arg(Type.Int, sceneID)
  )
end

-- void SET_SYNCHRONIZED_SCENE_RATE(int sceneID, float rate) // 0xB6C49F8A5E295A5D
function PED.SET_SYNCHRONIZED_SCENE_RATE(sceneID, rate)
  native.invoke(
    Type.Void, 4382, false,
    arg(Type.Int, sceneID),
    arg(Type.Float, rate)
  )
end

-- float GET_SYNCHRONIZED_SCENE_RATE(int sceneID) // 0xD80932D577274D40
function PED.GET_SYNCHRONIZED_SCENE_RATE(sceneID)
  return native.invoke(
    Type.Float, 4383, false,
    arg(Type.Int, sceneID)
  )
end

-- void SET_SYNCHRONIZED_SCENE_LOOPED(int sceneID, BOOL toggle) // 0xD9A897A4C6C2974F
function PED.SET_SYNCHRONIZED_SCENE_LOOPED(sceneID, toggle)
  native.invoke(
    Type.Void, 4384, false,
    arg(Type.Int, sceneID),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_SYNCHRONIZED_SCENE_LOOPED(int sceneID) // 0x62522002E0C391BA
function PED.IS_SYNCHRONIZED_SCENE_LOOPED(sceneID)
  return native.invoke(
    Type.Bool, 4385, false,
    arg(Type.Int, sceneID)
  )
end

-- void SET_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME(int sceneID, BOOL toggle) // 0x394B9CD12435C981
function PED.SET_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME(sceneID, toggle)
  native.invoke(
    Type.Void, 4386, false,
    arg(Type.Int, sceneID),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME(int sceneID) // 0x7F2F4F13AC5257EF
function PED.IS_SYNCHRONIZED_SCENE_HOLD_LAST_FRAME(sceneID)
  return native.invoke(
    Type.Bool, 4387, false,
    arg(Type.Int, sceneID)
  )
end

-- void ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY(int sceneID, Entity entity, int boneIndex) // 0x272E4723B56A3B96
function PED.ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY(sceneID, entity, boneIndex)
  native.invoke(
    Type.Void, 4388, false,
    arg(Type.Int, sceneID),
    arg(Type.Entity, entity),
    arg(Type.Int, boneIndex)
  )
end

-- void DETACH_SYNCHRONIZED_SCENE(int sceneID) // 0x6D38F1F04CBB37EA
function PED.DETACH_SYNCHRONIZED_SCENE(sceneID)
  native.invoke(
    Type.Void, 4389, false,
    arg(Type.Int, sceneID)
  )
end

-- void TAKE_OWNERSHIP_OF_SYNCHRONIZED_SCENE(int scene) // 0xCD9CC7E200A52A6F
function PED.TAKE_OWNERSHIP_OF_SYNCHRONIZED_SCENE(scene)
  native.invoke(
    Type.Void, 4390, false,
    arg(Type.Int, scene)
  )
end

-- BOOL FORCE_PED_MOTION_STATE(Ped ped, Hash motionStateHash, BOOL p2, int p3, BOOL p4) // 0xF28965D04F570DCA
--[[
Regarding p2, p3 and p4: Most common is 0, 0, 0); followed by 0, 1, 0); and 1, 1, 0); in R* scripts. p4 is very rarely something other than 0.

enum eMotionState // 0x92A659FE
{
	MotionState_None = 0xEE717723,
	MotionState_Idle = 0x9072A713,
	MotionState_Walk = 0xD827C3DB,
	MotionState_Run = 0xFFF7E7A4,
	MotionState_Sprint = 0xBD8817DB,
	MotionState_Crouch_Idle = 0x43FB099E,
	MotionState_Crouch_Walk = 0x08C31A98,
	MotionState_Crouch_Run = 0x3593CF09,
	MotionState_DoNothing = 0x0EC17E58,
	MotionState_AnimatedVelocity = 0x551AAC43,
	MotionState_InVehicle = 0x94D9D58D,
	MotionState_Aiming = 0x3F67C6AF,
	MotionState_Diving_Idle = 0x4848CDED,
	MotionState_Diving_Swim = 0x916E828C,
	MotionState_Swimming_TreadWater = 0xD1BF11C7,
	MotionState_Dead = 0x0DBB071C,
	MotionState_Stealth_Idle = 0x422D7A25,
	MotionState_Stealth_Walk = 0x042AB6A2,
	MotionState_Stealth_Run = 0xFB0B79E1,
	MotionState_Parachuting = 0xBAC0F10B,
	MotionState_ActionMode_Idle = 0xDA40A0DC,
	MotionState_ActionMode_Walk = 0xD2905EA7,
	MotionState_ActionMode_Run = 0x31BADE14,
	MotionState_Jetpack = 0x535E6A5E
};
--]]
function PED.FORCE_PED_MOTION_STATE(ped, motionStateHash, p2, p3, p4)
  return native.invoke(
    Type.Bool, 4391, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, motionStateHash),
    arg(Type.Bool, p2),
    arg(Type.Int, p3),
    arg(Type.Bool, p4)
  )
end

-- BOOL GET_PED_CURRENT_MOVE_BLEND_RATIO(Ped ped, float* speedX, float* speedY) // 0xF60165E1D2C5370B
function PED.GET_PED_CURRENT_MOVE_BLEND_RATIO(ped, speedX, speedY)
  return native.invoke(
    Type.Bool, 4392, false,
    arg(Type.Ped, ped),
    ref(Type.Float, speedX),
    ref(Type.Float, speedY)
  )
end

-- void SET_PED_MAX_MOVE_BLEND_RATIO(Ped ped, float value) // 0x433083750C5E064A
function PED.SET_PED_MAX_MOVE_BLEND_RATIO(ped, value)
  native.invoke(
    Type.Void, 4393, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_MIN_MOVE_BLEND_RATIO(Ped ped, float value) // 0x01A898D26E2333DD
function PED.SET_PED_MIN_MOVE_BLEND_RATIO(ped, value)
  native.invoke(
    Type.Void, 4394, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_MOVE_RATE_OVERRIDE(Ped ped, float value) // 0x085BF80FA50A39D1
--[[
Min: 0.00
Max: 10.00

Can be used in combo with fast run cheat.

When value is set to 10.00:
Sprinting without fast run cheat: 66 m/s
Sprinting with fast run cheat: 77 m/s

Needs to be looped!

Note: According to IDA for the Xbox360 xex, when they check bgt they seem to have the min to 0.0f, but the max set to 1.15f not 10.0f.
--]]
function PED.SET_PED_MOVE_RATE_OVERRIDE(ped, value)
  native.invoke(
    Type.Void, 4395, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- void SET_PED_MOVE_RATE_IN_WATER_OVERRIDE(Ped ped, float p1) // 0x0B3E35AC043707D9
function PED.SET_PED_MOVE_RATE_IN_WATER_OVERRIDE(ped, p1)
  native.invoke(
    Type.Void, 4396, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1)
  )
end

-- BOOL PED_HAS_SEXINESS_FLAG_SET(Ped ped, int sexinessFlag) // 0x46B05BCAE43856B0
--[[
Checks if the specified sexiness flag is set

enum eSexinessFlags
{
 SF_JEER_AT_HOT_PED = 0,
 SF_HURRIEDFEMALES_SEXY = 1,
 SF_HOT_PERSON = 2,
 };
--]]
function PED.PED_HAS_SEXINESS_FLAG_SET(ped, sexinessFlag)
  return native.invoke(
    Type.Bool, 4397, false,
    arg(Type.Ped, ped),
    arg(Type.Int, sexinessFlag)
  )
end

-- int GET_PED_NEARBY_VEHICLES(Ped ped, Any* sizeAndVehs) // 0xCFF869CBFA210D82
--[[
Returns size of array, passed into the second variable.

See below for usage information.

This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.

//Setup the array
 const int numElements = 10;
   const int arrSize = numElements * 2 + 2;
  Any veh[arrSize];
 //0 index is the size of the array
    veh[0] = numElements;

   int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);

 if (veh != NULL)
  {
     //Simple loop to go through results
       for (int i = 0; i < count; i++)
        {
         int offsettedID = i * 2 + 2;
          //Make sure it exists
         if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID]))
          {
             //Do something
            }
     }
 }  
--]]
function PED.GET_PED_NEARBY_VEHICLES(ped, sizeAndVehs)
  return native.invoke(
    Type.Int, 4398, false,
    arg(Type.Ped, ped),
    ref(Type.Any, sizeAndVehs)
  )
end

-- int GET_PED_NEARBY_PEDS(Ped ped, Any* sizeAndPeds, int ignore) // 0x23F8F5FC7E8C4A6B
--[[
sizeAndPeds - is a pointer to an array. The array is filled with peds found nearby the ped supplied to the first argument.
ignore - ped type to ignore

Return value is the number of peds found and added to the array passed.

-----------------------------------

To make this work in most menu bases at least in C++ do it like so,

 Formatted Example: https://pastebin.com/D8an9wwp

-----------------------------------

Example: gtaforums.com/topic/789788-function-args-to-pedget-ped-nearby-peds/?p=1067386687
--]]
function PED.GET_PED_NEARBY_PEDS(ped, sizeAndPeds, ignore)
  return native.invoke(
    Type.Int, 4399, false,
    arg(Type.Ped, ped),
    ref(Type.Any, sizeAndPeds),
    arg(Type.Int, ignore)
  )
end

-- BOOL HAVE_ALL_STREAMING_REQUESTS_COMPLETED(Ped ped) // 0x7350823473013C02
function PED.HAVE_ALL_STREAMING_REQUESTS_COMPLETED(ped)
  return native.invoke(
    Type.Bool, 4400, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_USING_ACTION_MODE(Ped ped) // 0x00E73468D085F745
function PED.IS_PED_USING_ACTION_MODE(ped)
  return native.invoke(
    Type.Bool, 4401, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_USING_ACTION_MODE(Ped ped, BOOL p1, int p2, const char* action) // 0xD75ACCF5E0FB5367
--[[
p2 is usually -1 in the scripts. action is either 0 or "DEFAULT_ACTION".
--]]
function PED.SET_PED_USING_ACTION_MODE(ped, p1, p2, action)
  native.invoke(
    Type.Void, 4402, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Int, p2),
    arg(Type.String, action)
  )
end

-- void SET_MOVEMENT_MODE_OVERRIDE(Ped ped, const char* name) // 0x781DE8FA214E87D2
--[[
name: "MP_FEMALE_ACTION" found multiple times in the b617d scripts.
--]]
function PED.SET_MOVEMENT_MODE_OVERRIDE(ped, name)
  native.invoke(
    Type.Void, 4403, false,
    arg(Type.Ped, ped),
    arg(Type.String, name)
  )
end

-- void SET_PED_CAPSULE(Ped ped, float value) // 0x364DF566EC833DE2
--[[
Overrides the ped's collision capsule radius for the current tick.
Must be called every tick to be effective.

Setting this to 0.001 will allow warping through some objects.
--]]
function PED.SET_PED_CAPSULE(ped, value)
  native.invoke(
    Type.Void, 4404, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- int REGISTER_PEDHEADSHOT(Ped ped) // 0x4462658788425076
--[[
gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--]]
function PED.REGISTER_PEDHEADSHOT(ped)
  return native.invoke(
    Type.Int, 4405, false,
    arg(Type.Ped, ped)
  )
end

-- int REGISTER_PEDHEADSHOT_HIRES(Ped ped) // 0xBA8805A1108A2515
function PED.REGISTER_PEDHEADSHOT_HIRES(ped)
  return native.invoke(
    Type.Int, 4406, false,
    arg(Type.Ped, ped)
  )
end

-- int REGISTER_PEDHEADSHOT_TRANSPARENT(Ped ped) // 0x953563CE563143AF
--[[
Similar to REGISTER_PEDHEADSHOT but creates a transparent background instead of black. Example: https://i.imgur.com/iHz8ztn.png
--]]
function PED.REGISTER_PEDHEADSHOT_TRANSPARENT(ped)
  return native.invoke(
    Type.Int, 4407, false,
    arg(Type.Ped, ped)
  )
end

-- void UNREGISTER_PEDHEADSHOT(int id) // 0x96B1361D9B24C2FF
--[[
gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--]]
function PED.UNREGISTER_PEDHEADSHOT(id)
  native.invoke(
    Type.Void, 4408, false,
    arg(Type.Int, id)
  )
end

-- BOOL IS_PEDHEADSHOT_VALID(int id) // 0xA0A9668F158129A2
--[[
gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--]]
function PED.IS_PEDHEADSHOT_VALID(id)
  return native.invoke(
    Type.Bool, 4409, false,
    arg(Type.Int, id)
  )
end

-- BOOL IS_PEDHEADSHOT_READY(int id) // 0x7085228842B13A67
--[[
gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--]]
function PED.IS_PEDHEADSHOT_READY(id)
  return native.invoke(
    Type.Bool, 4410, false,
    arg(Type.Int, id)
  )
end

-- const char* GET_PEDHEADSHOT_TXD_STRING(int id) // 0xDB4EACD4AD0A5D6B
--[[
gtaforums.com/topic/885580-ped-headshotmugshot-txd/
--]]
function PED.GET_PEDHEADSHOT_TXD_STRING(id)
  return native.invoke(
    Type.String, 4411, false,
    arg(Type.Int, id)
  )
end

-- BOOL REQUEST_PEDHEADSHOT_IMG_UPLOAD(int id) // 0xF0DAEF2F545BEE25
function PED.REQUEST_PEDHEADSHOT_IMG_UPLOAD(id)
  return native.invoke(
    Type.Bool, 4412, false,
    arg(Type.Int, id)
  )
end

-- void RELEASE_PEDHEADSHOT_IMG_UPLOAD(int id) // 0x5D517B27CF6ECD04
function PED.RELEASE_PEDHEADSHOT_IMG_UPLOAD(id)
  native.invoke(
    Type.Void, 4413, false,
    arg(Type.Int, id)
  )
end

-- BOOL IS_PEDHEADSHOT_IMG_UPLOAD_AVAILABLE() // 0xEBB376779A760AA8
function PED.IS_PEDHEADSHOT_IMG_UPLOAD_AVAILABLE()
  return native.invoke(
    Type.Bool, 4414, false
  )
end

-- BOOL HAS_PEDHEADSHOT_IMG_UPLOAD_FAILED() // 0x876928DDDFCCC9CD
function PED.HAS_PEDHEADSHOT_IMG_UPLOAD_FAILED()
  return native.invoke(
    Type.Bool, 4415, false
  )
end

-- BOOL HAS_PEDHEADSHOT_IMG_UPLOAD_SUCCEEDED() // 0xE8A169E666CBC541
function PED.HAS_PEDHEADSHOT_IMG_UPLOAD_SUCCEEDED()
  return native.invoke(
    Type.Bool, 4416, false
  )
end

-- void SET_PED_HEATSCALE_OVERRIDE(Ped ped, float heatScale) // 0xC1F6EBF9A3D55538
function PED.SET_PED_HEATSCALE_OVERRIDE(ped, heatScale)
  native.invoke(
    Type.Void, 4417, false,
    arg(Type.Ped, ped),
    arg(Type.Float, heatScale)
  )
end

-- void DISABLE_PED_HEATSCALE_OVERRIDE(Ped ped) // 0x600048C60D5C2C51
function PED.DISABLE_PED_HEATSCALE_OVERRIDE(ped)
  native.invoke(
    Type.Void, 4418, false,
    arg(Type.Ped, ped)
  )
end

-- void SPAWNPOINTS_START_SEARCH(float p0, float p1, float p2, float p3, float p4, int interiorFlags, float scale, int duration) // 0x2DF9038C90AD5264
function PED.SPAWNPOINTS_START_SEARCH(p0, p1, p2, p3, p4, interiorFlags, scale, duration)
  native.invoke(
    Type.Void, 4419, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Int, interiorFlags),
    arg(Type.Float, scale),
    arg(Type.Int, duration)
  )
end

-- void SPAWNPOINTS_START_SEARCH_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width, int interiorFlags, float scale, int duration) // 0xB2AFF10216DEFA2F
function PED.SPAWNPOINTS_START_SEARCH_IN_ANGLED_AREA(x1, y1, z1, x2, y2, z2, width, interiorFlags, scale, duration)
  native.invoke(
    Type.Void, 4420, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Int, interiorFlags),
    arg(Type.Float, scale),
    arg(Type.Int, duration)
  )
end

-- void SPAWNPOINTS_CANCEL_SEARCH() // 0xFEE4A5459472A9F8
function PED.SPAWNPOINTS_CANCEL_SEARCH()
  native.invoke(
    Type.Void, 4421, false
  )
end

-- BOOL SPAWNPOINTS_IS_SEARCH_ACTIVE() // 0x3C67506996001F5E
function PED.SPAWNPOINTS_IS_SEARCH_ACTIVE()
  return native.invoke(
    Type.Bool, 4422, false
  )
end

-- BOOL SPAWNPOINTS_IS_SEARCH_COMPLETE() // 0xA586FBEB32A53DBB
function PED.SPAWNPOINTS_IS_SEARCH_COMPLETE()
  return native.invoke(
    Type.Bool, 4423, false
  )
end

-- BOOL SPAWNPOINTS_IS_SEARCH_FAILED() // 0xF445DE8DA80A1792
function PED.SPAWNPOINTS_IS_SEARCH_FAILED()
  return native.invoke(
    Type.Bool, 4424, false
  )
end

-- int SPAWNPOINTS_GET_NUM_SEARCH_RESULTS() // 0xA635C11B8C44AFC2
function PED.SPAWNPOINTS_GET_NUM_SEARCH_RESULTS()
  return native.invoke(
    Type.Int, 4425, false
  )
end

-- void SPAWNPOINTS_GET_SEARCH_RESULT(int randomInt, float* x, float* y, float* z) // 0x280C7E3AC7F56E90
function PED.SPAWNPOINTS_GET_SEARCH_RESULT(randomInt, x, y, z)
  native.invoke(
    Type.Void, 4426, false,
    arg(Type.Int, randomInt),
    ref(Type.Float, x),
    ref(Type.Float, y),
    ref(Type.Float, z)
  )
end

-- void SPAWNPOINTS_GET_SEARCH_RESULT_FLAGS(int p0, int* p1) // 0xB782F8238512BAD5
function PED.SPAWNPOINTS_GET_SEARCH_RESULT_FLAGS(p0, p1)
  native.invoke(
    Type.Void, 4427, false,
    arg(Type.Int, p0),
    ref(Type.Int, p1)
  )
end

-- void SET_IK_TARGET(Ped ped, int ikIndex, Entity entityLookAt, int boneLookAt, float offsetX, float offsetY, float offsetZ, Any p7, int blendInDuration, int blendOutDuration) // 0xC32779C16FCEECD9
function PED.SET_IK_TARGET(ped, ikIndex, entityLookAt, boneLookAt, offsetX, offsetY, offsetZ, p7, blendInDuration, blendOutDuration)
  native.invoke(
    Type.Void, 4428, false,
    arg(Type.Ped, ped),
    arg(Type.Int, ikIndex),
    arg(Type.Entity, entityLookAt),
    arg(Type.Int, boneLookAt),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Any, p7),
    arg(Type.Int, blendInDuration),
    arg(Type.Int, blendOutDuration)
  )
end

-- void FORCE_INSTANT_LEG_IK_SETUP(Ped ped) // 0xED3C76ADFA6D07C4
function PED.FORCE_INSTANT_LEG_IK_SETUP(ped)
  native.invoke(
    Type.Void, 4429, false,
    arg(Type.Ped, ped)
  )
end

-- void REQUEST_ACTION_MODE_ASSET(const char* asset) // 0x290E2780BB7AA598
function PED.REQUEST_ACTION_MODE_ASSET(asset)
  native.invoke(
    Type.Void, 4430, false,
    arg(Type.String, asset)
  )
end

-- BOOL HAS_ACTION_MODE_ASSET_LOADED(const char* asset) // 0xE4B5F4BF2CB24E65
function PED.HAS_ACTION_MODE_ASSET_LOADED(asset)
  return native.invoke(
    Type.Bool, 4431, false,
    arg(Type.String, asset)
  )
end

-- void REMOVE_ACTION_MODE_ASSET(const char* asset) // 0x13E940F88470FA51
function PED.REMOVE_ACTION_MODE_ASSET(asset)
  native.invoke(
    Type.Void, 4432, false,
    arg(Type.String, asset)
  )
end

-- void REQUEST_STEALTH_MODE_ASSET(const char* asset) // 0x2A0A62FCDEE16D4F
function PED.REQUEST_STEALTH_MODE_ASSET(asset)
  native.invoke(
    Type.Void, 4433, false,
    arg(Type.String, asset)
  )
end

-- BOOL HAS_STEALTH_MODE_ASSET_LOADED(const char* asset) // 0xE977FC5B08AF3441
function PED.HAS_STEALTH_MODE_ASSET_LOADED(asset)
  return native.invoke(
    Type.Bool, 4434, false,
    arg(Type.String, asset)
  )
end

-- void REMOVE_STEALTH_MODE_ASSET(const char* asset) // 0x9219857D21F0E842
function PED.REMOVE_STEALTH_MODE_ASSET(asset)
  native.invoke(
    Type.Void, 4435, false,
    arg(Type.String, asset)
  )
end

-- void SET_PED_LOD_MULTIPLIER(Ped ped, float multiplier) // 0xDC2C5C242AAC342B
function PED.SET_PED_LOD_MULTIPLIER(ped, multiplier)
  native.invoke(
    Type.Void, 4436, false,
    arg(Type.Ped, ped),
    arg(Type.Float, multiplier)
  )
end

-- void SET_PED_CAN_LOSE_PROPS_ON_DAMAGE(Ped ped, BOOL toggle, int p2) // 0xE861D0B05C7662B8
function PED.SET_PED_CAN_LOSE_PROPS_ON_DAMAGE(ped, toggle, p2)
  native.invoke(
    Type.Void, 4437, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle),
    arg(Type.Int, p2)
  )
end

-- void SET_FORCE_FOOTSTEP_UPDATE(Ped ped, BOOL toggle) // 0x129466ED55140F8D
function PED.SET_FORCE_FOOTSTEP_UPDATE(ped, toggle)
  native.invoke(
    Type.Void, 4438, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_FORCE_STEP_TYPE(Ped ped, BOOL p1, int type, int p3) // 0xCB968B53FC7F916D
function PED.SET_FORCE_STEP_TYPE(ped, p1, type, p3)
  native.invoke(
    Type.Void, 4439, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Int, type),
    arg(Type.Int, p3)
  )
end

-- BOOL IS_ANY_HOSTILE_PED_NEAR_POINT(Ped ped, float x, float y, float z, float radius) // 0x68772DB2B2526F9F
function PED.IS_ANY_HOSTILE_PED_NEAR_POINT(ped, x, y, z, radius)
  return native.invoke(
    Type.Bool, 4440, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void SET_PED_CAN_PLAY_IN_CAR_IDLES(Ped ped, BOOL toggle) // 0x820E9892A77E97CD
--[[
Toggles config flag CPED_CONFIG_FLAG_CanPlayInCarIdles.
--]]
function PED.SET_PED_CAN_PLAY_IN_CAR_IDLES(ped, toggle)
  native.invoke(
    Type.Void, 4441, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_TARGET_PED_IN_PERCEPTION_AREA(Ped ped, Ped targetPed, float p2, float p3, float p4, float p5) // 0x06087579E7AA85A9
function PED.IS_TARGET_PED_IN_PERCEPTION_AREA(ped, targetPed, p2, p3, p4, p5)
  return native.invoke(
    Type.Bool, 4442, false,
    arg(Type.Ped, ped),
    arg(Type.Ped, targetPed),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5)
  )
end

-- void SET_POP_CONTROL_SPHERE_THIS_FRAME(float x, float y, float z, float min, float max) // 0xD8C3BE3EE94CAF2D
--[[
Min and max are usually 100.0 and 200.0
--]]
function PED.SET_POP_CONTROL_SPHERE_THIS_FRAME(x, y, z, min, max)
  native.invoke(
    Type.Void, 4443, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, min),
    arg(Type.Float, max)
  )
end

-- void FORCE_ZERO_MASS_IN_COLLISIONS(Ped ped) // 0xD33DAA36272177C4
function PED.FORCE_ZERO_MASS_IN_COLLISIONS(ped)
  native.invoke(
    Type.Void, 4444, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_DISABLE_HIGH_FALL_DEATH(Ped ped, BOOL toggle) // 0x711794453CFD692B
function PED.SET_DISABLE_HIGH_FALL_DEATH(ped, toggle)
  native.invoke(
    Type.Void, 4445, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_PHONE_PALETTE_IDX(Any p0, Any p1) // 0x83A169EABCDB10A2
function PED.SET_PED_PHONE_PALETTE_IDX(p0, p1)
  native.invoke(
    Type.Void, 4446, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_PED_STEER_BIAS(Ped ped, float value) // 0x288DF530C92DAD6F
function PED.SET_PED_STEER_BIAS(ped, value)
  native.invoke(
    Type.Void, 4447, false,
    arg(Type.Ped, ped),
    arg(Type.Float, value)
  )
end

-- BOOL IS_PED_SWITCHING_WEAPON(Ped Ped) // 0x3795688A307E1EB6
function PED.IS_PED_SWITCHING_WEAPON(Ped)
  return native.invoke(
    Type.Bool, 4448, false,
    arg(Type.Ped, Ped)
  )
end

-- void SET_PED_TREATED_AS_FRIENDLY(Any p0, Any p1, Any p2) // 0x0F62619393661D6E
function PED.SET_PED_TREATED_AS_FRIENDLY(p0, p1, p2)
  native.invoke(
    Type.Void, 4449, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void SET_DISABLE_PED_MAP_COLLISION(Ped ped) // 0xDFE68C4B787E1BFB
function PED.SET_DISABLE_PED_MAP_COLLISION(ped)
  native.invoke(
    Type.Void, 4450, false,
    arg(Type.Ped, ped)
  )
end

-- void ENABLE_MP_LIGHT(Ped ped, BOOL toggle) // 0xEE2476B9EE4A094F
function PED.ENABLE_MP_LIGHT(ped, toggle)
  native.invoke(
    Type.Void, 4451, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_MP_LIGHT_ENABLED(Ped ped) // 0x88274C11CF0D866D
function PED.GET_MP_LIGHT_ENABLED(ped)
  return native.invoke(
    Type.Bool, 4452, false,
    arg(Type.Ped, ped)
  )
end

-- void CLEAR_COVER_POINT_FOR_PED(Ped ped) // 0x637822DC2AFEEBF8
function PED.CLEAR_COVER_POINT_FOR_PED(ped)
  native.invoke(
    Type.Void, 4453, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_ALLOW_STUNT_JUMP_CAMERA(Ped ped, BOOL toggle) // 0xFAB944D4D481ACCB
function PED.SET_ALLOW_STUNT_JUMP_CAMERA(ped, toggle)
  native.invoke(
    Type.Void, 4454, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end


