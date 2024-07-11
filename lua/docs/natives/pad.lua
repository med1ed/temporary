PAD = {}

-- BOOL IS_CONTROL_ENABLED(int control, int action) // 0x1CEA6BFDF248E5D9
--[[
control: 0: PLAYER_CONTROL, 1: CAMERA_CONTROL, 2: FRONTEND_CONTROL
For more info, see https://docs.fivem.net/docs/game-references/controls/
--]]
function PAD.IS_CONTROL_ENABLED(control, action)
  return native.invoke(
    Type.Bool, 3735, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- BOOL IS_CONTROL_PRESSED(int control, int action) // 0xF3A21BCD95725A4A
--[[
Returns whether a control is currently pressed.
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_CONTROL_PRESSED(control, action)
  return native.invoke(
    Type.Bool, 3736, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- BOOL IS_CONTROL_RELEASED(int control, int action) // 0x648EE3E7F38877DD
--[[
Returns whether a control is currently _not_ pressed.
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_CONTROL_RELEASED(control, action)
  return native.invoke(
    Type.Bool, 3737, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- BOOL IS_CONTROL_JUST_PRESSED(int control, int action) // 0x580417101DDB492F
--[[
Returns whether a control was newly pressed since the last check.
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_CONTROL_JUST_PRESSED(control, action)
  return native.invoke(
    Type.Bool, 3738, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- BOOL IS_CONTROL_JUST_RELEASED(int control, int action) // 0x50F940259D3841E6
--[[
Returns whether a control was newly released since the last check.
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_CONTROL_JUST_RELEASED(control, action)
  return native.invoke(
    Type.Bool, 3739, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- int GET_CONTROL_VALUE(int control, int action) // 0xD95E79E8686D2C27
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.GET_CONTROL_VALUE(control, action)
  return native.invoke(
    Type.Int, 3740, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- float GET_CONTROL_NORMAL(int control, int action) // 0xEC3C9B8D5327B563
--[[
Returns the value of GET_CONTROL_VALUE normalized (i.e. a real number value between -1 and 1)

control: see IS_CONTROL_ENABLED
--]]
function PAD.GET_CONTROL_NORMAL(control, action)
  return native.invoke(
    Type.Float, 3741, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- void SET_USE_ADJUSTED_MOUSE_COORDS(BOOL toggle) // 0x5B73C77D9EB66E24
function PAD.SET_USE_ADJUSTED_MOUSE_COORDS(toggle)
  native.invoke(
    Type.Void, 3742, false,
    arg(Type.Bool, toggle)
  )
end

-- float GET_CONTROL_UNBOUND_NORMAL(int control, int action) // 0x5B84D09CEC5209C5
--[[
Seems to return values between -1 and 1 for controls like gas and steering.

control: see IS_CONTROL_ENABLED
--]]
function PAD.GET_CONTROL_UNBOUND_NORMAL(control, action)
  return native.invoke(
    Type.Float, 3743, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- BOOL SET_CONTROL_VALUE_NEXT_FRAME(int control, int action, float value) // 0xE8A25867FBA3B05E
--[[
This is for simulating player input.
value is a float value from 0 - 1

control: see IS_CONTROL_ENABLED
--]]
function PAD.SET_CONTROL_VALUE_NEXT_FRAME(control, action, value)
  return native.invoke(
    Type.Bool, 3744, false,
    arg(Type.Int, control),
    arg(Type.Int, action),
    arg(Type.Float, value)
  )
end

-- BOOL IS_DISABLED_CONTROL_PRESSED(int control, int action) // 0xE2587F8CBBD87B1D
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_DISABLED_CONTROL_PRESSED(control, action)
  return native.invoke(
    Type.Bool, 3745, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- BOOL IS_DISABLED_CONTROL_RELEASED(int control, int action) // 0xFB6C4072E9A32E92
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_DISABLED_CONTROL_RELEASED(control, action)
  return native.invoke(
    Type.Bool, 3746, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- BOOL IS_DISABLED_CONTROL_JUST_PRESSED(int control, int action) // 0x91AEF906BCA88877
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_DISABLED_CONTROL_JUST_PRESSED(control, action)
  return native.invoke(
    Type.Bool, 3747, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- BOOL IS_DISABLED_CONTROL_JUST_RELEASED(int control, int action) // 0x305C8DCD79DA8B0F
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_DISABLED_CONTROL_JUST_RELEASED(control, action)
  return native.invoke(
    Type.Bool, 3748, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- float GET_DISABLED_CONTROL_NORMAL(int control, int action) // 0x11E65974A982637C
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.GET_DISABLED_CONTROL_NORMAL(control, action)
  return native.invoke(
    Type.Float, 3749, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- float GET_DISABLED_CONTROL_UNBOUND_NORMAL(int control, int action) // 0x4F8A26A890FD62FB
--[[
The "disabled" variant of GET_CONTROL_UNBOUND_NORMAL.

control: see IS_CONTROL_ENABLED
--]]
function PAD.GET_DISABLED_CONTROL_UNBOUND_NORMAL(control, action)
  return native.invoke(
    Type.Float, 3750, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- int GET_CONTROL_HOW_LONG_AGO(int control) // 0xD7D22F5592AED8BA
--[[
Returns time in ms since last input.

control: see IS_CONTROL_ENABLED
--]]
function PAD.GET_CONTROL_HOW_LONG_AGO(control)
  return native.invoke(
    Type.Int, 3751, false,
    arg(Type.Int, control)
  )
end

-- BOOL IS_USING_KEYBOARD_AND_MOUSE(int control) // 0xA571D46727E2B718
--[[
control: unused parameter
--]]
function PAD.IS_USING_KEYBOARD_AND_MOUSE(control)
  return native.invoke(
    Type.Bool, 3752, false,
    arg(Type.Int, control)
  )
end

-- BOOL IS_USING_CURSOR(int control) // 0x13337B38DB572509
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.IS_USING_CURSOR(control)
  return native.invoke(
    Type.Bool, 3753, false,
    arg(Type.Int, control)
  )
end

-- BOOL SET_CURSOR_POSITION(float x, float y) // 0xFC695459D4D0E219
function PAD.SET_CURSOR_POSITION(x, y)
  return native.invoke(
    Type.Bool, 3754, false,
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- BOOL IS_USING_REMOTE_PLAY(int control) // 0x23F09EADC01449D6
--[[
control: see IS_CONTROL_ENABLED

Hardcoded to return false.
--]]
function PAD.IS_USING_REMOTE_PLAY(control)
  return native.invoke(
    Type.Bool, 3755, false,
    arg(Type.Int, control)
  )
end

-- BOOL HAVE_CONTROLS_CHANGED(int control) // 0x6CD79468A1E595C6
--[[
control: unused parameter
--]]
function PAD.HAVE_CONTROLS_CHANGED(control)
  return native.invoke(
    Type.Bool, 3756, false,
    arg(Type.Int, control)
  )
end

-- const char* GET_CONTROL_INSTRUCTIONAL_BUTTONS_STRING(int control, int action, BOOL allowXOSwap) // 0x0499D7B09FC9B407
--[[
allowXOSwap appears to always be true.

EG:
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/
GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/

gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378

control: unused parameter
--]]
function PAD.GET_CONTROL_INSTRUCTIONAL_BUTTONS_STRING(control, action, allowXOSwap)
  return native.invoke(
    Type.String, 3757, false,
    arg(Type.Int, control),
    arg(Type.Int, action),
    arg(Type.Bool, allowXOSwap)
  )
end

-- const char* GET_CONTROL_GROUP_INSTRUCTIONAL_BUTTONS_STRING(int control, int controlGroup, BOOL allowXOSwap) // 0x80C2FD58D720C801
--[[
control: unused parameter
--]]
function PAD.GET_CONTROL_GROUP_INSTRUCTIONAL_BUTTONS_STRING(control, controlGroup, allowXOSwap)
  return native.invoke(
    Type.String, 3758, false,
    arg(Type.Int, control),
    arg(Type.Int, controlGroup),
    arg(Type.Bool, allowXOSwap)
  )
end

-- void SET_CONTROL_LIGHT_EFFECT_COLOR(int control, int red, int green, int blue) // 0x8290252FFF36ACB5
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.SET_CONTROL_LIGHT_EFFECT_COLOR(control, red, green, blue)
  native.invoke(
    Type.Void, 3759, false,
    arg(Type.Int, control),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue)
  )
end

-- void CLEAR_CONTROL_LIGHT_EFFECT(int control) // 0xCB0360EFEFB2580D
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.CLEAR_CONTROL_LIGHT_EFFECT(control)
  native.invoke(
    Type.Void, 3760, false,
    arg(Type.Int, control)
  )
end

-- void SET_CONTROL_SHAKE(int control, int duration, int frequency) // 0x48B3886C1358D0D5
--[[
control: see IS_CONTROL_ENABLED
duration in milliseconds 
frequency should range from about 10 (slow vibration) to 255 (very fast)

example:
SET_CONTROL_SHAKE(PLAYER_CONTROL, 100, 200);
--]]
function PAD.SET_CONTROL_SHAKE(control, duration, frequency)
  native.invoke(
    Type.Void, 3761, false,
    arg(Type.Int, control),
    arg(Type.Int, duration),
    arg(Type.Int, frequency)
  )
end

-- void SET_CONTROL_TRIGGER_SHAKE(int control, int leftDuration, int leftFrequency, int rightDuration, int rightFrequency) // 0x14D29BB12D47F68C
--[[
Does nothing (it's a nullsub).
--]]
function PAD.SET_CONTROL_TRIGGER_SHAKE(control, leftDuration, leftFrequency, rightDuration, rightFrequency)
  native.invoke(
    Type.Void, 3762, false,
    arg(Type.Int, control),
    arg(Type.Int, leftDuration),
    arg(Type.Int, leftFrequency),
    arg(Type.Int, rightDuration),
    arg(Type.Int, rightFrequency)
  )
end

-- void STOP_CONTROL_SHAKE(int control) // 0x38C16A305E8CDC8D
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.STOP_CONTROL_SHAKE(control)
  native.invoke(
    Type.Void, 3763, false,
    arg(Type.Int, control)
  )
end

-- void SET_CONTROL_SHAKE_SUPPRESSED_ID(int control, int uniqueId) // 0xF239400E16C23E08
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.SET_CONTROL_SHAKE_SUPPRESSED_ID(control, uniqueId)
  native.invoke(
    Type.Void, 3764, false,
    arg(Type.Int, control),
    arg(Type.Int, uniqueId)
  )
end

-- void CLEAR_CONTROL_SHAKE_SUPPRESSED_ID(int control) // 0xA0CEFCEA390AAB9B
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.CLEAR_CONTROL_SHAKE_SUPPRESSED_ID(control)
  native.invoke(
    Type.Void, 3765, false,
    arg(Type.Int, control)
  )
end

-- BOOL IS_LOOK_INVERTED() // 0x77B612531280010D
function PAD.IS_LOOK_INVERTED()
  return native.invoke(
    Type.Bool, 3766, false
  )
end

-- BOOL IS_MOUSE_LOOK_INVERTED() // 0xE1615EC03B3BB4FD
--[[
Used with IS_LOOK_INVERTED() and negates its affect.

--

Not sure how the person above got that description, but here's an actual example:

if (PAD::IS_USING_KEYBOARD_AND_MOUSE(2)) {
    if (a_5) {
        if (PAD::IS_LOOK_INVERTED()) {
            a_3 *= -1;
        }
        if (PAD::IS_MOUSE_LOOK_INVERTED()) {
            a_3 *= -1;
        }
    }
}
--]]
function PAD.IS_MOUSE_LOOK_INVERTED()
  return native.invoke(
    Type.Bool, 3767, false
  )
end

-- int GET_LOCAL_PLAYER_AIM_STATE() // 0xBB41AFBBBC0A0287
--[[
Hard-coded to return 3 if using KBM, otherwise same behavior as GET_LOCAL_PLAYER_GAMEPAD_AIM_STATE.
--]]
function PAD.GET_LOCAL_PLAYER_AIM_STATE()
  return native.invoke(
    Type.Int, 3768, false
  )
end

-- int GET_LOCAL_PLAYER_GAMEPAD_AIM_STATE() // 0x59B9A7AF4C95133C
--[[
Returns the local player's targeting mode. See PLAYER::SET_PLAYER_TARGETING_MODE.
--]]
function PAD.GET_LOCAL_PLAYER_GAMEPAD_AIM_STATE()
  return native.invoke(
    Type.Int, 3769, false
  )
end

-- BOOL GET_IS_USING_ALTERNATE_HANDBRAKE() // 0x25AAA32BDC98F2A3
function PAD.GET_IS_USING_ALTERNATE_HANDBRAKE()
  return native.invoke(
    Type.Bool, 3770, false
  )
end

-- BOOL GET_IS_USING_ALTERNATE_DRIVEBY() // 0x0F70731BACCFBB96
--[[
Returns profile setting 225.
--]]
function PAD.GET_IS_USING_ALTERNATE_DRIVEBY()
  return native.invoke(
    Type.Bool, 3771, false
  )
end

-- BOOL GET_ALLOW_MOVEMENT_WHILE_ZOOMED() // 0xFC859E2374407556
--[[
Returns profile setting 17.
--]]
function PAD.GET_ALLOW_MOVEMENT_WHILE_ZOOMED()
  return native.invoke(
    Type.Bool, 3772, false
  )
end

-- void SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED(BOOL toggle) // 0x798FDEB5B1575088
function PAD.SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED(toggle)
  native.invoke(
    Type.Void, 3773, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_INPUT_EXCLUSIVE(int control, int action) // 0xEDE476E5EE29EDB1
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.SET_INPUT_EXCLUSIVE(control, action)
  native.invoke(
    Type.Void, 3774, false,
    arg(Type.Int, control),
    arg(Type.Int, action)
  )
end

-- void DISABLE_CONTROL_ACTION(int control, int action, BOOL disableRelatedActions) // 0xFE99B66D079CF6BC
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.DISABLE_CONTROL_ACTION(control, action, disableRelatedActions)
  native.invoke(
    Type.Void, 3775, false,
    arg(Type.Int, control),
    arg(Type.Int, action),
    arg(Type.Bool, disableRelatedActions)
  )
end

-- void ENABLE_CONTROL_ACTION(int control, int action, BOOL enableRelatedActions) // 0x351220255D64C155
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.ENABLE_CONTROL_ACTION(control, action, enableRelatedActions)
  native.invoke(
    Type.Void, 3776, false,
    arg(Type.Int, control),
    arg(Type.Int, action),
    arg(Type.Bool, enableRelatedActions)
  )
end

-- void DISABLE_ALL_CONTROL_ACTIONS(int control) // 0x5F4B6931816E599B
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.DISABLE_ALL_CONTROL_ACTIONS(control)
  native.invoke(
    Type.Void, 3777, false,
    arg(Type.Int, control)
  )
end

-- void ENABLE_ALL_CONTROL_ACTIONS(int control) // 0xA5FFE9B05F199DE7
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.ENABLE_ALL_CONTROL_ACTIONS(control)
  native.invoke(
    Type.Void, 3778, false,
    arg(Type.Int, control)
  )
end

-- BOOL INIT_PC_SCRIPTED_CONTROLS(const char* schemeName) // 0x3D42B92563939375
--[[
Used in carsteal3 script with schemeName = "Carsteal4_spycar".
--]]
function PAD.INIT_PC_SCRIPTED_CONTROLS(schemeName)
  return native.invoke(
    Type.Bool, 3779, false,
    arg(Type.String, schemeName)
  )
end

-- BOOL SWITCH_PC_SCRIPTED_CONTROLS(const char* schemeName) // 0x4683149ED1DDE7A1
--[[
Same as INIT_PC_SCRIPTED_CONTROLS
--]]
function PAD.SWITCH_PC_SCRIPTED_CONTROLS(schemeName)
  return native.invoke(
    Type.Bool, 3780, false,
    arg(Type.String, schemeName)
  )
end

-- void SHUTDOWN_PC_SCRIPTED_CONTROLS() // 0x643ED62D5EA3BEBD
function PAD.SHUTDOWN_PC_SCRIPTED_CONTROLS()
  native.invoke(
    Type.Void, 3781, false
  )
end

-- void ALLOW_ALTERNATIVE_SCRIPT_CONTROLS_LAYOUT(int control) // 0x7F4724035FDCA1DD
--[[
control: see IS_CONTROL_ENABLED
--]]
function PAD.ALLOW_ALTERNATIVE_SCRIPT_CONTROLS_LAYOUT(control)
  native.invoke(
    Type.Void, 3782, false,
    arg(Type.Int, control)
  )
end


