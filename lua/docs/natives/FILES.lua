FILES = {}

-- int GET_NUM_TATTOO_SHOP_DLC_ITEMS(int character) // 0x278F76C3B0A8F109
--[[
Character types:
0 = Michael, 
1 = Franklin, 
2 = Trevor, 
3 = MPMale, 
4 = MPFemale
--]]
function FILES.GET_NUM_TATTOO_SHOP_DLC_ITEMS(character)
  return native.invoke(
    Type.Int, 928, false,
    arg(Type.Int, character)
  )
end

-- BOOL GET_TATTOO_SHOP_DLC_ITEM_DATA(int characterType, int decorationIndex, Any* outComponent) // 0xFF56381874F82086
--[[
Character types:
0 = Michael, 
1 = Franklin, 
2 = Trevor, 
3 = MPMale, 
4 = MPFemale


enum TattooZoneData
{  
    ZONE_TORSO = 0,  
    ZONE_HEAD = 1,  
    ZONE_LEFT_ARM = 2,  
    ZONE_RIGHT_ARM = 3,  
    ZONE_LEFT_LEG = 4,  
    ZONE_RIGHT_LEG = 5,  
    ZONE_UNKNOWN = 6,
    ZONE_NONE = 7,  
};
struct outComponent
{
    // these vars are suffixed with 4 bytes of padding each.
    uint unk;
    int unk2;
    uint tattooCollectionHash;
    uint tattooNameHash;
    int unk3;
    TattooZoneData zoneId;
    uint unk4;
    uint unk5;
    // maybe more, not sure exactly, decompiled scripts are very vague around this part.
}
--]]
function FILES.GET_TATTOO_SHOP_DLC_ITEM_DATA(characterType, decorationIndex, outComponent)
  return native.invoke(
    Type.Bool, 929, false,
    arg(Type.Int, characterType),
    arg(Type.Int, decorationIndex),
    ref(Type.Any, outComponent)
  )
end

-- int GET_TATTOO_SHOP_DLC_ITEM_INDEX(Hash overlayHash, Any p1, int character) // 0x10144267DD22866C
--[[
Returns some sort of index/offset for overlays/decorations.

Character types:
0 = Michael, 
1 = Franklin, 
2 = Trevor, 
3 = MPMale, 
4 = MPFemale
--]]
function FILES.GET_TATTOO_SHOP_DLC_ITEM_INDEX(overlayHash, p1, character)
  return native.invoke(
    Type.Int, 930, false,
    arg(Type.Hash, overlayHash),
    arg(Type.Any, p1),
    arg(Type.Int, character)
  )
end

-- void INIT_SHOP_PED_COMPONENT(Any* outComponent) // 0x1E8C308FD312C036
function FILES.INIT_SHOP_PED_COMPONENT(outComponent)
  native.invoke(
    Type.Void, 931, false,
    ref(Type.Any, outComponent)
  )
end

-- void INIT_SHOP_PED_PROP(Any* outProp) // 0xEB0A2B758F7B850F
function FILES.INIT_SHOP_PED_PROP(outProp)
  native.invoke(
    Type.Void, 932, false,
    ref(Type.Any, outProp)
  )
end

-- int SETUP_SHOP_PED_APPAREL_QUERY(int p0, int p1, int p2, int p3) // 0x50F457823CE6EB5F
function FILES.SETUP_SHOP_PED_APPAREL_QUERY(p0, p1, p2, p3)
  return native.invoke(
    Type.Int, 933, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3)
  )
end

-- int SETUP_SHOP_PED_APPAREL_QUERY_TU(int character, int p1, int p2, BOOL p3, int p4, int componentId) // 0x9BDF59818B1E38C1
--[[
character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.

componentId is between 0 and 11 and corresponds to the usual component slots.

p1 could be the outfit number; unsure.

p2 is usually -1; unknown function.

p3 appears to be for selecting between clothes and props; false is used with components/clothes, true is used with props.

p4 is usually -1; unknown function.

componentId is -1 when p3 is true in decompiled scripts.
--]]
function FILES.SETUP_SHOP_PED_APPAREL_QUERY_TU(character, p1, p2, p3, p4, componentId)
  return native.invoke(
    Type.Int, 934, false,
    arg(Type.Int, character),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Bool, p3),
    arg(Type.Int, p4),
    arg(Type.Int, componentId)
  )
