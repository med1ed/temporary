BRAIN = {}

-- void ADD_SCRIPT_TO_RANDOM_PED(const char* name, Hash model, float p2, float p3) // 0x4EE5367468A65CCC
--[[
BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);

- Nacorpio

-----

Hardcoded to not work in Multiplayer.
--]]
function BRAIN.ADD_SCRIPT_TO_RANDOM_PED(name, model, p2, p3)
  native.invoke(
    Type.Void, 320, false,
    arg(Type.String, name),
    arg(Type.Hash, model),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void REGISTER_OBJECT_SCRIPT_BRAIN(const char* scriptName, Hash modelHash, int p2, float activationRange, int p4, int p5) // 0x0BE84C318BA6EC22
--[[
Registers a script for any object with a specific model hash.

BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);

- Nacorpio
--]]
function BRAIN.REGISTER_OBJECT_SCRIPT_BRAIN(scriptName, modelHash, p2, activationRange, p4, p5)
  native.invoke(
    Type.Void, 321, false,
    arg(Type.String, scriptName),
    arg(Type.Hash, modelHash),
    arg(Type.Int, p2),
    arg(Type.Float, activationRange),
    arg(Type.Int, p4),
    arg(Type.Int, p5)
  )
end

-- BOOL IS_OBJECT_WITHIN_BRAIN_ACTIVATION_RANGE(Object object) // 0xCCBA154209823057
function BRAIN.IS_OBJECT_WITHIN_BRAIN_ACTIVATION_RANGE(object)
  return native.invoke(
    Type.Bool, 322, false,
    arg(Type.Object, object)
  )
end

-- void REGISTER_WORLD_POINT_SCRIPT_BRAIN(const char* scriptName, float activationRange, int p2) // 0x3CDC7136613284BD
function BRAIN.REGISTER_WORLD_POINT_SCRIPT_BRAIN(scriptName, activationRange, p2)
  native.invoke(
    Type.Void, 323, false,
    arg(Type.String, scriptName),
    arg(Type.Float, activationRange),
    arg(Type.Int, p2)
  )
end

-- BOOL IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE() // 0xC5042CC6F5E3D450
--[[
Gets whether the world point the calling script is registered to is within desired range of the player.
--]]
function BRAIN.IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE()
  return native.invoke(
    Type.Bool, 324, false
  )
end

-- void ENABLE_SCRIPT_BRAIN_SET(int brainSet) // 0x67AA4D73F0CFA86B
function BRAIN.ENABLE_SCRIPT_BRAIN_SET(brainSet)
  native.invoke(
    Type.Void, 325, false,
    arg(Type.Int, brainSet)
  )
end

-- void DISABLE_SCRIPT_BRAIN_SET(int brainSet) // 0x14D8518E9760F08F
function BRAIN.DISABLE_SCRIPT_BRAIN_SET(brainSet)
  native.invoke(
    Type.Void, 326, false,
    arg(Type.Int, brainSet)
  )
end

-- void REACTIVATE_ALL_WORLD_BRAINS_THAT_ARE_WAITING_TILL_OUT_OF_RANGE() // 0x0B40ED49D7D6FF84
function BRAIN.REACTIVATE_ALL_WORLD_BRAINS_THAT_ARE_WAITING_TILL_OUT_OF_RANGE()
  native.invoke(
    Type.Void, 327, false
  )
end

-- void REACTIVATE_ALL_OBJECT_BRAINS_THAT_ARE_WAITING_TILL_OUT_OF_RANGE() // 0x4D953DF78EBF8158
function BRAIN.REACTIVATE_ALL_OBJECT_BRAINS_THAT_ARE_WAITING_TILL_OUT_OF_RANGE()
  native.invoke(
    Type.Void, 328, false
  )
end

-- void REACTIVATE_NAMED_WORLD_BRAINS_WAITING_TILL_OUT_OF_RANGE(const char* scriptName) // 0x6D6840CEE8845831
--[[
Possible values:

act_cinema
am_mp_carwash_launch
am_mp_carwash_control
am_mp_property_ext
chop
fairgroundHub
launcher_BasejumpHeli
launcher_BasejumpPack
launcher_CarWash
launcher_golf
launcher_Hunting_Ambient
launcher_MrsPhilips
launcher_OffroadRacing
launcher_pilotschool
launcher_Racing
launcher_rampage
launcher_rampage
launcher_range
launcher_stunts
launcher_stunts
launcher_tennis
launcher_Tonya
launcher_Triathlon
launcher_Yoga
ob_mp_bed_low
ob_mp_bed_med
--]]
function BRAIN.REACTIVATE_NAMED_WORLD_BRAINS_WAITING_TILL_OUT_OF_RANGE(scriptName)
  native.invoke(
    Type.Void, 329, false,
    arg(Type.String, scriptName)
  )
end

-- void REACTIVATE_NAMED_OBJECT_BRAINS_WAITING_TILL_OUT_OF_RANGE(const char* scriptName) // 0x6E91B04E08773030
--[[
Looks like a cousin of above function _6D6840CEE8845831 as it was found among them. Must be similar

Here are possible values of argument - 

"ob_tv"
"launcher_Darts"
--]]
function BRAIN.REACTIVATE_NAMED_OBJECT_BRAINS_WAITING_TILL_OUT_OF_RANGE(scriptName)
  native.invoke(
    Type.Void, 330, false,
    arg(Type.String, scriptName)
  )
end


