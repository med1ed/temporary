MOBILE = {}

-- void CREATE_MOBILE_PHONE(int phoneType) // 0xA4E8E696C532FBC7
--[[
Creates a mobile phone of the specified type.

Possible phone types:

0 - Default phone / Michael's phone
1 - Trevor's phone
2 - Franklin's phone
3 - Unused police phone
4 - Prologue phone

Higher values may crash your game.
--]]
function MOBILE.CREATE_MOBILE_PHONE(phoneType)
  native.invoke(
    Type.Void, 2306, false,
    arg(Type.Int, phoneType)
  )
end

-- void DESTROY_MOBILE_PHONE() // 0x3BC861DF703E5097
--[[
Destroys the currently active mobile phone.
--]]
function MOBILE.DESTROY_MOBILE_PHONE()
  native.invoke(
    Type.Void, 2307, false
  )
end

-- void SET_MOBILE_PHONE_SCALE(float scale) // 0xCBDD322A73D6D932
--[[
The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.
--]]
function MOBILE.SET_MOBILE_PHONE_SCALE(scale)
  native.invoke(
    Type.Void, 2308, false,
    arg(Type.Float, scale)
  )
end

-- void SET_MOBILE_PHONE_ROTATION(float rotX, float rotY, float rotZ, Any p3) // 0xBB779C0CA917E865
--[[
Last parameter is unknown and always zero.
--]]
function MOBILE.SET_MOBILE_PHONE_ROTATION(rotX, rotY, rotZ, p3)
  native.invoke(
    Type.Void, 2309, false,
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Any, p3)
  )
end

-- void GET_MOBILE_PHONE_ROTATION(Vector3* rotation, Vehicle p1) // 0x1CEFB61F193070AE
function MOBILE.GET_MOBILE_PHONE_ROTATION(rotation, p1)
  native.invoke(
    Type.Void, 2310, true,
    ref(Type.Vector3, rotation),
    arg(Type.Vehicle, p1)
  )
end

