GRAPHICS = {}

-- void SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE(BOOL enabled) // 0x175B6BFC15CDD0C5
--[[
NOTE: Debugging functions are not present in the retail version of the game.
--]]
function GRAPHICS.SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE(enabled)
  native.invoke(
    Type.Void, 995, false,
    arg(Type.Bool, enabled)
  )
end

-- void DRAW_DEBUG_LINE(float x1, float y1, float z1, float x2, float y2, float z2, int r, int g, int b, int alpha) // 0x7FDFADE676AA3CB0
function GRAPHICS.DRAW_DEBUG_LINE(x1, y1, z1, x2, y2, z2, r, g, b, alpha)
  native.invoke(
    Type.Void, 996, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_DEBUG_LINE_WITH_TWO_COLOURS(float x1, float y1, float z1, float x2, float y2, float z2, int r1, int g1, int b1, int r2, int g2, int b2, int alpha1, int alpha2) // 0xD8B9A8AC5608FF94
--[[
NOTE: Debugging functions are not present in the retail version of the game.
--]]
function GRAPHICS.DRAW_DEBUG_LINE_WITH_TWO_COLOURS(x1, y1, z1, x2, y2, z2, r1, g1, b1, r2, g2, b2, alpha1, alpha2)
  native.invoke(
    Type.Void, 997, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, r1),
    arg(Type.Int, g1),
    arg(Type.Int, b1),
    arg(Type.Int, r2),
    arg(Type.Int, g2),
    arg(Type.Int, b2),
    arg(Type.Int, alpha1),
    arg(Type.Int, alpha2)
  )
end

-- void DRAW_DEBUG_SPHERE(float x, float y, float z, float radius, int red, int green, int blue, int alpha) // 0xAAD68E1AB39DA632
--[[
NOTE: Debugging functions are not present in the retail version of the game.
--]]
function GRAPHICS.DRAW_DEBUG_SPHERE(x, y, z, radius, red, green, blue, alpha)
  native.invoke(
    Type.Void, 998, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_DEBUG_BOX(float x1, float y1, float z1, float x2, float y2, float z2, int r, int g, int b, int alpha) // 0x083A2CA4F2E573BD
function GRAPHICS.DRAW_DEBUG_BOX(x1, y1, z1, x2, y2, z2, r, g, b, alpha)
  native.invoke(
    Type.Void, 999, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_DEBUG_CROSS(float x, float y, float z, float size, int red, int green, int blue, int alpha) // 0x73B1189623049839
--[[
NOTE: Debugging functions are not present in the retail version of the game.
--]]
function GRAPHICS.DRAW_DEBUG_CROSS(x, y, z, size, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1000, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, size),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_DEBUG_TEXT(const char* text, float x, float y, float z, int red, int green, int blue, int alpha) // 0x3903E216620488E8
--[[
NOTE: Debugging functions are not present in the retail version of the game.
--]]
function GRAPHICS.DRAW_DEBUG_TEXT(text, x, y, z, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1001, false,
    arg(Type.String, text),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_DEBUG_TEXT_2D(const char* text, float x, float y, float z, int red, int green, int blue, int alpha) // 0xA3BB2E9555C05A8F
--[[
NOTE: Debugging functions are not present in the retail version of the game.
--]]
function GRAPHICS.DRAW_DEBUG_TEXT_2D(text, x, y, z, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1002, false,
    arg(Type.String, text),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_LINE(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha) // 0x6B7256074AE34680
--[[
Draws a depth-tested line from one point to another.
----------------
x1, y1, z1 : Coordinates for the first point
x2, y2, z2 : Coordinates for the second point
r, g, b, alpha : Color with RGBA-Values
I recommend using a predefined function to call this.
[VB.NET]
Public Sub DrawLine(from As Vector3, [to] As Vector3, col As Color)
    [Function].Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, [to].X, [to].Y, [to].Z, col.R, col.G, col.B, col.A)
End Sub

[C#]
public void DrawLine(Vector3 from, Vector3 to, Color col)
{
    Function.Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, to.X, to.Y, to.Z, col.R, col.G, col.B, col.A);
}
--]]
function GRAPHICS.DRAW_LINE(x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1003, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_POLY(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, int red, int green, int blue, int alpha) // 0xAC26716048436851
--[[
x/y/z - Location of a vertex (in world coords), presumably.
----------------
x1, y1, z1     : Coordinates for the first point
x2, y2, z2     : Coordinates for the second point
x3, y3, z3     : Coordinates for the third point
r, g, b, alpha : Color with RGBA-Values

Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b).
But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution.
I recommend using a predefined function to call this.
[VB.NET]
Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)
    [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A)
End Sub

[C#]
public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col)
{
    Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A);
}
BTW: Intersecting triangles are not supported: They overlap in the order they were called.
--]]
function GRAPHICS.DRAW_POLY(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1004, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, x3),
    arg(Type.Float, y3),
    arg(Type.Float, z3),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_TEXTURED_POLY(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, int red, int green, int blue, int alpha, const char* textureDict, const char* textureName, float u1, float v1, float w1, float u2, float v2, float w2, float u3, float v3, float w3) // 0x29280002282F1928
--[[
Used for drawling Deadline trailing lights, see deadline.ytd

p15 through p23 are values that appear to be related to illiumation, scaling, and rotation; more testing required.
For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
--]]
function GRAPHICS.DRAW_TEXTURED_POLY(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3)
  native.invoke(
    Type.Void, 1005, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, x3),
    arg(Type.Float, y3),
    arg(Type.Float, z3),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Float, u1),
    arg(Type.Float, v1),
    arg(Type.Float, w1),
    arg(Type.Float, u2),
    arg(Type.Float, v2),
    arg(Type.Float, w2),
    arg(Type.Float, u3),
    arg(Type.Float, v3),
    arg(Type.Float, w3)
  )
end

-- void DRAW_TEXTURED_POLY_WITH_THREE_COLOURS(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float red1, float green1, float blue1, int alpha1, float red2, float green2, float blue2, int alpha2, float red3, float green3, float blue3, int alpha3, const char* textureDict, const char* textureName, float u1, float v1, float w1, float u2, float v2, float w2, float u3, float v3, float w3) // 0x736D7AA1B750856B
--[[
Used for drawling Deadline trailing lights, see deadline.ytd

Each vertex has its own colour that is blended/illuminated on the texture. Additionally, the R, G, and B components are floats that are int-casted internally.
For UVW mapping (u,v,w parameters), reference your favourite internet resource for more details.
--]]
function GRAPHICS.DRAW_TEXTURED_POLY_WITH_THREE_COLOURS(x1, y1, z1, x2, y2, z2, x3, y3, z3, red1, green1, blue1, alpha1, red2, green2, blue2, alpha2, red3, green3, blue3, alpha3, textureDict, textureName, u1, v1, w1, u2, v2, w2, u3, v3, w3)
  native.invoke(
    Type.Void, 1006, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, x3),
    arg(Type.Float, y3),
    arg(Type.Float, z3),
    arg(Type.Float, red1),
    arg(Type.Float, green1),
    arg(Type.Float, blue1),
    arg(Type.Int, alpha1),
    arg(Type.Float, red2),
    arg(Type.Float, green2),
    arg(Type.Float, blue2),
    arg(Type.Int, alpha2),
    arg(Type.Float, red3),
    arg(Type.Float, green3),
    arg(Type.Float, blue3),
    arg(Type.Int, alpha3),
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Float, u1),
    arg(Type.Float, v1),
    arg(Type.Float, w1),
    arg(Type.Float, u2),
    arg(Type.Float, v2),
    arg(Type.Float, w2),
    arg(Type.Float, u3),
    arg(Type.Float, v3),
    arg(Type.Float, w3)
  )
end

-- void DRAW_BOX(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha) // 0xD3A9971CADAC7252
--[[
x,y,z = start pos
x2,y2,z2 = end pos

Draw's a 3D Box between the two x,y,z coords.
--------------
Keep in mind that the edges of the box do only align to the worlds base-vectors. Therefore something like rotation cannot be applied. That means this function is pretty much useless, unless you want a static unicolor box somewhere.
I recommend using a predefined function to call this.
[VB.NET]
Public Sub DrawBox(a As Vector3, b As Vector3, col As Color)
    [Function].Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A)
End Sub

[C#]
public void DrawBox(Vector3 a, Vector3 b, Color col)
{
    Function.Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A);
}
--]]
function GRAPHICS.DRAW_BOX(x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1007, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void SET_BACKFACECULLING(BOOL toggle) // 0x23BA6B0C2AD7B0D3
function GRAPHICS.SET_BACKFACECULLING(toggle)
  native.invoke(
    Type.Void, 1008, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_DEPTHWRITING(BOOL toggle) // 0xC5C8F970D4EDFF71
function GRAPHICS.SET_DEPTHWRITING(toggle)
  native.invoke(
    Type.Void, 1009, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL BEGIN_TAKE_MISSION_CREATOR_PHOTO() // 0x1DD2139A9A20DCE8
function GRAPHICS.BEGIN_TAKE_MISSION_CREATOR_PHOTO()
  return native.invoke(
    Type.Bool, 1010, false
  )
end

-- int GET_STATUS_OF_TAKE_MISSION_CREATOR_PHOTO() // 0x90A78ECAA4E78453
function GRAPHICS.GET_STATUS_OF_TAKE_MISSION_CREATOR_PHOTO()
  return native.invoke(
    Type.Int, 1011, false
  )
end

-- void FREE_MEMORY_FOR_MISSION_CREATOR_PHOTO() // 0x0A46AF8A78DC5E0A
function GRAPHICS.FREE_MEMORY_FOR_MISSION_CREATOR_PHOTO()
  native.invoke(
    Type.Void, 1012, false
  )
end

-- BOOL LOAD_MISSION_CREATOR_PHOTO(Any* p0, Any p1, Any p2, Any p3) // 0x4862437A486F91B0
function GRAPHICS.LOAD_MISSION_CREATOR_PHOTO(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 1013, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- int GET_STATUS_OF_LOAD_MISSION_CREATOR_PHOTO(Any* p0) // 0x1670F8D05056F257
function GRAPHICS.GET_STATUS_OF_LOAD_MISSION_CREATOR_PHOTO(p0)
  return native.invoke(
    Type.Int, 1014, false,
    ref(Type.Any, p0)
  )
end

-- BOOL BEGIN_CREATE_MISSION_CREATOR_PHOTO_PREVIEW() // 0x7FA5D82B8F58EC06
function GRAPHICS.BEGIN_CREATE_MISSION_CREATOR_PHOTO_PREVIEW()
  return native.invoke(
    Type.Bool, 1015, false
  )
end

-- int GET_STATUS_OF_CREATE_MISSION_CREATOR_PHOTO_PREVIEW() // 0x5B0316762AFD4A64
function GRAPHICS.GET_STATUS_OF_CREATE_MISSION_CREATOR_PHOTO_PREVIEW()
  return native.invoke(
    Type.Int, 1016, false
  )
end

-- void FREE_MEMORY_FOR_MISSION_CREATOR_PHOTO_PREVIEW() // 0x346EF3ECAAAB149E
function GRAPHICS.FREE_MEMORY_FOR_MISSION_CREATOR_PHOTO_PREVIEW()
  native.invoke(
    Type.Void, 1017, false
  )
end

-- BOOL BEGIN_TAKE_HIGH_QUALITY_PHOTO() // 0xA67C35C56EB1BD9D
function GRAPHICS.BEGIN_TAKE_HIGH_QUALITY_PHOTO()
  return native.invoke(
    Type.Bool, 1018, false
  )
end

-- int GET_STATUS_OF_TAKE_HIGH_QUALITY_PHOTO() // 0x0D6CA79EEEBD8CA3
function GRAPHICS.GET_STATUS_OF_TAKE_HIGH_QUALITY_PHOTO()
  return native.invoke(
    Type.Int, 1019, false
  )
end

-- void FREE_MEMORY_FOR_HIGH_QUALITY_PHOTO() // 0xD801CC02177FA3F1
function GRAPHICS.FREE_MEMORY_FOR_HIGH_QUALITY_PHOTO()
  native.invoke(
    Type.Void, 1020, false
  )
end

-- void SET_TAKEN_PHOTO_IS_MUGSHOT(BOOL toggle) // 0x1BBC135A4D25EDDE
function GRAPHICS.SET_TAKEN_PHOTO_IS_MUGSHOT(toggle)
  native.invoke(
    Type.Void, 1021, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_ARENA_THEME_AND_VARIATION_FOR_TAKEN_PHOTO(Any p0, int p1) // 0xF3F776ADA161E47D
function GRAPHICS.SET_ARENA_THEME_AND_VARIATION_FOR_TAKEN_PHOTO(p0, p1)
  native.invoke(
    Type.Void, 1022, false,
    arg(Type.Any, p0),
    arg(Type.Int, p1)
  )
end

-- void SET_ON_ISLAND_X_FOR_TAKEN_PHOTO(Any p0) // 0xADD6627C4D325458
function GRAPHICS.SET_ON_ISLAND_X_FOR_TAKEN_PHOTO(p0)
  native.invoke(
    Type.Void, 1023, false,
    arg(Type.Any, p0)
  )
end

-- BOOL SAVE_HIGH_QUALITY_PHOTO(int unused) // 0x3DEC726C25A11BAC
--[[
1 match in 1 script. cellphone_controller.
p0 is -1 in scripts.
--]]
function GRAPHICS.SAVE_HIGH_QUALITY_PHOTO(unused)
  return native.invoke(
    Type.Bool, 1024, false,
    arg(Type.Int, unused)
  )
end

-- int GET_STATUS_OF_SAVE_HIGH_QUALITY_PHOTO() // 0x0C0C4E81E1AC60A0
function GRAPHICS.GET_STATUS_OF_SAVE_HIGH_QUALITY_PHOTO()
  return native.invoke(
    Type.Int, 1025, false
  )
end

-- BOOL BEGIN_CREATE_LOW_QUALITY_COPY_OF_PHOTO(Any p0) // 0x759650634F07B6B4
function GRAPHICS.BEGIN_CREATE_LOW_QUALITY_COPY_OF_PHOTO(p0)
  return native.invoke(
    Type.Bool, 1026, false,
    arg(Type.Any, p0)
  )
end

-- int GET_STATUS_OF_CREATE_LOW_QUALITY_COPY_OF_PHOTO(int p0) // 0xCB82A0BF0E3E3265
function GRAPHICS.GET_STATUS_OF_CREATE_LOW_QUALITY_COPY_OF_PHOTO(p0)
  return native.invoke(
    Type.Int, 1027, false,
    arg(Type.Int, p0)
  )
end

-- void FREE_MEMORY_FOR_LOW_QUALITY_PHOTO() // 0x6A12D88881435DCA
function GRAPHICS.FREE_MEMORY_FOR_LOW_QUALITY_PHOTO()
  native.invoke(
    Type.Void, 1028, false
  )
end

-- void DRAW_LOW_QUALITY_PHOTO_TO_PHONE(BOOL p0, BOOL p1) // 0x1072F115DAB0717E
function GRAPHICS.DRAW_LOW_QUALITY_PHOTO_TO_PHONE(p0, p1)
  native.invoke(
    Type.Void, 1029, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- int GET_MAXIMUM_NUMBER_OF_PHOTOS() // 0x34D23450F028B0BF
--[[
This function is hard-coded to always return 0.
--]]
function GRAPHICS.GET_MAXIMUM_NUMBER_OF_PHOTOS()
  return native.invoke(
    Type.Int, 1030, false
  )
end

-- int GET_MAXIMUM_NUMBER_OF_CLOUD_PHOTOS() // 0xDC54A7AF8B3A14EF
--[[
This function is hard-coded to always return 96.
--]]
function GRAPHICS.GET_MAXIMUM_NUMBER_OF_CLOUD_PHOTOS()
  return native.invoke(
    Type.Int, 1031, false
  )
end

-- int GET_CURRENT_NUMBER_OF_CLOUD_PHOTOS() // 0x473151EBC762C6DA
function GRAPHICS.GET_CURRENT_NUMBER_OF_CLOUD_PHOTOS()
  return native.invoke(
    Type.Int, 1032, false
  )
end

-- BOOL QUEUE_OPERATION_TO_CREATE_SORTED_LIST_OF_PHOTOS(Any p0) // 0x2A893980E96B659A
--[[
2 matches across 2 scripts. Only showed in appcamera & appmedia. Both were 0.
--]]
function GRAPHICS.QUEUE_OPERATION_TO_CREATE_SORTED_LIST_OF_PHOTOS(p0)
  return native.invoke(
    Type.Bool, 1033, false,
    arg(Type.Any, p0)
  )
end

-- int GET_STATUS_OF_SORTED_LIST_OPERATION(Any p0) // 0xF5BED327CEA362B1
--[[
3 matches across 3 scripts. First 2 were 0, 3rd was 1. Possibly a bool.
appcamera, appmedia, and cellphone_controller.
--]]
function GRAPHICS.GET_STATUS_OF_SORTED_LIST_OPERATION(p0)
  return native.invoke(
    Type.Int, 1034, false,
    arg(Type.Any, p0)
  )
end

-- void CLEAR_STATUS_OF_SORTED_LIST_OPERATION() // 0x4AF92ACD3141D96C
function GRAPHICS.CLEAR_STATUS_OF_SORTED_LIST_OPERATION()
  native.invoke(
    Type.Void, 1035, false
  )
end

-- BOOL DOES_THIS_PHOTO_SLOT_CONTAIN_A_VALID_PHOTO(Any p0) // 0xE791DF1F73ED2C8B
--[[
This function is hard-coded to always return 0.
--]]
function GRAPHICS.DOES_THIS_PHOTO_SLOT_CONTAIN_A_VALID_PHOTO(p0)
  return native.invoke(
    Type.Bool, 1036, false,
    arg(Type.Any, p0)
  )
end

-- BOOL LOAD_HIGH_QUALITY_PHOTO(Any p0) // 0xEC72C258667BE5EA
--[[
This function is hard-coded to always return 0.
--]]
function GRAPHICS.LOAD_HIGH_QUALITY_PHOTO(p0)
  return native.invoke(
    Type.Bool, 1037, false,
    arg(Type.Any, p0)
  )
end

-- int GET_LOAD_HIGH_QUALITY_PHOTO_STATUS(int p0) // 0x40AFB081F8ADD4EE
--[[
Hardcoded to always return 2.
--]]
function GRAPHICS.GET_LOAD_HIGH_QUALITY_PHOTO_STATUS(p0)
  return native.invoke(
    Type.Int, 1038, false,
    arg(Type.Int, p0)
  )
end

-- void DRAW_LIGHT_WITH_RANGEEX(float x, float y, float z, int r, int g, int b, float range, float intensity, float shadow) // 0xF49E9A9716A04595
function GRAPHICS.DRAW_LIGHT_WITH_RANGEEX(x, y, z, r, g, b, range, intensity, shadow)
  native.invoke(
    Type.Void, 1039, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Float, range),
    arg(Type.Float, intensity),
    arg(Type.Float, shadow)
  )
end

-- void DRAW_LIGHT_WITH_RANGE(float posX, float posY, float posZ, int colorR, int colorG, int colorB, float range, float intensity) // 0xF2A1B2771A01DBD4
function GRAPHICS.DRAW_LIGHT_WITH_RANGE(posX, posY, posZ, colorR, colorG, colorB, range, intensity)
  native.invoke(
    Type.Void, 1040, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Int, colorR),
    arg(Type.Int, colorG),
    arg(Type.Int, colorB),
    arg(Type.Float, range),
    arg(Type.Float, intensity)
  )
end

-- void DRAW_SPOT_LIGHT(float posX, float posY, float posZ, float dirX, float dirY, float dirZ, int colorR, int colorG, int colorB, float distance, float brightness, float hardness, float radius, float falloff) // 0xD0F64B265C8C8B33
--[[
Parameters:
* pos - coordinate where the spotlight is located
* dir - the direction vector the spotlight should aim at from its current position
* r,g,b - color of the spotlight
* distance - the maximum distance the light can reach
* brightness - the brightness of the light
* roundness - "smoothness" of the circle edge
* radius - the radius size of the spotlight
* falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)

Example in C# (spotlight aims at the closest vehicle):
Vector3 myPos = Game.Player.Character.Position;
Vehicle nearest = World.GetClosestVehicle(myPos , 1000f);
Vector3 destinationCoords = nearest.Position;
Vector3 dirVector = destinationCoords - myPos;
dirVector.Normalize();
Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);
--]]
function GRAPHICS.DRAW_SPOT_LIGHT(posX, posY, posZ, dirX, dirY, dirZ, colorR, colorG, colorB, distance, brightness, hardness, radius, falloff)
  native.invoke(
    Type.Void, 1041, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, dirX),
    arg(Type.Float, dirY),
    arg(Type.Float, dirZ),
    arg(Type.Int, colorR),
    arg(Type.Int, colorG),
    arg(Type.Int, colorB),
    arg(Type.Float, distance),
    arg(Type.Float, brightness),
    arg(Type.Float, hardness),
    arg(Type.Float, radius),
    arg(Type.Float, falloff)
  )
end

-- void DRAW_SHADOWED_SPOT_LIGHT(float posX, float posY, float posZ, float dirX, float dirY, float dirZ, int colorR, int colorG, int colorB, float distance, float brightness, float roundness, float radius, float falloff, int shadowId) // 0x5BCA583A583194DB
function GRAPHICS.DRAW_SHADOWED_SPOT_LIGHT(posX, posY, posZ, dirX, dirY, dirZ, colorR, colorG, colorB, distance, brightness, roundness, radius, falloff, shadowId)
  native.invoke(
    Type.Void, 1042, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, dirX),
    arg(Type.Float, dirY),
    arg(Type.Float, dirZ),
    arg(Type.Int, colorR),
    arg(Type.Int, colorG),
    arg(Type.Int, colorB),
    arg(Type.Float, distance),
    arg(Type.Float, brightness),
    arg(Type.Float, roundness),
    arg(Type.Float, radius),
    arg(Type.Float, falloff),
    arg(Type.Int, shadowId)
  )
