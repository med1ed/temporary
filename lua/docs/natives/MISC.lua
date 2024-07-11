MISC = {}

-- int GET_ALLOCATED_STACK_SIZE() // 0x8B3CA62B1EF19B62
function MISC.GET_ALLOCATED_STACK_SIZE()
  return native.invoke(
    Type.Int, 1973, false
  )
end

-- int GET_NUMBER_OF_FREE_STACKS_OF_THIS_SIZE(int stackSize) // 0xFEAD16FC8F9DFC0F
function MISC.GET_NUMBER_OF_FREE_STACKS_OF_THIS_SIZE(stackSize)
  return native.invoke(
    Type.Int, 1974, false,
    arg(Type.Int, stackSize)
  )
end

-- void SET_RANDOM_SEED(int seed) // 0x444D98F98C11F3EC
function MISC.SET_RANDOM_SEED(seed)
  native.invoke(
    Type.Void, 1975, false,
    arg(Type.Int, seed)
  )
end

-- void SET_TIME_SCALE(float timeScale) // 0x1D408577D440E81E
--[[
Maximum value is 1.
At a value of 0 the game will still run at a minimum time scale.

Slow Motion 1: 0.6
Slow Motion 2: 0.4
Slow Motion 3: 0.2
--]]
function MISC.SET_TIME_SCALE(timeScale)
  native.invoke(
    Type.Void, 1976, false,
    arg(Type.Float, timeScale)
  )
end

-- void SET_MISSION_FLAG(BOOL toggle) // 0xC4301E5121A0ED73
--[[
If true, the player can't save the game. 


If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.

^ also, if the mission flag is already set, the function does nothing at all
--]]
function MISC.SET_MISSION_FLAG(toggle)
  native.invoke(
    Type.Void, 1977, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_MISSION_FLAG() // 0xA33CDCCDA663159E
function MISC.GET_MISSION_FLAG()
  return native.invoke(
    Type.Bool, 1978, false
  )
end

-- void SET_RANDOM_EVENT_FLAG(BOOL toggle) // 0x971927086CFD2158
--[[
If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all.
Does nothing if the mission flag is set.
--]]
function MISC.SET_RANDOM_EVENT_FLAG(toggle)
  native.invoke(
    Type.Void, 1979, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_RANDOM_EVENT_FLAG() // 0xD2D57F1D764117B1
function MISC.GET_RANDOM_EVENT_FLAG()
  return native.invoke(
    Type.Bool, 1980, false
  )
end

-- const char* GET_CONTENT_TO_LOAD() // 0x24DA7D7667FD7B09
--[[
Returns pointer to an empty string.
--]]
function MISC.GET_CONTENT_TO_LOAD()
  return native.invoke(
    Type.String, 1981, false
  )
end

-- void ACTIVITY_FEED_CREATE(const char* p0, const char* p1) // 0x4DCDF92BF64236CD
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.
--]]
function MISC.ACTIVITY_FEED_CREATE(p0, p1)
  native.invoke(
    Type.Void, 1982, false,
    arg(Type.String, p0),
    arg(Type.String, p1)
  )
end

-- void ACTIVITY_FEED_ADD_SUBSTRING_TO_CAPTION(const char* p0) // 0x31125FD509D9043F
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.
--]]
function MISC.ACTIVITY_FEED_ADD_SUBSTRING_TO_CAPTION(p0)
  native.invoke(
    Type.Void, 1983, false,
    arg(Type.String, p0)
  )
end

-- void ACTIVITY_FEED_ADD_LITERAL_SUBSTRING_TO_CAPTION(const char* p0) // 0xEBD3205A207939ED
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.
--]]
function MISC.ACTIVITY_FEED_ADD_LITERAL_SUBSTRING_TO_CAPTION(p0)
  native.invoke(
    Type.Void, 1984, false,
    arg(Type.String, p0)
  )
end

-- void ACTIVITY_FEED_ADD_INT_TO_CAPTION(Any p0) // 0x97E7E2C04245115B
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.
--]]
function MISC.ACTIVITY_FEED_ADD_INT_TO_CAPTION(p0)
  native.invoke(
    Type.Void, 1985, false,
    arg(Type.Any, p0)
  )
end

-- void ACTIVITY_FEED_LARGE_IMAGE_URL(const char* p0) // 0x916CA67D26FD1E37
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.
--]]
function MISC.ACTIVITY_FEED_LARGE_IMAGE_URL(p0)
  native.invoke(
    Type.Void, 1986, false,
    arg(Type.String, p0)
  )
end

-- void ACTIVITY_FEED_ACTION_START_WITH_COMMAND_LINE(const char* p0, const char* p1) // 0xEB078CA2B5E82ADD
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.
--]]
function MISC.ACTIVITY_FEED_ACTION_START_WITH_COMMAND_LINE(p0, p1)
  native.invoke(
    Type.Void, 1987, false,
    arg(Type.String, p0),
    arg(Type.String, p1)
  )
end

-- void ACTIVITY_FEED_ACTION_START_WITH_COMMAND_LINE_ADD(const char* p0) // 0x703CC7F60CBB2B57
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.
--]]
function MISC.ACTIVITY_FEED_ACTION_START_WITH_COMMAND_LINE_ADD(p0)
  native.invoke(
    Type.Void, 1988, false,
    arg(Type.String, p0)
  )
end

-- void ACTIVITY_FEED_POST() // 0x8951EB9C6906D3C8
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.
--]]
function MISC.ACTIVITY_FEED_POST()
  native.invoke(
    Type.Void, 1989, false
  )
end

