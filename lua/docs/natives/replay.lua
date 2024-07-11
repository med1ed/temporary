REPLAY = {}

-- void REGISTER_EFFECT_FOR_REPLAY_EDITOR(const char* p0, BOOL p1) // 0x7E2BD3EF6C205F09
--[[
Does nothing (it's a nullsub).
--]]
function REPLAY.REGISTER_EFFECT_FOR_REPLAY_EDITOR(p0, p1)
  native.invoke(
    Type.Void, 4770, false,
    arg(Type.String, p0),
    arg(Type.Bool, p1)
  )
end

-- BOOL REPLAY_SYSTEM_HAS_REQUESTED_A_SCRIPT_CLEANUP() // 0x95AB8B5C992C7B58
--[[
Returns a bool if interior rendering is disabled, if yes, all "normal" rendered interiors are invisible
--]]
function REPLAY.REPLAY_SYSTEM_HAS_REQUESTED_A_SCRIPT_CLEANUP()
  return native.invoke(
    Type.Bool, 4771, false
  )
end

-- void SET_SCRIPTS_HAVE_CLEANED_UP_FOR_REPLAY_SYSTEM() // 0x5AD3932DAEB1E5D3
--[[
Disables some other rendering (internal)
--]]
function REPLAY.SET_SCRIPTS_HAVE_CLEANED_UP_FOR_REPLAY_SYSTEM()
  native.invoke(
    Type.Void, 4772, false
  )
end

-- void SET_REPLAY_SYSTEM_PAUSED_FOR_SAVE(BOOL p0) // 0xE058175F8EAFE79A
function REPLAY.SET_REPLAY_SYSTEM_PAUSED_FOR_SAVE(p0)
  native.invoke(
    Type.Void, 4773, false,
    arg(Type.Bool, p0)
  )
end

-- void REPLAY_CONTROL_SHUTDOWN() // 0x3353D13F09307691
--[[
Sets (almost, not sure) all Rockstar Editor values (bIsRecording etc) to 0.
--]]
function REPLAY.REPLAY_CONTROL_SHUTDOWN()
  native.invoke(
    Type.Void, 4774, false
  )
end

-- void ACTIVATE_ROCKSTAR_EDITOR(int p0) // 0x49DA8145672B2725
--[[
Please note that you will need to call DO_SCREEN_FADE_IN after exiting the Rockstar Editor when you call this.
--]]
function REPLAY.ACTIVATE_ROCKSTAR_EDITOR(p0)
  native.invoke(
    Type.Void, 4775, false,
    arg(Type.Int, p0)
  )
end


