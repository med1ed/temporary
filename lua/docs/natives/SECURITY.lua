SECURITY = {}

-- void REGISTER_SCRIPT_VARIABLE(Any* variable) // 0x40EB1EFD921822BC
--[[
Registers a protected variable that will be checked for modifications by the anticheat
--]]
function SECURITY.REGISTER_SCRIPT_VARIABLE(variable)
  native.invoke(
    Type.Void, 4820, false,
    ref(Type.Any, variable)
  )
end

-- void UNREGISTER_SCRIPT_VARIABLE(Any* variable) // 0x340A36A700E99699
function SECURITY.UNREGISTER_SCRIPT_VARIABLE(variable)
  native.invoke(
    Type.Void, 4821, false,
    ref(Type.Any, variable)
  )
end

-- void FORCE_CHECK_SCRIPT_VARIABLES() // 0x8E580AB902917360
function SECURITY.FORCE_CHECK_SCRIPT_VARIABLES()
  native.invoke(
    Type.Void, 4822, false
  )
end


