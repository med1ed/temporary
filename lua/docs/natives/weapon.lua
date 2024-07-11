WEAPON = {}

-- void ENABLE_LASER_SIGHT_RENDERING(BOOL toggle) // 0xC8B46D7727D864AA
--[[
Enables laser sight on any weapon.

It doesn't work. Neither on tick nor OnKeyDown
--]]
function WEAPON.ENABLE_LASER_SIGHT_RENDERING(toggle)
  native.invoke(
    Type.Void, 6444, false,
    arg(Type.Bool, toggle)
  )
end

-- Hash GET_WEAPON_COMPONENT_TYPE_MODEL(Hash componentHash) // 0x0DB57B41EC1DB083
function WEAPON.GET_WEAPON_COMPONENT_TYPE_MODEL(componentHash)
  return native.invoke(
    Type.Hash, 6445, false,
    arg(Type.Hash, componentHash)
  )
end

-- Hash GET_WEAPONTYPE_MODEL(Hash weaponHash) // 0xF46CDC33180FDA94
--[[
Returns the model of any weapon.

Can also take an ammo hash?
sub_6663a(&l_115B, WEAPON::GET_WEAPONTYPE_MODEL(${ammo_rpg}));
--]]
function WEAPON.GET_WEAPONTYPE_MODEL(weaponHash)
  return native.invoke(
    Type.Hash, 6446, false,
    arg(Type.Hash, weaponHash)
  )
end

-- Hash GET_WEAPONTYPE_SLOT(Hash weaponHash) // 0x4215460B9B8B7FA0
function WEAPON.GET_WEAPONTYPE_SLOT(weaponHash)
  return native.invoke(
    Type.Hash, 6447, false,
    arg(Type.Hash, weaponHash)
  )
end

-- Hash GET_WEAPONTYPE_GROUP(Hash weaponHash) // 0xC3287EE3050FB74C
function WEAPON.GET_WEAPONTYPE_GROUP(weaponHash)
  return native.invoke(
    Type.Hash, 6448, false,
    arg(Type.Hash, weaponHash)
  )
end

-- int GET_WEAPON_COMPONENT_VARIANT_EXTRA_COUNT(Hash componentHash) // 0x6558AC7C17BFEF58
--[[
Returns the amount of extra components the specified component has.
Returns -1 if the component isn't of type CWeaponComponentVariantModel.
--]]
function WEAPON.GET_WEAPON_COMPONENT_VARIANT_EXTRA_COUNT(componentHash)
  return native.invoke(
    Type.Int, 6449, false,
    arg(Type.Hash, componentHash)
  )
end

-- Hash GET_WEAPON_COMPONENT_VARIANT_EXTRA_MODEL(Hash componentHash, int extraComponentIndex) // 0x4D1CB8DC40208A17
--[[
Returns the model hash of the extra component at specified index.
--]]
function WEAPON.GET_WEAPON_COMPONENT_VARIANT_EXTRA_MODEL(componentHash, extraComponentIndex)
  return native.invoke(
    Type.Hash, 6450, false,
    arg(Type.Hash, componentHash),
    arg(Type.Int, extraComponentIndex)
  )
end

-- void SET_CURRENT_PED_WEAPON(Ped ped, Hash weaponHash, BOOL bForceInHand) // 0xADF692B254977C0C
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_CURRENT_PED_WEAPON(ped, weaponHash, bForceInHand)
  native.invoke(
    Type.Void, 6451, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Bool, bForceInHand)
  )
end

-- BOOL GET_CURRENT_PED_WEAPON(Ped ped, Hash* weaponHash, BOOL p2) // 0x3A87E44BB9A01D54
--[[
The return value seems to indicate returns true if the hash of the weapon object weapon equals the weapon hash.
p2 seems to be 1 most of the time.





p2 is not implemented

disassembly said that?

--]]
function WEAPON.GET_CURRENT_PED_WEAPON(ped, weaponHash, p2)
  return native.invoke(
    Type.Bool, 6452, false,
    arg(Type.Ped, ped),
    ref(Type.Hash, weaponHash),
    arg(Type.Bool, p2)
  )
end

-- Entity GET_CURRENT_PED_WEAPON_ENTITY_INDEX(Ped ped, Any p1) // 0x3B390A939AF0B5FC
function WEAPON.GET_CURRENT_PED_WEAPON_ENTITY_INDEX(ped, p1)
  return native.invoke(
    Type.Entity, 6453, false,
    arg(Type.Ped, ped),
    arg(Type.Any, p1)
  )
end

