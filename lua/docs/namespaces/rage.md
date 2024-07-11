---
order: -13
---

# Rage

## rage.joaat
Calculates the hash of the given string using the Jenkins one-at-a-time algorithm.

`rage.joaat(string text)`
* `text`: The text you want to turn into a hash

```lua #8-10
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Button")) then
            script.execute_as_script(function()
                local _model = "A_C_Cow"
                local _hash = rage.joaat(_model)
                log.info(tostring(_hash))
            end)
        end

        ImGui.End() 
    end
end)
```