end

-- void GET_SHOP_PED_QUERY_COMPONENT(int componentId, Any* outComponent) // 0x249E310B2D920699
--[[
See https://git.io/JtcRf for example and structs.
--]]
function FILES.GET_SHOP_PED_QUERY_COMPONENT(componentId, outComponent)
  native.invoke(
    Type.Void, 935, false,
    arg(Type.Int, componentId),
    ref(Type.Any, outComponent)
  )
end

-- int GET_SHOP_PED_QUERY_COMPONENT_INDEX(Hash componentHash) // 0x96E2929292A4DB77
--[[
Returns some sort of index/offset for components.
Needs _GET_NUM_PROPS_FROM_OUTFIT to be called with p3 = false and componentId with the drawable's component slot first, returns -1 otherwise.
--]]
function FILES.GET_SHOP_PED_QUERY_COMPONENT_INDEX(componentHash)
  return native.invoke(
    Type.Int, 936, false,
    arg(Type.Hash, componentHash)
  )
end

-- void GET_SHOP_PED_COMPONENT(Hash componentHash, Any* outComponent) // 0x74C0E2A57EC66760
--[[
More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
--]]
function FILES.GET_SHOP_PED_COMPONENT(componentHash, outComponent)
  native.invoke(
    Type.Void, 937, false,
    arg(Type.Hash, componentHash),
    ref(Type.Any, outComponent)
  )
end

-- void GET_SHOP_PED_QUERY_PROP(int componentId, Any* outProp) // 0xDE44A00999B2837D
--[[
See https://git.io/JtcRf for example and structs.
--]]
function FILES.GET_SHOP_PED_QUERY_PROP(componentId, outProp)
  native.invoke(
    Type.Void, 938, false,
    arg(Type.Int, componentId),
    ref(Type.Any, outProp)
  )
end

-- int GET_SHOP_PED_QUERY_PROP_INDEX(Hash componentHash) // 0x6CEBE002E58DEE97
--[[
Returns some sort of index/offset for props.
Needs _GET_NUM_PROPS_FROM_OUTFIT to be called with p3 = true and componentId = -1 first, returns -1 otherwise.
--]]
function FILES.GET_SHOP_PED_QUERY_PROP_INDEX(componentHash)
  return native.invoke(
    Type.Int, 939, false,
    arg(Type.Hash, componentHash)
  )
end

-- void GET_SHOP_PED_PROP(Hash componentHash, Any* outProp) // 0x5D5CAFF661DDF6FC
--[[
More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
--]]
function FILES.GET_SHOP_PED_PROP(componentHash, outProp)
  native.invoke(
    Type.Void, 940, false,
    arg(Type.Hash, componentHash),
    ref(Type.Any, outProp)
  )
end

-- Hash GET_HASH_NAME_FOR_COMPONENT(Entity entity, int componentId, int drawableVariant, int textureVariant) // 0x0368B3A838070348
function FILES.GET_HASH_NAME_FOR_COMPONENT(entity, componentId, drawableVariant, textureVariant)
  return native.invoke(
    Type.Hash, 941, false,
    arg(Type.Entity, entity),
    arg(Type.Int, componentId),
    arg(Type.Int, drawableVariant),
    arg(Type.Int, textureVariant)
  )
end

-- Hash GET_HASH_NAME_FOR_PROP(Entity entity, int componentId, int propIndex, int propTextureIndex) // 0x5D6160275CAEC8DD
function FILES.GET_HASH_NAME_FOR_PROP(entity, componentId, propIndex, propTextureIndex)
  return native.invoke(
    Type.Hash, 942, false,
    arg(Type.Entity, entity),
    arg(Type.Int, componentId),
    arg(Type.Int, propIndex),
    arg(Type.Int, propTextureIndex)
  )
end

-- int GET_SHOP_PED_APPAREL_VARIANT_COMPONENT_COUNT(Hash componentHash) // 0xC17AD0E5752BECDA
function FILES.GET_SHOP_PED_APPAREL_VARIANT_COMPONENT_COUNT(componentHash)
  return native.invoke(
    Type.Int, 943, false,
    arg(Type.Hash, componentHash)
  )
