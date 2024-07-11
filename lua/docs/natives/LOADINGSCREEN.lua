LOADINGSCREEN = {}

-- BOOL LOBBY_AUTO_MULTIPLAYER_MENU() // 0xF2CA003F167E21D2
--[[
This function is hard-coded to always return 0.
--]]
function LOADINGSCREEN.LOBBY_AUTO_MULTIPLAYER_MENU()
  return native.invoke(
    Type.Bool, 1962, false
  )
end

-- BOOL LOBBY_AUTO_MULTIPLAYER_FREEMODE() // 0xEF7D17BC6C85264C
function LOADINGSCREEN.LOBBY_AUTO_MULTIPLAYER_FREEMODE()
  return native.invoke(
    Type.Bool, 1963, false
  )
end

-- void LOBBY_SET_AUTO_MULTIPLAYER(BOOL toggle) // 0xB0C56BD3D808D863
function LOADINGSCREEN.LOBBY_SET_AUTO_MULTIPLAYER(toggle)
  native.invoke(
    Type.Void, 1964, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL LOBBY_AUTO_MULTIPLAYER_EVENT() // 0x8AA464D4E0F6ACCD
function LOADINGSCREEN.LOBBY_AUTO_MULTIPLAYER_EVENT()
  return native.invoke(
    Type.Bool, 1965, false
  )
end

-- void LOBBY_SET_AUTO_MULTIPLAYER_EVENT(BOOL toggle) // 0xFC309E94546FCDB5
function LOADINGSCREEN.LOBBY_SET_AUTO_MULTIPLAYER_EVENT(toggle)
  native.invoke(
    Type.Void, 1966, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL LOBBY_AUTO_MULTIPLAYER_RANDOM_JOB() // 0xC6DC823253FBB366
function LOADINGSCREEN.LOBBY_AUTO_MULTIPLAYER_RANDOM_JOB()
  return native.invoke(
    Type.Bool, 1967, false
  )
end

-- void LOBBY_SET_AUTO_MP_RANDOM_JOB(BOOL toggle) // 0xC7E7181C09F33B69
function LOADINGSCREEN.LOBBY_SET_AUTO_MP_RANDOM_JOB(toggle)
  native.invoke(
    Type.Void, 1968, false,
    arg(Type.Bool, toggle)
  )
end

-- void SHUTDOWN_SESSION_CLEARS_AUTO_MULTIPLAYER(BOOL toggle) // 0xFA1E0E893D915215
function LOADINGSCREEN.SHUTDOWN_SESSION_CLEARS_AUTO_MULTIPLAYER(toggle)
  native.invoke(
    Type.Void, 1969, false,
    arg(Type.Bool, toggle)
  )
end