-- void ACTIVITY_FEED_ONLINE_PLAYED_WITH_POST(const char* p0) // 0xBA4B8D83BDC75551
--[[
Does nothing (it's a nullsub). Seems to be PS4 specific.

Used only once in the scripts (ingamehud) with p0 = "AF_GAMEMODE"
--]]
function MISC.ACTIVITY_FEED_ONLINE_PLAYED_WITH_POST(p0)
  native.invoke(
    Type.Void, 1990, false,
    arg(Type.String, p0)
  )
end

-- BOOL HAS_RESUMED_FROM_SUSPEND() // 0xE8B9C0EC9E183F35
--[[
Hardcoded to return false.
--]]
function MISC.HAS_RESUMED_FROM_SUSPEND()
  return native.invoke(
    Type.Bool, 1991, false
  )
end

-- void SET_SCRIPT_HIGH_PRIO(BOOL toggle) // 0x65D2EBB47E1CEC21
--[[
Sets GtaThread+0x14A
--]]
function MISC.SET_SCRIPT_HIGH_PRIO(toggle)
  native.invoke(
    Type.Void, 1992, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_THIS_IS_A_TRIGGER_SCRIPT(BOOL toggle) // 0x6F2135B6129620C1
--[[
Sets bit 3 in GtaThread+0x150
--]]
function MISC.SET_THIS_IS_A_TRIGGER_SCRIPT(toggle)
  native.invoke(
    Type.Void, 1993, false,
    arg(Type.Bool, toggle)
  )
end

-- void INFORM_CODE_OF_CONTENT_ID_OF_CURRENT_UGC_MISSION(const char* p0) // 0x8D74E26F54B4E5C3
function MISC.INFORM_CODE_OF_CONTENT_ID_OF_CURRENT_UGC_MISSION(p0)
  native.invoke(
    Type.Void, 1994, false,
    arg(Type.String, p0)
  )
end

-- BOOL GET_BASE_ELEMENT_LOCATION_FROM_METADATA_BLOCK(Any* p0, Any* p1, Any p2, BOOL p3) // 0xB335F761606DB47C
function MISC.GET_BASE_ELEMENT_LOCATION_FROM_METADATA_BLOCK(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 1995, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Bool, p3)
  )
end

-- Hash GET_PREV_WEATHER_TYPE_HASH_NAME() // 0x564B884A05EC45A3
--[[
Returns current weather name hash
--]]
function MISC.GET_PREV_WEATHER_TYPE_HASH_NAME()
  return native.invoke(
    Type.Hash, 1996, false
  )
end

-- Hash GET_NEXT_WEATHER_TYPE_HASH_NAME() // 0x711327CD09C8F162
--[[
Returns weather name hash
--]]
function MISC.GET_NEXT_WEATHER_TYPE_HASH_NAME()
  return native.invoke(
    Type.Hash, 1997, false
  )
end

-- BOOL IS_PREV_WEATHER_TYPE(const char* weatherType) // 0x44F28F86433B10A9
function MISC.IS_PREV_WEATHER_TYPE(weatherType)
  return native.invoke(
    Type.Bool, 1998, false,
    arg(Type.String, weatherType)
  )
end

-- BOOL IS_NEXT_WEATHER_TYPE(const char* weatherType) // 0x2FAA3A30BEC0F25D
function MISC.IS_NEXT_WEATHER_TYPE(weatherType)
  return native.invoke(
    Type.Bool, 1999, false,
    arg(Type.String, weatherType)
  )
end

-- void SET_WEATHER_TYPE_PERSIST(const char* weatherType) // 0x704983DF373B198F
--[[
The following weatherTypes are used in the scripts:
"CLEAR"
"EXTRASUNNY"
"CLOUDS"
"OVERCAST"
"RAIN"
"CLEARING"
"THUNDER"
"SMOG"
"FOGGY"
"XMAS"
"SNOW"
"SNOWLIGHT"
"BLIZZARD"
"HALLOWEEN"
"NEUTRAL"
--]]
function MISC.SET_WEATHER_TYPE_PERSIST(weatherType)
  native.invoke(
    Type.Void, 2000, false,
    arg(Type.String, weatherType)
  )
end

-- void SET_WEATHER_TYPE_NOW_PERSIST(const char* weatherType) // 0xED712CA327900C8A
--[[
The following weatherTypes are used in the scripts:
"CLEAR"
"EXTRASUNNY"
"CLOUDS"
"OVERCAST"
"RAIN"
"CLEARING"
"THUNDER"
"SMOG"
"FOGGY"
"XMAS"
"SNOW"
"SNOWLIGHT"
"BLIZZARD"
"HALLOWEEN"
"NEUTRAL"
--]]
function MISC.SET_WEATHER_TYPE_NOW_PERSIST(weatherType)
  native.invoke(
    Type.Void, 2001, false,
    arg(Type.String, weatherType)
  )
end

-- void SET_WEATHER_TYPE_NOW(const char* weatherType) // 0x29B487C359E19889
--[[
The following weatherTypes are used in the scripts:
"CLEAR"
"EXTRASUNNY"
"CLOUDS"
"OVERCAST"
"RAIN"
"CLEARING"
"THUNDER"
"SMOG"
"FOGGY"
"XMAS"
"SNOW"
"SNOWLIGHT"
"BLIZZARD"
"HALLOWEEN"
"NEUTRAL"
--]]
function MISC.SET_WEATHER_TYPE_NOW(weatherType)
  native.invoke(
    Type.Void, 2002, false,
    arg(Type.String, weatherType)
  )
end

-- void SET_WEATHER_TYPE_OVERTIME_PERSIST(const char* weatherType, float time) // 0xFB5045B7C42B75BF
function MISC.SET_WEATHER_TYPE_OVERTIME_PERSIST(weatherType, time)
  native.invoke(
    Type.Void, 2003, false,
    arg(Type.String, weatherType),
    arg(Type.Float, time)
  )
end

-- void SET_RANDOM_WEATHER_TYPE() // 0x8B05F884CF7E8020
function MISC.SET_RANDOM_WEATHER_TYPE()
  native.invoke(
    Type.Void, 2004, false
  )
end

-- void CLEAR_WEATHER_TYPE_PERSIST() // 0xCCC39339BEF76CF5
function MISC.CLEAR_WEATHER_TYPE_PERSIST()
  native.invoke(
    Type.Void, 2005, false
  )
end

-- void CLEAR_WEATHER_TYPE_NOW_PERSIST_NETWORK(int milliseconds) // 0x0CF97F497FE7D048
function MISC.CLEAR_WEATHER_TYPE_NOW_PERSIST_NETWORK(milliseconds)
  native.invoke(
    Type.Void, 2006, false,
    arg(Type.Int, milliseconds)
  )
end

-- void GET_CURR_WEATHER_STATE(Hash* weatherType1, Hash* weatherType2, float* percentWeather2) // 0xF3BBE884A14BB413
function MISC.GET_CURR_WEATHER_STATE(weatherType1, weatherType2, percentWeather2)
  native.invoke(
    Type.Void, 2007, false,
    ref(Type.Hash, weatherType1),
    ref(Type.Hash, weatherType2),
    ref(Type.Float, percentWeather2)
  )
end

-- void SET_CURR_WEATHER_STATE(Hash weatherType1, Hash weatherType2, float percentWeather2) // 0x578C752848ECFA0C
--[[
Mixes two weather types. If percentWeather2 is set to 0.0f, then the weather will be entirely of weatherType1, if it is set to 1.0f it will be entirely of weatherType2. If it's set somewhere in between, there will be a mixture of weather behaviors. To test, try this in the RPH console, and change the float to different values between 0 and 1:

execute "NativeFunction.Natives.x578C752848ECFA0C(Game.GetHashKey(""RAIN""), Game.GetHashKey(""SMOG""), 0.50f);

Note that unlike most of the other weather natives, this native takes the hash of the weather name, not the plain string. These are the weather names and their hashes:

CLEAR  0x36A83D84
EXTRASUNNY  0x97AA0A79
CLOUDS  0x30FDAF5C
OVERCAST    0xBB898D2D
RAIN    0x54A69840
CLEARING    0x6DB1A50D
THUNDER 0xB677829F
SMOG    0x10DCF4B5
FOGGY   0xAE737644
XMAS    0xAAC9C895
SNOWLIGHT   0x23FB812B
BLIZZARD    0x27EA2814





/* OLD INVALID INFO BELOW */
Not tested. Based purely on disassembly. Instantly sets the weather to sourceWeather, then transitions to targetWeather over the specified transitionTime in seconds.

If an invalid hash is specified for sourceWeather, the current weather type will be used.
If an invalid hash is specified for targetWeather, the next weather type will be used.
If an invalid hash is specified for both sourceWeather and targetWeather, the function just changes the transition time of the current transition.
--]]
function MISC.SET_CURR_WEATHER_STATE(weatherType1, weatherType2, percentWeather2)
  native.invoke(
    Type.Void, 2008, false,
    arg(Type.Hash, weatherType1),
    arg(Type.Hash, weatherType2),
    arg(Type.Float, percentWeather2)
  )
end

-- void SET_OVERRIDE_WEATHER(const char* weatherType) // 0xA43D5C6FE51ADBEF
--[[
Appears to have an optional bool parameter that is unused in the scripts.

If you pass true, something will be set to zero.
--]]
function MISC.SET_OVERRIDE_WEATHER(weatherType)
  native.invoke(
    Type.Void, 2009, false,
    arg(Type.String, weatherType)
  )
end

-- void SET_OVERRIDE_WEATHEREX(const char* weatherType, BOOL p1) // 0x1178E104409FE58C
--[[
Identical to SET_OVERRIDE_WEATHER but has an additional BOOL param that sets some weather var to 0 if true
--]]
function MISC.SET_OVERRIDE_WEATHEREX(weatherType, p1)
  native.invoke(
    Type.Void, 2010, false,
    arg(Type.String, weatherType),
    arg(Type.Bool, p1)
  )
end

-- void CLEAR_OVERRIDE_WEATHER() // 0x338D2E3477711050
function MISC.CLEAR_OVERRIDE_WEATHER()
  native.invoke(
    Type.Void, 2011, false
  )
end

-- void WATER_OVERRIDE_SET_SHOREWAVEAMPLITUDE(float amplitude) // 0xB8F87EAD7533B176
function MISC.WATER_OVERRIDE_SET_SHOREWAVEAMPLITUDE(amplitude)
  native.invoke(
    Type.Void, 2012, false,
    arg(Type.Float, amplitude)
  )
end

-- void WATER_OVERRIDE_SET_SHOREWAVEMINAMPLITUDE(float minAmplitude) // 0xC3EAD29AB273ECE8
function MISC.WATER_OVERRIDE_SET_SHOREWAVEMINAMPLITUDE(minAmplitude)
  native.invoke(
    Type.Void, 2013, false,
    arg(Type.Float, minAmplitude)
  )
end

-- void WATER_OVERRIDE_SET_SHOREWAVEMAXAMPLITUDE(float maxAmplitude) // 0xA7A1127490312C36
function MISC.WATER_OVERRIDE_SET_SHOREWAVEMAXAMPLITUDE(maxAmplitude)
  native.invoke(
    Type.Void, 2014, false,
    arg(Type.Float, maxAmplitude)
  )
end

-- void WATER_OVERRIDE_SET_OCEANNOISEMINAMPLITUDE(float minAmplitude) // 0x31727907B2C43C55
function MISC.WATER_OVERRIDE_SET_OCEANNOISEMINAMPLITUDE(minAmplitude)
  native.invoke(
    Type.Void, 2015, false,
    arg(Type.Float, minAmplitude)
  )
end

-- void WATER_OVERRIDE_SET_OCEANWAVEAMPLITUDE(float amplitude) // 0x405591EC8FD9096D
function MISC.WATER_OVERRIDE_SET_OCEANWAVEAMPLITUDE(amplitude)
  native.invoke(
    Type.Void, 2016, false,
    arg(Type.Float, amplitude)
  )
end

-- void WATER_OVERRIDE_SET_OCEANWAVEMINAMPLITUDE(float minAmplitude) // 0xF751B16FB32ABC1D
function MISC.WATER_OVERRIDE_SET_OCEANWAVEMINAMPLITUDE(minAmplitude)
  native.invoke(
    Type.Void, 2017, false,
    arg(Type.Float, minAmplitude)
  )
end

-- void WATER_OVERRIDE_SET_OCEANWAVEMAXAMPLITUDE(float maxAmplitude) // 0xB3E6360DDE733E82
function MISC.WATER_OVERRIDE_SET_OCEANWAVEMAXAMPLITUDE(maxAmplitude)
  native.invoke(
    Type.Void, 2018, false,
    arg(Type.Float, maxAmplitude)
  )
end

-- void WATER_OVERRIDE_SET_RIPPLEBUMPINESS(float bumpiness) // 0x7C9C0B1EEB1F9072
function MISC.WATER_OVERRIDE_SET_RIPPLEBUMPINESS(bumpiness)
  native.invoke(
    Type.Void, 2019, false,
    arg(Type.Float, bumpiness)
  )
end

-- void WATER_OVERRIDE_SET_RIPPLEMINBUMPINESS(float minBumpiness) // 0x6216B116083A7CB4
function MISC.WATER_OVERRIDE_SET_RIPPLEMINBUMPINESS(minBumpiness)
  native.invoke(
    Type.Void, 2020, false,
    arg(Type.Float, minBumpiness)
  )
end

-- void WATER_OVERRIDE_SET_RIPPLEMAXBUMPINESS(float maxBumpiness) // 0x9F5E6BB6B34540DA
function MISC.WATER_OVERRIDE_SET_RIPPLEMAXBUMPINESS(maxBumpiness)
  native.invoke(
    Type.Void, 2021, false,
    arg(Type.Float, maxBumpiness)
  )
end

-- void WATER_OVERRIDE_SET_RIPPLEDISTURB(float disturb) // 0xB9854DFDE0D833D6
function MISC.WATER_OVERRIDE_SET_RIPPLEDISTURB(disturb)
  native.invoke(
    Type.Void, 2022, false,
    arg(Type.Float, disturb)
  )
end

-- void WATER_OVERRIDE_SET_STRENGTH(float strength) // 0xC54A08C85AE4D410
--[[
This seems to edit the water wave, intensity around your current location.

0.0f = Normal
1.0f = So Calm and Smooth, a boat will stay still.
3.0f = Really Intense.
--]]
function MISC.WATER_OVERRIDE_SET_STRENGTH(strength)
  native.invoke(
    Type.Void, 2023, false,
    arg(Type.Float, strength)
  )
end

-- void WATER_OVERRIDE_FADE_IN(float p0) // 0xA8434F1DFF41D6E7
function MISC.WATER_OVERRIDE_FADE_IN(p0)
  native.invoke(
    Type.Void, 2024, false,
    arg(Type.Float, p0)
  )
end

-- void WATER_OVERRIDE_FADE_OUT(float p0) // 0xC3C221ADDDE31A11
function MISC.WATER_OVERRIDE_FADE_OUT(p0)
  native.invoke(
    Type.Void, 2025, false,
    arg(Type.Float, p0)
  )
end

-- void SET_WIND(float speed) // 0xAC3A74E8384A9919
--[[
Sets the the normalized wind speed value. The wind speed clamps always at 12.0, SET_WIND sets the wind in a percentage, 0.0 is 0 and 1.0 is 12.0. Setting this value to a negative number resumes the random wind speed changes provided by the game.
--]]
function MISC.SET_WIND(speed)
  native.invoke(
    Type.Void, 2026, false,
    arg(Type.Float, speed)
  )
end

-- void SET_WIND_SPEED(float speed) // 0xEE09ECEDBABE47FC
--[[
Using this native will set the absolute wind speed value. The wind speed clamps to a range of 0.0- 12.0. Setting this value to a negative number resumes the random wind speed changes provided by the game.
--]]
function MISC.SET_WIND_SPEED(speed)
  native.invoke(
    Type.Void, 2027, false,
    arg(Type.Float, speed)
  )
end

-- float GET_WIND_SPEED() // 0xA8CF1CC0AFCD3F12
function MISC.GET_WIND_SPEED()
  return native.invoke(
    Type.Float, 2028, false
  )
end

-- void SET_WIND_DIRECTION(float direction) // 0xEB0F4468467B4528
--[[
The wind direction in radians
180 degrees (PI), wind will blow from the south. Setting this value to a negative number resumes the random wind direction changes provided by the game.
--]]
function MISC.SET_WIND_DIRECTION(direction)
  native.invoke(
    Type.Void, 2029, false,
    arg(Type.Float, direction)
  )
end

-- Vector3 GET_WIND_DIRECTION() // 0x1F400FEF721170DA
function MISC.GET_WIND_DIRECTION()
  return native.invoke(
    Type.Vector3, 2030, false
  )
end

-- void SET_RAIN(float intensity) // 0x643E26EA6E024D92
--[[
With an `intensity` higher than `0.5f`, only the creation of puddles gets faster, rain and rain sound won't increase after that.
With an `intensity` of `0.0f` rain and rain sounds are disabled and there won't be any new puddles.
To use the rain intensity of the current weather, call this native with `-1f` as `intensity`.
--]]
function MISC.SET_RAIN(intensity)
  native.invoke(
    Type.Void, 2031, false,
    arg(Type.Float, intensity)
  )
end

-- float GET_RAIN_LEVEL() // 0x96695E368AD855F3
function MISC.GET_RAIN_LEVEL()
  return native.invoke(
    Type.Float, 2032, false
  )
end

-- void SET_SNOW(float level) // 0x7F06937B0CDCBC1A
function MISC.SET_SNOW(level)
  native.invoke(
    Type.Void, 2033, false,
    arg(Type.Float, level)
  )
end

-- float GET_SNOW_LEVEL() // 0xC5868A966E5BE3AE
function MISC.GET_SNOW_LEVEL()
  return native.invoke(
    Type.Float, 2034, false
  )
end

-- void FORCE_LIGHTNING_FLASH() // 0xF6062E089251C898
--[[
creates single lightning+thunder at random position
--]]
function MISC.FORCE_LIGHTNING_FLASH()
  native.invoke(
    Type.Void, 2035, false
  )
end

-- void SET_CLOUD_SETTINGS_OVERRIDE(const char* p0) // 0x02DEAAC8F8EA7FE7
function MISC.SET_CLOUD_SETTINGS_OVERRIDE(p0)
  native.invoke(
    Type.Void, 2036, false,
    arg(Type.String, p0)
  )
end

-- void PRELOAD_CLOUD_HAT(const char* name) // 0x11B56FBBF7224868
function MISC.PRELOAD_CLOUD_HAT(name)
  native.invoke(
    Type.Void, 2037, false,
    arg(Type.String, name)
  )
end

-- void LOAD_CLOUD_HAT(const char* name, float transitionTime) // 0xFC4842A34657BFCB
--[[
The following cloudhats are useable:
altostratus
Cirrus
cirrocumulus
Clear 01
Cloudy 01
Contrails
Horizon
horizonband1
horizonband2
horizonband3
horsey
Nimbus
Puffs
RAIN
Snowy 01
Stormy 01
stratoscumulus
Stripey
shower
Wispy

--]]
function MISC.LOAD_CLOUD_HAT(name, transitionTime)
  native.invoke(
    Type.Void, 2038, false,
    arg(Type.String, name),
    arg(Type.Float, transitionTime)
  )
end

-- void UNLOAD_CLOUD_HAT(const char* name, float p1) // 0xA74802FB8D0B7814
function MISC.UNLOAD_CLOUD_HAT(name, p1)
  native.invoke(
    Type.Void, 2039, false,
    arg(Type.String, name),
    arg(Type.Float, p1)
  )
end

-- void UNLOAD_ALL_CLOUD_HATS() // 0x957E790EA1727B64
function MISC.UNLOAD_ALL_CLOUD_HATS()
  native.invoke(
    Type.Void, 2040, false
  )
end

-- void SET_CLOUDS_ALPHA(float opacity) // 0xF36199225D6D8C86
function MISC.SET_CLOUDS_ALPHA(opacity)
  native.invoke(
    Type.Void, 2041, false,
    arg(Type.Float, opacity)
  )
end

-- float GET_CLOUDS_ALPHA() // 0x20AC25E781AE4A84
function MISC.GET_CLOUDS_ALPHA()
  return native.invoke(
    Type.Float, 2042, false
  )
end

-- int GET_GAME_TIMER() // 0x9CD27B0045628463
function MISC.GET_GAME_TIMER()
  return native.invoke(
    Type.Int, 2043, false
  )
end

-- float GET_FRAME_TIME() // 0x15C40837039FFAF7
function MISC.GET_FRAME_TIME()
  return native.invoke(
    Type.Float, 2044, false
  )
end

-- float GET_SYSTEM_TIME_STEP() // 0xE599A503B3837E1B
function MISC.GET_SYSTEM_TIME_STEP()
  return native.invoke(
    Type.Float, 2045, false
  )
end

-- int GET_FRAME_COUNT() // 0xFC8202EFC642E6F2
function MISC.GET_FRAME_COUNT()
  return native.invoke(
    Type.Int, 2046, false
  )
end

-- float GET_RANDOM_FLOAT_IN_RANGE(float startRange, float endRange) // 0x313CE5879CEB6FCD
function MISC.GET_RANDOM_FLOAT_IN_RANGE(startRange, endRange)
  return native.invoke(
    Type.Float, 2047, false,
    arg(Type.Float, startRange),
    arg(Type.Float, endRange)
  )
end

-- int GET_RANDOM_INT_IN_RANGE(int startRange, int endRange) // 0xD53343AA4FB7DD28
function MISC.GET_RANDOM_INT_IN_RANGE(startRange, endRange)
  return native.invoke(
    Type.Int, 2048, false,
    arg(Type.Int, startRange),
    arg(Type.Int, endRange)
  )
end

-- int GET_RANDOM_MWC_INT_IN_RANGE(int startRange, int endRange) // 0xF2D49816A804D134
function MISC.GET_RANDOM_MWC_INT_IN_RANGE(startRange, endRange)
  return native.invoke(
    Type.Int, 2049, false,
    arg(Type.Int, startRange),
    arg(Type.Int, endRange)
  )
end

-- BOOL GET_GROUND_Z_FOR_3D_COORD(float x, float y, float z, float* groundZ, BOOL ignoreWater, BOOL p5) // 0xC906A7DAB05C8D2B
--[[
Gets the ground elevation at the specified position. Note that if the specified position is below ground level, the function will output zero!

x: Position on the X-axis to get ground elevation at.
y: Position on the Y-axis to get ground elevation at.
z: Position on the Z-axis to get ground elevation at.
groundZ: The ground elevation at the specified position.
ignoreWater: Nearly always 0, very rarely 1 in the scripts: https://gfycat.com/NiftyTatteredCricket

Bear in mind this native can only calculate the elevation when the coordinates are within the client's render distance.
--]]
function MISC.GET_GROUND_Z_FOR_3D_COORD(x, y, z, groundZ, ignoreWater, p5)
  return native.invoke(
    Type.Bool, 2050, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Float, groundZ),
    arg(Type.Bool, ignoreWater),
    arg(Type.Bool, p5)
  )
end

-- BOOL GET_GROUND_Z_AND_NORMAL_FOR_3D_COORD(float x, float y, float z, float* groundZ, Vector3* normal) // 0x8BDC7BFC57A81E76
function MISC.GET_GROUND_Z_AND_NORMAL_FOR_3D_COORD(x, y, z, groundZ, normal)
  return native.invoke(
    Type.Bool, 2051, true,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Float, groundZ),
    ref(Type.Vector3, normal)
  )
end

-- BOOL GET_GROUND_Z_EXCLUDING_OBJECTS_FOR_3D_COORD(float x, float y, float z, float* groundZ, BOOL p4, BOOL p5) // 0x9E82F0F362881B29
function MISC.GET_GROUND_Z_EXCLUDING_OBJECTS_FOR_3D_COORD(x, y, z, groundZ, p4, p5)
  return native.invoke(
    Type.Bool, 2052, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Float, groundZ),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5)
  )
end

-- float ASIN(float p0) // 0xC843060B5765DCE7
function MISC.ASIN(p0)
  return native.invoke(
    Type.Float, 2053, false,
    arg(Type.Float, p0)
  )
end

-- float ACOS(float p0) // 0x1D08B970013C34B6
function MISC.ACOS(p0)
  return native.invoke(
    Type.Float, 2054, false,
    arg(Type.Float, p0)
  )
end

-- float TAN(float p0) // 0x632106CC96E82E91
function MISC.TAN(p0)
  return native.invoke(
    Type.Float, 2055, false,
    arg(Type.Float, p0)
  )
end

-- float ATAN(float p0) // 0xA9D1795CD5043663
function MISC.ATAN(p0)
  return native.invoke(
    Type.Float, 2056, false,
    arg(Type.Float, p0)
  )
end

-- float ATAN2(float p0, float p1) // 0x8927CBF9D22261A4
function MISC.ATAN2(p0, p1)
  return native.invoke(
    Type.Float, 2057, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- float GET_DISTANCE_BETWEEN_COORDS(float x1, float y1, float z1, float x2, float y2, float z2, BOOL useZ) // 0xF1B760881820C952
--[[
Returns the distance between two three-dimensional points, optionally ignoring the Z values.
If useZ is false, only the 2D plane (X-Y) will be considered for calculating the distance.

Consider using this faster native instead: SYSTEM::VDIST - DVIST always takes in consideration the 3D coordinates.
--]]
function MISC.GET_DISTANCE_BETWEEN_COORDS(x1, y1, z1, x2, y2, z2, useZ)
  return native.invoke(
    Type.Float, 2058, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, useZ)
  )
end

-- float GET_ANGLE_BETWEEN_2D_VECTORS(float x1, float y1, float x2, float y2) // 0x186FC4BE848E1C92
function MISC.GET_ANGLE_BETWEEN_2D_VECTORS(x1, y1, x2, y2)
  return native.invoke(
    Type.Float, 2059, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, x2),
    arg(Type.Float, y2)
  )
end