end

-- int GET_SHOP_PED_APPAREL_VARIANT_PROP_COUNT(Hash propHash) // 0xD40AAC51E8E4C663
--[[
`propHash`: Ped helmet prop hash?
This native returns 1 when the player helmet has a visor (there is another prop index for the same helmet with closed/opened visor variant) that can be toggled. 0 if there's no alternative version with a visor for this helmet prop.
--]]
function FILES.GET_SHOP_PED_APPAREL_VARIANT_PROP_COUNT(propHash)
  return native.invoke(
    Type.Int, 944, false,
    arg(Type.Hash, propHash)
  )
end

-- void GET_VARIANT_COMPONENT(Hash componentHash, int variantComponentIndex, Hash* nameHash, int* enumValue, int* componentType) // 0x6E11F282F11863B6
function FILES.GET_VARIANT_COMPONENT(componentHash, variantComponentIndex, nameHash, enumValue, componentType)
  native.invoke(
    Type.Void, 945, false,
    arg(Type.Hash, componentHash),
    arg(Type.Int, variantComponentIndex),
    ref(Type.Hash, nameHash),
    ref(Type.Int, enumValue),
    ref(Type.Int, componentType)
  )
end

-- void GET_VARIANT_PROP(Hash componentHash, int variantPropIndex, Hash* nameHash, int* enumValue, int* anchorPoint) // 0xD81B7F27BC773E66
function FILES.GET_VARIANT_PROP(componentHash, variantPropIndex, nameHash, enumValue, anchorPoint)
  native.invoke(
    Type.Void, 946, false,
    arg(Type.Hash, componentHash),
    arg(Type.Int, variantPropIndex),
    ref(Type.Hash, nameHash),
    ref(Type.Int, enumValue),
    ref(Type.Int, anchorPoint)
  )
end

-- int GET_SHOP_PED_APPAREL_FORCED_COMPONENT_COUNT(Hash componentHash) // 0xC6B9DB42C04DD8C3
--[[
Returns number of possible values of the forcedComponentIndex argument of GET_FORCED_COMPONENT.
--]]
function FILES.GET_SHOP_PED_APPAREL_FORCED_COMPONENT_COUNT(componentHash)
  return native.invoke(
    Type.Int, 947, false,
    arg(Type.Hash, componentHash)
  )
end

-- int GET_SHOP_PED_APPAREL_FORCED_PROP_COUNT(Hash componentHash) // 0x017568A8182D98A6
--[[
Returns number of possible values of the forcedPropIndex argument of GET_FORCED_PROP.
--]]
function FILES.GET_SHOP_PED_APPAREL_FORCED_PROP_COUNT(componentHash)
  return native.invoke(
    Type.Int, 948, false,
    arg(Type.Hash, componentHash)
  )
end

-- void GET_FORCED_COMPONENT(Hash componentHash, int forcedComponentIndex, Hash* nameHash, int* enumValue, int* componentType) // 0x6C93ED8C2F74859B
function FILES.GET_FORCED_COMPONENT(componentHash, forcedComponentIndex, nameHash, enumValue, componentType)
  native.invoke(
    Type.Void, 949, false,
    arg(Type.Hash, componentHash),
    arg(Type.Int, forcedComponentIndex),
    ref(Type.Hash, nameHash),
    ref(Type.Int, enumValue),
    ref(Type.Int, componentType)
  )
end

-- void GET_FORCED_PROP(Hash componentHash, int forcedPropIndex, Hash* nameHash, int* enumValue, int* anchorPoint) // 0xE1CA84EBF72E691D
function FILES.GET_FORCED_PROP(componentHash, forcedPropIndex, nameHash, enumValue, anchorPoint)
  native.invoke(
    Type.Void, 950, false,
    arg(Type.Hash, componentHash),
    arg(Type.Int, forcedPropIndex),
    ref(Type.Hash, nameHash),
    ref(Type.Int, enumValue),
    ref(Type.Int, anchorPoint)
  )
end

