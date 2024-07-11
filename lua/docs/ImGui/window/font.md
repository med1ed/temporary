---
order: -3
---

# Font manipulation

* `ImGui.PushFont(ImFont* pFont)`
```lua #3
local _font = ImGui.GetFontAwesome()

ImGui.PushFont(_font)
-- Text where you want to apply this font
ImGui.PopFont()
```

* `ImGui.PopFont()`

* `ImGui.GetFont()`

* `ImGui.GetFontTexUvWhitePixel()`
```lua #
local _x, _y = ImGui.GetFontTexUvWhitePixel()
log.info("X: " .. _x .. ", Y: " .. _y)
```