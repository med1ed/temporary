CAM = {}

-- void RENDER_SCRIPT_CAMS(BOOL render, BOOL ease, int easeTime, BOOL p3, BOOL p4, Any p5) // 0x07E5B515DB0636FC
--[[
ease - smooth transition between the camera's positions
easeTime - Time in milliseconds for the transition to happen

If you have created a script (rendering) camera, and want to go back to the 
character (gameplay) camera, call this native with render set to 0.
Setting ease to 1 will smooth the transition.
--]]
function CAM.RENDER_SCRIPT_CAMS(render, ease, easeTime, p3, p4, p5)
  native.invoke(
    Type.Void, 331, false,
    arg(Type.Bool, render),
    arg(Type.Bool, ease),
    arg(Type.Int, easeTime),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4),
    arg(Type.Any, p5)
  )
end

-- void STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP(BOOL render, float p1, int p2, Any p3) // 0xC819F3CBB62BF692
--[[
This native makes the gameplay camera zoom into first person/third person with a special effect.
--]]
function CAM.STOP_RENDERING_SCRIPT_CAMS_USING_CATCH_UP(render, p1, p2, p3)
  native.invoke(
    Type.Void, 332, false,
    arg(Type.Bool, render),
    arg(Type.Float, p1),
    arg(Type.Int, p2),
    arg(Type.Any, p3)
  )
end

-- Cam CREATE_CAM(const char* camName, BOOL p1) // 0xC3981DCE61D9E13F
--[[
"DEFAULT_SCRIPTED_CAMERA"
"DEFAULT_ANIMATED_CAMERA"
"DEFAULT_SPLINE_CAMERA"
"DEFAULT_SCRIPTED_FLY_CAMERA"
"TIMED_SPLINE_CAMERA"
--]]
function CAM.CREATE_CAM(camName, p1)
  return native.invoke(
    Type.Cam, 333, false,
    arg(Type.String, camName),
    arg(Type.Bool, p1)
  )
end

-- Cam CREATE_CAM_WITH_PARAMS(const char* camName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL p8, int p9) // 0xB51194800B257161
--[[
camName is always set to "DEFAULT_SCRIPTED_CAMERA" in Rockstar's scripts.
------------
Camera names found in the b617d scripts:
"DEFAULT_ANIMATED_CAMERA"
"DEFAULT_SCRIPTED_CAMERA"
"DEFAULT_SCRIPTED_FLY_CAMERA"
"DEFAULT_SPLINE_CAMERA"
------------
Side Note: It seems p8 is basically to represent what would be the bool p1 within CREATE_CAM native. As well as the p9 since it's always 2 in scripts seems to represent what would be the last param within SET_CAM_ROT native which normally would be 2.
--]]
function CAM.CREATE_CAM_WITH_PARAMS(camName, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9)
  return native.invoke(
    Type.Cam, 334, false,
    arg(Type.String, camName),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, fov),
    arg(Type.Bool, p8),
    arg(Type.Int, p9)
  )
end

-- Cam CREATE_CAMERA(Hash camHash, BOOL p1) // 0x5E3CF89C6BCCA67D
function CAM.CREATE_CAMERA(camHash, p1)
  return native.invoke(
    Type.Cam, 335, false,
    arg(Type.Hash, camHash),
    arg(Type.Bool, p1)
  )
end

-- Cam CREATE_CAMERA_WITH_PARAMS(Hash camHash, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL p8, Any p9) // 0x6ABFA3E16460F22D
--[[
p9 uses 2 by default
--]]
function CAM.CREATE_CAMERA_WITH_PARAMS(camHash, posX, posY, posZ, rotX, rotY, rotZ, fov, p8, p9)
  return native.invoke(
    Type.Cam, 336, false,
    arg(Type.Hash, camHash),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, fov),
    arg(Type.Bool, p8),
    arg(Type.Any, p9)
  )
end

-- void DESTROY_CAM(Cam cam, BOOL bScriptHostCam) // 0x865908C81A2C22E9
--[[
BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.
--]]
function CAM.DESTROY_CAM(cam, bScriptHostCam)
  native.invoke(
    Type.Void, 337, false,
    arg(Type.Cam, cam),
    arg(Type.Bool, bScriptHostCam)
  )
end

-- void DESTROY_ALL_CAMS(BOOL bScriptHostCam) // 0x8E5FB15663F79120
--[[
BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.
--]]
function CAM.DESTROY_ALL_CAMS(bScriptHostCam)
  native.invoke(
    Type.Void, 338, false,
    arg(Type.Bool, bScriptHostCam)
  )
end

-- BOOL DOES_CAM_EXIST(Cam cam) // 0xA7A932170592B50E
--[[
Returns whether or not the passed camera handle exists.
--]]
function CAM.DOES_CAM_EXIST(cam)
  return native.invoke(
    Type.Bool, 339, false,
    arg(Type.Cam, cam)
  )
end

-- void SET_CAM_ACTIVE(Cam cam, BOOL active) // 0x026FB97D0A425F84
--[[
Set camera as active/inactive.
--]]
function CAM.SET_CAM_ACTIVE(cam, active)
  native.invoke(
    Type.Void, 340, false,
    arg(Type.Cam, cam),
    arg(Type.Bool, active)
  )
end

-- BOOL IS_CAM_ACTIVE(Cam cam) // 0xDFB2B516207D3534
--[[
Returns whether or not the passed camera handle is active.
--]]
function CAM.IS_CAM_ACTIVE(cam)
  return native.invoke(
    Type.Bool, 341, false,
    arg(Type.Cam, cam)
  )
end

-- BOOL IS_CAM_RENDERING(Cam cam) // 0x02EC0AF5C5A49B7A
function CAM.IS_CAM_RENDERING(cam)
  return native.invoke(
    Type.Bool, 342, false,
    arg(Type.Cam, cam)
  )
end

-- Cam GET_RENDERING_CAM() // 0x5234F9F10919EABA
function CAM.GET_RENDERING_CAM()
  return native.invoke(
    Type.Cam, 343, false
  )
end

-- Vector3 GET_CAM_COORD(Cam cam) // 0xBAC038F7459AE5AE
function CAM.GET_CAM_COORD(cam)
  return native.invoke(
    Type.Vector3, 344, false,
    arg(Type.Cam, cam)
  )
end

-- Vector3 GET_CAM_ROT(Cam cam, int rotationOrder) // 0x7D304C1C955E3E12
--[[
The last parameter, as in other "ROT" methods, is usually 2.
--]]
function CAM.GET_CAM_ROT(cam, rotationOrder)
  return native.invoke(
    Type.Vector3, 345, false,
    arg(Type.Cam, cam),
    arg(Type.Int, rotationOrder)
  )
end

-- float GET_CAM_FOV(Cam cam) // 0xC3330A45CCCDB26A
function CAM.GET_CAM_FOV(cam)
  return native.invoke(
    Type.Float, 346, false,
    arg(Type.Cam, cam)
  )
end

-- float GET_CAM_NEAR_CLIP(Cam cam) // 0xC520A34DAFBF24B1
function CAM.GET_CAM_NEAR_CLIP(cam)
  return native.invoke(
    Type.Float, 347, false,
    arg(Type.Cam, cam)
  )
end

-- float GET_CAM_FAR_CLIP(Cam cam) // 0xB60A9CFEB21CA6AA
function CAM.GET_CAM_FAR_CLIP(cam)
  return native.invoke(
    Type.Float, 348, false,
    arg(Type.Cam, cam)
  )
end

-- float GET_CAM_NEAR_DOF(Cam cam) // 0xC2612D223D915A1C
function CAM.GET_CAM_NEAR_DOF(cam)
  return native.invoke(
    Type.Float, 349, false,
    arg(Type.Cam, cam)
  )
end

-- float GET_CAM_FAR_DOF(Cam cam) // 0x255F8DAFD540D397
function CAM.GET_CAM_FAR_DOF(cam)
  return native.invoke(
    Type.Float, 350, false,
    arg(Type.Cam, cam)
  )
end

-- float GET_CAM_DOF_STRENGTH(Cam cam) // 0x06D153C0B99B6128
function CAM.GET_CAM_DOF_STRENGTH(cam)
  return native.invoke(
    Type.Float, 351, false,
    arg(Type.Cam, cam)
  )
end

-- void SET_CAM_PARAMS(Cam cam, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fieldOfView, Any p8, int p9, int p10, int p11) // 0xBFD8727AEA3CCEBA
function CAM.SET_CAM_PARAMS(cam, posX, posY, posZ, rotX, rotY, rotZ, fieldOfView, p8, p9, p10, p11)
  native.invoke(
    Type.Void, 352, false,
    arg(Type.Cam, cam),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, fieldOfView),
    arg(Type.Any, p8),
    arg(Type.Int, p9),
    arg(Type.Int, p10),
    arg(Type.Int, p11)
  )
end

-- void SET_CAM_COORD(Cam cam, float posX, float posY, float posZ) // 0x4D41783FB745E42E
--[[
Sets the position of the cam.
--]]
function CAM.SET_CAM_COORD(cam, posX, posY, posZ)
  native.invoke(
    Type.Void, 353, false,
    arg(Type.Cam, cam),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- void SET_CAM_ROT(Cam cam, float rotX, float rotY, float rotZ, int rotationOrder) // 0x85973643155D0B07
--[[
Sets the rotation of the cam.
Last parameter unknown.

Last parameter seems to always be set to 2.
--]]
function CAM.SET_CAM_ROT(cam, rotX, rotY, rotZ, rotationOrder)
  native.invoke(
    Type.Void, 354, false,
    arg(Type.Cam, cam),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Int, rotationOrder)
  )
end

-- void SET_CAM_FOV(Cam cam, float fieldOfView) // 0xB13C14F66A00D047
--[[
Sets the field of view of the cam.
---------------------------------------------
Min: 1.0f
Max: 130.0f
--]]
function CAM.SET_CAM_FOV(cam, fieldOfView)
  native.invoke(
    Type.Void, 355, false,
    arg(Type.Cam, cam),
    arg(Type.Float, fieldOfView)
  )
end

-- void SET_CAM_NEAR_CLIP(Cam cam, float nearClip) // 0xC7848EFCCC545182
function CAM.SET_CAM_NEAR_CLIP(cam, nearClip)
  native.invoke(
    Type.Void, 356, false,
    arg(Type.Cam, cam),
    arg(Type.Float, nearClip)
  )
end

-- void SET_CAM_FAR_CLIP(Cam cam, float farClip) // 0xAE306F2A904BF86E
function CAM.SET_CAM_FAR_CLIP(cam, farClip)
  native.invoke(
    Type.Void, 357, false,
    arg(Type.Cam, cam),
    arg(Type.Float, farClip)
  )
end

-- void FORCE_CAM_FAR_CLIP(Cam cam, float p1) // 0xAABD62873FFB1A33
function CAM.FORCE_CAM_FAR_CLIP(cam, p1)
  native.invoke(
    Type.Void, 358, false,
    arg(Type.Cam, cam),
    arg(Type.Float, p1)
  )
end

-- void SET_CAM_MOTION_BLUR_STRENGTH(Cam cam, float strength) // 0x6F0F77FBA9A8F2E6
function CAM.SET_CAM_MOTION_BLUR_STRENGTH(cam, strength)
  native.invoke(
    Type.Void, 359, false,
    arg(Type.Cam, cam),
    arg(Type.Float, strength)
  )
end

-- void SET_CAM_NEAR_DOF(Cam cam, float nearDOF) // 0x3FA4BF0A7AB7DE2C
function CAM.SET_CAM_NEAR_DOF(cam, nearDOF)
  native.invoke(
    Type.Void, 360, false,
    arg(Type.Cam, cam),
    arg(Type.Float, nearDOF)
  )
end

-- void SET_CAM_FAR_DOF(Cam cam, float farDOF) // 0xEDD91296CD01AEE0
function CAM.SET_CAM_FAR_DOF(cam, farDOF)
  native.invoke(
    Type.Void, 361, false,
    arg(Type.Cam, cam),
    arg(Type.Float, farDOF)
  )
end

