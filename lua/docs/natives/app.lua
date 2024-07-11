APP = {}

-- BOOL APP_DATA_VALID() // 0x846AA8E7D55EE5B6
function APP.APP_DATA_VALID()
  return native.invoke(
    Type.Bool, 26, false
  )
end

-- int APP_GET_INT(const char* property) // 0xD3A58A12C77D9D4B
function APP.APP_GET_INT(property)
  return native.invoke(
    Type.Int, 27, false,
    arg(Type.String, property)
  )
end

-- float APP_GET_FLOAT(const char* property) // 0x1514FB24C02C2322
function APP.APP_GET_FLOAT(property)
  return native.invoke(
    Type.Float, 28, false,
    arg(Type.String, property)
  )
end

-- const char* APP_GET_STRING(const char* property) // 0x749B023950D2311C
function APP.APP_GET_STRING(property)
  return native.invoke(
    Type.String, 29, false,
    arg(Type.String, property)
  )
end

-- void APP_SET_INT(const char* property, int value) // 0x607E8E3D3E4F9611
function APP.APP_SET_INT(property, value)
  native.invoke(
    Type.Void, 30, false,
    arg(Type.String, property),
    arg(Type.Int, value)
  )
end

-- void APP_SET_FLOAT(const char* property, float value) // 0x25D7687C68E0DAA4
function APP.APP_SET_FLOAT(property, value)
  native.invoke(
    Type.Void, 31, false,
    arg(Type.String, property),
    arg(Type.Float, value)
  )
end

-- void APP_SET_STRING(const char* property, const char* value) // 0x3FF2FCEC4B7721B4
function APP.APP_SET_STRING(property, value)
  native.invoke(
    Type.Void, 32, false,
    arg(Type.String, property),
    arg(Type.String, value)
  )
end

-- void APP_SET_APP(const char* appName) // 0xCFD0406ADAF90D2B
--[[
Called in the gamescripts like:
APP::APP_SET_APP("car");
APP::APP_SET_APP("dog");
--]]
function APP.APP_SET_APP(appName)
  native.invoke(
    Type.Void, 33, false,
    arg(Type.String, appName)
  )
end

-- void APP_SET_BLOCK(const char* blockName) // 0x262AB456A3D21F93
function APP.APP_SET_BLOCK(blockName)
  native.invoke(
    Type.Void, 34, false,
    arg(Type.String, blockName)
  )
end

-- void APP_CLEAR_BLOCK() // 0x5FE1DF3342DB7DBA
function APP.APP_CLEAR_BLOCK()
  native.invoke(
    Type.Void, 35, false
  )
end

-- void APP_CLOSE_APP() // 0xE41C65E07A5F05FC
function APP.APP_CLOSE_APP()
  native.invoke(
    Type.Void, 36, false
  )
end

-- void APP_CLOSE_BLOCK() // 0xE8E3FCF72EAC0EF8
function APP.APP_CLOSE_BLOCK()
  native.invoke(
    Type.Void, 37, false
  )
end

-- BOOL APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT() // 0x71EEE69745088DA0
function APP.APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT()
  return native.invoke(
    Type.Bool, 38, false
  )
end

-- BOOL APP_HAS_SYNCED_DATA(const char* appName) // 0xCA52279A7271517F
function APP.APP_HAS_SYNCED_DATA(appName)
  return native.invoke(
    Type.Bool, 39, false,
    arg(Type.String, appName)
  )
end

-- void APP_SAVE_DATA() // 0x95C5D356CDA6E85F
function APP.APP_SAVE_DATA()
  native.invoke(
    Type.Void, 40, false
  )
end

-- int APP_GET_DELETED_FILE_STATUS() // 0xC9853A2BE3DED1A6
function APP.APP_GET_DELETED_FILE_STATUS()
  return native.invoke(
    Type.Int, 41, false
  )
end

-- BOOL APP_DELETE_APP_DATA(const char* appName) // 0x44151AEA95C8A003
function APP.APP_DELETE_APP_DATA(appName)
  return native.invoke(
    Type.Bool, 42, false,
    arg(Type.String, appName)
  )
end