-- float GET_HEADING_FROM_VECTOR_2D(float dx, float dy) // 0x2FFB6B224F4B2926
--[[
dx = x1 - x2
dy = y1 - y2
--]]
function MISC.GET_HEADING_FROM_VECTOR_2D(dx, dy)
  return native.invoke(
    Type.Float, 2060, false,
    arg(Type.Float, dx),
    arg(Type.Float, dy)
  )
end

-- float GET_RATIO_OF_CLOSEST_POINT_ON_LINE(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, BOOL clamp) // 0x7F8F6405F4777AF6
--[[
returns a float between 0.0 and 1.0, clamp: sets whether the product should be clamped between the given coordinates
--]]
function MISC.GET_RATIO_OF_CLOSEST_POINT_ON_LINE(x1, y1, z1, x2, y2, z2, x3, y3, z3, clamp)
  return native.invoke(
    Type.Float, 2061, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, x3),
    arg(Type.Float, y3),
    arg(Type.Float, z3),
    arg(Type.Bool, clamp)
  )
end

-- Vector3 GET_CLOSEST_POINT_ON_LINE(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, BOOL clamp) // 0x21C235BC64831E5A
--[[
clamp: sets whether the product should be clamped between the given coordinates
--]]
function MISC.GET_CLOSEST_POINT_ON_LINE(x1, y1, z1, x2, y2, z2, x3, y3, z3, clamp)
  return native.invoke(
    Type.Vector3, 2062, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, x3),
    arg(Type.Float, y3),
    arg(Type.Float, z3),
    arg(Type.Bool, clamp)
  )
end

-- BOOL GET_LINE_PLANE_INTERSECTION(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float* p12) // 0xF56DFB7B61BE7276
function MISC.GET_LINE_PLANE_INTERSECTION(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
  return native.invoke(
    Type.Bool, 2063, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Float, p10),
    arg(Type.Float, p11),
    ref(Type.Float, p12)
  )
end

-- BOOL GET_POINT_AREA_OVERLAP(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7, Any p8, Any p9, Any p10, Any p11, Any p12, Any p13) // 0xA0AD167E4B39D9A2
function MISC.GET_POINT_AREA_OVERLAP(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13)
  return native.invoke(
    Type.Bool, 2064, false,
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
    arg(Type.Any, p10),
    arg(Type.Any, p11),
    arg(Type.Any, p12),
    arg(Type.Any, p13)
  )
end

-- void SET_BIT(int* address, int offset) // 0x933D6A9EEC1BACD0
--[[
This sets bit [offset] of [address] to on.

The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.

Example:
MISC::SET_BIT(&bitAddress, 1);

To check if this bit has been enabled:
MISC::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards

Please note, this method may assign a value to [address] when used.
--]]
function MISC.SET_BIT(address, offset)
  native.invoke(
    Type.Void, 2065, false,
    ref(Type.Int, address),
    arg(Type.Int, offset)
  )
end

-- void CLEAR_BIT(int* address, int offset) // 0xE80492A9AC099A93
--[[
This sets bit [offset] of [address] to off.

Example:
MISC::CLEAR_BIT(&bitAddress, 1);

To check if this bit has been enabled:
MISC::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards
--]]
function MISC.CLEAR_BIT(address, offset)
  native.invoke(
    Type.Void, 2066, false,
    ref(Type.Int, address),
    arg(Type.Int, offset)
  )
end

-- Hash GET_HASH_KEY(const char* string) // 0xD24D37CC275948CC
--[[
This native converts its past string to hash. It is hashed using jenkins one at a time method.
--]]
function MISC.GET_HASH_KEY(string)
  return native.invoke(
    Type.Hash, 2067, false,
    arg(Type.String, string)
  )
end

-- void SLERP_NEAR_QUATERNION(float t, float x, float y, float z, float w, float x1, float y1, float z1, float w1, float* outX, float* outY, float* outZ, float* outW) // 0xF2F6A2FA49278625
--[[
This native always come right before SET_ENTITY_QUATERNION where its final 4 parameters are SLERP_NEAR_QUATERNION p9 to p12
--]]
function MISC.SLERP_NEAR_QUATERNION(t, x, y, z, w, x1, y1, z1, w1, outX, outY, outZ, outW)
  native.invoke(
    Type.Void, 2068, false,
    arg(Type.Float, t),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, w),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, w1),
    ref(Type.Float, outX),
    ref(Type.Float, outY),
    ref(Type.Float, outZ),
    ref(Type.Float, outW)
  )
end

-- BOOL IS_AREA_OCCUPIED(float p0, float p1, float p2, float p3, float p4, float p5, BOOL p6, BOOL p7, BOOL p8, BOOL p9, BOOL p10, Any p11, BOOL p12) // 0xA61B4DF533DCB56E
function MISC.IS_AREA_OCCUPIED(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
  return native.invoke(
    Type.Bool, 2069, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Bool, p9),
    arg(Type.Bool, p10),
    arg(Type.Any, p11),
    arg(Type.Bool, p12)
  )
end

-- BOOL IS_AREA_OCCUPIED_SLOW(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7, Any p8, Any p9, Any p10, Any p11, Any p12) // 0x39455BF4F4F55186
function MISC.IS_AREA_OCCUPIED_SLOW(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
  return native.invoke(
    Type.Bool, 2070, false,
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
    arg(Type.Any, p10),
    arg(Type.Any, p11),
    arg(Type.Any, p12)
  )
end

-- BOOL IS_POSITION_OCCUPIED(float x, float y, float z, float range, BOOL p4, BOOL checkVehicles, BOOL checkPeds, BOOL p7, BOOL p8, Entity ignoreEntity, BOOL p10) // 0xADCDE75E1C60F32D
--[[
`range`: The range, seems to not be very accurate during testing.
`p4`: Unknown, when set to true it seems to always return true no matter what I try.
`checkVehicle`: Check for any vehicles in that area.
`checkPeds`: Check for any peds in that area.
`ignoreEntity`: This entity will be ignored if it's in the area. Set to 0 if you don't want to exclude any entities.
The BOOL parameters that are documented have not been confirmed. They are just documented from what I've found during testing. They may not work as expected in all cases.

Returns true if there is anything in that location matching the provided parameters.
--]]
function MISC.IS_POSITION_OCCUPIED(x, y, z, range, p4, checkVehicles, checkPeds, p7, p8, ignoreEntity, p10)
  return native.invoke(
    Type.Bool, 2071, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, range),
    arg(Type.Bool, p4),
    arg(Type.Bool, checkVehicles),
    arg(Type.Bool, checkPeds),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Entity, ignoreEntity),
    arg(Type.Bool, p10)
  )
end

-- BOOL IS_POINT_OBSCURED_BY_A_MISSION_ENTITY(float p0, float p1, float p2, float p3, float p4, float p5, Any p6) // 0xE54E209C35FFA18D
function MISC.IS_POINT_OBSCURED_BY_A_MISSION_ENTITY(p0, p1, p2, p3, p4, p5, p6)
  return native.invoke(
    Type.Bool, 2072, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Any, p6)
  )
end

-- void CLEAR_AREA(float X, float Y, float Z, float radius, BOOL p4, BOOL ignoreCopCars, BOOL ignoreObjects, BOOL p7) // 0xA56F01F3765B93A0
--[[
Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);
--]]
function MISC.CLEAR_AREA(X, Y, Z, radius, p4, ignoreCopCars, ignoreObjects, p7)
  native.invoke(
    Type.Void, 2073, false,
    arg(Type.Float, X),
    arg(Type.Float, Y),
    arg(Type.Float, Z),
    arg(Type.Float, radius),
    arg(Type.Bool, p4),
    arg(Type.Bool, ignoreCopCars),
    arg(Type.Bool, ignoreObjects),
    arg(Type.Bool, p7)
  )
end

-- void CLEAR_AREA_LEAVE_VEHICLE_HEALTH(float x, float y, float z, float radius, BOOL p4, BOOL p5, BOOL p6, BOOL p7) // 0x957838AAF91BD12D
--[[
MISC::CLEAR_AREA_LEAVE_VEHICLE_HEALTH(x, y, z, radius, false, false, false, false); seem to make all objects go away, peds, vehicles etc. All booleans set to true doesn't seem to change anything. 
--]]
function MISC.CLEAR_AREA_LEAVE_VEHICLE_HEALTH(x, y, z, radius, p4, p5, p6, p7)
  native.invoke(
    Type.Void, 2074, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7)
  )
end

-- void CLEAR_AREA_OF_VEHICLES(float x, float y, float z, float radius, BOOL p4, BOOL p5, BOOL p6, BOOL p7, BOOL p8, BOOL p9, Any p10) // 0x01C7B9B38428AEB6
--[[
Example:
CLEAR_AREA_OF_VEHICLES(0.0f, 0.0f, 0.0f, 10000.0f, false, false, false, false, false, false);
--]]
function MISC.CLEAR_AREA_OF_VEHICLES(x, y, z, radius, p4, p5, p6, p7, p8, p9, p10)
  native.invoke(
    Type.Void, 2075, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Bool, p9),
    arg(Type.Any, p10)
  )
end

-- void CLEAR_ANGLED_AREA_OF_VEHICLES(float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL p7, BOOL p8, BOOL p9, BOOL p10, BOOL p11, Any p12, Any p13) // 0x11DB3500F042A8AA
function MISC.CLEAR_ANGLED_AREA_OF_VEHICLES(x1, y1, z1, x2, y2, z2, width, p7, p8, p9, p10, p11, p12, p13)
  native.invoke(
    Type.Void, 2076, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Bool, p9),
    arg(Type.Bool, p10),
    arg(Type.Bool, p11),
    arg(Type.Any, p12),
    arg(Type.Any, p13)
  )
end

-- void CLEAR_AREA_OF_OBJECTS(float x, float y, float z, float radius, int flags) // 0xDD9B9B385AAC7F5B
--[[
I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag. 
--]]
function MISC.CLEAR_AREA_OF_OBJECTS(x, y, z, radius, flags)
  native.invoke(
    Type.Void, 2077, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, flags)
  )
end

-- void CLEAR_AREA_OF_PEDS(float x, float y, float z, float radius, int flags) // 0xBE31FD6CE464AC59
--[[
Example:       CLEAR_AREA_OF_PEDS(0, 0, 0, 10000, 1);
--]]
function MISC.CLEAR_AREA_OF_PEDS(x, y, z, radius, flags)
  native.invoke(
    Type.Void, 2078, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, flags)
  )
end

-- void CLEAR_AREA_OF_COPS(float x, float y, float z, float radius, int flags) // 0x04F8FC8FCF58F88D
--[[
flags appears to always be 0
--]]
function MISC.CLEAR_AREA_OF_COPS(x, y, z, radius, flags)
  native.invoke(
    Type.Void, 2079, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, flags)
  )
end

-- void CLEAR_AREA_OF_PROJECTILES(float x, float y, float z, float radius, int flags) // 0x0A1CB9094635D1A6
--[[
flags is usually 0 in the scripts.
--]]
function MISC.CLEAR_AREA_OF_PROJECTILES(x, y, z, radius, flags)
  native.invoke(
    Type.Void, 2080, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, flags)
  )
end

-- void CLEAR_SCENARIO_SPAWN_HISTORY() // 0x7EC6F9A478A6A512
--[[
Possibly used to clear scenario points.
--]]
function MISC.CLEAR_SCENARIO_SPAWN_HISTORY()
  native.invoke(
    Type.Void, 2081, false
  )
end

-- void SET_SAVE_MENU_ACTIVE(BOOL ignoreVehicle) // 0xC9BF75D28165FF77
--[[
ignoreVehicle - bypasses vehicle check of the local player (it will not open if you are in a vehicle and this is set to false)
--]]
function MISC.SET_SAVE_MENU_ACTIVE(ignoreVehicle)
  native.invoke(
    Type.Void, 2082, false,
    arg(Type.Bool, ignoreVehicle)
  )
end

-- int GET_STATUS_OF_MANUAL_SAVE() // 0x397BAA01068BAA96
function MISC.GET_STATUS_OF_MANUAL_SAVE()
  return native.invoke(
    Type.Int, 2083, false
  )
end

-- void SET_CREDITS_ACTIVE(BOOL toggle) // 0xB938B7E6D3C0620C
function MISC.SET_CREDITS_ACTIVE(toggle)
  native.invoke(
    Type.Void, 2084, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_CREDITS_FADE_OUT_WITH_SCREEN(BOOL toggle) // 0xB51B9AB9EF81868C
function MISC.SET_CREDITS_FADE_OUT_WITH_SCREEN(toggle)
  native.invoke(
    Type.Void, 2085, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL HAVE_CREDITS_REACHED_END() // 0x075F1D57402C93BA
function MISC.HAVE_CREDITS_REACHED_END()
  return native.invoke(
    Type.Bool, 2086, false
  )
end

-- BOOL ARE_CREDITS_RUNNING() // 0xD19C0826DC20CF1C
function MISC.ARE_CREDITS_RUNNING()
  return native.invoke(
    Type.Bool, 2087, false
  )
end

-- void TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME(const char* scriptName) // 0x9DC711BC69C548DF
function MISC.TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME(scriptName)
  native.invoke(
    Type.Void, 2088, false,
    arg(Type.String, scriptName)
  )
end

-- void NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME() // 0x9243BAC96D64C050
function MISC.NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME()
  native.invoke(
    Type.Void, 2089, false
  )
end

-- int ADD_HOSPITAL_RESTART(float x, float y, float z, float p3, Any p4) // 0x1F464EF988465A81
--[[
Returns the index of the newly created hospital spawn point.

p3 might be radius?
--]]
function MISC.ADD_HOSPITAL_RESTART(x, y, z, p3, p4)
  return native.invoke(
    Type.Int, 2090, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3),
    arg(Type.Any, p4)
  )
end

-- void DISABLE_HOSPITAL_RESTART(int hospitalIndex, BOOL toggle) // 0xC8535819C450EBA8
--[[
The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.
--]]
function MISC.DISABLE_HOSPITAL_RESTART(hospitalIndex, toggle)
  native.invoke(
    Type.Void, 2091, false,
    arg(Type.Int, hospitalIndex),
    arg(Type.Bool, toggle)
  )
end

-- int ADD_POLICE_RESTART(float p0, float p1, float p2, float p3, Any p4) // 0x452736765B31FC4B
function MISC.ADD_POLICE_RESTART(p0, p1, p2, p3, p4)
  return native.invoke(
    Type.Int, 2092, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Any, p4)
  )
end

-- void DISABLE_POLICE_RESTART(int policeIndex, BOOL toggle) // 0x23285DED6EBD7EA3
--[[
Disables the spawn point at the police house on the specified index.

policeIndex: The police house index.
toggle: true to enable the spawn point, false to disable.

- Nacorpio
--]]
function MISC.DISABLE_POLICE_RESTART(policeIndex, toggle)
  native.invoke(
    Type.Void, 2093, false,
    arg(Type.Int, policeIndex),
    arg(Type.Bool, toggle)
  )
end

-- void SET_RESTART_COORD_OVERRIDE(float x, float y, float z, float heading) // 0x706B5EDCAA7FA663
function MISC.SET_RESTART_COORD_OVERRIDE(x, y, z, heading)
  native.invoke(
    Type.Void, 2094, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading)
  )
end

-- void CLEAR_RESTART_COORD_OVERRIDE() // 0xA2716D40842EAF79
function MISC.CLEAR_RESTART_COORD_OVERRIDE()
  native.invoke(
    Type.Void, 2095, false
  )
end

-- void PAUSE_DEATH_ARREST_RESTART(BOOL toggle) // 0x2C2B3493FBF51C71
function MISC.PAUSE_DEATH_ARREST_RESTART(toggle)
  native.invoke(
    Type.Void, 2096, false,
    arg(Type.Bool, toggle)
  )
end

