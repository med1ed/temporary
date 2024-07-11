---
order: -1
---

# Native
!!!
You can find a ready-made list of all GTA natives in [natives page](/lua/gta_dump/natives.md)
!!!
## native.arg
`native.arg(InvokerType type, object val)`
* `type` the InvokerType enum value representing the type of the argument.
* `val` the value to be wrapped and passed to the invoker.
* `return` A structure with the argument's type and value, suitable for the invoker.

Prepares a value for the invoker by wrapping it with type information, primarily for scalar types.\
This helper function constructs an argument for the native invoker. It is used for non-reference types.\
Example:
```lua
local result = native.invoke(
    Type.Void,
    id, fix_vector,
    arg(Type.String, "Some Text"),
    arg(Type.Int, 123)
)
```

## native.ref
`native.ref(InvokerType type, table tbl, int array_size = 0)`
* `type` the InvokerType enum value specifying the type of the reference argument.
* `tbl` the Lua table to pass by reference; can be a pre-existing or newly created table.
* `array_size` optionally specifies the size for an array; defaults to 0, which is suitable for non-array types.
* `return` a structure tailored for the invoker that contains the type and the table to be passed by reference.

Prepares a reference argument for the invoker, capable of handling modifications, including arrays.\
This function is designed to handle arguments that are passed by reference to the native function. It is suitable for all reference types and ensures that the argument can be modified by the native function. When used with arrays, it provides additional functionality to resize an existing table or create a new one to match a specified size.\
Example:
```lua
local arrayHandle = {}
    local result = native.invoke(
    Type.Void,
    id, fix_vector,
    ref(Type.Array, arrayHandle, arraySize) -- arraySize should match the expected size by the native function.
)
```
* Note: When `ref` is used with an Array type, the `array_size` parameter dictates the size of the array to be passed. For non-Array types, the array_size should be omitted or set to zero.


## native.invoke
`native.invoke(Type type, Int id, Bool fix_vector, Args args)`
* `type`: the expected return type of the native function, defined by the InvokerType enum.
* `id`: Native IDs, they are generated through [REGenerator](/re-tools.md).
* `fix_vector`: Used to fix vectors of information.
* `args`: A variadic list of arguments to pass to the native function. Each argument should be wrapped using the arg or ref helper functions.
* `return`: the result of the native function call as a object.

Invokes a native game function with specified arguments and a return type.\
This function is the central hub for calling your own game functions from Lua. It takes an enumerated type for the expected return type, an id that points to the hash of its own function, a variable list of arguments wrapped by the arg or ref functions, and the current state of Lua.

Wrapper example for `NETWORK.NETWORK_HANDLE_FROM_PLAYER`, where `gamerHandleSize` is used both as the array size for `gamerHandle` and as the last argument of the native function, because this native function expects the array size as the last parameter.
```lua
function PLAYER_ID()
    return native.invoke(
        Type.Player, -- Sets the type of the native function
        4593, -- Native ID
        false -- Vector Fix
    )
end

function NETWORK_HANDLE_FROM_PLAYER(player, gamerHandle, gamerHandleSize)
    native.invoke(
        Type.Void, -- Sets the type of the native function
        3076, -- Native ID
        false, --  Vector Fix
        arg(Type.Player, player), -- Identify for which player we need a handle
        ref(Type.Array, gamerHandle, gamerHandleSize), -- Here gamerHandleSize is used to define the array size
        arg(Type.Int, gamerHandleSize) -- And also passed as the last argument to the native function
    )
end

gui.add_dx_layer("ImGui_DX_Layer", function()
    ImGui.SetNextWindowSize(200, 100, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowPos(30, 30, ImGuiCond.FirstUseEver)

    if (ImGui.Begin("ImGui Window")) then
        if (ImGui.Button("Button")) then
            IsPressed = true;
        end

        ImGui.End() 
    end
end)

script.register_script("My_Script_Function", function()
    if (IsPressed) then
        -- Calling the wrapper function
        local handle = {}
        NETWORK_HANDLE_FROM_PLAYER(PLAYER_ID(), handle, 13)

        for id, val in pairs(handle.result) do
            log.info("ID: " .. id .. " Val: " .. val)
        end

        -- Here, `handle` is a Lua table that will be passed as an array to the native function.
        -- It will be resized to contain 13 elements to meet the function's expectation,
        -- and 13 is also passed to the function as gamerHandleSize.
        IsPressed = false;
    end
end)
```
-![](https://i.imgur.com/Yc5Bb7v.png)-