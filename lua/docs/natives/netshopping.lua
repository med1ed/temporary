NETSHOPPING = {}

-- BOOL NET_GAMESERVER_USE_SERVER_TRANSACTIONS() // 0x7D2708796355B20B
function NETSHOPPING.NET_GAMESERVER_USE_SERVER_TRANSACTIONS()
  return native.invoke(
    Type.Bool, 2687, false
  )
end

-- BOOL NET_GAMESERVER_CATALOG_ITEM_IS_VALID(const char* name) // 0xBD4D7EAF8A30F637
function NETSHOPPING.NET_GAMESERVER_CATALOG_ITEM_IS_VALID(name)
  return native.invoke(
    Type.Bool, 2688, false,
    arg(Type.String, name)
  )
end

-- BOOL NET_GAMESERVER_CATALOG_ITEM_KEY_IS_VALID(Hash hash) // 0x247F0F73A182EA0B
function NETSHOPPING.NET_GAMESERVER_CATALOG_ITEM_KEY_IS_VALID(hash)
  return native.invoke(
    Type.Bool, 2689, false,
    arg(Type.Hash, hash)
  )
end

-- int NET_GAMESERVER_GET_PRICE(Hash itemHash, Hash categoryHash, BOOL p2) // 0xC27009422FCCA88D
--[[
bool is always true in game scripts
--]]
function NETSHOPPING.NET_GAMESERVER_GET_PRICE(itemHash, categoryHash, p2)
  return native.invoke(
    Type.Int, 2690, false,
    arg(Type.Hash, itemHash),
    arg(Type.Hash, categoryHash),
    arg(Type.Bool, p2)
  )
end

-- BOOL NET_GAMESERVER_CATALOG_IS_VALID() // 0x3C4487461E9B0DCB
function NETSHOPPING.NET_GAMESERVER_CATALOG_IS_VALID()
  return native.invoke(
    Type.Bool, 2691, false
  )
end

-- BOOL NET_GAMESERVER_IS_CATALOG_CURRENT() // 0x2B949A1E6AEC8F6A
function NETSHOPPING.NET_GAMESERVER_IS_CATALOG_CURRENT()
  return native.invoke(
    Type.Bool, 2692, false
  )
end

-- Hash NET_GAMESERVER_GET_CATALOG_CLOUD_CRC() // 0x85F6C9ABA1DE2BCF
function NETSHOPPING.NET_GAMESERVER_GET_CATALOG_CLOUD_CRC()
  return native.invoke(
    Type.Hash, 2693, false
  )
end

-- BOOL NET_GAMESERVER_REFRESH_SERVER_CATALOG() // 0x357B152EF96C30B6
function NETSHOPPING.NET_GAMESERVER_REFRESH_SERVER_CATALOG()
  return native.invoke(
    Type.Bool, 2694, false
  )
end

-- BOOL NET_GAMESERVER_RETRIEVE_CATALOG_REFRESH_STATUS(int* state) // 0xCF38DAFBB49EDE5E
function NETSHOPPING.NET_GAMESERVER_RETRIEVE_CATALOG_REFRESH_STATUS(state)
  return native.invoke(
    Type.Bool, 2695, false,
    ref(Type.Int, state)
  )
end

-- BOOL NET_GAMESERVER_INIT_SESSION() // 0xE3E5A7C64CA2C6ED
function NETSHOPPING.NET_GAMESERVER_INIT_SESSION()
  return native.invoke(
    Type.Bool, 2696, false
  )
end

-- BOOL NET_GAMESERVER_RETRIEVE_INIT_SESSION_STATUS(int* p0) // 0x0395CB47B022E62C
function NETSHOPPING.NET_GAMESERVER_RETRIEVE_INIT_SESSION_STATUS(p0)
  return native.invoke(
    Type.Bool, 2697, false,
    ref(Type.Int, p0)
  )
end

-- BOOL NET_GAMESERVER_START_SESSION(int charSlot) // 0xA135AC892A58FC07
function NETSHOPPING.NET_GAMESERVER_START_SESSION(charSlot)
  return native.invoke(
    Type.Bool, 2698, false,
    arg(Type.Int, charSlot)
  )
end

-- BOOL NET_GAMESERVER_START_SESSION_PENDING() // 0x72EB7BA9B69BF6AB
function NETSHOPPING.NET_GAMESERVER_START_SESSION_PENDING()
  return native.invoke(
    Type.Bool, 2699, false
  )
end

-- BOOL NET_GAMESERVER_RETRIEVE_START_SESSION_STATUS(int* p0) // 0x170910093218C8B9
function NETSHOPPING.NET_GAMESERVER_RETRIEVE_START_SESSION_STATUS(p0)
  return native.invoke(
    Type.Bool, 2700, false,
    ref(Type.Int, p0)
  )
