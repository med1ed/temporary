---
order: -2
---

## Windows Utilities

* `ImGui.IsWindowAppearing()`

* `ImGui.IsWindowCollapsed()`

* `ImGui.IsWindowFocused(int flags)`
```lua #5-7
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.IsWindowFocused(ImGuiFocusedFlags.AnyWindow)) then
        log.info("Focused on the window!")
    end

    if (ImGui.Begin("ImGui Window")) then

        ImGui.End() 
    end
end)
```

* `ImGui.IsWindowHovered(int flags)`
```lua #5-7
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.IsWindowHovered(ImGuiHoveredFlags.AnyWindow)) then
        log.info("Hovering over the window!")
    end

    if (ImGui.Begin("ImGui Window")) then

        ImGui.End() 
    end
end)
```

* `ImGui.GetWindowDrawList()`

* `ImGui.GetWindowPos()`
```lua #7-8
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Button")) then
            local _posX, _posY = ImGui.GetWindowPos()
            log.info("X: " .. _posX .. ", Y: " .. _posY)
        end

        ImGui.End() 
    end
end)
```

* `ImGui.GetWindowSize()`
```lua #7-8
gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Button")) then
            local _sizeX, _sizeY = ImGui.GetWindowSize()
            log.info("X: " .. _sizeX .. ", Y: " .. _sizeY)
        end

        ImGui.End() 
    end
end)
```

* `ImGui.GetWindowWidth()`

* `ImGui.GetWindowHeight()`

## Window Position & Size Settings

* `ImGui.SetNextWindowPos(float posX, float posY, int cond, float pivotX, float pivotY)`
+++Example 1
```lua
ImGui.SetNextWindowPos(30, 30)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)
```
+++Example 3
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver, 0.5, 0.5)
```
+++

* `ImGui.SetNextWindowSize(float sizeX, float sizeY, int cond)`
+++Example 1
```lua
ImGui.SetNextWindowSize(30, 30)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetNextWindowSize(30, 30, ImGuiCond.FirstUseEver)
```
+++

* `ImGui.SetNextWindowSizeConstraints(float minX, float minY, float maxX, float maxY)`
```lua
ImGui.SetNextWindowSizeConstraints(10, 10, 200, 200)
```

* `ImGui.SetNextWindowContentSize(float sizeX, float sizeY)`
```lua
ImGui.SetNextWindowContentSize(100, 50)
```

* `ImGui.SetNextWindowCollapsed(bool collapsed, int cond)`
+++Example 1
```lua
ImGui.SetNextWindowCollapsed(true)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetNextWindowCollapsed(true, ImGuiCond.Always)
```
+++

* `ImGui.SetNextWindowFocus()`

* `ImGui.SetNextWindowBgAlpha(float alpha)`\
`alpha`: Working range 0.0 -> 1.0
```lua
ImGui.SetNextWindowBgAlpha(0.70)
```

* `ImGui.SetWindowPos(float posX, float posY, int cond)`
+++Example 1
```lua
ImGui.SetWindowPos(30, 30)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetWindowPos(30, 30, ImGuiCond.Always)
```
+++

* `ImGui.SetWindowSize(float sizeX, float sizeY, int cond)`
+++Example 1
```lua
ImGui.SetWindowSize(30, 30)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetWindowSize(30, 30, ImGuiCond.Always)
```
+++

* `ImGui.SetWindowCollapsed(bool collapsed, int cond)`
+++Example 1
```lua
ImGui.SetNextWindowCollapsed(true)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetWindowCollapsed(true, ImGuiCond.Always)
```
+++

* `ImGui.SetWindowFocus()`

* `ImGui.SetWindowFontScale(float scale)`
```lua
ImGui.SetWindowFontScale(1.0)
```

* `ImGui.SetWindowPos(string name, float posX, float posY, int cond)`
+++Example 1
```lua
ImGui.SetWindowPos("window_name", 30, 30)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetWindowPos("window_name", 30, 30, ImGuiCond.Always)
```
+++

* `ImGui.SetWindowSize(string name, float sizeX, float sizeY, int cond)`
+++Example 1
```lua
ImGui.SetWindowSize("window_name", 30, 30)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetWindowSize("window_name", 30, 30, ImGuiCond.Always)
```
+++

* `ImGui.SetWindowCollapsed(string name, bool collapsed, int cond)`
+++Example 1
```lua
ImGui.SetNextWindowCollapsed("window_name", true)
```
+++Example 2
`cond`: [ImGuiCond](/lua/docs/ImGui/flags/ImGuiCond.md)
```lua
ImGui.SetWindowCollapsed("window_name", true, ImGuiCond.Always)
```
+++

* `ImGui.SetWindowFocus(string name)`
```lua
ImGui.SetWindowFocus("window_name")
```

## Content Region

* `ImGui.GetContentRegionMax()`
```lua
local _x, _y = ImGui.GetContentRegionMax()
```

* `ImGui.GetContentRegionAvail()`
```lua
local _x, _y = ImGui.GetContentRegionAvail()
```

* `ImGui.GetWindowContentRegionMin()`
```lua
local _x, _y = ImGui.GetWindowContentRegionMin()
```

* `ImGui.GetWindowContentRegionMax()`
```lua
local _x, _y = ImGui.GetWindowContentRegionMax()
```

## Windows Scrolling

* `ImGui.GetScrollX()`

* `ImGui.GetScrollY()`

* `ImGui.GetScrollMaxX()`

* `ImGui.GetScrollMaxY()`

* `ImGui.SetScrollX(float scrollX)`

* `ImGui.SetScrollY(float scrollY)`

* `ImGui.SetScrollHereX(float centerXRatio)`
+++ Example 1
```lua
ImGui.SetScrollHereX()
```
+++ Example 2
`0.0`: left/up, `0.5`: center, `1.0`: right/down
```lua
ImGui.SetScrollHereX(0.25)```
+++

* `ImGui.SetScrollHereY(float centerYRatio)`
+++ Example 1
```lua
ImGui.SetScrollHereY()
```
+++ Example 2
`0.0`: left/up, `0.5`: center, `1.0`: right/down
```lua
ImGui.SetScrollHereY(0.25)
```
+++

* `ImGui.SetScrollFromPosX(float localX, float centerXRatio)`
+++ Example 1
```lua
ImGui.SetScrollFromPosX(0.5)
```
+++ Example 2
```lua
ImGui.SetScrollFromPosX(0.5, 0.25)
```
+++

* `ImGui.SetScrollFromPosY(float localY, float centerYRatio)`
+++ Example 1
```lua
ImGui.SetScrollFromPosY(0.5)
```
+++ Example 2
```lua
ImGui.SetScrollFromPosY(0.5, 0.25)
```
+++
