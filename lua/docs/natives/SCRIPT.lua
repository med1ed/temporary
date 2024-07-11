SCRIPT = {}

-- void REQUEST_SCRIPT(const char* scriptName) // 0x6EB5F71AA68F2E8E
function SCRIPT.REQUEST_SCRIPT(scriptName)
  native.invoke(
    Type.Void, 4783, false,
    arg(Type.String, scriptName)
  )
end

-- void SET_SCRIPT_AS_NO_LONGER_NEEDED(const char* scriptName) // 0xC90D2DCACD56184C
function SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(scriptName)
  native.invoke(
    Type.Void, 4784, false,
    arg(Type.String, scriptName)
  )
end

-- BOOL HAS_SCRIPT_LOADED(const char* scriptName) // 0xE6CC9F3BA0FB9EF1
--[[
Returns if a script has been loaded into the game. Used to see if a script was loaded after requesting.
--]]
function SCRIPT.HAS_SCRIPT_LOADED(scriptName)
  return native.invoke(
    Type.Bool, 4785, false,
    arg(Type.String, scriptName)
  )
end

-- BOOL DOES_SCRIPT_EXIST(const char* scriptName) // 0xFC04745FBE67C19A
function SCRIPT.DOES_SCRIPT_EXIST(scriptName)
  return native.invoke(
    Type.Bool, 4786, false,
    arg(Type.String, scriptName)
  )
end

-- void REQUEST_SCRIPT_WITH_NAME_HASH(Hash scriptHash) // 0xD62A67D26D9653E6
--[[
formerly _REQUEST_STREAMED_SCRIPT
--]]
function SCRIPT.REQUEST_SCRIPT_WITH_NAME_HASH(scriptHash)
  native.invoke(
    Type.Void, 4787, false,
    arg(Type.Hash, scriptHash)
  )
end

-- void SET_SCRIPT_WITH_NAME_HASH_AS_NO_LONGER_NEEDED(Hash scriptHash) // 0xC5BC038960E9DB27
function SCRIPT.SET_SCRIPT_WITH_NAME_HASH_AS_NO_LONGER_NEEDED(scriptHash)
  native.invoke(
    Type.Void, 4788, false,
    arg(Type.Hash, scriptHash)
  )
end

-- BOOL HAS_SCRIPT_WITH_NAME_HASH_LOADED(Hash scriptHash) // 0x5F0F0C783EB16C04
function SCRIPT.HAS_SCRIPT_WITH_NAME_HASH_LOADED(scriptHash)
  return native.invoke(
    Type.Bool, 4789, false,
    arg(Type.Hash, scriptHash)
  )
end

-- BOOL DOES_SCRIPT_WITH_NAME_HASH_EXIST(Hash scriptHash) // 0xF86AA3C56BA31381
function SCRIPT.DOES_SCRIPT_WITH_NAME_HASH_EXIST(scriptHash)
  return native.invoke(
    Type.Bool, 4790, false,
    arg(Type.Hash, scriptHash)
  )
end

-- void TERMINATE_THREAD(int threadId) // 0xC8B189ED9138BCD4
function SCRIPT.TERMINATE_THREAD(threadId)
  native.invoke(
    Type.Void, 4791, false,
    arg(Type.Int, threadId)
  )
end

-- BOOL IS_THREAD_ACTIVE(int threadId) // 0x46E9AE36D8FA6417
function SCRIPT.IS_THREAD_ACTIVE(threadId)
  return native.invoke(
    Type.Bool, 4792, false,
    arg(Type.Int, threadId)
  )
end

-- const char* GET_NAME_OF_SCRIPT_WITH_THIS_ID(int threadId) // 0x05A42BA9FC8DA96B
function SCRIPT.GET_NAME_OF_SCRIPT_WITH_THIS_ID(threadId)
  return native.invoke(
    Type.String, 4793, false,
    arg(Type.Int, threadId)
  )
end

-- void SCRIPT_THREAD_ITERATOR_RESET() // 0xDADFADA5A20143A8
--[[
Starts a new iteration of the current threads.
Call this first, then SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID (0x30B4FA1C82DD4B9F)
--]]
function SCRIPT.SCRIPT_THREAD_ITERATOR_RESET()
  native.invoke(
    Type.Void, 4794, false
  )
end

-- int SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID() // 0x30B4FA1C82DD4B9F
--[[
If the function returns 0, the end of the iteration has been reached.
--]]
function SCRIPT.SCRIPT_THREAD_ITERATOR_GET_NEXT_THREAD_ID()
  return native.invoke(
    Type.Int, 4795, false
  )
