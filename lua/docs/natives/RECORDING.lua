RECORDING = {}

-- void REPLAY_START_EVENT(int p0) // 0x48621C9FCA3EBD28
function RECORDING.REPLAY_START_EVENT(p0)
  native.invoke(
    Type.Void, 4753, false,
    arg(Type.Int, p0)
  )
end

-- void REPLAY_STOP_EVENT() // 0x81CBAE94390F9F89
function RECORDING.REPLAY_STOP_EVENT()
  native.invoke(
    Type.Void, 4754, false
  )
end

-- void REPLAY_CANCEL_EVENT() // 0x13B350B8AD0EEE10
function RECORDING.REPLAY_CANCEL_EVENT()
  native.invoke(
    Type.Void, 4755, false
  )
end

-- void REPLAY_RECORD_BACK_FOR_TIME(float p0, float p1, int p2) // 0x293220DA1B46CEBC
function RECORDING.REPLAY_RECORD_BACK_FOR_TIME(p0, p1, p2)
  native.invoke(
    Type.Void, 4756, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Int, p2)
  )
end

-- void REPLAY_CHECK_FOR_EVENT_THIS_FRAME(const char* missionNameLabel, Any p1) // 0x208784099002BC30
--[[
-This function appears to be deprecated/ unused. Tracing the call internally leads to a _nullsub -

first one seems to be a string of a mission name, second one seems to be a bool/toggle

p1 was always 0.

--]]
function RECORDING.REPLAY_CHECK_FOR_EVENT_THIS_FRAME(missionNameLabel, p1)
  native.invoke(
    Type.Void, 4757, false,
    arg(Type.String, missionNameLabel),
    arg(Type.Any, p1)
  )
end

-- void REPLAY_PREVENT_RECORDING_THIS_FRAME() // 0xEB2D525B57F42B40
--[[
This disable the recording feature and has to be called every frame.
--]]
function RECORDING.REPLAY_PREVENT_RECORDING_THIS_FRAME()
  native.invoke(
    Type.Void, 4758, false
  )
end

-- void REPLAY_RESET_EVENT_INFO() // 0xF854439EFBB3B583
function RECORDING.REPLAY_RESET_EVENT_INFO()
  native.invoke(
    Type.Void, 4759, false
  )
end

-- void REPLAY_DISABLE_CAMERA_MOVEMENT_THIS_FRAME() // 0xAF66DCEE6609B148
--[[
This will disable the ability to make camera changes in R* Editor.
--]]
function RECORDING.REPLAY_DISABLE_CAMERA_MOVEMENT_THIS_FRAME()
  native.invoke(
    Type.Void, 4760, false
  )
end

-- void RECORD_GREATEST_MOMENT(int p0, int p1, int p2) // 0x66972397E0757E7A
--[[
Does nothing (it's a nullsub).
--]]
function RECORDING.RECORD_GREATEST_MOMENT(p0, p1, p2)
  native.invoke(
    Type.Void, 4761, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2)
  )
end

-- void START_REPLAY_RECORDING(int mode) // 0xC3AC2FFF9612AC81
--[[
Starts recording a replay.
If mode is 0, turns on action replay.
If mode is 1, starts recording.
If already recording a replay, does nothing.
--]]
function RECORDING.START_REPLAY_RECORDING(mode)
  native.invoke(
    Type.Void, 4762, false,
    arg(Type.Int, mode)
  )
end

-- void STOP_REPLAY_RECORDING() // 0x071A5197D6AFC8B3
--[[
Stops recording and saves the recorded clip.
--]]
function RECORDING.STOP_REPLAY_RECORDING()
  native.invoke(
    Type.Void, 4763, false
  )
end

-- void CANCEL_REPLAY_RECORDING() // 0x88BB3507ED41A240
--[[
Stops recording and discards the recorded clip.
--]]
function RECORDING.CANCEL_REPLAY_RECORDING()
  native.invoke(
    Type.Void, 4764, false
  )
end

-- BOOL SAVE_REPLAY_RECORDING() // 0x644546EC5287471B
function RECORDING.SAVE_REPLAY_RECORDING()
  return native.invoke(
    Type.Bool, 4765, false
  )
end

-- BOOL IS_REPLAY_RECORDING() // 0x1897CA71995A90B4
--[[
Checks if you're recording, returns TRUE when you start recording (F1) or turn on action replay (F2)

mov al, cs:g_bIsRecordingGameplay // byte_141DD0CD0 in b944
retn
--]]
function RECORDING.IS_REPLAY_RECORDING()
  return native.invoke(
    Type.Bool, 4766, false
  )
end

-- BOOL IS_REPLAY_INITIALIZED() // 0xDF4B952F7D381B95
function RECORDING.IS_REPLAY_INITIALIZED()
  return native.invoke(
    Type.Bool, 4767, false
  )
end

-- BOOL IS_REPLAY_AVAILABLE() // 0x4282E08174868BE3
function RECORDING.IS_REPLAY_AVAILABLE()
  return native.invoke(
    Type.Bool, 4768, false
  )
end

-- BOOL IS_REPLAY_RECORD_SPACE_AVAILABLE(BOOL p0) // 0x33D47E85B476ABCD
function RECORDING.IS_REPLAY_RECORD_SPACE_AVAILABLE(p0)
  return native.invoke(
    Type.Bool, 4769, false,
    arg(Type.Bool, p0)
  )
end


