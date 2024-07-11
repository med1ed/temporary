---
order: -1
---

# Widgets
### Text

#### `ImGui.Text(string text)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.Text("Some Text")        
        
        ImGui.End() 
    end
end)
```
#### `ImGui.TextUnformatted(string text)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.TextUnformatted("Some Text")        
        
        ImGui.End() 
    end
end)
```

#### `ImGui.TextColored(float colR, float colG, float colB, float colA, string text)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.TextColored(1.0, 0.3, 0.3, 1.0, "Some Text")        
        
        ImGui.End() 
    end
end)
```

#### `ImGui.TextDisabled(string text)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.TextDisabled("Some Text")        
        
        ImGui.End() 
    end
end)
```

#### `ImGui.TextWrapped(string text)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(50, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.TextWrapped("Some Text")        
        
        ImGui.End() 
    end
end)
```

#### `ImGui.LabelText(string label, string text)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.LabelText("Some Label", "Some Text")        
        
        ImGui.End() 
    end
end)
```

#### `ImGui.SeparatorText(string text)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.SeparatorText("Some Text")        
        
        ImGui.End() 
    end
end)
```

### Button

#### `ImGui.Button(string label, float sizeX, float sizeY)`
```lua #6,8
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.Button("Button 1") 
              
        ImGui.Button("Button 2", 130, 30)

        ImGui.End() 
    end
end)
```

#### `ImGui.SmallButton(string label)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.SmallButton("Button 1") 

        ImGui.End() 
    end
end)
```

#### `ImGui.InvisibleButton(string stringID, float sizeX, float sizeY)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.SmallButton("Button 1") 

        ImGui.End() 
    end
end)
```

#### `ImGui.ArrowButton(string stringID, ImGuiDir flags)`
* `flags`: [ImGuiDir](/lua/docs/ImGui/flags/ImGuiDir.md)
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.ArrowButton("Button 1", ImGuiDir.Up) 

        ImGui.End() 
    end
end)
```

#### `ImGui.RadioButton(string label, bool is_active)`
```lua #1,7,9,11-13
local state = true
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 150, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.RadioButton("Button 1", state) 
        
        ImGui.RadioButton("Button 2", not state) 
        
        if ImGui.RadioButton("Button 3", state) then 
            state = not state
        end

        ImGui.End() 
    end
end)
```
#### `ImGui.RadioButton(string label, int v, int vButton)`
```lua #1,7-10,12-15
local id = 0
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 150, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _idButton, _isClicked = ImGui.RadioButton("Button 1", id, 1)
        if (_isClicked) then
            id = _idButton
        end

        local _idButton, _isClicked = ImGui.RadioButton("Button 2", id, 2)
        if (_isClicked) then
            id = _idButton
        end
        
        ImGui.End() 
    end
end)
```

### Checkbox

#### `ImGui.Checkbox(string label, bool state)`
```lua #1,7-10
local state = false
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _returnState, _isClicked = ImGui.Checkbox("Checkbox", state)
        if (_isClicked) then
            state = _returnState
        end

        ImGui.End() 
    end
end)
```
### ProgressBar

#### `ImGui.ProgressBar(float fraction, float sizeX, float sizeY, string overlay)`
```lua #1-2,8-9,11-15,21-24
local valueProgressBar = 0
local valueProgressBarInstalled = 0
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(230, 150, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.ProgressBar(valueProgressBar)
        ImGui.ProgressBar(valueProgressBar, 200, 30)

        ImGui.ProgressBar(valueProgressBarInstalled, 200, 30, "installed...")
        valueProgressBarInstalled = valueProgressBarInstalled + 0.01
        if (valueProgressBarInstalled >= 1.0) then
            valueProgressBarInstalled = 0
        end 
        ImGui.End() 
    end
end)

script.register_script("register_script", function(_s) 
    valueProgressBar = valueProgressBar + 0.01
    if (valueProgressBar >= 1.0) then
        valueProgressBar = 0
    end 
    _s:sleep(100)
end)
```

### Bullet

#### `ImGui.Bullet()`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(230, 150, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.Bullet(); ImGui.SmallButton("Button")
         just
        ImGui.Bullet()
        
        ImGui.End() 
    end
end)
```

#### `ImGui.BulletText(string text)`
```lua #6
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        ImGui.BulletText("Some Text")        
        
        ImGui.End() 
    end