-- void SET_MOBILE_PHONE_POSITION(float posX, float posY, float posZ) // 0x693A5C6D6734085B
function MOBILE.SET_MOBILE_PHONE_POSITION(posX, posY, posZ)
  native.invoke(
    Type.Void, 2311, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- void GET_MOBILE_PHONE_POSITION(Vector3* position) // 0x584FDFDA48805B86
function MOBILE.GET_MOBILE_PHONE_POSITION(position)
  native.invoke(
    Type.Void, 2312, true,
    ref(Type.Vector3, position)
  )
end

-- void SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN(BOOL toggle) // 0xF511F759238A5122
--[[
If bool Toggle = true so the mobile is hide to screen.
If bool Toggle = false so the mobile is show to screen.
--]]
function MOBILE.SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN(toggle)
  native.invoke(
    Type.Void, 2313, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL CAN_PHONE_BE_SEEN_ON_SCREEN() // 0xC4E2813898C97A4B
--[[
This one is weird and seems to return a TRUE state regardless of whether the phone is visible on screen or tucked away.


I can confirm the above. This function is hard-coded to always return 1.
--]]
function MOBILE.CAN_PHONE_BE_SEEN_ON_SCREEN()
  return native.invoke(
    Type.Bool, 2314, false
  )
end

-- void SET_MOBILE_PHONE_DOF_STATE(BOOL toggle) // 0x375A706A5C2FD084
function MOBILE.SET_MOBILE_PHONE_DOF_STATE(toggle)
  native.invoke(
    Type.Void, 2315, false,
    arg(Type.Bool, toggle)
  )
end

-- void CELL_SET_INPUT(int direction) // 0x95C9E72F3D7DEC9B
--[[
For move the finger of player, the value of int goes 1 at 5.
--]]
function MOBILE.CELL_SET_INPUT(direction)
  native.invoke(
    Type.Void, 2316, false,
    arg(Type.Int, direction)
  )
end

-- void CELL_HORIZONTAL_MODE_TOGGLE(BOOL toggle) // 0x44E44169EF70138E
--[[
if the bool "Toggle" is "true" so the phone is lean.
if the bool "Toggle" is "false" so the phone is not lean.
--]]
function MOBILE.CELL_HORIZONTAL_MODE_TOGGLE(toggle)
  native.invoke(
    Type.Void, 2317, false,
    arg(Type.Bool, toggle)
  )
end

-- void CELL_CAM_ACTIVATE(BOOL p0, BOOL p1) // 0xFDE8F069C542D126
function MOBILE.CELL_CAM_ACTIVATE(p0, p1)
  native.invoke(
    Type.Void, 2318, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- void CELL_CAM_ACTIVATE_SELFIE_MODE(BOOL toggle) // 0x015C49A93E3E086E
function MOBILE.CELL_CAM_ACTIVATE_SELFIE_MODE(toggle)
  native.invoke(
    Type.Void, 2319, false,
    arg(Type.Bool, toggle)
  )
end

-- void CELL_CAM_ACTIVATE_SHALLOW_DOF_MODE(BOOL toggle) // 0xA2CCBE62CD4C91A4
function MOBILE.CELL_CAM_ACTIVATE_SHALLOW_DOF_MODE(toggle)
  native.invoke(
    Type.Void, 2320, false,
    arg(Type.Bool, toggle)
  )
end

-- void CELL_CAM_SET_SELFIE_MODE_SIDE_OFFSET_SCALING(float p0) // 0x1B0B4AEED5B9B41C
function MOBILE.CELL_CAM_SET_SELFIE_MODE_SIDE_OFFSET_SCALING(p0)
  native.invoke(
    Type.Void, 2321, false,
    arg(Type.Float, p0)
  )
end

-- void CELL_CAM_SET_SELFIE_MODE_HORZ_PAN_OFFSET(float horizontalPan) // 0x53F4892D18EC90A4
function MOBILE.CELL_CAM_SET_SELFIE_MODE_HORZ_PAN_OFFSET(horizontalPan)
  native.invoke(
    Type.Void, 2322, false,
    arg(Type.Float, horizontalPan)
  )
end

-- void CELL_CAM_SET_SELFIE_MODE_VERT_PAN_OFFSET(float vertPan) // 0x3117D84EFA60F77B
function MOBILE.CELL_CAM_SET_SELFIE_MODE_VERT_PAN_OFFSET(vertPan)
  native.invoke(
    Type.Void, 2323, false,
    arg(Type.Float, vertPan)
  )
end

-- void CELL_CAM_SET_SELFIE_MODE_ROLL_OFFSET(float roll) // 0x15E69E2802C24B8D
function MOBILE.CELL_CAM_SET_SELFIE_MODE_ROLL_OFFSET(roll)
  native.invoke(
    Type.Void, 2324, false,
    arg(Type.Float, roll)
  )
end

-- void CELL_CAM_SET_SELFIE_MODE_DISTANCE_SCALING(float distanceScaling) // 0xAC2890471901861C
function MOBILE.CELL_CAM_SET_SELFIE_MODE_DISTANCE_SCALING(distanceScaling)
  native.invoke(
    Type.Void, 2325, false,
    arg(Type.Float, distanceScaling)
  )
end

-- void CELL_CAM_SET_SELFIE_MODE_HEAD_YAW_OFFSET(float yaw) // 0xD6ADE981781FCA09
function MOBILE.CELL_CAM_SET_SELFIE_MODE_HEAD_YAW_OFFSET(yaw)
  native.invoke(
    Type.Void, 2326, false,
    arg(Type.Float, yaw)
  )
end

-- void CELL_CAM_SET_SELFIE_MODE_HEAD_ROLL_OFFSET(float roll) // 0xF1E22DC13F5EEBAD
function MOBILE.CELL_CAM_SET_SELFIE_MODE_HEAD_ROLL_OFFSET(roll)
  native.invoke(
    Type.Void, 2327, false,
    arg(Type.Float, roll)
  )
end

-- void CELL_CAM_SET_SELFIE_MODE_HEAD_PITCH_OFFSET(float pitch) // 0x466DA42C89865553
function MOBILE.CELL_CAM_SET_SELFIE_MODE_HEAD_PITCH_OFFSET(pitch)
  native.invoke(
    Type.Void, 2328, false,
    arg(Type.Float, pitch)
  )
end

-- BOOL CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK(Entity entity) // 0x439E9BC95B7E7FBE
function MOBILE.CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK(entity)
  return native.invoke(
    Type.Bool, 2329, false,
    arg(Type.Entity, entity)
  )
end

-- void GET_MOBILE_PHONE_RENDER_ID(int* renderId) // 0xB4A53E05F68B6FA1
function MOBILE.GET_MOBILE_PHONE_RENDER_ID(renderId)
  native.invoke(
    Type.Void, 2330, false,
    ref(Type.Int, renderId)
  )
end


