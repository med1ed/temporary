STATS = {}

-- BOOL STAT_CLEAR_SLOT_FOR_RELOAD(int statSlot) // 0xEB0A72181D4AA4AD
--[[
Example:

for (v_2 = 0; v_2 <= 4; v_2 += 1) {
    STATS::STAT_CLEAR_SLOT_FOR_RELOAD(v_2);
}
--]]
function STATS.STAT_CLEAR_SLOT_FOR_RELOAD(statSlot)
  return native.invoke(
    Type.Bool, 4916, false,
    arg(Type.Int, statSlot)
  )
end

-- BOOL STAT_LOAD(int statSlot) // 0xA651443F437B1CE6
function STATS.STAT_LOAD(statSlot)
  return native.invoke(
    Type.Bool, 4917, false,
    arg(Type.Int, statSlot)
  )
end

-- BOOL STAT_SAVE(int p0, BOOL p1, int p2, BOOL p3) // 0xE07BCA305B82D2FD
function STATS.STAT_SAVE(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 4918, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Int, p2),
    arg(Type.Bool, p3)
  )
end

-- void STAT_SET_OPEN_SAVETYPE_IN_JOB(int p0) // 0x5688585E6D563CD8
function STATS.STAT_SET_OPEN_SAVETYPE_IN_JOB(p0)
  native.invoke(
    Type.Void, 4919, false,
    arg(Type.Int, p0)
  )
end

-- BOOL STAT_LOAD_PENDING(int statSlot) // 0xA1750FFAFA181661
function STATS.STAT_LOAD_PENDING(statSlot)
  return native.invoke(
    Type.Bool, 4920, false,
    arg(Type.Int, statSlot)
  )
end

-- BOOL STAT_SAVE_PENDING() // 0x7D3A583856F2C5AC
function STATS.STAT_SAVE_PENDING()
  return native.invoke(
    Type.Bool, 4921, false
  )
end

-- BOOL STAT_SAVE_PENDING_OR_REQUESTED() // 0xBBB6AD006F1BBEA3
function STATS.STAT_SAVE_PENDING_OR_REQUESTED()
  return native.invoke(
    Type.Bool, 4922, false
  )
end

-- BOOL STAT_DELETE_SLOT(int p0) // 0x49A49BED12794D70
--[[
p0 is characterSlot? seems range from 0 to 2
--]]
function STATS.STAT_DELETE_SLOT(p0)
  return native.invoke(
    Type.Bool, 4923, false,
    arg(Type.Int, p0)
  )
end

-- BOOL STAT_SLOT_IS_LOADED(int statSlot) // 0x0D0A9F0E7BD91E3C
function STATS.STAT_SLOT_IS_LOADED(statSlot)
  return native.invoke(
    Type.Bool, 4924, false,
    arg(Type.Int, statSlot)
  )
end

-- BOOL STAT_CLOUD_SLOT_LOAD_FAILED(int p0) // 0x7F2C4CDF2E82DF4C
function STATS.STAT_CLOUD_SLOT_LOAD_FAILED(p0)
  return native.invoke(
    Type.Bool, 4925, false,
    arg(Type.Int, p0)
  )
end

-- int STAT_CLOUD_SLOT_LOAD_FAILED_CODE(Any p0) // 0xE496A53BA5F50A56
function STATS.STAT_CLOUD_SLOT_LOAD_FAILED_CODE(p0)
  return native.invoke(
    Type.Int, 4926, false,
    arg(Type.Any, p0)
  )
end

