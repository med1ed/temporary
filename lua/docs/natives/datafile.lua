DATAFILE = {}

-- void DATAFILE_WATCH_REQUEST_ID(int requestId) // 0xAD6875BBC0FC899C
--[[
Adds the given requestID to the watch list.
--]]
function DATAFILE.DATAFILE_WATCH_REQUEST_ID(requestId)
  native.invoke(
    Type.Void, 647, false,
    arg(Type.Int, requestId)
  )
end

-- void DATAFILE_CLEAR_WATCH_LIST() // 0x6CC86E78358D5119
function DATAFILE.DATAFILE_CLEAR_WATCH_LIST()
  native.invoke(
    Type.Void, 648, false
  )
end

-- BOOL DATAFILE_IS_VALID_REQUEST_ID(int index) // 0xFCCAE5B92A830878
function DATAFILE.DATAFILE_IS_VALID_REQUEST_ID(index)
  return native.invoke(
    Type.Bool, 649, false,
    arg(Type.Int, index)
  )
end

-- BOOL DATAFILE_HAS_LOADED_FILE_DATA(int requestId) // 0x15FF52B809DB2353
function DATAFILE.DATAFILE_HAS_LOADED_FILE_DATA(requestId)
  return native.invoke(
    Type.Bool, 650, false,
    arg(Type.Int, requestId)
  )
end

-- BOOL DATAFILE_HAS_VALID_FILE_DATA(int requestId) // 0xF8CC1EBE0B62E29F
function DATAFILE.DATAFILE_HAS_VALID_FILE_DATA(requestId)
  return native.invoke(
    Type.Bool, 651, false,
    arg(Type.Int, requestId)
  )
end

-- BOOL DATAFILE_SELECT_ACTIVE_FILE(int requestId, Any p1) // 0x22DA66936E0FFF37
function DATAFILE.DATAFILE_SELECT_ACTIVE_FILE(requestId, p1)
  return native.invoke(
    Type.Bool, 652, false,
    arg(Type.Int, requestId),
    arg(Type.Any, p1)
  )
end

-- BOOL DATAFILE_DELETE_REQUESTED_FILE(int requestId) // 0x8F5EA1C01D65A100
function DATAFILE.DATAFILE_DELETE_REQUESTED_FILE(requestId)
  return native.invoke(
    Type.Bool, 653, false,
    arg(Type.Int, requestId)
  )
end

-- BOOL UGC_CREATE_CONTENT(Any* data, int dataCount, const char* contentName, const char* description, const char* tagsCsv, const char* contentTypeName, BOOL publish, Any p7) // 0xC84527E235FCA219
function DATAFILE.UGC_CREATE_CONTENT(data, dataCount, contentName, description, tagsCsv, contentTypeName, publish, p7)
  return native.invoke(
    Type.Bool, 654, false,
    ref(Type.Any, data),
    arg(Type.Int, dataCount),
    arg(Type.String, contentName),
    arg(Type.String, description),
    arg(Type.String, tagsCsv),
    arg(Type.String, contentTypeName),
    arg(Type.Bool, publish),
    arg(Type.Any, p7)
  )
end

-- BOOL UGC_CREATE_MISSION(const char* contentName, const char* description, const char* tagsCsv, const char* contentTypeName, BOOL publish, Any p5) // 0xA5EFC3E847D60507
function DATAFILE.UGC_CREATE_MISSION(contentName, description, tagsCsv, contentTypeName, publish, p5)
  return native.invoke(
    Type.Bool, 655, false,
    arg(Type.String, contentName),
    arg(Type.String, description),
    arg(Type.String, tagsCsv),
    arg(Type.String, contentTypeName),
    arg(Type.Bool, publish),
    arg(Type.Any, p5)
  )
end

-- BOOL UGC_UPDATE_CONTENT(const char* contentId, Any* data, int dataCount, const char* contentName, const char* description, const char* tagsCsv, const char* contentTypeName, Any p7) // 0x648E7A5434AF7969
function DATAFILE.UGC_UPDATE_CONTENT(contentId, data, dataCount, contentName, description, tagsCsv, contentTypeName, p7)
  return native.invoke(
    Type.Bool, 656, false,
    arg(Type.String, contentId),
    ref(Type.Any, data),
    arg(Type.Int, dataCount),
    arg(Type.String, contentName),
    arg(Type.String, description),
    arg(Type.String, tagsCsv),
    arg(Type.String, contentTypeName),
    arg(Type.Any, p7)
  )
