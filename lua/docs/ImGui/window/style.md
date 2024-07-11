---
order: -4
---

# Style settings

## Color

* `ImGui.PushStyleColor(int idx, int col)`\
`idx`: [ImGuiCol](/lua/docs/ImGui/flags/ImGuiCol.md)
+++ Example 1
```lua #2
local _clr = ImVec4.new(0.8, 0.3, 0.3, 1.0)
ImGui.PushStyleColor(ImGuiCol.Text, _clr)
-- Your code for where this color should be applied
ImGui.PopStyleColor()
```
+++ Example 2
```lua #1
ImGui.PushStyleColor(ImGuiCol.Text, 0.8, 0.3, 0.3, 1.0)
-- Your code for where this color should be applied
ImGui.PopStyleColor()
```
+++

* `ImGui.PopStyleColor(int count)`
+++ Example 1
```lua #
ImGui.PopStyleColor()
```
+++ Example 2
```lua #4
ImGui.PushStyleColor(ImGuiCol.ImGuiCol.WindowBg, 0.8, 0.8, 0.8, 0.5)
ImGui.PushStyleColor(ImGuiCol.Text, 0.8, 0.3, 0.3, 1.0)
-- Your code for where this style should be applied
ImGui.PopStyleColor(2)
```
+++
* `ImGui.GetStyleColorVec4(int idx)`
```lua
local _r, _g, _b, _a = ImGui.GetStyleColorVec4(ImGuiCol.Text)
log.info("R: " .. _r .. ", G: " .. _g .. ", B: " .. _b .. ", A:" .. _a)
```

## Style 

* `ImGui.PushStyleVar(int idx, float valX, float valY)`\
`idx`: [ImGuiStyleVar](/lua/docs/ImGui/flags/ImGuiStyleVar.md)
+++ Example 1
```lua #2
local _vec2 = ImVec2.new(30, 30)
ImGui.PushStyleVar(ImGuiStyleVar.WindowPadding, _vec2)
-- Your code for where this style should be applied
ImGui.PopStyleVar()
```
+++ Example 2
```lua #1
ImGui.PushStyleVar(ImGuiStyleVar.WindowPadding, 30, 30)
-- Your code for where this style should be applied
ImGui.PopStyleVar()
```
+++

* `ImGui.PopStyleVar(int count)`
+++ Example 1
```lua #
ImGui.PopStyleVar()
```
+++ Example 2
```lua #5
local _vec2 = ImVec2.new(30, 30)
ImGui.PushStyleVar(ImGuiCol.WindowPadding, _vec2)
ImGui.PushStyleVar(ImGuiCol.WindowRounding, 1)
-- Your code for where this style should be applied
ImGui.PopStyleVar(2)
```
+++