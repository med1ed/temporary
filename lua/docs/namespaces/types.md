---
order: 0
---

# Types

Types that RE supports `Void`, `Any`, `Int`, `Float`, `Bool`, `String`, `Array`, `Vector3`, `Hash`, `Entity`, `Player`, `Ped`, `Vehicle`, `FireId`, `Interior`, `Cam`, `Object`, `Pickup`, `Blip` and `ScrHandle`.\
Most of them are only needed when using `native.invoke`, but there are some like `Vector3` that you can use in your code. 

Example of its usage:
```lua
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Button")) then
            local _vector3 = Vector3.new(16.38, 489.8, 7.548)

            log.info(
                "\n\tX: " .. _vector3.x ..
                "\n\tY: " .. _vector3.y ..
                "\n\tZ:" .. _vector3.z
            )
        end

        ImGui.End() 
    end
end)
```
!!!
Note: The `Array` type is intended exclusively for use as a parameter, it cannot be used as a return type. Arrays can be modified in-place when passed by reference to a function expecting an array paramete
!!!
