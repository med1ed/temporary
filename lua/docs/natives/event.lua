EVENT = {}

-- void SET_DECISION_MAKER(Ped ped, Hash name) // 0xB604A2942ADED0EE
function EVENT.SET_DECISION_MAKER(ped, name)
  native.invoke(
    Type.Void, 915, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, name)
  )
end

-- void CLEAR_DECISION_MAKER_EVENT_RESPONSE(Hash name, int eventType) // 0x4FC9381A7AEE8968
--[[
eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--]]
function EVENT.CLEAR_DECISION_MAKER_EVENT_RESPONSE(name, eventType)
  native.invoke(
    Type.Void, 916, false,
    arg(Type.Hash, name),
    arg(Type.Int, eventType)
  )
end

-- void BLOCK_DECISION_MAKER_EVENT(Hash name, int eventType) // 0xE42FCDFD0E4196F7
--[[
eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt

This is limited to 4 blocked events at a time.
--]]
function EVENT.BLOCK_DECISION_MAKER_EVENT(name, eventType)
  native.invoke(
    Type.Void, 917, false,
    arg(Type.Hash, name),
    arg(Type.Int, eventType)
  )
end

-- void UNBLOCK_DECISION_MAKER_EVENT(Hash name, int eventType) // 0xD7CD9CF34F2C99E8
--[[
eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--]]
function EVENT.UNBLOCK_DECISION_MAKER_EVENT(name, eventType)
  native.invoke(
    Type.Void, 918, false,
    arg(Type.Hash, name),
    arg(Type.Int, eventType)
  )
end

-- int ADD_SHOCKING_EVENT_AT_POSITION(int eventType, float x, float y, float z, float duration) // 0xD9F8455409B525E9
--[[
eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--]]
function EVENT.ADD_SHOCKING_EVENT_AT_POSITION(eventType, x, y, z, duration)
  return native.invoke(
    Type.Int, 919, false,
    arg(Type.Int, eventType),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, duration)
  )
end

-- int ADD_SHOCKING_EVENT_FOR_ENTITY(int eventType, Entity entity, float duration) // 0x7FD8F3BE76F89422
--[[
eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--]]
function EVENT.ADD_SHOCKING_EVENT_FOR_ENTITY(eventType, entity, duration)
  return native.invoke(
    Type.Int, 920, false,
    arg(Type.Int, eventType),
    arg(Type.Entity, entity),
    arg(Type.Float, duration)
  )
end

-- BOOL IS_SHOCKING_EVENT_IN_SPHERE(int eventType, float x, float y, float z, float radius) // 0x1374ABB7C15BAB92
--[[
eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--]]
function EVENT.IS_SHOCKING_EVENT_IN_SPHERE(eventType, x, y, z, radius)
  return native.invoke(
    Type.Bool, 921, false,
    arg(Type.Int, eventType),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- BOOL REMOVE_SHOCKING_EVENT(ScrHandle event) // 0x2CDA538C44C6CCE5
function EVENT.REMOVE_SHOCKING_EVENT(event)
  return native.invoke(
    Type.Bool, 922, false,
    arg(Type.Scrhandle, event)
  )
end

-- void REMOVE_ALL_SHOCKING_EVENTS(BOOL p0) // 0xEAABE8FDFA21274C
function EVENT.REMOVE_ALL_SHOCKING_EVENTS(p0)
  native.invoke(
    Type.Void, 923, false,
    arg(Type.Bool, p0)
  )
end

-- void REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS() // 0x340F1415B68AEADE
function EVENT.REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS()
  native.invoke(
    Type.Void, 924, false
  )
end

-- void SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME() // 0x2F9A292AD0A3BD89
function EVENT.SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME()
  native.invoke(
    Type.Void, 925, false
  )
end

-- void SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME(int eventType) // 0x3FD2EC8BF1F1CF30
--[[
eventType: https://alloc8or.re/gta5/doc/enums/eEventType.txt
--]]
function EVENT.SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME(eventType)
  native.invoke(
    Type.Void, 926, false,
    arg(Type.Int, eventType)
  )
end

-- void SUPPRESS_AGITATION_EVENTS_NEXT_FRAME() // 0x5F3B7749C112D552
function EVENT.SUPPRESS_AGITATION_EVENTS_NEXT_FRAME()
  native.invoke(
    Type.Void, 927, false
  )
end