end

-- void FADE_UP_PED_LIGHT(float p0) // 0xC9B18B4619F48F7B
function GRAPHICS.FADE_UP_PED_LIGHT(p0)
  native.invoke(
    Type.Void, 1043, false,
    arg(Type.Float, p0)
  )
end

-- void UPDATE_LIGHTS_ON_ENTITY(Entity entity) // 0xDEADC0DEDEADC0DE
function GRAPHICS.UPDATE_LIGHTS_ON_ENTITY(entity)
  native.invoke(
    Type.Void, 1044, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_LIGHT_OVERRIDE_MAX_INTENSITY_SCALE(Any p0) // 0x9641588DAB93B4B5
function GRAPHICS.SET_LIGHT_OVERRIDE_MAX_INTENSITY_SCALE(p0)
  native.invoke(
    Type.Void, 1045, false,
    arg(Type.Any, p0)
  )
end

-- float GET_LIGHT_OVERRIDE_MAX_INTENSITY_SCALE() // 0x393BD2275CEB7793
function GRAPHICS.GET_LIGHT_OVERRIDE_MAX_INTENSITY_SCALE()
  return native.invoke(
    Type.Float, 1046, false
  )
end

-- void DRAW_MARKER(int type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, int p19, BOOL rotate, const char* textureDict, const char* textureName, BOOL drawOnEnts) // 0x28477EC23D892089
--[[
enum MarkerTypes
{
    MarkerTypeUpsideDownCone = 0,
 MarkerTypeVerticalCylinder = 1,
   MarkerTypeThickChevronUp = 2,
 MarkerTypeThinChevronUp = 3,
  MarkerTypeCheckeredFlagRect = 4,
  MarkerTypeCheckeredFlagCircle = 5,
    MarkerTypeVerticleCircle = 6,
 MarkerTypePlaneModel = 7,
 MarkerTypeLostMCDark = 8,
 MarkerTypeLostMCLight = 9,
    MarkerTypeNumber0 = 10,
   MarkerTypeNumber1 = 11,
   MarkerTypeNumber2 = 12,
   MarkerTypeNumber3 = 13,
   MarkerTypeNumber4 = 14,
   MarkerTypeNumber5 = 15,
   MarkerTypeNumber6 = 16,
   MarkerTypeNumber7 = 17,
   MarkerTypeNumber8 = 18,
   MarkerTypeNumber9 = 19,
   MarkerTypeChevronUpx1 = 20,
   MarkerTypeChevronUpx2 = 21,
   MarkerTypeChevronUpx3 = 22,
   MarkerTypeHorizontalCircleFat = 23,
   MarkerTypeReplayIcon = 24,
    MarkerTypeHorizontalCircleSkinny = 25,
    MarkerTypeHorizontalCircleSkinny_Arrow = 26,
  MarkerTypeHorizontalSplitArrowCircle = 27,
    MarkerTypeDebugSphere = 28,
   MarkerTypeDallorSign = 29,
    MarkerTypeHorizontalBars = 30,
    MarkerTypeWolfHead = 31
};

dirX/Y/Z represent a heading on each axis in which the marker should face, alternatively you can rotate each axis independently with rotX/Y/Z (and set dirX/Y/Z all to 0).

faceCamera - Rotates only the y-axis (the heading) towards the camera

p19 - no effect, default value in script is 2

rotate - Rotates only on the y-axis (the heading)

textureDict - Name of texture dictionary to load texture from (e.g. "GolfPutting")

textureName - Name of texture inside dictionary to load (e.g. "PuttingMarker")

drawOnEnts - Draws the marker onto any entities that intersect it

basically what he said, except textureDict and textureName are totally not const char*, or if so, then they are always set to 0/NULL/nullptr in every script I checked, eg:

bj.c: graphics::draw_marker(6, vParam0, 0f, 0f, 1f, 0f, 0f, 0f, 4f, 4f, 4f, 240, 200, 80, iVar1, 0, 0, 2, 0, 0, 0, false);

his is what I used to draw an amber downward pointing chevron "V", has to be redrawn every frame.  The 180 is for 180 degrees rotation around the Y axis, the 50 is alpha, assuming max is 100, but it will accept 255.

GRAPHICS::DRAW_MARKER(2, v.x, v.y, v.z + 2, 0, 0, 0, 0, 180, 0, 2, 2, 2, 255, 128, 0, 50, 0, 1, 1, 0, 0, 0, 0);


--]]
function GRAPHICS.DRAW_MARKER(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts)
  native.invoke(
    Type.Void, 1047, false,
    arg(Type.Int, type),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, dirX),
    arg(Type.Float, dirY),
    arg(Type.Float, dirZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, scaleX),
    arg(Type.Float, scaleY),
    arg(Type.Float, scaleZ),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Bool, bobUpAndDown),
    arg(Type.Bool, faceCamera),
    arg(Type.Int, p19),
    arg(Type.Bool, rotate),
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Bool, drawOnEnts)
  )
end

-- void DRAW_MARKER_EX(int type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, Any p19, BOOL rotate, const char* textureDict, const char* textureName, BOOL drawOnEnts, BOOL p24, BOOL p25) // 0xE82728F0DE75D13A
function GRAPHICS.DRAW_MARKER_EX(type, posX, posY, posZ, dirX, dirY, dirZ, rotX, rotY, rotZ, scaleX, scaleY, scaleZ, red, green, blue, alpha, bobUpAndDown, faceCamera, p19, rotate, textureDict, textureName, drawOnEnts, p24, p25)
  native.invoke(
    Type.Void, 1048, false,
    arg(Type.Int, type),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, dirX),
    arg(Type.Float, dirY),
    arg(Type.Float, dirZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, scaleX),
    arg(Type.Float, scaleY),
    arg(Type.Float, scaleZ),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Bool, bobUpAndDown),
    arg(Type.Bool, faceCamera),
    arg(Type.Any, p19),
    arg(Type.Bool, rotate),
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Bool, drawOnEnts),
    arg(Type.Bool, p24),
    arg(Type.Bool, p25)
  )
end

-- void DRAW_MARKER_SPHERE(float x, float y, float z, float radius, int red, int green, int blue, float alpha) // 0x799017F9E3B10112
--[[
Draws a 3D sphere, typically seen in the GTA:O freemode event "Penned In".
Example https://imgur.com/nCbtS4H

alpha - The alpha for the sphere. Goes from 0.0 to 1.0.
--]]
function GRAPHICS.DRAW_MARKER_SPHERE(x, y, z, radius, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1049, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Float, alpha)
  )
end

-- int CREATE_CHECKPOINT(int type, float posX1, float posY1, float posZ1, float posX2, float posY2, float posZ2, float diameter, int red, int green, int blue, int alpha, int reserved) // 0x0134F0835AB6BFCB
--[[
Creates a checkpoint. Returns the handle of the checkpoint.

20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.

Parameters:
* type - The type of checkpoint to create. See below for a list of checkpoint types.
* pos1 - The position of the checkpoint.
* pos2 - The position of the next checkpoint to point to.
* radius - The radius of the checkpoint.
* color - The color of the checkpoint.
* reserved - Special parameter, see below for details. Usually set to 0 in the scripts.

Checkpoint types:
0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker
15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker      
20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker 
25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker    
30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker 
35-38-------Ring: Airplane Up, Left, Right, UpsideDown
39----------?
40----------Ring: just a ring
41----------?
42-44-------Cylinder w/ number (uses 'reserved' parameter)
45-47-------Cylinder no arrow or number

If using type 42-44, reserved sets number / number and shape to display

0-99------------Just numbers (0-99)
100-109-----------------Arrow (0-9)
110-119------------Two arrows (0-9)
120-129----------Three arrows (0-9)
130-139----------------Circle (0-9)
140-149------------CycleArrow (0-9)
150-159----------------Circle (0-9)
160-169----Circle  w/ pointer (0-9)
170-179-------Perforated ring (0-9)
180-189----------------Sphere (0-9)
--]]
function GRAPHICS.CREATE_CHECKPOINT(type, posX1, posY1, posZ1, posX2, posY2, posZ2, diameter, red, green, blue, alpha, reserved)
  return native.invoke(
    Type.Int, 1050, false,
    arg(Type.Int, type),
    arg(Type.Float, posX1),
    arg(Type.Float, posY1),
    arg(Type.Float, posZ1),
    arg(Type.Float, posX2),
    arg(Type.Float, posY2),
    arg(Type.Float, posZ2),
    arg(Type.Float, diameter),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Int, reserved)
  )
end

-- void SET_CHECKPOINT_INSIDE_CYLINDER_HEIGHT_SCALE(int checkpoint, float scale) // 0x4B5B4DA5D79F1943
function GRAPHICS.SET_CHECKPOINT_INSIDE_CYLINDER_HEIGHT_SCALE(checkpoint, scale)
  native.invoke(
    Type.Void, 1051, false,
    arg(Type.Int, checkpoint),
    arg(Type.Float, scale)
  )
end

-- void SET_CHECKPOINT_INSIDE_CYLINDER_SCALE(int checkpoint, float scale) // 0x44621483FF966526
function GRAPHICS.SET_CHECKPOINT_INSIDE_CYLINDER_SCALE(checkpoint, scale)
  native.invoke(
    Type.Void, 1052, false,
    arg(Type.Int, checkpoint),
    arg(Type.Float, scale)
  )
end

-- void SET_CHECKPOINT_CYLINDER_HEIGHT(int checkpoint, float nearHeight, float farHeight, float radius) // 0x2707AAE9D9297D89
--[[
Sets the cylinder height of the checkpoint.

Parameters:
* nearHeight - The height of the checkpoint when inside of the radius.
* farHeight - The height of the checkpoint when outside of the radius.
* radius - The radius of the checkpoint.
--]]
function GRAPHICS.SET_CHECKPOINT_CYLINDER_HEIGHT(checkpoint, nearHeight, farHeight, radius)
  native.invoke(
    Type.Void, 1053, false,
    arg(Type.Int, checkpoint),
    arg(Type.Float, nearHeight),
    arg(Type.Float, farHeight),
    arg(Type.Float, radius)
  )
end

-- void SET_CHECKPOINT_RGBA(int checkpoint, int red, int green, int blue, int alpha) // 0x7167371E8AD747F7
--[[
Sets the checkpoint color.
--]]
function GRAPHICS.SET_CHECKPOINT_RGBA(checkpoint, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1054, false,
    arg(Type.Int, checkpoint),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void SET_CHECKPOINT_RGBA2(int checkpoint, int red, int green, int blue, int alpha) // 0xB9EA40907C680580
--[[
Sets the checkpoint icon color.
--]]
function GRAPHICS.SET_CHECKPOINT_RGBA2(checkpoint, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1055, false,
    arg(Type.Int, checkpoint),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void SET_CHECKPOINT_CLIPPLANE_WITH_POS_NORM(int checkpoint, float posX, float posY, float posZ, float unkX, float unkY, float unkZ) // 0xF51D36185993515D
--[[
This does not move an existing checkpoint... so wtf.
--]]
function GRAPHICS.SET_CHECKPOINT_CLIPPLANE_WITH_POS_NORM(checkpoint, posX, posY, posZ, unkX, unkY, unkZ)
  native.invoke(
    Type.Void, 1056, false,
    arg(Type.Int, checkpoint),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, unkX),
    arg(Type.Float, unkY),
    arg(Type.Float, unkZ)
  )
end

-- void SET_CHECKPOINT_FORCE_OLD_ARROW_POINTING(int checkpoint) // 0xFCF6788FC4860CD4
function GRAPHICS.SET_CHECKPOINT_FORCE_OLD_ARROW_POINTING(checkpoint)
  native.invoke(
    Type.Void, 1057, false,
    arg(Type.Int, checkpoint)
  )
end

-- void SET_CHECKPOINT_DECAL_ROT_ALIGNED_TO_CAMERA_ROT(int checkpoint) // 0x615D3925E87A3B26
--[[
Unknown. Called after creating a checkpoint (type: 51) in the creators.
--]]
function GRAPHICS.SET_CHECKPOINT_DECAL_ROT_ALIGNED_TO_CAMERA_ROT(checkpoint)
  native.invoke(
    Type.Void, 1058, false,
    arg(Type.Int, checkpoint)
  )
end

-- void SET_CHECKPOINT_FORCE_DIRECTION(int checkpoint) // 0xDB1EA9411C8911EC
function GRAPHICS.SET_CHECKPOINT_FORCE_DIRECTION(checkpoint)
  native.invoke(
    Type.Void, 1059, false,
    arg(Type.Int, checkpoint)
  )
end

-- void SET_CHECKPOINT_DIRECTION(int checkpoint, float posX, float posY, float posZ) // 0x3C788E7F6438754D
function GRAPHICS.SET_CHECKPOINT_DIRECTION(checkpoint, posX, posY, posZ)
  native.invoke(
    Type.Void, 1060, false,
    arg(Type.Int, checkpoint),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- void DELETE_CHECKPOINT(int checkpoint) // 0xF5ED37F54CD4D52E
function GRAPHICS.DELETE_CHECKPOINT(checkpoint)
  native.invoke(
    Type.Void, 1061, false,
    arg(Type.Int, checkpoint)
  )
end

-- void DONT_RENDER_IN_GAME_UI(BOOL p0) // 0x22A249A53034450A
function GRAPHICS.DONT_RENDER_IN_GAME_UI(p0)
  native.invoke(
    Type.Void, 1062, false,
    arg(Type.Bool, p0)
  )
end

-- void FORCE_RENDER_IN_GAME_UI(BOOL toggle) // 0xDC459CFA0CCE245B
function GRAPHICS.FORCE_RENDER_IN_GAME_UI(toggle)
  native.invoke(
    Type.Void, 1063, false,
    arg(Type.Bool, toggle)
  )
end

-- void REQUEST_STREAMED_TEXTURE_DICT(const char* textureDict, BOOL p1) // 0xDFA2EF8E04127DD5
--[[
This function can requests texture dictonaries from following RPFs:
scaleform_generic.rpf
scaleform_minigames.rpf
scaleform_minimap.rpf
scaleform_web.rpf

last param isnt a toggle
--]]
function GRAPHICS.REQUEST_STREAMED_TEXTURE_DICT(textureDict, p1)
  native.invoke(
    Type.Void, 1064, false,
    arg(Type.String, textureDict),
    arg(Type.Bool, p1)
  )
end

-- BOOL HAS_STREAMED_TEXTURE_DICT_LOADED(const char* textureDict) // 0x0145F696AAAAD2E4
function GRAPHICS.HAS_STREAMED_TEXTURE_DICT_LOADED(textureDict)
  return native.invoke(
    Type.Bool, 1065, false,
    arg(Type.String, textureDict)
  )
end

-- void SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED(const char* textureDict) // 0xBE2CACCF5A8AA805
function GRAPHICS.SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED(textureDict)
  native.invoke(
    Type.Void, 1066, false,
    arg(Type.String, textureDict)
  )
end

-- void DRAW_RECT(float x, float y, float width, float height, int r, int g, int b, int a, BOOL p8) // 0x3A618A217E5154F0
--[[
Draws a rectangle on the screen.

-x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)

-y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)

-width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)

-height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)

-R: Red part of the color. (0-255)

-G: Green part of the color. (0-255)

-B: Blue part of the color. (0-255)

-A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)

The total number of rectangles to be drawn in one frame is apparently limited to 399.

--]]
function GRAPHICS.DRAW_RECT(x, y, width, height, r, g, b, a, p8)
  native.invoke(
    Type.Void, 1067, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, width),
    arg(Type.Float, height),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, a),
    arg(Type.Bool, p8)
  )
end

-- void SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU(BOOL toggle) // 0xC6372ECD45D73BCD
--[[
Sets a flag defining whether or not script draw commands should continue being drawn behind the pause menu. This is usually used for TV channels and other draw commands that are used with a world render target.
--]]
function GRAPHICS.SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU(toggle)
  native.invoke(
    Type.Void, 1068, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_SCRIPT_GFX_DRAW_ORDER(int drawOrder) // 0x61BB1D9B3A95D802
--[[
Sets the draw order for script draw commands.

Examples from decompiled scripts:
GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);
GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v_4, v_5, v_6, a_0._f172, 0);

GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);
GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);
--]]
function GRAPHICS.SET_SCRIPT_GFX_DRAW_ORDER(drawOrder)
  native.invoke(
    Type.Void, 1069, false,
    arg(Type.Int, drawOrder)
  )
end

-- void SET_SCRIPT_GFX_ALIGN(int horizontalAlign, int verticalAlign) // 0xB8A850F20A067EB6
--[[
horizontalAlign: The horizontal alignment. This can be 67 ('C'), 76 ('L'), or 82 ('R').
verticalAlign: The vertical alignment. This can be 67 ('C'), 66 ('B'), or 84 ('T').

This function anchors script draws to a side of the safe zone. This needs to be called to make the interface independent of the player's safe zone configuration.

These values are equivalent to alignX and alignY in common:/data/ui/frontend.xml, which can be used as a baseline for default alignment.

Using any other value (including 0) will result in the safe zone not being taken into account for this draw. The canonical value for this is 'I' (73).

For example, you can use SET_SCRIPT_GFX_ALIGN(0, 84) to only scale on the Y axis (to the top), but not change the X axis.

To reset the value, use RESET_SCRIPT_GFX_ALIGN.
--]]
function GRAPHICS.SET_SCRIPT_GFX_ALIGN(horizontalAlign, verticalAlign)
  native.invoke(
    Type.Void, 1070, false,
    arg(Type.Int, horizontalAlign),
    arg(Type.Int, verticalAlign)
  )
end

-- void RESET_SCRIPT_GFX_ALIGN() // 0xE3A3DB414A373DAB
--[[
This function resets the alignment set using SET_SCRIPT_GFX_ALIGN and SET_SCRIPT_GFX_ALIGN_PARAMS to the default values ('I', 'I'; 0, 0, 0, 0).
This should be used after having used the aforementioned functions in order to not affect any other scripts attempting to draw.
--]]
function GRAPHICS.RESET_SCRIPT_GFX_ALIGN()
  native.invoke(
    Type.Void, 1071, false
  )
end

-- void SET_SCRIPT_GFX_ALIGN_PARAMS(float x, float y, float w, float h) // 0xF5A2C681787E579D
--[[
Sets the draw offset/calculated size for SET_SCRIPT_GFX_ALIGN. If using any alignment other than left/top, the game expects the width/height to be configured using this native in order to get a proper starting position for the draw command.
--]]
function GRAPHICS.SET_SCRIPT_GFX_ALIGN_PARAMS(x, y, w, h)
  native.invoke(
    Type.Void, 1072, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, w),
    arg(Type.Float, h)
  )
end

-- void GET_SCRIPT_GFX_ALIGN_POSITION(float x, float y, float* calculatedX, float* calculatedY) // 0x6DD8F5AA635EB4B2
--[[
Calculates the effective X/Y fractions when applying the values set by SET_SCRIPT_GFX_ALIGN and SET_SCRIPT_GFX_ALIGN_PARAMS
--]]
function GRAPHICS.GET_SCRIPT_GFX_ALIGN_POSITION(x, y, calculatedX, calculatedY)
  native.invoke(
    Type.Void, 1073, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    ref(Type.Float, calculatedX),
    ref(Type.Float, calculatedY)
  )
end

-- float GET_SAFE_ZONE_SIZE() // 0xBAF107B6BB2C97F0
--[[
Gets the scale of safe zone. if the safe zone size scale is max, it will return 1.0.
--]]
function GRAPHICS.GET_SAFE_ZONE_SIZE()
  return native.invoke(
    Type.Float, 1074, false
  )
end

-- void DRAW_SPRITE(const char* textureDict, const char* textureName, float screenX, float screenY, float width, float height, float heading, int red, int green, int blue, int alpha, BOOL p11, Any p12) // 0xE7FFAE5EBF23D890
--[[
Draws a 2D sprite on the screen.

Parameters:
textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)

textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)

screenX/Y - Screen offset (0.5 = center)
scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)

heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees

red,green,blue - Sprite color (default = 255/255/255)

alpha - opacity level
--]]
function GRAPHICS.DRAW_SPRITE(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha, p11, p12)
  native.invoke(
    Type.Void, 1075, false,
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Float, screenX),
    arg(Type.Float, screenY),
    arg(Type.Float, width),
    arg(Type.Float, height),
    arg(Type.Float, heading),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Bool, p11),
    arg(Type.Any, p12)
  )
end

-- void DRAW_SPRITE_ARX(const char* textureDict, const char* textureName, float x, float y, float width, float height, float p6, int red, int green, int blue, int alpha, Any p11, Any p12) // 0x2D3B147AFAD49DE0
--[[
Used in arcade games and Beam hack minigame in Doomsday Heist. I will most certainly dive into this to try replicate arcade games.
x position must be between 0.0 and 1.0 (1.0 being the most right side of the screen)
y position must be between 0.0 and 1.0 (1.0 being the most bottom side of the screen)
width 0.0 - 1.0 is the reasonable amount generally
height 0.0 - 1.0 is the reasonable amount generally
p6 almost always 0.0
p11 seems to be unknown but almost always 0 int
--]]
function GRAPHICS.DRAW_SPRITE_ARX(textureDict, textureName, x, y, width, height, p6, red, green, blue, alpha, p11, p12)
  native.invoke(
    Type.Void, 1076, false,
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, width),
    arg(Type.Float, height),
    arg(Type.Float, p6),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Any, p11),
    arg(Type.Any, p12)
  )