end

-- BOOL NET_GAMESERVER_RETRIEVE_SESSION_ERROR_CODE(int* p0) // 0xC13C38E47EA5DF31
function NETSHOPPING.NET_GAMESERVER_RETRIEVE_SESSION_ERROR_CODE(p0)
  return native.invoke(
    Type.Bool, 2701, false,
    ref(Type.Int, p0)
  )
end

-- BOOL NET_GAMESERVER_IS_SESSION_VALID(int charSlot) // 0xB24F0944DA203D9E
function NETSHOPPING.NET_GAMESERVER_IS_SESSION_VALID(charSlot)
  return native.invoke(
    Type.Bool, 2702, false,
    arg(Type.Int, charSlot)
  )
end

-- BOOL NET_GAMESERVER_CLEAR_SESSION(int p0) // 0x74A0FD0688F1EE45
function NETSHOPPING.NET_GAMESERVER_CLEAR_SESSION(p0)
  return native.invoke(
    Type.Bool, 2703, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NET_GAMESERVER_SESSION_APPLY_RECEIVED_DATA(int charSlot) // 0x2F41D51BA3BCD1F1
function NETSHOPPING.NET_GAMESERVER_SESSION_APPLY_RECEIVED_DATA(charSlot)
  return native.invoke(
    Type.Bool, 2704, false,
    arg(Type.Int, charSlot)
  )
end

-- BOOL NET_GAMESERVER_IS_SESSION_REFRESH_PENDING() // 0x810E8431C0614BF9
function NETSHOPPING.NET_GAMESERVER_IS_SESSION_REFRESH_PENDING()
  return native.invoke(
    Type.Bool, 2705, false
  )
end

-- BOOL NET_GAMESERVER_START_SESSION_RESTART(BOOL inventory, BOOL playerbalance) // 0x35A1B3E1D1315CFA
--[[
Note: only one of the arguments can be set to true at a time
--]]
function NETSHOPPING.NET_GAMESERVER_START_SESSION_RESTART(inventory, playerbalance)
  return native.invoke(
    Type.Bool, 2706, false,
    arg(Type.Bool, inventory),
    arg(Type.Bool, playerbalance)
  )
end

-- BOOL NET_GAMESERVER_TRANSACTION_IN_PROGRESS() // 0x613F125BA3BD2EB9
function NETSHOPPING.NET_GAMESERVER_TRANSACTION_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 2707, false
  )
end

-- BOOL NET_GAMESERVER_GET_SESSION_STATE_AND_STATUS(int* p0, BOOL* p1) // 0x897433D292B44130
function NETSHOPPING.NET_GAMESERVER_GET_SESSION_STATE_AND_STATUS(p0, p1)
  return native.invoke(
    Type.Bool, 2708, false,
    ref(Type.Int, p0),
    ref(Type.Bool, p1)
  )
end

-- BOOL NET_GAMESERVER_BASKET_START(int* transactionId, Hash categoryHash, Hash actionHash, int flags) // 0x279F08B1A4B29B7E
function NETSHOPPING.NET_GAMESERVER_BASKET_START(transactionId, categoryHash, actionHash, flags)
  return native.invoke(
    Type.Bool, 2709, false,
    ref(Type.Int, transactionId),
    arg(Type.Hash, categoryHash),
    arg(Type.Hash, actionHash),
    arg(Type.Int, flags)
  )
end

-- BOOL NET_GAMESERVER_BASKET_END() // 0xFA336E7F40C0A0D0
function NETSHOPPING.NET_GAMESERVER_BASKET_END()
  return native.invoke(
    Type.Bool, 2710, false
  )
end

-- BOOL NET_GAMESERVER_BASKET_IS_ACTIVE() // 0xA65568121DF2EA26
function NETSHOPPING.NET_GAMESERVER_BASKET_IS_ACTIVE()
  return native.invoke(
    Type.Bool, 2711, false
  )
end

-- BOOL NET_GAMESERVER_BASKET_ADD_ITEM(Any* itemData, int quantity) // 0xF30980718C8ED876
function NETSHOPPING.NET_GAMESERVER_BASKET_ADD_ITEM(itemData, quantity)
  return native.invoke(
    Type.Bool, 2712, false,
    ref(Type.Any, itemData),
    arg(Type.Int, quantity)
  )
end

-- BOOL NET_GAMESERVER_BASKET_IS_FULL() // 0x27F76CC6C55AD30E
function NETSHOPPING.NET_GAMESERVER_BASKET_IS_FULL()
  return native.invoke(
    Type.Bool, 2713, false
  )
end

