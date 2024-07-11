---
order: -8
---

# Script

## script.register_script
Function for working with GTAV natives, globals, locals and pointers. Not for ImGui!

`script.register_script(string name, function fn)`
* `name`: Script name.
* `fn`: Function to be executed by this script.
```lua
script.register_script("register_script", function() 
    log.info("register_script: I'm working!")
end)
```

## script.unregister_script
Deletes a script that was previously created.

`script.unregister_script(string name)`
* `name`: Script name.
```lua
script.unregister_script("register_script")
```

## script.execute_as_script
Can execute script in dx layer.
!!!danger
Don't use `script.execute_as_script` in a loop and don't abuse it!
!!!
`script.execute_as_script(function fn)`
* `fn`: Function to be executed by this script.
```lua
script.execute_as_script(function()
    log.info("execute_as_script: I'm working!")
end)
```

## script:yield
Pauses the script until the next game frame.

`script:yield()`
```lua
script.register_script("register_script", function(_s) 
    log.info("register_script: I'm working!")
    _s:yield()
end)
```

## script:sleep
Pauses the script for a specified duration in milliseconds.

`script:sleep(int ms)`
* `ms`: The duration of the pause in milliseconds.
```lua
script.register_script("register_script", function(_s) 
    log.info("register_script: I'm working!")
    _s:sleep(1000)
end)
```