end

-- void DRAW_SPRITE_NAMED_RENDERTARGET(const char* textureDict, const char* textureName, float screenX, float screenY, float width, float height, float heading, int red, int green, int blue, int alpha, Any p11) // 0x2BC54A8188768488
--[[
Similar to _DRAW_SPRITE, but seems to be some kind of "interactive" sprite, at least used by render targets.
These seem to be the only dicts ever requested by this native:

prop_screen_biker_laptop
Prop_Screen_GR_Disruption
Prop_Screen_TaleOfUs
prop_screen_nightclub
Prop_Screen_IE_Adhawk
prop_screen_sm_free_trade_shipping
prop_screen_hacker_truck
MPDesktop
Prop_Screen_Nightclub
And a few others

--]]
function GRAPHICS.DRAW_SPRITE_NAMED_RENDERTARGET(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha, p11)
  native.invoke(
    Type.Void, 1077, false,
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Float, screenX),
    arg(Type.Float, screenY),
    arg(Type.Float, width),
    arg(Type.Float, height),
    arg(Type.Float, heading),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Any, p11)
  )
end

-- void DRAW_SPRITE_ARX_WITH_UV(const char* textureDict, const char* textureName, float x, float y, float width, float height, float u1, float v1, float u2, float v2, float heading, int red, int green, int blue, int alpha, Any p15) // 0x95812F9B26074726
--[[
Similar to DRAW_SPRITE, but allows to specify the texture coordinates used to draw the sprite.

u1, v1 - texture coordinates for the top-left corner
u2, v2 - texture coordinates for the bottom-right corner
--]]
function GRAPHICS.DRAW_SPRITE_ARX_WITH_UV(textureDict, textureName, x, y, width, height, u1, v1, u2, v2, heading, red, green, blue, alpha, p15)
  native.invoke(
    Type.Void, 1078, false,
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, width),
    arg(Type.Float, height),
    arg(Type.Float, u1),
    arg(Type.Float, v1),
    arg(Type.Float, u2),
    arg(Type.Float, v2),
    arg(Type.Float, heading),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Any, p15)
  )
end

-- int ADD_ENTITY_ICON(Entity entity, const char* icon) // 0x9CD43EEE12BF4DD0
--[[
Example:
GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");

I tried this and nothing happened...
--]]
function GRAPHICS.ADD_ENTITY_ICON(entity, icon)
  return native.invoke(
    Type.Int, 1079, false,
    arg(Type.Entity, entity),
    arg(Type.String, icon)
  )
end

-- void SET_ENTITY_ICON_VISIBILITY(Entity entity, BOOL toggle) // 0xE0E8BEECCA96BA31
function GRAPHICS.SET_ENTITY_ICON_VISIBILITY(entity, toggle)
  native.invoke(
    Type.Void, 1080, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ENTITY_ICON_COLOR(Entity entity, int red, int green, int blue, int alpha) // 0x1D5F595CCAE2E238
function GRAPHICS.SET_ENTITY_ICON_COLOR(entity, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1081, false,
    arg(Type.Entity, entity),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void SET_DRAW_ORIGIN(float x, float y, float z, BOOL p3) // 0xAA0008F3BBB8F416
--[[
Sets the on-screen drawing origin for draw-functions (which is normally x=0,y=0 in the upper left corner of the screen) to a world coordinate.
From now on, the screen coordinate which displays the given world coordinate on the screen is seen as x=0,y=0.

Example in C#:
Vector3 boneCoord = somePed.GetBoneCoord(Bone.SKEL_Head);
Function.Call(Hash.SET_DRAW_ORIGIN, boneCoord.X, boneCoord.Y, boneCoord.Z, 0);
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, -0.015, 0.013, 0.013, 0.0, 255, 0, 0, 200);
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, -0.015, 0.013, 0.013, 90.0, 255, 0, 0, 200);
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, 0.015, 0.013, 0.013, 270.0, 255, 0, 0, 200);
Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, 0.015, 0.013, 0.013, 180.0, 255, 0, 0, 200);
Function.Call(Hash.CLEAR_DRAW_ORIGIN);

Result: www11.pic-upload.de/19.06.15/bkqohvil2uao.jpg
If the pedestrian starts walking around now, the sprites are always around her head, no matter where the head is displayed on the screen.

This function also effects the drawing of texts and other UI-elements.
The effect can be reset by calling GRAPHICS::CLEAR_DRAW_ORIGIN().
--]]
function GRAPHICS.SET_DRAW_ORIGIN(x, y, z, p3)
  native.invoke(
    Type.Void, 1082, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p3)
  )
end

-- void CLEAR_DRAW_ORIGIN() // 0xFF0B610F6BE0D7AF
--[[
Resets the screen's draw-origin which was changed by the function GRAPHICS::SET_DRAW_ORIGIN(...) back to x=0,y=0.

See GRAPHICS::SET_DRAW_ORIGIN(...) for further information.
--]]
function GRAPHICS.CLEAR_DRAW_ORIGIN()
  native.invoke(
    Type.Void, 1083, false
  )
end

-- int SET_BINK_MOVIE(const char* name) // 0x338D9F609FD632DB
function GRAPHICS.SET_BINK_MOVIE(name)
  return native.invoke(
    Type.Int, 1084, false,
    arg(Type.String, name)
  )
end

-- void PLAY_BINK_MOVIE(int binkMovie) // 0x70D2CC8A542A973C
function GRAPHICS.PLAY_BINK_MOVIE(binkMovie)
  native.invoke(
    Type.Void, 1085, false,
    arg(Type.Int, binkMovie)
  )
end

-- void STOP_BINK_MOVIE(int binkMovie) // 0x63606A61DE68898A
function GRAPHICS.STOP_BINK_MOVIE(binkMovie)
  native.invoke(
    Type.Void, 1086, false,
    arg(Type.Int, binkMovie)
  )
end

-- void RELEASE_BINK_MOVIE(int binkMovie) // 0x04D950EEFA4EED8C
function GRAPHICS.RELEASE_BINK_MOVIE(binkMovie)
  native.invoke(
    Type.Void, 1087, false,
    arg(Type.Int, binkMovie)
  )
end

-- void DRAW_BINK_MOVIE(int binkMovie, float p1, float p2, float p3, float p4, float p5, int r, int g, int b, int a) // 0x7118E83EEB9F7238
function GRAPHICS.DRAW_BINK_MOVIE(binkMovie, p1, p2, p3, p4, p5, r, g, b, a)
  native.invoke(
    Type.Void, 1088, false,
    arg(Type.Int, binkMovie),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, a)
  )
end

-- void SET_BINK_MOVIE_TIME(int binkMovie, float progress) // 0x0CB6B3446855B57A
--[[
In percentage: 0.0 - 100.0
--]]
function GRAPHICS.SET_BINK_MOVIE_TIME(binkMovie, progress)
  native.invoke(
    Type.Void, 1089, false,
    arg(Type.Int, binkMovie),
    arg(Type.Float, progress)
  )
end

-- float GET_BINK_MOVIE_TIME(int binkMovie) // 0x8E17DDD6B9D5BF29
--[[
In percentage: 0.0 - 100.0
--]]
function GRAPHICS.GET_BINK_MOVIE_TIME(binkMovie)
  return native.invoke(
    Type.Float, 1090, false,
    arg(Type.Int, binkMovie)
  )
end

-- void SET_BINK_MOVIE_VOLUME(int binkMovie, float value) // 0xAFF33B1178172223
--[[
binkMovie: Is return value from _SET_BINK_MOVIE. Has something to do with bink volume? (audRequestedSettings::SetVolumeCurveScale)
--]]
function GRAPHICS.SET_BINK_MOVIE_VOLUME(binkMovie, value)
  native.invoke(
    Type.Void, 1091, false,
    arg(Type.Int, binkMovie),
    arg(Type.Float, value)
  )
end

-- void ATTACH_TV_AUDIO_TO_ENTITY(Entity entity) // 0x845BAD77CC770633
--[[
Might be more appropriate in AUDIO?
--]]
function GRAPHICS.ATTACH_TV_AUDIO_TO_ENTITY(entity)
  native.invoke(
    Type.Void, 1092, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_BINK_MOVIE_AUDIO_FRONTEND(int binkMovie, BOOL p1) // 0xF816F2933752322D
function GRAPHICS.SET_BINK_MOVIE_AUDIO_FRONTEND(binkMovie, p1)
  native.invoke(
    Type.Void, 1093, false,
    arg(Type.Int, binkMovie),
    arg(Type.Bool, p1)
  )
end

-- void SET_TV_AUDIO_FRONTEND(BOOL toggle) // 0x113D2C5DC57E1774
--[[
Probably changes tvs from being a 3d audio to being "global" audio
--]]
function GRAPHICS.SET_TV_AUDIO_FRONTEND(toggle)
  native.invoke(
    Type.Void, 1094, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_BINK_SHOULD_SKIP(int binkMovie, BOOL bShouldSkip) // 0x6805D58CAA427B72
function GRAPHICS.SET_BINK_SHOULD_SKIP(binkMovie, bShouldSkip)
  native.invoke(
    Type.Void, 1095, false,
    arg(Type.Int, binkMovie),
    arg(Type.Bool, bShouldSkip)
  )
end

-- int LOAD_MOVIE_MESH_SET(const char* movieMeshSetName) // 0xB66064452270E8F1
function GRAPHICS.LOAD_MOVIE_MESH_SET(movieMeshSetName)
  return native.invoke(
    Type.Int, 1096, false,
    arg(Type.String, movieMeshSetName)
  )
end

-- void RELEASE_MOVIE_MESH_SET(int movieMeshSet) // 0xEB119AA014E89183
function GRAPHICS.RELEASE_MOVIE_MESH_SET(movieMeshSet)
  native.invoke(
    Type.Void, 1097, false,
    arg(Type.Int, movieMeshSet)
  )
end

-- int QUERY_MOVIE_MESH_SET_STATE(Any p0) // 0x9B6E70C5CEEF4EEB
function GRAPHICS.QUERY_MOVIE_MESH_SET_STATE(p0)
  return native.invoke(
    Type.Int, 1098, false,
    arg(Type.Any, p0)
  )
end

-- void GET_SCREEN_RESOLUTION(int* x, int* y) // 0x888D57E407E63624
--[[
int screenresx,screenresy;
GET_SCREEN_RESOLUTION(&screenresx,&screenresy);
--]]
function GRAPHICS.GET_SCREEN_RESOLUTION(x, y)
  native.invoke(
    Type.Void, 1099, false,
    ref(Type.Int, x),
    ref(Type.Int, y)
  )
end

-- void GET_ACTUAL_SCREEN_RESOLUTION(int* x, int* y) // 0x873C9F3104101DD3
--[[
Returns current screen resolution.
--]]
function GRAPHICS.GET_ACTUAL_SCREEN_RESOLUTION(x, y)
  native.invoke(
    Type.Void, 1100, false,
    ref(Type.Int, x),
    ref(Type.Int, y)
  )
end

-- float GET_ASPECT_RATIO(BOOL b) // 0xF1307EF624A80D87
function GRAPHICS.GET_ASPECT_RATIO(b)
  return native.invoke(
    Type.Float, 1101, false,
    arg(Type.Bool, b)
  )
end

-- float GET_SCREEN_ASPECT_RATIO() // 0xB2EBE8CBC58B90E9
function GRAPHICS.GET_SCREEN_ASPECT_RATIO()
  return native.invoke(
    Type.Float, 1102, false
  )
end

-- BOOL GET_IS_WIDESCREEN() // 0x30CF4BDA4FCB1905
--[[
Setting Aspect Ratio Manually in game will return:

false - for Narrow format Aspect Ratios (3:2, 4:3, 5:4, etc. )
true - for Wide format Aspect Ratios (5:3, 16:9, 16:10, etc. )

Setting Aspect Ratio to "Auto" in game will return "false" or "true" based on the actual set Resolution Ratio.
--]]
function GRAPHICS.GET_IS_WIDESCREEN()
  return native.invoke(
    Type.Bool, 1103, false
  )
end

-- BOOL GET_IS_HIDEF() // 0x84ED31191CC5D2C9
--[[
false = Any resolution < 1280x720
true = Any resolution >= 1280x720
--]]
function GRAPHICS.GET_IS_HIDEF()
  return native.invoke(
    Type.Bool, 1104, false
  )
end

-- void ADJUST_NEXT_POS_SIZE_AS_NORMALIZED_16_9() // 0xEFABC7722293DA7C
function GRAPHICS.ADJUST_NEXT_POS_SIZE_AS_NORMALIZED_16_9()
  native.invoke(
    Type.Void, 1105, false
  )
end

-- void SET_NIGHTVISION(BOOL toggle) // 0x18F621F7A5B1F85D
--[[
Enables Night Vision.

Example:
C#: Function.Call(Hash.SET_NIGHTVISION, true);
C++: GRAPHICS::SET_NIGHTVISION(true);

BOOL toggle:
true = turns night vision on for your player.
false = turns night vision off for your player.
--]]
function GRAPHICS.SET_NIGHTVISION(toggle)
  native.invoke(
    Type.Void, 1106, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_REQUESTINGNIGHTVISION() // 0x35FB78DC42B7BD21
function GRAPHICS.GET_REQUESTINGNIGHTVISION()
  return native.invoke(
    Type.Bool, 1107, false
  )
end

-- BOOL GET_USINGNIGHTVISION() // 0x2202A3F42C8E5F79
function GRAPHICS.GET_USINGNIGHTVISION()
  return native.invoke(
    Type.Bool, 1108, false
  )
end

-- void SET_EXPOSURETWEAK(BOOL toggle) // 0xEF398BEEE4EF45F9
function GRAPHICS.SET_EXPOSURETWEAK(toggle)
  native.invoke(
    Type.Void, 1109, false,
    arg(Type.Bool, toggle)
  )
end

-- void FORCE_EXPOSURE_READBACK(BOOL toggle) // 0x814AF7DCAACC597B
function GRAPHICS.FORCE_EXPOSURE_READBACK(toggle)
  native.invoke(
    Type.Void, 1110, false,
    arg(Type.Bool, toggle)
  )
end

-- void OVERRIDE_NIGHTVISION_LIGHT_RANGE(float p0) // 0x43FA7CBE20DAB219
function GRAPHICS.OVERRIDE_NIGHTVISION_LIGHT_RANGE(p0)
  native.invoke(
    Type.Void, 1111, false,
    arg(Type.Float, p0)
  )
end

-- void SET_NOISEOVERIDE(BOOL toggle) // 0xE787BF1C5CF823C9
function GRAPHICS.SET_NOISEOVERIDE(toggle)
  native.invoke(
    Type.Void, 1112, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_NOISINESSOVERIDE(float value) // 0xCB6A7C3BB17A0C67
function GRAPHICS.SET_NOISINESSOVERIDE(value)
  native.invoke(
    Type.Void, 1113, false,
    arg(Type.Float, value)
  )
end

-- BOOL GET_SCREEN_COORD_FROM_WORLD_COORD(float worldX, float worldY, float worldZ, float* screenX, float* screenY) // 0x34E82F05DF2974F5
--[[
Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)

Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.


For .NET users...

VB:
Public Shared Function World3DToScreen2d(pos as vector3) As Vector2

        Dim x2dp, y2dp As New Native.OutputArgument

        Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)
        Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))
      
    End Function

C#:
Vector2 World3DToScreen2d(Vector3 pos)
    {
        var x2dp = new OutputArgument();
        var y2dp = new OutputArgument();

        Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);
        return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());
    }
//USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.

Used to be called _WORLD3D_TO_SCREEN2D

I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.
--]]
function GRAPHICS.GET_SCREEN_COORD_FROM_WORLD_COORD(worldX, worldY, worldZ, screenX, screenY)
  return native.invoke(
    Type.Bool, 1114, false,
    arg(Type.Float, worldX),
    arg(Type.Float, worldY),
    arg(Type.Float, worldZ),
    ref(Type.Float, screenX),
    ref(Type.Float, screenY)
  )
end

-- Vector3 GET_TEXTURE_RESOLUTION(const char* textureDict, const char* textureName) // 0x35736EE65BD00C11
--[[
Returns the texture resolution of the passed texture dict+name.

Note: Most texture resolutions are doubled compared to the console version of the game.
--]]
function GRAPHICS.GET_TEXTURE_RESOLUTION(textureDict, textureName)
  return native.invoke(
    Type.Vector3, 1115, false,
    arg(Type.String, textureDict),
    arg(Type.String, textureName)
  )
end

-- BOOL OVERRIDE_PED_CREW_LOGO_TEXTURE(Ped ped, const char* txd, const char* txn) // 0x95EB5E34F821BABE
--[[
Overriding ped badge texture to a passed texture. It's synced between players (even custom textures!), don't forget to request used dict on *all* clients to make it sync properly. Can be removed by passing empty strings.
--]]
function GRAPHICS.OVERRIDE_PED_CREW_LOGO_TEXTURE(ped, txd, txn)
  return native.invoke(
    Type.Bool, 1116, false,
    arg(Type.Ped, ped),
    arg(Type.String, txd),
    arg(Type.String, txn)
  )
end

-- void SET_DISTANCE_BLUR_STRENGTH_OVERRIDE(float p0) // 0xE2892E7E55D7073A
function GRAPHICS.SET_DISTANCE_BLUR_STRENGTH_OVERRIDE(p0)
  native.invoke(
    Type.Void, 1117, false,
    arg(Type.Float, p0)
  )
end

-- void SET_FLASH(float p0, float p1, float fadeIn, float duration, float fadeOut) // 0x0AB84296FED9CFC6
--[[
Purpose of p0 and p1 unknown.
--]]
function GRAPHICS.SET_FLASH(p0, p1, fadeIn, duration, fadeOut)
  native.invoke(
    Type.Void, 1118, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, fadeIn),
    arg(Type.Float, duration),
    arg(Type.Float, fadeOut)
  )
end

-- void DISABLE_OCCLUSION_THIS_FRAME() // 0x3669F1B198DCAA4F
function GRAPHICS.DISABLE_OCCLUSION_THIS_FRAME()
  native.invoke(
    Type.Void, 1119, false
  )
end

-- void SET_ARTIFICIAL_LIGHTS_STATE(BOOL state) // 0x1268615ACE24D504
--[[
Does not affect weapons, particles, fire/explosions, flashlights or the sun.
When set to true, all emissive textures (including ped components that have light effects), street lights, building lights, vehicle lights, etc will all be turned off.

Used in Humane Labs Heist for EMP.

state: True turns off all artificial light sources in the map: buildings, street lights, car lights, etc. False turns them back on.
--]]
function GRAPHICS.SET_ARTIFICIAL_LIGHTS_STATE(state)
  native.invoke(
    Type.Void, 1120, false,
    arg(Type.Bool, state)
  )
end