end)
```

### Combo Box

#### `ImGui.BeginCombo(string label, string previewValue, int flags)`
`flags`: [ImGuiComboFlags](/lua/docs/ImGui/flags/ImGuiComboFlags.md)
```lua #1-2,9-19
local _list = { "AAAA", "BBBB", "CCCC", "DDDD", "EEEE", "FFFF"}
local _currentSelectedID = 1

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        if (ImGui.BeginCombo("Label", _list[_currentSelectedID], ImGuiComboFlags.PopupAlignLeft)) then
            for k, v in pairs(_list) do
                local _isSelected = (_currentSelectedID == k) 
                if ImGui.Selectable(_list[k], _isSelected) then
                    _currentSelectedID = k
                    log.info(tostring(_list[k]))
                end
            end

            ImGui.EndCombo()
        end
        
        ImGui.End() 
    end
end)
```

#### `ImGui.Combo(string label, int currentItem, table items, int itemsCount, int popupMaxHeightInItems)`
```lua #1-2,9-13,15-19
local _list = { "AAAA", "BBBB", "CCCC", "DDDD", "EEEE", "FFFF"}
local _currentSelectedID = 1

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(300, 110, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _selectedID, _clicked = ImGui.Combo("Combo", _currentSelectedID, _list, #_list)
        if (_clicked) then
            _currentSelectedID = _selectedID
            log.info(tostring(_list[_currentSelectedID]))
        end

        local _selectedID, _clicked = ImGui.Combo("Combo 2", _currentSelectedID, _list, #_list, 3)
        if (_clicked) then
            _currentSelectedID = _selectedID
            log.info(tostring(_list[_currentSelectedID]))
        end

        ImGui.End() 
    end
end)
```

### Drag Float

#### `ImGui.DragFloat(string label, float v, float v_speed, float v_min, float v_max, string format, int flags)`
`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-12,14-18,20-24,26-30
local _defaultValue = 10.5

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _used = ImGui.DragFloat("Drag Float",  _defaultValue)
        if (_used) then
            _defaultValue = _value
            log.info(_defaultValue)
        end

        local _value, _used = ImGui.DragFloat("Drag Float",  _defaultValue, 100)
        if (_used) then
            _defaultValue = _value
            log.info(_defaultValue)
        end

        local _value, _used = ImGui.DragFloat("Drag Float",  _defaultValue, 0.1, 5.1, 15.9)
        if (_used) then
            _defaultValue = _value
            log.info(_defaultValue)
        end

        local _value, _used = ImGui.DragFloat("Drag Float",  _defaultValue, 0.1, 5.1, 15.9, "Value: %.3f", ImGuiSliderFlags.NoInput)
        if (_used) then
            _defaultValue = _value
            log.info(_defaultValue)
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.DragFloat2(string label, table v, float v_speed, float v_min, float v_max, string format, int flag)`
`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-12,14-18,20-24,26-30
local _defaultValue = {10.5, 3.8}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _used = ImGui.DragFloat2("Drag Float",  _defaultValue)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2])
        end

        local _value, _used = ImGui.DragFloat2("Drag Float",  _defaultValue, 100)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2])
        end

        local _value, _used = ImGui.DragFloat2("Drag Float",  _defaultValue, 0.1, 5.1, 15.9)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2])
        end

        local _value, _used = ImGui.DragFloat2("Drag Float",  _defaultValue, 0.1, 5.1, 15.9, "Value: %.3f", ImGuiSliderFlags.NoInput)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2])
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.DragFloat3(string label, table v, float v_speed, float v_min, float v_max, string format, int flag)`
`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-12,14-18,20-24,26-30
local _defaultValue = {10.5, 3.8, 5.7}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _used = ImGui.DragFloat3("Drag Float",  _defaultValue)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2] .. ",\nValue 3: " .. _defaultValue[3])
        end

        local _value, _used = ImGui.DragFloat3("Drag Float",  _defaultValue, 100)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2] .. ",\nValue 3: " .. _defaultValue[3])
        end

        local _value, _used = ImGui.DragFloat3("Drag Float",  _defaultValue, 0.1, 5.1, 15.9)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2] .. ",\nValue 3: " .. _defaultValue[3])
        end

        local _value, _used = ImGui.DragFloat3("Drag Float",  _defaultValue, 0.1, 5.1, 15.9, "Value: %.3f", ImGuiSliderFlags.NoInput)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2] .. ",\nValue 3: " .. _defaultValue[3])
        end

        ImGui.End() 
    end