-- void STAT_SET_BLOCK_SAVES(BOOL toggle) // 0xF434A10BA01C37D0
function STATS.STAT_SET_BLOCK_SAVES(toggle)
  native.invoke(
    Type.Void, 4927, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL STAT_GET_BLOCK_SAVES() // 0x6A7F19756F1A9016
function STATS.STAT_GET_BLOCK_SAVES()
  return native.invoke(
    Type.Bool, 4928, false
  )
end

-- BOOL STAT_CLOUD_SLOT_SAVE_FAILED(Any p0) // 0x7E6946F68A38B74F
function STATS.STAT_CLOUD_SLOT_SAVE_FAILED(p0)
  return native.invoke(
    Type.Bool, 4929, false,
    arg(Type.Any, p0)
  )
end

-- void STAT_CLEAR_PENDING_SAVES(Any p0) // 0xA8733668D1047B51
function STATS.STAT_CLEAR_PENDING_SAVES(p0)
  native.invoke(
    Type.Void, 4930, false,
    arg(Type.Any, p0)
  )
end

-- BOOL STAT_LOAD_DIRTY_READ_DETECTED() // 0xECB41AC6AB754401
function STATS.STAT_LOAD_DIRTY_READ_DETECTED()
  return native.invoke(
    Type.Bool, 4931, false
  )
end

-- void STAT_CLEAR_DIRTY_READ_DETECTED() // 0x9B4BD21D69B1E609
function STATS.STAT_CLEAR_DIRTY_READ_DETECTED()
  native.invoke(
    Type.Void, 4932, false
  )
end

-- BOOL STAT_GET_LOAD_SAFE_TO_PROGRESS_TO_MP_FROM_SP() // 0xC0E0D686DDFC6EAE
function STATS.STAT_GET_LOAD_SAFE_TO_PROGRESS_TO_MP_FROM_SP()
  return native.invoke(
    Type.Bool, 4933, false
  )
end

-- Hash _GET_STAT_HASH_FOR_CHARACTER_STAT(int dataType, int statIndex, int charSlot) // 0xD69CE161FE614531
--[[
Returns stat hash based on dataType, statIndex/statId and characterSlot. Related to CStatsMpCharacterMappingData
--]]
function STATS._GET_STAT_HASH_FOR_CHARACTER_STAT(dataType, statIndex, charSlot)
  return native.invoke(
    Type.Hash, 4934, false,
    arg(Type.Int, dataType),
    arg(Type.Int, statIndex),
    arg(Type.Int, charSlot)
  )
end

-- BOOL STAT_SET_INT(Hash statName, int value, BOOL save) // 0xB3271D7AB655B441
--[[
Example:
 STATS::STAT_SET_INT(MISC::GET_HASH_KEY("MPPLY_KILLS_PLAYERS"), 1337, true);
--]]
function STATS.STAT_SET_INT(statName, value, save)
  return native.invoke(
    Type.Bool, 4935, false,
    arg(Type.Hash, statName),
    arg(Type.Int, value),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_FLOAT(Hash statName, float value, BOOL save) // 0x4851997F37FE9B3C
--[[
Example:
 STATS::STAT_SET_FLOAT(MISC::GET_HASH_KEY("MP0_WEAPON_ACCURACY"), 66.6f, true);
--]]
function STATS.STAT_SET_FLOAT(statName, value, save)
  return native.invoke(
    Type.Bool, 4936, false,
    arg(Type.Hash, statName),
    arg(Type.Float, value),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_BOOL(Hash statName, BOOL value, BOOL save) // 0x4B33C4243DE0C432
--[[
Example:
 STATS::STAT_SET_BOOL(MISC::GET_HASH_KEY("MPPLY_MELEECHLENGECOMPLETED"), trur, true);
--]]
function STATS.STAT_SET_BOOL(statName, value, save)
  return native.invoke(
    Type.Bool, 4937, false,
    arg(Type.Hash, statName),
    arg(Type.Bool, value),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_GXT_LABEL(Hash statName, const char* value, BOOL save) // 0x17695002FD8B2AE0
--[[
The following values have been found in the decompiled scripts:
"RC_ABI1"
"RC_ABI2"
"RC_BA1"
"RC_BA2"
"RC_BA3"
"RC_BA3A"
"RC_BA3C"
"RC_BA4"
"RC_DRE1"
"RC_EPS1"
"RC_EPS2"
"RC_EPS3"
"RC_EPS4"
"RC_EPS5"
"RC_EPS6"
"RC_EPS7"
"RC_EPS8"
"RC_EXT1"
"RC_EXT2"
"RC_EXT3"
"RC_EXT4"
"RC_FAN1"
"RC_FAN2"
"RC_FAN3"
"RC_HAO1"
"RC_HUN1"
"RC_HUN2"
"RC_JOS1"
"RC_JOS2"
"RC_JOS3"
"RC_JOS4"
"RC_MAU1"
"RC_MIN1"
"RC_MIN2"
"RC_MIN3"
"RC_MRS1"
"RC_MRS2"
"RC_NI1"
"RC_NI1A"
"RC_NI1B"
"RC_NI1C"
"RC_NI1D"
"RC_NI2"
"RC_NI3"
"RC_OME1"
"RC_OME2"
"RC_PA1"
"RC_PA2"
"RC_PA3"
"RC_PA3A"
"RC_PA3B"
"RC_PA4"
"RC_RAM1"
"RC_RAM2"
"RC_RAM3"
"RC_RAM4"
"RC_RAM5"
"RC_SAS1"
"RC_TON1"
"RC_TON2"
"RC_TON3"
"RC_TON4"
"RC_TON5"
--]]
function STATS.STAT_SET_GXT_LABEL(statName, value, save)
  return native.invoke(
    Type.Bool, 4938, false,
    arg(Type.Hash, statName),
    arg(Type.String, value),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_DATE(Hash statName, Any* value, int numFields, BOOL save) // 0x2C29BFB64F4FCBE4
--[[
'value' is a structure to a structure, 'numFields' is how many fields there are in said structure (usually 7).

The structure looks like this:

int year
int month
int day
int hour
int minute
int second
int millisecond

The decompiled scripts use TIME::GET_POSIX_TIME to fill this structure.
--]]
function STATS.STAT_SET_DATE(statName, value, numFields, save)
  return native.invoke(
    Type.Bool, 4939, false,
    arg(Type.Hash, statName),
    ref(Type.Any, value),
    arg(Type.Int, numFields),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_STRING(Hash statName, const char* value, BOOL save) // 0xA87B2335D12531D7
function STATS.STAT_SET_STRING(statName, value, save)
  return native.invoke(
    Type.Bool, 4940, false,
    arg(Type.Hash, statName),
    arg(Type.String, value),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_POS(Hash statName, float x, float y, float z, BOOL save) // 0xDB283FDE680FE72E
function STATS.STAT_SET_POS(statName, x, y, z, save)
  return native.invoke(
    Type.Bool, 4941, false,
    arg(Type.Hash, statName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_MASKED_INT(Hash statName, int p1, int p2, int p3, BOOL save) // 0x7BBB1B54583ED410
function STATS.STAT_SET_MASKED_INT(statName, p1, p2, p3, save)
  return native.invoke(
    Type.Bool, 4942, false,
    arg(Type.Hash, statName),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_USER_ID(Hash statName, const char* value, BOOL save) // 0x8CDDF1E452BABE11
function STATS.STAT_SET_USER_ID(statName, value, save)
  return native.invoke(
    Type.Bool, 4943, false,
    arg(Type.Hash, statName),
    arg(Type.String, value),
    arg(Type.Bool, save)
  )
end

-- BOOL STAT_SET_CURRENT_POSIX_TIME(Hash statName, BOOL p1) // 0xC2F84B7F9C4D0C61
--[[
p1 always true.
--]]
function STATS.STAT_SET_CURRENT_POSIX_TIME(statName, p1)
  return native.invoke(
    Type.Bool, 4944, false,
    arg(Type.Hash, statName),
    arg(Type.Bool, p1)
  )
end

-- BOOL STAT_GET_INT(Hash statHash, int* outValue, int p2) // 0x767FBC2AC802EF3D
--[[
p2 appears to always be -1

--]]
function STATS.STAT_GET_INT(statHash, outValue, p2)
  return native.invoke(
    Type.Bool, 4945, false,
    arg(Type.Hash, statHash),
    ref(Type.Int, outValue),
    arg(Type.Int, p2)
  )
end

-- BOOL STAT_GET_FLOAT(Hash statHash, float* outValue, Any p2) // 0xD7AE6C9C9C6AC54C
function STATS.STAT_GET_FLOAT(statHash, outValue, p2)
  return native.invoke(
    Type.Bool, 4946, false,
    arg(Type.Hash, statHash),
    ref(Type.Float, outValue),
    arg(Type.Any, p2)
  )
end

-- BOOL STAT_GET_BOOL(Hash statHash, BOOL* outValue, Any p2) // 0x11B5E6D2AE73F48E
function STATS.STAT_GET_BOOL(statHash, outValue, p2)
  return native.invoke(
    Type.Bool, 4947, false,
    arg(Type.Hash, statHash),
    ref(Type.Bool, outValue),
    arg(Type.Any, p2)
  )
end

-- BOOL STAT_GET_DATE(Hash statHash, Any* outValue, int numFields, Any p3) // 0x8B0FACEFC36C824B
--[[
p3 is probably characterSlot or BOOL save, always -1
--]]
function STATS.STAT_GET_DATE(statHash, outValue, numFields, p3)
  return native.invoke(
    Type.Bool, 4948, false,
    arg(Type.Hash, statHash),
    ref(Type.Any, outValue),
    arg(Type.Int, numFields),
    arg(Type.Any, p3)
  )
end

-- const char* STAT_GET_STRING(Hash statHash, int p1) // 0xE50384ACC2C3DB74
--[[
p1 is always -1 in the script files
--]]
function STATS.STAT_GET_STRING(statHash, p1)
  return native.invoke(
    Type.String, 4949, false,
    arg(Type.Hash, statHash),
    arg(Type.Int, p1)
  )
end

-- BOOL STAT_GET_POS(Hash statName, float* outX, float* outY, float* outZ, Any p4) // 0x350F82CCB186AA1B
--[[
p3 is probably characterSlot or BOOL save, always -1
--]]
function STATS.STAT_GET_POS(statName, outX, outY, outZ, p4)
  return native.invoke(
    Type.Bool, 4950, false,
    arg(Type.Hash, statName),
    ref(Type.Float, outX),
    ref(Type.Float, outY),
    ref(Type.Float, outZ),
    arg(Type.Any, p4)
  )
end

-- BOOL STAT_GET_MASKED_INT(Hash statHash, int* outValue, int p2, int p3, Any p4) // 0x655185A06D9EEAAB
--[[
p4 is probably characterSlot or BOOL save
--]]
function STATS.STAT_GET_MASKED_INT(statHash, outValue, p2, p3, p4)
  return native.invoke(
    Type.Bool, 4951, false,
    arg(Type.Hash, statHash),
    ref(Type.Int, outValue),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Any, p4)
  )
end

-- const char* STAT_GET_USER_ID(Hash statHash) // 0x2365C388E393BBE2
--[[
Returns the rockstar ID (user id) value of a given stat. Returns "STAT_UNKNOWN" if the statHash is invalid or the stat has no userId
--]]
function STATS.STAT_GET_USER_ID(statHash)
  return native.invoke(
    Type.String, 4952, false,
    arg(Type.Hash, statHash)
  )
end

-- const char* STAT_GET_LICENSE_PLATE(Hash statName) // 0x5473D4195058B2E4
function STATS.STAT_GET_LICENSE_PLATE(statName)
  return native.invoke(
    Type.String, 4953, false,
    arg(Type.Hash, statName)
  )
end

-- BOOL STAT_SET_LICENSE_PLATE(Hash statName, const char* str) // 0x69FF13266D7296DA
function STATS.STAT_SET_LICENSE_PLATE(statName, str)
  return native.invoke(
    Type.Bool, 4954, false,
    arg(Type.Hash, statName),
    arg(Type.String, str)
  )
end

-- void STAT_INCREMENT(Hash statName, float value) // 0x9B5A68C6489E9909
function STATS.STAT_INCREMENT(statName, value)
  native.invoke(
    Type.Void, 4955, false,
    arg(Type.Hash, statName),
    arg(Type.Float, value)
  )
end

-- BOOL STAT_COMMUNITY_START_SYNCH() // 0x5A556B229A169402
function STATS.STAT_COMMUNITY_START_SYNCH()
  return native.invoke(
    Type.Bool, 4956, false
  )
end

-- BOOL STAT_COMMUNITY_SYNCH_IS_PENDING() // 0xB1D2BB1E1631F5B1
function STATS.STAT_COMMUNITY_SYNCH_IS_PENDING()
  return native.invoke(
    Type.Bool, 4957, false
  )
end

-- BOOL STAT_COMMUNITY_GET_HISTORY(Hash statName, int p1, float* outValue) // 0xBED9F5693F34ED17
function STATS.STAT_COMMUNITY_GET_HISTORY(statName, p1, outValue)
  return native.invoke(
    Type.Bool, 4958, false,
    arg(Type.Hash, statName),
    arg(Type.Int, p1),
    ref(Type.Float, outValue)
  )
end

-- void STAT_RESET_ALL_ONLINE_CHARACTER_STATS(int p0) // 0x26D7399B9587FE89
--[[
p0 seems to range from 0 to 7
--]]
function STATS.STAT_RESET_ALL_ONLINE_CHARACTER_STATS(p0)
  native.invoke(
    Type.Void, 4959, false,
    arg(Type.Int, p0)
  )
end

-- void STAT_LOCAL_RESET_ALL_ONLINE_CHARACTER_STATS(int p0) // 0xA78B8FA58200DA56
--[[
p0 seems to range from 0 to 7
--]]
function STATS.STAT_LOCAL_RESET_ALL_ONLINE_CHARACTER_STATS(p0)
  native.invoke(
    Type.Void, 4960, false,
    arg(Type.Int, p0)
  )
end

-- int STAT_GET_NUMBER_OF_DAYS(Hash statName) // 0xE0E854F5280FB769
function STATS.STAT_GET_NUMBER_OF_DAYS(statName)
  return native.invoke(
    Type.Int, 4961, false,
    arg(Type.Hash, statName)
  )
end

-- int STAT_GET_NUMBER_OF_HOURS(Hash statName) // 0xF2D4B2FE415AAFC3
function STATS.STAT_GET_NUMBER_OF_HOURS(statName)
  return native.invoke(
    Type.Int, 4962, false,
    arg(Type.Hash, statName)
  )
end

-- int STAT_GET_NUMBER_OF_MINUTES(Hash statName) // 0x7583B4BE4C5A41B5
function STATS.STAT_GET_NUMBER_OF_MINUTES(statName)
  return native.invoke(
    Type.Int, 4963, false,
    arg(Type.Hash, statName)
  )
end

-- int STAT_GET_NUMBER_OF_SECONDS(Hash statName) // 0x2CE056FF3723F00B
function STATS.STAT_GET_NUMBER_OF_SECONDS(statName)
  return native.invoke(
    Type.Int, 4964, false,
    arg(Type.Hash, statName)
  )
end

-- void STAT_SET_PROFILE_SETTING_VALUE(int profileSetting, int value) // 0x68F01422BE1D838F
--[[
Does not take effect immediately, unfortunately.

profileSetting seems to only be 936, 937 and 938 in scripts
--]]
function STATS.STAT_SET_PROFILE_SETTING_VALUE(profileSetting, value)
  native.invoke(
    Type.Void, 4965, false,
    arg(Type.Int, profileSetting),
    arg(Type.Int, value)
  )
end

-- void STATS_COMPLETED_CHARACTER_CREATION(Any p0) // 0xC01D2470F22CDE5A
--[[
This native does absolutely nothing, just a nullsub
--]]
function STATS.STATS_COMPLETED_CHARACTER_CREATION(p0)
  native.invoke(
    Type.Void, 4966, false,
    arg(Type.Any, p0)
  )
end

-- int PACKED_STAT_GET_INT_STAT_INDEX(int p0) // 0x94F12ABF9C79E339
--[[
Needs more research. Possibly used to calculate the "mask" when calling "STAT_SET_MASKED_INT"?
--]]
function STATS.PACKED_STAT_GET_INT_STAT_INDEX(p0)
  return native.invoke(
    Type.Int, 4967, false,
    arg(Type.Int, p0)
  )
end

-- Hash GET_PACKED_INT_STAT_KEY(int index, BOOL spStat, BOOL charStat, int character) // 0x61E111E323419E07
function STATS.GET_PACKED_INT_STAT_KEY(index, spStat, charStat, character)
  return native.invoke(
    Type.Hash, 4968, false,
    arg(Type.Int, index),
    arg(Type.Bool, spStat),
    arg(Type.Bool, charStat),
    arg(Type.Int, character)
  )
end

-- Hash GET_PACKED_TU_INT_STAT_KEY(int index, BOOL spStat, BOOL charStat, int character) // 0xD16C2AD6B8E32854
function STATS.GET_PACKED_TU_INT_STAT_KEY(index, spStat, charStat, character)
  return native.invoke(
    Type.Hash, 4969, false,
    arg(Type.Int, index),
    arg(Type.Bool, spStat),
    arg(Type.Bool, charStat),
    arg(Type.Int, character)
  )
end

-- Hash GET_PACKED_NG_INT_STAT_KEY(int index, BOOL spStat, BOOL charStat, int character, const char* section) // 0x2B4CDCA6F07FF3DA
--[[
Needs more research. Gets the stat name of a masked int?

section - values used in the decompiled scripts:
"_NGPSTAT_INT"
"_MP_NGPSTAT_INT"
"_MP_LRPSTAT_INT"
"_MP_APAPSTAT_INT"
"_MP_LR2PSTAT_INT"
"_MP_BIKEPSTAT_INT"
"_MP_IMPEXPPSTAT_INT"
"_MP_GUNRPSTAT_INT"
"_NGDLCPSTAT_INT"
"_MP_NGDLCPSTAT_INT"
"_DLCSMUGCHARPSTAT_INT"
"_GANGOPSPSTAT_INT"
"_BUSINESSBATPSTAT_INT"
"_ARENAWARSPSTAT_INT"
"_CASINOPSTAT_INT"
"_CASINOHSTPSTAT_INT"
--]]
function STATS.GET_PACKED_NG_INT_STAT_KEY(index, spStat, charStat, character, section)
  return native.invoke(
    Type.Hash, 4970, false,
    arg(Type.Int, index),
    arg(Type.Bool, spStat),
    arg(Type.Bool, charStat),
    arg(Type.Int, character),
    arg(Type.String, section)
  )
end

-- BOOL GET_PACKED_STAT_BOOL_CODE(int index, int characterSlot) // 0xDA7EBFC49AE3F1B0
function STATS.GET_PACKED_STAT_BOOL_CODE(index, characterSlot)
  return native.invoke(
    Type.Bool, 4971, false,
    arg(Type.Int, index),
    arg(Type.Int, characterSlot)
  )
end

-- int GET_PACKED_STAT_INT_CODE(int index, int characterSlot) // 0x0BC900A6FE73770C
function STATS.GET_PACKED_STAT_INT_CODE(index, characterSlot)
  return native.invoke(
    Type.Int, 4972, false,
    arg(Type.Int, index),
    arg(Type.Int, characterSlot)
  )
end

-- void SET_PACKED_STAT_BOOL_CODE(int index, BOOL value, int characterSlot) // 0xDB8A58AEAA67CD07
function STATS.SET_PACKED_STAT_BOOL_CODE(index, value, characterSlot)
  native.invoke(
    Type.Void, 4973, false,
    arg(Type.Int, index),
    arg(Type.Bool, value),
    arg(Type.Int, characterSlot)
  )
end

-- void SET_PACKED_STAT_INT_CODE(int index, int value, int characterSlot) // 0x1581503AE529CD2E
function STATS.SET_PACKED_STAT_INT_CODE(index, value, characterSlot)
  native.invoke(
    Type.Void, 4974, false,
    arg(Type.Int, index),
    arg(Type.Int, value),
    arg(Type.Int, characterSlot)
  )
end

-- void PLAYSTATS_BACKGROUND_SCRIPT_ACTION(const char* action, int value) // 0x5009DFD741329729
function STATS.PLAYSTATS_BACKGROUND_SCRIPT_ACTION(action, value)
  native.invoke(
    Type.Void, 4975, false,
    arg(Type.String, action),
    arg(Type.Int, value)
  )
end

-- void _PLAYSTATS_FLOW_LOW(float posX, float posY, float posZ, const char* p3, Any p4, int amount) // 0xE6A27CDA42887F93
--[[
p3: VehicleConversion, SCAdminCashGift
p4: 0
--]]
function STATS._PLAYSTATS_FLOW_LOW(posX, posY, posZ, p3, p4, amount)
  native.invoke(
    Type.Void, 4976, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.String, p3),
    arg(Type.Any, p4),
    arg(Type.Int, amount)
  )
end

-- void _PLAYSTATS_FLOW_MEDIUM(float x, float y, float z, const char* interiorAction, int p4, Hash p5) // 0xC4493521BAA12CCE
--[[
interiorAction: can either be InteriorEntry or InteriorExit
--]]
function STATS._PLAYSTATS_FLOW_MEDIUM(x, y, z, interiorAction, p4, p5)
  native.invoke(
    Type.Void, 4977, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.String, interiorAction),
    arg(Type.Int, p4),
    arg(Type.Hash, p5)
  )
end

-- void PLAYSTATS_NPC_INVITE(const char* p0) // 0x93054C88E6AA7C44
function STATS.PLAYSTATS_NPC_INVITE(p0)
  native.invoke(
    Type.Void, 4978, false,
    arg(Type.String, p0)
  )
end

-- void PLAYSTATS_AWARD_XP(int amount, Hash type, Hash category) // 0x46F917F6B4128FE4
function STATS.PLAYSTATS_AWARD_XP(amount, type, category)
  native.invoke(
    Type.Void, 4979, false,
    arg(Type.Int, amount),
    arg(Type.Hash, type),
    arg(Type.Hash, category)
  )
end

-- void PLAYSTATS_RANK_UP(int rank) // 0xC7F2DE41D102BFB4
function STATS.PLAYSTATS_RANK_UP(rank)
  native.invoke(
    Type.Void, 4980, false,
    arg(Type.Int, rank)
  )
end

-- void PLAYSTATS_STARTED_SESSION_IN_OFFLINEMODE() // 0x098760C7461724CD
function STATS.PLAYSTATS_STARTED_SESSION_IN_OFFLINEMODE()
  native.invoke(
    Type.Void, 4981, false
  )
end

-- void PLAYSTATS_ACTIVITY_DONE(int p0, int activityId, Any p2) // 0xA071E0ED98F91286
function STATS.PLAYSTATS_ACTIVITY_DONE(p0, activityId, p2)
  native.invoke(
    Type.Void, 4982, false,
    arg(Type.Int, p0),
    arg(Type.Int, activityId),
    arg(Type.Any, p2)
  )
end

-- void PLAYSTATS_LEAVE_JOB_CHAIN(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xC5BE134EC7BA96A0
function STATS.PLAYSTATS_LEAVE_JOB_CHAIN(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4983, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_MISSION_STARTED(const char* p0, Any p1, Any p2, BOOL p3) // 0xC19A2925C34D2231
function STATS.PLAYSTATS_MISSION_STARTED(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 4984, false,
    arg(Type.String, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Bool, p3)
  )
end

-- void PLAYSTATS_MISSION_OVER(const char* p0, Any p1, Any p2, BOOL p3, BOOL p4, BOOL p5) // 0x7C4BB33A8CED7324
function STATS.PLAYSTATS_MISSION_OVER(p0, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 4985, false,
    arg(Type.String, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5)
  )
end

-- void PLAYSTATS_MISSION_CHECKPOINT(const char* p0, Any p1, Any p2, Any p3) // 0xC900596A63978C1D
function STATS.PLAYSTATS_MISSION_CHECKPOINT(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 4986, false,
    arg(Type.String, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_RANDOM_MISSION_DONE(const char* name, Any p1, Any p2, Any p3) // 0x71862B1D855F32E1
function STATS.PLAYSTATS_RANDOM_MISSION_DONE(name, p1, p2, p3)
  native.invoke(
    Type.Void, 4987, false,
    arg(Type.String, name),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_ROS_BET(int amount, int act, Player player, float cm) // 0x121FB4DDDC2D5291
function STATS.PLAYSTATS_ROS_BET(amount, act, player, cm)
  native.invoke(
    Type.Void, 4988, false,
    arg(Type.Int, amount),
    arg(Type.Int, act),
    arg(Type.Player, player),
    arg(Type.Float, cm)
  )
end

-- void PLAYSTATS_RACE_CHECKPOINT(Vehicle p0, Any p1, int p2, int p3, Any p4) // 0x9C375C315099DDE4
function STATS.PLAYSTATS_RACE_CHECKPOINT(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4989, false,
    arg(Type.Vehicle, p0),
    arg(Type.Any, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Any, p4)
  )
end

-- BOOL PLAYSTATS_CREATE_MATCH_HISTORY_ID_2(int* playerAccountId, int* posixTime) // 0x6DEE77AFF8C21BD1
function STATS.PLAYSTATS_CREATE_MATCH_HISTORY_ID_2(playerAccountId, posixTime)
  return native.invoke(
    Type.Bool, 4990, false,
    ref(Type.Int, playerAccountId),
    ref(Type.Int, posixTime)
  )
end

-- void PLAYSTATS_MATCH_STARTED(Any p0, Any p1, Any p2) // 0xBC80E22DED931E3D
function STATS.PLAYSTATS_MATCH_STARTED(p0, p1, p2)
  native.invoke(
    Type.Void, 4991, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void PLAYSTATS_SHOP_ITEM(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x176852ACAAC173D1
function STATS.PLAYSTATS_SHOP_ITEM(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4992, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_CRATE_DROP_MISSION_DONE(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7) // 0x1CAE5D2E3F9A07F0
function STATS.PLAYSTATS_CRATE_DROP_MISSION_DONE(p0, p1, p2, p3, p4, p5, p6, p7)
  native.invoke(
    Type.Void, 4993, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7)
  )
end

-- void PLAYSTATS_CRATE_CREATED(float p0, float p1, float p2) // 0xAFC7E5E075A96F46
function STATS.PLAYSTATS_CRATE_CREATED(p0, p1, p2)
  native.invoke(
    Type.Void, 4994, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2)
  )
end

-- void PLAYSTATS_HOLD_UP_MISSION_DONE(Any p0, Any p1, Any p2, Any p3) // 0xCB00196B31C39EB1
function STATS.PLAYSTATS_HOLD_UP_MISSION_DONE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 4995, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_IMPORT_EXPORT_MISSION_DONE(Any p0, Any p1, Any p2, Any p3) // 0x2B69F5074C894811
function STATS.PLAYSTATS_IMPORT_EXPORT_MISSION_DONE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 4996, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_RACE_TO_POINT_MISSION_DONE(int p0, Any p1, Any p2, Any p3) // 0xADDD1C754E2E2914
function STATS.PLAYSTATS_RACE_TO_POINT_MISSION_DONE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 4997, false,
    arg(Type.Int, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_ACQUIRED_HIDDEN_PACKAGE(Any p0) // 0x79AB33F0FBFAC40C
function STATS.PLAYSTATS_ACQUIRED_HIDDEN_PACKAGE(p0)
  native.invoke(
    Type.Void, 4998, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_WEBSITE_VISITED(Hash scaleformHash, int p1) // 0xDDF24D535060F811
function STATS.PLAYSTATS_WEBSITE_VISITED(scaleformHash, p1)
  native.invoke(
    Type.Void, 4999, false,
    arg(Type.Hash, scaleformHash),
    arg(Type.Int, p1)
  )
end

-- void PLAYSTATS_FRIEND_ACTIVITY(int p0, BOOL p1) // 0x0F71DE29AB2258F1
function STATS.PLAYSTATS_FRIEND_ACTIVITY(p0, p1)
  native.invoke(
    Type.Void, 5000, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1)
  )
end

-- void PLAYSTATS_ODDJOB_DONE(int totalTimeMs, int p1, BOOL p2) // 0x69DEA3E9DB727B4C
--[[
This native does absolutely nothing, just a nullsub
--]]
function STATS.PLAYSTATS_ODDJOB_DONE(totalTimeMs, p1, p2)
  native.invoke(
    Type.Void, 5001, false,
    arg(Type.Int, totalTimeMs),
    arg(Type.Int, p1),
    arg(Type.Bool, p2)
  )
end

-- void PLAYSTATS_PROP_CHANGE(Ped p0, int p1, int p2, int p3) // 0xBA739D6D5A05D6E7
function STATS.PLAYSTATS_PROP_CHANGE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5002, false,
    arg(Type.Ped, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3)
  )
end

-- void PLAYSTATS_CLOTH_CHANGE(Ped p0, Any p1, Any p2, Any p3, Any p4) // 0x34B973047A2268B9
function STATS.PLAYSTATS_CLOTH_CHANGE(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5003, false,
    arg(Type.Ped, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_WEAPON_MODE_CHANGE(Hash weaponHash, Hash componentHashTo, Hash componentHashFrom) // 0xE95C8A1875A02CA4
--[[
This is a typo made by R*. It's supposed to be called PLAYSTATS_WEAPON_MOD_CHANGE.
--]]
function STATS.PLAYSTATS_WEAPON_MODE_CHANGE(weaponHash, componentHashTo, componentHashFrom)
  native.invoke(
    Type.Void, 5004, false,
    arg(Type.Hash, weaponHash),
    arg(Type.Hash, componentHashTo),
    arg(Type.Hash, componentHashFrom)
  )
end

-- void PLAYSTATS_CHEAT_APPLIED(const char* cheat) // 0x6058665D72302D3F
function STATS.PLAYSTATS_CHEAT_APPLIED(cheat)
  native.invoke(
    Type.Void, 5005, false,
    arg(Type.String, cheat)
  )
end

-- void PLAYSTATS_JOB_ACTIVITY_END(Any* p0, Any* p1, Any* p2, Any* p3) // 0xF8C54A461C3E11DC
function STATS.PLAYSTATS_JOB_ACTIVITY_END(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5006, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    ref(Type.Any, p2),
    ref(Type.Any, p3)
  )
end

-- void PLAYSTATS_JOB_BEND(Any* p0, Any* p1, Any* p2, Any* p3) // 0xF5BB8DAC426A52C0
function STATS.PLAYSTATS_JOB_BEND(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5007, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    ref(Type.Any, p2),
    ref(Type.Any, p3)
  )
end

-- void PLAYSTATS_JOB_LTS_END(Any* p0, Any* p1, Any* p2, Any* p3) // 0xA736CF7FB7C5BFF4
function STATS.PLAYSTATS_JOB_LTS_END(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5008, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    ref(Type.Any, p2),
    ref(Type.Any, p3)
  )
end

-- void PLAYSTATS_JOB_LTS_ROUND_END(Any* p0, Any* p1, Any* p2, Any* p3) // 0x14E0B2D1AD1044E0
function STATS.PLAYSTATS_JOB_LTS_ROUND_END(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5009, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    ref(Type.Any, p2),
    ref(Type.Any, p3)
  )
end

-- void PLAYSTATS_QUICKFIX_TOOL(int element, const char* item) // 0x90D0622866E80445
function STATS.PLAYSTATS_QUICKFIX_TOOL(element, item)
  native.invoke(
    Type.Void, 5010, false,
    arg(Type.Int, element),
    arg(Type.String, item)
  )
end

-- void PLAYSTATS_IDLE_KICK(int msStoodIdle) // 0x5DA3A8DE8CB6226F
function STATS.PLAYSTATS_IDLE_KICK(msStoodIdle)
  native.invoke(
    Type.Void, 5011, false,
    arg(Type.Int, msStoodIdle)
  )
end

-- void PLAYSTATS_SET_JOIN_TYPE(int joinType) // 0xD1032E482629049E
function STATS.PLAYSTATS_SET_JOIN_TYPE(joinType)
  native.invoke(
    Type.Void, 5012, false,
    arg(Type.Int, joinType)
  )
end

-- void PLAYSTATS_HEIST_SAVE_CHEAT(Hash hash, int p1) // 0xF4FF020A08BC8863
function STATS.PLAYSTATS_HEIST_SAVE_CHEAT(hash, p1)
  native.invoke(
    Type.Void, 5013, false,
    arg(Type.Hash, hash),
    arg(Type.Int, p1)
  )
end

-- void PLAYSTATS_APPEND_DIRECTOR_METRIC(Any* p0) // 0x46326E13DA4E0546
function STATS.PLAYSTATS_APPEND_DIRECTOR_METRIC(p0)
  native.invoke(
    Type.Void, 5014, false,
    ref(Type.Any, p0)
  )
end

-- void PLAYSTATS_AWARD_BAD_SPORT(int id) // 0x47B32F5611E6E483
function STATS.PLAYSTATS_AWARD_BAD_SPORT(id)
  native.invoke(
    Type.Void, 5015, false,
    arg(Type.Int, id)
  )
end

-- void PLAYSTATS_PEGASUS_AS_PERSONAL_AIRCRAFT(Hash modelHash) // 0x9572BD4DD6B72122
function STATS.PLAYSTATS_PEGASUS_AS_PERSONAL_AIRCRAFT(modelHash)
  native.invoke(
    Type.Void, 5016, false,
    arg(Type.Hash, modelHash)
  )
end

-- void _PLAYSTATS_SHOPMENU_NAV(Any p0, Any p1, Any p2, Any p3) // 0xF96E9EA876D9DC92
function STATS._PLAYSTATS_SHOPMENU_NAV(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5017, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_FM_EVENT_CHALLENGES(Any p0) // 0x6A60E43998228229
function STATS.PLAYSTATS_FM_EVENT_CHALLENGES(p0)
  native.invoke(
    Type.Void, 5018, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_VEHICLETARGET(Any p0) // 0xBFAFDB5FAAA5C5AB
function STATS.PLAYSTATS_FM_EVENT_VEHICLETARGET(p0)
  native.invoke(
    Type.Void, 5019, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_URBANWARFARE(Any p0) // 0x8C9D11605E59D955
function STATS.PLAYSTATS_FM_EVENT_URBANWARFARE(p0)
  native.invoke(
    Type.Void, 5020, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_CHECKPOINTCOLLECTION(Any p0) // 0x3DE3AA516FB126A4
function STATS.PLAYSTATS_FM_EVENT_CHECKPOINTCOLLECTION(p0)
  native.invoke(
    Type.Void, 5021, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_ATOB(Any p0) // 0xBAA2F0490E146BE8
function STATS.PLAYSTATS_FM_EVENT_ATOB(p0)
  native.invoke(
    Type.Void, 5022, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_PENNEDIN(Any p0) // 0x1A7CE7CD3E653485
function STATS.PLAYSTATS_FM_EVENT_PENNEDIN(p0)
  native.invoke(
    Type.Void, 5023, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_PASSTHEPARCEL(Any p0) // 0x419615486BBF1956
function STATS.PLAYSTATS_FM_EVENT_PASSTHEPARCEL(p0)
  native.invoke(
    Type.Void, 5024, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_HOTPROPERTY(Any p0) // 0x84DFC579C2FC214C
function STATS.PLAYSTATS_FM_EVENT_HOTPROPERTY(p0)
  native.invoke(
    Type.Void, 5025, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_DEADDROP(Any p0) // 0x0A9C7F36E5D7B683
function STATS.PLAYSTATS_FM_EVENT_DEADDROP(p0)
  native.invoke(
    Type.Void, 5026, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_KINGOFTHECASTLE(Any p0) // 0x164C5FF663790845
function STATS.PLAYSTATS_FM_EVENT_KINGOFTHECASTLE(p0)
  native.invoke(
    Type.Void, 5027, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_CRIMINALDAMAGE(Any p0) // 0xEDBF6C9B0D2C65C8
function STATS.PLAYSTATS_FM_EVENT_CRIMINALDAMAGE(p0)
  native.invoke(
    Type.Void, 5028, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_COMPETITIVEURBANWARFARE(Any p0) // 0x6551B1F7F6CD46EA
function STATS.PLAYSTATS_FM_EVENT_COMPETITIVEURBANWARFARE(p0)
  native.invoke(
    Type.Void, 5029, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_FM_EVENT_HUNTBEAST(Any p0) // 0x2CD90358F67D0AA8
function STATS.PLAYSTATS_FM_EVENT_HUNTBEAST(p0)
  native.invoke(
    Type.Void, 5030, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_PIMENU_HIDE_OPTIONS(Any* data) // 0x203B381133817079
function STATS.PLAYSTATS_PIMENU_HIDE_OPTIONS(data)
  native.invoke(
    Type.Void, 5031, false,
    ref(Type.Any, data)
  )
end

-- int LEADERBOARDS_GET_NUMBER_OF_COLUMNS(int p0, Any p1) // 0x117B45156D7EFF2E
function STATS.LEADERBOARDS_GET_NUMBER_OF_COLUMNS(p0, p1)
  return native.invoke(
    Type.Int, 5032, false,
    arg(Type.Int, p0),
    arg(Type.Any, p1)
  )
end

-- int LEADERBOARDS_GET_COLUMN_ID(int p0, int p1, int p2) // 0xC4B5467A1886EA7E
function STATS.LEADERBOARDS_GET_COLUMN_ID(p0, p1, p2)
  return native.invoke(
    Type.Int, 5033, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2)
  )
end

-- int LEADERBOARDS_GET_COLUMN_TYPE(int p0, Any p1, Any p2) // 0xBF4FEF46DB7894D3
function STATS.LEADERBOARDS_GET_COLUMN_TYPE(p0, p1, p2)
  return native.invoke(
    Type.Int, 5034, false,
    arg(Type.Int, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- int LEADERBOARDS_READ_CLEAR_ALL() // 0xA34CB6E6F0DF4A0B
function STATS.LEADERBOARDS_READ_CLEAR_ALL()
  return native.invoke(
    Type.Int, 5035, false
  )
end

-- int LEADERBOARDS_READ_CLEAR(Any p0, Any p1, Any p2) // 0x7CCE5C737A665701
function STATS.LEADERBOARDS_READ_CLEAR(p0, p1, p2)
  return native.invoke(
    Type.Int, 5036, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS_READ_PENDING(Any p0, Any p1, Any p2) // 0xAC392C8483342AC2
function STATS.LEADERBOARDS_READ_PENDING(p0, p1, p2)
  return native.invoke(
    Type.Bool, 5037, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS_READ_ANY_PENDING() // 0xA31FD15197B192BD
function STATS.LEADERBOARDS_READ_ANY_PENDING()
  return native.invoke(
    Type.Bool, 5038, false
  )
end

-- BOOL LEADERBOARDS_READ_SUCCESSFUL(Any p0, Any p1, Any p2) // 0x2FB19228983E832C
function STATS.LEADERBOARDS_READ_SUCCESSFUL(p0, p1, p2)
  return native.invoke(
    Type.Bool, 5039, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS2_READ_FRIENDS_BY_ROW(Any* p0, Any* p1, Any p2, BOOL p3, Any p4, Any p5) // 0x918B101666F9CB83
function STATS.LEADERBOARDS2_READ_FRIENDS_BY_ROW(p0, p1, p2, p3, p4, p5)
  return native.invoke(
    Type.Bool, 5040, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Bool, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- BOOL LEADERBOARDS2_READ_BY_HANDLE(Any* p0, Any* p1) // 0xC30713A383BFBF0E
function STATS.LEADERBOARDS2_READ_BY_HANDLE(p0, p1)
  return native.invoke(
    Type.Bool, 5041, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- BOOL LEADERBOARDS2_READ_BY_RANK(Any* p0, Any p1, Any p2) // 0xBA2C7DB0C129449A
function STATS.LEADERBOARDS2_READ_BY_RANK(p0, p1, p2)
  return native.invoke(
    Type.Bool, 5042, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS2_READ_BY_RADIUS(Any* p0, Any p1, Any* p2) // 0x5CE587FB5A42C8C4
function STATS.LEADERBOARDS2_READ_BY_RADIUS(p0, p1, p2)
  return native.invoke(
    Type.Bool, 5043, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1),
    ref(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS2_READ_BY_SCORE_INT(Any* p0, Any p1, Any p2) // 0x7EEC7E4F6984A16A
function STATS.LEADERBOARDS2_READ_BY_SCORE_INT(p0, p1, p2)
  return native.invoke(
    Type.Bool, 5044, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS2_READ_BY_SCORE_FLOAT(Any* p0, float p1, Any p2) // 0xE662C8B759D08F3C
function STATS.LEADERBOARDS2_READ_BY_SCORE_FLOAT(p0, p1, p2)
  return native.invoke(
    Type.Bool, 5045, false,
    ref(Type.Any, p0),
    arg(Type.Float, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS2_READ_RANK_PREDICTION(Any* p0, Any* p1, Any* p2) // 0xC38DC1E90D22547C
function STATS.LEADERBOARDS2_READ_RANK_PREDICTION(p0, p1, p2)
  return native.invoke(
    Type.Bool, 5046, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    ref(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS2_READ_BY_PLAFORM(Any* p0, const char* gamerHandleCsv, const char* platformName) // 0xF1AE5DCDBFCA2721
function STATS.LEADERBOARDS2_READ_BY_PLAFORM(p0, gamerHandleCsv, platformName)
  return native.invoke(
    Type.Bool, 5047, false,
    ref(Type.Any, p0),
    arg(Type.String, gamerHandleCsv),
    arg(Type.String, platformName)
  )
end

-- BOOL LEADERBOARDS2_READ_GET_ROW_DATA_START(Any* p0) // 0xA0F93D5465B3094D
function STATS.LEADERBOARDS2_READ_GET_ROW_DATA_START(p0)
  return native.invoke(
    Type.Bool, 5048, false,
    ref(Type.Any, p0)
  )
end

-- void LEADERBOARDS2_READ_GET_ROW_DATA_END() // 0x71B008056E5692D6
function STATS.LEADERBOARDS2_READ_GET_ROW_DATA_END()
  native.invoke(
    Type.Void, 5049, false
  )
end

-- BOOL LEADERBOARDS2_READ_GET_ROW_DATA_INFO(Any p0, Any* p1) // 0x34770B9CE0E03B91
function STATS.LEADERBOARDS2_READ_GET_ROW_DATA_INFO(p0, p1)
  return native.invoke(
    Type.Bool, 5050, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- int LEADERBOARDS2_READ_GET_ROW_DATA_INT(Any p0, Any p1) // 0x88578F6EC36B4A3A
function STATS.LEADERBOARDS2_READ_GET_ROW_DATA_INT(p0, p1)
  return native.invoke(
    Type.Int, 5051, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- float LEADERBOARDS2_READ_GET_ROW_DATA_FLOAT(Any p0, Any p1) // 0x38491439B6BA7F7D
function STATS.LEADERBOARDS2_READ_GET_ROW_DATA_FLOAT(p0, p1)
  return native.invoke(
    Type.Float, 5052, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL LEADERBOARDS2_WRITE_DATA(Any* p0) // 0xAE2206545888AE49
function STATS.LEADERBOARDS2_WRITE_DATA(p0)
  return native.invoke(
    Type.Bool, 5053, false,
    ref(Type.Any, p0)
  )
end

-- void LEADERBOARDS_WRITE_ADD_COLUMN(Any p0, Any p1, float p2) // 0x0BCA1D2C47B0D269
function STATS.LEADERBOARDS_WRITE_ADD_COLUMN(p0, p1, p2)
  native.invoke(
    Type.Void, 5054, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Float, p2)
  )
end

-- void LEADERBOARDS_WRITE_ADD_COLUMN_LONG(Any p0, Any p1, Any p2) // 0x2E65248609523599
function STATS.LEADERBOARDS_WRITE_ADD_COLUMN_LONG(p0, p1, p2)
  native.invoke(
    Type.Void, 5055, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL LEADERBOARDS_CACHE_DATA_ROW(Any* p0) // 0xB9BB18E2C40142ED
function STATS.LEADERBOARDS_CACHE_DATA_ROW(p0)
  return native.invoke(
    Type.Bool, 5056, false,
    ref(Type.Any, p0)
  )
end

-- void LEADERBOARDS_CLEAR_CACHE_DATA() // 0xD4B02A6B476E1FDC
function STATS.LEADERBOARDS_CLEAR_CACHE_DATA()
  native.invoke(
    Type.Void, 5057, false
  )
end

-- void LEADERBOARDS_CLEAR_CACHE_DATA_ID(Any p0) // 0x8EC74CEB042E7CFF
function STATS.LEADERBOARDS_CLEAR_CACHE_DATA_ID(p0)
  native.invoke(
    Type.Void, 5058, false,
    arg(Type.Any, p0)
  )
end

-- BOOL LEADERBOARDS_GET_CACHE_EXISTS(Any p0) // 0x9C51349BE6CDFE2C
function STATS.LEADERBOARDS_GET_CACHE_EXISTS(p0)
  return native.invoke(
    Type.Bool, 5059, false,
    arg(Type.Any, p0)
  )
end

-- int LEADERBOARDS_GET_CACHE_TIME(Any p0) // 0xF04C1C27DA35F6C8
function STATS.LEADERBOARDS_GET_CACHE_TIME(p0)
  return native.invoke(
    Type.Int, 5060, false,
    arg(Type.Any, p0)
  )
end

-- int LEADERBOARDS_GET_CACHE_NUMBER_OF_ROWS(Any p0) // 0x58A651CD201D89AD
function STATS.LEADERBOARDS_GET_CACHE_NUMBER_OF_ROWS(p0)
  return native.invoke(
    Type.Int, 5061, false,
    arg(Type.Any, p0)
  )
end

-- BOOL LEADERBOARDS_GET_CACHE_DATA_ROW(Any p0, Any p1, Any* p2) // 0x9120E8DBA3D69273
function STATS.LEADERBOARDS_GET_CACHE_DATA_ROW(p0, p1, p2)
  return native.invoke(
    Type.Bool, 5062, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    ref(Type.Any, p2)
  )
end

-- void PRESENCE_EVENT_UPDATESTAT_INT(Hash statHash, int value, int p2) // 0x11FF1C80276097ED
function STATS.PRESENCE_EVENT_UPDATESTAT_INT(statHash, value, p2)
  native.invoke(
    Type.Void, 5063, false,
    arg(Type.Hash, statHash),
    arg(Type.Int, value),
    arg(Type.Int, p2)
  )
end

-- void PRESENCE_EVENT_UPDATESTAT_FLOAT(Hash statHash, float value, int p2) // 0x30A6614C1F7799B8
function STATS.PRESENCE_EVENT_UPDATESTAT_FLOAT(statHash, value, p2)
  native.invoke(
    Type.Void, 5064, false,
    arg(Type.Hash, statHash),
    arg(Type.Float, value),
    arg(Type.Int, p2)
  )
end

-- void PRESENCE_EVENT_UPDATESTAT_INT_WITH_STRING(Hash statHash, int value, int p2, const char* string) // 0x6483C25849031C4F
function STATS.PRESENCE_EVENT_UPDATESTAT_INT_WITH_STRING(statHash, value, p2, string)
  native.invoke(
    Type.Void, 5065, false,
    arg(Type.Hash, statHash),
    arg(Type.Int, value),
    arg(Type.Int, p2),
    arg(Type.String, string)
  )
end

-- BOOL GET_PLAYER_HAS_DRIVEN_ALL_VEHICLES() // 0x5EAD2BF6484852E4
function STATS.GET_PLAYER_HAS_DRIVEN_ALL_VEHICLES()
  return native.invoke(
    Type.Bool, 5066, false
  )
end

-- void SET_HAS_POSTED_ALL_VEHICLES_DRIVEN() // 0xC141B8917E0017EC
function STATS.SET_HAS_POSTED_ALL_VEHICLES_DRIVEN()
  native.invoke(
    Type.Void, 5067, false
  )
end

-- void SET_PROFILE_SETTING_PROLOGUE_COMPLETE() // 0xB475F27C6A994D65
function STATS.SET_PROFILE_SETTING_PROLOGUE_COMPLETE()
  native.invoke(
    Type.Void, 5068, false
  )
end

-- void SET_PROFILE_SETTING_SP_CHOP_MISSION_COMPLETE() // 0xC67E2DA1CBE759E2
--[[
Sets profile setting 939
--]]
function STATS.SET_PROFILE_SETTING_SP_CHOP_MISSION_COMPLETE()
  native.invoke(
    Type.Void, 5069, false
  )
end

-- void SET_PROFILE_SETTING_CREATOR_RACES_DONE(int value) // 0xF1A1803D3476F215
--[[
Sets profile setting 933
--]]
function STATS.SET_PROFILE_SETTING_CREATOR_RACES_DONE(value)
  native.invoke(
    Type.Void, 5070, false,
    arg(Type.Int, value)
  )
end

-- void SET_PROFILE_SETTING_CREATOR_DM_DONE(int value) // 0x38BAAA5DD4C9D19F
--[[
Sets profile setting 934
--]]
function STATS.SET_PROFILE_SETTING_CREATOR_DM_DONE(value)
  native.invoke(
    Type.Void, 5071, false,
    arg(Type.Int, value)
  )
end

-- void SET_PROFILE_SETTING_CREATOR_CTF_DONE(int value) // 0x55384438FC55AD8E
--[[
Sets profile setting 935
--]]
function STATS.SET_PROFILE_SETTING_CREATOR_CTF_DONE(value)
  native.invoke(
    Type.Void, 5072, false,
    arg(Type.Int, value)
  )
end

-- void SET_JOB_ACTIVITY_ID_STARTED(Any p0, int characterSlot) // 0x723C1CE13FBFDB67
function STATS.SET_JOB_ACTIVITY_ID_STARTED(p0, characterSlot)
  native.invoke(
    Type.Void, 5073, false,
    arg(Type.Any, p0),
    arg(Type.Int, characterSlot)
  )
end

-- void SET_FREEMODE_PROLOGUE_DONE(Any p0, int characterSlot) // 0x0D01D20616FC73FB
function STATS.SET_FREEMODE_PROLOGUE_DONE(p0, characterSlot)
  native.invoke(
    Type.Void, 5074, false,
    arg(Type.Any, p0),
    arg(Type.Int, characterSlot)
  )
end

-- void SET_FREEMODE_STRAND_PROGRESSION_STATUS(int profileSetting, int settingValue) // 0x79D310A861697CC9
--[[
Sets profile setting 940 and 941
--]]
function STATS.SET_FREEMODE_STRAND_PROGRESSION_STATUS(profileSetting, settingValue)
  native.invoke(
    Type.Void, 5075, false,
    arg(Type.Int, profileSetting),
    arg(Type.Int, settingValue)
  )
end

-- void STAT_NETWORK_INCREMENT_ON_SUICIDE(Any p0, float p1) // 0x428EAF89E24F6C36
function STATS.STAT_NETWORK_INCREMENT_ON_SUICIDE(p0, p1)
  native.invoke(
    Type.Void, 5076, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1)
  )
end

-- void STAT_SET_CHEAT_IS_ACTIVE() // 0x047CBED6F6F8B63C
function STATS.STAT_SET_CHEAT_IS_ACTIVE()
  native.invoke(
    Type.Void, 5077, false
  )
end

-- BOOL LEADERBOARDS2_WRITE_DATA_FOR_EVENT_TYPE(Any* p0, Any* p1) // 0xC980E62E33DF1D5C
function STATS.LEADERBOARDS2_WRITE_DATA_FOR_EVENT_TYPE(p0, p1)
  return native.invoke(
    Type.Bool, 5078, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- void FORCE_CLOUD_MP_STATS_DOWNLOAD_AND_OVERWRITE_LOCAL_SAVE() // 0x6F361B8889A792A3
function STATS.FORCE_CLOUD_MP_STATS_DOWNLOAD_AND_OVERWRITE_LOCAL_SAVE()
  native.invoke(
    Type.Void, 5079, false
  )
end

-- void STAT_MIGRATE_CLEAR_FOR_RESTART() // 0xC847B43F369AC0B5
function STATS.STAT_MIGRATE_CLEAR_FOR_RESTART()
  native.invoke(
    Type.Void, 5080, false
  )
end

-- BOOL STAT_MIGRATE_SAVEGAME_START(const char* platformName) // 0xA5C80D8E768A9E66
--[[
platformName must be one of the following: ps3, xbox360, ps4, xboxone
--]]
function STATS.STAT_MIGRATE_SAVEGAME_START(platformName)
  return native.invoke(
    Type.Bool, 5081, false,
    arg(Type.String, platformName)
  )
end

-- int STAT_MIGRATE_SAVEGAME_GET_STATUS() // 0x9A62EC95AE10E011
function STATS.STAT_MIGRATE_SAVEGAME_GET_STATUS()
  return native.invoke(
    Type.Int, 5082, false
  )
end

-- BOOL STAT_MIGRATE_CHECK_ALREADY_DONE() // 0x4C89FE2BDEB3F169
function STATS.STAT_MIGRATE_CHECK_ALREADY_DONE()
  return native.invoke(
    Type.Bool, 5083, false
  )
end

-- BOOL STAT_MIGRATE_CHECK_START() // 0xC6E0E2616A7576BB
function STATS.STAT_MIGRATE_CHECK_START()
  return native.invoke(
    Type.Bool, 5084, false
  )
end

-- int STAT_MIGRATE_CHECK_GET_IS_PLATFORM_AVAILABLE(int p0) // 0x5BD5F255321C4AAF
function STATS.STAT_MIGRATE_CHECK_GET_IS_PLATFORM_AVAILABLE(p0)
  return native.invoke(
    Type.Int, 5085, false,
    arg(Type.Int, p0)
  )
end

-- int STAT_MIGRATE_CHECK_GET_PLATFORM_STATUS(int p0, Any* p1) // 0xDEAAF77EB3687E97
function STATS.STAT_MIGRATE_CHECK_GET_PLATFORM_STATUS(p0, p1)
  return native.invoke(
    Type.Int, 5086, false,
    arg(Type.Int, p0),
    ref(Type.Any, p1)
  )
end

-- int STAT_GET_SAVE_MIGRATION_STATUS(Any* data) // 0x886913BBEACA68C1
function STATS.STAT_GET_SAVE_MIGRATION_STATUS(data)
  return native.invoke(
    Type.Int, 5087, false,
    ref(Type.Any, data)
  )
end

-- BOOL STAT_SAVE_MIGRATION_CANCEL_PENDING_OPERATION() // 0x4FEF53183C3C6414
function STATS.STAT_SAVE_MIGRATION_CANCEL_PENDING_OPERATION()
  return native.invoke(
    Type.Bool, 5088, false
  )
end

-- int STAT_GET_CANCEL_SAVE_MIGRATION_STATUS() // 0x567384DFA67029E6
function STATS.STAT_GET_CANCEL_SAVE_MIGRATION_STATUS()
  return native.invoke(
    Type.Int, 5089, false
  )
end

-- BOOL STAT_SAVE_MIGRATION_CONSUME_CONTENT(Hash contentId, const char* srcPlatform, const char* srcGamerHandle) // 0x3270F67EED31FBC1
function STATS.STAT_SAVE_MIGRATION_CONSUME_CONTENT(contentId, srcPlatform, srcGamerHandle)
  return native.invoke(
    Type.Bool, 5090, false,
    arg(Type.Hash, contentId),
    arg(Type.String, srcPlatform),
    arg(Type.String, srcGamerHandle)
  )
end

-- int STAT_GET_SAVE_MIGRATION_CONSUME_CONTENT_STATUS(int* p0) // 0xCE5AA445ABA8DEE0
function STATS.STAT_GET_SAVE_MIGRATION_CONSUME_CONTENT_STATUS(p0)
  return native.invoke(
    Type.Int, 5091, false,
    ref(Type.Int, p0)
  )
end

-- void STAT_ENABLE_STATS_TRACKING() // 0x98E2BC1CA26287C3
function STATS.STAT_ENABLE_STATS_TRACKING()
  native.invoke(
    Type.Void, 5092, false
  )
end

-- void STAT_DISABLE_STATS_TRACKING() // 0x629526ABA383BCAA
--[[
Prevents updates to CStatsMgr (e.g., STAT_SET_* natives)
--]]
function STATS.STAT_DISABLE_STATS_TRACKING()
  native.invoke(
    Type.Void, 5093, false
  )
end

-- BOOL STAT_IS_STATS_TRACKING_ENABLED() // 0xBE3DB208333D9844
function STATS.STAT_IS_STATS_TRACKING_ENABLED()
  return native.invoke(
    Type.Bool, 5094, false
  )
end

-- BOOL STAT_START_RECORD_STAT(int statType, int valueType) // 0x33D72899E24C3365
--[[
enum StatTrackingType
{
	LongestWheelie = 1,
	LongestStoppie = 2,
	NoCrashes = 3,
	HighestSpeed = 4,
	_MostFlips = 5,
	_LongestSpin = 6,
	_HighestJumpReached = 7,
	LongestJump = 8,
	_NearMissesNoCrash = 9,
	LongestFallSurvived = 10,
	LowestParachute = 11,
	ReverseDriving = 12,
	LongestFreefall = 13,
	VehiclesStolen = 14,
	_SomeCFireEventCount = 15,
	_Unk16 = 16,
	_LowFlyingTime = 17,
	LowFlying = 18,
	_InvertedFlyingTime = 19,
	InvertedFlying = 20,
	_PlaneSpinCount = 21,
	MeleeKills = 22, // Players
	_LongestSniperKill = 23,
	SniperSkills = 24, // Players
	DrivebyKills = 25, // Players
	HeadshotKills = 26, // Players
	LongestBail = 27,
	_TotalRammedByCar = 28,
	NearMissesPrecise = 29,
	_FreefallTime = 30,
	Unk31 = 31,
}

enum StatTrackingValueType
{
	Total,
	Max,
	Min
}
--]]
function STATS.STAT_START_RECORD_STAT(statType, valueType)
  return native.invoke(
    Type.Bool, 5095, false,
    arg(Type.Int, statType),
    arg(Type.Int, valueType)
  )
end

-- BOOL STAT_STOP_RECORD_STAT() // 0xA761D4AC6115623D
function STATS.STAT_STOP_RECORD_STAT()
  return native.invoke(
    Type.Bool, 5096, false
  )
end

-- BOOL STAT_GET_RECORDED_VALUE(float* value) // 0xF11F01D98113536A
function STATS.STAT_GET_RECORDED_VALUE(value)
  return native.invoke(
    Type.Bool, 5097, false,
    ref(Type.Float, value)
  )
end

-- BOOL STAT_IS_RECORDING_STAT() // 0x8B9CDBD6C566C38C
function STATS.STAT_IS_RECORDING_STAT()
  return native.invoke(
    Type.Bool, 5098, false
  )
end

-- int STAT_GET_CURRENT_NEAR_MISS_NOCRASH_PRECISE() // 0xE8853FBCE7D8D0D6
--[[
Perform the most near misses with other vehicles in a land vehicle without crashing
--]]
function STATS.STAT_GET_CURRENT_NEAR_MISS_NOCRASH_PRECISE()
  return native.invoke(
    Type.Int, 5099, false
  )
end

-- float STAT_GET_CURRENT_REAR_WHEEL_DISTANCE() // 0xA943FD1722E11EFD
--[[
Perform the longest wheelie on a motorcycle
--]]
function STATS.STAT_GET_CURRENT_REAR_WHEEL_DISTANCE()
  return native.invoke(
    Type.Float, 5100, false
  )
end

-- float STAT_GET_CURRENT_FRONT_WHEEL_DISTANCE() // 0x84A810B375E69C0E
--[[
Perform the longest stoppie on a motorcycle
--]]
function STATS.STAT_GET_CURRENT_FRONT_WHEEL_DISTANCE()
  return native.invoke(
    Type.Float, 5101, false
  )
end

-- float STAT_GET_CURRENT_JUMP_DISTANCE() // 0x9EC8858184CD253A
--[[
Perform the longest jump in a land vehicle
--]]
function STATS.STAT_GET_CURRENT_JUMP_DISTANCE()
  return native.invoke(
    Type.Float, 5102, false
  )
end

-- float STAT_GET_CURRENT_DRIVE_NOCRASH_DISTANCE() // 0xBA9749CC94C1FD85
--[[
Drive the furthest distance in a land vehicle without crashing
--]]
function STATS.STAT_GET_CURRENT_DRIVE_NOCRASH_DISTANCE()
  return native.invoke(
    Type.Float, 5103, false
  )
end

-- float STAT_GET_CURRENT_SPEED() // 0x55A8BECAF28A4EB7
--[[
Achieve the highest speed in a land vehicle
--]]
function STATS.STAT_GET_CURRENT_SPEED()
  return native.invoke(
    Type.Float, 5104, false
  )
end

-- float STAT_GET_CURRENT_DRIVING_REVERSE_DISTANCE() // 0x32CAC93C9DE73D32
--[[
Reverse the longest distance without crashing
--]]
function STATS.STAT_GET_CURRENT_DRIVING_REVERSE_DISTANCE()
  return native.invoke(
    Type.Float, 5105, false
  )
end

-- float STAT_GET_CURRENT_SKYDIVING_DISTANCE() // 0xAFF47709F1D5DCCE
--[[
Fall the longest distance with a parachute before opening it
--]]
function STATS.STAT_GET_CURRENT_SKYDIVING_DISTANCE()
  return native.invoke(
    Type.Float, 5106, false
  )
end

-- float STAT_GET_CHALLENGE_FLYING_DIST() // 0x6E0A5253375C4584
--[[
Fly low to the ground for the longest distance
--]]
function STATS.STAT_GET_CHALLENGE_FLYING_DIST()
  return native.invoke(
    Type.Float, 5107, false
  )
end

-- BOOL STAT_GET_FLYING_ALTITUDE(float* outValue) // 0x1A8EA222F9C67DBB
function STATS.STAT_GET_FLYING_ALTITUDE(outValue)
  return native.invoke(
    Type.Bool, 5108, false,
    ref(Type.Float, outValue)
  )
end

-- BOOL STAT_IS_PLAYER_VEHICLE_ABOVE_OCEAN() // 0xF9F2922717B819EC
--[[
Or non-flyable area
--]]
function STATS.STAT_IS_PLAYER_VEHICLE_ABOVE_OCEAN()
  return native.invoke(
    Type.Bool, 5109, false
  )
end

-- float STAT_GET_VEHICLE_BAIL_DISTANCE() // 0x0B8B7F74BF061C6D
--[[
Travel the furthest distance when bailing from a vehicle
--]]
function STATS.STAT_GET_VEHICLE_BAIL_DISTANCE()
  return native.invoke(
    Type.Float, 5110, false
  )
end

-- BOOL STAT_ROLLBACK_SAVE_MIGRATION() // 0xB3DA2606774A8E2D
--[[
This function is hard-coded to always return 1.
--]]
function STATS.STAT_ROLLBACK_SAVE_MIGRATION()
  return native.invoke(
    Type.Bool, 5111, false
  )
end

-- void SET_HAS_SPECIALEDITION_CONTENT(int value) // 0xDAC073C7901F9E15
--[[
Sets profile setting 866
--]]
function STATS.SET_HAS_SPECIALEDITION_CONTENT(value)
  native.invoke(
    Type.Void, 5112, false,
    arg(Type.Int, value)
  )
end

-- void SET_SAVE_MIGRATION_TRANSACTION_ID_WARNING(int transactionId) // 0xF6792800AC95350D
--[[
Sets profile setting 501
--]]
function STATS.SET_SAVE_MIGRATION_TRANSACTION_ID_WARNING(transactionId)
  native.invoke(
    Type.Void, 5113, false,
    arg(Type.Int, transactionId)
  )
end

-- void GET_BOSS_GOON_UUID(int characterSlot, Any p1, Any p2) // 0x6BC0ACD0673ACEBE
function STATS.GET_BOSS_GOON_UUID(characterSlot, p1, p2)
  native.invoke(
    Type.Void, 5114, false,
    arg(Type.Int, characterSlot),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void PLAYSTATS_BW_BOSSONBOSSDEATHMATCH(Any p0) // 0x8D8ADB562F09A245
function STATS.PLAYSTATS_BW_BOSSONBOSSDEATHMATCH(p0)
  native.invoke(
    Type.Void, 5115, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BW_YATCHATTACK(Any p0) // 0xD1A1EE3B4FA8E760
function STATS.PLAYSTATS_BW_YATCHATTACK(p0)
  native.invoke(
    Type.Void, 5116, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BW_HUNT_THE_BOSS(Any p0) // 0x88087EE1F28024AE
function STATS.PLAYSTATS_BW_HUNT_THE_BOSS(p0)
  native.invoke(
    Type.Void, 5117, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BW_SIGHTSEER(Any p0) // 0xFCC228E07217FCAC
function STATS.PLAYSTATS_BW_SIGHTSEER(p0)
  native.invoke(
    Type.Void, 5118, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BW_ASSAULT(Any p0) // 0x678F86D8FC040BDB
function STATS.PLAYSTATS_BW_ASSAULT(p0)
  native.invoke(
    Type.Void, 5119, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BW_BELLY_OF_THE_BEAST(Any p0) // 0xA6F54BB2FFCA35EA
function STATS.PLAYSTATS_BW_BELLY_OF_THE_BEAST(p0)
  native.invoke(
    Type.Void, 5120, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BW_HEAD_HUNTER(Any p0) // 0x5FF2C33B13A02A11
function STATS.PLAYSTATS_BW_HEAD_HUNTER(p0)
  native.invoke(
    Type.Void, 5121, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BW_FRAGILE_GOODS(Any p0) // 0x282B6739644F4347
function STATS.PLAYSTATS_BW_FRAGILE_GOODS(p0)
  native.invoke(
    Type.Void, 5122, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BW_AIR_FREIGHT(Any p0) // 0xF06A6F41CB445443
function STATS.PLAYSTATS_BW_AIR_FREIGHT(p0)
  native.invoke(
    Type.Void, 5123, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BC_CAR_JACKING(Any p0) // 0x7B18DA61F6BAE9D5
function STATS.PLAYSTATS_BC_CAR_JACKING(p0)
  native.invoke(
    Type.Void, 5124, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BC_SMASH_AND_GRAB(Any p0) // 0x06EAF70AE066441E
function STATS.PLAYSTATS_BC_SMASH_AND_GRAB(p0)
  native.invoke(
    Type.Void, 5125, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BC_PROTECTION_RACKET(Any p0) // 0x14EDA9EE27BD1626
function STATS.PLAYSTATS_BC_PROTECTION_RACKET(p0)
  native.invoke(
    Type.Void, 5126, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BC_MOST_WANTED(Any p0) // 0x930F504203F561C9
function STATS.PLAYSTATS_BC_MOST_WANTED(p0)
  native.invoke(
    Type.Void, 5127, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BC_FINDERS_KEEPERS(Any p0) // 0xE3261D791EB44ACB
function STATS.PLAYSTATS_BC_FINDERS_KEEPERS(p0)
  native.invoke(
    Type.Void, 5128, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BC_POINT_TO_POINT(Any p0) // 0x73001E34F85137F8
function STATS.PLAYSTATS_BC_POINT_TO_POINT(p0)
  native.invoke(
    Type.Void, 5129, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BC_CASHING(Any p0) // 0x53CAE13E9B426993
function STATS.PLAYSTATS_BC_CASHING(p0)
  native.invoke(
    Type.Void, 5130, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BC_SALVAGE(Any p0) // 0x7D36291161859389
function STATS.PLAYSTATS_BC_SALVAGE(p0)
  native.invoke(
    Type.Void, 5131, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_SPENT_PI_CUSTOM_LOADOUT(int amount) // 0xBE509B0A3693DE8B
function STATS.PLAYSTATS_SPENT_PI_CUSTOM_LOADOUT(amount)
  native.invoke(
    Type.Void, 5132, false,
    arg(Type.Int, amount)
  )
end

-- void PLAYSTATS_BUY_CONTRABAND_MISSION(Any* data) // 0xD6781E42755531F7
function STATS.PLAYSTATS_BUY_CONTRABAND_MISSION(data)
  native.invoke(
    Type.Void, 5133, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_SELL_CONTRABAND_MISSION(Any* data) // 0xC729991A9065376E
function STATS.PLAYSTATS_SELL_CONTRABAND_MISSION(data)
  native.invoke(
    Type.Void, 5134, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_DEFEND_CONTRABAND_MISSION(Any* data) // 0x2605663BD4F23B5D
function STATS.PLAYSTATS_DEFEND_CONTRABAND_MISSION(data)
  native.invoke(
    Type.Void, 5135, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_RECOVER_CONTRABAND_MISSION(Any* data) // 0x04D90BA8207ADA2D
function STATS.PLAYSTATS_RECOVER_CONTRABAND_MISSION(data)
  native.invoke(
    Type.Void, 5136, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_HIT_CONTRABAND_DESTROY_LIMIT(Any p0) // 0x60EEDC12AF66E846
function STATS.PLAYSTATS_HIT_CONTRABAND_DESTROY_LIMIT(p0)
  native.invoke(
    Type.Void, 5137, false,
    arg(Type.Any, p0)
  )
end

-- void START_BEING_BOSS(Any p0, Any p1, Any p2) // 0x3EBEAC6C3F81F6BD
function STATS.START_BEING_BOSS(p0, p1, p2)
  native.invoke(
    Type.Void, 5138, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void START_BEING_GOON(Any p0, Any p1, Any p2) // 0x96E6D5150DBF1C09
function STATS.START_BEING_GOON(p0, p1, p2)
  native.invoke(
    Type.Void, 5139, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void END_BEING_BOSS(Any p0, Any p1, Any p2) // 0xA3C53804BDB68ED2
function STATS.END_BEING_BOSS(p0, p1, p2)
  native.invoke(
    Type.Void, 5140, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void END_BEING_GOON(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x6BCCF9948492FD85
function STATS.END_BEING_GOON(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5141, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void HIRED_LIMO(Any p0, Any p1) // 0x792271AB35C356A4
function STATS.HIRED_LIMO(p0, p1)
  native.invoke(
    Type.Void, 5142, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void ORDER_BOSS_VEHICLE(Any p0, Any p1, Hash vehicleHash) // 0xCEA553E35C2246E1
function STATS.ORDER_BOSS_VEHICLE(p0, p1, vehicleHash)
  native.invoke(
    Type.Void, 5143, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Hash, vehicleHash)
  )
end

-- void CHANGE_UNIFORM(Any p0, Any p1, Any p2) // 0xD1C9B92BDD3F151D
function STATS.CHANGE_UNIFORM(p0, p1, p2)
  native.invoke(
    Type.Void, 5144, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void CHANGE_GOON_LOOKING_FOR_WORK(Any p0) // 0x44919CC079BB60BF
function STATS.CHANGE_GOON_LOOKING_FOR_WORK(p0)
  native.invoke(
    Type.Void, 5145, false,
    arg(Type.Any, p0)
  )
end

-- void SEND_METRIC_GHOSTING_TO_PLAYER(Any p0) // 0x7033EEFD9B28088E
function STATS.SEND_METRIC_GHOSTING_TO_PLAYER(p0)
  native.invoke(
    Type.Void, 5146, false,
    arg(Type.Any, p0)
  )
end

-- void SEND_METRIC_VIP_POACH(Any p0, Any p1, Any p2) // 0xAA525DFF66BB82F5
function STATS.SEND_METRIC_VIP_POACH(p0, p1, p2)
  native.invoke(
    Type.Void, 5147, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void SEND_METRIC_PUNISH_BODYGUARD(Any p0) // 0x015B03EE1C43E6EC
function STATS.SEND_METRIC_PUNISH_BODYGUARD(p0)
  native.invoke(
    Type.Void, 5148, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_START_TRACKING_STUNTS() // 0x928DBFB892638EF3
--[[
Allows CEventNetworkStuntPerformed to be triggered.
--]]
function STATS.PLAYSTATS_START_TRACKING_STUNTS()
  native.invoke(
    Type.Void, 5149, false
  )
end

-- void PLAYSTATS_STOP_TRACKING_STUNTS() // 0x8A800DACCC0DA55D
--[[
Disallows CEventNetworkStuntPerformed to be triggered.
--]]
function STATS.PLAYSTATS_STOP_TRACKING_STUNTS()
  native.invoke(
    Type.Void, 5150, false
  )
end

-- void PLAYSTATS_MISSION_ENDED(Any p0) // 0xBF371CD2B64212FD
function STATS.PLAYSTATS_MISSION_ENDED(p0)
  native.invoke(
    Type.Void, 5151, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_IMPEXP_MISSION_ENDED(Any p0) // 0x7D8BA05688AD64C7
function STATS.PLAYSTATS_IMPEXP_MISSION_ENDED(p0)
  native.invoke(
    Type.Void, 5152, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CHANGE_MC_ROLE(Any p0, Any p1, Any p2, Any p3, int role, int p5, Any p6) // 0x0B565B0AAE56A0E8
function STATS.PLAYSTATS_CHANGE_MC_ROLE(p0, p1, p2, p3, role, p5, p6)
  native.invoke(
    Type.Void, 5153, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Int, role),
    arg(Type.Int, p5),
    arg(Type.Any, p6)
  )
end

-- void PLAYSTATS_CHANGE_MC_OUTFIT(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x28ECB8AC2F607DB2
function STATS.PLAYSTATS_CHANGE_MC_OUTFIT(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5154, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_SWITCH_MC_EMBLEM(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x0A50D2604E05CB94
function STATS.PLAYSTATS_SWITCH_MC_EMBLEM(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5155, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_MC_REQUEST_BIKE(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xCC25A4553DFBF9EA
function STATS.PLAYSTATS_MC_REQUEST_BIKE(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5156, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_MC_KILLED_RIVAL_MC_MEMBER(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xF534D94DFA2EAD26
function STATS.PLAYSTATS_MC_KILLED_RIVAL_MC_MEMBER(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5157, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_ABANDONED_MC(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xD558BEC0BBA7E8D2
function STATS.PLAYSTATS_ABANDONED_MC(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5158, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_EARNED_MC_POINTS(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0x501478855A6074CE
function STATS.PLAYSTATS_EARNED_MC_POINTS(p0, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 5159, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void PLAYSTATS_MC_FORMATION_ENDS(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6) // 0x03C2EEBB04B3FB72
function STATS.PLAYSTATS_MC_FORMATION_ENDS(p0, p1, p2, p3, p4, p5, p6)
  native.invoke(
    Type.Void, 5160, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void PLAYSTATS_MC_CLUBHOUSE_ACTIVITY(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7) // 0x8989CBD7B4E82534
function STATS.PLAYSTATS_MC_CLUBHOUSE_ACTIVITY(p0, p1, p2, p3, p4, p5, p6, p7)
  native.invoke(
    Type.Void, 5161, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7)
  )
end

-- void PLAYSTATS_RIVAL_BEHAVIOR(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7, Any p8, Any p9) // 0x27AA1C973CACFE63
function STATS.PLAYSTATS_RIVAL_BEHAVIOR(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
  native.invoke(
    Type.Void, 5162, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7),
    arg(Type.Any, p8),
    arg(Type.Any, p9)
  )
end

-- void PLAYSTATS_COPY_RANK_INTO_NEW_SLOT(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6) // 0xB7257BA2550EA10A
function STATS.PLAYSTATS_COPY_RANK_INTO_NEW_SLOT(p0, p1, p2, p3, p4, p5, p6)
  native.invoke(
    Type.Void, 5163, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void PLAYSTATS_DUPE_DETECTED(Any* data) // 0x848B66100EE33B05
function STATS.PLAYSTATS_DUPE_DETECTED(data)
  native.invoke(
    Type.Void, 5164, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_BAN_ALERT(int p0) // 0x516FC96EB88EEFE5
function STATS.PLAYSTATS_BAN_ALERT(p0)
  native.invoke(
    Type.Void, 5165, false,
    arg(Type.Int, p0)
  )
end

-- void PLAYSTATS_GUNRUNNING_MISSION_ENDED(Any* data) // 0x0EACDF8487D5155A
function STATS.PLAYSTATS_GUNRUNNING_MISSION_ENDED(data)
  native.invoke(
    Type.Void, 5166, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_GUNRUNNING_RND(Any p0) // 0xDAF80797FC534BEC
function STATS.PLAYSTATS_GUNRUNNING_RND(p0)
  native.invoke(
    Type.Void, 5167, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_BUSINESS_BATTLE_ENDED(Any p0) // 0x316DB59CD14C1774
function STATS.PLAYSTATS_BUSINESS_BATTLE_ENDED(p0)
  native.invoke(
    Type.Void, 5168, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_WAREHOUSE_MISSION_ENDED(Any p0) // 0x2D7A9B577E72385E
function STATS.PLAYSTATS_WAREHOUSE_MISSION_ENDED(p0)
  native.invoke(
    Type.Void, 5169, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_NIGHTCLUB_MISSION_ENDED(Any p0) // 0x830C3A44EB3F2CF9
function STATS.PLAYSTATS_NIGHTCLUB_MISSION_ENDED(p0)
  native.invoke(
    Type.Void, 5170, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_DJ_USAGE(Any p0, Any p1) // 0xB26F670685631727
function STATS.PLAYSTATS_DJ_USAGE(p0, p1)
  native.invoke(
    Type.Void, 5171, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void PLAYSTATS_MINIGAME_USAGE(Any p0, Any p1, Any p2) // 0xC14BD9F5337219B2
function STATS.PLAYSTATS_MINIGAME_USAGE(p0, p1, p2)
  native.invoke(
    Type.Void, 5172, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void PLAYSTATS_STONE_HATCHET_ENDED(Any* data) // 0x35E39E5570358630
function STATS.PLAYSTATS_STONE_HATCHET_ENDED(data)
  native.invoke(
    Type.Void, 5173, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_SMUGGLER_MISSION_ENDED(Any* data) // 0x320C35147D5B5DDD
function STATS.PLAYSTATS_SMUGGLER_MISSION_ENDED(data)
  native.invoke(
    Type.Void, 5174, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_FM_HEIST_PREP_ENDED(Any* data) // 0xD8AFB345A9C5CCBB
function STATS.PLAYSTATS_FM_HEIST_PREP_ENDED(data)
  native.invoke(
    Type.Void, 5175, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_INSTANCED_HEIST_ENDED(Any* data, Any p1, Any p2, Any p3) // 0x1E1497D0D2108115
function STATS.PLAYSTATS_INSTANCED_HEIST_ENDED(data, p1, p2, p3)
  native.invoke(
    Type.Void, 5176, false,
    ref(Type.Any, data),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_DAR_CHECKPOINT(Any* data) // 0x0BC254FF3A911501
function STATS.PLAYSTATS_DAR_CHECKPOINT(data)
  native.invoke(
    Type.Void, 5177, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_ENTER_SESSION_PACK(Any* data) // 0x878FF156D36E9956
function STATS.PLAYSTATS_ENTER_SESSION_PACK(data)
  native.invoke(
    Type.Void, 5178, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_DRONE_USAGE(int p0, int p1, int p2) // 0x66C7BB2416ED3FCE
function STATS.PLAYSTATS_DRONE_USAGE(p0, p1, p2)
  native.invoke(
    Type.Void, 5179, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2)
  )
end

-- void PLAYSTATS_SPIN_WHEEL(int p0, int p1, int p2, int p3) // 0x6731DE84A38BFAD0
function STATS.PLAYSTATS_SPIN_WHEEL(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5180, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3)
  )
end

-- void PLAYSTATS_ARENA_WARS_SPECTATOR(int p0, int p1, int p2, int p3, int p4) // 0x6F4F599753F8200A
function STATS.PLAYSTATS_ARENA_WARS_SPECTATOR(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5181, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Int, p4)
  )
end

-- void PLAYSTATS_ARENA_WARS_ENDED(Any* data) // 0xB479D9F0D48A1BC5
function STATS.PLAYSTATS_ARENA_WARS_ENDED(data)
  native.invoke(
    Type.Void, 5182, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_SWITCH_PASSIVE_MODE(BOOL p0, int p1, int p2, int p3) // 0x35EEC6C2BC821A71
function STATS.PLAYSTATS_SWITCH_PASSIVE_MODE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5183, false,
    arg(Type.Bool, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3)
  )
end

-- void PLAYSTATS_COLLECTIBLE_PICKED_UP(int p0, Hash objectHash, Any p2, Any p3, int moneyAmount, int rpAmount, int chipsAmount, Any p7, int p8, Any p9, Any p10) // 0xCD0A8A9338681CF2
function STATS.PLAYSTATS_COLLECTIBLE_PICKED_UP(p0, objectHash, p2, p3, moneyAmount, rpAmount, chipsAmount, p7, p8, p9, p10)
  native.invoke(
    Type.Void, 5184, false,
    arg(Type.Int, p0),
    arg(Type.Hash, objectHash),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Int, moneyAmount),
    arg(Type.Int, rpAmount),
    arg(Type.Int, chipsAmount),
    arg(Type.Any, p7),
    arg(Type.Int, p8),
    arg(Type.Any, p9),
    arg(Type.Any, p10)
  )
end

-- void PLAYSTATS_CASINO_STORY_MISSION_ENDED(Any p0, Any p1) // 0xFCCCAC2BD3C1F180
function STATS.PLAYSTATS_CASINO_STORY_MISSION_ENDED(p0, p1)
  native.invoke(
    Type.Void, 5185, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void PLAYSTATS_CASINO_CHIP(Any p0) // 0x0999F3F090EC5012
function STATS.PLAYSTATS_CASINO_CHIP(p0)
  native.invoke(
    Type.Void, 5186, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_ROULETTE(Any p0) // 0x95101C443A84E7F1
function STATS.PLAYSTATS_CASINO_ROULETTE(p0)
  native.invoke(
    Type.Void, 5187, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_BLACKJACK(Any p0) // 0x3EAE97309727E7AD
function STATS.PLAYSTATS_CASINO_BLACKJACK(p0)
  native.invoke(
    Type.Void, 5188, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_THREE_CARD_POKER(Any p0) // 0xF740FB339D471C35
function STATS.PLAYSTATS_CASINO_THREE_CARD_POKER(p0)
  native.invoke(
    Type.Void, 5189, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_SLOT_MACHINE(Any p0) // 0xEF5EC67D392B830A
function STATS.PLAYSTATS_CASINO_SLOT_MACHINE(p0)
  native.invoke(
    Type.Void, 5190, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_INSIDE_TRACK(Any p0) // 0x049F059625058A86
function STATS.PLAYSTATS_CASINO_INSIDE_TRACK(p0)
  native.invoke(
    Type.Void, 5191, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_LUCKY_SEVEN(Any p0) // 0x0C432C1435F5E4FA
function STATS.PLAYSTATS_CASINO_LUCKY_SEVEN(p0)
  native.invoke(
    Type.Void, 5192, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_ROULETTE_LIGHT(Any p0) // 0x6572ABA3DE1197FC
function STATS.PLAYSTATS_CASINO_ROULETTE_LIGHT(p0)
  native.invoke(
    Type.Void, 5193, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_BLACKJACK_LIGHT(Any p0) // 0xD5451C7BF151EB6F
function STATS.PLAYSTATS_CASINO_BLACKJACK_LIGHT(p0)
  native.invoke(
    Type.Void, 5194, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_THREE_CARD_POKER_LIGHT(Any p0) // 0xC9001364B4388F22
function STATS.PLAYSTATS_CASINO_THREE_CARD_POKER_LIGHT(p0)
  native.invoke(
    Type.Void, 5195, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_SLOT_MACHINE_LIGHT(Any p0) // 0xE60054A0FAE8227F
function STATS.PLAYSTATS_CASINO_SLOT_MACHINE_LIGHT(p0)
  native.invoke(
    Type.Void, 5196, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CASINO_INSIDE_TRACK_LIGHT(Any p0) // 0x23A3CBCD50D54E47
function STATS.PLAYSTATS_CASINO_INSIDE_TRACK_LIGHT(p0)
  native.invoke(
    Type.Void, 5197, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_ARCADE_GAME(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6) // 0x533A7D1EA58DF958
function STATS.PLAYSTATS_ARCADE_GAME(p0, p1, p2, p3, p4, p5, p6)
  native.invoke(
    Type.Void, 5198, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void PLAYSTATS_ARCADE_LOVE_MATCH(Any p0, Any p1) // 0x4FCDBD3F0A813C25
function STATS.PLAYSTATS_ARCADE_LOVE_MATCH(p0, p1)
  native.invoke(
    Type.Void, 5199, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void PLAYSTATS_FREEMODE_CASINO_MISSION_ENDED(Any* data) // 0x1A0D4A6C336B7BC5
function STATS.PLAYSTATS_FREEMODE_CASINO_MISSION_ENDED(data)
  native.invoke(
    Type.Void, 5200, false,
    ref(Type.Any, data)
  )
end

-- void PLAYSTATS_HEIST3_DRONE(Any p0) // 0xDFBD93BF2943E29B
function STATS.PLAYSTATS_HEIST3_DRONE(p0)
  native.invoke(
    Type.Void, 5201, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_HEIST3_HACK(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0x92FC0EEDFAC04A14
function STATS.PLAYSTATS_HEIST3_HACK(p0, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 5202, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void PLAYSTATS_NPC_PHONE(Any* p0) // 0x0077F15613D36993
function STATS.PLAYSTATS_NPC_PHONE(p0)
  native.invoke(
    Type.Void, 5203, false,
    ref(Type.Any, p0)
  )
end

-- void PLAYSTATS_ARCADE_CABINET(Any p0) // 0xF9096193DF1F99D4
function STATS.PLAYSTATS_ARCADE_CABINET(p0)
  native.invoke(
    Type.Void, 5204, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_HEIST3_FINALE(Any p0) // 0x2E0259BABC27A327
function STATS.PLAYSTATS_HEIST3_FINALE(p0)
  native.invoke(
    Type.Void, 5205, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_HEIST3_PREP(Any p0) // 0x53C31853EC9531FF
function STATS.PLAYSTATS_HEIST3_PREP(p0)
  native.invoke(
    Type.Void, 5206, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_MASTER_CONTROL(Any p0, Any p1, Any p2, Any p3) // 0x810B5FCC52EC7FF0
function STATS.PLAYSTATS_MASTER_CONTROL(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5207, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_QUIT_MODE(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x5BF29846C6527C54
function STATS.PLAYSTATS_QUIT_MODE(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5208, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_MISSION_VOTE(Any p0) // 0xC03FAB2C2F92289B
function STATS.PLAYSTATS_MISSION_VOTE(p0)
  native.invoke(
    Type.Void, 5209, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_NJVS_VOTE(Any p0) // 0x5CDAED54B34B0ED0
function STATS.PLAYSTATS_NJVS_VOTE(p0)
  native.invoke(
    Type.Void, 5210, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_KILL_YOURSELF() // 0x4AFF7E02E485E92B
function STATS.PLAYSTATS_KILL_YOURSELF()
  native.invoke(
    Type.Void, 5211, false
  )
end

-- void PLAYSTATS_FM_MISSION_END(Any p0, Any p1, Any p2, Any p3) // 0x46A70777BE6CEAB9
function STATS.PLAYSTATS_FM_MISSION_END(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5212, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_HEIST4_PREP(Any p0) // 0xDFCDB14317A9B361
function STATS.PLAYSTATS_HEIST4_PREP(p0)
  native.invoke(
    Type.Void, 5213, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_HEIST4_FINALE(Any p0) // 0xC1E963C58664B556
function STATS.PLAYSTATS_HEIST4_FINALE(p0)
  native.invoke(
    Type.Void, 5214, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_HEIST4_HACK(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x2FA3173480008493
function STATS.PLAYSTATS_HEIST4_HACK(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 5215, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void PLAYSTATS_SUB_WEAP(Any p0, Any p1, Any p2, Any p3) // 0xD4367D310F079DB0
function STATS.PLAYSTATS_SUB_WEAP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5216, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_FAST_TRVL(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7, Any p8, Any p9, Any p10) // 0x4DC416F246A41FC8
function STATS.PLAYSTATS_FAST_TRVL(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
  native.invoke(
    Type.Void, 5217, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7),
    arg(Type.Any, p8),
    arg(Type.Any, p9),
    arg(Type.Any, p10)
  )
end

-- void PLAYSTATS_HUB_ENTRY(Any p0) // 0x2818FF6638CB09DE
function STATS.PLAYSTATS_HUB_ENTRY(p0)
  native.invoke(
    Type.Void, 5218, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_DJ_MISSION_ENDED(Any p0) // 0xD6CA58B3B53A0F22
function STATS.PLAYSTATS_DJ_MISSION_ENDED(p0)
  native.invoke(
    Type.Void, 5219, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_ROBBERY_PREP(Any p0) // 0x1A67DFBF1F5C3835
function STATS.PLAYSTATS_ROBBERY_PREP(p0)
  native.invoke(
    Type.Void, 5220, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_ROBBERY_FINALE(Any p0) // 0xBBA55BE9AAAABF44
function STATS.PLAYSTATS_ROBBERY_FINALE(p0)
  native.invoke(
    Type.Void, 5221, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_EXTRA_EVENT(Any p0) // 0xFA5B74BAB8A7EF99
function STATS.PLAYSTATS_EXTRA_EVENT(p0)
  native.invoke(
    Type.Void, 5222, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CARCLUB_POINTS(Any p0) // 0xFF14D6FEEC507BBE
function STATS.PLAYSTATS_CARCLUB_POINTS(p0)
  native.invoke(
    Type.Void, 5223, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_CARCLUB_CHALLENGE(Any p0, Any p1, Any p2, Any p3) // 0x1187CB58D7F3BED7
function STATS.PLAYSTATS_CARCLUB_CHALLENGE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5224, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_CARCLUB_PRIZE(int p0, Hash vehicleModel) // 0x69C922B677621428
function STATS.PLAYSTATS_CARCLUB_PRIZE(p0, vehicleModel)
  native.invoke(
    Type.Void, 5225, false,
    arg(Type.Int, p0),
    arg(Type.Hash, vehicleModel)
  )
end

-- void PLAYSTATS_AWARD_NAV(Any p0, Any p1, Any p2, Any p3) // 0x70F52471E758EBAE
function STATS.PLAYSTATS_AWARD_NAV(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 5226, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void PLAYSTATS_INST_MISSION_END(Any p0) // 0xFEA3F7E83C0610FA
function STATS.PLAYSTATS_INST_MISSION_END(p0)
  native.invoke(
    Type.Void, 5227, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_HUB_EXIT(Any p0) // 0x5A46ACE5C4661132
function STATS.PLAYSTATS_HUB_EXIT(p0)
  native.invoke(
    Type.Void, 5228, false,
    arg(Type.Any, p0)
  )
end

-- void PLAYSTATS_VEH_DEL(int bossId1, int bossId2, int bossType, int vehicleID, int reason) // 0x10A691F5756416D0
function STATS.PLAYSTATS_VEH_DEL(bossId1, bossId2, bossType, vehicleID, reason)
  native.invoke(
    Type.Void, 5229, false,
    arg(Type.Int, bossId1),
    arg(Type.Int, bossId2),
    arg(Type.Int, bossType),
    arg(Type.Int, vehicleID),
    arg(Type.Int, reason)
  )
end

-- void PLAYSTATS_INVENTORY(Any p0) // 0x887DAD63CF5B7908
function STATS.PLAYSTATS_INVENTORY(p0)
  native.invoke(
    Type.Void, 5230, false,
    arg(Type.Any, p0)
  )
end

-- void _PLAYSTATS_ACID_MISSION_END(Any p0) // 0x8A23D1324F6B2BAC
function STATS._PLAYSTATS_ACID_MISSION_END(p0)
  native.invoke(
    Type.Void, 5231, false,
    arg(Type.Any, p0)
  )
end

-- void _PLAYSTATS_ACID_RND(Any p0) // 0xCEACCF0550FDC5BA
function STATS._PLAYSTATS_ACID_RND(p0)
  native.invoke(
    Type.Void, 5232, false,
    arg(Type.Any, p0)
  )
end

-- void _PLAYSTATS_IDLE(Any p0, Any p1, Any p2) // 0xEC9553A178E8F1D1
function STATS._PLAYSTATS_IDLE(p0, p1, p2)
  native.invoke(
    Type.Void, 5233, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void _PLAYSTATS_PLAYER_STYLE(Any p0) // 0x48FAC5DC7AC6EA99
function STATS._PLAYSTATS_PLAYER_STYLE(p0)
  native.invoke(
    Type.Void, 5234, false,
    arg(Type.Any, p0)
  )
end

-- void _PLAYSTATS_RANDOM_EVENT(Any p0) // 0x7EA06F970F999394
function STATS._PLAYSTATS_RANDOM_EVENT(p0)
  native.invoke(
    Type.Void, 5235, false,
    arg(Type.Any, p0)
  )
end

-- void _PLAYSTATS_ALERT(Any* data) // 0x5649CA22AF74E019
function STATS._PLAYSTATS_ALERT(data)
  native.invoke(
    Type.Void, 5236, false,
    ref(Type.Any, data)
  )
end

-- void _PLAYSTATS_ATTRITION_STAGE_END(Any p0) // 0xBD642335A732F1A8
function STATS._PLAYSTATS_ATTRITION_STAGE_END(p0)
  native.invoke(
    Type.Void, 5237, false,
    arg(Type.Any, p0)
  )
end

-- void _PLAYSTATS_SHOWROOM_NAV(Any p0, Any p1, Hash entity) // 0x961D4157B9B428DB
function STATS._PLAYSTATS_SHOWROOM_NAV(p0, p1, entity)
  native.invoke(
    Type.Void, 5238, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Hash, entity)
  )
end

-- void _PLAYSTATS_SHOWROOM_OVERVIEW(Any* data) // 0x151D6C04C9E2742F
--[[
Data struct contains various tunables related to test drives at Simeons Showroom or Luxury Showcase.
--]]
function STATS._PLAYSTATS_SHOWROOM_OVERVIEW(data)
  native.invoke(
    Type.Void, 5239, false,
    ref(Type.Any, data)
  )
end