-- BOOL NET_GAMESERVER_BASKET_APPLY_SERVER_DATA(Any p0, Any* p1) // 0xE1A0450ED46A7812
function NETSHOPPING.NET_GAMESERVER_BASKET_APPLY_SERVER_DATA(p0, p1)
  return native.invoke(
    Type.Bool, 2714, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- BOOL NET_GAMESERVER_CHECKOUT_START(int transactionId) // 0x39BE7CEA8D9CC8E6
function NETSHOPPING.NET_GAMESERVER_CHECKOUT_START(transactionId)
  return native.invoke(
    Type.Bool, 2715, false,
    arg(Type.Int, transactionId)
  )
end

-- BOOL NET_GAMESERVER_BEGIN_SERVICE(int* transactionId, Hash categoryHash, Hash itemHash, Hash actionTypeHash, int value, int flags) // 0x3C5FD37B5499582E
function NETSHOPPING.NET_GAMESERVER_BEGIN_SERVICE(transactionId, categoryHash, itemHash, actionTypeHash, value, flags)
  return native.invoke(
    Type.Bool, 2716, false,
    ref(Type.Int, transactionId),
    arg(Type.Hash, categoryHash),
    arg(Type.Hash, itemHash),
    arg(Type.Hash, actionTypeHash),
    arg(Type.Int, value),
    arg(Type.Int, flags)
  )
end

-- BOOL NET_GAMESERVER_END_SERVICE(int transactionId) // 0xE2A99A9B524BEFFF
function NETSHOPPING.NET_GAMESERVER_END_SERVICE(transactionId)
  return native.invoke(
    Type.Bool, 2717, false,
    arg(Type.Int, transactionId)
  )
end

-- BOOL NET_GAMESERVER_DELETE_CHARACTER(int slot, BOOL transfer, Hash reason) // 0x51F1A8E48C3D2F6D
function NETSHOPPING.NET_GAMESERVER_DELETE_CHARACTER(slot, transfer, reason)
  return native.invoke(
    Type.Bool, 2718, false,
    arg(Type.Int, slot),
    arg(Type.Bool, transfer),
    arg(Type.Hash, reason)
  )
end

-- int NET_GAMESERVER_DELETE_CHARACTER_GET_STATUS() // 0x0A6D923DFFC9BD89
function NETSHOPPING.NET_GAMESERVER_DELETE_CHARACTER_GET_STATUS()
  return native.invoke(
    Type.Int, 2719, false
  )
end

-- BOOL NET_GAMESERVER_DELETE_SET_TELEMETRY_NONCE_SEED() // 0x112CEF1615A1139F
function NETSHOPPING.NET_GAMESERVER_DELETE_SET_TELEMETRY_NONCE_SEED()
  return native.invoke(
    Type.Bool, 2720, false
  )
end

-- BOOL NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(int charSlot, int amount) // 0xD47A2C1BA117471D
function NETSHOPPING.NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(charSlot, amount)
  return native.invoke(
    Type.Bool, 2721, false,
    arg(Type.Int, charSlot),
    arg(Type.Int, amount)
  )
end

-- BOOL NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(int charSlot, int amount) // 0xC2F7FE5309181C7D
function NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(charSlot, amount)
  return native.invoke(
    Type.Bool, 2722, false,
    arg(Type.Int, charSlot),
    arg(Type.Int, amount)
  )
end

-- int NET_GAMESERVER_TRANSFER_BANK_TO_WALLET_GET_STATUS() // 0x23789E777D14CE44
--[[
Same as 0x350AA5EBC03D3BD2
--]]
function NETSHOPPING.NET_GAMESERVER_TRANSFER_BANK_TO_WALLET_GET_STATUS()
  return native.invoke(
    Type.Int, 2723, false
  )
end

-- int NET_GAMESERVER_TRANSFER_WALLET_TO_BANK_GET_STATUS() // 0x350AA5EBC03D3BD2
--[[
Same as 0x23789E777D14CE44
--]]
function NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK_GET_STATUS()
  return native.invoke(
    Type.Int, 2724, false
  )
end

-- BOOL NET_GAMESERVER_TRANSFER_CASH_SET_TELEMETRY_NONCE_SEED() // 0x498C1E05CE5F7877
--[[
Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
--]]
function NETSHOPPING.NET_GAMESERVER_TRANSFER_CASH_SET_TELEMETRY_NONCE_SEED()
  return native.invoke(
    Type.Bool, 2725, false
  )
end

-- BOOL NET_GAMESERVER_SET_TELEMETRY_NONCE_SEED(int p0) // 0x9507D4271988E1AE
function NETSHOPPING.NET_GAMESERVER_SET_TELEMETRY_NONCE_SEED(p0)
  return native.invoke(
    Type.Bool, 2726, false,
    arg(Type.Int, p0)
  )
end