-- void SET_ARTIFICIAL_VEHICLE_LIGHTS_STATE(BOOL toggle) // 0xE2B187C0939B3D32
--[[
If "blackout" is enabled, this native allows you to ignore "blackout" for vehicles.
--]]
function GRAPHICS.SET_ARTIFICIAL_VEHICLE_LIGHTS_STATE(toggle)
  native.invoke(
    Type.Void, 1121, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISABLE_HDTEX_THIS_FRAME() // 0xC35A6D07C93802B2
function GRAPHICS.DISABLE_HDTEX_THIS_FRAME()
  native.invoke(
    Type.Void, 1122, false
  )
end

-- int CREATE_TRACKED_POINT() // 0xE2C9439ED45DEA60
--[[
Creates a tracked point, useful for checking the visibility of a 3D point on screen.
--]]
function GRAPHICS.CREATE_TRACKED_POINT()
  return native.invoke(
    Type.Int, 1123, false
  )
end

-- void SET_TRACKED_POINT_INFO(int point, float x, float y, float z, float radius) // 0x164ECBB3CF750CB0
function GRAPHICS.SET_TRACKED_POINT_INFO(point, x, y, z, radius)
  native.invoke(
    Type.Void, 1124, false,
    arg(Type.Int, point),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- BOOL IS_TRACKED_POINT_VISIBLE(int point) // 0xC45CCDAAC9221CA8
function GRAPHICS.IS_TRACKED_POINT_VISIBLE(point)
  return native.invoke(
    Type.Bool, 1125, false,
    arg(Type.Int, point)
  )
end

-- void DESTROY_TRACKED_POINT(int point) // 0xB25DC90BAD56CA42
function GRAPHICS.DESTROY_TRACKED_POINT(point)
  native.invoke(
    Type.Void, 1126, false,
    arg(Type.Int, point)
  )
end

-- int SET_GRASS_CULL_SPHERE(float p0, float p1, float p2, float p3) // 0xBE197EAA669238F4
--[[
This function is hard-coded to always return 0.
--]]
function GRAPHICS.SET_GRASS_CULL_SPHERE(p0, p1, p2, p3)
  return native.invoke(
    Type.Int, 1127, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void REMOVE_GRASS_CULL_SPHERE(int handle) // 0x61F95E5BB3E0A8C6
--[[
This native does absolutely nothing, just a nullsub
--]]
function GRAPHICS.REMOVE_GRASS_CULL_SPHERE(handle)
  native.invoke(
    Type.Void, 1128, false,
    arg(Type.Int, handle)
  )
end

-- void PROCGRASS_ENABLE_CULLSPHERE(int handle, float x, float y, float z, float scale) // 0xAE51BC858F32BA66
function GRAPHICS.PROCGRASS_ENABLE_CULLSPHERE(handle, x, y, z, scale)
  native.invoke(
    Type.Void, 1129, false,
    arg(Type.Int, handle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, scale)
  )
end

-- void PROCGRASS_DISABLE_CULLSPHERE(int handle) // 0x649C97D52332341A
function GRAPHICS.PROCGRASS_DISABLE_CULLSPHERE(handle)
  native.invoke(
    Type.Void, 1130, false,
    arg(Type.Int, handle)
  )
end

-- BOOL PROCGRASS_IS_CULLSPHERE_ENABLED(int handle) // 0x2C42340F916C5930
function GRAPHICS.PROCGRASS_IS_CULLSPHERE_ENABLED(handle)
  return native.invoke(
    Type.Bool, 1131, false,
    arg(Type.Int, handle)
  )
end

-- void PROCGRASS_ENABLE_AMBSCALESCAN() // 0x14FC5833464340A8
function GRAPHICS.PROCGRASS_ENABLE_AMBSCALESCAN()
  native.invoke(
    Type.Void, 1132, false
  )
end

-- void PROCGRASS_DISABLE_AMBSCALESCAN() // 0x0218BA067D249DEA
function GRAPHICS.PROCGRASS_DISABLE_AMBSCALESCAN()
  native.invoke(
    Type.Void, 1133, false
  )
end

-- void DISABLE_PROCOBJ_CREATION() // 0x1612C45F9E3E0D44
function GRAPHICS.DISABLE_PROCOBJ_CREATION()
  native.invoke(
    Type.Void, 1134, false
  )
end

-- void ENABLE_PROCOBJ_CREATION() // 0x5DEBD9C4DC995692
function GRAPHICS.ENABLE_PROCOBJ_CREATION()
  native.invoke(
    Type.Void, 1135, false
  )
end

-- void GRASSBATCH_ENABLE_FLATTENING_EXT_IN_SPHERE(float x, float y, float z, Any p3, float p4, float p5, float p6, float scale) // 0xAAE9BE70EC7C69AB
function GRAPHICS.GRASSBATCH_ENABLE_FLATTENING_EXT_IN_SPHERE(x, y, z, p3, p4, p5, p6, scale)
  native.invoke(
    Type.Void, 1136, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Any, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, scale)
  )
end

-- void GRASSBATCH_ENABLE_FLATTENING_IN_SPHERE(float x, float y, float z, float radius, float p4, float p5, float p6) // 0x6D955F6A9E0295B1
--[[
Wraps 0xAAE9BE70EC7C69AB with FLT_MAX as p7, Jenkins: 0x73E96210?
--]]
function GRAPHICS.GRASSBATCH_ENABLE_FLATTENING_IN_SPHERE(x, y, z, radius, p4, p5, p6)
  native.invoke(
    Type.Void, 1137, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6)
  )
end

-- void GRASSBATCH_DISABLE_FLATTENING() // 0x302C91AB2D477F7E
function GRAPHICS.GRASSBATCH_DISABLE_FLATTENING()
  native.invoke(
    Type.Void, 1138, false
  )
end

-- void CASCADE_SHADOWS_INIT_SESSION() // 0x03FC694AE06C5A20
function GRAPHICS.CASCADE_SHADOWS_INIT_SESSION()
  native.invoke(
    Type.Void, 1139, false
  )
end

-- void CASCADE_SHADOWS_SET_CASCADE_BOUNDS(Any p0, BOOL p1, float p2, float p3, float p4, float p5, BOOL p6, float p7) // 0xD2936CAB8B58FCBD
function GRAPHICS.CASCADE_SHADOWS_SET_CASCADE_BOUNDS(p0, p1, p2, p3, p4, p5, p6, p7)
  native.invoke(
    Type.Void, 1140, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Bool, p6),
    arg(Type.Float, p7)
  )
end

-- void CASCADE_SHADOWS_SET_CASCADE_BOUNDS_SCALE(float p0) // 0x5F0F3F56635809EF
function GRAPHICS.CASCADE_SHADOWS_SET_CASCADE_BOUNDS_SCALE(p0)
  native.invoke(
    Type.Void, 1141, false,
    arg(Type.Float, p0)
  )
end

-- void CASCADE_SHADOWS_SET_ENTITY_TRACKER_SCALE(float p0) // 0x5E9DAF5A20F15908
function GRAPHICS.CASCADE_SHADOWS_SET_ENTITY_TRACKER_SCALE(p0)
  native.invoke(
    Type.Void, 1142, false,
    arg(Type.Float, p0)
  )
end

-- void CASCADE_SHADOWS_SET_SPLIT_Z_EXP_WEIGHT(float p0) // 0x36F6626459D91457
function GRAPHICS.CASCADE_SHADOWS_SET_SPLIT_Z_EXP_WEIGHT(p0)
  native.invoke(
    Type.Void, 1143, false,
    arg(Type.Float, p0)
  )
end

-- void CASCADE_SHADOWS_SET_BOUND_POSITION(Any p0) // 0x259BA6D4E6F808F1
function GRAPHICS.CASCADE_SHADOWS_SET_BOUND_POSITION(p0)
  native.invoke(
    Type.Void, 1144, false,
    arg(Type.Any, p0)
  )
end

-- void CASCADE_SHADOWS_ENABLE_ENTITY_TRACKER(BOOL toggle) // 0x80ECBC0C856D3B0B
--[[
When this is set to ON, shadows only draw as you get nearer.

When OFF, they draw from a further distance.
--]]
function GRAPHICS.CASCADE_SHADOWS_ENABLE_ENTITY_TRACKER(toggle)
  native.invoke(
    Type.Void, 1145, false,
    arg(Type.Bool, toggle)
  )
end

-- void CASCADE_SHADOWS_SET_SCREEN_SIZE_CHECK_ENABLED(BOOL p0) // 0x25FC3E33A31AD0C9
function GRAPHICS.CASCADE_SHADOWS_SET_SCREEN_SIZE_CHECK_ENABLED(p0)
  native.invoke(
    Type.Void, 1146, false,
    arg(Type.Bool, p0)
  )
end

-- void CASCADE_SHADOWS_SET_SHADOW_SAMPLE_TYPE(const char* type) // 0xB11D94BC55F41932
--[[
Possible values:
"CSM_ST_POINT"
"CSM_ST_LINEAR"
"CSM_ST_TWOTAP"
"CSM_ST_BOX3x3"
"CSM_ST_BOX4x4"
"CSM_ST_DITHER2_LINEAR"
"CSM_ST_CUBIC"
"CSM_ST_DITHER4"
"CSM_ST_DITHER16"
"CSM_ST_SOFT16"
"CSM_ST_DITHER16_RPDB"
"CSM_ST_POISSON16_RPDB_GNORM"
"CSM_ST_HIGHRES_BOX4x4"
"CSM_ST_CLOUDS_SIMPLE"
"CSM_ST_CLOUDS_LINEAR"
"CSM_ST_CLOUDS_TWOTAP"
"CSM_ST_CLOUDS_BOX3x3"
"CSM_ST_CLOUDS_BOX4x4"
"CSM_ST_CLOUDS_DITHER2_LINEAR"
"CSM_ST_CLOUDS_SOFT16"
"CSM_ST_CLOUDS_DITHER16_RPDB"
"CSM_ST_CLOUDS_POISSON16_RPDB_GNORM"
--]]
function GRAPHICS.CASCADE_SHADOWS_SET_SHADOW_SAMPLE_TYPE(type)
  native.invoke(
    Type.Void, 1147, false,
    arg(Type.String, type)
  )
end

-- void CASCADE_SHADOWS_CLEAR_SHADOW_SAMPLE_TYPE() // 0x27CB772218215325
function GRAPHICS.CASCADE_SHADOWS_CLEAR_SHADOW_SAMPLE_TYPE()
  native.invoke(
    Type.Void, 1148, false
  )
end

-- void CASCADE_SHADOWS_SET_AIRCRAFT_MODE(BOOL p0) // 0x6DDBF9DFFC4AC080
function GRAPHICS.CASCADE_SHADOWS_SET_AIRCRAFT_MODE(p0)
  native.invoke(
    Type.Void, 1149, false,
    arg(Type.Bool, p0)
  )
end

-- void CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_MODE(BOOL p0) // 0xD39D13C9FEBF0511
function GRAPHICS.CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_MODE(p0)
  native.invoke(
    Type.Void, 1150, false,
    arg(Type.Bool, p0)
  )
end

-- void CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_VALUE(float p0) // 0x02AC28F3A01FA04A
function GRAPHICS.CASCADE_SHADOWS_SET_DYNAMIC_DEPTH_VALUE(p0)
  native.invoke(
    Type.Void, 1151, false,
    arg(Type.Float, p0)
  )
end

-- void CASCADE_SHADOWS_ENABLE_FREEZER(BOOL p0) // 0x0AE73D8DF3A762B2
function GRAPHICS.CASCADE_SHADOWS_ENABLE_FREEZER(p0)
  native.invoke(
    Type.Void, 1152, false,
    arg(Type.Bool, p0)
  )
end

-- void WATER_REFLECTION_SET_SCRIPT_OBJECT_VISIBILITY(Any p0) // 0xCA465D9CC0D231BA
function GRAPHICS.WATER_REFLECTION_SET_SCRIPT_OBJECT_VISIBILITY(p0)
  native.invoke(
    Type.Void, 1153, false,
    arg(Type.Any, p0)
  )
end

-- void GOLF_TRAIL_SET_ENABLED(BOOL toggle) // 0xA51C4B86B71652AE
function GRAPHICS.GOLF_TRAIL_SET_ENABLED(toggle)
  native.invoke(
    Type.Void, 1154, false,
    arg(Type.Bool, toggle)
  )
end

-- void GOLF_TRAIL_SET_PATH(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, BOOL p8) // 0x312342E1A4874F3F
--[[
p8 seems to always be false.
--]]
function GRAPHICS.GOLF_TRAIL_SET_PATH(p0, p1, p2, p3, p4, p5, p6, p7, p8)
  native.invoke(
    Type.Void, 1155, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Bool, p8)
  )
end

-- void GOLF_TRAIL_SET_RADIUS(float p0, float p1, float p2) // 0x2485D34E50A22E84
function GRAPHICS.GOLF_TRAIL_SET_RADIUS(p0, p1, p2)
  native.invoke(
    Type.Void, 1156, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2)
  )
end

-- void GOLF_TRAIL_SET_COLOUR(int p0, int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8, int p9, int p10, int p11) // 0x12995F2E53FFA601
function GRAPHICS.GOLF_TRAIL_SET_COLOUR(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11)
  native.invoke(
    Type.Void, 1157, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Int, p4),
    arg(Type.Int, p5),
    arg(Type.Int, p6),
    arg(Type.Int, p7),
    arg(Type.Int, p8),
    arg(Type.Int, p9),
    arg(Type.Int, p10),
    arg(Type.Int, p11)
  )
end

-- void GOLF_TRAIL_SET_TESSELLATION(int p0, int p1) // 0xDBAA5EC848BA2D46
function GRAPHICS.GOLF_TRAIL_SET_TESSELLATION(p0, p1)
  native.invoke(
    Type.Void, 1158, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1)
  )
end

-- void GOLF_TRAIL_SET_FIXED_CONTROL_POINT_ENABLE(BOOL p0) // 0xC0416B061F2B7E5E
function GRAPHICS.GOLF_TRAIL_SET_FIXED_CONTROL_POINT_ENABLE(p0)
  native.invoke(
    Type.Void, 1159, false,
    arg(Type.Bool, p0)
  )
end

-- void GOLF_TRAIL_SET_FIXED_CONTROL_POINT(int type, float xPos, float yPos, float zPos, float p4, int red, int green, int blue, int alpha) // 0xB1BB03742917A5D6
--[[
12 matches across 4 scripts. All 4 scripts were job creators.

type ranged from 0 - 2.
p4 was always 0.2f. Likely scale.
assuming p5 - p8 is RGBA, the graphic is always yellow (255, 255, 0, 255).

Tested but noticed nothing.
--]]
function GRAPHICS.GOLF_TRAIL_SET_FIXED_CONTROL_POINT(type, xPos, yPos, zPos, p4, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1160, false,
    arg(Type.Int, type),
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Float, p4),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void GOLF_TRAIL_SET_SHADER_PARAMS(float p0, float p1, float p2, float p3, float p4) // 0x9CFDD90B2B844BF7
--[[
Only appeared in Golf & Golf_mp. Parameters were all ptrs
--]]
function GRAPHICS.GOLF_TRAIL_SET_SHADER_PARAMS(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 1161, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4)
  )
end

-- void GOLF_TRAIL_SET_FACING(BOOL p0) // 0x06F761EA47C1D3ED
function GRAPHICS.GOLF_TRAIL_SET_FACING(p0)
  native.invoke(
    Type.Void, 1162, false,
    arg(Type.Bool, p0)
  )
end

-- float GOLF_TRAIL_GET_MAX_HEIGHT() // 0xA4819F5E23E2FFAD
function GRAPHICS.GOLF_TRAIL_GET_MAX_HEIGHT()
  return native.invoke(
    Type.Float, 1163, false
  )
end

-- Vector3 GOLF_TRAIL_GET_VISUAL_CONTROL_POINT(int p0) // 0xA4664972A9B8F8BA
function GRAPHICS.GOLF_TRAIL_GET_VISUAL_CONTROL_POINT(p0)
  return native.invoke(
    Type.Vector3, 1164, false,
    arg(Type.Int, p0)
  )
end

-- void SET_SEETHROUGH(BOOL toggle) // 0x7E08924259E08CE0
--[[
Toggles Heatvision on/off.
--]]
function GRAPHICS.SET_SEETHROUGH(toggle)
  native.invoke(
    Type.Void, 1165, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_USINGSEETHROUGH() // 0x44B80ABAB9D80BD3
function GRAPHICS.GET_USINGSEETHROUGH()
  return native.invoke(
    Type.Bool, 1166, false
  )
end

-- void SEETHROUGH_RESET() // 0x70A64C0234EF522C
function GRAPHICS.SEETHROUGH_RESET()
  native.invoke(
    Type.Void, 1167, false
  )
end

-- void SEETHROUGH_SET_FADE_STARTDISTANCE(float distance) // 0xA78DE25577300BA1
function GRAPHICS.SEETHROUGH_SET_FADE_STARTDISTANCE(distance)
  native.invoke(
    Type.Void, 1168, false,
    arg(Type.Float, distance)
  )
end

-- void SEETHROUGH_SET_FADE_ENDDISTANCE(float distance) // 0x9D75795B9DC6EBBF
function GRAPHICS.SEETHROUGH_SET_FADE_ENDDISTANCE(distance)
  native.invoke(
    Type.Void, 1169, false,
    arg(Type.Float, distance)
  )
end

-- float SEETHROUGH_GET_MAX_THICKNESS() // 0x43DBAE39626CE83F
function GRAPHICS.SEETHROUGH_GET_MAX_THICKNESS()
  return native.invoke(
    Type.Float, 1170, false
  )
end

-- void SEETHROUGH_SET_MAX_THICKNESS(float thickness) // 0x0C8FAC83902A62DF
--[[
0.0 = you will not be able to see people behind the walls. 50.0 and more = you will see everyone through the walls. More value is "better" view. See https://gfycat.com/FirmFlippantGourami
min: 1.0
max: 10000.0
--]]
function GRAPHICS.SEETHROUGH_SET_MAX_THICKNESS(thickness)
  native.invoke(
    Type.Void, 1171, false,
    arg(Type.Float, thickness)
  )
end

-- void SEETHROUGH_SET_NOISE_MIN(float amount) // 0xFF5992E1C9E65D05
function GRAPHICS.SEETHROUGH_SET_NOISE_MIN(amount)
  native.invoke(
    Type.Void, 1172, false,
    arg(Type.Float, amount)
  )
end

-- void SEETHROUGH_SET_NOISE_MAX(float amount) // 0xFEBFBFDFB66039DE
function GRAPHICS.SEETHROUGH_SET_NOISE_MAX(amount)
  native.invoke(
    Type.Void, 1173, false,
    arg(Type.Float, amount)
  )
end

-- void SEETHROUGH_SET_HILIGHT_INTENSITY(float intensity) // 0x19E50EB6E33E1D28
function GRAPHICS.SEETHROUGH_SET_HILIGHT_INTENSITY(intensity)
  native.invoke(
    Type.Void, 1174, false,
    arg(Type.Float, intensity)
  )
end

-- void SEETHROUGH_SET_HIGHLIGHT_NOISE(float noise) // 0x1636D7FC127B10D2
function GRAPHICS.SEETHROUGH_SET_HIGHLIGHT_NOISE(noise)
  native.invoke(
    Type.Void, 1175, false,
    arg(Type.Float, noise)
  )
end

-- void SEETHROUGH_SET_HEATSCALE(int index, float heatScale) // 0xD7D0B00177485411
--[[
min: 0.0
max: 0.75
--]]
function GRAPHICS.SEETHROUGH_SET_HEATSCALE(index, heatScale)
  native.invoke(
    Type.Void, 1176, false,
    arg(Type.Int, index),
    arg(Type.Float, heatScale)
  )
end

-- void SEETHROUGH_SET_COLOR_NEAR(int red, int green, int blue) // 0x1086127B3A63505E
function GRAPHICS.SEETHROUGH_SET_COLOR_NEAR(red, green, blue)
  native.invoke(
    Type.Void, 1177, false,
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue)
  )
end

-- void SET_MOTIONBLUR_MAX_VEL_SCALER(float p0) // 0xB3C641F3630BF6DA
--[[
Setter for GET_MOTIONBLUR_MAX_VEL_SCALER
--]]
function GRAPHICS.SET_MOTIONBLUR_MAX_VEL_SCALER(p0)
  native.invoke(
    Type.Void, 1178, false,
    arg(Type.Float, p0)
  )
end

-- float GET_MOTIONBLUR_MAX_VEL_SCALER() // 0xE59343E9E96529E7
--[[
Getter for SET_MOTIONBLUR_MAX_VEL_SCALER
--]]
function GRAPHICS.GET_MOTIONBLUR_MAX_VEL_SCALER()
  return native.invoke(
    Type.Float, 1179, false
  )
end

-- void SET_FORCE_MOTIONBLUR(BOOL toggle) // 0x6A51F78772175A51
function GRAPHICS.SET_FORCE_MOTIONBLUR(toggle)
  native.invoke(
    Type.Void, 1180, false,
    arg(Type.Bool, toggle)
  )
end

-- void TOGGLE_PLAYER_DAMAGE_OVERLAY(BOOL toggle) // 0xE63D7C6EECECB66B
function GRAPHICS.TOGGLE_PLAYER_DAMAGE_OVERLAY(toggle)
  native.invoke(
    Type.Void, 1181, false,
    arg(Type.Bool, toggle)
  )
end

-- void RESET_ADAPTATION(int p0) // 0xE3E2C1B4C59DBC77
--[[
Sets an value related to timecycles.
--]]
function GRAPHICS.RESET_ADAPTATION(p0)
  native.invoke(
    Type.Void, 1182, false,
    arg(Type.Int, p0)
  )
end

-- BOOL TRIGGER_SCREENBLUR_FADE_IN(float transitionTime) // 0xA328A24AAA6B7FDC
--[[
time in ms to transition to fully blurred screen
--]]
function GRAPHICS.TRIGGER_SCREENBLUR_FADE_IN(transitionTime)
  return native.invoke(
    Type.Bool, 1183, false,
    arg(Type.Float, transitionTime)
  )
end

-- BOOL TRIGGER_SCREENBLUR_FADE_OUT(float transitionTime) // 0xEFACC8AEF94430D5
--[[
time in ms to transition from fully blurred to normal
--]]
function GRAPHICS.TRIGGER_SCREENBLUR_FADE_OUT(transitionTime)
  return native.invoke(
    Type.Bool, 1184, false,
    arg(Type.Float, transitionTime)
  )
end

-- void DISABLE_SCREENBLUR_FADE() // 0xDE81239437E8C5A8
function GRAPHICS.DISABLE_SCREENBLUR_FADE()
  native.invoke(
    Type.Void, 1185, false
  )
end

-- float GET_SCREENBLUR_FADE_CURRENT_TIME() // 0x5CCABFFCA31DDE33
function GRAPHICS.GET_SCREENBLUR_FADE_CURRENT_TIME()
  return native.invoke(
    Type.Float, 1186, false
  )
end

-- BOOL IS_SCREENBLUR_FADE_RUNNING() // 0x7B226C785A52A0A9
--[[
Returns whether screen transition to blur/from blur is running.
--]]
function GRAPHICS.IS_SCREENBLUR_FADE_RUNNING()
  return native.invoke(
    Type.Bool, 1187, false
  )
end

-- void TOGGLE_PAUSED_RENDERPHASES(BOOL toggle) // 0xDFC252D8A3E15AB7
function GRAPHICS.TOGGLE_PAUSED_RENDERPHASES(toggle)
  native.invoke(
    Type.Void, 1188, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_TOGGLE_PAUSED_RENDERPHASES_STATUS() // 0xEB3DAC2C86001E5E
function GRAPHICS.GET_TOGGLE_PAUSED_RENDERPHASES_STATUS()
  return native.invoke(
    Type.Bool, 1189, false
  )
end

-- void RESET_PAUSED_RENDERPHASES() // 0xE1C8709406F2C41C
function GRAPHICS.RESET_PAUSED_RENDERPHASES()
  native.invoke(
    Type.Void, 1190, false
  )
end

-- void GRAB_PAUSEMENU_OWNERSHIP() // 0x851CD923176EBA7C
function GRAPHICS.GRAB_PAUSEMENU_OWNERSHIP()
  native.invoke(
    Type.Void, 1191, false
  )
end

-- void SET_HIDOF_OVERRIDE(BOOL p0, BOOL p1, float nearplaneOut, float nearplaneIn, float farplaneOut, float farplaneIn) // 0xBA3D65906822BED5
function GRAPHICS.SET_HIDOF_OVERRIDE(p0, p1, nearplaneOut, nearplaneIn, farplaneOut, farplaneIn)
  native.invoke(
    Type.Void, 1192, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1),
    arg(Type.Float, nearplaneOut),
    arg(Type.Float, nearplaneIn),
    arg(Type.Float, farplaneOut),
    arg(Type.Float, farplaneIn)
  )
