SYSTEM = {}

-- void WAIT(int ms) // 0x4EDE34FBADD967A6
--[[
Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use "static void WAIT(DWORD time);" found in main.h
--]]
function SYSTEM.WAIT(ms)
  native.invoke(
    Type.Void, 0, false,
    arg(Type.Int, ms)
  )
end

-- int START_NEW_SCRIPT(const char* scriptName, int stackSize) // 0xE81651AD79516E48
--[[
Examples:
 g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);
 l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);
 SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);
 SYSTEM::START_NEW_SCRIPT("emergencycall", 512);
 SYSTEM::START_NEW_SCRIPT("emergencycall", 512); 
 SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);
 SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);
 SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);
 SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);

Decompiled examples of usage when starting a script:
 
    SCRIPT::REQUEST_SCRIPT(a_0);
    if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {
        SYSTEM::START_NEW_SCRIPT(a_0, v_3);
        SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);
        return 1;
    }
 
or:

    v_2 = "MrsPhilips2";
    SCRIPT::REQUEST_SCRIPT(v_2);
    while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {
    SCRIPT::REQUEST_SCRIPT(v_2);
    SYSTEM::WAIT(0);
    }
    sub_8792(36);
    SYSTEM::START_NEW_SCRIPT(v_2, 17000);
    SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);
--]]
function SYSTEM.START_NEW_SCRIPT(scriptName, stackSize)
  return native.invoke(
    Type.Int, 1, false,
    arg(Type.String, scriptName),
    arg(Type.Int, stackSize)
  )
end

-- int START_NEW_SCRIPT_WITH_ARGS(const char* scriptName, Any* args, int argCount, int stackSize) // 0xB8BA7F44DF1575E1
--[[
return : script thread id, 0 if failed
Pass pointer to struct of args in p1, size of struct goes into p2
--]]
function SYSTEM.START_NEW_SCRIPT_WITH_ARGS(scriptName, args, argCount, stackSize)
  return native.invoke(
    Type.Int, 2, false,
    arg(Type.String, scriptName),
    ref(Type.Any, args),
    arg(Type.Int, argCount),
    arg(Type.Int, stackSize)
  )
end

-- int START_NEW_SCRIPT_WITH_NAME_HASH(Hash scriptHash, int stackSize) // 0xEB1C67C3A5333A92
function SYSTEM.START_NEW_SCRIPT_WITH_NAME_HASH(scriptHash, stackSize)
  return native.invoke(
    Type.Int, 3, false,
    arg(Type.Hash, scriptHash),
    arg(Type.Int, stackSize)
  )
end

-- int START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(Hash scriptHash, Any* args, int argCount, int stackSize) // 0xC4BB298BD441BE78
function SYSTEM.START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(scriptHash, args, argCount, stackSize)
  return native.invoke(
    Type.Int, 4, false,
    arg(Type.Hash, scriptHash),
    ref(Type.Any, args),
    arg(Type.Int, argCount),
    arg(Type.Int, stackSize)
  )
end

-- int TIMERA() // 0x83666F9FB8FEBD4B
--[[
Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
--]]
function SYSTEM.TIMERA()
  return native.invoke(
    Type.Int, 5, false
  )
end

-- int TIMERB() // 0xC9D9444186B5A374
function SYSTEM.TIMERB()
  return native.invoke(
    Type.Int, 6, false
  )
end

-- void SETTIMERA(int value) // 0xC1B1E9A034A63A62
function SYSTEM.SETTIMERA(value)
  native.invoke(
    Type.Void, 7, false,
    arg(Type.Int, value)
  )
end

-- void SETTIMERB(int value) // 0x5AE11BC36633DE4E
function SYSTEM.SETTIMERB(value)
  native.invoke(
    Type.Void, 8, false,
    arg(Type.Int, value)
  )
end

-- float TIMESTEP() // 0x0000000050597EE2
--[[
Gets the current frame time.
--]]
function SYSTEM.TIMESTEP()
  return native.invoke(
    Type.Float, 9, false
  )