-- Hash GET_BEST_PED_WEAPON(Ped ped, BOOL p1) // 0x8483E98E8B888AE2
--[[
p1 is always 0 in the scripts.
--]]
function WEAPON.GET_BEST_PED_WEAPON(ped, p1)
  return native.invoke(
    Type.Hash, 6454, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- BOOL SET_CURRENT_PED_VEHICLE_WEAPON(Ped ped, Hash weaponHash) // 0x75C55983C2C39DAA
--[[
Full list of weapons by DurtyFree (Search for VEHICLE_*): https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_CURRENT_PED_VEHICLE_WEAPON(ped, weaponHash)
  return native.invoke(
    Type.Bool, 6455, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash)
  )
end

-- BOOL GET_CURRENT_PED_VEHICLE_WEAPON(Ped ped, Hash* weaponHash) // 0x1017582BCD3832DC
--[[
Example in VB

    Public Shared Function GetVehicleCurrentWeapon(Ped As Ped) As Integer
        Dim arg As New OutputArgument()
        Native.Function.Call(Hash.GET_CURRENT_PED_VEHICLE_WEAPON, Ped, arg)
        Return arg.GetResult(Of Integer)()
    End Function

Usage:
If GetVehicleCurrentWeapon(Game.Player.Character) = -821520672 Then ...Do something
Note: -821520672 = VEHICLE_WEAPON_PLANE_ROCKET
--]]
function WEAPON.GET_CURRENT_PED_VEHICLE_WEAPON(ped, weaponHash)
  return native.invoke(
    Type.Bool, 6456, false,
    arg(Type.Ped, ped),
    ref(Type.Hash, weaponHash)
  )
end

-- void SET_PED_CYCLE_VEHICLE_WEAPONS_ONLY(Ped ped) // 0x50276EF8172F5F12
function WEAPON.SET_PED_CYCLE_VEHICLE_WEAPONS_ONLY(ped)
  native.invoke(
    Type.Void, 6457, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_PED_ARMED(Ped ped, int typeFlags) // 0x475768A975D5AD17
--[[
Checks if the ped is currently equipped with a weapon matching a bit specified using a bitwise-or in typeFlags.

Type flag bit values:
1 = Melee weapons
2 = Explosive weapons
4 = Any other weapons

Not specifying any bit will lead to the native *always* returning 'false', and for example specifying '4 | 2' will check for any weapon except fists and melee weapons.
7 returns true if you are equipped with any weapon except your fists.
6 returns true if you are equipped with any weapon except melee weapons.
5 returns true if you are equipped with any weapon except the Explosives weapon group.
4 returns true if you are equipped with any weapon except Explosives weapon group AND melee weapons.
3 returns true if you are equipped with either Explosives or Melee weapons (the exact opposite of 4).
2 returns true only if you are equipped with any weapon from the Explosives weapon group.
1 returns true only if you are equipped with any Melee weapon.
0 never returns true.

Note: When I say "Explosives weapon group", it does not include the Jerry can and Fire Extinguisher.
--]]
function WEAPON.IS_PED_ARMED(ped, typeFlags)
  return native.invoke(
    Type.Bool, 6458, false,
    arg(Type.Ped, ped),
    arg(Type.Int, typeFlags)
  )
end

-- BOOL IS_WEAPON_VALID(Hash weaponHash) // 0x937C71165CF334B3
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.IS_WEAPON_VALID(weaponHash)
  return native.invoke(
    Type.Bool, 6459, false,
    arg(Type.Hash, weaponHash)
  )
end

-- BOOL HAS_PED_GOT_WEAPON(Ped ped, Hash weaponHash, BOOL p2) // 0x8DECB02F88F428BC
--[[
p2 should be FALSE, otherwise it seems to always return FALSE

Bool does not check if the weapon is current equipped, unfortunately.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.HAS_PED_GOT_WEAPON(ped, weaponHash, p2)
  return native.invoke(
    Type.Bool, 6460, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_PED_WEAPON_READY_TO_SHOOT(Ped ped) // 0xB80CA294F2F26749
function WEAPON.IS_PED_WEAPON_READY_TO_SHOOT(ped)
  return native.invoke(
    Type.Bool, 6461, false,
    arg(Type.Ped, ped)
  )
end

-- Hash GET_PED_WEAPONTYPE_IN_SLOT(Ped ped, Hash weaponSlot) // 0xEFFED78E9011134D
function WEAPON.GET_PED_WEAPONTYPE_IN_SLOT(ped, weaponSlot)
  return native.invoke(
    Type.Hash, 6462, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponSlot)
  )
end

-- int GET_AMMO_IN_PED_WEAPON(Ped ped, Hash weaponhash) // 0x015A522136D7F951
--[[
WEAPON::GET_AMMO_IN_PED_WEAPON(PLAYER::PLAYER_PED_ID(), a_0)

From decompiled scripts
Returns total ammo in weapon

GTALua Example :
natives.WEAPON.GET_AMMO_IN_PED_WEAPON(plyPed, WeaponHash)
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_AMMO_IN_PED_WEAPON(ped, weaponhash)
  return native.invoke(
    Type.Int, 6463, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponhash)
  )
end

-- void ADD_AMMO_TO_PED(Ped ped, Hash weaponHash, int ammo) // 0x78F0424C34306220
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.ADD_AMMO_TO_PED(ped, weaponHash, ammo)
  native.invoke(
    Type.Void, 6464, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Int, ammo)
  )
end

-- void SET_PED_AMMO(Ped ped, Hash weaponHash, int ammo, BOOL p3) // 0x14E56BC5B5DB6A19
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_PED_AMMO(ped, weaponHash, ammo, p3)
  native.invoke(
    Type.Void, 6465, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Int, ammo),
    arg(Type.Bool, p3)
  )
end

-- void SET_PED_INFINITE_AMMO(Ped ped, BOOL toggle, Hash weaponHash) // 0x3EDCB0505123623B
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_PED_INFINITE_AMMO(ped, toggle, weaponHash)
  native.invoke(
    Type.Void, 6466, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle),
    arg(Type.Hash, weaponHash)
  )
end

-- void SET_PED_INFINITE_AMMO_CLIP(Ped ped, BOOL toggle) // 0x183DADC6AA953186
function WEAPON.SET_PED_INFINITE_AMMO_CLIP(ped, toggle)
  native.invoke(
    Type.Void, 6467, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_STUN_GUN_FINITE_AMMO(Any p0, Any p1) // 0x24C024BA8379A70A
function WEAPON.SET_PED_STUN_GUN_FINITE_AMMO(p0, p1)
  native.invoke(
    Type.Void, 6468, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void GIVE_WEAPON_TO_PED(Ped ped, Hash weaponHash, int ammoCount, BOOL isHidden, BOOL bForceInHand) // 0xBF0FD6E56C964FCB
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GIVE_WEAPON_TO_PED(ped, weaponHash, ammoCount, isHidden, bForceInHand)
  native.invoke(
    Type.Void, 6469, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Int, ammoCount),
    arg(Type.Bool, isHidden),
    arg(Type.Bool, bForceInHand)
  )
end

-- void GIVE_DELAYED_WEAPON_TO_PED(Ped ped, Hash weaponHash, int ammoCount, BOOL bForceInHand) // 0xB282DC6EBD803C75
--[[
Gives a weapon to PED with a delay, example:

WEAPON::GIVE_DELAYED_WEAPON_TO_PED(PED::PLAYER_PED_ID(), MISC::GET_HASH_KEY("WEAPON_PISTOL"), 1000, false)
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GIVE_DELAYED_WEAPON_TO_PED(ped, weaponHash, ammoCount, bForceInHand)
  native.invoke(
    Type.Void, 6470, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Int, ammoCount),
    arg(Type.Bool, bForceInHand)
  )
end

-- void REMOVE_ALL_PED_WEAPONS(Ped ped, BOOL p1) // 0xF25DF915FA38C5F3
--[[
setting the last params to false it does that same so I would suggest its not a toggle
--]]
function WEAPON.REMOVE_ALL_PED_WEAPONS(ped, p1)
  native.invoke(
    Type.Void, 6471, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void REMOVE_WEAPON_FROM_PED(Ped ped, Hash weaponHash) // 0x4899CB088EDF59B8
--[[
This native removes a specified weapon from your selected ped.

Example:
C#:
Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);

C++:
WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);

The code above removes the knife from the player.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.REMOVE_WEAPON_FROM_PED(ped, weaponHash)
  native.invoke(
    Type.Void, 6472, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash)
  )
end

-- void HIDE_PED_WEAPON_FOR_SCRIPTED_CUTSCENE(Ped ped, BOOL toggle) // 0x6F6981D2253C208F
--[[
Hides the players weapon during a cutscene.
--]]
function WEAPON.HIDE_PED_WEAPON_FOR_SCRIPTED_CUTSCENE(ped, toggle)
  native.invoke(
    Type.Void, 6473, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CURRENT_WEAPON_VISIBLE(Ped ped, BOOL visible, BOOL deselectWeapon, BOOL p3, BOOL p4) // 0x0725A4CCFDED9A70
--[[
Has 5 parameters since latest patches.
--]]
function WEAPON.SET_PED_CURRENT_WEAPON_VISIBLE(ped, visible, deselectWeapon, p3, p4)
  native.invoke(
    Type.Void, 6474, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, visible),
    arg(Type.Bool, deselectWeapon),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4)
  )
end

-- void SET_PED_DROPS_WEAPONS_WHEN_DEAD(Ped ped, BOOL toggle) // 0x476AE72C1D19D1A8
function WEAPON.SET_PED_DROPS_WEAPONS_WHEN_DEAD(ped, toggle)
  native.invoke(
    Type.Void, 6475, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL HAS_PED_BEEN_DAMAGED_BY_WEAPON(Ped ped, Hash weaponHash, int weaponType) // 0x2D343D2219CD027A
--[[
It determines what weapons caused damage:

If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0
If you want to define any melee weapon, second parameter=0, third parameter=1.
If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.HAS_PED_BEEN_DAMAGED_BY_WEAPON(ped, weaponHash, weaponType)
  return native.invoke(
    Type.Bool, 6476, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Int, weaponType)
  )
end

-- void CLEAR_PED_LAST_WEAPON_DAMAGE(Ped ped) // 0x0E98F88A24C5F4B8
--[[
Does NOT seem to work with HAS_PED_BEEN_DAMAGED_BY_WEAPON. Use CLEAR_ENTITY_LAST_WEAPON_DAMAGE and HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON instead.
--]]
function WEAPON.CLEAR_PED_LAST_WEAPON_DAMAGE(ped)
  native.invoke(
    Type.Void, 6477, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON(Entity entity, Hash weaponHash, int weaponType) // 0x131D401334815E94
--[[
It determines what weapons caused damage:

If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0
If you want to define any melee weapon, second parameter=0, third parameter=1.
If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON(entity, weaponHash, weaponType)
  return native.invoke(
    Type.Bool, 6478, false,
    arg(Type.Entity, entity),
    arg(Type.Hash, weaponHash),
    arg(Type.Int, weaponType)
  )
end

-- void CLEAR_ENTITY_LAST_WEAPON_DAMAGE(Entity entity) // 0xAC678E40BE7C74D2
function WEAPON.CLEAR_ENTITY_LAST_WEAPON_DAMAGE(entity)
  native.invoke(
    Type.Void, 6479, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_PED_DROPS_WEAPON(Ped ped) // 0x6B7513D9966FBEC0
function WEAPON.SET_PED_DROPS_WEAPON(ped)
  native.invoke(
    Type.Void, 6480, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_DROPS_INVENTORY_WEAPON(Ped ped, Hash weaponHash, float xOffset, float yOffset, float zOffset, int ammoCount) // 0x208A1888007FC0E6
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_PED_DROPS_INVENTORY_WEAPON(ped, weaponHash, xOffset, yOffset, zOffset, ammoCount)
  native.invoke(
    Type.Void, 6481, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Int, ammoCount)
  )
end

-- int GET_MAX_AMMO_IN_CLIP(Ped ped, Hash weaponHash, BOOL p2) // 0xA38DCFFCEA8962FA
--[[
p2 is mostly 1 in the scripts.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_MAX_AMMO_IN_CLIP(ped, weaponHash, p2)
  return native.invoke(
    Type.Int, 6482, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Bool, p2)
  )
end

-- BOOL GET_AMMO_IN_CLIP(Ped ped, Hash weaponHash, int* ammo) // 0x2E1202248937775C
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_AMMO_IN_CLIP(ped, weaponHash, ammo)
  return native.invoke(
    Type.Bool, 6483, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    ref(Type.Int, ammo)
  )
end

-- BOOL SET_AMMO_IN_CLIP(Ped ped, Hash weaponHash, int ammo) // 0xDCD2A934D65CB497
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_AMMO_IN_CLIP(ped, weaponHash, ammo)
  return native.invoke(
    Type.Bool, 6484, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Int, ammo)
  )
end

-- BOOL GET_MAX_AMMO(Ped ped, Hash weaponHash, int* ammo) // 0xDC16122C7A20C933
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_MAX_AMMO(ped, weaponHash, ammo)
  return native.invoke(
    Type.Bool, 6485, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    ref(Type.Int, ammo)
  )
end

-- BOOL GET_MAX_AMMO_BY_TYPE(Ped ped, Hash ammoTypeHash, int* ammo) // 0x585847C5E4E11709
--[[
Returns the max ammo for an ammo type. Ammo types: https://gist.github.com/root-cause/faf41f59f7a6d818b7db0b839bd147c1
--]]
function WEAPON.GET_MAX_AMMO_BY_TYPE(ped, ammoTypeHash, ammo)
  return native.invoke(
    Type.Bool, 6486, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, ammoTypeHash),
    ref(Type.Int, ammo)
  )
end

-- void ADD_PED_AMMO_BY_TYPE(Ped ped, Hash ammoTypeHash, int ammo) // 0x2472622CE1F2D45F
--[[
Ammo types: https://gist.github.com/root-cause/faf41f59f7a6d818b7db0b839bd147c1
--]]
function WEAPON.ADD_PED_AMMO_BY_TYPE(ped, ammoTypeHash, ammo)
  native.invoke(
    Type.Void, 6487, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, ammoTypeHash),
    arg(Type.Int, ammo)
  )
end

-- void SET_PED_AMMO_BY_TYPE(Ped ped, Hash ammoTypeHash, int ammo) // 0x5FD1E1F011E76D7E
--[[
Ammo types: https://gist.github.com/root-cause/faf41f59f7a6d818b7db0b839bd147c1
--]]
function WEAPON.SET_PED_AMMO_BY_TYPE(ped, ammoTypeHash, ammo)
  native.invoke(
    Type.Void, 6488, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, ammoTypeHash),
    arg(Type.Int, ammo)
  )
end

-- int GET_PED_AMMO_BY_TYPE(Ped ped, Hash ammoTypeHash) // 0x39D22031557946C1
function WEAPON.GET_PED_AMMO_BY_TYPE(ped, ammoTypeHash)
  return native.invoke(
    Type.Int, 6489, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, ammoTypeHash)
  )
end

-- void SET_PED_AMMO_TO_DROP(Ped ped, int p1) // 0xA4EFEF9440A5B0EF
function WEAPON.SET_PED_AMMO_TO_DROP(ped, p1)
  native.invoke(
    Type.Void, 6490, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1)
  )
end

-- void SET_PICKUP_AMMO_AMOUNT_SCALER(float p0) // 0xE620FD3512A04F18
function WEAPON.SET_PICKUP_AMMO_AMOUNT_SCALER(p0)
  native.invoke(
    Type.Void, 6491, false,
    arg(Type.Float, p0)
  )
end

-- Hash GET_PED_AMMO_TYPE_FROM_WEAPON(Ped ped, Hash weaponHash) // 0x7FEAD38B326B9F74
--[[
Returns the current ammo type of the specified ped's specified weapon.
MkII magazines will change the return value, like Pistol MkII returning AMMO_PISTOL without any components and returning AMMO_PISTOL_TRACER after Tracer Rounds component is attached.
Use 0xF489B44DD5AF4BD9 if you always want AMMO_PISTOL.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_PED_AMMO_TYPE_FROM_WEAPON(ped, weaponHash)
  return native.invoke(
    Type.Hash, 6492, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash)
  )
end

-- Hash GET_PED_ORIGINAL_AMMO_TYPE_FROM_WEAPON(Ped ped, Hash weaponHash) // 0xF489B44DD5AF4BD9
--[[
Returns the base/default ammo type of the specified ped's specified weapon.
Use GET_PED_AMMO_TYPE_FROM_WEAPON if you want current ammo type (like AMMO_MG_INCENDIARY/AMMO_MG_TRACER while using MkII magazines) and use this if you want base ammo type. (AMMO_MG)
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_PED_ORIGINAL_AMMO_TYPE_FROM_WEAPON(ped, weaponHash)
  return native.invoke(
    Type.Hash, 6493, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash)
  )
end

-- BOOL GET_PED_LAST_WEAPON_IMPACT_COORD(Ped ped, Vector3* coords) // 0x6C4D0409BA1A2BC2
--[[
Pass ped. Pass address of Vector3.
The coord will be put into the Vector3.
The return will determine whether there was a coord found or not.
--]]
function WEAPON.GET_PED_LAST_WEAPON_IMPACT_COORD(ped, coords)
  return native.invoke(
    Type.Bool, 6494, false,
    arg(Type.Ped, ped),
    ref(Type.Vector3, coords)
  )
end

-- void SET_PED_GADGET(Ped ped, Hash gadgetHash, BOOL p2) // 0xD0D7B1E680ED4A1A
--[[
p1/gadgetHash was always 0xFBAB5776 ("GADGET_PARACHUTE").
p2 is always true.
--]]
function WEAPON.SET_PED_GADGET(ped, gadgetHash, p2)
  native.invoke(
    Type.Void, 6495, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, gadgetHash),
    arg(Type.Bool, p2)
  )
end

-- BOOL GET_IS_PED_GADGET_EQUIPPED(Ped ped, Hash gadgetHash) // 0xF731332072F5156C
--[[
gadgetHash - was always 0xFBAB5776 ("GADGET_PARACHUTE").
--]]
function WEAPON.GET_IS_PED_GADGET_EQUIPPED(ped, gadgetHash)
  return native.invoke(
    Type.Bool, 6496, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, gadgetHash)
  )
end

-- Hash GET_SELECTED_PED_WEAPON(Ped ped) // 0x0A6DB4965674D243
--[[
Returns the hash of the weapon. 

            var num7 = WEAPON::GET_SELECTED_PED_WEAPON(num4);
            sub_27D3(num7);
            switch (num7)
            {
                case 0x24B17070:

Also see WEAPON::GET_CURRENT_PED_WEAPON. Difference?

-------------------------------------------------------------------------

The difference is that GET_SELECTED_PED_WEAPON simply returns the ped's current weapon hash but GET_CURRENT_PED_WEAPON also checks the weapon object and returns true if the hash of the weapon object equals the weapon hash
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_SELECTED_PED_WEAPON(ped)
  return native.invoke(
    Type.Hash, 6497, false,
    arg(Type.Ped, ped)
  )
end

-- void EXPLODE_PROJECTILES(Ped ped, Hash weaponHash, BOOL p2) // 0xFC4BD125DE7611E4
--[[
             WEAPON::EXPLODE_PROJECTILES(PLAYER::PLAYER_PED_ID(), func_221(0x00000003), 0x00000001);
--]]
function WEAPON.EXPLODE_PROJECTILES(ped, weaponHash, p2)
  native.invoke(
    Type.Void, 6498, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Bool, p2)
  )
end

-- void REMOVE_ALL_PROJECTILES_OF_TYPE(Hash weaponHash, BOOL explode) // 0xFC52E0F37E446528
--[[
If `explode` true, then removal is done through exploding the projectile. Basically the same as EXPLODE_PROJECTILES but without defining the owner ped.
--]]
function WEAPON.REMOVE_ALL_PROJECTILES_OF_TYPE(weaponHash, explode)
  native.invoke(
    Type.Void, 6499, false,
    arg(Type.Hash, weaponHash),
    arg(Type.Bool, explode)
  )
end

-- float GET_LOCKON_DISTANCE_OF_CURRENT_PED_WEAPON(Ped ped) // 0x840F03E9041E2C9C
function WEAPON.GET_LOCKON_DISTANCE_OF_CURRENT_PED_WEAPON(ped)
  return native.invoke(
    Type.Float, 6500, false,
    arg(Type.Ped, ped)
  )
end

-- float GET_MAX_RANGE_OF_CURRENT_PED_WEAPON(Ped ped) // 0x814C9D19DFD69679
function WEAPON.GET_MAX_RANGE_OF_CURRENT_PED_WEAPON(ped)
  return native.invoke(
    Type.Float, 6501, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL HAS_VEHICLE_GOT_PROJECTILE_ATTACHED(Ped driver, Vehicle vehicle, Hash weaponHash, Any p3) // 0x717C8481234E3B88
--[[
Fourth Parameter = unsure, almost always -1
--]]
function WEAPON.HAS_VEHICLE_GOT_PROJECTILE_ATTACHED(driver, vehicle, weaponHash, p3)
  return native.invoke(
    Type.Bool, 6502, false,
    arg(Type.Ped, driver),
    arg(Type.Vehicle, vehicle),
    arg(Type.Hash, weaponHash),
    arg(Type.Any, p3)
  )
end

-- void GIVE_WEAPON_COMPONENT_TO_PED(Ped ped, Hash weaponHash, Hash componentHash) // 0xD966D51AA5B28BB9
--[[
Full list of weapons & components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GIVE_WEAPON_COMPONENT_TO_PED(ped, weaponHash, componentHash)
  native.invoke(
    Type.Void, 6503, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, componentHash)
  )
end

-- void REMOVE_WEAPON_COMPONENT_FROM_PED(Ped ped, Hash weaponHash, Hash componentHash) // 0x1E8BE90C74FB4C09
--[[
Full list of weapons & components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.REMOVE_WEAPON_COMPONENT_FROM_PED(ped, weaponHash, componentHash)
  native.invoke(
    Type.Void, 6504, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, componentHash)
  )
end

-- BOOL HAS_PED_GOT_WEAPON_COMPONENT(Ped ped, Hash weaponHash, Hash componentHash) // 0xC593212475FAE340
--[[
Full list of weapons & components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.HAS_PED_GOT_WEAPON_COMPONENT(ped, weaponHash, componentHash)
  return native.invoke(
    Type.Bool, 6505, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, componentHash)
  )
end

-- BOOL IS_PED_WEAPON_COMPONENT_ACTIVE(Ped ped, Hash weaponHash, Hash componentHash) // 0x0D78DE0572D3969E
--[[
Full list of weapons & components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.IS_PED_WEAPON_COMPONENT_ACTIVE(ped, weaponHash, componentHash)
  return native.invoke(
    Type.Bool, 6506, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, componentHash)
  )
end

-- BOOL REFILL_AMMO_INSTANTLY(Ped ped) // 0x8C0D57EA686FAD87
function WEAPON.REFILL_AMMO_INSTANTLY(ped)
  return native.invoke(
    Type.Bool, 6507, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL MAKE_PED_RELOAD(Ped ped) // 0x20AE33F3AC9C0033
--[[
Forces a ped to reload only if they are able to; if they have a full magazine, they will not reload.
--]]
function WEAPON.MAKE_PED_RELOAD(ped)
  return native.invoke(
    Type.Bool, 6508, false,
    arg(Type.Ped, ped)
  )
end

-- void REQUEST_WEAPON_ASSET(Hash weaponHash, int p1, int p2) // 0x5443438F033E29C3
--[[
Nearly every instance of p1 I found was 31. Nearly every instance of p2 I found was 0.

REQUEST_WEAPON_ASSET(iLocal_1888, 31, 26);
--]]
function WEAPON.REQUEST_WEAPON_ASSET(weaponHash, p1, p2)
  native.invoke(
    Type.Void, 6509, false,
    arg(Type.Hash, weaponHash),
    arg(Type.Int, p1),
    arg(Type.Int, p2)
  )
end

-- BOOL HAS_WEAPON_ASSET_LOADED(Hash weaponHash) // 0x36E353271F0E90EE
function WEAPON.HAS_WEAPON_ASSET_LOADED(weaponHash)
  return native.invoke(
    Type.Bool, 6510, false,
    arg(Type.Hash, weaponHash)
  )
end

-- void REMOVE_WEAPON_ASSET(Hash weaponHash) // 0xAA08EF13F341C8FC
function WEAPON.REMOVE_WEAPON_ASSET(weaponHash)
  native.invoke(
    Type.Void, 6511, false,
    arg(Type.Hash, weaponHash)
  )
end

-- Object CREATE_WEAPON_OBJECT(Hash weaponHash, int ammoCount, float x, float y, float z, BOOL showWorldModel, float scale, Any p7, Any p8, Any p9) // 0x9541D3CF0D398F36
--[[
Now has 8 params.
--]]
function WEAPON.CREATE_WEAPON_OBJECT(weaponHash, ammoCount, x, y, z, showWorldModel, scale, p7, p8, p9)
  return native.invoke(
    Type.Object, 6512, false,
    arg(Type.Hash, weaponHash),
    arg(Type.Int, ammoCount),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, showWorldModel),
    arg(Type.Float, scale),
    arg(Type.Any, p7),
    arg(Type.Any, p8),
    arg(Type.Any, p9)
  )
end

-- void GIVE_WEAPON_COMPONENT_TO_WEAPON_OBJECT(Object weaponObject, Hash componentHash) // 0x33E179436C0B31DB
--[[
componentHash:
(use WEAPON::GET_WEAPON_COMPONENT_TYPE_MODEL() to get hash value)
${component_at_ar_flsh}, ${component_at_ar_supp}, ${component_at_pi_flsh}, ${component_at_scope_large}, ${component_at_ar_supp_02}
--]]
function WEAPON.GIVE_WEAPON_COMPONENT_TO_WEAPON_OBJECT(weaponObject, componentHash)
  native.invoke(
    Type.Void, 6513, false,
    arg(Type.Object, weaponObject),
    arg(Type.Hash, componentHash)
  )
end

-- void REMOVE_WEAPON_COMPONENT_FROM_WEAPON_OBJECT(Object object, Hash componentHash) // 0xF7D82B0D66777611
--[[
see DOES_WEAPON_TAKE_WEAPON_COMPONENT for full list of weapons & components
--]]
function WEAPON.REMOVE_WEAPON_COMPONENT_FROM_WEAPON_OBJECT(object, componentHash)
  native.invoke(
    Type.Void, 6514, false,
    arg(Type.Object, object),
    arg(Type.Hash, componentHash)
  )
end

-- BOOL HAS_WEAPON_GOT_WEAPON_COMPONENT(Object weapon, Hash componentHash) // 0x76A18844E743BF91
--[[
see DOES_WEAPON_TAKE_WEAPON_COMPONENT for full list of weapons & components
--]]
function WEAPON.HAS_WEAPON_GOT_WEAPON_COMPONENT(weapon, componentHash)
  return native.invoke(
    Type.Bool, 6515, false,
    arg(Type.Object, weapon),
    arg(Type.Hash, componentHash)
  )
end

-- void GIVE_WEAPON_OBJECT_TO_PED(Object weaponObject, Ped ped) // 0xB1FA61371AF7C4B7
function WEAPON.GIVE_WEAPON_OBJECT_TO_PED(weaponObject, ped)
  native.invoke(
    Type.Void, 6516, false,
    arg(Type.Object, weaponObject),
    arg(Type.Ped, ped)
  )
end

-- BOOL DOES_WEAPON_TAKE_WEAPON_COMPONENT(Hash weaponHash, Hash componentHash) // 0x5CEE3DF569CECAB0
--[[
Full list of weapons & components by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.DOES_WEAPON_TAKE_WEAPON_COMPONENT(weaponHash, componentHash)
  return native.invoke(
    Type.Bool, 6517, false,
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, componentHash)
  )
end

-- Object GET_WEAPON_OBJECT_FROM_PED(Ped ped, BOOL p1) // 0xCAE1DC9A0E22A16D
--[[
Drops the current weapon and returns the object

Unknown behavior when unarmed.
--]]
function WEAPON.GET_WEAPON_OBJECT_FROM_PED(ped, p1)
  return native.invoke(
    Type.Object, 6518, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void GIVE_LOADOUT_TO_PED(Ped ped, Hash loadoutHash) // 0x68F8BE6AF5CDF8A6
--[[
Gives the specified loadout to the specified ped. 
Loadouts are defined in common.rpf\data\ai\loadouts.meta
--]]
function WEAPON.GIVE_LOADOUT_TO_PED(ped, loadoutHash)
  native.invoke(
    Type.Void, 6519, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, loadoutHash)
  )
end

-- void SET_PED_WEAPON_TINT_INDEX(Ped ped, Hash weaponHash, int tintIndex) // 0x50969B9B89ED5738
--[[
tintIndex can be the following:

0 - Normal
1 - Green
2 - Gold
3 - Pink
4 - Army
5 - LSPD
6 - Orange
7 - Platinum
Full list of weapons, components & tint indexes by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_PED_WEAPON_TINT_INDEX(ped, weaponHash, tintIndex)
  native.invoke(
    Type.Void, 6520, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Int, tintIndex)
  )
end

-- int GET_PED_WEAPON_TINT_INDEX(Ped ped, Hash weaponHash) // 0x2B9EEDC07BD06B9F
--[[
Full list of weapons, components & tint indexes by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_PED_WEAPON_TINT_INDEX(ped, weaponHash)
  return native.invoke(
    Type.Int, 6521, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash)
  )
end

-- void SET_WEAPON_OBJECT_TINT_INDEX(Object weapon, int tintIndex) // 0xF827589017D4E4A9
--[[
Full list of weapons, components & tint indexes by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_WEAPON_OBJECT_TINT_INDEX(weapon, tintIndex)
  native.invoke(
    Type.Void, 6522, false,
    arg(Type.Object, weapon),
    arg(Type.Int, tintIndex)
  )
end

-- int GET_WEAPON_OBJECT_TINT_INDEX(Object weapon) // 0xCD183314F7CD2E57
function WEAPON.GET_WEAPON_OBJECT_TINT_INDEX(weapon)
  return native.invoke(
    Type.Int, 6523, false,
    arg(Type.Object, weapon)
  )
end

-- int GET_WEAPON_TINT_COUNT(Hash weaponHash) // 0x5DCF6C5CAB2E9BF7
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_WEAPON_TINT_COUNT(weaponHash)
  return native.invoke(
    Type.Int, 6524, false,
    arg(Type.Hash, weaponHash)
  )
end

-- void SET_PED_WEAPON_COMPONENT_TINT_INDEX(Ped ped, Hash weaponHash, Hash camoComponentHash, int colorIndex) // 0x9FE5633880ECD8ED
--[[
Colors:
0 = Gray
1 = Dark Gray
2 = Black
3 = White
4 = Blue
5 = Cyan
6 = Aqua
7 = Cool Blue
8 = Dark Blue
9 = Royal Blue
10 = Plum
11 = Dark Purple
12 = Purple
13 = Red
14 = Wine Red
15 = Magenta
16 = Pink
17 = Salmon
18 = Hot Pink
19 = Rust Orange
20 = Brown
21 = Earth
22 = Orange
23 = Light Orange
24 = Dark Yellow
25 = Yellow
26 = Light Brown
27 = Lime Green
28 = Olive
29 = Moss
30 = Turquoise
31 = Dark Green
Full list of weapons, components, tint indexes & weapon liveries by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_PED_WEAPON_COMPONENT_TINT_INDEX(ped, weaponHash, camoComponentHash, colorIndex)
  native.invoke(
    Type.Void, 6525, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, camoComponentHash),
    arg(Type.Int, colorIndex)
  )
end

-- int GET_PED_WEAPON_COMPONENT_TINT_INDEX(Ped ped, Hash weaponHash, Hash camoComponentHash) // 0xF0A60040BE558F2D
--[[
Returns -1 if camoComponentHash is invalid/not attached to the weapon.
Full list of weapons, components, tint indexes & weapon liveries by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_PED_WEAPON_COMPONENT_TINT_INDEX(ped, weaponHash, camoComponentHash)
  return native.invoke(
    Type.Int, 6526, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, camoComponentHash)
  )
end

-- void SET_WEAPON_OBJECT_COMPONENT_TINT_INDEX(Object weaponObject, Hash camoComponentHash, int colorIndex) // 0x5DA825A85D0EA6E6
--[[
Colors:
0 = Gray
1 = Dark Gray
2 = Black
3 = White
4 = Blue
5 = Cyan
6 = Aqua
7 = Cool Blue
8 = Dark Blue
9 = Royal Blue
10 = Plum
11 = Dark Purple
12 = Purple
13 = Red
14 = Wine Red
15 = Magenta
16 = Pink
17 = Salmon
18 = Hot Pink
19 = Rust Orange
20 = Brown
21 = Earth
22 = Orange
23 = Light Orange
24 = Dark Yellow
25 = Yellow
26 = Light Brown
27 = Lime Green
28 = Olive
29 = Moss
30 = Turquoise
31 = Dark Green
Full list of weapons, components, tint indexes & weapon liveries by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_WEAPON_OBJECT_COMPONENT_TINT_INDEX(weaponObject, camoComponentHash, colorIndex)
  native.invoke(
    Type.Void, 6527, false,
    arg(Type.Object, weaponObject),
    arg(Type.Hash, camoComponentHash),
    arg(Type.Int, colorIndex)
  )
end

-- int GET_WEAPON_OBJECT_COMPONENT_TINT_INDEX(Object weaponObject, Hash camoComponentHash) // 0xB3EA4FEABF41464B
--[[
Returns -1 if camoComponentHash is invalid/not attached to the weapon object.
Full list of weapons, components, tint indexes & weapon liveries by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_WEAPON_OBJECT_COMPONENT_TINT_INDEX(weaponObject, camoComponentHash)
  return native.invoke(
    Type.Int, 6528, false,
    arg(Type.Object, weaponObject),
    arg(Type.Hash, camoComponentHash)
  )
end

-- int GET_PED_WEAPON_CAMO_INDEX(Ped ped, Hash weaponHash) // 0xA2C9AC24B4061285
function WEAPON.GET_PED_WEAPON_CAMO_INDEX(ped, weaponHash)
  return native.invoke(
    Type.Int, 6529, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash)
  )
end

-- void SET_WEAPON_OBJECT_CAMO_INDEX(Object weaponObject, int p1) // 0x977CA98939E82E4B
function WEAPON.SET_WEAPON_OBJECT_CAMO_INDEX(weaponObject, p1)
  native.invoke(
    Type.Void, 6530, false,
    arg(Type.Object, weaponObject),
    arg(Type.Int, p1)
  )
end

-- BOOL GET_WEAPON_HUD_STATS(Hash weaponHash, Any* outData) // 0xD92C739EE34C9EBA
--[[
struct WeaponHudStatsData
{
    BYTE hudDamage; // 0x0000
    char _0x0001[0x7]; // 0x0001
    BYTE hudSpeed; // 0x0008
    char _0x0009[0x7]; // 0x0009
    BYTE hudCapacity; // 0x0010
    char _0x0011[0x7]; // 0x0011
    BYTE hudAccuracy; // 0x0018
    char _0x0019[0x7]; // 0x0019
    BYTE hudRange; // 0x0020
};

Usage:

WeaponHudStatsData data;
if (GET_WEAPON_HUD_STATS(weaponHash, (int *)&data))
{
    // BYTE damagePercentage = data.hudDamage and so on
}
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_WEAPON_HUD_STATS(weaponHash, outData)
  return native.invoke(
    Type.Bool, 6531, false,
    arg(Type.Hash, weaponHash),
    ref(Type.Any, outData)
  )
end

-- BOOL GET_WEAPON_COMPONENT_HUD_STATS(Hash componentHash, Any* outData) // 0xB3CAF387AE12E9F8
function WEAPON.GET_WEAPON_COMPONENT_HUD_STATS(componentHash, outData)
  return native.invoke(
    Type.Bool, 6532, false,
    arg(Type.Hash, componentHash),
    ref(Type.Any, outData)
  )
end

-- float GET_WEAPON_DAMAGE(Hash weaponHash, Hash componentHash) // 0x3133B907D8B32053
--[[
This native does not return damages of weapons from the melee and explosive group.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_WEAPON_DAMAGE(weaponHash, componentHash)
  return native.invoke(
    Type.Float, 6533, false,
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, componentHash)
  )
end

-- int GET_WEAPON_CLIP_SIZE(Hash weaponHash) // 0x583BE370B1EC6EB4
--[[
// Returns the size of the default weapon component clip.

Use it like this:

char cClipSize[32];
Hash cur;
if (WEAPON::GET_CURRENT_PED_WEAPON(playerPed, &cur, 1))
{
    if (WEAPON::IS_WEAPON_VALID(cur))
    {
        int iClipSize = WEAPON::GET_WEAPON_CLIP_SIZE(cur);
        sprintf_s(cClipSize, "ClipSize: %.d", iClipSize);
        vDrawString(cClipSize, 0.5f, 0.5f);
    }
}
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_WEAPON_CLIP_SIZE(weaponHash)
  return native.invoke(
    Type.Int, 6534, false,
    arg(Type.Hash, weaponHash)
  )
end

-- float GET_WEAPON_TIME_BETWEEN_SHOTS(Hash weaponHash) // 0x065D2AACAD8CF7A4
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_WEAPON_TIME_BETWEEN_SHOTS(weaponHash)
  return native.invoke(
    Type.Float, 6535, false,
    arg(Type.Hash, weaponHash)
  )
end

-- void SET_PED_CHANCE_OF_FIRING_BLANKS(Ped ped, float xBias, float yBias) // 0x8378627201D5497D
function WEAPON.SET_PED_CHANCE_OF_FIRING_BLANKS(ped, xBias, yBias)
  native.invoke(
    Type.Void, 6536, false,
    arg(Type.Ped, ped),
    arg(Type.Float, xBias),
    arg(Type.Float, yBias)
  )
end

-- Object SET_PED_SHOOT_ORDNANCE_WEAPON(Ped ped, float p1) // 0xB4C8D77C80C0421E
--[[
Returns handle of the projectile.
--]]
function WEAPON.SET_PED_SHOOT_ORDNANCE_WEAPON(ped, p1)
  return native.invoke(
    Type.Object, 6537, false,
    arg(Type.Ped, ped),
    arg(Type.Float, p1)
  )
end

-- void REQUEST_WEAPON_HIGH_DETAIL_MODEL(Entity weaponObject) // 0x48164DBB970AC3F0
function WEAPON.REQUEST_WEAPON_HIGH_DETAIL_MODEL(weaponObject)
  native.invoke(
    Type.Void, 6538, false,
    arg(Type.Entity, weaponObject)
  )
end

-- void _SET_WEAPON_PED_DAMAGE_MODIFIER(Hash weapon, float damageModifier) // 0x1091922715B68DF0
function WEAPON._SET_WEAPON_PED_DAMAGE_MODIFIER(weapon, damageModifier)
  native.invoke(
    Type.Void, 6539, false,
    arg(Type.Hash, weapon),
    arg(Type.Float, damageModifier)
  )
end

-- void SET_WEAPON_DAMAGE_MODIFIER(Hash weaponHash, float damageMultiplier) // 0x4757F00BC6323CFE
--[[
Changes the weapon damage output by the given multiplier value. Must be run every frame.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_WEAPON_DAMAGE_MODIFIER(weaponHash, damageMultiplier)
  native.invoke(
    Type.Void, 6540, false,
    arg(Type.Hash, weaponHash),
    arg(Type.Float, damageMultiplier)
  )
end

-- void SET_WEAPON_AOE_MODIFIER(Hash weaponHash, float multiplier) // 0x4AE5AC8B852D642C
function WEAPON.SET_WEAPON_AOE_MODIFIER(weaponHash, multiplier)
  native.invoke(
    Type.Void, 6541, false,
    arg(Type.Hash, weaponHash),
    arg(Type.Float, multiplier)
  )
end

-- void SET_WEAPON_EFFECT_DURATION_MODIFIER(Hash p0, float p1) // 0xE6D2CEDD370FF98E
--[[
ex, WEAPON::SET_WEAPON_EFFECT_DURATION_MODIFIER(joaat("vehicle_weapon_mine_slick"), 1.0);
--]]
function WEAPON.SET_WEAPON_EFFECT_DURATION_MODIFIER(p0, p1)
  native.invoke(
    Type.Void, 6542, false,
    arg(Type.Hash, p0),
    arg(Type.Float, p1)
  )
end

-- BOOL IS_PED_CURRENT_WEAPON_SILENCED(Ped ped) // 0x65F0C5AE05943EC7
--[[
This native returns a true or false value.

Ped ped = The ped whose weapon you want to check.
--]]
function WEAPON.IS_PED_CURRENT_WEAPON_SILENCED(ped)
  return native.invoke(
    Type.Bool, 6543, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_FLASH_LIGHT_ON(Ped ped) // 0x4B7620C47217126C
function WEAPON.IS_FLASH_LIGHT_ON(ped)
  return native.invoke(
    Type.Bool, 6544, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL SET_FLASH_LIGHT_FADE_DISTANCE(float distance) // 0xCEA66DAD478CD39B
function WEAPON.SET_FLASH_LIGHT_FADE_DISTANCE(distance)
  return native.invoke(
    Type.Bool, 6545, false,
    arg(Type.Float, distance)
  )
end

-- void SET_FLASH_LIGHT_ACTIVE_HISTORY(Ped ped, BOOL toggle) // 0x988DB6FE9B3AC000
--[[
Enables/disables flashlight on ped's weapon.
--]]
function WEAPON.SET_FLASH_LIGHT_ACTIVE_HISTORY(ped, toggle)
  native.invoke(
    Type.Void, 6546, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_WEAPON_ANIMATION_OVERRIDE(Ped ped, Hash animStyle) // 0x1055AC3A667F09D9
--[[
Changes the selected ped aiming animation style. 
Note : You must use GET_HASH_KEY!

Strings to use with GET_HASH_KEY :

    "Ballistic",
    "Default",
  "Fat",
  "Female",
   "FirstPerson",
  "FirstPersonAiming",
    "FirstPersonFranklin",
  "FirstPersonFranklinAiming",
    "FirstPersonFranklinRNG",
   "FirstPersonFranklinScope",
 "FirstPersonMPFemale",
  "FirstPersonMichael",
   "FirstPersonMichaelAiming",
 "FirstPersonMichaelRNG",
    "FirstPersonMichaelScope",
  "FirstPersonRNG",
   "FirstPersonScope",
 "FirstPersonTrevor",
    "FirstPersonTrevorAiming",
  "FirstPersonTrevorRNG",
 "FirstPersonTrevorScope",
   "Franklin",
 "Gang",
 "Gang1H",
   "GangFemale",
   "Hillbilly",
    "MP_F_Freemode",
    "Michael",
  "SuperFat",
 "Trevor"
--]]
function WEAPON.SET_WEAPON_ANIMATION_OVERRIDE(ped, animStyle)
  native.invoke(
    Type.Void, 6547, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, animStyle)
  )
end

-- int GET_WEAPON_DAMAGE_TYPE(Hash weaponHash) // 0x3BE0BB12D25FB305
--[[
enum class eDamageType
{
	UNKNOWN = 0,
	NONE = 1,
	MELEE = 2,
	BULLET = 3,
	BULLET_RUBBER = 4,
	EXPLOSIVE = 5,
	FIRE = 6,
	COLLISION = 7,
	FALL = 8,
	DROWN = 9,
	ELECTRIC = 10,
	BARBED_WIRE = 11,
	FIRE_EXTINGUISHER = 12,
	SMOKE = 13,
	WATER_CANNON = 14,
	TRANQUILIZER = 15,
};

Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.GET_WEAPON_DAMAGE_TYPE(weaponHash)
  return native.invoke(
    Type.Int, 6548, false,
    arg(Type.Hash, weaponHash)
  )
end

-- void SET_EQIPPED_WEAPON_START_SPINNING_AT_FULL_SPEED(Ped ped) // 0xE4DCEC7FD5B739A5
function WEAPON.SET_EQIPPED_WEAPON_START_SPINNING_AT_FULL_SPEED(ped)
  native.invoke(
    Type.Void, 6549, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL CAN_USE_WEAPON_ON_PARACHUTE(Hash weaponHash) // 0xBC7BE5ABC0879F74
--[[
this returns if you can use the weapon while using a parachute
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.CAN_USE_WEAPON_ON_PARACHUTE(weaponHash)
  return native.invoke(
    Type.Bool, 6550, false,
    arg(Type.Hash, weaponHash)
  )
end

-- int CREATE_AIR_DEFENCE_SPHERE(float x, float y, float z, float radius, float p4, float p5, float p6, Hash weaponHash) // 0x91EF34584710BE99
--[[
Both coordinates are from objects in the decompiled scripts. Native related to 0xECDC202B25E5CF48 p1 value. The only weapon hash used in the decompiled scripts is weapon_air_defence_gun. These two natives are used by the yacht script, decompiled scripts suggest it and the weapon hash used (valkyrie's rockets) are also used by yachts.
--]]
function WEAPON.CREATE_AIR_DEFENCE_SPHERE(x, y, z, radius, p4, p5, p6, weaponHash)
  return native.invoke(
    Type.Int, 6551, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Hash, weaponHash)
  )
end

-- int CREATE_AIR_DEFENCE_ANGLED_AREA(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float radius, Hash weaponHash) // 0x9DA58CDBF6BDBC08
--[[
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.CREATE_AIR_DEFENCE_ANGLED_AREA(p0, p1, p2, p3, p4, p5, p6, p7, p8, radius, weaponHash)
  return native.invoke(
    Type.Int, 6552, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Float, radius),
    arg(Type.Hash, weaponHash)
  )
end

-- BOOL REMOVE_AIR_DEFENCE_SPHERE(int zoneId) // 0x0ABF535877897560
function WEAPON.REMOVE_AIR_DEFENCE_SPHERE(zoneId)
  return native.invoke(
    Type.Bool, 6553, false,
    arg(Type.Int, zoneId)
  )
end

-- void REMOVE_ALL_AIR_DEFENCE_SPHERES() // 0x1E45B34ADEBEE48E
function WEAPON.REMOVE_ALL_AIR_DEFENCE_SPHERES()
  native.invoke(
    Type.Void, 6554, false
  )
end

-- void SET_PLAYER_TARGETTABLE_FOR_AIR_DEFENCE_SPHERE(Player player, int zoneId, BOOL enable) // 0xECDC202B25E5CF48
function WEAPON.SET_PLAYER_TARGETTABLE_FOR_AIR_DEFENCE_SPHERE(player, zoneId, enable)
  native.invoke(
    Type.Void, 6555, false,
    arg(Type.Player, player),
    arg(Type.Int, zoneId),
    arg(Type.Bool, enable)
  )
end

-- BOOL IS_AIR_DEFENCE_SPHERE_IN_AREA(float x, float y, float z, float radius, int* outZoneId) // 0xDAB963831DBFD3F4
function WEAPON.IS_AIR_DEFENCE_SPHERE_IN_AREA(x, y, z, radius, outZoneId)
  return native.invoke(
    Type.Bool, 6556, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    ref(Type.Int, outZoneId)
  )
end

-- void FIRE_AIR_DEFENCE_SPHERE_WEAPON_AT_POSITION(int zoneId, float x, float y, float z) // 0x44F1012B69313374
function WEAPON.FIRE_AIR_DEFENCE_SPHERE_WEAPON_AT_POSITION(zoneId, x, y, z)
  native.invoke(
    Type.Void, 6557, false,
    arg(Type.Int, zoneId),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- BOOL DOES_AIR_DEFENCE_SPHERE_EXIST(int zoneId) // 0xCD79A550999D7D4F
function WEAPON.DOES_AIR_DEFENCE_SPHERE_EXIST(zoneId)
  return native.invoke(
    Type.Bool, 6558, false,
    arg(Type.Int, zoneId)
  )
end

-- void SET_CAN_PED_SELECT_INVENTORY_WEAPON(Ped ped, Hash weaponHash, BOOL toggle) // 0xB4771B9AAF4E68E4
--[[
Disables selecting the given weapon. Ped isn't forced to put the gun away. However you can't reselect the weapon if you holster then unholster. Weapon is also grayed out on the weapon wheel.
Full list of weapons by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/weapons.json
--]]
function WEAPON.SET_CAN_PED_SELECT_INVENTORY_WEAPON(ped, weaponHash, toggle)
  native.invoke(
    Type.Void, 6559, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Bool, toggle)
  )
end

-- void SET_CAN_PED_SELECT_ALL_WEAPONS(Ped ped, BOOL toggle) // 0xEFF296097FF1E509
--[[
Disable all weapons. Does the same as 0xB4771B9AAF4E68E4 except for all weapons.
--]]
function WEAPON.SET_CAN_PED_SELECT_ALL_WEAPONS(ped, toggle)
  native.invoke(
    Type.Void, 6560, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end


