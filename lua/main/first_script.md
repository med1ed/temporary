---
order: -1
---

# First Script

### Hello World!
Let's open our lua file that we created earlier and try to make a window and add a button that will output to the console `Hello World!`
```lua
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
        -- Render button and check if it is pressed
        if (ImGui.Button("Hello World!")) then
            log.info("Hello World!")
        end

        -- Ending the ImGui window rendering process
        ImGui.End() 
    end
end)
```
So we've written our first lua code in RE, let's see if it works. Click the `Reload` button and we see our `ImGui Window` along with our `Hello World` button! ![](https://i.imgur.com/yPcSpCW.png)
Now let's press the button to make sure it's done right.\
-![](https://i.imgur.com/CsnaJF1.png)

Our message was displayed in the console, so our code is fully working and we can try to do something more than just Hello World!