end)
```


#### `ImGui.DragFloat4(string label, table v, float v_speed, float v_min, float v_max, string format, int flag)`
`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-12,14-18,20-24,26-30
local _defaultValue = {10.5, 3.8, 5.7, 14.6}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _used = ImGui.DragFloat4("Drag Float",  _defaultValue)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2] .. ",\nValue 3: " .. _defaultValue[3] .. ",\nValue 4: " .. _defaultValue[4])
        end

        local _value, _used = ImGui.DragFloat4("Drag Float",  _defaultValue, 100)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2] .. ",\nValue 3: " .. _defaultValue[3] .. ",\nValue 4: " .. _defaultValue[4])
        end

        local _value, _used = ImGui.DragFloat4("Drag Float",  _defaultValue, 0.1, 5.1, 15.9)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2] .. ",\nValue 3: " .. _defaultValue[3] .. ",\nValue 4: " .. _defaultValue[4])
        end

        local _value, _used = ImGui.DragFloat4("Drag Float",  _defaultValue, 0.1, 5.1, 15.9, "Value: %.3f", ImGuiSliderFlags.NoInput)
        if (_used) then
            _defaultValue = _value
            log.info("\nValue 1: ".. _defaultValue[1] .. ",\nValue 2: " .. _defaultValue[2] .. ",\nValue 3: " .. _defaultValue[3] .. ",\nValue 4: " .. _defaultValue[4])
        end

        ImGui.End() 
    end
end)
```


### Drag Int

#### `ImGui.DragInt(string label, float v, float v_speed, float v_min, float v_max, string format, int flags)`
`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-12,14-18,20-24,26-30
local _dragIntValue = 10

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _used = ImGui.DragInt("Drag Int",  _dragIntValue)
        if (_used) then
            _dragIntValue = _value
            log.info(_dragIntValue)
        end

        local _value, _used = ImGui.DragInt("Drag Int",  _dragIntValue, 100)
        if (_used) then
            _dragIntValue = _value
            log.info(_dragIntValue)
        end

        local _value, _used = ImGui.DragInt("Drag Int",  _dragIntValue, 12, 5, 15)
        if (_used) then
            _dragIntValue = _value
            log.info(_dragIntValue)
        end

        local _value, _used = ImGui.DragInt("Drag Int",  _dragIntValue, 1, 5, 15, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_used) then
            _dragIntValue = _value
            log.info(_dragIntValue)
        end

        ImGui.End() 
    end
end)
```


#### `ImGui.DragInt2(string label, table v, float v_speed, float v_min, float v_max, string format, int flag)`
`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-12,14-18,20-24,26-30
local _dragInt2Value = {10, 6}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _used = ImGui.DragInt2("Drag Int",  _dragInt2Value)
        if (_used) then
            _dragInt2Value = _value
            log.info("\nValue 1: ".. _dragInt2Value[1] .. ",\nValue 2: " .. _dragInt2Value[2])
        end

        local _value, _used = ImGui.DragInt2("Drag Int 2",  _dragInt2Value, 100)
        if (_used) then
            _dragInt2Value = _value
            log.info("\nValue 1: ".. _dragInt2Value[1] .. ",\nValue 2: " .. _dragInt2Value[2])
        end

        local _value, _used = ImGui.DragInt2("Drag Int 3",  _dragInt2Value, 12, 5, 15)
        if (_used) then
            _dragInt2Value = _value
            log.info("\nValue 1: ".. _dragInt2Value[1] .. ",\nValue 2: " .. _dragInt2Value[2])
        end

        local _value, _used = ImGui.DragInt2("Drag Int 4",  _dragInt2Value, 1, 5, 15, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_used) then
            _dragInt2Value = _value
            log.info("\nValue 1: ".. _dragInt2Value[1] .. ",\nValue 2: " .. _dragInt2Value[2])
        end

        ImGui.End() 
    end
end)
```


#### `ImGui.DragInt3(string label, table v, float v_speed, float v_min, float v_max, string format, int flag)`
`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-12,14-18,20-24,26-30
local _dragInt3Value = {10, 6, 1}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _used = ImGui.DragInt3("Drag Int",  _dragInt3Value)
        if (_used) then
            _dragInt3Value = _value
            log.info("\nValue 1: ".. _dragInt3Value[1] .. ",\nValue 2: " .. _dragInt3Value[2] .. ",\nValue 3: " .. _dragInt3Value[3])
        end

        local _value, _used = ImGui.DragInt3("Drag Int 2",  _dragInt3Value, 1)
        if (_used) then
            _dragInt3Value = _value
            log.info("\nValue 1: ".. _dragInt3Value[1] .. ",\nValue 2: " .. _dragInt3Value[2] .. ",\nValue 3: " .. _dragInt3Value[3])
        end

        local _value, _used = ImGui.DragInt3("Drag Int 3",  _dragInt3Value, 1, 5, 15)
        if (_used) then
            _dragInt3Value = _value
            log.info("\nValue 1: ".. _dragInt3Value[1] .. ",\nValue 2: " .. _dragInt3Value[2] .. ",\nValue 3: " .. _dragInt3Value[3])
        end

        local _value, _used = ImGui.DragInt3("Drag Int 4",  _dragInt3Value, 1, 5, 15, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_used) then
            _dragInt3Value = _value
            log.info("\nValue 1: ".. _dragInt3Value[1] .. ",\nValue 2: " .. _dragInt3Value[2] .. ",\nValue 3: " .. _dragInt3Value[3])
        end

        ImGui.End() 
    end
