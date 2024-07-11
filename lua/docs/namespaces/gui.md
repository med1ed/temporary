---
order: -6
---

# gui
## gui.add_dx_layer
`gui.add_dx_layer(string hash, function fn)`\
-![](https://i.imgur.com/1vCn2pZ.png)
Initialize ImGui DirectX layer.
Within the DX layer you can call any functions (ImGui or Lua) that do not interact directly with the GTAV game engine (natives, globals, locals and pointers).\
`hash` The unique identifier for the rendering layer.\
`fn` The rendering function to be associated with the layer.

-![]()-

+++ Example 1 ✅
```lua #6,15-19
local IsPressed = false;
gui.add_dx_layer("hash_ui_function", function()
    -- your UI code
    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Button")) then
            IsPressed = true;
        end        
        
        ImGui.End() 
    end
end)

script.register_script("register_script", function() 
    -- your Script code
    if (IsPressed) then
        local example = globals.get_int(some_globals)
        log.info(example)
        IsPressed = false;
    end
end)
```
+++ Example 2 ✅
```lua #5-9
gui.add_dx_layer("hash_ui_function", function()
    -- your UI code
    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Button")) then
            script.execute_as_script(function()
                -- your Script code
                local example = globals.get_int(some_globals)
                log.info(example)
            end)
        end        

        ImGui.End() 
    end
end)
```
+++ Example 3 ❌
!!!danger
This is incorrect usage, do not use such code in your Lua!
!!!
```lua #5-6
gui.add_dx_layer("hash_ui_function", function()
    -- your UI code
    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Button")) then
            local example = globals.get_int(some_globals)
            log.info(example)
        end        

        ImGui.End() 
    end
end)
```
+++

## gui.remove_dx_layer
This function removes a rendering layer previously added by `add_dx_layer`.

`gui.remove_dx_layer(string hash)`

`hash` The unique identifier of the rendering layer to be removed.
Example:
```lua
gui.remove_dx_layer("hash_ui_function")
```

## gui.add_root
This function adds a root section for the script with a user-defined function in the Lua Manager section.

`gui.add_root(function fn)`

`fn` The function to be associated with the root section.

Example:
```lua
gui.add_root(function()
    ImGui.Text("I'm Root :)")
end)
```

## gui.add_section
Adds a subsection to the root section of the script.

`gui.add_section(string parent, string hash, string name, function fn)`

`parent` The unique identifier of the parent section.\
`hash` The unique identifier for the subsection.\
`name` The name of the subsection.\
`fn` The function to be associated with the subsection.

||| Available predefined section hashes:
    self
    vehicle
    online
    recovery
    weapons
    teleport
    model_changer
    model_swapper
    outfit_store
    animations
    crafting_workshop
    world
    about
|||

```lua #
gui.add_section("example_section_hash", "Example Section", function()   
    ImGui.Text(":)")
end)

-- or 

gui.add_section("self", "example_self_section_hash", "Example Self Section", function()   
    ImGui.Text(":)")
end)
```

## gui.is_section_present
This function checks if a section added from the script exists.

`gui.is_section_present(string hash)`\
`hash` The unique identifier of the section.

```lua #1
if (not gui.is_section_present("example_section_hash")) then
    gui.add_section("example_section_hash", "Example Section", function()   
        ImGui.Text(":)")
    end)
end
```

## gui.remove_section
This function removes a section from the script section if it exists.

`gui.remove_section(string hash)`\
`hash` The unique identifier of the section to be removed.

```lua #11,20
if (not gui.is_section_present("example_section_hash")) then
    gui.add_section("example_section_hash", "Example Section", function()   

        if (ImGui.Button("Add Another Section##main_section_button")) then

            if (not gui.is_section_present("another_section_hash")) then
                gui.add_section("another_section_hash", "Another Section", function()   
                    ImGui.Text("Hello from another section!")
        
                    if (ImGui.Button("Remove Section##another_section_button")) then
                        gui.remove_section("another_section_hash")
                    end
                end)
            end
        end

        ImGui.SameLine()
        
        if (ImGui.Button("Remove Section##main_section_button")) then
            gui.remove_section("another_section_hash")
        end
    end)
end
```

## gui.clear_sections
This function removes all sections from the script section.

`gui.clear_sections()`

```lua
gui.clear_sections()
```

## gui.set_cursor_active
This function sets the visibility of the cursor (show/hide).

`gui.set_cursor_active(bool state)`\
`state` The visibility state of the cursor.

```lua
gui.set_cursor_active(true)
-- or
gui.set_cursor_active(false)
```

## gui.is_cursor_active
Checks whether the mouse cursor is active or not. Returns `true` or `false`.

`gui.is_cursor_active()`

```lua
local _IsActive = gui.is_cursor_active()
log.info(tostring(_IsActive))
```


## gui.is_menu_open
Checks if the menu is active or not. Returns `true` or `false`.

`gui.is_menu_open()`

```lua
local _IsActive = gui.is_menu_open()
log.info(tostring(_IsActive))
```

## gui.get_scale
Finds out what scale is set in the menu. Returns a `float` value.

`gui.get_scale()`

```lua
local _scale = gui.get_scale()
log.info(tostring(_scale))
```

## gui.elements
### gui.elements.text_separator
Adds a text separator to your UI.

`gui.elements.text_separator(sting text)`\
`text` Text to be displayed.

```lua
gui.elements.text_separator("Text Separator")
```

### gui.elements.button
Adds a button to your UI.

`gui.elements.button(string text, ImVec2 size_arg, float speed = 5.f)`\
`text` The text label of the button.\
`size_x` The width of the button (optional).\
`size_y` The height of the button (optional).\
`speed` The speed at which the button will light up when you put the mouse cursor over it.

```lua
gui.elements.button("Button Name", 130, 40, 5)
```

### gui.elements.checkbox
This function creates a button style checkbox that the user can toggle.

`gui.elements.checkbox(string label, bool v, float size_x = 0.f, float size_y = 0.f)`\
`label` The label associated with the checkbox.\
`v` The initial checked state of the checkbox.\
`size_x` The width of the checkbox (optional).\
`size_y` The height of the checkbox (optional).

```lua
local _state = false
_state = gui.elements.checkbox("Checkbox Name", _state, 160, 30)
```

### gui.elements.collapsing_header
Adds a collapsible header to your UI.

`gui.elements.collapsing_header(string text, ImGuiTreeNodeFlags flags)`\
`text` Text to be displayed.\
`flags` Flags to customize the behavior and style of the header (optional). [ImGuiTreeNodeFlags](/lua/docs/ImGui/flags/ImGuiTreeNodeFlags.md)

```lua
gui.elements.collapsing_header("Header Name", ImGuiTreeNodeFlags.None)
```

### gui.elements.begin_combo
This function creates a combo box with given text and preview value.

`gui.elements.begin_combo(string text, string preview_value, ImGuiComboFlags flags = 0)`\
`text` Text to be displayed.\
`preview_value` Displays the preview value.\
`flags` Are responsible for configuring begin_combo. [ImGuiComboFlags](/lua/docs/ImGui/flags/ImGuiComboFlags.md)

```lua
gui.elements.begin_combo("Begin Combo", "Preview Value", 0)
```

### gui.elements.input_text
This function creates a text input field with an optional hint.

`gui.elements.input_text(string_view label, string input_str, ImGuiInputTextFlags flag = ImGuiInputTextFlags_None)`\
`label` The label of the input field.\
`input_str` The initial input string.\
`flag` Flags to customize the behavior and style of the input field (optional). [ImGuiInputTextFlags](/lua/docs/ImGui/flags/ImGuiInputTextFlags.md)

```lua
local _str = "Input String"
_str = gui.elements.input_text("Input Text", _str, ImGuiInputTextFlags.None)
```

### gui.elements.input_text_with_hint
This function creates a text input field with an optional hint and label.

`gui.elements.input_text_with_hint(string_view label, string_view hint, string input_str, int max_size = 256, ImGuiInputTextFlags flag = ImGuiInputTextFlags_None)`\
`label` The label of the input field.\
`hint` The hint displayed within the input field when it is empty.\
`input_str` The initial input string.\
`max_size` The maximum number of characters allowed (optional).\
`flag` Flags to customize the behavior and style of the input field (optional). [ImGuiInputTextFlags](/lua/docs/ImGui/flags/ImGuiInputTextFlags.md)

```lua
local _str = "Input String"
_str = gui.elements.input_text_with_hint("Input Text", "Input Hint", _str, 256, ImGuiInputTextFlags.None)
```

### gui.elements.selectable
This function creates an item that can be selected.

`gui.elements.selectable(string label, bool selected)`\
`label` The label of the selectable item.\
`selected` The initial selected state of the item.

```lua
local isSelected = true
gui.elements.selectable("Selectable", isSelected)
```

### gui.elements.slider_float
This function creates a slider to select an integer value within a specified range.

`gui.elements.slider_float(string label, float v, float v_min, float v_max)`\
`label` The label of the slider.\
`v` The initial value of the slider.\
`v_min` The minimum value of the slider.\
`v_max` The maximum value of the slider.

```lua
local _value = 0.5
_value = gui.elements.slider_float("Slider Float", _value, 0, 5)
```

### gui.elements.slider_int
This function creates a slider to select an integer value within a specified range.

`gui.elements.slider_int(string label, int v, int v_min, int v_max)`\
`label` The label of the slider.\
`v` The initial value of the slider.\
`v_min` The minimum value of the slider.\
`v_max` The maximum value of the slider.

```lua
local _value = 5
_value = gui.elements.slider_int("Slider Int", _value, 0, 10)
```

### gui.elements.sub_title
This function draws a text used as a sub-title in the GUI.

`gui.elements.sub_title(string text)`\
`text` The text to be displayed as a sub-title.
```lua
gui.elements.sub_title("Sub Title")
```

## gui.themes
### gui.themes.apply
To apply your theme

`gui.themes.apply(ImGuiStyle style)`

```lua
local _style = gui.themes.get_current_style()

-- To customize the parameters of the window and its elements
_style.WindowBorderSize = 0 -- or 1

-- To customize the color of the window and all elements
hStyle:set_color(ImGuiCol.Text, ImVec4.new(0.5, 0.6, 0.5, 1))
```

### gui.themes.get_default_style
Returns `ImGuiStyle` of the default theme

`gui.themes.get_default_style()`

### gui.themes.get_requiem_style
Returns `ImGuiStyle` of the requiem theme

`gui.themes.get_requiem_style()`

### gui.themes.get_current_style
Returns `ImGuiStyle` of the current theme

`gui.themes.get_current_style()`

### gui.themes.reset
Resets the current theme to the default theme

`gui.themes.reset()`
