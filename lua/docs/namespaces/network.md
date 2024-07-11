---
order: -9
---

# Network

## network.trigger_script_event
Sends any script events to the player

`network.trigger_script_event(table args, int bitset)`
* `args`: A table that contains the event script itself and the required values.
* `bitset`: Player ID.
```lua
-- A notification on behalf of Michael will appear above the minimap with an error text
network.trigger_script_event({288412940, PlayerID, 0, 0}, PlayerID)
```
