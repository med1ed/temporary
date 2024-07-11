DLC = {}

-- BOOL ARE_ANY_CCS_PENDING() // 0x241FCA5B1AA14F75
function DLC.ARE_ANY_CCS_PENDING()
  return native.invoke(
    Type.Bool, 716, false
  )
end

-- BOOL IS_DLC_PRESENT(Hash dlcHash) // 0x812595A0644CE1DE
--[[
Returns true if the given DLC pack is present.
--]]
function DLC.IS_DLC_PRESENT(dlcHash)
  return native.invoke(
    Type.Bool, 717, false,
    arg(Type.Hash, dlcHash)
  )
end

-- BOOL DLC_CHECK_CLOUD_DATA_CORRECT() // 0xF2E07819EF1A5289
--[[
This function is hard-coded to always return 1.
--]]
function DLC.DLC_CHECK_CLOUD_DATA_CORRECT()
  return native.invoke(
    Type.Bool, 718, false
  )
end

-- int GET_EXTRACONTENT_CLOUD_RESULT() // 0x9489659372A81585
--[[
This function is hard-coded to always return 0.
--]]
function DLC.GET_EXTRACONTENT_CLOUD_RESULT()
  return native.invoke(
    Type.Int, 719, false
  )
end

-- BOOL DLC_CHECK_COMPAT_PACK_CONFIGURATION() // 0xA213B11DFF526300
--[[
This function is hard-coded to always return 1.
--]]
function DLC.DLC_CHECK_COMPAT_PACK_CONFIGURATION()
  return native.invoke(
    Type.Bool, 720, false
  )
end

-- BOOL GET_EVER_HAD_BAD_PACK_ORDER() // 0x8D30F648014A92B5
function DLC.GET_EVER_HAD_BAD_PACK_ORDER()
  return native.invoke(
    Type.Bool, 721, false
  )
end

-- BOOL GET_IS_LOADING_SCREEN_ACTIVE() // 0x10D0A8F259E93EC9
function DLC.GET_IS_LOADING_SCREEN_ACTIVE()
  return native.invoke(
    Type.Bool, 722, false
  )
end

-- BOOL GET_IS_INITIAL_LOADING_SCREEN_ACTIVE() // 0xC4637A6D03C24CC3
function DLC.GET_IS_INITIAL_LOADING_SCREEN_ACTIVE()
  return native.invoke(
    Type.Bool, 723, false
  )
end

-- BOOL HAS_CLOUD_REQUESTS_FINISHED(BOOL* p0, int unused) // 0x46E2B844905BC5F0
--[[
Sets the value of the specified variable to 0.
Always returns true.
--]]
function DLC.HAS_CLOUD_REQUESTS_FINISHED(p0, unused)
  return native.invoke(
    Type.Bool, 724, false,
    ref(Type.Bool, p0),
    arg(Type.Int, unused)
  )
end

-- void ON_ENTER_SP() // 0xD7C10C4A637992C9
--[[
Unloads GROUP_MAP (GTAO/MP) DLC data and loads GROUP_MAP_SP DLC. Neither are loaded by default, ON_ENTER_MP is a cognate to this function and loads MP DLC (and unloads SP DLC by extension).
Works in singleplayer.
--]]
function DLC.ON_ENTER_SP()
  native.invoke(
    Type.Void, 725, false
  )
end

-- void ON_ENTER_MP() // 0x0888C3502DBBEEF5
--[[
This loads the GTA:O dlc map parts (high end garages, apartments).
Works in singleplayer.
In order to use GTA:O heist IPL's you have to call this native with the following params: SET_INSTANCE_PRIORITY_MODE(1);
--]]
function DLC.ON_ENTER_MP()
  native.invoke(
    Type.Void, 726, false
  )
end