-- void IGNORE_NEXT_RESTART(BOOL toggle) // 0x21FFB63D8C615361
function MISC.IGNORE_NEXT_RESTART(toggle)
  native.invoke(
    Type.Void, 2097, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_FADE_OUT_AFTER_DEATH(BOOL toggle) // 0x4A18E01DF2C87B86
--[[
Sets whether the game should fade out after the player dies.
--]]
function MISC.SET_FADE_OUT_AFTER_DEATH(toggle)
  native.invoke(
    Type.Void, 2098, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_FADE_OUT_AFTER_ARREST(BOOL toggle) // 0x1E0B4DC0D990A4E7
--[[
Sets whether the game should fade out after the player is arrested.
--]]
function MISC.SET_FADE_OUT_AFTER_ARREST(toggle)
  native.invoke(
    Type.Void, 2099, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_FADE_IN_AFTER_DEATH_ARREST(BOOL toggle) // 0xDA66D2796BA33F12
--[[
Sets whether the game should fade in after the player dies or is arrested.
--]]
function MISC.SET_FADE_IN_AFTER_DEATH_ARREST(toggle)
  native.invoke(
    Type.Void, 2100, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_FADE_IN_AFTER_LOAD(BOOL toggle) // 0xF3D78F59DFE18D79
function MISC.SET_FADE_IN_AFTER_LOAD(toggle)
  native.invoke(
    Type.Void, 2101, false,
    arg(Type.Bool, toggle)
  )
end

-- int REGISTER_SAVE_HOUSE(float x, float y, float z, float p3, const char* p4, Any p5, Any p6) // 0xC0714D0A7EEECA54
--[[
returns savehouseHandle
--]]
function MISC.REGISTER_SAVE_HOUSE(x, y, z, p3, p4, p5, p6)
  return native.invoke(
    Type.Int, 2102, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3),
    arg(Type.String, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void SET_SAVE_HOUSE(int savehouseHandle, BOOL p1, BOOL p2) // 0x4F548CABEAE553BC
function MISC.SET_SAVE_HOUSE(savehouseHandle, p1, p2)
  native.invoke(
    Type.Void, 2103, false,
    arg(Type.Int, savehouseHandle),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL OVERRIDE_SAVE_HOUSE(BOOL p0, float p1, float p2, float p3, float p4, BOOL p5, float p6, float p7) // 0x1162EA8AE9D24EEA
function MISC.OVERRIDE_SAVE_HOUSE(p0, p1, p2, p3, p4, p5, p6, p7)
  return native.invoke(
    Type.Bool, 2104, false,
    arg(Type.Bool, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Bool, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7)
  )
end

-- BOOL GET_SAVE_HOUSE_DETAILS_AFTER_SUCCESSFUL_LOAD(Vector3* p0, float* p1, BOOL* fadeInAfterLoad, BOOL* p3) // 0xA4A0065E39C9F25C
function MISC.GET_SAVE_HOUSE_DETAILS_AFTER_SUCCESSFUL_LOAD(p0, p1, fadeInAfterLoad, p3)
  return native.invoke(
    Type.Bool, 2105, true,
    ref(Type.Vector3, p0),
    ref(Type.Float, p1),
    ref(Type.Bool, fadeInAfterLoad),
    ref(Type.Bool, p3)
  )
end

-- void DO_AUTO_SAVE() // 0x50EEAAD86232EE55
function MISC.DO_AUTO_SAVE()
  native.invoke(
    Type.Void, 2106, false
  )
end

-- BOOL GET_IS_AUTO_SAVE_OFF() // 0x6E04F06094C87047
--[[
Returns true if profile setting 208 is equal to 0.
--]]
function MISC.GET_IS_AUTO_SAVE_OFF()
  return native.invoke(
    Type.Bool, 2107, false
  )
end

-- BOOL IS_AUTO_SAVE_IN_PROGRESS() // 0x69240733738C19A0
function MISC.IS_AUTO_SAVE_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 2108, false
  )
end

-- BOOL HAS_CODE_REQUESTED_AUTOSAVE() // 0x2107A3773771186D
function MISC.HAS_CODE_REQUESTED_AUTOSAVE()
  return native.invoke(
    Type.Bool, 2109, false
  )
end

-- void CLEAR_CODE_REQUESTED_AUTOSAVE() // 0x06462A961E94B67C
function MISC.CLEAR_CODE_REQUESTED_AUTOSAVE()
  native.invoke(
    Type.Void, 2110, false
  )
end

-- void BEGIN_REPLAY_STATS(Any p0, Any p1) // 0xE0E500246FF73D66
function MISC.BEGIN_REPLAY_STATS(p0, p1)
  native.invoke(
    Type.Void, 2111, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void ADD_REPLAY_STAT_VALUE(Any value) // 0x69FE6DC87BD2A5E9
function MISC.ADD_REPLAY_STAT_VALUE(value)
  native.invoke(
    Type.Void, 2112, false,
    arg(Type.Any, value)
  )
end

-- void END_REPLAY_STATS() // 0xA23E821FBDF8A5F2
function MISC.END_REPLAY_STATS()
  native.invoke(
    Type.Void, 2113, false
  )
end

-- BOOL HAVE_REPLAY_STATS_BEEN_STORED() // 0xD642319C54AADEB6
function MISC.HAVE_REPLAY_STATS_BEEN_STORED()
  return native.invoke(
    Type.Bool, 2114, false
  )
end

-- int GET_REPLAY_STAT_MISSION_ID() // 0x5B1F2E327B6B6FE1
function MISC.GET_REPLAY_STAT_MISSION_ID()
  return native.invoke(
    Type.Int, 2115, false
  )
end

-- int GET_REPLAY_STAT_MISSION_TYPE() // 0x2B626A0150E4D449
function MISC.GET_REPLAY_STAT_MISSION_TYPE()
  return native.invoke(
    Type.Int, 2116, false
  )
end

-- int GET_REPLAY_STAT_COUNT() // 0xDC9274A7EF6B2867
function MISC.GET_REPLAY_STAT_COUNT()
  return native.invoke(
    Type.Int, 2117, false
  )
end

-- int GET_REPLAY_STAT_AT_INDEX(int index) // 0x8098C8D6597AAE18
function MISC.GET_REPLAY_STAT_AT_INDEX(index)
  return native.invoke(
    Type.Int, 2118, false,
    arg(Type.Int, index)
  )
end

-- void CLEAR_REPLAY_STATS() // 0x1B1AB132A16FDA55
function MISC.CLEAR_REPLAY_STATS()
  native.invoke(
    Type.Void, 2119, false
  )
end

-- BOOL QUEUE_MISSION_REPEAT_LOAD() // 0x72DE52178C291CB5
function MISC.QUEUE_MISSION_REPEAT_LOAD()
  return native.invoke(
    Type.Bool, 2120, false
  )
end

-- BOOL QUEUE_MISSION_REPEAT_SAVE() // 0x44A0BDC559B35F6E
--[[
Shows the screen which is visible before you redo a mission? The game will make a restoration point where you will cameback when the mission is over.
Returns 1 if the message isn't currently on screen
--]]
function MISC.QUEUE_MISSION_REPEAT_SAVE()
  return native.invoke(
    Type.Bool, 2121, false
  )
end

-- BOOL QUEUE_MISSION_REPEAT_SAVE_FOR_BENCHMARK_TEST() // 0xEB2104E905C6F2E9
function MISC.QUEUE_MISSION_REPEAT_SAVE_FOR_BENCHMARK_TEST()
  return native.invoke(
    Type.Bool, 2122, false
  )
end

-- int GET_STATUS_OF_MISSION_REPEAT_SAVE() // 0x2B5E102E4A42F2BF
function MISC.GET_STATUS_OF_MISSION_REPEAT_SAVE()
  return native.invoke(
    Type.Int, 2123, false
  )
end

-- BOOL IS_MEMORY_CARD_IN_USE() // 0x8A75CE2956274ADD
function MISC.IS_MEMORY_CARD_IN_USE()
  return native.invoke(
    Type.Bool, 2124, false
  )
end

-- void SHOOT_SINGLE_BULLET_BETWEEN_COORDS(float x1, float y1, float z1, float x2, float y2, float z2, int damage, BOOL p7, Hash weaponHash, Ped ownerPed, BOOL isAudible, BOOL isInvisible, float speed) // 0x867654CBC7606F2C
function MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed)
  native.invoke(
    Type.Void, 2125, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, damage),
    arg(Type.Bool, p7),
    arg(Type.Hash, weaponHash),
    arg(Type.Ped, ownerPed),
    arg(Type.Bool, isAudible),
    arg(Type.Bool, isInvisible),
    arg(Type.Float, speed)
  )
end

-- void SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(float x1, float y1, float z1, float x2, float y2, float z2, int damage, BOOL p7, Hash weaponHash, Ped ownerPed, BOOL isAudible, BOOL isInvisible, float speed, Entity entity, Any p14) // 0xE3A7742E0B7A2F8B
--[[
entity - entity to ignore
--]]
function MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14)
  native.invoke(
    Type.Void, 2126, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, damage),
    arg(Type.Bool, p7),
    arg(Type.Hash, weaponHash),
    arg(Type.Ped, ownerPed),
    arg(Type.Bool, isAudible),
    arg(Type.Bool, isInvisible),
    arg(Type.Float, speed),
    arg(Type.Entity, entity),
    arg(Type.Any, p14)
  )
end

-- void SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY_NEW(float x1, float y1, float z1, float x2, float y2, float z2, int damage, BOOL p7, Hash weaponHash, Ped ownerPed, BOOL isAudible, BOOL isInvisible, float speed, Entity entity, BOOL p14, BOOL p15, Entity targetEntity, BOOL p17, Any p18, Any p19, Any p20) // 0xBFE5756E7407064A
--[[
entity - entity to ignore
targetEntity - entity to home in on, if the weapon hash provided supports homing
--]]
function MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS_IGNORE_ENTITY_NEW(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed, entity, p14, p15, targetEntity, p17, p18, p19, p20)
  native.invoke(
    Type.Void, 2127, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, damage),
    arg(Type.Bool, p7),
    arg(Type.Hash, weaponHash),
    arg(Type.Ped, ownerPed),
    arg(Type.Bool, isAudible),
    arg(Type.Bool, isInvisible),
    arg(Type.Float, speed),
    arg(Type.Entity, entity),
    arg(Type.Bool, p14),
    arg(Type.Bool, p15),
    arg(Type.Entity, targetEntity),
    arg(Type.Bool, p17),
    arg(Type.Any, p18),
    arg(Type.Any, p19),
    arg(Type.Any, p20)
  )
end

-- void GET_MODEL_DIMENSIONS(Hash modelHash, Vector3* minimum, Vector3* maximum) // 0x03E8D3D5F549087A
--[[
Gets the dimensions of a model.

Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.

Example from the scripts: MISC::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);
--]]
function MISC.GET_MODEL_DIMENSIONS(modelHash, minimum, maximum)
  native.invoke(
    Type.Void, 2128, true,
    arg(Type.Hash, modelHash),
    ref(Type.Vector3, minimum),
    ref(Type.Vector3, maximum)
  )
end

-- void SET_FAKE_WANTED_LEVEL(int fakeWantedLevel) // 0x1454F2448DE30163
--[[
Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are still in effect.

Max is 6, anything above this makes it just 6. Also the mini-map gets the red & blue flashing effect.
--]]
function MISC.SET_FAKE_WANTED_LEVEL(fakeWantedLevel)
  native.invoke(
    Type.Void, 2129, false,
    arg(Type.Int, fakeWantedLevel)
  )
end

-- int GET_FAKE_WANTED_LEVEL() // 0x4C9296CBCD1B971E
function MISC.GET_FAKE_WANTED_LEVEL()
  return native.invoke(
    Type.Int, 2130, false
  )
end

-- void USING_MISSION_CREATOR(BOOL toggle) // 0xF14878FC50BEC6EE
function MISC.USING_MISSION_CREATOR(toggle)
  native.invoke(
    Type.Void, 2131, false,
    arg(Type.Bool, toggle)
  )
end

-- void ALLOW_MISSION_CREATOR_WARP(BOOL toggle) // 0xDEA36202FC3382DF
function MISC.ALLOW_MISSION_CREATOR_WARP(toggle)
  native.invoke(
    Type.Void, 2132, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_MINIGAME_IN_PROGRESS(BOOL toggle) // 0x19E00D7322C6F85B
function MISC.SET_MINIGAME_IN_PROGRESS(toggle)
  native.invoke(
    Type.Void, 2133, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_MINIGAME_IN_PROGRESS() // 0x2B4A15E44DE0F478
function MISC.IS_MINIGAME_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 2134, false
  )
end

-- BOOL IS_THIS_A_MINIGAME_SCRIPT() // 0x7B30F65D7B710098
function MISC.IS_THIS_A_MINIGAME_SCRIPT()
  return native.invoke(
    Type.Bool, 2135, false
  )
end

-- BOOL IS_SNIPER_INVERTED() // 0x61A23B7EDA9BDA24
--[[
This function is hard-coded to always return 0.
--]]
function MISC.IS_SNIPER_INVERTED()
  return native.invoke(
    Type.Bool, 2136, false
  )
end

-- BOOL SHOULD_USE_METRIC_MEASUREMENTS() // 0xD3D15555431AB793
--[[
Returns true if the game is using the metric measurement system (profile setting 227), false if imperial is used.
--]]
function MISC.SHOULD_USE_METRIC_MEASUREMENTS()
  return native.invoke(
    Type.Bool, 2137, false
  )
end

-- int GET_PROFILE_SETTING(int profileSetting) // 0xC488FF2356EA7791
function MISC.GET_PROFILE_SETTING(profileSetting)
  return native.invoke(
    Type.Int, 2138, false,
    arg(Type.Int, profileSetting)
  )
end

-- BOOL ARE_STRINGS_EQUAL(const char* string1, const char* string2) // 0x0C515FAB3FF9EA92
function MISC.ARE_STRINGS_EQUAL(string1, string2)
  return native.invoke(
    Type.Bool, 2139, false,
    arg(Type.String, string1),
    arg(Type.String, string2)
  )
end

-- int COMPARE_STRINGS(const char* str1, const char* str2, BOOL matchCase, int maxLength) // 0x1E34710ECD4AB0EB
--[[
Compares two strings up to a specified number of characters.

Parameters:
str1 - String to be compared.
str2 - String to be compared.
matchCase - Comparison will be case-sensitive.
maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.

Returns:
A value indicating the relationship between the strings:
<0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1)
0 - The contents of both strings are equal.
>0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)

Examples:
MISC::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal
MISC::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal
MISC::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal
MISC::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b'
MISC::COMPARE_STRINGS("A", "A", true, 1); // 0; equal

When comparing case-sensitive strings, lower-case characters are greater than upper-case characters:
MISC::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a'
MISC::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'
--]]
function MISC.COMPARE_STRINGS(str1, str2, matchCase, maxLength)
  return native.invoke(
    Type.Int, 2140, false,
    arg(Type.String, str1),
    arg(Type.String, str2),
    arg(Type.Bool, matchCase),
    arg(Type.Int, maxLength)
  )
end

-- int ABSI(int value) // 0xF0D31AD191A74F87
function MISC.ABSI(value)
  return native.invoke(
    Type.Int, 2141, false,
    arg(Type.Int, value)
  )
end

-- float ABSF(float value) // 0x73D57CFFDD12C355
function MISC.ABSF(value)
  return native.invoke(
    Type.Float, 2142, false,
    arg(Type.Float, value)
  )
end