end

-- void SET_LOCK_ADAPTIVE_DOF_DISTANCE(BOOL p0) // 0xB569F41F3E7E83A4
function GRAPHICS.SET_LOCK_ADAPTIVE_DOF_DISTANCE(p0)
  native.invoke(
    Type.Void, 1193, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL PHONEPHOTOEDITOR_TOGGLE(BOOL p0) // 0x7AC24EAB6D74118D
function GRAPHICS.PHONEPHOTOEDITOR_TOGGLE(p0)
  return native.invoke(
    Type.Bool, 1194, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL PHONEPHOTOEDITOR_IS_ACTIVE() // 0xBCEDB009461DA156
function GRAPHICS.PHONEPHOTOEDITOR_IS_ACTIVE()
  return native.invoke(
    Type.Bool, 1195, false
  )
end

-- BOOL PHONEPHOTOEDITOR_SET_FRAME_TXD(const char* textureDict, BOOL p1) // 0x27FEB5254759CDE3
function GRAPHICS.PHONEPHOTOEDITOR_SET_FRAME_TXD(textureDict, p1)
  return native.invoke(
    Type.Bool, 1196, false,
    arg(Type.String, textureDict),
    arg(Type.Bool, p1)
  )
end

-- BOOL START_PARTICLE_FX_NON_LOOPED_AT_COORD(const char* effectName, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis) // 0x25129531F77B9ED3
--[[
GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);

Axis - Invert Axis Flags

Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json


-------------------------------------------------------------------
C#

Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.

char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc

float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates

float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.

float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f

bool xaxis, yaxis, zaxis = To bool the axis values.

example:
Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);
--]]
function GRAPHICS.START_PARTICLE_FX_NON_LOOPED_AT_COORD(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
  return native.invoke(
    Type.Bool, 1197, false,
    arg(Type.String, effectName),
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, scale),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis)
  )
end

-- BOOL START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(const char* effectName, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis, BOOL p11) // 0xF56B8137DF10135D
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(effectName, xPos, yPos, zPos, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, p11)
  return native.invoke(
    Type.Bool, 1198, false,
    arg(Type.String, effectName),
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, zPos),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, scale),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis),
    arg(Type.Bool, p11)
  )
end

-- BOOL START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE(const char* effectName, Ped ped, float offsetX, float offsetY, float offsetZ, float rotX, float rotY, float rotZ, int boneIndex, float scale, BOOL axisX, BOOL axisY, BOOL axisZ) // 0x0E7E72961BA18619
--[[
GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);

Axis - Invert Axis Flags

Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ)
  return native.invoke(
    Type.Bool, 1199, false,
    arg(Type.String, effectName),
    arg(Type.Ped, ped),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Int, boneIndex),
    arg(Type.Float, scale),
    arg(Type.Bool, axisX),
    arg(Type.Bool, axisY),
    arg(Type.Bool, axisZ)
  )
end

-- BOOL START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE(const char* effectName, Ped ped, float offsetX, float offsetY, float offsetZ, float rotX, float rotY, float rotZ, int boneIndex, float scale, BOOL axisX, BOOL axisY, BOOL axisZ) // 0xA41B6A43642AC2CF
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE(effectName, ped, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ)
  return native.invoke(
    Type.Bool, 1200, false,
    arg(Type.String, effectName),
    arg(Type.Ped, ped),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Int, boneIndex),
    arg(Type.Float, scale),
    arg(Type.Bool, axisX),
    arg(Type.Bool, axisY),
    arg(Type.Bool, axisZ)
  )
end

-- BOOL START_PARTICLE_FX_NON_LOOPED_ON_ENTITY(const char* effectName, Entity entity, float offsetX, float offsetY, float offsetZ, float rotX, float rotY, float rotZ, float scale, BOOL axisX, BOOL axisY, BOOL axisZ) // 0x0D53A3B8DA0809D2
--[[
Starts a particle effect on an entity for example your player.

Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json

Example:
C#:
Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash.USE_PARTICLE_FX_ASSET, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);

Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE
however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native

-can confirm START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE does NOT work on vehicle bones.
--]]
function GRAPHICS.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ)
  return native.invoke(
    Type.Bool, 1201, false,
    arg(Type.String, effectName),
    arg(Type.Entity, entity),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, scale),
    arg(Type.Bool, axisX),
    arg(Type.Bool, axisY),
    arg(Type.Bool, axisZ)
  )
end

-- BOOL START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(const char* effectName, Entity entity, float offsetX, float offsetY, float offsetZ, float rotX, float rotY, float rotZ, float scale, BOOL axisX, BOOL axisY, BOOL axisZ) // 0xC95EB1DB6E92113D
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ)
  return native.invoke(
    Type.Bool, 1202, false,
    arg(Type.String, effectName),
    arg(Type.Entity, entity),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, scale),
    arg(Type.Bool, axisX),
    arg(Type.Bool, axisY),
    arg(Type.Bool, axisZ)
  )
end

-- BOOL START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE(const char* effectName, Entity entity, float offsetX, float offsetY, float offsetZ, float rotX, float rotY, float rotZ, int boneIndex, float scale, BOOL axisX, BOOL axisY, BOOL axisZ) // 0x02B1F2A72E0F5325
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, boneIndex, scale, axisX, axisY, axisZ)
  return native.invoke(
    Type.Bool, 1203, false,
    arg(Type.String, effectName),
    arg(Type.Entity, entity),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY),
    arg(Type.Float, offsetZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Int, boneIndex),
    arg(Type.Float, scale),
    arg(Type.Bool, axisX),
    arg(Type.Bool, axisY),
    arg(Type.Bool, axisZ)
  )
end

-- void SET_PARTICLE_FX_NON_LOOPED_COLOUR(float r, float g, float b) // 0x26143A59EF48B262
--[[
only works on some fx's, not networked
--]]
function GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(r, g, b)
  native.invoke(
    Type.Void, 1204, false,
    arg(Type.Float, r),
    arg(Type.Float, g),
    arg(Type.Float, b)
  )
end

-- void SET_PARTICLE_FX_NON_LOOPED_ALPHA(float alpha) // 0x77168D722C58B2FC
--[[
Usage example for C#:

Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });

Note: the argument alpha ranges from 0.0f-1.0f !
--]]
function GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_ALPHA(alpha)
  native.invoke(
    Type.Void, 1205, false,
    arg(Type.Float, alpha)
  )
end

-- void SET_PARTICLE_FX_NON_LOOPED_SCALE(float scale) // 0xB7EF5850C39FABCA
function GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_SCALE(scale)
  native.invoke(
    Type.Void, 1206, false,
    arg(Type.Float, scale)
  )
end

-- void SET_PARTICLE_FX_NON_LOOPED_EMITTER_SIZE(float p0, float p1, float scale) // 0x1E2E01C00837D26E
function GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_EMITTER_SIZE(p0, p1, scale)
  native.invoke(
    Type.Void, 1207, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, scale)
  )
end

-- void SET_PARTICLE_FX_FORCE_VEHICLE_INTERIOR(BOOL toggle) // 0x8CDE909A0370BB3A
--[[
Used only once in the scripts (taxi_clowncar)
--]]
function GRAPHICS.SET_PARTICLE_FX_FORCE_VEHICLE_INTERIOR(toggle)
  native.invoke(
    Type.Void, 1208, false,
    arg(Type.Bool, toggle)
  )
end

-- int START_PARTICLE_FX_LOOPED_AT_COORD(const char* effectName, float x, float y, float z, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis, BOOL p11) // 0xE184F4F0DC5910E7
--[[
GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)


p11 seems to be always 0

Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_PARTICLE_FX_LOOPED_AT_COORD(effectName, x, y, z, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, p11)
  return native.invoke(
    Type.Int, 1209, false,
    arg(Type.String, effectName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, scale),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis),
    arg(Type.Bool, p11)
  )
end

-- int START_PARTICLE_FX_LOOPED_ON_PED_BONE(const char* effectName, Ped ped, float xOffset, float yOffset, float zOffset, float xRot, float yRot, float zRot, int boneIndex, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis) // 0xF28DA9F38CD1787C
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_PARTICLE_FX_LOOPED_ON_PED_BONE(effectName, ped, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis)
  return native.invoke(
    Type.Int, 1210, false,
    arg(Type.String, effectName),
    arg(Type.Ped, ped),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Int, boneIndex),
    arg(Type.Float, scale),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis)
  )
end

-- int START_PARTICLE_FX_LOOPED_ON_ENTITY(const char* effectName, Entity entity, float xOffset, float yOffset, float zOffset, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis) // 0x1AE42C1660FD6517
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis)
  return native.invoke(
    Type.Int, 1211, false,
    arg(Type.String, effectName),
    arg(Type.Entity, entity),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, scale),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis)
  )
end

-- int START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(const char* effectName, Entity entity, float xOffset, float yOffset, float zOffset, float xRot, float yRot, float zRot, int boneIndex, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis) // 0xC6EB449E33977F0B
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis)
  return native.invoke(
    Type.Int, 1212, false,
    arg(Type.String, effectName),
    arg(Type.Entity, entity),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Int, boneIndex),
    arg(Type.Float, scale),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis)
  )
end

-- int START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(const char* effectName, Entity entity, float xOffset, float yOffset, float zOffset, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis, float r, float g, float b, float a) // 0x6F60E89A7B64EE1D
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, xAxis, yAxis, zAxis, r, g, b, a)
  return native.invoke(
    Type.Int, 1213, false,
    arg(Type.String, effectName),
    arg(Type.Entity, entity),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Float, scale),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis),
    arg(Type.Float, r),
    arg(Type.Float, g),
    arg(Type.Float, b),
    arg(Type.Float, a)
  )
end

-- int START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(const char* effectName, Entity entity, float xOffset, float yOffset, float zOffset, float xRot, float yRot, float zRot, int boneIndex, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis, float r, float g, float b, float a) // 0xDDE23F30CC5A0F03
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE(effectName, entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, boneIndex, scale, xAxis, yAxis, zAxis, r, g, b, a)
  return native.invoke(
    Type.Int, 1214, false,
    arg(Type.String, effectName),
    arg(Type.Entity, entity),
    arg(Type.Float, xOffset),
    arg(Type.Float, yOffset),
    arg(Type.Float, zOffset),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Int, boneIndex),
    arg(Type.Float, scale),
    arg(Type.Bool, xAxis),
    arg(Type.Bool, yAxis),
    arg(Type.Bool, zAxis),
    arg(Type.Float, r),
    arg(Type.Float, g),
    arg(Type.Float, b),
    arg(Type.Float, a)
  )
end

-- void STOP_PARTICLE_FX_LOOPED(int ptfxHandle, BOOL p1) // 0x8F75998877616996
--[[
p1 is always 0 in the native scripts
--]]
function GRAPHICS.STOP_PARTICLE_FX_LOOPED(ptfxHandle, p1)
  native.invoke(
    Type.Void, 1215, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.Bool, p1)
  )
end

-- void REMOVE_PARTICLE_FX(int ptfxHandle, BOOL p1) // 0xC401503DFE8D53CF
function GRAPHICS.REMOVE_PARTICLE_FX(ptfxHandle, p1)
  native.invoke(
    Type.Void, 1216, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.Bool, p1)
  )
end

-- void REMOVE_PARTICLE_FX_FROM_ENTITY(Entity entity) // 0xB8FEAEEBCC127425
function GRAPHICS.REMOVE_PARTICLE_FX_FROM_ENTITY(entity)
  native.invoke(
    Type.Void, 1217, false,
    arg(Type.Entity, entity)
  )
end

-- void REMOVE_PARTICLE_FX_IN_RANGE(float X, float Y, float Z, float radius) // 0xDD19FA1C6D657305
function GRAPHICS.REMOVE_PARTICLE_FX_IN_RANGE(X, Y, Z, radius)
  native.invoke(
    Type.Void, 1218, false,
    arg(Type.Float, X),
    arg(Type.Float, Y),
    arg(Type.Float, Z),
    arg(Type.Float, radius)
  )
end

-- void FORCE_PARTICLE_FX_IN_VEHICLE_INTERIOR(Any p0, Any p1) // 0xBA0127DA25FD54C9
function GRAPHICS.FORCE_PARTICLE_FX_IN_VEHICLE_INTERIOR(p0, p1)
  native.invoke(
    Type.Void, 1219, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL DOES_PARTICLE_FX_LOOPED_EXIST(int ptfxHandle) // 0x74AFEF0D2E1E409B
function GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(ptfxHandle)
  return native.invoke(
    Type.Bool, 1220, false,
    arg(Type.Int, ptfxHandle)
  )
end

-- void SET_PARTICLE_FX_LOOPED_OFFSETS(int ptfxHandle, float x, float y, float z, float rotX, float rotY, float rotZ) // 0xF7DDEBEC43483C43
function GRAPHICS.SET_PARTICLE_FX_LOOPED_OFFSETS(ptfxHandle, x, y, z, rotX, rotY, rotZ)
  native.invoke(
    Type.Void, 1221, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ)
  )
end

-- void SET_PARTICLE_FX_LOOPED_EVOLUTION(int ptfxHandle, const char* propertyName, float amount, BOOL noNetwork) // 0x5F0C4B5B1C393BE2
function GRAPHICS.SET_PARTICLE_FX_LOOPED_EVOLUTION(ptfxHandle, propertyName, amount, noNetwork)
  native.invoke(
    Type.Void, 1222, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.String, propertyName),
    arg(Type.Float, amount),
    arg(Type.Bool, noNetwork)
  )
end

-- void SET_PARTICLE_FX_LOOPED_COLOUR(int ptfxHandle, float r, float g, float b, BOOL p4) // 0x7F8F65877F88783B
--[[
only works on some fx's

p4 = 0
--]]
function GRAPHICS.SET_PARTICLE_FX_LOOPED_COLOUR(ptfxHandle, r, g, b, p4)
  native.invoke(
    Type.Void, 1223, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.Float, r),
    arg(Type.Float, g),
    arg(Type.Float, b),
    arg(Type.Bool, p4)
  )
end

-- void SET_PARTICLE_FX_LOOPED_ALPHA(int ptfxHandle, float alpha) // 0x726845132380142E
function GRAPHICS.SET_PARTICLE_FX_LOOPED_ALPHA(ptfxHandle, alpha)
  native.invoke(
    Type.Void, 1224, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.Float, alpha)
  )
end

-- void SET_PARTICLE_FX_LOOPED_SCALE(int ptfxHandle, float scale) // 0xB44250AAA456492D
function GRAPHICS.SET_PARTICLE_FX_LOOPED_SCALE(ptfxHandle, scale)
  native.invoke(
    Type.Void, 1225, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.Float, scale)
  )
end

-- void SET_PARTICLE_FX_LOOPED_FAR_CLIP_DIST(int ptfxHandle, float range) // 0xDCB194B85EF7B541
function GRAPHICS.SET_PARTICLE_FX_LOOPED_FAR_CLIP_DIST(ptfxHandle, range)
  native.invoke(
    Type.Void, 1226, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.Float, range)
  )
end

-- void _SET_PARTICLE_FX_LOOPED_CAMERA_BIAS(int ptfxHandle, float p1) // 0x4100BF0346A8D2C3
function GRAPHICS._SET_PARTICLE_FX_LOOPED_CAMERA_BIAS(ptfxHandle, p1)
  native.invoke(
    Type.Void, 1227, false,
    arg(Type.Int, ptfxHandle),
    arg(Type.Float, p1)
  )
end

-- void SET_PARTICLE_FX_CAM_INSIDE_VEHICLE(BOOL p0) // 0xEEC4047028426510
function GRAPHICS.SET_PARTICLE_FX_CAM_INSIDE_VEHICLE(p0)
  native.invoke(
    Type.Void, 1228, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE(Vehicle vehicle, BOOL p1) // 0xACEE6F360FC1F6B6
function GRAPHICS.SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE(vehicle, p1)
  native.invoke(
    Type.Void, 1229, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, p1)
  )
end

-- void SET_PARTICLE_FX_SHOOTOUT_BOAT(Any p0) // 0x96EF97DAEB89BEF5
function GRAPHICS.SET_PARTICLE_FX_SHOOTOUT_BOAT(p0)
  native.invoke(
    Type.Void, 1230, false,
    arg(Type.Any, p0)
  )
end

-- void CLEAR_PARTICLE_FX_SHOOTOUT_BOAT() // 0x2A251AA48B2B46DB
function GRAPHICS.CLEAR_PARTICLE_FX_SHOOTOUT_BOAT()
  native.invoke(
    Type.Void, 1231, false
  )
end

-- void SET_PARTICLE_FX_BLOOD_SCALE(Any p0) // 0x908311265D42A820
function GRAPHICS.SET_PARTICLE_FX_BLOOD_SCALE(p0)
  native.invoke(
    Type.Void, 1232, false,
    arg(Type.Any, p0)
  )
end