-- void SET_CAM_DOF_STRENGTH(Cam cam, float dofStrength) // 0x5EE29B4D7D5DF897
function CAM.SET_CAM_DOF_STRENGTH(cam, dofStrength)
  native.invoke(
    Type.Void, 362, false,
    arg(Type.Cam, cam),
    arg(Type.Float, dofStrength)
  )
end

-- void SET_CAM_DOF_PLANES(Cam cam, float p1, float p2, float p3, float p4) // 0x3CF48F6F96E749DC
function CAM.SET_CAM_DOF_PLANES(cam, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 363, false,
    arg(Type.Cam, cam),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4)
  )
end

-- void SET_CAM_USE_SHALLOW_DOF_MODE(Cam cam, BOOL toggle) // 0x16A96863A17552BB
function CAM.SET_CAM_USE_SHALLOW_DOF_MODE(cam, toggle)
  native.invoke(
    Type.Void, 364, false,
    arg(Type.Cam, cam),
    arg(Type.Bool, toggle)
  )
end

-- void SET_USE_HI_DOF() // 0xA13B0222F3D94A94
function CAM.SET_USE_HI_DOF()
  native.invoke(
    Type.Void, 365, false
  )
end

-- void SET_USE_HI_DOF_ON_SYNCED_SCENE_THIS_UPDATE() // 0x731A880555DA3647
--[[
Only used in R* Script fm_mission_controller_2020
--]]
function CAM.SET_USE_HI_DOF_ON_SYNCED_SCENE_THIS_UPDATE()
  native.invoke(
    Type.Void, 366, false
  )
end

-- void SET_CAM_DOF_OVERRIDDEN_FOCUS_DISTANCE(Cam camera, float p1) // 0xF55E4046F6F831DC
function CAM.SET_CAM_DOF_OVERRIDDEN_FOCUS_DISTANCE(camera, p1)
  native.invoke(
    Type.Void, 367, false,
    arg(Type.Cam, camera),
    arg(Type.Float, p1)
  )
end

-- void SET_CAM_DOF_OVERRIDDEN_FOCUS_DISTANCE_BLEND_LEVEL(Any p0, float p1) // 0xE111A7C0D200CBC5
function CAM.SET_CAM_DOF_OVERRIDDEN_FOCUS_DISTANCE_BLEND_LEVEL(p0, p1)
  native.invoke(
    Type.Void, 368, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1)
  )
end

-- void SET_CAM_DOF_FNUMBER_OF_LENS(Cam camera, float p1) // 0x7DD234D6F3914C5B
--[[
This native has its name defined inside its codE

--]]
function CAM.SET_CAM_DOF_FNUMBER_OF_LENS(camera, p1)
  native.invoke(
    Type.Void, 369, false,
    arg(Type.Cam, camera),
    arg(Type.Float, p1)
  )
end

-- void SET_CAM_DOF_FOCAL_LENGTH_MULTIPLIER(Cam camera, float multiplier) // 0x47B595D60664CFFA
--[[
Native name labeled within its code
--]]
function CAM.SET_CAM_DOF_FOCAL_LENGTH_MULTIPLIER(camera, multiplier)
  native.invoke(
    Type.Void, 370, false,
    arg(Type.Cam, camera),
    arg(Type.Float, multiplier)
  )
end

-- void SET_CAM_DOF_FOCUS_DISTANCE_BIAS(Cam camera, float p1) // 0xC669EEA5D031B7DE
--[[
This native has a name defined inside its code
--]]
function CAM.SET_CAM_DOF_FOCUS_DISTANCE_BIAS(camera, p1)
  native.invoke(
    Type.Void, 371, false,
    arg(Type.Cam, camera),
    arg(Type.Float, p1)
  )
end

-- void SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE(Cam camera, float p1) // 0xC3654A441402562D
--[[
This native has a name defined inside its code
--]]
function CAM.SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE(camera, p1)
  native.invoke(
    Type.Void, 372, false,
    arg(Type.Cam, camera),
    arg(Type.Float, p1)
  )
end

-- void SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE_BLEND_LEVEL(Cam camera, float p1) // 0x2C654B4943BDDF7C
--[[
This native has a name defined inside its code
--]]
function CAM.SET_CAM_DOF_MAX_NEAR_IN_FOCUS_DISTANCE_BLEND_LEVEL(camera, p1)
  native.invoke(
    Type.Void, 373, false,
    arg(Type.Cam, camera),
    arg(Type.Float, p1)
  )
end

-- void SET_CAM_DOF_SHOULD_KEEP_LOOK_AT_TARGET_IN_FOCUS(Cam camera, BOOL state) // 0x7CF3AF51DCFE4108
--[[
This native has a name defined inside its code
--]]
function CAM.SET_CAM_DOF_SHOULD_KEEP_LOOK_AT_TARGET_IN_FOCUS(camera, state)
  native.invoke(
    Type.Void, 374, false,
    arg(Type.Cam, camera),
    arg(Type.Bool, state)
  )
end

-- void ATTACH_CAM_TO_ENTITY(Cam cam, Entity entity, float xOffset, float yOffset, float zOffset, BOOL isRelative) // 0xFEDB7D269E8C60E3
--[[
Last param determines if its relative to the Entity
--]]
function CAM.ATTACH_CAM_TO_ENTITY(cam, entity, xOffset, yOffset, zOffset, isRelative)
  native.invoke(
    Type.Void, 375, false,
    arg(Type.Cam, cam),
    arg(Type.Entity, entity),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Bool, isRelative)
  )
end

-- void ATTACH_CAM_TO_PED_BONE(Cam cam, Ped ped, int boneIndex, float x, float y, float z, BOOL heading) // 0x61A3DBA14AB7F411
function CAM.ATTACH_CAM_TO_PED_BONE(cam, ped, boneIndex, x, y, z, heading)
  native.invoke(
    Type.Void, 376, false,
    arg(Type.Cam, cam),
    arg(Type.Ped, ped),
    arg(Type.Int, boneIndex),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, heading)
  )
end

-- void HARD_ATTACH_CAM_TO_PED_BONE(Cam cam, Ped ped, int boneIndex, float p3, float p4, float p5, float p6, float p7, float p8, BOOL p9) // 0x149916F50C34A40D
function CAM.HARD_ATTACH_CAM_TO_PED_BONE(cam, ped, boneIndex, p3, p4, p5, p6, p7, p8, p9)
  native.invoke(
    Type.Void, 377, false,
    arg(Type.Cam, cam),
    arg(Type.Ped, ped),
    arg(Type.Int, boneIndex),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Bool, p9)
  )
end

-- void HARD_ATTACH_CAM_TO_ENTITY(Cam cam, Entity entity, float xRot, float yRot, float zRot, float xOffset, float yOffset, float zOffset, BOOL isRelative) // 0x202A5ED9CE01D6E7
--[[
Example from am_mp_drone script: 

CAM::HARD_ATTACH_CAM_TO_ENTITY(Local_190.f_169, NETWORK::NET_TO_OBJ(Local_190.f_159), 0f, 0f, 180f, Var0, 1);
--]]
function CAM.HARD_ATTACH_CAM_TO_ENTITY(cam, entity, xRot, yRot, zRot, xOffset, yOffset, zOffset, isRelative)
  native.invoke(
    Type.Void, 378, false,
    arg(Type.Cam, cam),
    arg(Type.Entity, entity),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Bool, isRelative)
  )
end

-- void ATTACH_CAM_TO_VEHICLE_BONE(Cam cam, Vehicle vehicle, int boneIndex, BOOL relativeRotation, float rotX, float rotY, float rotZ, float offsetX, float offsetY, float offsetZ, BOOL fixedDirection) // 0x8DB3F12A02CAEF72
--[[
This native works with vehicles only. Bone indexes are usually given by this native GET_ENTITY_BONE_INDEX_BY_NAME.
--]]
function CAM.ATTACH_CAM_TO_VEHICLE_BONE(cam, vehicle, boneIndex, relativeRotation, rotX, rotY, rotZ, offsetX, offsetY, offsetZ, fixedDirection)
  native.invoke(
    Type.Void, 379, false,
    arg(Type.Cam, cam),
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, boneIndex),
    arg(Type.Bool, relativeRotation),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Bool, fixedDirection)
  )
end

-- void DETACH_CAM(Cam cam) // 0xA2FABBE87F4BAD82
function CAM.DETACH_CAM(cam)
  native.invoke(
    Type.Void, 380, false,
    arg(Type.Cam, cam)
  )
end

-- void SET_CAM_INHERIT_ROLL_VEHICLE(Cam cam, BOOL p1) // 0x45F1DE9C34B93AE6
--[[
The native seems to only be called once.

The native is used as so,
CAM::SET_CAM_INHERIT_ROLL_VEHICLE(l_544, getElem(2, &l_525, 4));
In the exile1 script.
--]]
function CAM.SET_CAM_INHERIT_ROLL_VEHICLE(cam, p1)
  native.invoke(
    Type.Void, 381, false,
    arg(Type.Cam, cam),
    arg(Type.Bool, p1)
  )
end

-- void POINT_CAM_AT_COORD(Cam cam, float x, float y, float z) // 0xF75497BB865F0803
function CAM.POINT_CAM_AT_COORD(cam, x, y, z)
  native.invoke(
    Type.Void, 382, false,
    arg(Type.Cam, cam),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void POINT_CAM_AT_ENTITY(Cam cam, Entity entity, float p2, float p3, float p4, BOOL p5) // 0x5640BFF86B16E8DC
--[[
p5 always seems to be 1 i.e TRUE
--]]
function CAM.POINT_CAM_AT_ENTITY(cam, entity, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 383, false,
    arg(Type.Cam, cam),
    arg(Type.Entity, entity),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Bool, p5)
  )
end

-- void POINT_CAM_AT_PED_BONE(Cam cam, Ped ped, int boneIndex, float x, float y, float z, BOOL p6) // 0x68B2B5F33BA63C41
--[[
Parameters p0-p5 seems correct. The bool p6 is unknown, but through every X360 script it's always 1. Please correct p0-p5 if any prove to be wrong. 
--]]
function CAM.POINT_CAM_AT_PED_BONE(cam, ped, boneIndex, x, y, z, p6)
  native.invoke(
    Type.Void, 384, false,
    arg(Type.Cam, cam),
    arg(Type.Ped, ped),
    arg(Type.Int, boneIndex),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p6)
  )
end

-- void STOP_CAM_POINTING(Cam cam) // 0xF33AB75780BA57DE
function CAM.STOP_CAM_POINTING(cam)
  native.invoke(
    Type.Void, 385, false,
    arg(Type.Cam, cam)
  )
end

-- void SET_CAM_AFFECTS_AIMING(Cam cam, BOOL toggle) // 0x8C1DC7770C51DC8D
--[[
Allows you to aim and shoot at the direction the camera is facing.
--]]
function CAM.SET_CAM_AFFECTS_AIMING(cam, toggle)
  native.invoke(
    Type.Void, 386, false,
    arg(Type.Cam, cam),
    arg(Type.Bool, toggle)
  )
end

-- void SET_CAM_CONTROLS_MINI_MAP_HEADING(Cam cam, BOOL toggle) // 0x661B5C8654ADD825
--[[
Rotates the radar to match the camera's Z rotation
--]]
function CAM.SET_CAM_CONTROLS_MINI_MAP_HEADING(cam, toggle)
  native.invoke(
    Type.Void, 387, false,
    arg(Type.Cam, cam),
    arg(Type.Bool, toggle)
  )
end

-- void SET_CAM_IS_INSIDE_VEHICLE(Cam cam, BOOL toggle) // 0xA2767257A320FC82
--[[
When set to true shadows appear more smooth but less detailed.
Set to false by default.
--]]
function CAM.SET_CAM_IS_INSIDE_VEHICLE(cam, toggle)
  native.invoke(
    Type.Void, 388, false,
    arg(Type.Cam, cam),
    arg(Type.Bool, toggle)
  )
end