-- BOOL IS_SNIPER_BULLET_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2) // 0xFEFCF11B01287125
--[[
Determines whether there is a sniper bullet within the specified coordinates. The coordinates form an axis-aligned bounding box.
--]]
function MISC.IS_SNIPER_BULLET_IN_AREA(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Bool, 2143, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- BOOL IS_PROJECTILE_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL ownedByPlayer) // 0x5270A8FBC098C3F8
--[[
Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.

- Nacorpio


ownedByPlayer = only projectiles fired by the player will be detected.
--]]
function MISC.IS_PROJECTILE_IN_AREA(x1, y1, z1, x2, y2, z2, ownedByPlayer)
  return native.invoke(
    Type.Bool, 2144, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, ownedByPlayer)
  )
end

-- BOOL IS_PROJECTILE_TYPE_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, int type, BOOL ownedByPlayer) // 0x2E0DC353342C4A6D
--[[
Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a axis-aligned bounding box.
--]]
function MISC.IS_PROJECTILE_TYPE_IN_AREA(x1, y1, z1, x2, y2, z2, type, ownedByPlayer)
  return native.invoke(
    Type.Bool, 2145, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, type),
    arg(Type.Bool, ownedByPlayer)
  )
end

-- BOOL IS_PROJECTILE_TYPE_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width, Any p7, BOOL ownedByPlayer) // 0xF0BC12401061DEA0
--[[
See IS_POINT_IN_ANGLED_AREA for the definition of an angled area.
--]]
function MISC.IS_PROJECTILE_TYPE_IN_ANGLED_AREA(x1, y1, z1, x2, y2, z2, width, p7, ownedByPlayer)
  return native.invoke(
    Type.Bool, 2146, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Any, p7),
    arg(Type.Bool, ownedByPlayer)
  )
end

-- BOOL IS_PROJECTILE_TYPE_WITHIN_DISTANCE(float x, float y, float z, Hash projectileHash, float radius, BOOL ownedByPlayer) // 0x34318593248C8FB2
function MISC.IS_PROJECTILE_TYPE_WITHIN_DISTANCE(x, y, z, projectileHash, radius, ownedByPlayer)
  return native.invoke(
    Type.Bool, 2147, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Hash, projectileHash),
    arg(Type.Float, radius),
    arg(Type.Bool, ownedByPlayer)
  )
end

-- BOOL GET_COORDS_OF_PROJECTILE_TYPE_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, Hash projectileHash, Vector3* projectilePos, BOOL ownedByPlayer) // 0x8D7A43EC6A5FEA45
function MISC.GET_COORDS_OF_PROJECTILE_TYPE_IN_AREA(x1, y1, z1, x2, y2, z2, projectileHash, projectilePos, ownedByPlayer)
  return native.invoke(
    Type.Bool, 2148, true,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Hash, projectileHash),
    ref(Type.Vector3, projectilePos),
    arg(Type.Bool, ownedByPlayer)
  )
end

-- BOOL GET_COORDS_OF_PROJECTILE_TYPE_IN_ANGLED_AREA(float vecAngledAreaPoint1X, float vecAngledAreaPoint1Y, float vecAngledAreaPoint1Z, float vecAngledAreaPoint2X, float vecAngledAreaPoint2Y, float vecAngledAreaPoint2Z, float distanceOfOppositeFace, Hash weaponType, Vector3* positionOut, BOOL bIsPlayer) // 0x3DA8C28346B62CED
function MISC.GET_COORDS_OF_PROJECTILE_TYPE_IN_ANGLED_AREA(vecAngledAreaPoint1X, vecAngledAreaPoint1Y, vecAngledAreaPoint1Z, vecAngledAreaPoint2X, vecAngledAreaPoint2Y, vecAngledAreaPoint2Z, distanceOfOppositeFace, weaponType, positionOut, bIsPlayer)
  return native.invoke(
    Type.Bool, 2149, true,
    arg(Type.Float, vecAngledAreaPoint1X),
    arg(Type.Float, vecAngledAreaPoint1Y),
    arg(Type.Float, vecAngledAreaPoint1Z),
    arg(Type.Float, vecAngledAreaPoint2X),
    arg(Type.Float, vecAngledAreaPoint2Y),
    arg(Type.Float, vecAngledAreaPoint2Z),
    arg(Type.Float, distanceOfOppositeFace),
    arg(Type.Hash, weaponType),
    ref(Type.Vector3, positionOut),
    arg(Type.Bool, bIsPlayer)
  )
end

-- BOOL GET_COORDS_OF_PROJECTILE_TYPE_WITHIN_DISTANCE(Ped ped, Hash weaponHash, float distance, Vector3* outCoords, BOOL p4) // 0xDFB4138EEFED7B81
function MISC.GET_COORDS_OF_PROJECTILE_TYPE_WITHIN_DISTANCE(ped, weaponHash, distance, outCoords, p4)
  return native.invoke(
    Type.Bool, 2150, true,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Float, distance),
    ref(Type.Vector3, outCoords),
    arg(Type.Bool, p4)
  )
end

-- BOOL GET_PROJECTILE_OF_PROJECTILE_TYPE_WITHIN_DISTANCE(Ped ped, Hash weaponHash, float distance, Vector3* outCoords, Object* outProjectile, BOOL p5) // 0x82FDE6A57EE4EE44
function MISC.GET_PROJECTILE_OF_PROJECTILE_TYPE_WITHIN_DISTANCE(ped, weaponHash, distance, outCoords, outProjectile, p5)
  return native.invoke(
    Type.Bool, 2151, true,
    arg(Type.Ped, ped),
    arg(Type.Hash, weaponHash),
    arg(Type.Float, distance),
    ref(Type.Vector3, outCoords),
    ref(Type.Object, outProjectile),
    arg(Type.Bool, p5)
  )
end

-- BOOL IS_BULLET_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL ownedByPlayer) // 0x1A8B5F3C01E2B477
--[[
For projectiles, see: IS_PROJECTILE_TYPE_IN_ANGLED_AREA
See IS_POINT_IN_ANGLED_AREA for the definition of an angled area.
Returns True if a bullet, as maintained by a pool within CWeaponManager, has been fired into the defined angled area.
--]]
function MISC.IS_BULLET_IN_ANGLED_AREA(x1, y1, z1, x2, y2, z2, width, ownedByPlayer)
  return native.invoke(
    Type.Bool, 2152, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Bool, ownedByPlayer)
  )
end

-- BOOL IS_BULLET_IN_AREA(float x, float y, float z, float radius, BOOL ownedByPlayer) // 0x3F2023999AD51C1F
function MISC.IS_BULLET_IN_AREA(x, y, z, radius, ownedByPlayer)
  return native.invoke(
    Type.Bool, 2153, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Bool, ownedByPlayer)
  )
end

-- BOOL IS_BULLET_IN_BOX(float x1, float y1, float z1, float x2, float y2, float z2, BOOL ownedByPlayer) // 0xDE0F6D7450D37351
function MISC.IS_BULLET_IN_BOX(x1, y1, z1, x2, y2, z2, ownedByPlayer)
  return native.invoke(
    Type.Bool, 2154, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Bool, ownedByPlayer)
  )
end

-- BOOL HAS_BULLET_IMPACTED_IN_AREA(float x, float y, float z, float p3, BOOL p4, BOOL p5) // 0x9870ACFB89A90995
--[[
p3 - possibly radius?
--]]
function MISC.HAS_BULLET_IMPACTED_IN_AREA(x, y, z, p3, p4, p5)
  return native.invoke(
    Type.Bool, 2155, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5)
  )
end

-- BOOL HAS_BULLET_IMPACTED_IN_BOX(float p0, float p1, float p2, float p3, float p4, float p5, BOOL p6, BOOL p7) // 0xDC8C5D7CFEAB8394
function MISC.HAS_BULLET_IMPACTED_IN_BOX(p0, p1, p2, p3, p4, p5, p6, p7)
  return native.invoke(
    Type.Bool, 2156, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7)
  )
end

-- BOOL IS_ORBIS_VERSION() // 0xA72BC0B675B1519E
--[[
PS4
--]]
function MISC.IS_ORBIS_VERSION()
  return native.invoke(
    Type.Bool, 2157, false
  )
end

-- BOOL IS_DURANGO_VERSION() // 0x4D982ADB1978442D
--[[
XBOX ONE
--]]
function MISC.IS_DURANGO_VERSION()
  return native.invoke(
    Type.Bool, 2158, false
  )
end

-- BOOL IS_XBOX360_VERSION() // 0xF6201B4DAF662A9D
function MISC.IS_XBOX360_VERSION()
  return native.invoke(
    Type.Bool, 2159, false
  )
end

-- BOOL IS_PS3_VERSION() // 0xCCA1072C29D096C2
function MISC.IS_PS3_VERSION()
  return native.invoke(
    Type.Bool, 2160, false
  )
end

-- BOOL IS_PC_VERSION() // 0x48AF36444B965238
function MISC.IS_PC_VERSION()
  return native.invoke(
    Type.Bool, 2161, false
  )
end

-- BOOL IS_STEAM_VERSION() // 0x0A27B2B6282F7169
function MISC.IS_STEAM_VERSION()
  return native.invoke(
    Type.Bool, 2162, false
  )
end

-- BOOL IS_AUSSIE_VERSION() // 0x9F1935CA1F724008
--[[
Used to block some of the prostitute stuff due to laws in Australia.
--]]
function MISC.IS_AUSSIE_VERSION()
  return native.invoke(
    Type.Bool, 2163, false
  )
end

-- BOOL IS_JAPANESE_VERSION() // 0xB8C0BB75D8A77DB3
function MISC.IS_JAPANESE_VERSION()
  return native.invoke(
    Type.Bool, 2164, false
  )
end

-- BOOL IS_XBOX_PLATFORM() // 0x138679CA01E21F53
function MISC.IS_XBOX_PLATFORM()
  return native.invoke(
    Type.Bool, 2165, false
  )
end

-- BOOL IS_SCARLETT_VERSION() // 0xC545AB1CF97ABB34
--[[
Xbox Series (Scarlett) version...
--]]
function MISC.IS_SCARLETT_VERSION()
  return native.invoke(
    Type.Bool, 2166, false
  )
end

-- BOOL IS_SCE_PLATFORM() // 0xF911E695C1EB8518
function MISC.IS_SCE_PLATFORM()
  return native.invoke(
    Type.Bool, 2167, false
  )
end

-- BOOL IS_PROSPERO_VERSION() // 0x807ABE1AB65C24D2
--[[
PS5 (Prospero) version...
--]]
function MISC.IS_PROSPERO_VERSION()
  return native.invoke(
    Type.Bool, 2168, false
  )
end

-- BOOL IS_STRING_NULL(const char* string) // 0xF22B6C47C6EAB066
function MISC.IS_STRING_NULL(string)
  return native.invoke(
    Type.Bool, 2169, false,
    arg(Type.String, string)
  )
end

-- BOOL IS_STRING_NULL_OR_EMPTY(const char* string) // 0xCA042B6957743895
function MISC.IS_STRING_NULL_OR_EMPTY(string)
  return native.invoke(
    Type.Bool, 2170, false,
    arg(Type.String, string)
  )
end

-- BOOL STRING_TO_INT(const char* string, int* outInteger) // 0x5A5F40FE637EB584
--[[
Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.

If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.
--]]
function MISC.STRING_TO_INT(string, outInteger)
  return native.invoke(
    Type.Bool, 2171, false,
    arg(Type.String, string),
    ref(Type.Int, outInteger)
  )
end

-- void SET_BITS_IN_RANGE(int* var, int rangeStart, int rangeEnd, int p3) // 0x8EF07E15701D61ED
function MISC.SET_BITS_IN_RANGE(var, rangeStart, rangeEnd, p3)
  native.invoke(
    Type.Void, 2172, false,
    ref(Type.Int, var),
    arg(Type.Int, rangeStart),
    arg(Type.Int, rangeEnd),
    arg(Type.Int, p3)
  )
end

-- int GET_BITS_IN_RANGE(int var, int rangeStart, int rangeEnd) // 0x53158863FCC0893A
function MISC.GET_BITS_IN_RANGE(var, rangeStart, rangeEnd)
  return native.invoke(
    Type.Int, 2173, false,
    arg(Type.Int, var),
    arg(Type.Int, rangeStart),
    arg(Type.Int, rangeEnd)
  )
end

-- int ADD_STUNT_JUMP(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4, float camX, float camY, float camZ, int p15, int p16, int p17) // 0x1A992DA297A4630C
--[[
See description of `ADD_STUNT_JUMP_ANGLED` for detailed info. The only difference really is this one does not have the radius (or angle, not sure) floats parameters for entry and landing zones.
--]]
function MISC.ADD_STUNT_JUMP(x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4, camX, camY, camZ, p15, p16, p17)
  return native.invoke(
    Type.Int, 2174, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, x3),
    arg(Type.Float, y3),
    arg(Type.Float, z3),
    arg(Type.Float, x4),
    arg(Type.Float, y4),
    arg(Type.Float, z4),
    arg(Type.Float, camX),
    arg(Type.Float, camY),
    arg(Type.Float, camZ),
    arg(Type.Int, p15),
    arg(Type.Int, p16),
    arg(Type.Int, p17)
  )
end

-- int ADD_STUNT_JUMP_ANGLED(float x1, float y1, float z1, float x2, float y2, float z2, float radius1, float x3, float y3, float z3, float x4, float y4, float z4, float radius2, float camX, float camY, float camZ, int p17, int p18, int p19) // 0xBBE5D803A5360CBF
--[[
Creates a new stunt jump.

The radius1 and radius2 might actually not be a radius at all, but that's what it seems to me testing them in-game. But they may be 'angle' floats instead, considering this native is named ADD_STUNT_JUMP_**ANGLED**.

Info about the specific 'parameter sections':


**x1, y1, z1, x2, y2, z2 and radius1:**

First coordinates are for the jump entry area, and the radius that will be checked around that area. So if you're not exactly within the coordinates, but you are within the outter radius limit then it will still register as entering the stunt jump. Note as mentioned above, the radius is just a guess, I'm not really sure about it's exact purpose.


**x3, y3, z3, x4, y4, z4 and radius2:**

Next part is the landing area, again starting with the left bottom (nearest to the stunt jump entry zone) coordinate, and the second one being the top right furthest away part of the landing area. Followed by another (most likely) radius float, this is usually slightly larger than the entry zone 'radius' float value, just because you have quite a lot of places where you can land (I'm guessing).


**camX, camY and camZ:**

The final coordinate in this native is the Camera position. Rotation and zoom/FOV is managed by the game itself, you just need to provide the camera location.


**unk1, unk2 and unk3:**

Not sure what these are for, but they're always `150, 0, 0` in decompiled scripts.

Here is a list of almost all of the stunt jumps from GTA V (taken from decompiled scripts): https://pastebin.com/EW1jBPkY
--]]
function MISC.ADD_STUNT_JUMP_ANGLED(x1, y1, z1, x2, y2, z2, radius1, x3, y3, z3, x4, y4, z4, radius2, camX, camY, camZ, p17, p18, p19)
  return native.invoke(
    Type.Int, 2175, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, radius1),
    arg(Type.Float, x3),
    arg(Type.Float, y3),
    arg(Type.Float, z3),
    arg(Type.Float, x4),
    arg(Type.Float, y4),
    arg(Type.Float, z4),
    arg(Type.Float, radius2),
    arg(Type.Float, camX),
    arg(Type.Float, camY),
    arg(Type.Float, camZ),
    arg(Type.Int, p17),
    arg(Type.Int, p18),
    arg(Type.Int, p19)
  )
end

-- void TOGGLE_SHOW_OPTIONAL_STUNT_JUMP_CAMERA(BOOL toggle) // 0xFB80AB299D2EE1BD
--[[
Toggles some stunt jump stuff.
--]]
function MISC.TOGGLE_SHOW_OPTIONAL_STUNT_JUMP_CAMERA(toggle)
  native.invoke(
    Type.Void, 2176, false,
    arg(Type.Bool, toggle)
  )
end

-- void DELETE_STUNT_JUMP(int p0) // 0xDC518000E39DAE1F
function MISC.DELETE_STUNT_JUMP(p0)
  native.invoke(
    Type.Void, 2177, false,
    arg(Type.Int, p0)
  )