end

-- BOOL UGC_UPDATE_MISSION(const char* contentId, const char* contentName, const char* description, const char* tagsCsv, const char* contentTypeName, Any p5) // 0x4645DE9980999E93
function DATAFILE.UGC_UPDATE_MISSION(contentId, contentName, description, tagsCsv, contentTypeName, p5)
  return native.invoke(
    Type.Bool, 657, false,
    arg(Type.String, contentId),
    arg(Type.String, contentName),
    arg(Type.String, description),
    arg(Type.String, tagsCsv),
    arg(Type.String, contentTypeName),
    arg(Type.Any, p5)
  )
end

-- BOOL UGC_SET_PLAYER_DATA(const char* contentId, float rating, const char* contentTypeName, Any p3) // 0x692D808C34A82143
function DATAFILE.UGC_SET_PLAYER_DATA(contentId, rating, contentTypeName, p3)
  return native.invoke(
    Type.Bool, 658, false,
    arg(Type.String, contentId),
    arg(Type.Float, rating),
    arg(Type.String, contentTypeName),
    arg(Type.Any, p3)
  )
end

-- BOOL DATAFILE_SELECT_UGC_DATA(int p0, Any p1) // 0xA69AC4ADE82B57A4
function DATAFILE.DATAFILE_SELECT_UGC_DATA(p0, p1)
  return native.invoke(
    Type.Bool, 659, false,
    arg(Type.Int, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL DATAFILE_SELECT_UGC_STATS(int p0, BOOL p1, Any p2) // 0x9CB0BFA7A9342C3D
function DATAFILE.DATAFILE_SELECT_UGC_STATS(p0, p1, p2)
  return native.invoke(
    Type.Bool, 660, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL DATAFILE_SELECT_UGC_PLAYER_DATA(int p0, Any p1) // 0x52818819057F2B40
function DATAFILE.DATAFILE_SELECT_UGC_PLAYER_DATA(p0, p1)
  return native.invoke(
    Type.Bool, 661, false,
    arg(Type.Int, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL DATAFILE_SELECT_CREATOR_STATS(int p0, Any p1) // 0x01095C95CD46B624
function DATAFILE.DATAFILE_SELECT_CREATOR_STATS(p0, p1)
  return native.invoke(
    Type.Bool, 662, false,
    arg(Type.Int, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL DATAFILE_LOAD_OFFLINE_UGC(const char* filename, Any p1) // 0xC5238C011AF405E4
--[[
Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.

Returns whether or not the file was successfully loaded.

Example:
DATAFILE::DATAFILE_LOAD_OFFLINE_UGC("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"
--]]
function DATAFILE.DATAFILE_LOAD_OFFLINE_UGC(filename, p1)
  return native.invoke(
    Type.Bool, 663, false,
    arg(Type.String, filename),
    arg(Type.Any, p1)
  )
end

-- void DATAFILE_CREATE(int p0) // 0xD27058A1CA2B13EE
function DATAFILE.DATAFILE_CREATE(p0)
  native.invoke(
    Type.Void, 664, false,
    arg(Type.Int, p0)
  )
end

-- void DATAFILE_DELETE(int p0) // 0x9AB9C1CFC8862DFB
function DATAFILE.DATAFILE_DELETE(p0)
  native.invoke(
    Type.Void, 665, false,
    arg(Type.Int, p0)
  )
end

-- void DATAFILE_STORE_MISSION_HEADER(int p0) // 0x2ED61456317B8178
function DATAFILE.DATAFILE_STORE_MISSION_HEADER(p0)
  native.invoke(
    Type.Void, 666, false,
    arg(Type.Int, p0)
  )
end

-- void DATAFILE_FLUSH_MISSION_HEADER() // 0xC55854C7D7274882
function DATAFILE.DATAFILE_FLUSH_MISSION_HEADER()
  native.invoke(
    Type.Void, 667, false
  )
end

-- Any* DATAFILE_GET_FILE_DICT(int p0) // 0x906B778CA1DC72B6
function DATAFILE.DATAFILE_GET_FILE_DICT(p0)
  return native.invoke(
    Type.Any, 668, false,
    arg(Type.Int, p0)
  )
end

-- BOOL DATAFILE_START_SAVE_TO_CLOUD(const char* filename, Any p1) // 0x83BCCE3224735F05
function DATAFILE.DATAFILE_START_SAVE_TO_CLOUD(filename, p1)
  return native.invoke(
    Type.Bool, 669, false,
    arg(Type.String, filename),
    arg(Type.Any, p1)
  )
end

-- BOOL DATAFILE_UPDATE_SAVE_TO_CLOUD(BOOL* p0) // 0x4DFDD9EB705F8140
function DATAFILE.DATAFILE_UPDATE_SAVE_TO_CLOUD(p0)
  return native.invoke(
    Type.Bool, 670, false,
    ref(Type.Bool, p0)
  )
end

-- BOOL DATAFILE_IS_SAVE_PENDING() // 0xBEDB96A7584AA8CF
function DATAFILE.DATAFILE_IS_SAVE_PENDING()
  return native.invoke(
    Type.Bool, 671, false
  )
end

-- BOOL DATAFILE_LOAD_OFFLINE_UGC_FOR_ADDITIONAL_DATA_FILE(Any p0, Any p1) // 0xA6EEF01087181EDD
function DATAFILE.DATAFILE_LOAD_OFFLINE_UGC_FOR_ADDITIONAL_DATA_FILE(p0, p1)
  return native.invoke(
    Type.Bool, 672, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void DATAFILE_DELETE_FOR_ADDITIONAL_DATA_FILE(Any p0) // 0x6AD0BD5E087866CB
function DATAFILE.DATAFILE_DELETE_FOR_ADDITIONAL_DATA_FILE(p0)
  native.invoke(
    Type.Void, 673, false,
    arg(Type.Any, p0)
  )
end

-- Any* DATAFILE_GET_FILE_DICT_FOR_ADDITIONAL_DATA_FILE(Any p0) // 0xDBF860CF1DB8E599
function DATAFILE.DATAFILE_GET_FILE_DICT_FOR_ADDITIONAL_DATA_FILE(p0)
  return native.invoke(
    Type.Any, 674, false,
    arg(Type.Any, p0)
  )
end

-- void DATADICT_SET_BOOL(Any* objectData, const char* key, BOOL value) // 0x35124302A556A325
function DATAFILE.DATADICT_SET_BOOL(objectData, key, value)
  native.invoke(
    Type.Void, 675, false,
    ref(Type.Any, objectData),
    arg(Type.String, key),
    arg(Type.Bool, value)
  )
end

-- void DATADICT_SET_INT(Any* objectData, const char* key, int value) // 0xE7E035450A7948D5
function DATAFILE.DATADICT_SET_INT(objectData, key, value)
  native.invoke(
    Type.Void, 676, false,
    ref(Type.Any, objectData),
    arg(Type.String, key),
    arg(Type.Int, value)
  )
end

-- void DATADICT_SET_FLOAT(Any* objectData, const char* key, float value) // 0xC27E1CC2D795105E
function DATAFILE.DATADICT_SET_FLOAT(objectData, key, value)
  native.invoke(
    Type.Void, 677, false,
    ref(Type.Any, objectData),
    arg(Type.String, key),
    arg(Type.Float, value)
  )
end

-- void DATADICT_SET_STRING(Any* objectData, const char* key, const char* value) // 0x8FF3847DADD8E30C
function DATAFILE.DATADICT_SET_STRING(objectData, key, value)
  native.invoke(
    Type.Void, 678, false,
    ref(Type.Any, objectData),
    arg(Type.String, key),
    arg(Type.String, value)
  )
end

-- void DATADICT_SET_VECTOR(Any* objectData, const char* key, float valueX, float valueY, float valueZ) // 0x4CD49B76338C7DEE
function DATAFILE.DATADICT_SET_VECTOR(objectData, key, valueX, valueY, valueZ)
  native.invoke(
    Type.Void, 679, false,
    ref(Type.Any, objectData),
    arg(Type.String, key),
    arg(Type.Float, valueX),
    arg(Type.Float, valueY),
    arg(Type.Float, valueZ)
  )
end

-- Any* DATADICT_CREATE_DICT(Any* objectData, const char* key) // 0xA358F56F10732EE1
function DATAFILE.DATADICT_CREATE_DICT(objectData, key)
  return native.invoke(
    Type.Any, 680, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- Any* DATADICT_CREATE_ARRAY(Any* objectData, const char* key) // 0x5B11728527CA6E5F
function DATAFILE.DATADICT_CREATE_ARRAY(objectData, key)
  return native.invoke(
    Type.Any, 681, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- BOOL DATADICT_GET_BOOL(Any* objectData, const char* key) // 0x1186940ED72FFEEC
function DATAFILE.DATADICT_GET_BOOL(objectData, key)
  return native.invoke(
    Type.Bool, 682, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- int DATADICT_GET_INT(Any* objectData, const char* key) // 0x78F06F6B1FB5A80C
function DATAFILE.DATADICT_GET_INT(objectData, key)
  return native.invoke(
    Type.Int, 683, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- float DATADICT_GET_FLOAT(Any* objectData, const char* key) // 0x06610343E73B9727
function DATAFILE.DATADICT_GET_FLOAT(objectData, key)
  return native.invoke(
    Type.Float, 684, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- const char* DATADICT_GET_STRING(Any* objectData, const char* key) // 0x3D2FD9E763B24472
function DATAFILE.DATADICT_GET_STRING(objectData, key)
  return native.invoke(
    Type.String, 685, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- Vector3 DATADICT_GET_VECTOR(Any* objectData, const char* key) // 0x46CD3CB66E0825CC
function DATAFILE.DATADICT_GET_VECTOR(objectData, key)
  return native.invoke(
    Type.Vector3, 686, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- Any* DATADICT_GET_DICT(Any* objectData, const char* key) // 0xB6B9DDC412FCEEE2
function DATAFILE.DATADICT_GET_DICT(objectData, key)
  return native.invoke(
    Type.Any, 687, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- Any* DATADICT_GET_ARRAY(Any* objectData, const char* key) // 0x7A983AA9DA2659ED
function DATAFILE.DATADICT_GET_ARRAY(objectData, key)
  return native.invoke(
    Type.Any, 688, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- int DATADICT_GET_TYPE(Any* objectData, const char* key) // 0x031C55ED33227371
--[[
Types:
1 = Boolean
2 = Integer
3 = Float
4 = String
5 = Vector3
6 = Object
7 = Array
--]]
function DATAFILE.DATADICT_GET_TYPE(objectData, key)
  return native.invoke(
    Type.Int, 689, false,
    ref(Type.Any, objectData),
    arg(Type.String, key)
  )
end

-- void DATAARRAY_ADD_BOOL(Any* arrayData, BOOL value) // 0xF8B0F5A43E928C76
function DATAFILE.DATAARRAY_ADD_BOOL(arrayData, value)
  native.invoke(
    Type.Void, 690, false,
    ref(Type.Any, arrayData),
    arg(Type.Bool, value)
  )
end

-- void DATAARRAY_ADD_INT(Any* arrayData, int value) // 0xCABDB751D86FE93B
function DATAFILE.DATAARRAY_ADD_INT(arrayData, value)
  native.invoke(
    Type.Void, 691, false,
    ref(Type.Any, arrayData),
    arg(Type.Int, value)
  )
end

-- void DATAARRAY_ADD_FLOAT(Any* arrayData, float value) // 0x57A995FD75D37F56
function DATAFILE.DATAARRAY_ADD_FLOAT(arrayData, value)
  native.invoke(
    Type.Void, 692, false,
    ref(Type.Any, arrayData),
    arg(Type.Float, value)
  )
end

-- void DATAARRAY_ADD_STRING(Any* arrayData, const char* value) // 0x2F0661C155AEEEAA
function DATAFILE.DATAARRAY_ADD_STRING(arrayData, value)
  native.invoke(
    Type.Void, 693, false,
    ref(Type.Any, arrayData),
    arg(Type.String, value)
  )
end

-- void DATAARRAY_ADD_VECTOR(Any* arrayData, float valueX, float valueY, float valueZ) // 0x407F8D034F70F0C2
function DATAFILE.DATAARRAY_ADD_VECTOR(arrayData, valueX, valueY, valueZ)
  native.invoke(
    Type.Void, 694, false,
    ref(Type.Any, arrayData),
    arg(Type.Float, valueX),
    arg(Type.Float, valueY),
    arg(Type.Float, valueZ)
  )
end

-- Any* DATAARRAY_ADD_DICT(Any* arrayData) // 0x6889498B3E19C797
function DATAFILE.DATAARRAY_ADD_DICT(arrayData)
  return native.invoke(
    Type.Any, 695, false,
    ref(Type.Any, arrayData)
  )
end

-- BOOL DATAARRAY_GET_BOOL(Any* arrayData, int arrayIndex) // 0x50C1B2874E50C114
function DATAFILE.DATAARRAY_GET_BOOL(arrayData, arrayIndex)
  return native.invoke(
    Type.Bool, 696, false,
    ref(Type.Any, arrayData),
    arg(Type.Int, arrayIndex)
  )
end

-- int DATAARRAY_GET_INT(Any* arrayData, int arrayIndex) // 0x3E5AE19425CD74BE
function DATAFILE.DATAARRAY_GET_INT(arrayData, arrayIndex)
  return native.invoke(
    Type.Int, 697, false,
    ref(Type.Any, arrayData),
    arg(Type.Int, arrayIndex)
  )
end

-- float DATAARRAY_GET_FLOAT(Any* arrayData, int arrayIndex) // 0xC0C527B525D7CFB5
function DATAFILE.DATAARRAY_GET_FLOAT(arrayData, arrayIndex)
  return native.invoke(
    Type.Float, 698, false,
    ref(Type.Any, arrayData),
    arg(Type.Int, arrayIndex)
  )
end

-- const char* DATAARRAY_GET_STRING(Any* arrayData, int arrayIndex) // 0xD3F2FFEB8D836F52
function DATAFILE.DATAARRAY_GET_STRING(arrayData, arrayIndex)
  return native.invoke(
    Type.String, 699, false,
    ref(Type.Any, arrayData),
    arg(Type.Int, arrayIndex)
  )
end

-- Vector3 DATAARRAY_GET_VECTOR(Any* arrayData, int arrayIndex) // 0x8D2064E5B64A628A
function DATAFILE.DATAARRAY_GET_VECTOR(arrayData, arrayIndex)
  return native.invoke(
    Type.Vector3, 700, false,
    ref(Type.Any, arrayData),
    arg(Type.Int, arrayIndex)
  )
end

-- Any* DATAARRAY_GET_DICT(Any* arrayData, int arrayIndex) // 0x8B5FADCC4E3A145F
function DATAFILE.DATAARRAY_GET_DICT(arrayData, arrayIndex)
  return native.invoke(
    Type.Any, 701, false,
    ref(Type.Any, arrayData),
    arg(Type.Int, arrayIndex)
  )
end

-- int DATAARRAY_GET_COUNT(Any* arrayData) // 0x065DB281590CEA2D
function DATAFILE.DATAARRAY_GET_COUNT(arrayData)
  return native.invoke(
    Type.Int, 702, false,
    ref(Type.Any, arrayData)
  )
end

-- int DATAARRAY_GET_TYPE(Any* arrayData, int arrayIndex) // 0x3A0014ADB172A3C5
--[[
Types:
1 = Boolean
2 = Integer
3 = Float
4 = String
5 = Vector3
6 = Object
7 = Array
--]]
function DATAFILE.DATAARRAY_GET_TYPE(arrayData, arrayIndex)
  return native.invoke(
    Type.Int, 703, false,
    ref(Type.Any, arrayData),
    arg(Type.Int, arrayIndex)
  )
end