-- void DISABLE_IN_WATER_PTFX(BOOL toggle) // 0xCFD16F0DB5A3535C
function GRAPHICS.DISABLE_IN_WATER_PTFX(toggle)
  native.invoke(
    Type.Void, 1233, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISABLE_DOWNWASH_PTFX(BOOL toggle) // 0x5F6DF3D92271E8A1
function GRAPHICS.DISABLE_DOWNWASH_PTFX(toggle)
  native.invoke(
    Type.Void, 1234, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_PARTICLE_FX_SLIPSTREAM_LODRANGE_SCALE(float scale) // 0x2B40A97646381508
function GRAPHICS.SET_PARTICLE_FX_SLIPSTREAM_LODRANGE_SCALE(scale)
  native.invoke(
    Type.Void, 1235, false,
    arg(Type.Float, scale)
  )
end

-- void ENABLE_CLOWN_BLOOD_VFX(BOOL toggle) // 0xD821490579791273
--[[
Creates cartoon effect when Michel smokes the weed
--]]
function GRAPHICS.ENABLE_CLOWN_BLOOD_VFX(toggle)
  native.invoke(
    Type.Void, 1236, false,
    arg(Type.Bool, toggle)
  )
end

-- void ENABLE_ALIEN_BLOOD_VFX(BOOL toggle) // 0x9DCE1F0F78260875
--[[
Creates a motion-blur sort of effect, this native does not seem to work, however by using the `START_SCREEN_EFFECT` native with `DrugsMichaelAliensFight` as the effect parameter, you should be able to get the effect.
--]]
function GRAPHICS.ENABLE_ALIEN_BLOOD_VFX(toggle)
  native.invoke(
    Type.Void, 1237, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_PARTICLE_FX_BULLET_IMPACT_SCALE(float scale) // 0x27E32866E9A5C416
function GRAPHICS.SET_PARTICLE_FX_BULLET_IMPACT_SCALE(scale)
  native.invoke(
    Type.Void, 1238, false,
    arg(Type.Float, scale)
  )
end

-- void SET_PARTICLE_FX_BULLET_IMPACT_LODRANGE_SCALE(float p0) // 0xBB90E12CAC1DAB25
function GRAPHICS.SET_PARTICLE_FX_BULLET_IMPACT_LODRANGE_SCALE(p0)
  native.invoke(
    Type.Void, 1239, false,
    arg(Type.Float, p0)
  )
end

-- void SET_PARTICLE_FX_BULLET_TRACE_NO_ANGLE_REJECT(BOOL p0) // 0xCA4AE345A153D573
function GRAPHICS.SET_PARTICLE_FX_BULLET_TRACE_NO_ANGLE_REJECT(p0)
  native.invoke(
    Type.Void, 1240, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_PARTICLE_FX_BANG_SCRAPE_LODRANGE_SCALE(float p0) // 0x54E22EA2C1956A8D
function GRAPHICS.SET_PARTICLE_FX_BANG_SCRAPE_LODRANGE_SCALE(p0)
  native.invoke(
    Type.Void, 1241, false,
    arg(Type.Float, p0)
  )
end

-- void SET_PARTICLE_FX_FOOT_LODRANGE_SCALE(float p0) // 0x949F397A288B28B3
function GRAPHICS.SET_PARTICLE_FX_FOOT_LODRANGE_SCALE(p0)
  native.invoke(
    Type.Void, 1242, false,
    arg(Type.Float, p0)
  )
end

-- void SET_PARTICLE_FX_FOOT_OVERRIDE_NAME(const char* p0) // 0xBA3D194057C79A7B
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.SET_PARTICLE_FX_FOOT_OVERRIDE_NAME(p0)
  native.invoke(
    Type.Void, 1243, false,
    arg(Type.String, p0)
  )
end

-- void SET_SKIDMARK_RANGE_SCALE(float scale) // 0x5DBF05DB5926D089
function GRAPHICS.SET_SKIDMARK_RANGE_SCALE(scale)
  native.invoke(
    Type.Void, 1244, false,
    arg(Type.Float, scale)
  )
end

-- void SET_PTFX_FORCE_VEHICLE_INTERIOR_FLAG(Any p0) // 0xC6730E0D14E50703
function GRAPHICS.SET_PTFX_FORCE_VEHICLE_INTERIOR_FLAG(p0)
  native.invoke(
    Type.Void, 1245, false,
    arg(Type.Any, p0)
  )
end

-- void REGISTER_POSTFX_BULLET_IMPACT(float weaponWorldPosX, float weaponWorldPosY, float weaponWorldPosZ, float intensity) // 0x170911F37F646F29
function GRAPHICS.REGISTER_POSTFX_BULLET_IMPACT(weaponWorldPosX, weaponWorldPosY, weaponWorldPosZ, intensity)
  native.invoke(
    Type.Void, 1246, false,
    arg(Type.Float, weaponWorldPosX),
    arg(Type.Float, weaponWorldPosY),
    arg(Type.Float, weaponWorldPosZ),
    arg(Type.Float, intensity)
  )
end

-- void FORCE_POSTFX_BULLET_IMPACTS_AFTER_HUD(BOOL p0) // 0x9B079E5221D984D3
function GRAPHICS.FORCE_POSTFX_BULLET_IMPACTS_AFTER_HUD(p0)
  native.invoke(
    Type.Void, 1247, false,
    arg(Type.Bool, p0)
  )
end

-- void USE_PARTICLE_FX_ASSET(const char* name) // 0x6C38AF3693A69A91
--[[
From the b678d decompiled scripts:

 GRAPHICS::USE_PARTICLE_FX_ASSET("FM_Mission_Controler");
 GRAPHICS::USE_PARTICLE_FX_ASSET("scr_apartment_mp");
 GRAPHICS::USE_PARTICLE_FX_ASSET("scr_indep_fireworks");
 GRAPHICS::USE_PARTICLE_FX_ASSET("scr_mp_cig_plane");
 GRAPHICS::USE_PARTICLE_FX_ASSET("scr_mp_creator");
 GRAPHICS::USE_PARTICLE_FX_ASSET("scr_ornate_heist");
 GRAPHICS::USE_PARTICLE_FX_ASSET("scr_prison_break_heist_station");

Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.USE_PARTICLE_FX_ASSET(name)
  native.invoke(
    Type.Void, 1248, false,
    arg(Type.String, name)
  )
end

-- void SET_PARTICLE_FX_OVERRIDE(const char* oldAsset, const char* newAsset) // 0xEA1E2D93F6F75ED9
--[[
Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.SET_PARTICLE_FX_OVERRIDE(oldAsset, newAsset)
  native.invoke(
    Type.Void, 1249, false,
    arg(Type.String, oldAsset),
    arg(Type.String, newAsset)
  )
end

-- void RESET_PARTICLE_FX_OVERRIDE(const char* name) // 0x89C8553DD3274AAE
--[[
Resets the effect of SET_PARTICLE_FX_OVERRIDE

Full list of particle effect dictionaries and effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/particleEffectsCompact.json
--]]
function GRAPHICS.RESET_PARTICLE_FX_OVERRIDE(name)
  native.invoke(
    Type.Void, 1250, false,
    arg(Type.String, name)
  )
end

-- int _START_VEHICLE_PARTICLE_FX_LOOPED(Vehicle vehicle, const char* effectName, BOOL frontBack, BOOL leftRight, BOOL localOnly) // 0xDF269BE2909E181A
--[[
Returns ptfxHandle
effectName: scr_sv_drag_burnout
--]]
function GRAPHICS._START_VEHICLE_PARTICLE_FX_LOOPED(vehicle, effectName, frontBack, leftRight, localOnly)
  return native.invoke(
    Type.Int, 1251, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.String, effectName),
    arg(Type.Bool, frontBack),
    arg(Type.Bool, leftRight),
    arg(Type.Bool, localOnly)
  )
end

-- void SET_WEATHER_PTFX_USE_OVERRIDE_SETTINGS(BOOL p0) // 0xA46B73FAA3460AE1
function GRAPHICS.SET_WEATHER_PTFX_USE_OVERRIDE_SETTINGS(p0)
  native.invoke(
    Type.Void, 1252, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_WEATHER_PTFX_OVERRIDE_CURR_LEVEL(float p0) // 0xF78B803082D4386F
function GRAPHICS.SET_WEATHER_PTFX_OVERRIDE_CURR_LEVEL(p0)
  native.invoke(
    Type.Void, 1253, false,
    arg(Type.Float, p0)
  )
end

-- void WASH_DECALS_IN_RANGE(float x, float y, float z, float range, float p4) // 0x9C30613D50A6ADEF
function GRAPHICS.WASH_DECALS_IN_RANGE(x, y, z, range, p4)
  native.invoke(
    Type.Void, 1254, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, range),
    arg(Type.Float, p4)
  )
end

-- void WASH_DECALS_FROM_VEHICLE(Vehicle vehicle, float p1) // 0x5B712761429DBC14
function GRAPHICS.WASH_DECALS_FROM_VEHICLE(vehicle, p1)
  native.invoke(
    Type.Void, 1255, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, p1)
  )
end

-- void FADE_DECALS_IN_RANGE(float x, float y, float z, float p3, float p4) // 0xD77EDADB0420E6E0
--[[
Fades nearby decals within the range specified
--]]
function GRAPHICS.FADE_DECALS_IN_RANGE(x, y, z, p3, p4)
  native.invoke(
    Type.Void, 1256, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3),
    arg(Type.Float, p4)
  )
end

-- void REMOVE_DECALS_IN_RANGE(float x, float y, float z, float range) // 0x5D6B2D4830A67C62
--[[
Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...
--]]
function GRAPHICS.REMOVE_DECALS_IN_RANGE(x, y, z, range)
  native.invoke(
    Type.Void, 1257, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, range)
  )
end

-- void REMOVE_DECALS_FROM_OBJECT(Object obj) // 0xCCF71CBDDF5B6CB9
function GRAPHICS.REMOVE_DECALS_FROM_OBJECT(obj)
  native.invoke(
    Type.Void, 1258, false,
    arg(Type.Object, obj)
  )
end

-- void REMOVE_DECALS_FROM_OBJECT_FACING(Object obj, float x, float y, float z) // 0xA6F6F70FDC6D144C
function GRAPHICS.REMOVE_DECALS_FROM_OBJECT_FACING(obj, x, y, z)
  native.invoke(
    Type.Void, 1259, false,
    arg(Type.Object, obj),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void REMOVE_DECALS_FROM_VEHICLE(Vehicle vehicle) // 0xE91F1B65F2B48D57
function GRAPHICS.REMOVE_DECALS_FROM_VEHICLE(vehicle)
  native.invoke(
    Type.Void, 1260, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- int ADD_DECAL(int decalType, float posX, float posY, float posZ, float p4, float p5, float p6, float p7, float p8, float p9, float width, float height, float rCoef, float gCoef, float bCoef, float opacity, float timeout, BOOL p17, BOOL p18, BOOL p19) // 0xB302244A1839BDAD
--[[
decal types:

public enum DecalTypes
{
    splatters_blood = 1010,
    splatters_blood_dir = 1015,
    splatters_blood_mist = 1017,
    splatters_mud = 1020,
    splatters_paint = 1030,
    splatters_water = 1040,
    splatters_water_hydrant = 1050,
    splatters_blood2 = 1110,
    weapImpact_metal = 4010,
    weapImpact_concrete = 4020,
    weapImpact_mattress = 4030,
    weapImpact_mud = 4032,
    weapImpact_wood = 4050,
    weapImpact_sand = 4053,
    weapImpact_cardboard = 4040,
    weapImpact_melee_glass = 4100,
    weapImpact_glass_blood = 4102,
    weapImpact_glass_blood2 = 4104,
    weapImpact_shotgun_paper = 4200,
    weapImpact_shotgun_mattress,
    weapImpact_shotgun_metal,
    weapImpact_shotgun_wood,
    weapImpact_shotgun_dirt,
    weapImpact_shotgun_tvscreen,
    weapImpact_shotgun_tvscreen2,
    weapImpact_shotgun_tvscreen3,
    weapImpact_melee_concrete = 4310,
    weapImpact_melee_wood = 4312,
    weapImpact_melee_metal = 4314,
    burn1 = 4421,
    burn2,
    burn3,
    burn4,
    burn5,
    bang_concrete_bang = 5000,
    bang_concrete_bang2,
    bang_bullet_bang,
    bang_bullet_bang2 = 5004,
    bang_glass = 5031,
    bang_glass2,
    solidPool_water = 9000,
    solidPool_blood,
    solidPool_oil,
    solidPool_petrol,
    solidPool_mud,
    porousPool_water,
    porousPool_blood,
    porousPool_oil,
    porousPool_petrol,
    porousPool_mud,
    porousPool_water_ped_drip,
    liquidTrail_water = 9050
}
--]]
function GRAPHICS.ADD_DECAL(decalType, posX, posY, posZ, p4, p5, p6, p7, p8, p9, width, height, rCoef, gCoef, bCoef, opacity, timeout, p17, p18, p19)
  return native.invoke(
    Type.Int, 1261, false,
    arg(Type.Int, decalType),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Float, width),
    arg(Type.Float, height),
    arg(Type.Float, rCoef),
    arg(Type.Float, gCoef),
    arg(Type.Float, bCoef),
    arg(Type.Float, opacity),
    arg(Type.Float, timeout),
    arg(Type.Bool, p17),
    arg(Type.Bool, p18),
    arg(Type.Bool, p19)
  )
end

-- int ADD_PETROL_DECAL(float x, float y, float z, float groundLvl, float width, float transparency) // 0x4F5212C7AD880DF8
function GRAPHICS.ADD_PETROL_DECAL(x, y, z, groundLvl, width, transparency)
  return native.invoke(
    Type.Int, 1262, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, groundLvl),
    arg(Type.Float, width),
    arg(Type.Float, transparency)
  )
end

-- int ADD_OIL_DECAL(float x, float y, float z, float groundLvl, float width, float transparency) // 0x126D7F89FE859A5E
function GRAPHICS.ADD_OIL_DECAL(x, y, z, groundLvl, width, transparency)
  return native.invoke(
    Type.Int, 1263, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, groundLvl),
    arg(Type.Float, width),
    arg(Type.Float, transparency)
  )
end

-- void START_PETROL_TRAIL_DECALS(float p0) // 0x99AC7F0D8B9C893D
function GRAPHICS.START_PETROL_TRAIL_DECALS(p0)
  native.invoke(
    Type.Void, 1264, false,
    arg(Type.Float, p0)
  )
end

-- void ADD_PETROL_TRAIL_DECAL_INFO(float x, float y, float z, float p3) // 0x967278682CB6967A
function GRAPHICS.ADD_PETROL_TRAIL_DECAL_INFO(x, y, z, p3)
  native.invoke(
    Type.Void, 1265, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p3)
  )
end

-- void END_PETROL_TRAIL_DECALS() // 0x0A123435A26C36CD
function GRAPHICS.END_PETROL_TRAIL_DECALS()
  native.invoke(
    Type.Void, 1266, false
  )
end

-- void REMOVE_DECAL(int decal) // 0xED3F346429CCD659
function GRAPHICS.REMOVE_DECAL(decal)
  native.invoke(
    Type.Void, 1267, false,
    arg(Type.Int, decal)
  )
end

-- BOOL IS_DECAL_ALIVE(int decal) // 0xC694D74949CAFD0C
function GRAPHICS.IS_DECAL_ALIVE(decal)
  return native.invoke(
    Type.Bool, 1268, false,
    arg(Type.Int, decal)
  )
end

-- float GET_DECAL_WASH_LEVEL(int decal) // 0x323F647679A09103
function GRAPHICS.GET_DECAL_WASH_LEVEL(decal)
  return native.invoke(
    Type.Float, 1269, false,
    arg(Type.Int, decal)
  )
end

-- void SET_DISABLE_PETROL_DECALS_IGNITING_THIS_FRAME() // 0xD9454B5752C857DC
function GRAPHICS.SET_DISABLE_PETROL_DECALS_IGNITING_THIS_FRAME()
  native.invoke(
    Type.Void, 1270, false
  )
end

-- void SET_DISABLE_PETROL_DECALS_RECYCLING_THIS_FRAME() // 0x27CFB1B1E078CB2D
function GRAPHICS.SET_DISABLE_PETROL_DECALS_RECYCLING_THIS_FRAME()
  native.invoke(
    Type.Void, 1271, false
  )
end

-- void SET_DISABLE_DECAL_RENDERING_THIS_FRAME() // 0x4B5CFC83122DF602
function GRAPHICS.SET_DISABLE_DECAL_RENDERING_THIS_FRAME()
  native.invoke(
    Type.Void, 1272, false
  )
end

-- BOOL GET_IS_PETROL_DECAL_IN_RANGE(float xCoord, float yCoord, float zCoord, float radius) // 0x2F09F7976C512404
function GRAPHICS.GET_IS_PETROL_DECAL_IN_RANGE(xCoord, yCoord, zCoord, radius)
  return native.invoke(
    Type.Bool, 1273, false,
    arg(Type.Float, xCoord),
    arg(Type.Float, yCoord),
    arg(Type.Float, zCoord),
    arg(Type.Float, radius)
  )
end

-- void PATCH_DECAL_DIFFUSE_MAP(int decalType, const char* textureDict, const char* textureName) // 0x8A35C742130C6080
function GRAPHICS.PATCH_DECAL_DIFFUSE_MAP(decalType, textureDict, textureName)
  native.invoke(
    Type.Void, 1274, false,
    arg(Type.Int, decalType),
    arg(Type.String, textureDict),
    arg(Type.String, textureName)
  )
end

-- void UNPATCH_DECAL_DIFFUSE_MAP(int decalType) // 0xB7ED70C49521A61D
function GRAPHICS.UNPATCH_DECAL_DIFFUSE_MAP(decalType)
  native.invoke(
    Type.Void, 1275, false,
    arg(Type.Int, decalType)
  )
end

-- void MOVE_VEHICLE_DECALS(Any p0, Any p1) // 0x84C8D7C2D30D3280
function GRAPHICS.MOVE_VEHICLE_DECALS(p0, p1)
  native.invoke(
    Type.Void, 1276, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL ADD_VEHICLE_CREW_EMBLEM(Vehicle vehicle, Ped ped, int boneIndex, float x1, float x2, float x3, float y1, float y2, float y3, float z1, float z2, float z3, float scale, Any p13, int alpha) // 0x428BDCB9DA58DA53
--[[
boneIndex is always chassis_dummy in the scripts. The x/y/z params are location relative to the chassis bone.
--]]
function GRAPHICS.ADD_VEHICLE_CREW_EMBLEM(vehicle, ped, boneIndex, x1, x2, x3, y1, y2, y3, z1, z2, z3, scale, p13, alpha)
  return native.invoke(
    Type.Bool, 1277, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Ped, ped),
    arg(Type.Int, boneIndex),
    arg(Type.Float, x1),
    arg(Type.Float, x2),
    arg(Type.Float, x3),
    arg(Type.Float, y1),
    arg(Type.Float, y2),
    arg(Type.Float, y3),
    arg(Type.Float, z1),
    arg(Type.Float, z2),
    arg(Type.Float, z3),
    arg(Type.Float, scale),
    arg(Type.Any, p13),
    arg(Type.Int, alpha)
  )
end

-- BOOL ABORT_VEHICLE_CREW_EMBLEM_REQUEST(int* p0) // 0x82ACC484FFA3B05F
function GRAPHICS.ABORT_VEHICLE_CREW_EMBLEM_REQUEST(p0)
  return native.invoke(
    Type.Bool, 1278, false,
    ref(Type.Int, p0)
  )
end

-- void REMOVE_VEHICLE_CREW_EMBLEM(Vehicle vehicle, int p1) // 0xD2300034310557E4
function GRAPHICS.REMOVE_VEHICLE_CREW_EMBLEM(vehicle, p1)
  native.invoke(
    Type.Void, 1279, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, p1)
  )
end

-- int GET_VEHICLE_CREW_EMBLEM_REQUEST_STATE(Vehicle vehicle, int p1) // 0xFE26117A5841B2FF
function GRAPHICS.GET_VEHICLE_CREW_EMBLEM_REQUEST_STATE(vehicle, p1)
  return native.invoke(
    Type.Int, 1280, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, p1)
  )
end

-- BOOL DOES_VEHICLE_HAVE_CREW_EMBLEM(Vehicle vehicle, int p1) // 0x060D935D3981A275
function GRAPHICS.DOES_VEHICLE_HAVE_CREW_EMBLEM(vehicle, p1)
  return native.invoke(
    Type.Bool, 1281, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, p1)
  )
end