end

-- int GET_ID_OF_THIS_THREAD() // 0xC30338E8088E2E21
function SCRIPT.GET_ID_OF_THIS_THREAD()
  return native.invoke(
    Type.Int, 4796, false
  )
end

-- void TERMINATE_THIS_THREAD() // 0x1090044AD1DA76FA
function SCRIPT.TERMINATE_THIS_THREAD()
  native.invoke(
    Type.Void, 4797, false
  )
end

-- int GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(Hash scriptHash) // 0x2C83A9DA6BFFC4F9
--[[
Gets the number of instances of the specified script is currently running.

Actually returns numRefs - 1.
if (program)
	v3 = rage::scrProgram::GetNumRefs(program) - 1;
return v3;
--]]
function SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(scriptHash)
  return native.invoke(
    Type.Int, 4798, false,
    arg(Type.Hash, scriptHash)
  )
end

-- const char* GET_THIS_SCRIPT_NAME() // 0x442E0A7EDE4A738A
function SCRIPT.GET_THIS_SCRIPT_NAME()
  return native.invoke(
    Type.String, 4799, false
  )
end

-- Hash GET_HASH_OF_THIS_SCRIPT_NAME() // 0x8A1C8B1738FFE87E
function SCRIPT.GET_HASH_OF_THIS_SCRIPT_NAME()
  return native.invoke(
    Type.Hash, 4800, false
  )
end

-- int GET_NUMBER_OF_EVENTS(int eventGroup) // 0x5F92A689A06620AA
--[[
eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--]]
function SCRIPT.GET_NUMBER_OF_EVENTS(eventGroup)
  return native.invoke(
    Type.Int, 4801, false,
    arg(Type.Int, eventGroup)
  )
end

-- BOOL GET_EVENT_EXISTS(int eventGroup, int eventIndex) // 0x936E6168A9BCEDB5
--[[
eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--]]
function SCRIPT.GET_EVENT_EXISTS(eventGroup, eventIndex)
  return native.invoke(
    Type.Bool, 4802, false,
    arg(Type.Int, eventGroup),
    arg(Type.Int, eventIndex)
  )
end

-- int GET_EVENT_AT_INDEX(int eventGroup, int eventIndex) // 0xD8F66A3A60C62153
--[[
eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)
--]]
function SCRIPT.GET_EVENT_AT_INDEX(eventGroup, eventIndex)
  return native.invoke(
    Type.Int, 4803, false,
    arg(Type.Int, eventGroup),
    arg(Type.Int, eventIndex)
  )
end

-- BOOL GET_EVENT_DATA(int eventGroup, int eventIndex, Any* eventData, int eventDataSize) // 0x2902843FCD2B2D79
--[[
eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)

Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).
--]]
function SCRIPT.GET_EVENT_DATA(eventGroup, eventIndex, eventData, eventDataSize)
  return native.invoke(
    Type.Bool, 4804, false,
    arg(Type.Int, eventGroup),
    arg(Type.Int, eventIndex),
    ref(Type.Any, eventData),
    arg(Type.Int, eventDataSize)
  )
end

-- void TRIGGER_SCRIPT_EVENT(int eventGroup, Any* eventData, int eventDataSize, int playerBits) // 0x5AE99C571D5BBE5D
--[[
eventGroup: 0 = SCRIPT_EVENT_QUEUE_AI (CEventGroupScriptAI), 1 = SCRIPT_EVENT_QUEUE_NETWORK (CEventGroupScriptNetwork)

Note: eventDataSize is NOT the size in bytes, it is the size determined by the SIZE_OF operator (RAGE Script operator, not C/C++ sizeof). That is, the size in bytes divided by 8 (script variables are always 8-byte aligned!).

playerBits (also known as playersToBroadcastTo) is a bitset that indicates which players this event should be sent to. In order to send the event to specific players only, use (1 << playerIndex). Set all bits if it should be broadcast to all players.
--]]
function SCRIPT.TRIGGER_SCRIPT_EVENT(eventGroup, eventData, eventDataSize, playerBits)
  native.invoke(
    Type.Void, 4805, false,
    arg(Type.Int, eventGroup),
    ref(Type.Any, eventData),
    arg(Type.Int, eventDataSize),
    arg(Type.Int, playerBits)
  )
end

-- void SHUTDOWN_LOADING_SCREEN() // 0x078EBE9809CCD637
function SCRIPT.SHUTDOWN_LOADING_SCREEN()
  native.invoke(
    Type.Void, 4806, false
  )
end

