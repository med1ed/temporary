---
order: -2
---

# First Function
We have figured out how to create windows and buttons, now let's try to get the coordinates of our NPC ( *Ped* )

Let's add the `IsPressed` variable to the code, which will be responsible for checking if the button is pressed, and a function that will check if the button is pressed and get our ped's position
```lua
-- Variable for pressing check
local IsPressed = false

-- Create a function to get the ID of our ped
-- Ped PLAYER_PED_ID() // 0xD80958FC74E988A6
function PLAYER_PED_ID()
    return native.invoke(Type.Ped, 4594, false)
end

-- Create a function through which we can get the ped position
-- Vector3 GET_ENTITY_COORDS(Entity entity, BOOL alive) // 0x3FEF770D40960D5A
function GET_ENTITY_COORDS(entity, alive)
    return native.invoke(Type.Vector3, 750, true, arg(Type.Entity, entity), arg(Type.Bool, alive))
end

--[[
    Initialize ImGui DirectX layer
    Within the DX layer you can call any functions (ImGui or Lua) that do not interact directly with the GTAV game engine (natives, globals, locals and pointers)
]]
gui.add_dx_layer("ImGui_DX_Layer", function()
    --[[
        Setting initial window size and position
        The `ImGuiCond.FirstUseEver` condition ensures that these settings are applied only the first time the window is rendered.
        This means, even if the `SetNextWindowSize` and `SetNextWindowPos` are called on each frame (or tick), they will only have effect once.
        In this case, the window will be initialized with a size of 200x100 pixels and will be positioned at the screen coordinates (550, 10).
    ]]
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    -- Start drawing our window
    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Get Coords")) then
            -- Set it to true to start our function
            IsPressed = true;
        end

        -- Ending the ImGui window rendering process
        ImGui.End() 
    end
end)

-- Function for working with GTAV natives, globals, locals and pointers. Not for ImGui!
script.register_script("My_Script_Function", function()
    -- Check if our button was pressed.
    if (IsPressed) then
        -- Get the ped ID
        local _ped = PLAYER_PED_ID()
        -- Get his position. true: if he's alive, false: if he's dead.
        local _coords = GET_ENTITY_COORDS(_ped, true)

        -- Output result to the console. ID: Id of our pedal, x: x-axis position, y: y-axis position, z: z-axis position.
        log.info("\n\tID: " .. _ped .. "\n\tx: " .. _coords.x .. "\n\ty: " .. _coords.y .. "\n\tz: " .. _coords.z)
        
        -- Set to false to disable our feature, this will avoid unnecessary spam and unnecessary calls to natives.
        IsPressed = false;
    end
end)
```
So, the code is written, let's see if it outputs the values we need.\
-![](https://i.imgur.com/1ykftxH.png)
And so we got the ID of our ped and position, let's now try to round these values a little so that they are not so cumbersome.\
To do this, we will change the code a little and add the lua function `string.format` to it.\
We modify only the part where we have `log.info` and after modification we get this code.
```lua
-- "%.2f": 0.00 or "%.3f": 0.000
log.info(
    "\n\tID: " .. _ped ..
    "\n\tx: " .. string.format("%.2f", _coords.x) ..
    "\n\ty: " .. string.format("%.2f", _coords.y) ..
    "\n\tz: " .. string.format("%.2f", _coords.z)
)
```
-![](https://i.imgur.com/Z5WWDbh.png)
Now we get a not so huge number.