-- void DISABLE_COMPOSITE_SHOTGUN_DECALS(BOOL toggle) // 0x0E4299C549F0D1F1
function GRAPHICS.DISABLE_COMPOSITE_SHOTGUN_DECALS(toggle)
  native.invoke(
    Type.Void, 1282, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISABLE_SCUFF_DECALS(BOOL toggle) // 0x02369D5C8A51FDCF
function GRAPHICS.DISABLE_SCUFF_DECALS(toggle)
  native.invoke(
    Type.Void, 1283, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_DECAL_BULLET_IMPACT_RANGE_SCALE(float p0) // 0x46D1A61A21F566FC
function GRAPHICS.SET_DECAL_BULLET_IMPACT_RANGE_SCALE(p0)
  native.invoke(
    Type.Void, 1284, false,
    arg(Type.Float, p0)
  )
end

-- void OVERRIDE_INTERIOR_SMOKE_NAME(const char* name) // 0x2A2A52824DB96700
function GRAPHICS.OVERRIDE_INTERIOR_SMOKE_NAME(name)
  native.invoke(
    Type.Void, 1285, false,
    arg(Type.String, name)
  )
end

-- void OVERRIDE_INTERIOR_SMOKE_LEVEL(float level) // 0x1600FD8CF72EBC12
function GRAPHICS.OVERRIDE_INTERIOR_SMOKE_LEVEL(level)
  native.invoke(
    Type.Void, 1286, false,
    arg(Type.Float, level)
  )
end

-- void OVERRIDE_INTERIOR_SMOKE_END() // 0xEFB55E7C25D3B3BE
function GRAPHICS.OVERRIDE_INTERIOR_SMOKE_END()
  native.invoke(
    Type.Void, 1287, false
  )
end

-- void REGISTER_NOIR_LENS_EFFECT() // 0xA44FF770DFBC5DAE
--[[
Used with 'NG_filmnoir_BW{01,02}' timecycles and the "NOIR_FILTER_SOUNDS" audioref.
--]]
function GRAPHICS.REGISTER_NOIR_LENS_EFFECT()
  native.invoke(
    Type.Void, 1288, false
  )
end

-- void DISABLE_VEHICLE_DISTANTLIGHTS(BOOL toggle) // 0xC9F98AC1884E73A2
function GRAPHICS.DISABLE_VEHICLE_DISTANTLIGHTS(toggle)
  native.invoke(
    Type.Void, 1289, false,
    arg(Type.Bool, toggle)
  )
end

-- void RENDER_SHADOWED_LIGHTS_WITH_NO_SHADOWS(BOOL p0) // 0x03300B57FCAC6DDB
function GRAPHICS.RENDER_SHADOWED_LIGHTS_WITH_NO_SHADOWS(p0)
  native.invoke(
    Type.Void, 1290, false,
    arg(Type.Bool, p0)
  )
end

-- void REQUEST_EARLY_LIGHT_CHECK() // 0x98EDF76A7271E4F2
function GRAPHICS.REQUEST_EARLY_LIGHT_CHECK()
  native.invoke(
    Type.Void, 1291, false
  )
end

-- void USE_SNOW_FOOT_VFX_WHEN_UNSHELTERED(BOOL toggle) // 0xAEEDAD1420C65CC0
--[[
Forces footstep tracks on all surfaces.
--]]
function GRAPHICS.USE_SNOW_FOOT_VFX_WHEN_UNSHELTERED(toggle)
  native.invoke(
    Type.Void, 1292, false,
    arg(Type.Bool, toggle)
  )
end

-- void _FORCE_ALLOW_SNOW_FOOT_VFX_ON_ICE(BOOL toggle) // 0xA342A3763B3AFB6C
function GRAPHICS._FORCE_ALLOW_SNOW_FOOT_VFX_ON_ICE(toggle)
  native.invoke(
    Type.Void, 1293, false,
    arg(Type.Bool, toggle)
  )
end

-- void USE_SNOW_WHEEL_VFX_WHEN_UNSHELTERED(BOOL toggle) // 0x4CC7F0FEA5283FE0
--[[
Forces vehicle trails on all surfaces.
--]]
function GRAPHICS.USE_SNOW_WHEEL_VFX_WHEN_UNSHELTERED(toggle)
  native.invoke(
    Type.Void, 1294, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISABLE_REGION_VFX(Any p0) // 0xEFD97FF47B745B8D
function GRAPHICS.DISABLE_REGION_VFX(p0)
  native.invoke(
    Type.Void, 1295, false,
    arg(Type.Any, p0)
  )
end

-- void _FORCE_GROUND_SNOW_PASS(BOOL toggle) // 0x6E9EF3A33C8899F8
function GRAPHICS._FORCE_GROUND_SNOW_PASS(toggle)
  native.invoke(
    Type.Void, 1296, false,
    arg(Type.Bool, toggle)
  )
end

-- void PRESET_INTERIOR_AMBIENT_CACHE(const char* timecycleModifierName) // 0xD7021272EB0A451E
--[[
Only one match in the scripts:

GRAPHICS::PRESET_INTERIOR_AMBIENT_CACHE("int_carrier_hanger");
--]]
function GRAPHICS.PRESET_INTERIOR_AMBIENT_CACHE(timecycleModifierName)
  native.invoke(
    Type.Void, 1297, false,
    arg(Type.String, timecycleModifierName)
  )
end

-- void SET_TIMECYCLE_MODIFIER(const char* modifierName) // 0x2C933ABF17A1DF41
--[[
Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")

Parameters:
modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)

Full list of timecycle modifiers by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/timecycleModifiers.json
--]]
function GRAPHICS.SET_TIMECYCLE_MODIFIER(modifierName)
  native.invoke(
    Type.Void, 1298, false,
    arg(Type.String, modifierName)
  )
end

-- void SET_TIMECYCLE_MODIFIER_STRENGTH(float strength) // 0x82E7FFCD5B2326B3
function GRAPHICS.SET_TIMECYCLE_MODIFIER_STRENGTH(strength)
  native.invoke(
    Type.Void, 1299, false,
    arg(Type.Float, strength)
  )
end

-- void SET_TRANSITION_TIMECYCLE_MODIFIER(const char* modifierName, float transition) // 0x3BCF567485E1971C
--[[
Full list of timecycle modifiers by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/timecycleModifiers.json
--]]
function GRAPHICS.SET_TRANSITION_TIMECYCLE_MODIFIER(modifierName, transition)
  native.invoke(
    Type.Void, 1300, false,
    arg(Type.String, modifierName),
    arg(Type.Float, transition)
  )
end

-- void SET_TRANSITION_OUT_OF_TIMECYCLE_MODIFIER(float strength) // 0x1CBA05AE7BD7EE05
function GRAPHICS.SET_TRANSITION_OUT_OF_TIMECYCLE_MODIFIER(strength)
  native.invoke(
    Type.Void, 1301, false,
    arg(Type.Float, strength)
  )
end

-- void CLEAR_TIMECYCLE_MODIFIER() // 0x0F07E7745A236711
function GRAPHICS.CLEAR_TIMECYCLE_MODIFIER()
  native.invoke(
    Type.Void, 1302, false
  )
end

-- int GET_TIMECYCLE_MODIFIER_INDEX() // 0xFDF3D97C674AFB66
--[[
Only use for this in the PC scripts is:

if (GRAPHICS::GET_TIMECYCLE_MODIFIER_INDEX() != -1)
--]]
function GRAPHICS.GET_TIMECYCLE_MODIFIER_INDEX()
  return native.invoke(
    Type.Int, 1303, false
  )
end

-- int GET_TIMECYCLE_TRANSITION_MODIFIER_INDEX() // 0x459FD2C8D0AB78BC
function GRAPHICS.GET_TIMECYCLE_TRANSITION_MODIFIER_INDEX()
  return native.invoke(
    Type.Int, 1304, false
  )
end

-- BOOL GET_IS_TIMECYCLE_TRANSITIONING_OUT() // 0x98D18905BF723B99
function GRAPHICS.GET_IS_TIMECYCLE_TRANSITIONING_OUT()
  return native.invoke(
    Type.Bool, 1305, false
  )
end

-- void PUSH_TIMECYCLE_MODIFIER() // 0x58F735290861E6B4
function GRAPHICS.PUSH_TIMECYCLE_MODIFIER()
  native.invoke(
    Type.Void, 1306, false
  )
end

-- void POP_TIMECYCLE_MODIFIER() // 0x3C8938D7D872211E
function GRAPHICS.POP_TIMECYCLE_MODIFIER()
  native.invoke(
    Type.Void, 1307, false
  )
end

-- void SET_CURRENT_PLAYER_TCMODIFIER(const char* modifierName) // 0xBBF327DED94E4DEB
function GRAPHICS.SET_CURRENT_PLAYER_TCMODIFIER(modifierName)
  native.invoke(
    Type.Void, 1308, false,
    arg(Type.String, modifierName)
  )
end

-- void SET_PLAYER_TCMODIFIER_TRANSITION(float value) // 0xBDEB86F4D5809204
function GRAPHICS.SET_PLAYER_TCMODIFIER_TRANSITION(value)
  native.invoke(
    Type.Void, 1309, false,
    arg(Type.Float, value)
  )
end

-- void SET_NEXT_PLAYER_TCMODIFIER(const char* modifierName) // 0xBF59707B3E5ED531
function GRAPHICS.SET_NEXT_PLAYER_TCMODIFIER(modifierName)
  native.invoke(
    Type.Void, 1310, false,
    arg(Type.String, modifierName)
  )
end

-- void ADD_TCMODIFIER_OVERRIDE(const char* modifierName1, const char* modifierName2) // 0x1A8E2C8B9CF4549C
function GRAPHICS.ADD_TCMODIFIER_OVERRIDE(modifierName1, modifierName2)
  native.invoke(
    Type.Void, 1311, false,
    arg(Type.String, modifierName1),
    arg(Type.String, modifierName2)
  )
end

-- void CLEAR_ALL_TCMODIFIER_OVERRIDES(const char* p0) // 0x15E33297C3E8DC60
function GRAPHICS.CLEAR_ALL_TCMODIFIER_OVERRIDES(p0)
  native.invoke(
    Type.Void, 1312, false,
    arg(Type.String, p0)
  )
end

-- void SET_EXTRA_TCMODIFIER(const char* modifierName) // 0x5096FD9CCB49056D
--[[
Full list of timecycle modifiers by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/timecycleModifiers.json
--]]
function GRAPHICS.SET_EXTRA_TCMODIFIER(modifierName)
  native.invoke(
    Type.Void, 1313, false,
    arg(Type.String, modifierName)
  )
end

-- void CLEAR_EXTRA_TCMODIFIER() // 0x92CCC17A7A2285DA
--[[
Clears the secondary timecycle modifier usually set with _SET_EXTRA_TIMECYCLE_MODIFIER
--]]
function GRAPHICS.CLEAR_EXTRA_TCMODIFIER()
  native.invoke(
    Type.Void, 1314, false
  )
end

-- int GET_EXTRA_TCMODIFIER() // 0xBB0527EC6341496D
--[[
See GET_TIMECYCLE_MODIFIER_INDEX for use, works the same just for the secondary timecycle modifier.
Returns an integer representing the Timecycle modifier
--]]
function GRAPHICS.GET_EXTRA_TCMODIFIER()
  return native.invoke(
    Type.Int, 1315, false
  )
end

-- void ENABLE_MOON_CYCLE_OVERRIDE(float strength) // 0x2C328AF17210F009
--[[
The same as SET_TIMECYCLE_MODIFIER_STRENGTH but for the secondary timecycle modifier.
--]]
function GRAPHICS.ENABLE_MOON_CYCLE_OVERRIDE(strength)
  native.invoke(
    Type.Void, 1316, false,
    arg(Type.Float, strength)
  )
end

-- void DISABLE_MOON_CYCLE_OVERRIDE() // 0x2BF72AD5B41AA739
--[[
Resets the extra timecycle modifier strength normally set with 0x2C328AF17210F009
--]]
function GRAPHICS.DISABLE_MOON_CYCLE_OVERRIDE()
  native.invoke(
    Type.Void, 1317, false
  )
end

-- int REQUEST_SCALEFORM_MOVIE(const char* scaleformName) // 0x11FE353CF9733E6F
function GRAPHICS.REQUEST_SCALEFORM_MOVIE(scaleformName)
  return native.invoke(
    Type.Int, 1318, false,
    arg(Type.String, scaleformName)
  )
end

-- int REQUEST_SCALEFORM_MOVIE_WITH_IGNORE_SUPER_WIDESCREEN(const char* scaleformName) // 0x65E7E78842E74CDB
--[[
Another REQUEST_SCALEFORM_MOVIE equivalent.
--]]
function GRAPHICS.REQUEST_SCALEFORM_MOVIE_WITH_IGNORE_SUPER_WIDESCREEN(scaleformName)
  return native.invoke(
    Type.Int, 1319, false,
    arg(Type.String, scaleformName)
  )
end

-- int REQUEST_SCALEFORM_MOVIE_INSTANCE(const char* scaleformName) // 0xC514489CFB8AF806
function GRAPHICS.REQUEST_SCALEFORM_MOVIE_INSTANCE(scaleformName)
  return native.invoke(
    Type.Int, 1320, false,
    arg(Type.String, scaleformName)
  )
end

-- int REQUEST_SCALEFORM_MOVIE_SKIP_RENDER_WHILE_PAUSED(const char* scaleformName) // 0xBD06C611BB9048C2
--[[
Similar to REQUEST_SCALEFORM_MOVIE, but seems to be some kind of "interactive" scaleform movie?

These seem to be the only scaleforms ever requested by this native:
"breaking_news"
"desktop_pc"
"ECG_MONITOR"
"Hacking_PC"
"TEETH_PULLING"

Note: Unless this hash is out-of-order, this native is next-gen only.

--]]
function GRAPHICS.REQUEST_SCALEFORM_MOVIE_SKIP_RENDER_WHILE_PAUSED(scaleformName)
  return native.invoke(
    Type.Int, 1321, false,
    arg(Type.String, scaleformName)
  )
end

-- BOOL HAS_SCALEFORM_MOVIE_LOADED(int scaleformHandle) // 0x85F01B8D5B90570E
function GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(scaleformHandle)
  return native.invoke(
    Type.Bool, 1322, false,
    arg(Type.Int, scaleformHandle)
  )
end

-- BOOL IS_ACTIVE_SCALEFORM_MOVIE_DELETING(int val) // 0x2FCB133CA50A49EB
--[[
val is 1-20 (0 will return false)
--]]
function GRAPHICS.IS_ACTIVE_SCALEFORM_MOVIE_DELETING(val)
  return native.invoke(
    Type.Bool, 1323, false,
    arg(Type.Int, val)
  )
end

-- BOOL IS_SCALEFORM_MOVIE_DELETING(int val) // 0x86255B1FC929E33E
--[[
val is 1-20. Return is related to INSTRUCTIONAL_BUTTONS, COLOUR_SWITCHER_02, etc?
--]]
function GRAPHICS.IS_SCALEFORM_MOVIE_DELETING(val)
  return native.invoke(
    Type.Bool, 1324, false,
    arg(Type.Int, val)
  )
end

-- BOOL HAS_SCALEFORM_MOVIE_FILENAME_LOADED(const char* scaleformName) // 0x0C1C5D756FB5F337
--[[
Only values used in the scripts are:

"heist_mp"
"heistmap_mp"
"instructional_buttons"
"heist_pre"
--]]
function GRAPHICS.HAS_SCALEFORM_MOVIE_FILENAME_LOADED(scaleformName)
  return native.invoke(
    Type.Bool, 1325, false,
    arg(Type.String, scaleformName)
  )
end

-- BOOL HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT(int scaleformHandle) // 0x8217150E1217EBFD
function GRAPHICS.HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT(scaleformHandle)
  return native.invoke(
    Type.Bool, 1326, false,
    arg(Type.Int, scaleformHandle)
  )
end

-- void SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED(int* scaleformHandle) // 0x1D132D614DD86811
function GRAPHICS.SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED(scaleformHandle)
  native.invoke(
    Type.Void, 1327, false,
    ref(Type.Int, scaleformHandle)
  )
end

-- void SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME(int scaleform, BOOL toggle) // 0x6D8EB211944DCE08
function GRAPHICS.SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME(scaleform, toggle)
  native.invoke(
    Type.Void, 1328, false,
    arg(Type.Int, scaleform),
    arg(Type.Bool, toggle)
  )
end

-- void SET_SCALEFORM_MOVIE_TO_USE_LARGE_RT(int scaleformHandle, BOOL toggle) // 0x32F34FF7F617643B
function GRAPHICS.SET_SCALEFORM_MOVIE_TO_USE_LARGE_RT(scaleformHandle, toggle)
  native.invoke(
    Type.Void, 1329, false,
    arg(Type.Int, scaleformHandle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_SCALEFORM_MOVIE_TO_USE_SUPER_LARGE_RT(int scaleformHandle, BOOL toggle) // 0xE6A9F00D4240B519
--[[
This native is used in some casino scripts to fit the scaleform in the rendertarget.
--]]
function GRAPHICS.SET_SCALEFORM_MOVIE_TO_USE_SUPER_LARGE_RT(scaleformHandle, toggle)
  native.invoke(
    Type.Void, 1330, false,
    arg(Type.Int, scaleformHandle),
    arg(Type.Bool, toggle)
  )
end

-- void DRAW_SCALEFORM_MOVIE(int scaleformHandle, float x, float y, float width, float height, int red, int green, int blue, int alpha, int p9) // 0x54972ADAF0294A93
function GRAPHICS.DRAW_SCALEFORM_MOVIE(scaleformHandle, x, y, width, height, red, green, blue, alpha, p9)
  native.invoke(
    Type.Void, 1331, false,
    arg(Type.Int, scaleformHandle),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, width),
    arg(Type.Float, height),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Int, p9)
  )
end

-- void DRAW_SCALEFORM_MOVIE_FULLSCREEN(int scaleform, int red, int green, int blue, int alpha, int p5) // 0x0DF606929C105BE1
--[[
unk is not used so no need
--]]
function GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleform, red, green, blue, alpha, p5)
  native.invoke(
    Type.Void, 1332, false,
    arg(Type.Int, scaleform),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha),
    arg(Type.Int, p5)
  )
end

-- void DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED(int scaleform1, int scaleform2, int red, int green, int blue, int alpha) // 0xCF537FDE4FBD4CE5
function GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED(scaleform1, scaleform2, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1333, false,
    arg(Type.Int, scaleform1),
    arg(Type.Int, scaleform2),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void DRAW_SCALEFORM_MOVIE_3D(int scaleform, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float p7, float p8, float p9, float scaleX, float scaleY, float scaleZ, int rotationOrder) // 0x87D51D72255D4E78
function GRAPHICS.DRAW_SCALEFORM_MOVIE_3D(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, rotationOrder)
  native.invoke(
    Type.Void, 1334, false,
    arg(Type.Int, scaleform),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Float, scaleX),
    arg(Type.Float, scaleY),
    arg(Type.Float, scaleZ),
    arg(Type.Int, rotationOrder)
  )
end

-- void DRAW_SCALEFORM_MOVIE_3D_SOLID(int scaleform, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float p7, float p8, float p9, float scaleX, float scaleY, float scaleZ, int rotationOrder) // 0x1CE592FDC749D6F5
function GRAPHICS.DRAW_SCALEFORM_MOVIE_3D_SOLID(scaleform, posX, posY, posZ, rotX, rotY, rotZ, p7, p8, p9, scaleX, scaleY, scaleZ, rotationOrder)
  native.invoke(
    Type.Void, 1335, false,
    arg(Type.Int, scaleform),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, rotX),
    arg(Type.Float, rotY),
    arg(Type.Float, rotZ),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Float, scaleX),
    arg(Type.Float, scaleY),
    arg(Type.Float, scaleZ),
    arg(Type.Int, rotationOrder)
  )
end

-- void CALL_SCALEFORM_MOVIE_METHOD(int scaleform, const char* method) // 0xFBD96D87AC96D533
--[[
Calls the Scaleform function.
--]]
function GRAPHICS.CALL_SCALEFORM_MOVIE_METHOD(scaleform, method)
  native.invoke(
    Type.Void, 1336, false,
    arg(Type.Int, scaleform),
    arg(Type.String, method)
  )
end

-- void CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER(int scaleform, const char* methodName, float param1, float param2, float param3, float param4, float param5) // 0xD0837058AE2E4BEE
--[[
Calls the Scaleform function and passes the parameters as floats.

The number of parameters passed to the function varies, so the end of the parameter list is represented by -1.0.
--]]
function GRAPHICS.CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER(scaleform, methodName, param1, param2, param3, param4, param5)
  native.invoke(
    Type.Void, 1337, false,
    arg(Type.Int, scaleform),
    arg(Type.String, methodName),
    arg(Type.Float, param1),
    arg(Type.Float, param2),
    arg(Type.Float, param3),
    arg(Type.Float, param4),
    arg(Type.Float, param5)
  )
end

-- void CALL_SCALEFORM_MOVIE_METHOD_WITH_STRING(int scaleform, const char* methodName, const char* param1, const char* param2, const char* param3, const char* param4, const char* param5) // 0x51BC1ED3CC44E8F7
--[[
Calls the Scaleform function and passes the parameters as strings.

The number of parameters passed to the function varies, so the end of the parameter list is represented by 0 (NULL).
--]]
function GRAPHICS.CALL_SCALEFORM_MOVIE_METHOD_WITH_STRING(scaleform, methodName, param1, param2, param3, param4, param5)
  native.invoke(
    Type.Void, 1338, false,
    arg(Type.Int, scaleform),
    arg(Type.String, methodName),
    arg(Type.String, param1),
    arg(Type.String, param2),
    arg(Type.String, param3),
    arg(Type.String, param4),
    arg(Type.String, param5)
  )
end

-- void CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING(int scaleform, const char* methodName, float floatParam1, float floatParam2, float floatParam3, float floatParam4, float floatParam5, const char* stringParam1, const char* stringParam2, const char* stringParam3, const char* stringParam4, const char* stringParam5) // 0xEF662D8D57E290B1
--[[
Calls the Scaleform function and passes both float and string parameters (in their respective order).

The number of parameters passed to the function varies, so the end of the float parameters is represented by -1.0, and the end of the string parameters is represented by 0 (NULL).

NOTE: The order of parameters in the function prototype is important! All float parameters must come first, followed by the string parameters.

Examples:
// function MY_FUNCTION(floatParam1, floatParam2, stringParam)
GRAPHICS::CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING(scaleform, "MY_FUNCTION", 10.0, 20.0, -1.0, -1.0, -1.0, "String param", 0, 0, 0, 0);

// function MY_FUNCTION_2(floatParam, stringParam1, stringParam2)
GRAPHICS::CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING(scaleform, "MY_FUNCTION_2", 10.0, -1.0, -1.0, -1.0, -1.0, "String param #1", "String param #2", 0, 0, 0);
--]]
function GRAPHICS.CALL_SCALEFORM_MOVIE_METHOD_WITH_NUMBER_AND_STRING(scaleform, methodName, floatParam1, floatParam2, floatParam3, floatParam4, floatParam5, stringParam1, stringParam2, stringParam3, stringParam4, stringParam5)
  native.invoke(
    Type.Void, 1339, false,
    arg(Type.Int, scaleform),
    arg(Type.String, methodName),
    arg(Type.Float, floatParam1),
    arg(Type.Float, floatParam2),
    arg(Type.Float, floatParam3),
    arg(Type.Float, floatParam4),
    arg(Type.Float, floatParam5),
    arg(Type.String, stringParam1),
    arg(Type.String, stringParam2),
    arg(Type.String, stringParam3),
    arg(Type.String, stringParam4),
    arg(Type.String, stringParam5)
  )
end

-- BOOL BEGIN_SCALEFORM_SCRIPT_HUD_MOVIE_METHOD(int hudComponent, const char* methodName) // 0x98C494FD5BDFBFD5
--[[
Pushes a function from the Hud component Scaleform onto the stack. Same behavior as GRAPHICS::BEGIN_SCALEFORM_MOVIE_METHOD, just a hud component id instead of a Scaleform.

Known components:
19 - MP_RANK_BAR
20 - HUD_DIRECTOR_MODE

This native requires more research - all information can be found inside of 'hud.gfx'. Using a decompiler, the different components are located under "scripts\__Packages\com\rockstargames\gtav\hud\hudComponents" and "scripts\__Packages\com\rockstargames\gtav\Multiplayer".
--]]
function GRAPHICS.BEGIN_SCALEFORM_SCRIPT_HUD_MOVIE_METHOD(hudComponent, methodName)
  return native.invoke(
    Type.Bool, 1340, false,
    arg(Type.Int, hudComponent),
    arg(Type.String, methodName)
  )
end

-- BOOL BEGIN_SCALEFORM_MOVIE_METHOD(int scaleform, const char* methodName) // 0xF6E48914C7A8694E
--[[
Push a function from the Scaleform onto the stack

--]]
function GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scaleform, methodName)
  return native.invoke(
    Type.Bool, 1341, false,
    arg(Type.Int, scaleform),
    arg(Type.String, methodName)
  )
end

-- BOOL BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND(const char* methodName) // 0xAB58C27C2E6123C6
--[[
Starts frontend (pause menu) scaleform movie methods.
This can be used when you want to make custom frontend menus, and customize things like images or text in the menus etc.
Use `BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER` for header scaleform functions.
--]]
function GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND(methodName)
  return native.invoke(
    Type.Bool, 1342, false,
    arg(Type.String, methodName)
  )
end

-- BOOL BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER(const char* methodName) // 0xB9449845F73F5E9C
--[[
Starts frontend (pause menu) scaleform movie methods for header options.
Use `BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND` to customize the content inside the frontend menus.
--]]
function GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD_ON_FRONTEND_HEADER(methodName)
  return native.invoke(
    Type.Bool, 1343, false,
    arg(Type.String, methodName)
  )
end

-- void END_SCALEFORM_MOVIE_METHOD() // 0xC6796A8FFA375E53
--[[
Pops and calls the Scaleform function on the stack
--]]
function GRAPHICS.END_SCALEFORM_MOVIE_METHOD()
  native.invoke(
    Type.Void, 1344, false
  )
end

-- int END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE() // 0xC50AA39A577AF886
function GRAPHICS.END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE()
  return native.invoke(
    Type.Int, 1345, false
  )
end

-- BOOL IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(int methodReturn) // 0x768FF8961BA904D6
--[[
methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
Returns true if the return value of a scaleform function is ready to be collected (using GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING or GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT).
--]]
function GRAPHICS.IS_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_READY(methodReturn)
  return native.invoke(
    Type.Bool, 1346, false,
    arg(Type.Int, methodReturn)
  )
