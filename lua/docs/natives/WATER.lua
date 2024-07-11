WATER = {}

-- BOOL GET_WATER_HEIGHT(float x, float y, float z, float* height) // 0xF6829842C06AE524
--[[
This function set height to the value of z-axis of the water surface.

This function works with sea and lake. However it does not work with shallow rivers (e.g. raton canyon will return -100000.0f)

note: seems to return true when you are in water
--]]
function WATER.GET_WATER_HEIGHT(x, y, z, height)
  return native.invoke(
    Type.Bool, 6432, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Float, height)
  )
end

-- BOOL GET_WATER_HEIGHT_NO_WAVES(float x, float y, float z, float* height) // 0x8EE6B53CE13A9794
function WATER.GET_WATER_HEIGHT_NO_WAVES(x, y, z, height)
  return native.invoke(
    Type.Bool, 6433, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    ref(Type.Float, height)
  )
end

-- BOOL TEST_PROBE_AGAINST_WATER(float x1, float y1, float z1, float x2, float y2, float z2, Vector3* result) // 0xFFA5D878809819DB
function WATER.TEST_PROBE_AGAINST_WATER(x1, y1, z1, x2, y2, z2, result)
  return native.invoke(
    Type.Bool, 6434, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    ref(Type.Vector3, result)
  )
end

-- int TEST_PROBE_AGAINST_ALL_WATER(float x1, float y1, float z1, float x2, float y2, float z2, int flags, float* waterHeight) // 0x8974647ED222EA5F
--[[
enum eScriptWaterTestResult
{
	SCRIPT_WATER_TEST_RESULT_NONE,
	SCRIPT_WATER_TEST_RESULT_WATER,
	SCRIPT_WATER_TEST_RESULT_BLOCKED,
};
--]]
function WATER.TEST_PROBE_AGAINST_ALL_WATER(x1, y1, z1, x2, y2, z2, flags, waterHeight)
  return native.invoke(
    Type.Int, 6435, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, flags),
    ref(Type.Float, waterHeight)
  )
end

-- int TEST_VERTICAL_PROBE_AGAINST_ALL_WATER(float x, float y, float z, int flags, float* waterHeight) // 0x2B3451FA1E3142E2
--[[
See TEST_PROBE_AGAINST_ALL_WATER.
--]]
function WATER.TEST_VERTICAL_PROBE_AGAINST_ALL_WATER(x, y, z, flags, waterHeight)
  return native.invoke(
    Type.Int, 6436, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, flags),
    ref(Type.Float, waterHeight)
  )
end

-- void MODIFY_WATER(float x, float y, float radius, float height) // 0xC443FD757C3BA637
--[[
Sets the water height for a given position and radius.

--]]
function WATER.MODIFY_WATER(x, y, radius, height)
  native.invoke(
    Type.Void, 6437, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, radius),
    arg(Type.Float, height)
  )
end

-- int ADD_EXTRA_CALMING_QUAD(float xLow, float yLow, float xHigh, float yHigh, float height) // 0xFDBF4CDBC07E1706
function WATER.ADD_EXTRA_CALMING_QUAD(xLow, yLow, xHigh, yHigh, height)
  return native.invoke(
    Type.Int, 6438, false,
    arg(Type.Float, xLow),
    arg(Type.Float, yLow),
    arg(Type.Float, xHigh),
    arg(Type.Float, yHigh),
    arg(Type.Float, height)
  )
end

-- void REMOVE_EXTRA_CALMING_QUAD(int calmingQuad) // 0xB1252E3E59A82AAF
--[[
p0 is the handle returned from ADD_EXTRA_CALMING_QUAD
--]]
function WATER.REMOVE_EXTRA_CALMING_QUAD(calmingQuad)
  native.invoke(
    Type.Void, 6439, false,
    arg(Type.Int, calmingQuad)
  )
end

-- void SET_DEEP_OCEAN_SCALER(float intensity) // 0xB96B00E976BE977F
--[[
Sets a value that determines how aggressive the ocean waves will be. Values of 2.0 or more make for very aggressive waves like you see during a thunderstorm.

Works only ~200 meters around the player.
--]]
function WATER.SET_DEEP_OCEAN_SCALER(intensity)
  native.invoke(
    Type.Void, 6440, false,
    arg(Type.Float, intensity)
  )
end

-- float GET_DEEP_OCEAN_SCALER() // 0x2B2A2CC86778B619
--[[
Gets the aggressiveness factor of the ocean waves.
--]]
function WATER.GET_DEEP_OCEAN_SCALER()
  return native.invoke(
    Type.Float, 6441, false
  )
end

-- void SET_CALMED_WAVE_HEIGHT_SCALER(float height) // 0x547237AA71AB44DE
function WATER.SET_CALMED_WAVE_HEIGHT_SCALER(height)
  native.invoke(
    Type.Void, 6442, false,
    arg(Type.Float, height)
  )
end

-- void RESET_DEEP_OCEAN_SCALER() // 0x5E5E99285AE812DB
--[[
Sets the waves intensity back to original (1.0 in most cases).
--]]
function WATER.RESET_DEEP_OCEAN_SCALER()
  native.invoke(
    Type.Void, 6443, false
  )
end


