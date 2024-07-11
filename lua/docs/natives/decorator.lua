DECORATOR = {}

-- BOOL DECOR_SET_TIME(Entity entity, const char* propertyName, int timestamp) // 0x95AED7B8E39ECAA4
function DECORATOR.DECOR_SET_TIME(entity, propertyName, timestamp)
  return native.invoke(
    Type.Bool, 704, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName),
    arg(Type.Int, timestamp)
  )
end

-- BOOL DECOR_SET_BOOL(Entity entity, const char* propertyName, BOOL value) // 0x6B1E8E2ED1335B71
--[[
This function sets metadata of type bool to specified entity.

--]]
function DECORATOR.DECOR_SET_BOOL(entity, propertyName, value)
  return native.invoke(
    Type.Bool, 705, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName),
    arg(Type.Bool, value)
  )
end

-- BOOL DECOR_SET_FLOAT(Entity entity, const char* propertyName, float value) // 0x211AB1DD8D0F363A
function DECORATOR.DECOR_SET_FLOAT(entity, propertyName, value)
  return native.invoke(
    Type.Bool, 706, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName),
    arg(Type.Float, value)
  )
end

-- BOOL DECOR_SET_INT(Entity entity, const char* propertyName, int value) // 0x0CE3AA5E1CA19E10
--[[
Sets property to int.
--]]
function DECORATOR.DECOR_SET_INT(entity, propertyName, value)
  return native.invoke(
    Type.Bool, 707, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName),
    arg(Type.Int, value)
  )
end

-- BOOL DECOR_GET_BOOL(Entity entity, const char* propertyName) // 0xDACE671663F2F5DB
function DECORATOR.DECOR_GET_BOOL(entity, propertyName)
  return native.invoke(
    Type.Bool, 708, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName)
  )
end

-- float DECOR_GET_FLOAT(Entity entity, const char* propertyName) // 0x6524A2F114706F43
function DECORATOR.DECOR_GET_FLOAT(entity, propertyName)
  return native.invoke(
    Type.Float, 709, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName)
  )
end

-- int DECOR_GET_INT(Entity entity, const char* propertyName) // 0xA06C969B02A97298
function DECORATOR.DECOR_GET_INT(entity, propertyName)
  return native.invoke(
    Type.Int, 710, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName)
  )
end

-- BOOL DECOR_EXIST_ON(Entity entity, const char* propertyName) // 0x05661B80A8C9165F
--[[
Returns whether or not the specified property is set for the entity.
--]]
function DECORATOR.DECOR_EXIST_ON(entity, propertyName)
  return native.invoke(
    Type.Bool, 711, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName)
  )
end

-- BOOL DECOR_REMOVE(Entity entity, const char* propertyName) // 0x00EE9F297C738720
function DECORATOR.DECOR_REMOVE(entity, propertyName)
  return native.invoke(
    Type.Bool, 712, false,
    arg(Type.Entity, entity),
    arg(Type.String, propertyName)
  )
end

-- void DECOR_REGISTER(const char* propertyName, int type) // 0x9FD90732F56403CE
--[[
https://alloc8or.re/gta5/doc/enums/eDecorType.txt
--]]
function DECORATOR.DECOR_REGISTER(propertyName, type)
  native.invoke(
    Type.Void, 713, false,
    arg(Type.String, propertyName),
    arg(Type.Int, type)
  )
end

-- BOOL DECOR_IS_REGISTERED_AS_TYPE(const char* propertyName, int type) // 0x4F14F9F870D6FBC8
--[[
type: see DECOR_REGISTER
--]]
function DECORATOR.DECOR_IS_REGISTERED_AS_TYPE(propertyName, type)
  return native.invoke(
    Type.Bool, 714, false,
    arg(Type.String, propertyName),
    arg(Type.Int, type)
  )
end

-- void DECOR_REGISTER_LOCK() // 0xA9D14EEA259F9248
--[[
Called after all decorator type initializations.
--]]
function DECORATOR.DECOR_REGISTER_LOCK()
  native.invoke(
    Type.Void, 715, false
  )
end