-- void ALLOW_MOTION_BLUR_DECAY(Any p0, BOOL p1) // 0x271017B9BA825366
function CAM.ALLOW_MOTION_BLUR_DECAY(p0, p1)
  native.invoke(
    Type.Void, 389, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_CAM_DEBUG_NAME(Cam camera, const char* name) // 0x1B93E0107865DD40
--[[
NOTE: Debugging functions are not present in the retail version of the game.
--]]
function CAM.SET_CAM_DEBUG_NAME(camera, name)
  native.invoke(
    Type.Void, 390, false,
    arg(Type.Cam, camera),
    arg(Type.String, name)
  )
end

-- Cam GET_DEBUG_CAM() // 0x77C3CEC46BE286F6
function CAM.GET_DEBUG_CAM()
  return native.invoke(
    Type.Cam, 391, false
  )
end

-- void ADD_CAM_SPLINE_NODE(Cam camera, float x, float y, float z, float xRot, float yRot, float zRot, int length, int smoothingStyle, int rotationOrder) // 0x8609C75EC438FB3B
--[[
I filled p1-p6 (the floats) as they are as other natives with 6 floats in a row are similar and I see no other method. So if a test from anyone proves them wrong please correct.

p7 (length) determines the length of the spline, affects camera path and duration of transition between previous node and this one

p8 big values ~100 will slow down the camera movement before reaching this node

p9 != 0 seems to override the rotation/pitch (bool?)
--]]
function CAM.ADD_CAM_SPLINE_NODE(camera, x, y, z, xRot, yRot, zRot, length, smoothingStyle, rotationOrder)
  native.invoke(
    Type.Void, 392, false,
    arg(Type.Cam, camera),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Int, length),
    arg(Type.Int, smoothingStyle),
    arg(Type.Int, rotationOrder)
  )
end

-- void ADD_CAM_SPLINE_NODE_USING_CAMERA_FRAME(Cam cam, Cam cam2, int length, int p3) // 0x0A9F2A468B328E74
--[[
p0 is the spline camera to which the node is being added.
p1 is the camera used to create the node.
p3 is always 3 in scripts. It might be smoothing style or rotation order.
--]]
function CAM.ADD_CAM_SPLINE_NODE_USING_CAMERA_FRAME(cam, cam2, length, p3)
  native.invoke(
    Type.Void, 393, false,
    arg(Type.Cam, cam),
    arg(Type.Cam, cam2),
    arg(Type.Int, length),
    arg(Type.Int, p3)
  )
end

-- void ADD_CAM_SPLINE_NODE_USING_CAMERA(Cam cam, Cam cam2, int length, int p3) // 0x0FB82563989CF4FB
--[[
p0 is the spline camera to which the node is being added.
p1 is the camera used to create the node.
p3 is always 3 in scripts. It might be smoothing style or rotation order.
--]]
function CAM.ADD_CAM_SPLINE_NODE_USING_CAMERA(cam, cam2, length, p3)
  native.invoke(
    Type.Void, 394, false,
    arg(Type.Cam, cam),
    arg(Type.Cam, cam2),
    arg(Type.Int, length),
    arg(Type.Int, p3)
  )
end

-- void ADD_CAM_SPLINE_NODE_USING_GAMEPLAY_FRAME(Cam cam, int length, int p2) // 0x609278246A29CA34
--[[
p2 is always 2 in scripts. It might be smoothing style or rotation order.
--]]
function CAM.ADD_CAM_SPLINE_NODE_USING_GAMEPLAY_FRAME(cam, length, p2)
  native.invoke(
    Type.Void, 395, false,
    arg(Type.Cam, cam),
    arg(Type.Int, length),
    arg(Type.Int, p2)
  )
end

-- void SET_CAM_SPLINE_PHASE(Cam cam, float p1) // 0x242B5874F0A4E052
function CAM.SET_CAM_SPLINE_PHASE(cam, p1)
  native.invoke(
    Type.Void, 396, false,
    arg(Type.Cam, cam),
    arg(Type.Float, p1)
  )
end

-- float GET_CAM_SPLINE_PHASE(Cam cam) // 0xB5349E36C546509A
--[[
Can use this with SET_CAM_SPLINE_PHASE to set the float it this native returns.

(returns 1.0f when no nodes has been added, reached end of non existing spline)
--]]
function CAM.GET_CAM_SPLINE_PHASE(cam)
  return native.invoke(
    Type.Float, 397, false,
    arg(Type.Cam, cam)
  )
end

-- float GET_CAM_SPLINE_NODE_PHASE(Cam cam) // 0xD9D0E694C8282C96
--[[
I'm pretty sure the parameter is the camera as usual, but I am not certain so I'm going to leave it as is.
--]]
function CAM.GET_CAM_SPLINE_NODE_PHASE(cam)
  return native.invoke(
    Type.Float, 398, false,
    arg(Type.Cam, cam)
  )
end

-- void SET_CAM_SPLINE_DURATION(Cam cam, int timeDuration) // 0x1381539FEE034CDA
--[[
I named p1 as timeDuration as it is obvious. I'm assuming tho it is ran in ms(Milliseconds) as usual.
--]]
function CAM.SET_CAM_SPLINE_DURATION(cam, timeDuration)
  native.invoke(
    Type.Void, 399, false,
    arg(Type.Cam, cam),
    arg(Type.Int, timeDuration)
  )
end

-- void SET_CAM_SPLINE_SMOOTHING_STYLE(Cam cam, int smoothingStyle) // 0xD1B0F412F109EA5D
function CAM.SET_CAM_SPLINE_SMOOTHING_STYLE(cam, smoothingStyle)
  native.invoke(
    Type.Void, 400, false,
    arg(Type.Cam, cam),
    arg(Type.Int, smoothingStyle)
  )
end

-- int GET_CAM_SPLINE_NODE_INDEX(Cam cam) // 0xB22B17DF858716A6
function CAM.GET_CAM_SPLINE_NODE_INDEX(cam)
  return native.invoke(
    Type.Int, 401, false,
    arg(Type.Cam, cam)
  )
end

-- void SET_CAM_SPLINE_NODE_EASE(Cam cam, int easingFunction, int p2, float p3) // 0x83B8201ED82A9A2D
function CAM.SET_CAM_SPLINE_NODE_EASE(cam, easingFunction, p2, p3)
  native.invoke(
    Type.Void, 402, false,
    arg(Type.Cam, cam),
    arg(Type.Int, easingFunction),
    arg(Type.Int, p2),
    arg(Type.Float, p3)
  )
end

-- void SET_CAM_SPLINE_NODE_VELOCITY_SCALE(Cam cam, int p1, float scale) // 0xA6385DEB180F319F
function CAM.SET_CAM_SPLINE_NODE_VELOCITY_SCALE(cam, p1, scale)
  native.invoke(
    Type.Void, 403, false,
    arg(Type.Cam, cam),
    arg(Type.Int, p1),
    arg(Type.Float, scale)
  )
end

-- void OVERRIDE_CAM_SPLINE_VELOCITY(Cam cam, int p1, float p2, float p3) // 0x40B62FA033EB0346
function CAM.OVERRIDE_CAM_SPLINE_VELOCITY(cam, p1, p2, p3)
  native.invoke(
    Type.Void, 404, false,
    arg(Type.Cam, cam),
    arg(Type.Int, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void OVERRIDE_CAM_SPLINE_MOTION_BLUR(Cam cam, int p1, float p2, float p3) // 0x7DCF7C708D292D55
--[[
Max value for p1 is 15.
--]]
function CAM.OVERRIDE_CAM_SPLINE_MOTION_BLUR(cam, p1, p2, p3)
  native.invoke(
    Type.Void, 405, false,
    arg(Type.Cam, cam),
    arg(Type.Int, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void SET_CAM_SPLINE_NODE_EXTRA_FLAGS(Cam cam, int p1, int flags) // 0x7BF1A54AE67AC070
function CAM.SET_CAM_SPLINE_NODE_EXTRA_FLAGS(cam, p1, flags)
  native.invoke(
    Type.Void, 406, false,
    arg(Type.Cam, cam),
    arg(Type.Int, p1),
    arg(Type.Int, flags)
  )
end

-- BOOL IS_CAM_SPLINE_PAUSED(Cam cam) // 0x0290F35C0AD97864
function CAM.IS_CAM_SPLINE_PAUSED(cam)
  return native.invoke(
    Type.Bool, 407, false,
    arg(Type.Cam, cam)
  )
end

-- void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, int easeLocation, int easeRotation) // 0x9FBDA379383A52A4
--[[
Previous declaration void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, BOOL easeLocation, BOOL easeRotation) is completely wrong. The last two params are integers not BOOLs...

--]]
function CAM.SET_CAM_ACTIVE_WITH_INTERP(camTo, camFrom, duration, easeLocation, easeRotation)
  native.invoke(
    Type.Void, 408, false,
    arg(Type.Cam, camTo),
    arg(Type.Cam, camFrom),
    arg(Type.Int, duration),
    arg(Type.Int, easeLocation),
    arg(Type.Int, easeRotation)
  )
end

-- BOOL IS_CAM_INTERPOLATING(Cam cam) // 0x036F97C908C2B52C
function CAM.IS_CAM_INTERPOLATING(cam)
  return native.invoke(
    Type.Bool, 409, false,
    arg(Type.Cam, cam)
  )
end

-- void SHAKE_CAM(Cam cam, const char* type, float amplitude) // 0x6A25241C340D3822
--[[
Possible shake types (updated b617d):

DEATH_FAIL_IN_EFFECT_SHAKE
DRUNK_SHAKE
FAMILY5_DRUG_TRIP_SHAKE
HAND_SHAKE
JOLT_SHAKE
LARGE_EXPLOSION_SHAKE
MEDIUM_EXPLOSION_SHAKE
SMALL_EXPLOSION_SHAKE
ROAD_VIBRATION_SHAKE
SKY_DIVING_SHAKE
VIBRATE_SHAKE

Full list of cam shake types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/camShakeTypesCompact.json
--]]
function CAM.SHAKE_CAM(cam, type, amplitude)
  native.invoke(
    Type.Void, 410, false,
    arg(Type.Cam, cam),
    arg(Type.String, type),
    arg(Type.Float, amplitude)
  )
end

-- void ANIMATED_SHAKE_CAM(Cam cam, const char* p1, const char* p2, const char* p3, float amplitude) // 0xA2746EEAE3E577CD
--[[
Example from michael2 script.

CAM::ANIMATED_SHAKE_CAM(l_5069, "shake_cam_all@", "light", "", 1f);
--]]
function CAM.ANIMATED_SHAKE_CAM(cam, p1, p2, p3, amplitude)
  native.invoke(
    Type.Void, 411, false,
    arg(Type.Cam, cam),
    arg(Type.String, p1),
    arg(Type.String, p2),
    arg(Type.String, p3),
    arg(Type.Float, amplitude)
  )
end

-- BOOL IS_CAM_SHAKING(Cam cam) // 0x6B24BFE83A2BE47B
function CAM.IS_CAM_SHAKING(cam)
  return native.invoke(
    Type.Bool, 412, false,
    arg(Type.Cam, cam)
  )
end

-- void SET_CAM_SHAKE_AMPLITUDE(Cam cam, float amplitude) // 0xD93DB43B82BC0D00
function CAM.SET_CAM_SHAKE_AMPLITUDE(cam, amplitude)
  native.invoke(
    Type.Void, 413, false,
    arg(Type.Cam, cam),
    arg(Type.Float, amplitude)
  )
end

-- void STOP_CAM_SHAKING(Cam cam, BOOL p1) // 0xBDECF64367884AC3
function CAM.STOP_CAM_SHAKING(cam, p1)
  native.invoke(
    Type.Void, 414, false,
    arg(Type.Cam, cam),
    arg(Type.Bool, p1)
  )
end

-- void SHAKE_SCRIPT_GLOBAL(const char* p0, float p1) // 0xF4C8CF9E353AFECA
--[[
CAM::SHAKE_SCRIPT_GLOBAL("HAND_SHAKE", 0.2);

Full list of cam shake types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/camShakeTypesCompact.json
--]]
function CAM.SHAKE_SCRIPT_GLOBAL(p0, p1)
  native.invoke(
    Type.Void, 415, false,
    arg(Type.String, p0),
    arg(Type.Float, p1)
  )
end

-- void ANIMATED_SHAKE_SCRIPT_GLOBAL(const char* p0, const char* p1, const char* p2, float p3) // 0xC2EAE3FB8CDBED31
--[[
CAM::ANIMATED_SHAKE_SCRIPT_GLOBAL("SHAKE_CAM_medium", "medium", "", 0.5f);

Full list of cam shake types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/camShakeTypesCompact.json
--]]
function CAM.ANIMATED_SHAKE_SCRIPT_GLOBAL(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 416, false,
    arg(Type.String, p0),
    arg(Type.String, p1),
    arg(Type.String, p2),
    arg(Type.Float, p3)
  )
end

-- BOOL IS_SCRIPT_GLOBAL_SHAKING() // 0xC912AF078AF19212
--[[
In drunk_controller.c4, sub_309
if (CAM::IS_SCRIPT_GLOBAL_SHAKING()) {
    CAM::STOP_SCRIPT_GLOBAL_SHAKING(0);
}
--]]
function CAM.IS_SCRIPT_GLOBAL_SHAKING()
  return native.invoke(
    Type.Bool, 417, false
  )
end

-- void STOP_SCRIPT_GLOBAL_SHAKING(BOOL p0) // 0x1C9D7949FA533490
--[[
In drunk_controller.c4, sub_309
if (CAM::IS_SCRIPT_GLOBAL_SHAKING()) {
    CAM::STOP_SCRIPT_GLOBAL_SHAKING(0);
}
--]]
function CAM.STOP_SCRIPT_GLOBAL_SHAKING(p0)
  native.invoke(
    Type.Void, 418, false,
    arg(Type.Bool, p0)
  )
end

-- void TRIGGER_VEHICLE_PART_BROKEN_CAMERA_SHAKE(Vehicle vehicle, int p1, float p2) // 0x5D96CFB59DA076A0
--[[
p1: 0..16
--]]
function CAM.TRIGGER_VEHICLE_PART_BROKEN_CAMERA_SHAKE(vehicle, p1, p2)
  native.invoke(
    Type.Void, 419, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, p1),
    arg(Type.Float, p2)
  )
end

-- BOOL PLAY_CAM_ANIM(Cam cam, const char* animName, const char* animDictionary, float x, float y, float z, float xRot, float yRot, float zRot, BOOL p9, int p10) // 0x9A2D0FB2E7852392
--[[
Atleast one time in a script for the zRot Rockstar uses GET_ENTITY_HEADING to help fill the parameter.

p9 is unknown at this time.
p10 throughout all the X360 Scripts is always 2.

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function CAM.PLAY_CAM_ANIM(cam, animName, animDictionary, x, y, z, xRot, yRot, zRot, p9, p10)
  return native.invoke(
    Type.Bool, 420, false,
    arg(Type.Cam, cam),
    arg(Type.String, animName),
    arg(Type.String, animDictionary),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Bool, p9),
    arg(Type.Int, p10)
  )
end

-- BOOL IS_CAM_PLAYING_ANIM(Cam cam, const char* animName, const char* animDictionary) // 0xC90621D8A0CEECF2
function CAM.IS_CAM_PLAYING_ANIM(cam, animName, animDictionary)
  return native.invoke(
    Type.Bool, 421, false,
    arg(Type.Cam, cam),
    arg(Type.String, animName),
    arg(Type.String, animDictionary)
  )
end

-- void SET_CAM_ANIM_CURRENT_PHASE(Cam cam, float phase) // 0x4145A4C44FF3B5A6
function CAM.SET_CAM_ANIM_CURRENT_PHASE(cam, phase)
  native.invoke(
    Type.Void, 422, false,
    arg(Type.Cam, cam),
    arg(Type.Float, phase)
  )
end

-- float GET_CAM_ANIM_CURRENT_PHASE(Cam cam) // 0xA10B2DB49E92A6B0
function CAM.GET_CAM_ANIM_CURRENT_PHASE(cam)
  return native.invoke(
    Type.Float, 423, false,
    arg(Type.Cam, cam)
  )
end

-- BOOL PLAY_SYNCHRONIZED_CAM_ANIM(Any p0, Any p1, const char* animName, const char* animDictionary) // 0xE32EFE9AB4A9AA0C
--[[
Examples:

CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_2734, NETWORK::NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID(l_2739), "PLAYER_EXIT_L_CAM", "mp_doorbell");

CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_F0D[7/*1*/], l_F4D[15/*1*/], "ah3b_attackheli_cam2", "missheistfbi3b_helicrash");
--]]
function CAM.PLAY_SYNCHRONIZED_CAM_ANIM(p0, p1, animName, animDictionary)
  return native.invoke(
    Type.Bool, 424, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.String, animName),
    arg(Type.String, animDictionary)
  )