end)
```



#### `ImGui.DragInt4(string label, table v, float v_speed, float v_min, float v_max, string format, int flag)`
`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-12,14-18,20-24,26-30
local _dragInt4Value = {10, 6, 12, 15}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _used = ImGui.DragInt4("Drag Int",  _dragInt4Value)
        if (_used) then
            _dragInt4Value = _value
            log.info("\nValue 1: ".. _dragInt4Value[1] .. ",\nValue 2: " .. _dragInt4Value[2] .. ",\nValue 3: " .. _dragInt4Value[3] .. ",\nValue 4: " .. _dragInt4Value[4])
        end

        local _value, _used = ImGui.DragInt4("Drag Int 2",  _dragInt4Value, 1)
        if (_used) then
            _dragInt4Value = _value
            log.info("\nValue 1: ".. _dragInt4Value[1] .. ",\nValue 2: " .. _dragInt4Value[2] .. ",\nValue 3: " .. _dragInt4Value[3] .. ",\nValue 4: " .. _dragInt4Value[4])
        end

        local _value, _used = ImGui.DragInt4("Drag Int 3",  _dragInt4Value, 1, 5, 15)
        if (_used) then
            _dragInt4Value = _value
            log.info("\nValue 1: ".. _dragInt4Value[1] .. ",\nValue 2: " .. _dragInt4Value[2] .. ",\nValue 3: " .. _dragInt4Value[3] .. ",\nValue 4: " .. _dragInt4Value[4])
        end

        local _value, _used = ImGui.DragInt4("Drag Int 4",  _dragInt4Value, 1, 5, 15, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_used) then
            _dragInt4Value = _value
            log.info("\nValue 1: ".. _dragInt4Value[1] .. ",\nValue 2: " .. _dragInt4Value[2] .. ",\nValue 3: " .. _dragInt4Value[3] .. ",\nValue 4: " .. _dragInt4Value[4])
        end

        ImGui.End() 
    end
end)
```




### Sliders

#### `ImGui.SliderFloat(string label, float v, float v_min, float v_max, string format, int flag)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)

