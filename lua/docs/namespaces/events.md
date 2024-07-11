---
order: -2
---

# Events

+++ PlayerJoin
Event triggered when a player joins the lobby.

```lua
events.register(EventType.PlayerJoin, "main_playerJoin_handler", function (player_id, player_name) 
    -- Logging details
    log.info("---=== Player Connected ===---")
    log.info("PlayerID: " .. player_id)
    log.info("Player Name: " .. player_name)
end)
```
-![](https://i.imgur.com/OEsHJaH.png)-


+++ PlayerLeave
Event triggered when a player leaves the lobby.

```lua
events.register(EventType.PlayerLeave, "main_playerLeave_handler", function (player_id, player_name) 
    -- Logging details
    log.info("---=== Player Left ===---")
    log.info("PlayerID: " .. player_id)
    log.info("Player Name: " .. player_name)
end)
```
-![](https://i.imgur.com/MaoFvPh.png)-

+++ ChatMessageReceived
Event triggered when a chat message is received.

```lua
events.register(EventType.ChatMessageReceived, "main_ChatMessageReceived_handler", function (player_id, player_name, message) 
    -- Logging details
    log.info("---=== Chat Message Received ===---")
    log.info("PlayerID: " .. player_id)
    log.info("Player Name: " .. player_name)
    log.info("Message: " .. message)
end)
```
-![](https://i.imgur.com/cOpcpRq.png)-

+++ ScriptedEventReceived
Event triggered when a scripted event is received.

```lua
events.register(EventType.ScriptedEventReceived, "main_se_handler", function(player_id, player_name, event_id, event_args)
    -- Logging event details
    log.warning("---=== Incoming event ===---")
    log.warning("Sender Name: " .. player_name)
    log.warning("Sender ID: " .. player_id)
    log.warning("Event ID: " .. event_id)

    -- Formatting and logging event arguments
    local argsStr = "{ "
    for i, value in ipairs(event_args) do
        if i > 1 then
            argsStr = argsStr .. ", "
        end
        argsStr = argsStr .. tostring(value)
    end
    argsStr = argsStr .. " }"
    log.warning("Event Args: " .. argsStr)

    -- Return true to block the event by its ID. You can also add additional checks
    -- for other parameters passed in event_args for more precise control over event handling.
    if event_id == 1234567890 then
        log.reprotex("Triggered event: 1234567890")
        return true
    end
end)
```
-![](https://i.imgur.com/iicE6XK.png)-
+++