end

-- void ENABLE_STUNT_JUMP_SET(int p0) // 0xE369A5783B866016
function MISC.ENABLE_STUNT_JUMP_SET(p0)
  native.invoke(
    Type.Void, 2178, false,
    arg(Type.Int, p0)
  )
end

-- void DISABLE_STUNT_JUMP_SET(int p0) // 0xA5272EBEDD4747F6
function MISC.DISABLE_STUNT_JUMP_SET(p0)
  native.invoke(
    Type.Void, 2179, false,
    arg(Type.Int, p0)
  )
end

-- void SET_STUNT_JUMPS_CAN_TRIGGER(BOOL toggle) // 0xD79185689F8FD5DF
function MISC.SET_STUNT_JUMPS_CAN_TRIGGER(toggle)
  native.invoke(
    Type.Void, 2180, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_STUNT_JUMP_IN_PROGRESS() // 0x7A3F19700A4D0525
function MISC.IS_STUNT_JUMP_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 2181, false
  )
end

-- BOOL IS_STUNT_JUMP_MESSAGE_SHOWING() // 0x2272B0A1343129F4
function MISC.IS_STUNT_JUMP_MESSAGE_SHOWING()
  return native.invoke(
    Type.Bool, 2182, false
  )
end

-- int GET_NUM_SUCCESSFUL_STUNT_JUMPS() // 0x996DD1E1E02F1008
function MISC.GET_NUM_SUCCESSFUL_STUNT_JUMPS()
  return native.invoke(
    Type.Int, 2183, false
  )
end

-- int GET_TOTAL_SUCCESSFUL_STUNT_JUMPS() // 0x6856EC3D35C81EA4
function MISC.GET_TOTAL_SUCCESSFUL_STUNT_JUMPS()
  return native.invoke(
    Type.Int, 2184, false
  )
end

-- void CANCEL_STUNT_JUMP() // 0xE6B7B0ACD4E4B75E
function MISC.CANCEL_STUNT_JUMP()
  native.invoke(
    Type.Void, 2185, false
  )
end

-- void SET_GAME_PAUSED(BOOL toggle) // 0x577D1284D6873711
--[[
Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe
--]]
function MISC.SET_GAME_PAUSED(toggle)
  native.invoke(
    Type.Void, 2186, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_THIS_SCRIPT_CAN_BE_PAUSED(BOOL toggle) // 0xAA391C728106F7AF
function MISC.SET_THIS_SCRIPT_CAN_BE_PAUSED(toggle)
  native.invoke(
    Type.Void, 2187, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT(BOOL toggle) // 0xB98236CAAECEF897
function MISC.SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT(toggle)
  native.invoke(
    Type.Void, 2188, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL HAS_CHEAT_WITH_HASH_BEEN_ACTIVATED(Hash hash, int amount) // 0x071E2A839DE82D90
--[[
This native appears on the cheat_controller script and tracks a combination of buttons, which may be used to toggle cheats in-game. Credits to ThreeSocks for the info. The hash contains the combination, while the "amount" represents the amount of buttons used in a combination. The following page can be used to make a button combination: gta5offset.com/ts/hash/

INT_SCORES_SCORTED was a hash collision
--]]
function MISC.HAS_CHEAT_WITH_HASH_BEEN_ACTIVATED(hash, amount)
  return native.invoke(
    Type.Bool, 2189, false,
    arg(Type.Hash, hash),
    arg(Type.Int, amount)
  )
end

-- BOOL HAS_PC_CHEAT_WITH_HASH_BEEN_ACTIVATED(Hash hash) // 0x557E43C447E700A8
--[[
Get inputted "Cheat code", for example:

while (TRUE)
{
    if (MISC::HAS_PC_CHEAT_WITH_HASH_BEEN_ACTIVATED(${fugitive}))
    {
       // Do something.
    }
    SYSTEM::WAIT(0);
}

Calling this will also set the last saved string hash to zero.

--]]
function MISC.HAS_PC_CHEAT_WITH_HASH_BEEN_ACTIVATED(hash)
  return native.invoke(
    Type.Bool, 2190, false,
    arg(Type.Hash, hash)
  )
end

-- void OVERRIDE_FREEZE_FLAGS(BOOL p0) // 0xFA3FFB0EEBC288A3
function MISC.OVERRIDE_FREEZE_FLAGS(p0)
  native.invoke(
    Type.Void, 2191, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_INSTANCE_PRIORITY_MODE(int p0) // 0x9BAE5AD2508DF078
--[[
Formerly known as _LOWER_MAP_PROP_DENSITY and wrongly due to idiots as _ENABLE_MP_DLC_MAPS.
Sets the maximum prop density and changes a loading screen flag from 'loading story mode' to 'loading GTA Online'. Does not touch DLC map data at all.

In fact, I doubt this changes the flag whatsoever, that's the OTHER native idiots use together with this that does so, this one only causes a loading screen to show as it reloads map data.
--]]
function MISC.SET_INSTANCE_PRIORITY_MODE(p0)
  native.invoke(
    Type.Void, 2192, false,
    arg(Type.Int, p0)
  )
end

-- void SET_INSTANCE_PRIORITY_HINT(int flag) // 0xC5F0A8EBD3F361CE
--[[
Sets an unknown flag used by CScene in determining which entities from CMapData scene nodes to draw, similar to SET_INSTANCE_PRIORITY_MODE.
--]]
function MISC.SET_INSTANCE_PRIORITY_HINT(flag)
  native.invoke(
    Type.Void, 2193, false,
    arg(Type.Int, flag)
  )
end

-- BOOL IS_FRONTEND_FADING() // 0x7EA2B6AF97ECA6ED
--[[
This function is hard-coded to always return 0.
--]]
function MISC.IS_FRONTEND_FADING()
  return native.invoke(
    Type.Bool, 2194, false
  )
end

-- void POPULATE_NOW() // 0x7472BB270D7B4F3E
--[[
spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called
--]]
function MISC.POPULATE_NOW()
  native.invoke(
    Type.Void, 2195, false
  )
end

-- int GET_INDEX_OF_CURRENT_LEVEL() // 0xCBAD6729F7B1F4FC
function MISC.GET_INDEX_OF_CURRENT_LEVEL()
  return native.invoke(
    Type.Int, 2196, false
  )
end

-- void SET_GRAVITY_LEVEL(int level) // 0x740E14FAD5842351
--[[
level can be from 0 to 3
0: 9.8 - normal
1: 2.4 - low
2: 0.1 - very low
3: 0.0 - off
--]]
function MISC.SET_GRAVITY_LEVEL(level)
  native.invoke(
    Type.Void, 2197, false,
    arg(Type.Int, level)
  )
end

-- void START_SAVE_DATA(Any* p0, Any p1, BOOL p2) // 0xA9575F812C6A7997
function MISC.START_SAVE_DATA(p0, p1, p2)
  native.invoke(
    Type.Void, 2198, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Bool, p2)
  )
end

-- void STOP_SAVE_DATA() // 0x74E20C9145FB66FD
function MISC.STOP_SAVE_DATA()
  native.invoke(
    Type.Void, 2199, false
  )
end

-- int GET_SIZE_OF_SAVE_DATA(BOOL p0) // 0xA09F896CE912481F
function MISC.GET_SIZE_OF_SAVE_DATA(p0)
  return native.invoke(
    Type.Int, 2200, false,
    arg(Type.Bool, p0)
  )
end

-- void REGISTER_INT_TO_SAVE(Any* p0, const char* name) // 0x34C9EE5986258415
function MISC.REGISTER_INT_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2201, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_INT64_TO_SAVE(Any* p0, const char* name) // 0xA735353C77334EA0
function MISC.REGISTER_INT64_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2202, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_ENUM_TO_SAVE(Any* p0, const char* name) // 0x10C2FA78D0E128A1
function MISC.REGISTER_ENUM_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2203, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_FLOAT_TO_SAVE(Any* p0, const char* name) // 0x7CAEC29ECB5DFEBB
function MISC.REGISTER_FLOAT_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2204, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_BOOL_TO_SAVE(Any* p0, const char* name) // 0xC8F4131414C835A1
function MISC.REGISTER_BOOL_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2205, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_TEXT_LABEL_TO_SAVE(Any* p0, const char* name) // 0xEDB1232C5BEAE62F
function MISC.REGISTER_TEXT_LABEL_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2206, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_TEXT_LABEL_15_TO_SAVE(Any* p0, const char* name) // 0x6F7794F28C6B2535
--[[
MISC::REGISTER_TEXT_LABEL_15_TO_SAVE(&a_0._f1, "tlPlateText");
MISC::REGISTER_TEXT_LABEL_15_TO_SAVE(&a_0._f1C, "tlPlateText_pending");
MISC::REGISTER_TEXT_LABEL_15_TO_SAVE(&a_0._f10B, "tlCarAppPlateText");
--]]
function MISC.REGISTER_TEXT_LABEL_15_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2207, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_TEXT_LABEL_23_TO_SAVE(Any* p0, const char* name) // 0x48F069265A0E4BEC
--[[
Only found 3 times in decompiled scripts.

MISC::REGISTER_TEXT_LABEL_23_TO_SAVE(a_0, "Movie_Name_For_This_Player");
MISC::REGISTER_TEXT_LABEL_23_TO_SAVE(&a_0._fB, "Ringtone_For_This_Player");
MISC::REGISTER_TEXT_LABEL_23_TO_SAVE(&a_0._f1EC4._f12[v_A/*6*/], &v_13); // where v_13 is "MPATMLOGSCRS0" thru "MPATMLOGSCRS15"
--]]
function MISC.REGISTER_TEXT_LABEL_23_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2208, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_TEXT_LABEL_31_TO_SAVE(Any* p0, const char* name) // 0x8269816F6CFD40F8
--[[
Only found 2 times in decompiled scripts.

MISC::REGISTER_TEXT_LABEL_31_TO_SAVE(&a_0._f1F5A._f6[0/*8*/], "TEMPSTAT_LABEL"); // gets saved in a struct called "g_SaveData_STRING_ScriptSaves"
MISC::REGISTER_TEXT_LABEL_31_TO_SAVE(&a_0._f4B4[v_1A/*8*/], &v_5); // where v_5 is "Name0" thru "Name9", gets saved in a struct called "OUTFIT_Name"
--]]
function MISC.REGISTER_TEXT_LABEL_31_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2209, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void REGISTER_TEXT_LABEL_63_TO_SAVE(Any* p0, const char* name) // 0xFAA457EF263E8763
--[[
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(a_0, "Thumb_label");
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(&a_0._f10, "Photo_label");
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(a_0, "GXTlabel");
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(&a_0._f21, "StringComp");
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(&a_0._f43, "SecondStringComp");
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(&a_0._f53, "ThirdStringComp");
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(&a_0._f32, "SenderStringComp");
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(&a_0._f726[v_1A/*16*/], &v_20); // where v_20 is "LastJobTL_0_1" thru "LastJobTL_2_1", gets saved in a struct called "LAST_JobGamer_TL"
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(&a_0._f4B, "PAID_PLAYER");
MISC::REGISTER_TEXT_LABEL_63_TO_SAVE(&a_0._f5B, "RADIO_STATION");
--]]
function MISC.REGISTER_TEXT_LABEL_63_TO_SAVE(p0, name)
  native.invoke(
    Type.Void, 2210, false,
    ref(Type.Any, p0),
    arg(Type.String, name)
  )
end

-- void START_SAVE_STRUCT_WITH_SIZE(Any* p0, int size, const char* structName) // 0xBF737600CDDBEADD
function MISC.START_SAVE_STRUCT_WITH_SIZE(p0, size, structName)
  native.invoke(
    Type.Void, 2211, false,
    ref(Type.Any, p0),
    arg(Type.Int, size),
    arg(Type.String, structName)
  )
end

-- void STOP_SAVE_STRUCT() // 0xEB1774DF12BB9F12
function MISC.STOP_SAVE_STRUCT()
  native.invoke(
    Type.Void, 2212, false
  )
end

-- void START_SAVE_ARRAY_WITH_SIZE(Any* p0, int size, const char* arrayName) // 0x60FE567DF1B1AF9D
function MISC.START_SAVE_ARRAY_WITH_SIZE(p0, size, arrayName)
  native.invoke(
    Type.Void, 2213, false,
    ref(Type.Any, p0),
    arg(Type.Int, size),
    arg(Type.String, arrayName)
  )
end

-- void STOP_SAVE_ARRAY() // 0x04456F95153C6BE4
function MISC.STOP_SAVE_ARRAY()
  native.invoke(
    Type.Void, 2214, false
  )
end

-- void COPY_SCRIPT_STRUCT(Any* dst, Any* src, int size) // 0x213AEB2B90CBA7AC
function MISC.COPY_SCRIPT_STRUCT(dst, src, size)
  native.invoke(
    Type.Void, 2215, false,
    ref(Type.Any, dst),
    ref(Type.Any, src),
    arg(Type.Int, size)
  )
end

-- void ENABLE_DISPATCH_SERVICE(int dispatchService, BOOL toggle) // 0xDC0F817884CDD856
--[[
https://alloc8or.re/gta5/doc/enums/DispatchType.txt
--]]
function MISC.ENABLE_DISPATCH_SERVICE(dispatchService, toggle)
  native.invoke(
    Type.Void, 2216, false,
    arg(Type.Int, dispatchService),
    arg(Type.Bool, toggle)
  )
end

-- void BLOCK_DISPATCH_SERVICE_RESOURCE_CREATION(int dispatchService, BOOL toggle) // 0x9B2BD3773123EA2F
function MISC.BLOCK_DISPATCH_SERVICE_RESOURCE_CREATION(dispatchService, toggle)
  native.invoke(
    Type.Void, 2217, false,
    arg(Type.Int, dispatchService),
    arg(Type.Bool, toggle)
  )
end

-- int GET_NUMBER_RESOURCES_ALLOCATED_TO_WANTED_LEVEL(int dispatchService) // 0xEB4A0C2D56441717
function MISC.GET_NUMBER_RESOURCES_ALLOCATED_TO_WANTED_LEVEL(dispatchService)
  return native.invoke(
    Type.Int, 2218, false,
    arg(Type.Int, dispatchService)
  )
end

-- BOOL CREATE_INCIDENT(int dispatchService, float x, float y, float z, int numUnits, float radius, int* outIncidentID, Any p7, Any p8) // 0x3F892CAF67444AE7
--[[
As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f. 

Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).

Side Note 2: I say it breaks as if you call this proper,
if(CREATE_INCIDENT) etc it will return false if you do as I said above.
=====================================================
--]]
function MISC.CREATE_INCIDENT(dispatchService, x, y, z, numUnits, radius, outIncidentID, p7, p8)
  return native.invoke(
    Type.Bool, 2219, false,
    arg(Type.Int, dispatchService),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, numUnits),
    arg(Type.Float, radius),
    ref(Type.Int, outIncidentID),
    arg(Type.Any, p7),
    arg(Type.Any, p8)
  )
end

-- BOOL CREATE_INCIDENT_WITH_ENTITY(int dispatchService, Ped ped, int numUnits, float radius, int* outIncidentID, Any p5, Any p6) // 0x05983472F0494E60
--[[
As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f. 

Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).

Side Note 2: I say it breaks as if you call this proper,
if(CREATE_INCIDENT) etc it will return false if you do as I said above.
=====================================================
--]]
function MISC.CREATE_INCIDENT_WITH_ENTITY(dispatchService, ped, numUnits, radius, outIncidentID, p5, p6)
  return native.invoke(
    Type.Bool, 2220, false,
    arg(Type.Int, dispatchService),
    arg(Type.Ped, ped),
    arg(Type.Int, numUnits),
    arg(Type.Float, radius),
    ref(Type.Int, outIncidentID),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void DELETE_INCIDENT(int incidentId) // 0x556C1AA270D5A207
--[[
Delete an incident with a given id.

=======================================================
Correction, I have change this to int, instead of int*
as it doesn't use a pointer to the createdIncident.
If you try it you will crash (or) freeze.
=======================================================
--]]
function MISC.DELETE_INCIDENT(incidentId)
  native.invoke(
    Type.Void, 2221, false,
    arg(Type.Int, incidentId)
  )
end

-- BOOL IS_INCIDENT_VALID(int incidentId) // 0xC8BC6461E629BEAA
--[[
=======================================================
Correction, I have change this to int, instead of int*
as it doesn't use a pointer to the createdIncident.
If you try it you will crash (or) freeze.
=======================================================
--]]
function MISC.IS_INCIDENT_VALID(incidentId)
  return native.invoke(
    Type.Bool, 2222, false,
    arg(Type.Int, incidentId)
  )
end

-- void SET_INCIDENT_REQUESTED_UNITS(int incidentId, int dispatchService, int numUnits) // 0xB08B85D860E7BA3C
function MISC.SET_INCIDENT_REQUESTED_UNITS(incidentId, dispatchService, numUnits)
  native.invoke(
    Type.Void, 2223, false,
    arg(Type.Int, incidentId),
    arg(Type.Int, dispatchService),
    arg(Type.Int, numUnits)
  )
end

-- void SET_IDEAL_SPAWN_DISTANCE_FOR_INCIDENT(int incidentId, float p1) // 0xD261BA3E7E998072
function MISC.SET_IDEAL_SPAWN_DISTANCE_FOR_INCIDENT(incidentId, p1)
  native.invoke(
    Type.Void, 2224, false,
    arg(Type.Int, incidentId),
    arg(Type.Float, p1)
  )
end

-- BOOL FIND_SPAWN_POINT_IN_DIRECTION(float posX, float posY, float posZ, float fwdVecX, float fwdVecY, float fwdVecZ, float distance, Vector3* spawnPoint) // 0x6874E2190B0C1972
--[[
Finds a position ahead of the player by predicting the players next actions.
The positions match path finding node positions.
When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.
--]]
function MISC.FIND_SPAWN_POINT_IN_DIRECTION(posX, posY, posZ, fwdVecX, fwdVecY, fwdVecZ, distance, spawnPoint)
  return native.invoke(
    Type.Bool, 2225, true,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, fwdVecX),
    arg(Type.Float, fwdVecY),
    arg(Type.Float, fwdVecZ),
    arg(Type.Float, distance),
    ref(Type.Vector3, spawnPoint)
  )