end

-- float SIN(float value) // 0x0BADBFA3B172435F
function SYSTEM.SIN(value)
  return native.invoke(
    Type.Float, 10, false,
    arg(Type.Float, value)
  )
end

-- float COS(float value) // 0xD0FFB162F40A139C
function SYSTEM.COS(value)
  return native.invoke(
    Type.Float, 11, false,
    arg(Type.Float, value)
  )
end

-- float SQRT(float value) // 0x71D93B57D07F9804
function SYSTEM.SQRT(value)
  return native.invoke(
    Type.Float, 12, false,
    arg(Type.Float, value)
  )
end

-- float POW(float base, float exponent) // 0xE3621CC40F31FE2E
function SYSTEM.POW(base, exponent)
  return native.invoke(
    Type.Float, 13, false,
    arg(Type.Float, base),
    arg(Type.Float, exponent)
  )
end

-- float LOG10(float value) // 0xE816E655DE37FE20
function SYSTEM.LOG10(value)
  return native.invoke(
    Type.Float, 14, false,
    arg(Type.Float, value)
  )
end

-- float VMAG(float x, float y, float z) // 0x652D2EEEF1D3E62C
--[[
Calculates the magnitude of a vector.
--]]
function SYSTEM.VMAG(x, y, z)
  return native.invoke(
    Type.Float, 15, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- float VMAG2(float x, float y, float z) // 0xA8CEACB4F35AE058
--[[
Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
--]]
function SYSTEM.VMAG2(x, y, z)
  return native.invoke(
    Type.Float, 16, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- float VDIST(float x1, float y1, float z1, float x2, float y2, float z2) // 0x2A488C176D52CCA5
--[[
Calculates distance between vectors.
--]]
function SYSTEM.VDIST(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Float, 17, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- float VDIST2(float x1, float y1, float z1, float x2, float y2, float z2) // 0xB7A628320EFF8E47
--[[
Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
--]]
function SYSTEM.VDIST2(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Float, 18, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- int SHIFT_LEFT(int value, int bitShift) // 0xEDD95A39E5544DE8
function SYSTEM.SHIFT_LEFT(value, bitShift)
  return native.invoke(
    Type.Int, 19, false,
    arg(Type.Int, value),
    arg(Type.Int, bitShift)
  )
end

-- int SHIFT_RIGHT(int value, int bitShift) // 0x97EF1E5BCE9DC075
function SYSTEM.SHIFT_RIGHT(value, bitShift)
  return native.invoke(
    Type.Int, 20, false,
    arg(Type.Int, value),
    arg(Type.Int, bitShift)
  )
end

-- int FLOOR(float value) // 0xF34EE736CF047844
function SYSTEM.FLOOR(value)
  return native.invoke(
    Type.Int, 21, false,
    arg(Type.Float, value)
  )
end

-- int CEIL(float value) // 0x11E019C8F43ACC8A
--[[
I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
--]]
function SYSTEM.CEIL(value)
  return native.invoke(
    Type.Int, 22, false,
    arg(Type.Float, value)
  )
end

-- int ROUND(float value) // 0xF2DB717A73826179
function SYSTEM.ROUND(value)
  return native.invoke(
    Type.Int, 23, false,
    arg(Type.Float, value)
  )
end

-- float TO_FLOAT(int value) // 0xBBDA792448DB5A89
function SYSTEM.TO_FLOAT(value)
  return native.invoke(
    Type.Float, 24, false,
    arg(Type.Int, value)
  )
end

-- void SET_THIS_THREAD_PRIORITY(int priority) // 0x42B65DEEF2EDF2A1
--[[
THREAD_PRIO_HIGHEST = 0
THREAD_PRIO_NORMAL = 1
THREAD_PRIO_LOWEST = 2
THREAD_PRIO_MANUAL_UPDATE = 100
--]]
function SYSTEM.SET_THIS_THREAD_PRIORITY(priority)
  native.invoke(
    Type.Void, 25, false,
    arg(Type.Int, priority)
  )
end