-- BOOL DOES_SHOP_PED_APPAREL_HAVE_RESTRICTION_TAG(Hash componentHash, Hash restrictionTagHash, int componentId) // 0x341DE7ED1D2A1BFD
--[[
Full list of restriction tags by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/pedApparelRestrictionTags.json

componentId/last parameter seems to be unused.
--]]
function FILES.DOES_SHOP_PED_APPAREL_HAVE_RESTRICTION_TAG(componentHash, restrictionTagHash, componentId)
  return native.invoke(
    Type.Bool, 951, false,
    arg(Type.Hash, componentHash),
    arg(Type.Hash, restrictionTagHash),
    arg(Type.Int, componentId)
  )
end

-- BOOL DOES_CURRENT_PED_COMPONENT_HAVE_RESTRICTION_TAG(Ped ped, int componentId, Hash restrictionTagHash) // 0x7796B21B76221BC5
function FILES.DOES_CURRENT_PED_COMPONENT_HAVE_RESTRICTION_TAG(ped, componentId, restrictionTagHash)
  return native.invoke(
    Type.Bool, 952, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId),
    arg(Type.Hash, restrictionTagHash)
  )
end

-- BOOL DOES_CURRENT_PED_PROP_HAVE_RESTRICTION_TAG(Ped ped, int componentId, Hash restrictionTagHash) // 0xD726BAB4554DA580
function FILES.DOES_CURRENT_PED_PROP_HAVE_RESTRICTION_TAG(ped, componentId, restrictionTagHash)
  return native.invoke(
    Type.Bool, 953, false,
    arg(Type.Ped, ped),
    arg(Type.Int, componentId),
    arg(Type.Hash, restrictionTagHash)
  )
end

-- int SETUP_SHOP_PED_OUTFIT_QUERY(int character, BOOL p1) // 0xF3FBE2D50A6A8C28
--[[
characters

0: Michael
1: Franklin
2: Trevor
3: MPMale
4: MPFemale
--]]
function FILES.SETUP_SHOP_PED_OUTFIT_QUERY(character, p1)
  return native.invoke(
    Type.Int, 954, false,
    arg(Type.Int, character),
    arg(Type.Bool, p1)
  )
end

-- void GET_SHOP_PED_QUERY_OUTFIT(int outfitIndex, Any* outfit) // 0x6D793F03A631FE56
--[[
outfitIndex: from 0 to SETUP_SHOP_PED_OUTFIT_QUERY(characterIndex, false) - 1.
See https://git.io/JtcB8 for example and outfit struct.
--]]
function FILES.GET_SHOP_PED_QUERY_OUTFIT(outfitIndex, outfit)
  native.invoke(
    Type.Void, 955, false,
    arg(Type.Int, outfitIndex),
    ref(Type.Any, outfit)
  )
end