```lua #1,8-11,13-16
local value = 50

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(230, 150, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderFloat("Slider 1", value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        local _value, _isClicked = ImGui.SliderFloat("Slider 2", value, 0, 100, "Value: %.3f", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.SliderFloat2(string label, table v, float v_min, float v_max, string format, int flag)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)

```lua #1,8-11,13-16
local value = {50, 10}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(350, 110, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderFloat2("Slider 1", value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        local _value, _isClicked = ImGui.SliderFloat2("Slider 2", value, 0, 100, "Value: %.3f", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.SliderFloat3(string label, table v, float v_min, float v_max, string format, int flag)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)

```lua #1,8-11,13-16
local value = {50, 10, 80}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(500, 110, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderFloat3("Slider 1", value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        local _value, _isClicked = ImGui.SliderFloat3("Slider 2", value, 0, 100, "Value: %.3f", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.SliderFloat4(string label, table v, float v_min, float v_max, string format, int flag)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)

```lua #1,8-11,13-16
local value = {50, 10, 80, 100}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(500, 110, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderFloat4("Slider 1", value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        local _value, _isClicked = ImGui.SliderFloat4("Slider 2", value, 0, 100, "Value: %.3f", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.SliderAngle(float v_rad, float v_degrees_min, float v_degrees_max, string format, int flags)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-11,13-16,18-21
local value = 0

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(500, 150)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderAngle("Slider Angle 1", value)
        if (_isClicked) then
            value = _value
        end

        local _value, _isClicked = ImGui.SliderAngle("Slider Angle 2", value, -10, 10)
        if (_isClicked) then
            value = _value
        end

        local _value, _isClicked = ImGui.SliderAngle("Slider Angle 3", value, -50, 50, "Value: %.0f", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.SliderInt(string label, int v, int v_min, int v_max, string format, int flag)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)

```lua #1,8-11,13-16
local value = 50

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(230, 150, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderInt("Slider 1", value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        local _value, _isClicked = ImGui.SliderInt("Slider 2", value, 0, 100, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.SliderInt2(string label, table v, int v_min, int v_max, string format, int flag)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)

```lua #1,8-11,13-16
local value = {50, 10}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(350, 110, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderInt2("Slider 1", value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        local _value, _isClicked = ImGui.SliderInt2("Slider 2", value, 0, 100, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.SliderInt3(string label, table v, int v_min, int v_max, string format, int flag)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)

```lua #1,8-11,13-16
local value = {50, 10, 80}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(500, 110, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderInt3("Slider 1", value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        local _value, _isClicked = ImGui.SliderInt3("Slider 2", value, 0, 100, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.SliderInt4(string label, table v, int v_min, int v_max, string format, int flag)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)

```lua #1,8-11,13-16
local value = {50, 10, 80, 100}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(500, 110, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.SliderInt4("Slider 1", value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        local _value, _isClicked = ImGui.SliderInt4("Slider 2", value, 0, 100, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.VSliderFloat(string label, float sizeX, float sizeY, float v, float v_min, float v_max, string format, int flags)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-11,15-18
local value = 20

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(320, 150, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.VSliderFloat("Slider 1", 60, 100, value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        ImGui.SameLine()        

        local _value, _isClicked = ImGui.VSliderFloat("Slider 2", 100, 100, value, 0, 100, "Value: %.f3", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.VSliderInt(string label, float sizeX, float sizeY, int v, int v_min, float v_max, string format, int flags)`

`flags`: [ImGuiSliderFlags](/lua/docs/ImGui/flags/ImGuiSliderFlags.md)
```lua #1,8-11,15-18
local value = 20

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(320, 150, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _isClicked = ImGui.VSliderInt("Slider 1", 60, 100, value, 0, 100)
        if (_isClicked) then
            value = _value
        end
        
        ImGui.SameLine()        

        local _value, _isClicked = ImGui.VSliderInt("Slider 2", 100, 100, value, 0, 100, "Value: %d", ImGuiSliderFlags.NoInput)
        if (_isClicked) then
            value = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.InputText(string label, string text, int buf_size, int flags)`

`flags`: [ImGuiInputTextFlags](/lua/docs/ImGui/flags/ImGuiInputTextFlags.md)
```lua #1,8-9,11-14
local SomeText = "Some Text"

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(320, 105, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value = ImGui.InputText("Input 1", SomeText, 22)
        SomeText = _value
        
        local _value, _isClicked = ImGui.InputText("Input 2", SomeText, 22, ImGuiInputTextFlags.EnterReturnsTrue)
        if (_isClicked) then
            SomeText = _value
        end

        ImGui.End() 
    end
end)
```

#### `ImGui.InputTextMultiline(string label, string text, int buf_size, int flags, float sizeX, float sizeY, int flags)`

`flags`: [ImGuiInputTextFlags](/lua/docs/ImGui/flags/ImGuiInputTextFlags.md)
```lua #1,8-9,11-12
local SomeText = "Some Text"

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(400, 325, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value = ImGui.InputTextMultiline("Input 1", SomeText, 22)
        SomeText = _value
        
        local _value = ImGui.InputTextMultiline("Input 2", SomeText, 22, 200, 100, ImGuiInputTextFlags.AlwaysOverwrite)
        SomeText = _value

        ImGui.End() 
    end
end)
```

#### `ImGui.InputTextWithHint(string label, string hint, string text, int buf_size, int flags)`

`flags`: [ImGuiInputTextFlags](/lua/docs/ImGui/flags/ImGuiInputTextFlags.md)
```lua
local SomeText = "Some Text"

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value = ImGui.InputTextWithHint("Input 1", "Write your password!", SomeText, 22, ImGuiInputTextFlags.Password)
        SomeText = _value

        ImGui.End() 
    end
end)
```

#### `ImGui.InputFloat(string label, float v, float step, float step_fast, string format, int flags)`

`flags`: [ImGuiInputTextFlags](/lua/docs/ImGui/flags/ImGuiInputTextFlags.md)
```lua #1,8-11,13-17
local value = {5.5, 2}

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(400, 150)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then   
        local _value, _IsCliced = ImGui.InputFloat2("Input 1", value)
        if (_IsCliced) then
            value = _value
        end

        local _value, _IsCliced = ImGui.InputFloat("Input 2", value, "Value: %.3f", ImGuiInputTextFlags.ReadOnly)
        if (_IsCliced) then
            value = _value
        end

        ImGui.End() 
    end
end)
```