end

-- void SET_FLY_CAM_HORIZONTAL_RESPONSE(Cam cam, float p1, float p2, float p3) // 0x503F5920162365B2
function CAM.SET_FLY_CAM_HORIZONTAL_RESPONSE(cam, p1, p2, p3)
  native.invoke(
    Type.Void, 425, false,
    arg(Type.Cam, cam),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void SET_FLY_CAM_VERTICAL_RESPONSE(Cam cam, float p1, float p2, float p3) // 0xE827B9382CFB41BA
function CAM.SET_FLY_CAM_VERTICAL_RESPONSE(cam, p1, p2, p3)
  native.invoke(
    Type.Void, 426, false,
    arg(Type.Cam, cam),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void SET_FLY_CAM_MAX_HEIGHT(Cam cam, float height) // 0xF9D02130ECDD1D77
function CAM.SET_FLY_CAM_MAX_HEIGHT(cam, height)
  native.invoke(
    Type.Void, 427, false,
    arg(Type.Cam, cam),
    arg(Type.Float, height)
  )
end

-- void SET_FLY_CAM_COORD_AND_CONSTRAIN(Cam cam, float x, float y, float z) // 0xC91C6C55199308CA
function CAM.SET_FLY_CAM_COORD_AND_CONSTRAIN(cam, x, y, z)
  native.invoke(
    Type.Void, 428, false,
    arg(Type.Cam, cam),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_FLY_CAM_VERTICAL_CONTROLS_THIS_UPDATE(Cam cam) // 0xC8B5C4A79CC18B94
function CAM.SET_FLY_CAM_VERTICAL_CONTROLS_THIS_UPDATE(cam)
  native.invoke(
    Type.Void, 429, false,
    arg(Type.Cam, cam)
  )
end

-- BOOL WAS_FLY_CAM_CONSTRAINED_ON_PREVIOUS_UDPATE(Cam cam) // 0x5C48A1D6E3B33179
function CAM.WAS_FLY_CAM_CONSTRAINED_ON_PREVIOUS_UDPATE(cam)
  return native.invoke(
    Type.Bool, 430, false,
    arg(Type.Cam, cam)
  )
end

-- BOOL IS_SCREEN_FADED_OUT() // 0xB16FCE9DDC7BA182
function CAM.IS_SCREEN_FADED_OUT()
  return native.invoke(
    Type.Bool, 431, false
  )
end

-- BOOL IS_SCREEN_FADED_IN() // 0x5A859503B0C08678
function CAM.IS_SCREEN_FADED_IN()
  return native.invoke(
    Type.Bool, 432, false
  )
end

-- BOOL IS_SCREEN_FADING_OUT() // 0x797AC7CB535BA28F
function CAM.IS_SCREEN_FADING_OUT()
  return native.invoke(
    Type.Bool, 433, false
  )
end

-- BOOL IS_SCREEN_FADING_IN() // 0x5C544BC6C57AC575
function CAM.IS_SCREEN_FADING_IN()
  return native.invoke(
    Type.Bool, 434, false
  )
end

-- void DO_SCREEN_FADE_IN(int duration) // 0xD4E8E24955024033
--[[
Fades the screen in.

duration: The time the fade should take, in milliseconds.
--]]
function CAM.DO_SCREEN_FADE_IN(duration)
  native.invoke(
    Type.Void, 435, false,
    arg(Type.Int, duration)
  )
end

-- void DO_SCREEN_FADE_OUT(int duration) // 0x891B5B39AC6302AF
--[[
Fades the screen out.

duration: The time the fade should take, in milliseconds.
--]]
function CAM.DO_SCREEN_FADE_OUT(duration)
  native.invoke(
    Type.Void, 436, false,
    arg(Type.Int, duration)
  )
end

-- void SET_WIDESCREEN_BORDERS(BOOL p0, int p1) // 0xDCD4EA924F42D01A
function CAM.SET_WIDESCREEN_BORDERS(p0, p1)
  native.invoke(
    Type.Void, 437, false,
    arg(Type.Bool, p0),
    arg(Type.Int, p1)
  )
end

-- BOOL ARE_WIDESCREEN_BORDERS_ACTIVE() // 0x4879E4FE39074CDF
function CAM.ARE_WIDESCREEN_BORDERS_ACTIVE()
  return native.invoke(
    Type.Bool, 438, false
  )
end

-- Vector3 GET_GAMEPLAY_CAM_COORD() // 0x14D6F5678D8F1B37
function CAM.GET_GAMEPLAY_CAM_COORD()
  return native.invoke(
    Type.Vector3, 439, false
  )
end

-- Vector3 GET_GAMEPLAY_CAM_ROT(int rotationOrder) // 0x837765A25378F0BB
--[[
p0 dosen't seem to change much, I tried it with 0, 1, 2:
0-Pitch(X): -70.000092
0-Roll(Y): -0.000001
0-Yaw(Z): -43.886459
1-Pitch(X): -70.000092
1-Roll(Y): -0.000001
1-Yaw(Z): -43.886463
2-Pitch(X): -70.000092
2-Roll(Y): -0.000002
2-Yaw(Z): -43.886467
--]]
function CAM.GET_GAMEPLAY_CAM_ROT(rotationOrder)
  return native.invoke(
    Type.Vector3, 440, false,
    arg(Type.Int, rotationOrder)
  )
end

-- float GET_GAMEPLAY_CAM_FOV() // 0x65019750A0324133
function CAM.GET_GAMEPLAY_CAM_FOV()
  return native.invoke(
    Type.Float, 441, false
  )
end

-- void SET_GAMEPLAY_CAM_MOTION_BLUR_SCALING_THIS_UPDATE(float p0) // 0x487A82C650EB7799
--[[
some camera effect that is used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled.
--]]
function CAM.SET_GAMEPLAY_CAM_MOTION_BLUR_SCALING_THIS_UPDATE(p0)
  native.invoke(
    Type.Void, 442, false,
    arg(Type.Float, p0)
  )
end

-- void SET_GAMEPLAY_CAM_MAX_MOTION_BLUR_STRENGTH_THIS_UPDATE(float p0) // 0x0225778816FDC28C
--[[
some camera effect that is (also) used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled.
--]]
function CAM.SET_GAMEPLAY_CAM_MAX_MOTION_BLUR_STRENGTH_THIS_UPDATE(p0)
  native.invoke(
    Type.Void, 443, false,
    arg(Type.Float, p0)
  )
end

-- float GET_GAMEPLAY_CAM_RELATIVE_HEADING() // 0x743607648ADD4587
function CAM.GET_GAMEPLAY_CAM_RELATIVE_HEADING()
  return native.invoke(
    Type.Float, 444, false
  )
end

-- void SET_GAMEPLAY_CAM_RELATIVE_HEADING(float heading) // 0xB4EC2312F4E5B1F1
--[[
Sets the camera position relative to heading in float from -360 to +360.

Heading is alwyas 0 in aiming camera.
--]]
function CAM.SET_GAMEPLAY_CAM_RELATIVE_HEADING(heading)
  native.invoke(
    Type.Void, 445, false,
    arg(Type.Float, heading)
  )
end

-- float GET_GAMEPLAY_CAM_RELATIVE_PITCH() // 0x3A6867B4845BEDA2
function CAM.GET_GAMEPLAY_CAM_RELATIVE_PITCH()
  return native.invoke(
    Type.Float, 446, false
  )
end

-- void SET_GAMEPLAY_CAM_RELATIVE_PITCH(float angle, float scalingFactor) // 0x6D0858B8EDFD2B7D
--[[
This native sets the camera's pitch (rotation on the x-axis).
--]]
function CAM.SET_GAMEPLAY_CAM_RELATIVE_PITCH(angle, scalingFactor)
  native.invoke(
    Type.Void, 447, false,
    arg(Type.Float, angle),
    arg(Type.Float, scalingFactor)
  )
end

-- void RESET_GAMEPLAY_CAM_FULL_ATTACH_PARENT_TRANSFORM_TIMER() // 0x7295C203DD659DFE
function CAM.RESET_GAMEPLAY_CAM_FULL_ATTACH_PARENT_TRANSFORM_TIMER()
  native.invoke(
    Type.Void, 448, false
  )
end

-- void FORCE_CAMERA_RELATIVE_HEADING_AND_PITCH(float roll, float pitch, float yaw) // 0x48608C3464F58AB4
function CAM.FORCE_CAMERA_RELATIVE_HEADING_AND_PITCH(roll, pitch, yaw)
  native.invoke(
    Type.Void, 449, false,
    arg(Type.Float, roll),
    arg(Type.Float, pitch),
    arg(Type.Float, yaw)
  )
end

-- void FORCE_BONNET_CAMERA_RELATIVE_HEADING_AND_PITCH(float p0, float p1) // 0x28B022A17B068A3A
function CAM.FORCE_BONNET_CAMERA_RELATIVE_HEADING_AND_PITCH(p0, p1)
  native.invoke(
    Type.Void, 450, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- void SET_FIRST_PERSON_SHOOTER_CAMERA_HEADING(float yaw) // 0x103991D4A307D472
--[[
Does nothing
--]]
function CAM.SET_FIRST_PERSON_SHOOTER_CAMERA_HEADING(yaw)
  native.invoke(
    Type.Void, 451, false,
    arg(Type.Float, yaw)
  )
end

-- void SET_FIRST_PERSON_SHOOTER_CAMERA_PITCH(float pitch) // 0x759E13EBC1C15C5A
function CAM.SET_FIRST_PERSON_SHOOTER_CAMERA_PITCH(pitch)
  native.invoke(
    Type.Void, 452, false,
    arg(Type.Float, pitch)
  )
end

-- void SET_SCRIPTED_CAMERA_IS_FIRST_PERSON_THIS_FRAME(BOOL p0) // 0x469F2ECDEC046337
function CAM.SET_SCRIPTED_CAMERA_IS_FIRST_PERSON_THIS_FRAME(p0)
  native.invoke(
    Type.Void, 453, false,
    arg(Type.Bool, p0)
  )
end

-- void SHAKE_GAMEPLAY_CAM(const char* shakeName, float intensity) // 0xFD55E49555E017CF
--[[
Possible shake types (updated b617d):

DEATH_FAIL_IN_EFFECT_SHAKE
DRUNK_SHAKE
FAMILY5_DRUG_TRIP_SHAKE
HAND_SHAKE
JOLT_SHAKE
LARGE_EXPLOSION_SHAKE
MEDIUM_EXPLOSION_SHAKE
SMALL_EXPLOSION_SHAKE
ROAD_VIBRATION_SHAKE
SKY_DIVING_SHAKE
VIBRATE_SHAKE

Full list of cam shake types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/camShakeTypesCompact.json
--]]
function CAM.SHAKE_GAMEPLAY_CAM(shakeName, intensity)
  native.invoke(
    Type.Void, 454, false,
    arg(Type.String, shakeName),
    arg(Type.Float, intensity)
  )
end

-- BOOL IS_GAMEPLAY_CAM_SHAKING() // 0x016C090630DF1F89
function CAM.IS_GAMEPLAY_CAM_SHAKING()
  return native.invoke(
    Type.Bool, 455, false
  )
end

-- void SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE(float amplitude) // 0xA87E00932DB4D85D
--[[
Sets the amplitude for the gameplay (i.e. 3rd or 1st) camera to shake. Used in script "drunk_controller.ysc.c4" to simulate making the player drunk.
--]]
function CAM.SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE(amplitude)
  native.invoke(
    Type.Void, 456, false,
    arg(Type.Float, amplitude)
  )
end

-- void STOP_GAMEPLAY_CAM_SHAKING(BOOL p0) // 0x0EF93E9F3D08C178
function CAM.STOP_GAMEPLAY_CAM_SHAKING(p0)
  native.invoke(
    Type.Void, 457, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_GAMEPLAY_CAM_FOLLOW_PED_THIS_UPDATE(Ped ped) // 0x8BBACBF51DA047A8
--[[
Forces gameplay cam to specified ped as if you were the ped or spectating it
--]]
function CAM.SET_GAMEPLAY_CAM_FOLLOW_PED_THIS_UPDATE(ped)
  native.invoke(
    Type.Void, 458, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_GAMEPLAY_CAM_RENDERING() // 0x39B5D1B10383F0C8
--[[
Examples when this function will return 0 are:
- During busted screen.
- When player is coming out from a hospital.
- When player is coming out from a police station.
- When player is buying gun from AmmuNation.
--]]
function CAM.IS_GAMEPLAY_CAM_RENDERING()
  return native.invoke(
    Type.Bool, 459, false
  )
end

-- BOOL IS_INTERPOLATING_FROM_SCRIPT_CAMS() // 0x3044240D2E0FA842
function CAM.IS_INTERPOLATING_FROM_SCRIPT_CAMS()
  return native.invoke(
    Type.Bool, 460, false
  )
end

-- BOOL IS_INTERPOLATING_TO_SCRIPT_CAMS() // 0x705A276EBFF3133D
function CAM.IS_INTERPOLATING_TO_SCRIPT_CAMS()
  return native.invoke(
    Type.Bool, 461, false
  )
end

-- void SET_GAMEPLAY_CAM_ALTITUDE_FOV_SCALING_STATE(BOOL p0) // 0xDB90C6CCA48940F1
function CAM.SET_GAMEPLAY_CAM_ALTITUDE_FOV_SCALING_STATE(p0)
  native.invoke(
    Type.Void, 462, false,
    arg(Type.Bool, p0)
  )
end

-- void DISABLE_GAMEPLAY_CAM_ALTITUDE_FOV_SCALING_THIS_UPDATE() // 0xEA7F0AD7E9BA676F
--[[
Shows the crosshair even if it wouldn't show normally. Only works for one frame, so make sure to call it repeatedly.
--]]
function CAM.DISABLE_GAMEPLAY_CAM_ALTITUDE_FOV_SCALING_THIS_UPDATE()
  native.invoke(
    Type.Void, 463, false
  )
end

-- BOOL IS_GAMEPLAY_CAM_LOOKING_BEHIND() // 0x70FDA869F3317EA9
function CAM.IS_GAMEPLAY_CAM_LOOKING_BEHIND()
  return native.invoke(
    Type.Bool, 464, false
  )
end

-- void SET_GAMEPLAY_CAM_IGNORE_ENTITY_COLLISION_THIS_UPDATE(Entity entity) // 0x2AED6301F67007D5
function CAM.SET_GAMEPLAY_CAM_IGNORE_ENTITY_COLLISION_THIS_UPDATE(entity)
  native.invoke(
    Type.Void, 465, false,
    arg(Type.Entity, entity)
  )
end

-- void DISABLE_CAM_COLLISION_FOR_OBJECT(Entity entity) // 0x49482F9FCD825AAA
function CAM.DISABLE_CAM_COLLISION_FOR_OBJECT(entity)
  native.invoke(
    Type.Void, 466, false,
    arg(Type.Entity, entity)
  )
end

-- void BYPASS_CAMERA_COLLISION_BUOYANCY_TEST_THIS_UPDATE() // 0xA7092AFE81944852
function CAM.BYPASS_CAMERA_COLLISION_BUOYANCY_TEST_THIS_UPDATE()
  native.invoke(
    Type.Void, 467, false
  )
end

-- void SET_GAMEPLAY_CAM_ENTITY_TO_LIMIT_FOCUS_OVER_BOUNDING_SPHERE_THIS_UPDATE(Entity entity) // 0xFD3151CD37EA2245
function CAM.SET_GAMEPLAY_CAM_ENTITY_TO_LIMIT_FOCUS_OVER_BOUNDING_SPHERE_THIS_UPDATE(entity)
  native.invoke(
    Type.Void, 468, false,
    arg(Type.Entity, entity)
  )
end

-- void DISABLE_FIRST_PERSON_CAMERA_WATER_CLIPPING_TEST_THIS_UPDATE() // 0xB1381B97F70C7B30
--[[
Sets some flag on cinematic camera
--]]
function CAM.DISABLE_FIRST_PERSON_CAMERA_WATER_CLIPPING_TEST_THIS_UPDATE()
  native.invoke(
    Type.Void, 469, false
  )
end

-- void SET_FOLLOW_CAM_IGNORE_ATTACH_PARENT_MOVEMENT_THIS_UPDATE() // 0xDD79DF9F4D26E1C9
function CAM.SET_FOLLOW_CAM_IGNORE_ATTACH_PARENT_MOVEMENT_THIS_UPDATE()
  native.invoke(
    Type.Void, 470, false
  )
end

-- BOOL IS_SPHERE_VISIBLE(float x, float y, float z, float radius) // 0xE33D59DA70B58FDF
function CAM.IS_SPHERE_VISIBLE(x, y, z, radius)
  return native.invoke(
    Type.Bool, 471, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- BOOL IS_FOLLOW_PED_CAM_ACTIVE() // 0xC6D3D26810C8E0F9
function CAM.IS_FOLLOW_PED_CAM_ACTIVE()
  return native.invoke(
    Type.Bool, 472, false
  )
end

-- BOOL SET_FOLLOW_PED_CAM_THIS_UPDATE(const char* camName, int p1) // 0x44A113DD6FFC48D1
--[[
From the scripts:

CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA", 0);
CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_ON_EXILE1_LADDER_CAMERA", 1500);
CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_SKY_DIVING_CAMERA", 0);
CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_SKY_DIVING_CAMERA", 3000);
CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_SKY_DIVING_FAMILY5_CAMERA", 0);
CAM::SET_FOLLOW_PED_CAM_THIS_UPDATE("FOLLOW_PED_SKY_DIVING_CAMERA", 0);
--]]
function CAM.SET_FOLLOW_PED_CAM_THIS_UPDATE(camName, p1)
  return native.invoke(
    Type.Bool, 473, false,
    arg(Type.String, camName),
    arg(Type.Int, p1)
  )
end

-- void USE_SCRIPT_CAM_FOR_AMBIENT_POPULATION_ORIGIN_THIS_FRAME(BOOL p0, BOOL p1) // 0x271401846BD26E92
function CAM.USE_SCRIPT_CAM_FOR_AMBIENT_POPULATION_ORIGIN_THIS_FRAME(p0, p1)
  native.invoke(
    Type.Void, 474, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_FOLLOW_PED_CAM_LADDER_ALIGN_THIS_UPDATE() // 0xC8391C309684595A
function CAM.SET_FOLLOW_PED_CAM_LADDER_ALIGN_THIS_UPDATE()
  native.invoke(
    Type.Void, 475, false
  )
end

-- void SET_THIRD_PERSON_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE(float minimum, float maximum) // 0x8F993D26E0CA5E8E
--[[
minimum: Degrees between -180f and 180f.
maximum: Degrees between -180f and 180f.

Clamps the gameplay camera's current yaw.

Eg. SET_THIRD_PERSON_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE(0.0f, 0.0f) will set the horizontal angle directly behind the player.
--]]
function CAM.SET_THIRD_PERSON_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE(minimum, maximum)
  native.invoke(
    Type.Void, 476, false,
    arg(Type.Float, minimum),
    arg(Type.Float, maximum)
  )
end

-- void SET_THIRD_PERSON_CAM_RELATIVE_PITCH_LIMITS_THIS_UPDATE(float minimum, float maximum) // 0xA516C198B7DCA1E1
--[[
minimum: Degrees between -90f and 90f.
maximum: Degrees between -90f and 90f.

Clamps the gameplay camera's current pitch.

Eg. SET_THIRD_PERSON_CAM_RELATIVE_PITCH_LIMITS_THIS_UPDATE(0.0f, 0.0f) will set the vertical angle directly behind the player.
--]]
function CAM.SET_THIRD_PERSON_CAM_RELATIVE_PITCH_LIMITS_THIS_UPDATE(minimum, maximum)
  native.invoke(
    Type.Void, 477, false,
    arg(Type.Float, minimum),
    arg(Type.Float, maximum)
  )
end

-- void SET_THIRD_PERSON_CAM_ORBIT_DISTANCE_LIMITS_THIS_UPDATE(float p0, float distance) // 0xDF2E1F7742402E81
--[[
Seems to animate the gameplay camera zoom.

Eg. SET_THIRD_PERSON_CAM_ORBIT_DISTANCE_LIMITS_THIS_UPDATE(1f, 1000f);
will animate the camera zooming in from 1000 meters away.

Game scripts use it like this:

// Setting this to 1 prevents V key from changing zoom
PLAYER::SET_PLAYER_FORCED_ZOOM(PLAYER::PLAYER_ID(), 1);

// These restrict how far you can move cam up/down left/right
CAM::SET_THIRD_PERSON_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE(-20f, 50f);
CAM::SET_THIRD_PERSON_CAM_RELATIVE_PITCH_LIMITS_THIS_UPDATE(-60f, 0f);

CAM::SET_THIRD_PERSON_CAM_ORBIT_DISTANCE_LIMITS_THIS_UPDATE(1f, 1f);
--]]
function CAM.SET_THIRD_PERSON_CAM_ORBIT_DISTANCE_LIMITS_THIS_UPDATE(p0, distance)
  native.invoke(
    Type.Void, 478, false,
    arg(Type.Float, p0),
    arg(Type.Float, distance)
  )
end

-- float _GET_THIRD_PERSON_CAM_MIN_ORBIT_DISTANCE_SPRING() // 0xBC456FB703431785
function CAM._GET_THIRD_PERSON_CAM_MIN_ORBIT_DISTANCE_SPRING()
  return native.invoke(
    Type.Float, 479, false
  )
end

-- float _GET_THIRD_PERSON_CAM_MAX_ORBIT_DISTANCE_SPRING() // 0xD4592A16D36673ED
function CAM._GET_THIRD_PERSON_CAM_MAX_ORBIT_DISTANCE_SPRING()
  return native.invoke(
    Type.Float, 480, false
  )
end

-- void SET_IN_VEHICLE_CAM_STATE_THIS_UPDATE(Vehicle p0, int p1) // 0xE9EA16D6E54CDCA4
--[[
Forces gameplay cam to specified vehicle as if you were in it
--]]
function CAM.SET_IN_VEHICLE_CAM_STATE_THIS_UPDATE(p0, p1)
  native.invoke(
    Type.Void, 481, false,
    arg(Type.Vehicle, p0),
    arg(Type.Int, p1)
  )
end

-- void DISABLE_ON_FOOT_FIRST_PERSON_VIEW_THIS_UPDATE() // 0xDE2EF5DA284CC8DF
--[[
Disables first person camera for the current frame.

Found in decompiled scripts:
GRAPHICS::DRAW_DEBUG_TEXT_2D("Disabling First Person Cam", 0.5, 0.8, 0.0, 0, 0, 255, 255);
CAM::DISABLE_ON_FOOT_FIRST_PERSON_VIEW_THIS_UPDATE();
--]]
function CAM.DISABLE_ON_FOOT_FIRST_PERSON_VIEW_THIS_UPDATE()
  native.invoke(
    Type.Void, 482, false
  )
end

-- void DISABLE_FIRST_PERSON_FLASH_EFFECT_THIS_UPDATE() // 0x59424BD75174C9B1
function CAM.DISABLE_FIRST_PERSON_FLASH_EFFECT_THIS_UPDATE()
  native.invoke(
    Type.Void, 483, false
  )
end

-- void BLOCK_FIRST_PERSON_ORIENTATION_RESET_THIS_UPDATE() // 0x9F97DA93681F87EA
function CAM.BLOCK_FIRST_PERSON_ORIENTATION_RESET_THIS_UPDATE()
  native.invoke(
    Type.Void, 484, false
  )
end

-- int GET_FOLLOW_PED_CAM_ZOOM_LEVEL() // 0x33E6C8EFD0CD93E9
function CAM.GET_FOLLOW_PED_CAM_ZOOM_LEVEL()
  return native.invoke(
    Type.Int, 485, false
  )
end

-- int GET_FOLLOW_PED_CAM_VIEW_MODE() // 0x8D4D46230B2C353A
--[[
See viewmode enum in CAM.GET_FOLLOW_VEHICLE_CAM_VIEW_MODE for return value
--]]
function CAM.GET_FOLLOW_PED_CAM_VIEW_MODE()
  return native.invoke(
    Type.Int, 486, false
  )
end

-- void SET_FOLLOW_PED_CAM_VIEW_MODE(int viewMode) // 0x5A4F9EDF1673F704
--[[
Sets the type of Player camera:

0 - Third Person Close
1 - Third Person Mid
2 - Third Person Far
4 - First Person
--]]
function CAM.SET_FOLLOW_PED_CAM_VIEW_MODE(viewMode)
  native.invoke(
    Type.Void, 487, false,
    arg(Type.Int, viewMode)
  )
end

-- BOOL IS_FOLLOW_VEHICLE_CAM_ACTIVE() // 0xCBBDE6D335D6D496
function CAM.IS_FOLLOW_VEHICLE_CAM_ACTIVE()
  return native.invoke(
    Type.Bool, 488, false
  )
end

-- void SET_FOLLOW_VEHICLE_CAM_HIGH_ANGLE_MODE_THIS_UPDATE(BOOL p0) // 0x91EF6EE6419E5B97
function CAM.SET_FOLLOW_VEHICLE_CAM_HIGH_ANGLE_MODE_THIS_UPDATE(p0)
  native.invoke(
    Type.Void, 489, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_FOLLOW_VEHICLE_CAM_HIGH_ANGLE_MODE_EVERY_UPDATE(BOOL p0, BOOL p1) // 0x9DFE13ECDC1EC196
function CAM.SET_FOLLOW_VEHICLE_CAM_HIGH_ANGLE_MODE_EVERY_UPDATE(p0, p1)
  native.invoke(
    Type.Void, 490, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- BOOL SET_TABLE_GAMES_CAMERA_THIS_UPDATE(Hash hash) // 0x79C0E43EB9B944E2
function CAM.SET_TABLE_GAMES_CAMERA_THIS_UPDATE(hash)
  return native.invoke(
    Type.Bool, 491, false,
    arg(Type.Hash, hash)
  )
end

-- int GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL() // 0xEE82280AB767B690
function CAM.GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL()
  return native.invoke(
    Type.Int, 492, false
  )
end

-- void SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL(int zoomLevel) // 0x19464CB6E4078C8A
function CAM.SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL(zoomLevel)
  native.invoke(
    Type.Void, 493, false,
    arg(Type.Int, zoomLevel)
  )
end

-- int GET_FOLLOW_VEHICLE_CAM_VIEW_MODE() // 0xA4FF579AC0E3AAAE
--[[
Returns the type of camera:

enum _viewmode //0xA11D7CA8
{
	THIRD_PERSON_NEAR = 0,
	THIRD_PERSON_MEDIUM = 1,
	THIRD_PERSON_FAR = 2,
	CINEMATIC = 3,
	FIRST_PERSON = 4
};
--]]
function CAM.GET_FOLLOW_VEHICLE_CAM_VIEW_MODE()
  return native.invoke(
    Type.Int, 494, false
  )
end

-- void SET_FOLLOW_VEHICLE_CAM_VIEW_MODE(int viewMode) // 0xAC253D7842768F48
--[[
Sets the type of Player camera in vehicles:
viewmode: see CAM.GET_FOLLOW_VEHICLE_CAM_VIEW_MODE
--]]
function CAM.SET_FOLLOW_VEHICLE_CAM_VIEW_MODE(viewMode)
  native.invoke(
    Type.Void, 495, false,
    arg(Type.Int, viewMode)
  )
end

-- int GET_CAM_VIEW_MODE_FOR_CONTEXT(int context) // 0xEE778F8C7E1142E2
--[[
context: see _GET_CAM_ACTIVE_VIEW_MODE_CONTEXT
--]]
function CAM.GET_CAM_VIEW_MODE_FOR_CONTEXT(context)
  return native.invoke(
    Type.Int, 496, false,
    arg(Type.Int, context)
  )
end

-- void SET_CAM_VIEW_MODE_FOR_CONTEXT(int context, int viewMode) // 0x2A2173E46DAECD12
--[[
context: see _GET_CAM_ACTIVE_VIEW_MODE_CONTEXT, viewmode: see CAM.GET_FOLLOW_VEHICLE_CAM_VIEW_MODE
--]]
function CAM.SET_CAM_VIEW_MODE_FOR_CONTEXT(context, viewMode)
  native.invoke(
    Type.Void, 497, false,
    arg(Type.Int, context),
    arg(Type.Int, viewMode)
  )
end

-- int GET_CAM_ACTIVE_VIEW_MODE_CONTEXT() // 0x19CAFA3C87F7C2FF
--[[
enum Context
{
	ON_FOOT,
	IN_VEHICLE,
	ON_BIKE,
	IN_BOAT,
	IN_AIRCRAFT,
	IN_SUBMARINE,
	IN_HELI,
	IN_TURRET
};
--]]
function CAM.GET_CAM_ACTIVE_VIEW_MODE_CONTEXT()
  return native.invoke(
    Type.Int, 498, false
  )
end

-- void USE_VEHICLE_CAM_STUNT_SETTINGS_THIS_UPDATE() // 0x6493CF69859B116A
function CAM.USE_VEHICLE_CAM_STUNT_SETTINGS_THIS_UPDATE()
  native.invoke(
    Type.Void, 499, false
  )
end

-- void USE_DEDICATED_STUNT_CAMERA_THIS_UPDATE(const char* camName) // 0x425A920FDB9A0DDA
--[[
Sets gameplay camera to hash
--]]
function CAM.USE_DEDICATED_STUNT_CAMERA_THIS_UPDATE(camName)
  native.invoke(
    Type.Void, 500, false,
    arg(Type.String, camName)
  )
end

-- void FORCE_VEHICLE_CAM_STUNT_SETTINGS_THIS_UPDATE() // 0x0AA27680A0BD43FA
function CAM.FORCE_VEHICLE_CAM_STUNT_SETTINGS_THIS_UPDATE()
  native.invoke(
    Type.Void, 501, false
  )
end

-- void SET_FOLLOW_VEHICLE_CAM_SEAT_THIS_UPDATE(int seatIndex) // 0x5C90CAB09951A12F
function CAM.SET_FOLLOW_VEHICLE_CAM_SEAT_THIS_UPDATE(seatIndex)
  native.invoke(
    Type.Void, 502, false,
    arg(Type.Int, seatIndex)
  )
end

-- BOOL IS_AIM_CAM_ACTIVE() // 0x68EDDA28A5976D07
function CAM.IS_AIM_CAM_ACTIVE()
  return native.invoke(
    Type.Bool, 503, false
  )
end

-- BOOL IS_AIM_CAM_ACTIVE_IN_ACCURATE_MODE() // 0x74BD83EA840F6BC9
function CAM.IS_AIM_CAM_ACTIVE_IN_ACCURATE_MODE()
  return native.invoke(
    Type.Bool, 504, false
  )
end

-- BOOL IS_FIRST_PERSON_AIM_CAM_ACTIVE() // 0x5E346D934122613F
function CAM.IS_FIRST_PERSON_AIM_CAM_ACTIVE()
  return native.invoke(
    Type.Bool, 505, false
  )
end

-- void DISABLE_AIM_CAM_THIS_UPDATE() // 0x1A31FE0049E542F6
function CAM.DISABLE_AIM_CAM_THIS_UPDATE()
  native.invoke(
    Type.Void, 506, false
  )
end

-- float GET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR() // 0x7EC52CC40597D170
function CAM.GET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR()
  return native.invoke(
    Type.Float, 507, false
  )
end

-- void SET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR(float zoomFactor) // 0x70894BD0915C5BCA
function CAM.SET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR(zoomFactor)
  native.invoke(
    Type.Void, 508, false,
    arg(Type.Float, zoomFactor)
  )
end

-- void SET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR_LIMITS_THIS_UPDATE(float p0, float p1) // 0xCED08CBE8EBB97C7
function CAM.SET_FIRST_PERSON_AIM_CAM_ZOOM_FACTOR_LIMITS_THIS_UPDATE(p0, p1)
  native.invoke(
    Type.Void, 509, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- void SET_FIRST_PERSON_AIM_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE(float p0, float p1) // 0x2F7F2B26DD3F18EE
function CAM.SET_FIRST_PERSON_AIM_CAM_RELATIVE_HEADING_LIMITS_THIS_UPDATE(p0, p1)
  native.invoke(
    Type.Void, 510, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- void SET_FIRST_PERSON_AIM_CAM_RELATIVE_PITCH_LIMITS_THIS_UPDATE(float p0, float p1) // 0xBCFC632DB7673BF0
function CAM.SET_FIRST_PERSON_AIM_CAM_RELATIVE_PITCH_LIMITS_THIS_UPDATE(p0, p1)
  native.invoke(
    Type.Void, 511, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- void SET_FIRST_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE(float p0) // 0x0AF7B437918103B3
function CAM.SET_FIRST_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE(p0)
  native.invoke(
    Type.Void, 512, false,
    arg(Type.Float, p0)
  )
end

-- void SET_THIRD_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE(float p0) // 0x42156508606DE65E
function CAM.SET_THIRD_PERSON_AIM_CAM_NEAR_CLIP_THIS_UPDATE(p0)
  native.invoke(
    Type.Void, 513, false,
    arg(Type.Float, p0)
  )
end

-- void SET_ALLOW_CUSTOM_VEHICLE_DRIVE_BY_CAM_THIS_UPDATE(BOOL p0) // 0x4008EDF7D6E48175
function CAM.SET_ALLOW_CUSTOM_VEHICLE_DRIVE_BY_CAM_THIS_UPDATE(p0)
  native.invoke(
    Type.Void, 514, false,
    arg(Type.Bool, p0)
  )
end

-- void FORCE_TIGHTSPACE_CUSTOM_FRAMING_THIS_UPDATE() // 0x380B4968D1E09E55
function CAM.FORCE_TIGHTSPACE_CUSTOM_FRAMING_THIS_UPDATE()
  native.invoke(
    Type.Void, 515, false
  )
end

-- Vector3 GET_FINAL_RENDERED_CAM_COORD() // 0xA200EB1EE790F448
function CAM.GET_FINAL_RENDERED_CAM_COORD()
  return native.invoke(
    Type.Vector3, 516, false
  )
end

-- Vector3 GET_FINAL_RENDERED_CAM_ROT(int rotationOrder) // 0x5B4E4C817FCC2DFB
--[[
p0 seems to consistently be 2 across scripts

Function is called faily often by CAM::CREATE_CAM_WITH_PARAMS
--]]
function CAM.GET_FINAL_RENDERED_CAM_ROT(rotationOrder)
  return native.invoke(
    Type.Vector3, 517, false,
    arg(Type.Int, rotationOrder)
  )
end

-- Vector3 GET_FINAL_RENDERED_REMOTE_PLAYER_CAM_ROT(Player player, int rotationOrder) // 0x26903D9CD1175F2C
function CAM.GET_FINAL_RENDERED_REMOTE_PLAYER_CAM_ROT(player, rotationOrder)
  return native.invoke(
    Type.Vector3, 518, false,
    arg(Type.Player, player),
    arg(Type.Int, rotationOrder)
  )
end

-- float GET_FINAL_RENDERED_CAM_FOV() // 0x80EC114669DAEFF4
--[[
Gets some camera fov
--]]
function CAM.GET_FINAL_RENDERED_CAM_FOV()
  return native.invoke(
    Type.Float, 519, false
  )
end

-- float GET_FINAL_RENDERED_REMOTE_PLAYER_CAM_FOV(Player player) // 0x5F35F6732C3FBBA0
function CAM.GET_FINAL_RENDERED_REMOTE_PLAYER_CAM_FOV(player)
  return native.invoke(
    Type.Float, 520, false,
    arg(Type.Player, player)
  )
end

-- float GET_FINAL_RENDERED_CAM_NEAR_CLIP() // 0xD0082607100D7193
function CAM.GET_FINAL_RENDERED_CAM_NEAR_CLIP()
  return native.invoke(
    Type.Float, 521, false
  )
end

-- float GET_FINAL_RENDERED_CAM_FAR_CLIP() // 0xDFC8CBC606FDB0FC
function CAM.GET_FINAL_RENDERED_CAM_FAR_CLIP()
  return native.invoke(
    Type.Float, 522, false
  )
end

-- float GET_FINAL_RENDERED_CAM_NEAR_DOF() // 0xA03502FC581F7D9B
function CAM.GET_FINAL_RENDERED_CAM_NEAR_DOF()
  return native.invoke(
    Type.Float, 523, false
  )
end

-- float GET_FINAL_RENDERED_CAM_FAR_DOF() // 0x9780F32BCAF72431
function CAM.GET_FINAL_RENDERED_CAM_FAR_DOF()
  return native.invoke(
    Type.Float, 524, false
  )
end

-- float GET_FINAL_RENDERED_CAM_MOTION_BLUR_STRENGTH() // 0x162F9D995753DC19
function CAM.GET_FINAL_RENDERED_CAM_MOTION_BLUR_STRENGTH()
  return native.invoke(
    Type.Float, 525, false
  )
end

-- void SET_GAMEPLAY_COORD_HINT(float x, float y, float z, int duration, int blendOutDuration, int blendInDuration, int p6) // 0xD51ADCD2D8BC0FB3
function CAM.SET_GAMEPLAY_COORD_HINT(x, y, z, duration, blendOutDuration, blendInDuration, p6)
  native.invoke(
    Type.Void, 526, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, duration),
    arg(Type.Int, blendOutDuration),
    arg(Type.Int, blendInDuration),
    arg(Type.Int, p6)
  )
end

-- void SET_GAMEPLAY_PED_HINT(Ped ped, float x1, float y1, float z1, BOOL p4, int duration, int blendOutDuration, int blendInDuration) // 0x2B486269ACD548D3
function CAM.SET_GAMEPLAY_PED_HINT(ped, x1, y1, z1, p4, duration, blendOutDuration, blendInDuration)
  native.invoke(
    Type.Void, 527, false,
    arg(Type.Ped, ped),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Bool, p4),
    arg(Type.Int, duration),
    arg(Type.Int, blendOutDuration),
    arg(Type.Int, blendInDuration)
  )
end

-- void SET_GAMEPLAY_VEHICLE_HINT(Vehicle vehicle, float offsetX, float offsetY, float offsetZ, BOOL p4, int time, int easeInTime, int easeOutTime) // 0xA2297E18F3E71C2E
--[[
Focuses the camera on the specified vehicle.
--]]
function CAM.SET_GAMEPLAY_VEHICLE_HINT(vehicle, offsetX, offsetY, offsetZ, p4, time, easeInTime, easeOutTime)
  native.invoke(
    Type.Void, 528, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Bool, p4),
    arg(Type.Int, time),
    arg(Type.Int, easeInTime),
    arg(Type.Int, easeOutTime)
  )
end

-- void SET_GAMEPLAY_OBJECT_HINT(Object object, float xOffset, float yOffset, float zOffset, BOOL p4, int time, int easeInTime, int easeOutTime) // 0x83E87508A2CA2AC6
function CAM.SET_GAMEPLAY_OBJECT_HINT(object, xOffset, yOffset, zOffset, p4, time, easeInTime, easeOutTime)
  native.invoke(
    Type.Void, 529, false,
    arg(Type.Object, object),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Bool, p4),
    arg(Type.Int, time),
    arg(Type.Int, easeInTime),
    arg(Type.Int, easeOutTime)
  )
end

-- void SET_GAMEPLAY_ENTITY_HINT(Entity entity, float xOffset, float yOffset, float zOffset, BOOL p4, int time, int easeInTime, int easeOutTime, int p8) // 0x189E955A8313E298
--[[
p8 could be some sort of flag. Scripts use:
-244429742
0
1726668277
1844968929
--]]
function CAM.SET_GAMEPLAY_ENTITY_HINT(entity, xOffset, yOffset, zOffset, p4, time, easeInTime, easeOutTime, p8)
  native.invoke(
    Type.Void, 530, false,
    arg(Type.Entity, entity),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Bool, p4),
    arg(Type.Int, time),
    arg(Type.Int, easeInTime),
    arg(Type.Int, easeOutTime),
    arg(Type.Int, p8)
  )
end

-- BOOL IS_GAMEPLAY_HINT_ACTIVE() // 0xE520FF1AD2785B40
function CAM.IS_GAMEPLAY_HINT_ACTIVE()
  return native.invoke(
    Type.Bool, 531, false
  )
end

-- void STOP_GAMEPLAY_HINT(BOOL p0) // 0xF46C581C61718916
function CAM.STOP_GAMEPLAY_HINT(p0)
  native.invoke(
    Type.Void, 532, false,
    arg(Type.Bool, p0)
  )
end

-- void STOP_GAMEPLAY_HINT_BEING_CANCELLED_THIS_UPDATE(BOOL p0) // 0xCCD078C2665D2973
--[[
This native does absolutely nothing, just a nullsub
--]]
function CAM.STOP_GAMEPLAY_HINT_BEING_CANCELLED_THIS_UPDATE(p0)
  native.invoke(
    Type.Void, 533, false,
    arg(Type.Bool, p0)
  )
end

-- void STOP_CODE_GAMEPLAY_HINT(BOOL p0) // 0x247ACBC4ABBC9D1C
function CAM.STOP_CODE_GAMEPLAY_HINT(p0)
  native.invoke(
    Type.Void, 534, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL IS_CODE_GAMEPLAY_HINT_ACTIVE() // 0xBF72910D0F26F025
function CAM.IS_CODE_GAMEPLAY_HINT_ACTIVE()
  return native.invoke(
    Type.Bool, 535, false
  )
end

-- void SET_GAMEPLAY_HINT_FOV(float FOV) // 0x513403FB9C56211F
function CAM.SET_GAMEPLAY_HINT_FOV(FOV)
  native.invoke(
    Type.Void, 536, false,
    arg(Type.Float, FOV)
  )
end

-- void SET_GAMEPLAY_HINT_FOLLOW_DISTANCE_SCALAR(float value) // 0xF8BDBF3D573049A1
function CAM.SET_GAMEPLAY_HINT_FOLLOW_DISTANCE_SCALAR(value)
  native.invoke(
    Type.Void, 537, false,
    arg(Type.Float, value)
  )
end

-- void SET_GAMEPLAY_HINT_BASE_ORBIT_PITCH_OFFSET(float value) // 0xD1F8363DFAD03848
function CAM.SET_GAMEPLAY_HINT_BASE_ORBIT_PITCH_OFFSET(value)
  native.invoke(
    Type.Void, 538, false,
    arg(Type.Float, value)
  )
end

-- void SET_GAMEPLAY_HINT_CAMERA_RELATIVE_SIDE_OFFSET(float xOffset) // 0x5D7B620DAE436138
function CAM.SET_GAMEPLAY_HINT_CAMERA_RELATIVE_SIDE_OFFSET(xOffset)
  native.invoke(
    Type.Void, 539, false,
    arg(Type.Float, xOffset)
  )
end

-- void SET_GAMEPLAY_HINT_CAMERA_RELATIVE_VERTICAL_OFFSET(float yOffset) // 0xC92717EF615B6704
function CAM.SET_GAMEPLAY_HINT_CAMERA_RELATIVE_VERTICAL_OFFSET(yOffset)
  native.invoke(
    Type.Void, 540, false,
    arg(Type.Float, yOffset)
  )
end

-- void SET_GAMEPLAY_HINT_CAMERA_BLEND_TO_FOLLOW_PED_MEDIUM_VIEW_MODE(BOOL toggle) // 0xE3433EADAAF7EE40
function CAM.SET_GAMEPLAY_HINT_CAMERA_BLEND_TO_FOLLOW_PED_MEDIUM_VIEW_MODE(toggle)
  native.invoke(
    Type.Void, 541, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_CINEMATIC_BUTTON_ACTIVE(BOOL p0) // 0x51669F7D1FB53D9F
function CAM.SET_CINEMATIC_BUTTON_ACTIVE(p0)
  native.invoke(
    Type.Void, 542, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL IS_CINEMATIC_CAM_RENDERING() // 0xB15162CB5826E9E8
function CAM.IS_CINEMATIC_CAM_RENDERING()
  return native.invoke(
    Type.Bool, 543, false
  )
end

-- void SHAKE_CINEMATIC_CAM(const char* shakeType, float amount) // 0xDCE214D9ED58F3CF
--[[
p0 argument found in the b617d scripts: "DRUNK_SHAKE"

Full list of cam shake types by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/camShakeTypesCompact.json
--]]
function CAM.SHAKE_CINEMATIC_CAM(shakeType, amount)
  native.invoke(
    Type.Void, 544, false,
    arg(Type.String, shakeType),
    arg(Type.Float, amount)
  )
end

-- BOOL IS_CINEMATIC_CAM_SHAKING() // 0xBBC08F6B4CB8FF0A
function CAM.IS_CINEMATIC_CAM_SHAKING()
  return native.invoke(
    Type.Bool, 545, false
  )
end

-- void SET_CINEMATIC_CAM_SHAKE_AMPLITUDE(float p0) // 0xC724C701C30B2FE7
function CAM.SET_CINEMATIC_CAM_SHAKE_AMPLITUDE(p0)
  native.invoke(
    Type.Void, 546, false,
    arg(Type.Float, p0)
  )
end

-- void STOP_CINEMATIC_CAM_SHAKING(BOOL p0) // 0x2238E588E588A6D7
function CAM.STOP_CINEMATIC_CAM_SHAKING(p0)
  native.invoke(
    Type.Void, 547, false,
    arg(Type.Bool, p0)
  )
end

-- void DISABLE_CINEMATIC_BONNET_CAMERA_THIS_UPDATE() // 0xADFF1B2A555F5FBA
function CAM.DISABLE_CINEMATIC_BONNET_CAMERA_THIS_UPDATE()
  native.invoke(
    Type.Void, 548, false
  )
end

-- void DISABLE_CINEMATIC_VEHICLE_IDLE_MODE_THIS_UPDATE() // 0x62ECFCFDEE7885D6
function CAM.DISABLE_CINEMATIC_VEHICLE_IDLE_MODE_THIS_UPDATE()
  native.invoke(
    Type.Void, 549, false
  )
end

-- void INVALIDATE_CINEMATIC_VEHICLE_IDLE_MODE() // 0x9E4CFFF989258472
--[[
Resets the vehicle idle camera timer. Calling this in a loop will disable the idle camera.
--]]
function CAM.INVALIDATE_CINEMATIC_VEHICLE_IDLE_MODE()
  native.invoke(
    Type.Void, 550, false
  )
end

-- void INVALIDATE_IDLE_CAM() // 0xF4F2C0D4EE209E20
--[[
Resets the idle camera timer. Calling that in a loop once every few seconds is enough to disable the idle cinematic camera.
--]]
function CAM.INVALIDATE_IDLE_CAM()
  native.invoke(
    Type.Void, 551, false
  )
end

-- BOOL IS_CINEMATIC_IDLE_CAM_RENDERING() // 0xCA9D2AA3E326D720
function CAM.IS_CINEMATIC_IDLE_CAM_RENDERING()
  return native.invoke(
    Type.Bool, 552, false
  )
end

-- BOOL IS_CINEMATIC_FIRST_PERSON_VEHICLE_INTERIOR_CAM_RENDERING() // 0x4F32C0D5A90A9B40
function CAM.IS_CINEMATIC_FIRST_PERSON_VEHICLE_INTERIOR_CAM_RENDERING()
  return native.invoke(
    Type.Bool, 553, false
  )
end

-- void CREATE_CINEMATIC_SHOT(Hash p0, int time, BOOL p2, Entity entity) // 0x741B0129D4560F31
--[[
hash is always JOAAT("CAMERA_MAN_SHOT") in decompiled scripts
--]]
function CAM.CREATE_CINEMATIC_SHOT(p0, time, p2, entity)
  native.invoke(
    Type.Void, 554, false,
    arg(Type.Hash, p0),
    arg(Type.Int, time),
    arg(Type.Bool, p2),
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_CINEMATIC_SHOT_ACTIVE(Hash p0) // 0xCC9F3371A7C28BC9
--[[
Hash is always JOAAT("CAMERA_MAN_SHOT") in decompiled scripts
--]]
function CAM.IS_CINEMATIC_SHOT_ACTIVE(p0)
  return native.invoke(
    Type.Bool, 555, false,
    arg(Type.Hash, p0)
  )
end

-- void STOP_CINEMATIC_SHOT(Hash p0) // 0x7660C6E75D3A078E
--[[
Only used once in carsteal3 with p0 set to -1096069633 (CAMERA_MAN_SHOT)
--]]
function CAM.STOP_CINEMATIC_SHOT(p0)
  native.invoke(
    Type.Void, 556, false,
    arg(Type.Hash, p0)
  )
end

-- void FORCE_CINEMATIC_RENDERING_THIS_UPDATE(BOOL toggle) // 0xA41BCD7213805AAC
function CAM.FORCE_CINEMATIC_RENDERING_THIS_UPDATE(toggle)
  native.invoke(
    Type.Void, 557, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_CINEMATIC_NEWS_CHANNEL_ACTIVE_THIS_UPDATE() // 0xDC9DA9E8789F5246
function CAM.SET_CINEMATIC_NEWS_CHANNEL_ACTIVE_THIS_UPDATE()
  native.invoke(
    Type.Void, 558, false
  )
end

-- void SET_CINEMATIC_MODE_ACTIVE(BOOL toggle) // 0xDCF0754AC3D6FD4E
--[[
Toggles the vehicle cinematic cam; requires the player ped to be in a vehicle to work.
--]]
function CAM.SET_CINEMATIC_MODE_ACTIVE(toggle)
  native.invoke(
    Type.Void, 559, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_IN_VEHICLE_MOBILE_PHONE_CAMERA_RENDERING() // 0x1F2300CB7FA7B7F6
function CAM.IS_IN_VEHICLE_MOBILE_PHONE_CAMERA_RENDERING()
  return native.invoke(
    Type.Bool, 560, false
  )
end

-- BOOL DISABLE_CINEMATIC_SLOW_MO_THIS_UPDATE() // 0x17FCA7199A530203
function CAM.DISABLE_CINEMATIC_SLOW_MO_THIS_UPDATE()
  return native.invoke(
    Type.Bool, 561, false
  )
end

-- BOOL IS_BONNET_CINEMATIC_CAM_RENDERING() // 0xD7360051C885628B
function CAM.IS_BONNET_CINEMATIC_CAM_RENDERING()
  return native.invoke(
    Type.Bool, 562, false
  )
end

-- BOOL IS_CINEMATIC_CAM_INPUT_ACTIVE() // 0xF5F1E89A970B7796
--[[
Tests some cinematic camera flags
--]]
function CAM.IS_CINEMATIC_CAM_INPUT_ACTIVE()
  return native.invoke(
    Type.Bool, 563, false
  )
end

-- void IGNORE_MENU_PREFERENCE_FOR_BONNET_CAMERA_THIS_UPDATE() // 0x7B8A361C1813FBEF
function CAM.IGNORE_MENU_PREFERENCE_FOR_BONNET_CAMERA_THIS_UPDATE()
  native.invoke(
    Type.Void, 564, false
  )
end

-- void BYPASS_CUTSCENE_CAM_RENDERING_THIS_UPDATE() // 0xDB629FFD9285FA06
function CAM.BYPASS_CUTSCENE_CAM_RENDERING_THIS_UPDATE()
  native.invoke(
    Type.Void, 565, false
  )
end

-- void STOP_CUTSCENE_CAM_SHAKING(Any p0) // 0x324C5AA411DA7737
function CAM.STOP_CUTSCENE_CAM_SHAKING(p0)
  native.invoke(
    Type.Void, 566, false,
    arg(Type.Any, p0)
  )
end

-- void SET_CUTSCENE_CAM_FAR_CLIP_THIS_UPDATE(float p0) // 0x12DED8CA53D47EA5
--[[
Hardcoded to only work in multiplayer.
--]]
function CAM.SET_CUTSCENE_CAM_FAR_CLIP_THIS_UPDATE(p0)
  native.invoke(
    Type.Void, 567, false,
    arg(Type.Float, p0)
  )
end

-- Ped GET_FOCUS_PED_ON_SCREEN(float p0, int p1, float p2, float p3, float p4, float p5, float p6, int p7, int p8) // 0x89215EC747DF244A
function CAM.GET_FOCUS_PED_ON_SCREEN(p0, p1, p2, p3, p4, p5, p6, p7, p8)
  return native.invoke(
    Type.Ped, 568, false,
    arg(Type.Float, p0),
    arg(Type.Int, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Int, p7),
    arg(Type.Int, p8)
  )
end

-- void DISABLE_NEAR_CLIP_SCAN_THIS_UPDATE() // 0x5A43C76F7FC7BA5F
function CAM.DISABLE_NEAR_CLIP_SCAN_THIS_UPDATE()
  native.invoke(
    Type.Void, 569, false
  )
end

-- void SET_CAM_DEATH_FAIL_EFFECT_STATE(int p0) // 0x80C8B1846639BB19
--[[
if p0 is 0, effect is cancelled

if p0 is 1, effect zooms in, gradually tilts cam clockwise apx 30 degrees, wobbles slowly. Motion blur is active until cancelled.

if p0 is 2, effect immediately tilts cam clockwise apx 30 degrees, begins to wobble slowly, then gradually tilts cam back to normal. The wobbling will continue until the effect is cancelled.
--]]
function CAM.SET_CAM_DEATH_FAIL_EFFECT_STATE(p0)
  native.invoke(
    Type.Void, 570, false,
    arg(Type.Int, p0)
  )
end

-- void SET_FIRST_PERSON_FLASH_EFFECT_TYPE(Any p0) // 0x5C41E6BABC9E2112
function CAM.SET_FIRST_PERSON_FLASH_EFFECT_TYPE(p0)
  native.invoke(
    Type.Void, 571, false,
    arg(Type.Any, p0)
  )
end

-- void SET_FIRST_PERSON_FLASH_EFFECT_VEHICLE_MODEL_NAME(const char* vehicleName) // 0x21E253A7F8DA5DFB
--[[
From b617 scripts:

CAM::SET_FIRST_PERSON_FLASH_EFFECT_VEHICLE_MODEL_NAME("DINGHY");
CAM::SET_FIRST_PERSON_FLASH_EFFECT_VEHICLE_MODEL_NAME("ISSI2");
CAM::SET_FIRST_PERSON_FLASH_EFFECT_VEHICLE_MODEL_NAME("SPEEDO");
--]]
function CAM.SET_FIRST_PERSON_FLASH_EFFECT_VEHICLE_MODEL_NAME(vehicleName)
  native.invoke(
    Type.Void, 572, false,
    arg(Type.String, vehicleName)
  )
end

-- void SET_FIRST_PERSON_FLASH_EFFECT_VEHICLE_MODEL_HASH(Hash vehicleModel) // 0x11FA5D3479C7DD47
function CAM.SET_FIRST_PERSON_FLASH_EFFECT_VEHICLE_MODEL_HASH(vehicleModel)
  native.invoke(
    Type.Void, 573, false,
    arg(Type.Hash, vehicleModel)
  )
end

-- BOOL IS_ALLOWED_INDEPENDENT_CAMERA_MODES() // 0xEAF0FA793D05C592
function CAM.IS_ALLOWED_INDEPENDENT_CAMERA_MODES()
  return native.invoke(
    Type.Bool, 574, false
  )
end

-- void CAMERA_PREVENT_COLLISION_SETTINGS_FOR_TRIPLEHEAD_IN_INTERIORS_THIS_UPDATE() // 0x62374889A4D59F72
function CAM.CAMERA_PREVENT_COLLISION_SETTINGS_FOR_TRIPLEHEAD_IN_INTERIORS_THIS_UPDATE()
  native.invoke(
    Type.Void, 575, false
  )
end

-- float REPLAY_GET_MAX_DISTANCE_ALLOWED_FROM_PLAYER() // 0x8BFCEB5EA1B161B6
function CAM.REPLAY_GET_MAX_DISTANCE_ALLOWED_FROM_PLAYER()
  return native.invoke(
    Type.Float, 576, false
  )
end