end

-- int GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(int methodReturn) // 0x2DE7EFA66B906036
--[[
methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
Used to get a return value from a scaleform function. Returns an int in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING returns a string.
--]]
function GRAPHICS.GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT(methodReturn)
  return native.invoke(
    Type.Int, 1347, false,
    arg(Type.Int, methodReturn)
  )
end

-- BOOL GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_BOOL(int methodReturn) // 0xD80A80346A45D761
--[[
methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
--]]
function GRAPHICS.GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_BOOL(methodReturn)
  return native.invoke(
    Type.Bool, 1348, false,
    arg(Type.Int, methodReturn)
  )
end

-- const char* GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING(int methodReturn) // 0xE1E258829A885245
--[[
methodReturn: The return value of this native: END_SCALEFORM_MOVIE_METHOD_RETURN_VALUE
Used to get a return value from a scaleform function. Returns a string in the same way GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_INT returns an int.
--]]
function GRAPHICS.GET_SCALEFORM_MOVIE_METHOD_RETURN_VALUE_STRING(methodReturn)
  return native.invoke(
    Type.String, 1349, false,
    arg(Type.Int, methodReturn)
  )
end

-- void SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT(int value) // 0xC3D0841A0CC546A6
--[[
Pushes an integer for the Scaleform function onto the stack.
--]]
function GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT(value)
  native.invoke(
    Type.Void, 1350, false,
    arg(Type.Int, value)
  )
end

-- void SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT(float value) // 0xD69736AAE04DB51A
--[[
Pushes a float for the Scaleform function onto the stack.
--]]
function GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT(value)
  native.invoke(
    Type.Void, 1351, false,
    arg(Type.Float, value)
  )
end

-- void SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL(BOOL value) // 0xC58424BA936EB458
--[[
Pushes a boolean for the Scaleform function onto the stack.
--]]
function GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL(value)
  native.invoke(
    Type.Void, 1352, false,
    arg(Type.Bool, value)
  )
end

-- void BEGIN_TEXT_COMMAND_SCALEFORM_STRING(const char* componentType) // 0x80338406F3475E55
--[[
Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.

Examples:
GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");
HUD::ADD_TEXT_COMPONENT_INTEGER(MISC::ABSI(a_1));
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();

GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");
HUD::ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(a_2);
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();

GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");
HUD::ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY(v_3);
HUD::ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY(v_4);
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();

GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");
HUD::ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY(v_3);
GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
--]]
function GRAPHICS.BEGIN_TEXT_COMMAND_SCALEFORM_STRING(componentType)
  native.invoke(
    Type.Void, 1353, false,
    arg(Type.String, componentType)
  )
end

-- void END_TEXT_COMMAND_SCALEFORM_STRING() // 0x362E2D3FE93A9959
function GRAPHICS.END_TEXT_COMMAND_SCALEFORM_STRING()
  native.invoke(
    Type.Void, 1354, false
  )
end

-- void END_TEXT_COMMAND_UNPARSED_SCALEFORM_STRING() // 0xAE4E8157D9ECF087
--[[
Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.

END_TEXT_COMMAND_VIA_SPECIAL_MODIFIABLE_STRING?
--]]
function GRAPHICS.END_TEXT_COMMAND_UNPARSED_SCALEFORM_STRING()
  native.invoke(
    Type.Void, 1355, false
  )
end

-- void SCALEFORM_MOVIE_METHOD_ADD_PARAM_LITERAL_STRING(const char* string) // 0x77FE3402004CD1B0
--[[
Same as SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING
Both SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING / _SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING_2 works, but _SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING_2 is usually used for "name" (organisation, players..).
--]]
function GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_LITERAL_STRING(string)
  native.invoke(
    Type.Void, 1356, false,
    arg(Type.String, string)
  )
end

-- void SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(const char* string) // 0xBA7148484BD90365
function GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING(string)
  native.invoke(
    Type.Void, 1357, false,
    arg(Type.String, string)
  )
end

-- void SCALEFORM_MOVIE_METHOD_ADD_PARAM_PLAYER_NAME_STRING(const char* string) // 0xE83A3E3557A56640
function GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_PLAYER_NAME_STRING(string)
  native.invoke(
    Type.Void, 1358, false,
    arg(Type.String, string)
  )
end

-- BOOL DOES_LATEST_BRIEF_STRING_EXIST(int p0) // 0x5E657EF1099EDD65
function GRAPHICS.DOES_LATEST_BRIEF_STRING_EXIST(p0)
  return native.invoke(
    Type.Bool, 1359, false,
    arg(Type.Int, p0)
  )
end

-- void SCALEFORM_MOVIE_METHOD_ADD_PARAM_LATEST_BRIEF_STRING(int value) // 0xEC52C631A1831C03
function GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_LATEST_BRIEF_STRING(value)
  native.invoke(
    Type.Void, 1360, false,
    arg(Type.Int, value)
  )
end

-- void REQUEST_SCALEFORM_SCRIPT_HUD_MOVIE(int hudComponent) // 0x9304881D6F6537EA
function GRAPHICS.REQUEST_SCALEFORM_SCRIPT_HUD_MOVIE(hudComponent)
  native.invoke(
    Type.Void, 1361, false,
    arg(Type.Int, hudComponent)
  )
end

-- BOOL HAS_SCALEFORM_SCRIPT_HUD_MOVIE_LOADED(int hudComponent) // 0xDF6E5987D2B4D140
function GRAPHICS.HAS_SCALEFORM_SCRIPT_HUD_MOVIE_LOADED(hudComponent)
  return native.invoke(
    Type.Bool, 1362, false,
    arg(Type.Int, hudComponent)
  )
end

-- void REMOVE_SCALEFORM_SCRIPT_HUD_MOVIE(int hudComponent) // 0xF44A5456AC3F4F97
function GRAPHICS.REMOVE_SCALEFORM_SCRIPT_HUD_MOVIE(hudComponent)
  native.invoke(
    Type.Void, 1363, false,
    arg(Type.Int, hudComponent)
  )
end

-- BOOL PASS_KEYBOARD_INPUT_TO_SCALEFORM(int scaleformHandle) // 0xD1C7CB175E012964
function GRAPHICS.PASS_KEYBOARD_INPUT_TO_SCALEFORM(scaleformHandle)
  return native.invoke(
    Type.Bool, 1364, false,
    arg(Type.Int, scaleformHandle)
  )
end

-- void SET_TV_CHANNEL(int channel) // 0xBAABBB23EB6E484E
function GRAPHICS.SET_TV_CHANNEL(channel)
  native.invoke(
    Type.Void, 1365, false,
    arg(Type.Int, channel)
  )
end

-- int GET_TV_CHANNEL() // 0xFC1E275A90D39995
function GRAPHICS.GET_TV_CHANNEL()
  return native.invoke(
    Type.Int, 1366, false
  )
end

-- void SET_TV_VOLUME(float volume) // 0x2982BF73F66E9DDC
function GRAPHICS.SET_TV_VOLUME(volume)
  native.invoke(
    Type.Void, 1367, false,
    arg(Type.Float, volume)
  )
end

-- float GET_TV_VOLUME() // 0x2170813D3DD8661B
function GRAPHICS.GET_TV_VOLUME()
  return native.invoke(
    Type.Float, 1368, false
  )
end

-- void DRAW_TV_CHANNEL(float xPos, float yPos, float xScale, float yScale, float rotation, int red, int green, int blue, int alpha) // 0xFDDC2B4ED3C69DF0
--[[
All calls to this native are preceded by calls to GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER and GRAPHICS::SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU, respectively.

"act_cinema.ysc", line 1483:
HUD::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375);
HUD::SET_TEXT_RENDER_ID(l_AE);
GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(4);
GRAPHICS::SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU(1);
if (GRAPHICS::IS_TVSHOW_CURRENTLY_PLAYING(${movie_arthouse})) {
    GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255);
} else { 
    GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
}

"am_mp_property_int.ysc", line 102545:
if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {
    if (HUD::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {
        HUD::SET_TEXT_RENDER_ID(a_2._f1);
        GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(4);
        GRAPHICS::SET_SCRIPT_GFX_DRAW_BEHIND_PAUSEMENU(1);
        GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);
        if (GRAPHICS::GET_TV_CHANNEL() == -1) {
            sub_a8fa5(a_2, 1);
        } else { 
            sub_a8fa5(a_2, 1);
            GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);
        }
        HUD::SET_TEXT_RENDER_ID(HUD::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());
    }
}

--]]
function GRAPHICS.DRAW_TV_CHANNEL(xPos, yPos, xScale, yScale, rotation, red, green, blue, alpha)
  native.invoke(
    Type.Void, 1369, false,
    arg(Type.Float, xPos),
    arg(Type.Float, yPos),
    arg(Type.Float, xScale),
    arg(Type.Float, yScale),
    arg(Type.Float, rotation),
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void SET_TV_CHANNEL_PLAYLIST(int tvChannel, const char* playlistName, BOOL restart) // 0xF7B38B8305F1FE8B
--[[
Loads specified video sequence into the TV Channel
TV_Channel ranges from 0-2
VideoSequence can be any of the following:
"PL_STD_CNT" CNT Standard Channel
"PL_STD_WZL" Weazel Standard Channel
"PL_LO_CNT"
"PL_LO_WZL"
"PL_SP_WORKOUT"
"PL_SP_INV" - Jay Norris Assassination Mission Fail
"PL_SP_INV_EXP" - Jay Norris Assassination Mission Success
"PL_LO_RS" - Righteous Slaughter Ad
"PL_LO_RS_CUTSCENE" - Righteous Slaughter Cut-scene
"PL_SP_PLSH1_INTRO"
"PL_LES1_FAME_OR_SHAME"
"PL_STD_WZL_FOS_EP2"
"PL_MP_WEAZEL" - Weazel Logo on loop
"PL_MP_CCTV" - Generic CCTV loop

Restart:
0=video sequence continues as normal
1=sequence restarts from beginning every time that channel is selected


The above playlists work as intended, and are commonly used, but there are many more playlists, as seen in `tvplaylists.xml`. A pastebin below outlines all playlists, they will be surronded by the name tag I.E. (<Name>PL_STD_CNT</Name> = PL_STD_CNT).
https://pastebin.com/zUzGB6h7
--]]
function GRAPHICS.SET_TV_CHANNEL_PLAYLIST(tvChannel, playlistName, restart)
  native.invoke(
    Type.Void, 1370, false,
    arg(Type.Int, tvChannel),
    arg(Type.String, playlistName),
    arg(Type.Bool, restart)
  )
end

-- void SET_TV_CHANNEL_PLAYLIST_AT_HOUR(int tvChannel, const char* playlistName, int hour) // 0x2201C576FACAEBE8
function GRAPHICS.SET_TV_CHANNEL_PLAYLIST_AT_HOUR(tvChannel, playlistName, hour)
  native.invoke(
    Type.Void, 1371, false,
    arg(Type.Int, tvChannel),
    arg(Type.String, playlistName),
    arg(Type.Int, hour)
  )
end

-- void _SET_TV_CHANNEL_PLAYLIST_DIRTY(int tvChannel, BOOL p1) // 0xEE831F15A8D0D94A
function GRAPHICS._SET_TV_CHANNEL_PLAYLIST_DIRTY(tvChannel, p1)
  native.invoke(
    Type.Void, 1372, false,
    arg(Type.Int, tvChannel),
    arg(Type.Bool, p1)
  )
end

-- void CLEAR_TV_CHANNEL_PLAYLIST(int tvChannel) // 0xBEB3D46BB7F043C0
function GRAPHICS.CLEAR_TV_CHANNEL_PLAYLIST(tvChannel)
  native.invoke(
    Type.Void, 1373, false,
    arg(Type.Int, tvChannel)
  )
end

-- BOOL IS_PLAYLIST_ON_CHANNEL(int tvChannel, Any p1) // 0x1F710BFF7DAE6261
function GRAPHICS.IS_PLAYLIST_ON_CHANNEL(tvChannel, p1)
  return native.invoke(
    Type.Bool, 1374, false,
    arg(Type.Int, tvChannel),
    arg(Type.Any, p1)
  )
end

-- BOOL IS_TVSHOW_CURRENTLY_PLAYING(Hash videoCliphash) // 0x0AD973CA1E077B60
function GRAPHICS.IS_TVSHOW_CURRENTLY_PLAYING(videoCliphash)
  return native.invoke(
    Type.Bool, 1375, false,
    arg(Type.Hash, videoCliphash)
  )
end

-- void ENABLE_MOVIE_KEYFRAME_WAIT(BOOL toggle) // 0x74C180030FDE4B69
function GRAPHICS.ENABLE_MOVIE_KEYFRAME_WAIT(toggle)
  native.invoke(
    Type.Void, 1376, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_TV_PLAYER_WATCHING_THIS_FRAME(Any p0) // 0xD1C55B110E4DF534
function GRAPHICS.SET_TV_PLAYER_WATCHING_THIS_FRAME(p0)
  native.invoke(
    Type.Void, 1377, false,
    arg(Type.Any, p0)
  )
end

-- Hash GET_CURRENT_TV_CLIP_NAMEHASH() // 0x30432A0118736E00
function GRAPHICS.GET_CURRENT_TV_CLIP_NAMEHASH()
  return native.invoke(
    Type.Hash, 1378, false
  )
end

-- void ENABLE_MOVIE_SUBTITLES(BOOL toggle) // 0x873FA65C778AD970
function GRAPHICS.ENABLE_MOVIE_SUBTITLES(toggle)
  native.invoke(
    Type.Void, 1379, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL UI3DSCENE_IS_AVAILABLE() // 0xD3A10FC7FD8D98CD
function GRAPHICS.UI3DSCENE_IS_AVAILABLE()
  return native.invoke(
    Type.Bool, 1380, false
  )
end

-- BOOL UI3DSCENE_PUSH_PRESET(const char* presetName) // 0xF1CEA8A4198D8E9A
--[[
All presets can be found in common\data\ui\uiscenes.meta
--]]
function GRAPHICS.UI3DSCENE_PUSH_PRESET(presetName)
  return native.invoke(
    Type.Bool, 1381, false,
    arg(Type.String, presetName)
  )
end

-- BOOL UI3DSCENE_ASSIGN_PED_TO_SLOT(const char* presetName, Ped ped, int slot, float posX, float posY, float posZ) // 0x98C4FE6EC34154CA
--[[
It's called after UI3DSCENE_IS_AVAILABLE and UI3DSCENE_PUSH_PRESET

presetName was always "CELEBRATION_WINNER"
All presets can be found in common\data\ui\uiscenes.meta
--]]
function GRAPHICS.UI3DSCENE_ASSIGN_PED_TO_SLOT(presetName, ped, slot, posX, posY, posZ)
  return native.invoke(
    Type.Bool, 1382, false,
    arg(Type.String, presetName),
    arg(Type.Ped, ped),
    arg(Type.Int, slot),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- void UI3DSCENE_CLEAR_PATCHED_DATA() // 0x7A42B2E236E71415
function GRAPHICS.UI3DSCENE_CLEAR_PATCHED_DATA()
  native.invoke(
    Type.Void, 1383, false
  )
end

-- void UI3DSCENE_MAKE_PUSHED_PRESET_PERSISTENT(BOOL toggle) // 0x108BE26959A9D9BB
function GRAPHICS.UI3DSCENE_MAKE_PUSHED_PRESET_PERSISTENT(toggle)
  native.invoke(
    Type.Void, 1384, false,
    arg(Type.Bool, toggle)
  )
end

-- void TERRAINGRID_ACTIVATE(BOOL toggle) // 0xA356990E161C9E65
--[[
This native enables/disables the gold putting grid display (https://i.imgur.com/TC6cku6.png).
This requires these two natives to be called as well to configure the grid: `TERRAINGRID_SET_PARAMS` and `TERRAINGRID_SET_COLOURS`.
--]]
function GRAPHICS.TERRAINGRID_ACTIVATE(toggle)
  native.invoke(
    Type.Void, 1385, false,
    arg(Type.Bool, toggle)
  )
end

-- void TERRAINGRID_SET_PARAMS(float x, float y, float z, float forwardX, float forwardY, float forwardZ, float sizeX, float sizeY, float sizeZ, float gridScale, float glowIntensity, float normalHeight, float heightDiff) // 0x1C4FC5752BCD8E48
--[[
This native is used along with these two natives: `TERRAINGRID_ACTIVATE` and `TERRAINGRID_SET_COLOURS`.
This native configures the location, size, rotation, normal height, and the difference ratio between min, normal and max.

All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png

This native renders a box at the given position, with a special shader that renders a grid on world geometry behind it. This box does not have backface culling.
The forward args here are a direction vector, something similar to what's returned by GET_ENTITY_FORWARD_VECTOR.
normalHeight and heightDiff are used for positioning the color gradient of the grid, colors specified via TERRAINGRID_SET_COLOURS.

Example with box superimposed on the image to demonstrate: https://i.imgur.com/wdqskxd.jpg
--]]
function GRAPHICS.TERRAINGRID_SET_PARAMS(x, y, z, forwardX, forwardY, forwardZ, sizeX, sizeY, sizeZ, gridScale, glowIntensity, normalHeight, heightDiff)
  native.invoke(
    Type.Void, 1386, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, forwardX),
    arg(Type.Float, forwardY),
    arg(Type.Float, forwardZ),
    arg(Type.Float, sizeX),
    arg(Type.Float, sizeY),
    arg(Type.Float, sizeZ),
    arg(Type.Float, gridScale),
    arg(Type.Float, glowIntensity),
    arg(Type.Float, normalHeight),
    arg(Type.Float, heightDiff)
  )
end

-- void TERRAINGRID_SET_COLOURS(int lowR, int lowG, int lowB, int lowAlpha, int r, int g, int b, int alpha, int highR, int highG, int highB, int highAlpha) // 0x5CE62918F8D703C7
--[[
This native is used along with these two natives: `TERRAINGRID_ACTIVATE` and `TERRAINGRID_SET_PARAMS`.
This native sets the colors for the golf putting grid. the 'min...' values are for the lower areas that the grid covers, the 'max...' values are for the higher areas that the grid covers, all remaining values are for the 'normal' ground height.
All those natives combined they will output something like this: https://i.imgur.com/TC6cku6.png
--]]
function GRAPHICS.TERRAINGRID_SET_COLOURS(lowR, lowG, lowB, lowAlpha, r, g, b, alpha, highR, highG, highB, highAlpha)
  native.invoke(
    Type.Void, 1387, false,
    arg(Type.Int, lowR),
    arg(Type.Int, lowG),
    arg(Type.Int, lowB),
    arg(Type.Int, lowAlpha),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, alpha),
    arg(Type.Int, highR),
    arg(Type.Int, highG),
    arg(Type.Int, highB),
    arg(Type.Int, highAlpha)
  )
end

-- void ANIMPOSTFX_PLAY(const char* effectName, int duration, BOOL looped) // 0x2206BF9A37B7F724
--[[
duration - is how long to play the effect for in milliseconds. If 0, it plays the default length
if loop is true, the effect won't stop until you call ANIMPOSTFX_STOP on it. (only loopable effects)

Full list of animpostFX / screen effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animPostFxNamesCompact.json
--]]
function GRAPHICS.ANIMPOSTFX_PLAY(effectName, duration, looped)
  native.invoke(
    Type.Void, 1388, false,
    arg(Type.String, effectName),
    arg(Type.Int, duration),
    arg(Type.Bool, looped)
  )
end

-- void ANIMPOSTFX_STOP(const char* effectName) // 0x068E835A1D0DC0E3
--[[
See ANIMPOSTFX_PLAY

Full list of animpostFX / screen effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animPostFxNamesCompact.json
--]]
function GRAPHICS.ANIMPOSTFX_STOP(effectName)
  native.invoke(
    Type.Void, 1389, false,
    arg(Type.String, effectName)
  )
end

-- float ANIMPOSTFX_GET_CURRENT_TIME(const char* effectName) // 0xE35B38A27E8E7179
--[[
See ANIMPOSTFX_PLAY

Full list of animpostFX / screen effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animPostFxNamesCompact.json
--]]
function GRAPHICS.ANIMPOSTFX_GET_CURRENT_TIME(effectName)
  return native.invoke(
    Type.Float, 1390, false,
    arg(Type.String, effectName)
  )
end

-- BOOL ANIMPOSTFX_IS_RUNNING(const char* effectName) // 0x36AD3E690DA5ACEB
--[[
Returns whether the specified effect is active.
See ANIMPOSTFX_PLAY

Full list of animpostFX / screen effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animPostFxNamesCompact.json
--]]
function GRAPHICS.ANIMPOSTFX_IS_RUNNING(effectName)
  return native.invoke(
    Type.Bool, 1391, false,
    arg(Type.String, effectName)
  )
end

-- void ANIMPOSTFX_STOP_ALL() // 0xB4EDDC19532BFB85
--[[
Stops ALL currently playing effects.
--]]
function GRAPHICS.ANIMPOSTFX_STOP_ALL()
  native.invoke(
    Type.Void, 1392, false
  )
end

-- void ANIMPOSTFX_STOP_AND_FLUSH_REQUESTS(const char* effectName) // 0xD2209BE128B5418C
--[[
Stops the effect and sets a value (bool) in its data (+0x199) to false.
See ANIMPOSTFX_PLAY

Full list of animpostFX / screen effects by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animPostFxNamesCompact.json
--]]
function GRAPHICS.ANIMPOSTFX_STOP_AND_FLUSH_REQUESTS(effectName)
  native.invoke(
    Type.Void, 1393, false,
    arg(Type.String, effectName)
  )
end