-- void GET_SHOP_PED_OUTFIT(Any p0, Any* p1) // 0xB7952076E444979D
function FILES.GET_SHOP_PED_OUTFIT(p0, p1)
  native.invoke(
    Type.Void, 956, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- int GET_SHOP_PED_OUTFIT_LOCATE(Any p0) // 0x073CA26B079F956E
function FILES.GET_SHOP_PED_OUTFIT_LOCATE(p0)
  return native.invoke(
    Type.Int, 957, false,
    arg(Type.Any, p0)
  )
end

-- BOOL GET_SHOP_PED_OUTFIT_PROP_VARIANT(Hash outfitHash, int variantIndex, Any* outPropVariant) // 0xA9F9C2E0FDE11CBB
--[[
See https://git.io/JtcBH for example and structs.
--]]
function FILES.GET_SHOP_PED_OUTFIT_PROP_VARIANT(outfitHash, variantIndex, outPropVariant)
  return native.invoke(
    Type.Bool, 958, false,
    arg(Type.Hash, outfitHash),
    arg(Type.Int, variantIndex),
    ref(Type.Any, outPropVariant)
  )
end

-- BOOL GET_SHOP_PED_OUTFIT_COMPONENT_VARIANT(Hash outfitHash, int variantIndex, Any* outComponentVariant) // 0x19F2A026EDF0013F
--[[
See https://git.io/JtcBH for example and structs.
--]]
function FILES.GET_SHOP_PED_OUTFIT_COMPONENT_VARIANT(outfitHash, variantIndex, outComponentVariant)
  return native.invoke(
    Type.Bool, 959, false,
    arg(Type.Hash, outfitHash),
    arg(Type.Int, variantIndex),
    ref(Type.Any, outComponentVariant)
  )
end

-- int GET_NUM_DLC_VEHICLES() // 0xA7A866D21CD2329B
function FILES.GET_NUM_DLC_VEHICLES()
  return native.invoke(
    Type.Int, 960, false
  )
end

-- Hash GET_DLC_VEHICLE_MODEL(int dlcVehicleIndex) // 0xECC01B7C5763333C
--[[
dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS() - 1
--]]
function FILES.GET_DLC_VEHICLE_MODEL(dlcVehicleIndex)
  return native.invoke(
    Type.Hash, 961, false,
    arg(Type.Int, dlcVehicleIndex)
  )
end

-- BOOL GET_DLC_VEHICLE_DATA(int dlcVehicleIndex, Any* outData) // 0x33468EDC08E371F6
--[[
dlcVehicleIndex takes a number from 0 - GET_NUM_DLC_VEHICLES() - 1.
outData is a struct of 3 8-byte items.
The Second item in the struct *(Hash *)(outData + 1) is the vehicle hash.
--]]
function FILES.GET_DLC_VEHICLE_DATA(dlcVehicleIndex, outData)
  return native.invoke(
    Type.Bool, 962, false,
    arg(Type.Int, dlcVehicleIndex),
    ref(Type.Any, outData)
  )
end

-- int GET_DLC_VEHICLE_FLAGS(int dlcVehicleIndex) // 0x5549EE11FA22FCF2
function FILES.GET_DLC_VEHICLE_FLAGS(dlcVehicleIndex)
  return native.invoke(
    Type.Int, 963, false,
    arg(Type.Int, dlcVehicleIndex)
  )
end

-- int GET_NUM_DLC_WEAPONS() // 0xEE47635F352DA367
--[[
Returns the total number of DLC weapons.
--]]
function FILES.GET_NUM_DLC_WEAPONS()
  return native.invoke(
    Type.Int, 964, false
  )
end

-- int GET_NUM_DLC_WEAPONS_SP() // 0x4160B65AE085B5A9
--[[
Returns the total number of DLC weapons that are available in SP (availableInSP field in shop_weapon.meta).
--]]
function FILES.GET_NUM_DLC_WEAPONS_SP()
  return native.invoke(
    Type.Int, 965, false
  )
end

-- BOOL GET_DLC_WEAPON_DATA(int dlcWeaponIndex, Any* outData) // 0x79923CD21BECE14E
--[[

dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.
struct DlcWeaponData
{
int emptyCheck; //use DLC1::IS_CONTENT_ITEM_LOCKED on this
int padding1;
int weaponHash;
int padding2;
int unk;
int padding3;
int weaponCost;
int padding4;
int ammoCost;
int padding5;
int ammoType;
int padding6;
int defaultClipSize;
int padding7;
char nameLabel[64];
char descLabel[64];
char desc2Label[64]; // usually "the" + name
char upperCaseNameLabel[64];
};
--]]
function FILES.GET_DLC_WEAPON_DATA(dlcWeaponIndex, outData)
  return native.invoke(
    Type.Bool, 966, false,
    arg(Type.Int, dlcWeaponIndex),
    ref(Type.Any, outData)
  )
end

-- BOOL GET_DLC_WEAPON_DATA_SP(int dlcWeaponIndex, Any* outData) // 0x310836EE7129BA33
--[[
Same as GET_DLC_WEAPON_DATA but only works for DLC weapons that are available in SP.
--]]
function FILES.GET_DLC_WEAPON_DATA_SP(dlcWeaponIndex, outData)
  return native.invoke(
    Type.Bool, 967, false,
    arg(Type.Int, dlcWeaponIndex),
    ref(Type.Any, outData)
  )
end

-- int GET_NUM_DLC_WEAPON_COMPONENTS(int dlcWeaponIndex) // 0x405425358A7D61FE
--[[
Returns the total number of DLC weapon components.
--]]
function FILES.GET_NUM_DLC_WEAPON_COMPONENTS(dlcWeaponIndex)
  return native.invoke(
    Type.Int, 968, false,
    arg(Type.Int, dlcWeaponIndex)
  )
end

-- int GET_NUM_DLC_WEAPON_COMPONENTS_SP(int dlcWeaponIndex) // 0xAD2A7A6DFF55841B
--[[
Returns the total number of DLC weapon components that are available in SP.
--]]
function FILES.GET_NUM_DLC_WEAPON_COMPONENTS_SP(dlcWeaponIndex)
  return native.invoke(
    Type.Int, 969, false,
    arg(Type.Int, dlcWeaponIndex)
  )
end

-- BOOL GET_DLC_WEAPON_COMPONENT_DATA(int dlcWeaponIndex, int dlcWeapCompIndex, Any* ComponentDataPtr) // 0x6CF598A2957C2BF8
--[[
p0 seems to be the weapon index
p1 seems to be the weapon component index
struct DlcComponentData{
int attachBone;
int padding1;
int bActiveByDefault;
int padding2;
int unk;
int padding3;
int componentHash;
int padding4;
int unk2;
int padding5;
int componentCost;
int padding6;
char nameLabel[64];
char descLabel[64];
};

--]]
function FILES.GET_DLC_WEAPON_COMPONENT_DATA(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr)
  return native.invoke(
    Type.Bool, 970, false,
    arg(Type.Int, dlcWeaponIndex),
    arg(Type.Int, dlcWeapCompIndex),
    ref(Type.Any, ComponentDataPtr)
  )
end

-- BOOL GET_DLC_WEAPON_COMPONENT_DATA_SP(int dlcWeaponIndex, int dlcWeapCompIndex, Any* ComponentDataPtr) // 0x31D5E073B6F93CDC
--[[
Same as GET_DLC_WEAPON_COMPONENT_DATA but only works for DLC components that are available in SP.
--]]
function FILES.GET_DLC_WEAPON_COMPONENT_DATA_SP(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr)
  return native.invoke(
    Type.Bool, 971, false,
    arg(Type.Int, dlcWeaponIndex),
    arg(Type.Int, dlcWeapCompIndex),
    ref(Type.Any, ComponentDataPtr)
  )
end

-- BOOL IS_CONTENT_ITEM_LOCKED(Hash itemHash) // 0xD4D7B033C3AA243C
function FILES.IS_CONTENT_ITEM_LOCKED(itemHash)
  return native.invoke(
    Type.Bool, 972, false,
    arg(Type.Hash, itemHash)
  )
end

-- BOOL IS_DLC_VEHICLE_MOD(Hash hash) // 0x0564B9FF9631B82C
function FILES.IS_DLC_VEHICLE_MOD(hash)
  return native.invoke(
    Type.Bool, 973, false,
    arg(Type.Hash, hash)
  )
end

-- Hash GET_DLC_VEHICLE_MOD_LOCK_HASH(Hash hash) // 0xC098810437312FFF
function FILES.GET_DLC_VEHICLE_MOD_LOCK_HASH(hash)
  return native.invoke(
    Type.Hash, 974, false,
    arg(Type.Hash, hash)
  )
end

-- void EXECUTE_CONTENT_CHANGESET_GROUP_FOR_ALL(Hash hash) // 0x6BEDF5769AC2DC07
--[[
From fm_deathmatch_creator and fm_race_creator:

FILES::REVERT_CONTENT_CHANGESET_GROUP_FOR_ALL(joaat("GROUP_MAP_SP"));
FILES::EXECUTE_CONTENT_CHANGESET_GROUP_FOR_ALL(joaat("GROUP_MAP"));
--]]
function FILES.EXECUTE_CONTENT_CHANGESET_GROUP_FOR_ALL(hash)
  native.invoke(
    Type.Void, 975, false,
    arg(Type.Hash, hash)
  )
end

-- void REVERT_CONTENT_CHANGESET_GROUP_FOR_ALL(Hash hash) // 0x3C1978285B036B25
--[[
From fm_deathmatch_creator and fm_race_creator:

FILES::REVERT_CONTENT_CHANGESET_GROUP_FOR_ALL(joaat("GROUP_MAP_SP"));
FILES::EXECUTE_CONTENT_CHANGESET_GROUP_FOR_ALL(joaat("GROUP_MAP"));
--]]
function FILES.REVERT_CONTENT_CHANGESET_GROUP_FOR_ALL(hash)
  native.invoke(
    Type.Void, 976, false,
    arg(Type.Hash, hash)
  )
end