end

-- int ADD_POP_MULTIPLIER_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float p6, float p7, BOOL p8, BOOL p9) // 0x67F6413D3220E18D
function MISC.ADD_POP_MULTIPLIER_AREA(x1, y1, z1, x2, y2, z2, p6, p7, p8, p9)
  return native.invoke(
    Type.Int, 2226, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Bool, p8),
    arg(Type.Bool, p9)
  )
end

-- BOOL DOES_POP_MULTIPLIER_AREA_EXIST(int id) // 0x1327E2FE9746BAEE
function MISC.DOES_POP_MULTIPLIER_AREA_EXIST(id)
  return native.invoke(
    Type.Bool, 2227, false,
    arg(Type.Int, id)
  )
end

-- void REMOVE_POP_MULTIPLIER_AREA(int id, BOOL p1) // 0xB129E447A2EDA4BF
function MISC.REMOVE_POP_MULTIPLIER_AREA(id, p1)
  native.invoke(
    Type.Void, 2228, false,
    arg(Type.Int, id),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_POP_MULTIPLIER_AREA_NETWORKED(int id) // 0x1312F4B242609CE3
function MISC.IS_POP_MULTIPLIER_AREA_NETWORKED(id)
  return native.invoke(
    Type.Bool, 2229, false,
    arg(Type.Int, id)
  )
end

-- int ADD_POP_MULTIPLIER_SPHERE(float x, float y, float z, float radius, float pedMultiplier, float vehicleMultiplier, BOOL p6, BOOL p7) // 0x32C7A7E8C43A1F80
--[[
This native is adding a zone, where you can change density settings. For example, you can add a zone on 0.0, 0.0, 0.0 with radius 900.0 and vehicleMultiplier 0.0, and you will not see any new population vehicle spawned in a radius of 900.0 from 0.0, 0.0, 0.0. Returns the id. You can have only 15 zones at the same time. You can remove zone using REMOVE_POP_MULTIPLIER_SPHERE
--]]
function MISC.ADD_POP_MULTIPLIER_SPHERE(x, y, z, radius, pedMultiplier, vehicleMultiplier, p6, p7)
  return native.invoke(
    Type.Int, 2230, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Float, pedMultiplier),
    arg(Type.Float, vehicleMultiplier),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7)
  )
end

-- BOOL DOES_POP_MULTIPLIER_SPHERE_EXIST(int id) // 0x171BAFB3C60389F4
function MISC.DOES_POP_MULTIPLIER_SPHERE_EXIST(id)
  return native.invoke(
    Type.Bool, 2231, false,
    arg(Type.Int, id)
  )
end

-- void REMOVE_POP_MULTIPLIER_SPHERE(int id, BOOL p1) // 0xE6869BECDD8F2403
--[[
Removes population multiplier sphere
--]]
function MISC.REMOVE_POP_MULTIPLIER_SPHERE(id, p1)
  native.invoke(
    Type.Void, 2232, false,
    arg(Type.Int, id),
    arg(Type.Bool, p1)
  )
end

-- void ENABLE_TENNIS_MODE(Ped ped, BOOL toggle, BOOL p2) // 0x28A04B411933F8A6
--[[
Makes the ped jump around like they're in a tennis match
--]]
function MISC.ENABLE_TENNIS_MODE(ped, toggle, p2)
  native.invoke(
    Type.Void, 2233, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_TENNIS_MODE(Ped ped) // 0x5D5479D115290C3F
function MISC.IS_TENNIS_MODE(ped)
  return native.invoke(
    Type.Bool, 2234, false,
    arg(Type.Ped, ped)
  )
end

-- void PLAY_TENNIS_SWING_ANIM(Ped ped, const char* animDict, const char* animName, float p3, float p4, BOOL p5) // 0xE266ED23311F24D4
--[[
Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function MISC.PLAY_TENNIS_SWING_ANIM(ped, animDict, animName, p3, p4, p5)
  native.invoke(
    Type.Void, 2235, false,
    arg(Type.Ped, ped),
    arg(Type.String, animDict),
    arg(Type.String, animName),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Bool, p5)
  )
end

-- BOOL GET_TENNIS_SWING_ANIM_COMPLETE(Ped ped) // 0x17DF68D720AA77F8
function MISC.GET_TENNIS_SWING_ANIM_COMPLETE(ped)
  return native.invoke(
    Type.Bool, 2236, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL GET_TENNIS_SWING_ANIM_CAN_BE_INTERRUPTED(Ped ped) // 0x19BFED045C647C49
function MISC.GET_TENNIS_SWING_ANIM_CAN_BE_INTERRUPTED(ped)
  return native.invoke(
    Type.Bool, 2237, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL GET_TENNIS_SWING_ANIM_SWUNG(Ped ped) // 0xE95B0C7D5BA3B96B
function MISC.GET_TENNIS_SWING_ANIM_SWUNG(ped)
  return native.invoke(
    Type.Bool, 2238, false,
    arg(Type.Ped, ped)
  )
end

-- void PLAY_TENNIS_DIVE_ANIM(Ped ped, int p1, float p2, float p3, float p4, BOOL p5) // 0x8FA9C42FC5D7C64B
function MISC.PLAY_TENNIS_DIVE_ANIM(ped, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 2239, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Bool, p5)
  )
end

-- void SET_TENNIS_MOVE_NETWORK_SIGNAL_FLOAT(Ped ped, const char* p1, float p2) // 0x54F157E0336A3822
--[[
From the scripts:

MISC::SET_TENNIS_MOVE_NETWORK_SIGNAL_FLOAT(sub_aa49(a_0), "ForcedStopDirection", v_E);

Related to tennis mode.
--]]
function MISC.SET_TENNIS_MOVE_NETWORK_SIGNAL_FLOAT(ped, p1, p2)
  native.invoke(
    Type.Void, 2240, false,
    arg(Type.Ped, ped),
    arg(Type.String, p1),
    arg(Type.Float, p2)
  )
end

-- void RESET_DISPATCH_SPAWN_LOCATION() // 0x5896F2BD5683A4E1
function MISC.RESET_DISPATCH_SPAWN_LOCATION()
  native.invoke(
    Type.Void, 2241, false
  )
end

-- void SET_DISPATCH_SPAWN_LOCATION(float x, float y, float z) // 0xD10F442036302D50
function MISC.SET_DISPATCH_SPAWN_LOCATION(x, y, z)
  native.invoke(
    Type.Void, 2242, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void RESET_DISPATCH_IDEAL_SPAWN_DISTANCE() // 0x77A84429DD9F0A15
function MISC.RESET_DISPATCH_IDEAL_SPAWN_DISTANCE()
  native.invoke(
    Type.Void, 2243, false
  )
end

-- void SET_DISPATCH_IDEAL_SPAWN_DISTANCE(float distance) // 0x6FE601A64180D423
function MISC.SET_DISPATCH_IDEAL_SPAWN_DISTANCE(distance)
  native.invoke(
    Type.Void, 2244, false,
    arg(Type.Float, distance)
  )
end

-- void RESET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS(Any p0) // 0xEB2DB0CAD13154B3
function MISC.RESET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS(p0)
  native.invoke(
    Type.Void, 2245, false,
    arg(Type.Any, p0)
  )
end

-- void SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS(Any p0, float p1) // 0x44F7CBC1BEB3327D
function MISC.SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS(p0, p1)
  native.invoke(
    Type.Void, 2246, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1)
  )
end

-- void SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER(Any p0, float p1) // 0x48838ED9937A15D1
function MISC.SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER(p0, p1)
  native.invoke(
    Type.Void, 2247, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1)
  )
end

-- int ADD_DISPATCH_SPAWN_ANGLED_BLOCKING_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width) // 0x918C7B2D2FF3928B
--[[
To remove, see: REMOVE_DISPATCH_SPAWN_BLOCKING_AREA
See IS_POINT_IN_ANGLED_AREA for the definition of an angled area.
--]]
function MISC.ADD_DISPATCH_SPAWN_ANGLED_BLOCKING_AREA(x1, y1, z1, x2, y2, z2, width)
  return native.invoke(
    Type.Int, 2248, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width)
  )
end

-- int ADD_DISPATCH_SPAWN_SPHERE_BLOCKING_AREA(float x1, float y1, float x2, float y2) // 0x2D4259F1FEB81DA9
function MISC.ADD_DISPATCH_SPAWN_SPHERE_BLOCKING_AREA(x1, y1, x2, y2)
  return native.invoke(
    Type.Int, 2249, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, x2),
    arg(Type.Float, y2)
  )
end

-- void REMOVE_DISPATCH_SPAWN_BLOCKING_AREA(int p0) // 0x264AC28B01B353A5
function MISC.REMOVE_DISPATCH_SPAWN_BLOCKING_AREA(p0)
  native.invoke(
    Type.Void, 2250, false,
    arg(Type.Int, p0)
  )
end

-- void RESET_DISPATCH_SPAWN_BLOCKING_AREAS() // 0xAC7BFD5C1D83EA75
function MISC.RESET_DISPATCH_SPAWN_BLOCKING_AREAS()
  native.invoke(
    Type.Void, 2251, false
  )
end

-- void RESET_WANTED_RESPONSE_NUM_PEDS_TO_SPAWN() // 0xD9F692D349249528
function MISC.RESET_WANTED_RESPONSE_NUM_PEDS_TO_SPAWN()
  native.invoke(
    Type.Void, 2252, false
  )
end

-- void SET_WANTED_RESPONSE_NUM_PEDS_TO_SPAWN(int p0, int p1) // 0xE532EC1A63231B4F
function MISC.SET_WANTED_RESPONSE_NUM_PEDS_TO_SPAWN(p0, p1)
  native.invoke(
    Type.Void, 2253, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1)
  )
end