-- void SET_NO_LOADING_SCREEN(BOOL toggle) // 0x5262CC1995D07E09
function SCRIPT.SET_NO_LOADING_SCREEN(toggle)
  native.invoke(
    Type.Void, 4807, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_NO_LOADING_SCREEN() // 0x18C1270EA7F199BC
function SCRIPT.GET_NO_LOADING_SCREEN()
  return native.invoke(
    Type.Bool, 4808, false
  )
end

-- void COMMIT_TO_LOADINGSCREEN_SELCTION() // 0xB1577667C3708F9B
function SCRIPT.COMMIT_TO_LOADINGSCREEN_SELCTION()
  native.invoke(
    Type.Void, 4809, false
  )
end

-- BOOL BG_IS_EXITFLAG_SET() // 0x836B62713E0534CA
--[[
Returns true if bit 0 in GtaThread+0x154 is set.
--]]
function SCRIPT.BG_IS_EXITFLAG_SET()
  return native.invoke(
    Type.Bool, 4810, false
  )
end

-- void BG_SET_EXITFLAG_RESPONSE() // 0x760910B49D2B98EA
--[[
Sets bit 1 in GtaThread+0x154
--]]
function SCRIPT.BG_SET_EXITFLAG_RESPONSE()
  native.invoke(
    Type.Void, 4811, false
  )
end

-- void BG_START_CONTEXT_HASH(Hash contextHash) // 0x75B18E49607874C7
--[[
Hashed version of BG_START_CONTEXT.
--]]
function SCRIPT.BG_START_CONTEXT_HASH(contextHash)
  native.invoke(
    Type.Void, 4812, false,
    arg(Type.Hash, contextHash)
  )
end

-- void BG_END_CONTEXT_HASH(Hash contextHash) // 0x107E5CC7CA942BC1
--[[
Hashed version of BG_END_CONTEXT.
--]]
function SCRIPT.BG_END_CONTEXT_HASH(contextHash)
  native.invoke(
    Type.Void, 4813, false,
    arg(Type.Hash, contextHash)
  )
end

-- void BG_START_CONTEXT(const char* contextName) // 0x9D5A25BADB742ACD
--[[
Inserts the given context into the background scripts context map.
--]]
function SCRIPT.BG_START_CONTEXT(contextName)
  native.invoke(
    Type.Void, 4814, false,
    arg(Type.String, contextName)
  )
end

-- void BG_END_CONTEXT(const char* contextName) // 0xDC2BACD920D0A0DD
--[[
Deletes the given context from the background scripts context map.
--]]
function SCRIPT.BG_END_CONTEXT(contextName)
  native.invoke(
    Type.Void, 4815, false,
    arg(Type.String, contextName)
  )
end

-- BOOL BG_DOES_LAUNCH_PARAM_EXIST(int scriptIndex, const char* p1) // 0x0F6F1EBBC4E1D5E6
function SCRIPT.BG_DOES_LAUNCH_PARAM_EXIST(scriptIndex, p1)
  return native.invoke(
    Type.Bool, 4816, false,
    arg(Type.Int, scriptIndex),
    arg(Type.String, p1)
  )
end

-- int BG_GET_LAUNCH_PARAM_VALUE(int scriptIndex, const char* p1) // 0x22E21FBCFC88C149
function SCRIPT.BG_GET_LAUNCH_PARAM_VALUE(scriptIndex, p1)
  return native.invoke(
    Type.Int, 4817, false,
    arg(Type.Int, scriptIndex),
    arg(Type.String, p1)
  )
end

-- int BG_GET_SCRIPT_ID_FROM_NAME_HASH(Hash p0) // 0x829CD22E043A2577
function SCRIPT.BG_GET_SCRIPT_ID_FROM_NAME_HASH(p0)
  return native.invoke(
    Type.Int, 4818, false,
    arg(Type.Hash, p0)
  )
end

-- void _SEND_TU_SCRIPT_EVENT_NEW(int eventGroup, Any* eventData, int eventDataSize, int playerBits, Hash eventType) // 0x71A6F836422FDD2B
--[[
New variant of SEND_TU_SCRIPT_EVENT that automatically initializes the event data header.
See TRIGGER_SCRIPT_EVENT for more info.
--]]
function SCRIPT._SEND_TU_SCRIPT_EVENT_NEW(eventGroup, eventData, eventDataSize, playerBits, eventType)
  native.invoke(
    Type.Void, 4819, false,
    arg(Type.Int, eventGroup),
    ref(Type.Any, eventData),
    arg(Type.Int, eventDataSize),
    arg(Type.Int, playerBits),
    arg(Type.Hash, eventType)
  )
end