-- void ADD_TACTICAL_NAV_MESH_POINT(float x, float y, float z) // 0xB8721407EE9C3FF6
function MISC.ADD_TACTICAL_NAV_MESH_POINT(x, y, z)
  native.invoke(
    Type.Void, 2254, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void CLEAR_TACTICAL_NAV_MESH_POINTS() // 0xB3CD58CCA6CDA852
function MISC.CLEAR_TACTICAL_NAV_MESH_POINTS()
  native.invoke(
    Type.Void, 2255, false
  )
end

-- void SET_RIOT_MODE_ENABLED(BOOL toggle) // 0x2587A48BC88DFADF
--[[
Activates (usused?) riot mode. All NPCs are being hostile to each other (including player). Also the game will give weapons (pistols, smgs) to random NPCs.
--]]
function MISC.SET_RIOT_MODE_ENABLED(toggle)
  native.invoke(
    Type.Void, 2256, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISPLAY_ONSCREEN_KEYBOARD_WITH_LONGER_INITIAL_STRING(int p0, const char* windowTitle, Any* p2, const char* defaultText, const char* defaultConcat1, const char* defaultConcat2, const char* defaultConcat3, const char* defaultConcat4, const char* defaultConcat5, const char* defaultConcat6, const char* defaultConcat7, int maxInputLength) // 0xCA78CFA0366592FE
function MISC.DISPLAY_ONSCREEN_KEYBOARD_WITH_LONGER_INITIAL_STRING(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, defaultConcat4, defaultConcat5, defaultConcat6, defaultConcat7, maxInputLength)
  native.invoke(
    Type.Void, 2257, false,
    arg(Type.Int, p0),
    arg(Type.String, windowTitle),
    ref(Type.Any, p2),
    arg(Type.String, defaultText),
    arg(Type.String, defaultConcat1),
    arg(Type.String, defaultConcat2),
    arg(Type.String, defaultConcat3),
    arg(Type.String, defaultConcat4),
    arg(Type.String, defaultConcat5),
    arg(Type.String, defaultConcat6),
    arg(Type.String, defaultConcat7),
    arg(Type.Int, maxInputLength)
  )
end

-- void DISPLAY_ONSCREEN_KEYBOARD(int p0, const char* windowTitle, const char* p2, const char* defaultText, const char* defaultConcat1, const char* defaultConcat2, const char* defaultConcat3, int maxInputLength) // 0x00DC833F2568DBF6
--[[
sfink: note, p0 is set to 6 for PC platform in at least 1 script, or to `unk::_get_ui_language_id() == 0` otherwise.

NOTE: windowTitle uses text labels, and an invalid value will display nothing.

www.gtaforums.com/topic/788343-vrel-script-hook-v/?p=1067380474

windowTitle's
-----------------
CELL_EMAIL_BOD  =   "Enter your Eyefind message"
CELL_EMAIL_BODE =   "Message too long. Try again"
CELL_EMAIL_BODF    =   "Forbidden message. Try again"
CELL_EMAIL_SOD    =   "Enter your Eyefind subject"
CELL_EMAIL_SODE =   "Subject too long. Try again"
CELL_EMAIL_SODF    =   "Forbidden text. Try again"
CELL_EMASH_BOD   =   "Enter your Eyefind message"
CELL_EMASH_BODE =   "Message too long. Try again"
CELL_EMASH_BODF    =   "Forbidden message. Try again"
CELL_EMASH_SOD    =   "Enter your Eyefind subject"
CELL_EMASH_SODE =   "Subject too long. Try again"
CELL_EMASH_SODF    =   "Forbidden Text. Try again"
FMMC_KEY_TIP10   =   "Enter Synopsis"
FMMC_KEY_TIP12  =   "Enter Custom Team Name"
FMMC_KEY_TIP12F =   "Forbidden Text. Try again"
FMMC_KEY_TIP12N  =   "Custom Team Name"
FMMC_KEY_TIP8 =   "Enter Message"
FMMC_KEY_TIP8F   =   "Forbidden Text. Try again"
FMMC_KEY_TIP8FS  =   "Invalid Message. Try again"
FMMC_KEY_TIP8S  =   "Enter Message"
FMMC_KEY_TIP9    =   "Enter Outfit Name"
FMMC_KEY_TIP9F   =   "Invalid Outfit Name. Try again"
FMMC_KEY_TIP9N  =   "Outfit Name"
PM_NAME_CHALL  =   "Enter Challenge Name"
--]]
function MISC.DISPLAY_ONSCREEN_KEYBOARD(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength)
  native.invoke(
    Type.Void, 2258, false,
    arg(Type.Int, p0),
    arg(Type.String, windowTitle),
    arg(Type.String, p2),
    arg(Type.String, defaultText),
    arg(Type.String, defaultConcat1),
    arg(Type.String, defaultConcat2),
    arg(Type.String, defaultConcat3),
    arg(Type.Int, maxInputLength)
  )
end

-- int UPDATE_ONSCREEN_KEYBOARD() // 0x0CF2B696BBF945AE
--[[
Returns the current status of the onscreen keyboard, and updates the output.

Status Codes:

-1: Keyboard isn't active
0: User still editing
1: User has finished editing
2: User has canceled editing
--]]
function MISC.UPDATE_ONSCREEN_KEYBOARD()
  return native.invoke(
    Type.Int, 2259, false
  )
end

-- const char* GET_ONSCREEN_KEYBOARD_RESULT() // 0x8362B09B91893647
--[[
Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.
--]]
function MISC.GET_ONSCREEN_KEYBOARD_RESULT()
  return native.invoke(
    Type.String, 2260, false
  )
end

-- void CANCEL_ONSCREEN_KEYBOARD() // 0x58A39BE597CE99CD
--[[
DO NOT use this as it doesn't clean up the text input box properly and your script will get stuck in the UPDATE_ONSCREEN_KEYBOARD() loop.
Use FORCE_CLOSE_TEXT_INPUT_BOX instead.
--]]
function MISC.CANCEL_ONSCREEN_KEYBOARD()
  native.invoke(
    Type.Void, 2261, false
  )
end

-- void NEXT_ONSCREEN_KEYBOARD_RESULT_WILL_DISPLAY_USING_THESE_FONTS(int p0) // 0x3ED1438C1F5C6612
--[[
p0 was always 2 in R* scripts.
Called before calling DISPLAY_ONSCREEN_KEYBOARD if the input needs to be saved.
--]]
function MISC.NEXT_ONSCREEN_KEYBOARD_RESULT_WILL_DISPLAY_USING_THESE_FONTS(p0)
  native.invoke(
    Type.Void, 2262, false,
    arg(Type.Int, p0)
  )
end

-- void ACTION_MANAGER_ENABLE_ACTION(Hash hash, BOOL enable) // 0xA6A12939F16D85BE
--[[
Appears to remove stealth kill action from memory
--]]
function MISC.ACTION_MANAGER_ENABLE_ACTION(hash, enable)
  native.invoke(
    Type.Void, 2263, false,
    arg(Type.Hash, hash),
    arg(Type.Bool, enable)
  )
end

-- int GET_REAL_WORLD_TIME() // 0x3F60413F5DF65748
--[[
GET_GAME_TIMER() / 1000
--]]
function MISC.GET_REAL_WORLD_TIME()
  return native.invoke(
    Type.Int, 2264, false
  )
end

-- void SUPRESS_RANDOM_EVENT_THIS_FRAME(int eventType, BOOL suppress) // 0x1EAE0A6E978894A2
function MISC.SUPRESS_RANDOM_EVENT_THIS_FRAME(eventType, suppress)
  native.invoke(
    Type.Void, 2265, false,
    arg(Type.Int, eventType),
    arg(Type.Bool, suppress)
  )
end

-- void SET_EXPLOSIVE_AMMO_THIS_FRAME(Player player) // 0xA66C71C98D5F2CFB
function MISC.SET_EXPLOSIVE_AMMO_THIS_FRAME(player)
  native.invoke(
    Type.Void, 2266, false,
    arg(Type.Player, player)
  )
end

-- void SET_FIRE_AMMO_THIS_FRAME(Player player) // 0x11879CDD803D30F4
function MISC.SET_FIRE_AMMO_THIS_FRAME(player)
  native.invoke(
    Type.Void, 2267, false,
    arg(Type.Player, player)
  )
end

-- void SET_EXPLOSIVE_MELEE_THIS_FRAME(Player player) // 0xFF1BED81BFDC0FE0
function MISC.SET_EXPLOSIVE_MELEE_THIS_FRAME(player)
  native.invoke(
    Type.Void, 2268, false,
    arg(Type.Player, player)
  )
end

-- void SET_SUPER_JUMP_THIS_FRAME(Player player) // 0x57FFF03E423A4C0B
function MISC.SET_SUPER_JUMP_THIS_FRAME(player)
  native.invoke(
    Type.Void, 2269, false,
    arg(Type.Player, player)
  )
end

-- void SET_BEAST_JUMP_THIS_FRAME(Player player) // 0x438822C279B73B93
function MISC.SET_BEAST_JUMP_THIS_FRAME(player)
  native.invoke(
    Type.Void, 2270, false,
    arg(Type.Player, player)
  )
end

-- void SET_FORCED_JUMP_THIS_FRAME(Player player) // 0xA1183BCFEE0F93D1
function MISC.SET_FORCED_JUMP_THIS_FRAME(player)
  native.invoke(
    Type.Void, 2271, false,
    arg(Type.Player, player)
  )
end

-- BOOL HAS_GAME_INSTALLED_THIS_SESSION() // 0x6FDDF453C0C756EC
function MISC.HAS_GAME_INSTALLED_THIS_SESSION()
  return native.invoke(
    Type.Bool, 2272, false
  )
end

-- void SET_TICKER_JOHNMARSTON_IS_DONE() // 0xFB00CA71DA386228
function MISC.SET_TICKER_JOHNMARSTON_IS_DONE()
  native.invoke(
    Type.Void, 2273, false
  )
end

-- BOOL ARE_PROFILE_SETTINGS_VALID() // 0x5AA3BEFA29F03AD4
function MISC.ARE_PROFILE_SETTINGS_VALID()
  return native.invoke(
    Type.Bool, 2274, false
  )
end

-- void PREVENT_ARREST_STATE_THIS_FRAME() // 0xE3D969D2785FFB5E
function MISC.PREVENT_ARREST_STATE_THIS_FRAME()
  native.invoke(
    Type.Void, 2275, false
  )
end

-- void FORCE_GAME_STATE_PLAYING() // 0xC0AA53F866B3134D
--[[
Sets the localplayer playerinfo state back to playing (State 0)

States are:
-1: "Invalid"
0: "Playing"
1: "Died"
2: "Arrested"
3: "Failed Mission"
4: "Left Game"
5: "Respawn"
6: "In MP Cutscene"
--]]
function MISC.FORCE_GAME_STATE_PLAYING()
  native.invoke(
    Type.Void, 2276, false
  )
end

-- void SCRIPT_RACE_INIT(int p0, int p1, Any p2, Any p3) // 0x0A60017F841A54F2
function MISC.SCRIPT_RACE_INIT(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2277, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void SCRIPT_RACE_SHUTDOWN() // 0x1FF6BF9A63E5757F
function MISC.SCRIPT_RACE_SHUTDOWN()
  native.invoke(
    Type.Void, 2278, false
  )
end

-- void SCRIPT_RACE_PLAYER_HIT_CHECKPOINT(Player player, Any p1, Any p2, Any p3) // 0x1BB299305C3E8C13
function MISC.SCRIPT_RACE_PLAYER_HIT_CHECKPOINT(player, p1, p2, p3)
  native.invoke(
    Type.Void, 2279, false,
    arg(Type.Player, player),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- BOOL SCRIPT_RACE_GET_PLAYER_SPLIT_TIME(Player player, int* p1, int* p2) // 0x8EF5573A1F801A5C
function MISC.SCRIPT_RACE_GET_PLAYER_SPLIT_TIME(player, p1, p2)
  return native.invoke(
    Type.Bool, 2280, false,
    arg(Type.Player, player),
    ref(Type.Int, p1),
    ref(Type.Int, p2)
  )
end

-- void START_END_USER_BENCHMARK() // 0x92790862E36C2ADA
function MISC.START_END_USER_BENCHMARK()
  native.invoke(
    Type.Void, 2281, false
  )
end

-- void STOP_END_USER_BENCHMARK() // 0xC7DB36C24634F52B
function MISC.STOP_END_USER_BENCHMARK()
  native.invoke(
    Type.Void, 2282, false
  )
end

-- void RESET_END_USER_BENCHMARK() // 0x437138B6A830166A
function MISC.RESET_END_USER_BENCHMARK()
  native.invoke(
    Type.Void, 2283, false
  )
end

-- void SAVE_END_USER_BENCHMARK() // 0x37DEB0AA183FB6D8
--[[
Saves the benchmark recording to %USERPROFILE%\Documents\Rockstar Games\GTA V\Benchmarks and submits some metrics.
--]]
function MISC.SAVE_END_USER_BENCHMARK()
  native.invoke(
    Type.Void, 2284, false
  )
end

-- BOOL UI_STARTED_END_USER_BENCHMARK() // 0xEA2F2061875EED90
--[[
Returns true if the current frontend menu is FE_MENU_VERSION_SP_PAUSE
--]]
function MISC.UI_STARTED_END_USER_BENCHMARK()
  return native.invoke(
    Type.Bool, 2285, false
  )
end

-- BOOL LANDING_SCREEN_STARTED_END_USER_BENCHMARK() // 0x3BBBD13E5041A79E
--[[
Returns true if the current frontend menu is FE_MENU_VERSION_LANDING_MENU
--]]
function MISC.LANDING_SCREEN_STARTED_END_USER_BENCHMARK()
  return native.invoke(
    Type.Bool, 2286, false
  )
end

-- BOOL IS_COMMANDLINE_END_USER_BENCHMARK() // 0xA049A5BE0F04F2F8
--[[
Returns true if command line option '-benchmark' is set.
--]]
function MISC.IS_COMMANDLINE_END_USER_BENCHMARK()
  return native.invoke(
    Type.Bool, 2287, false
  )
end

-- int GET_BENCHMARK_ITERATIONS() // 0x4750FC27570311EC
--[[
Returns value of the '-benchmarkIterations' command line option.
--]]
function MISC.GET_BENCHMARK_ITERATIONS()
  return native.invoke(
    Type.Int, 2288, false
  )
end

-- int GET_BENCHMARK_PASS() // 0x1B2366C3F2A5C8DF
--[[
Returns value of the '-benchmarkPass' command line option.
--]]
function MISC.GET_BENCHMARK_PASS()
  return native.invoke(
    Type.Int, 2289, false
  )
end

-- void RESTART_GAME() // 0xE574A662ACAEFBB1
--[[
In singleplayer it does exactly what the name implies. In FiveM / GTA:Online it shows `Disconnecting from GTA Online` HUD and then quits the game.
--]]
function MISC.RESTART_GAME()
  native.invoke(
    Type.Void, 2290, false
  )
end

-- void QUIT_GAME() // 0xEB6891F03362FB12
--[[
Exits the game and downloads a fresh social club update on next restart.
--]]
function MISC.QUIT_GAME()
  native.invoke(
    Type.Void, 2291, false
  )
end

-- BOOL HAS_ASYNC_INSTALL_FINISHED() // 0x14832BF2ABA53FC5
--[[
Hardcoded to always return true.
--]]
function MISC.HAS_ASYNC_INSTALL_FINISHED()
  return native.invoke(
    Type.Bool, 2292, false
  )
end

-- void CLEANUP_ASYNC_INSTALL() // 0xC79AE21974B01FB2
function MISC.CLEANUP_ASYNC_INSTALL()
  native.invoke(
    Type.Void, 2293, false
  )
end

-- BOOL PLM_IS_IN_CONSTRAINED_MODE() // 0x684A41975F077262
--[[
aka "constrained"
--]]
function MISC.PLM_IS_IN_CONSTRAINED_MODE()
  return native.invoke(
    Type.Bool, 2294, false
  )
end

-- int PLM_GET_CONSTRAINED_DURATION_MS() // 0xABB2FA71C83A1B72
--[[
Returns duration of how long the game has been in power-saving mode (aka "constrained") in milliseconds.
--]]
function MISC.PLM_GET_CONSTRAINED_DURATION_MS()
  return native.invoke(
    Type.Int, 2295, false
  )
end

-- void SET_PLAYER_IS_IN_ANIMAL_FORM(BOOL toggle) // 0x4EBB7E87AA0DBED4
--[[
If toggle is true, the ped's head is shown in the pause menu
If toggle is false, the ped's head is not shown in the pause menu
--]]
function MISC.SET_PLAYER_IS_IN_ANIMAL_FORM(toggle)
  native.invoke(
    Type.Void, 2296, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_IS_PLAYER_IN_ANIMAL_FORM() // 0x9689123E3F213AA5
--[[
Although we don't have a jenkins hash for this one, the name is 100% confirmed.
--]]
function MISC.GET_IS_PLAYER_IN_ANIMAL_FORM()
  return native.invoke(
    Type.Bool, 2297, false
  )
end

-- void SET_PLAYER_IS_REPEATING_A_MISSION(BOOL toggle) // 0x9D8D44ADBBA61EF2
function MISC.SET_PLAYER_IS_REPEATING_A_MISSION(toggle)
  native.invoke(
    Type.Void, 2298, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISABLE_SCREEN_DIMMING_THIS_FRAME() // 0x23227DF0B2115469
--[[
Does nothing (it's a nullsub).
--]]
function MISC.DISABLE_SCREEN_DIMMING_THIS_FRAME()
  native.invoke(
    Type.Void, 2299, false
  )
end

-- float GET_CITY_DENSITY() // 0xD10282B6E3751BA0
function MISC.GET_CITY_DENSITY()
  return native.invoke(
    Type.Float, 2300, false
  )
end

-- void USE_ACTIVE_CAMERA_FOR_TIMESLICING_CENTRE() // 0x693478ACBD7F18E7
function MISC.USE_ACTIVE_CAMERA_FOR_TIMESLICING_CENTRE()
  native.invoke(
    Type.Void, 2301, false
  )
end

-- void SET_CONTENT_ID_INDEX(Hash contentId, int index) // 0x4B82FA6F2D624634
function MISC.SET_CONTENT_ID_INDEX(contentId, index)
  native.invoke(
    Type.Void, 2302, false,
    arg(Type.Hash, contentId),
    arg(Type.Int, index)
  )
end

-- int GET_CONTENT_ID_INDEX(Hash contentId) // 0xECF041186C5A94DC
function MISC.GET_CONTENT_ID_INDEX(contentId)
  return native.invoke(
    Type.Int, 2303, false,
    arg(Type.Hash, contentId)
  )
end

-- void _SET_CONTENT_PROP_TYPE(Hash model, int type) // 0xBA4583AF4C678A9B
function MISC._SET_CONTENT_PROP_TYPE(model, type)
  native.invoke(
    Type.Void, 2304, false,
    arg(Type.Hash, model),
    arg(Type.Int, type)
  )
end

-- int _GET_CONTENT_PROP_TYPE(Hash model) // 0x8BAF8AD59F47AAFC
--[[
Returns prop type for given model hash
--]]
function MISC._GET_CONTENT_PROP_TYPE(model)
  return native.invoke(
    Type.Int, 2305, false,
    arg(Type.Hash, model)
  )
end


