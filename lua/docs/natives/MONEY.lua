MONEY = {}

-- void NETWORK_INITIALIZE_CASH(int wallet, int bank) // 0x3DA5ECD1A56CBA6D
function MONEY.NETWORK_INITIALIZE_CASH(wallet, bank)
  native.invoke(
    Type.Void, 2331, false,
    arg(Type.Int, wallet),
    arg(Type.Int, bank)
  )
end

-- void NETWORK_DELETE_CHARACTER(int characterSlot, BOOL p1, BOOL p2) // 0x05A50AF38947EB8D
--[[
Note the 2nd parameters are always 1, 0. I have a feeling it deals with your money, wallet, bank. So when you delete the character it of course wipes the wallet cash at that time. So if that was the case, it would be eg, NETWORK_DELETE_CHARACTER(characterIndex, deleteWalletCash, deleteBankCash);
--]]
function MONEY.NETWORK_DELETE_CHARACTER(characterSlot, p1, p2)
  native.invoke(
    Type.Void, 2332, false,
    arg(Type.Int, characterSlot),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_MANUAL_DELETE_CHARACTER(int characterSlot) // 0x821418C727FCACD7
function MONEY.NETWORK_MANUAL_DELETE_CHARACTER(characterSlot)
  native.invoke(
    Type.Void, 2333, false,
    arg(Type.Int, characterSlot)
  )
end

-- BOOL NETWORK_GET_PLAYER_IS_HIGH_EARNER() // 0xFB2456B2040A6A67
function MONEY.NETWORK_GET_PLAYER_IS_HIGH_EARNER()
  return native.invoke(
    Type.Bool, 2334, false
  )
end

-- void NETWORK_CLEAR_CHARACTER_WALLET(int characterSlot) // 0xA921DED15FDF28F5
function MONEY.NETWORK_CLEAR_CHARACTER_WALLET(characterSlot)
  native.invoke(
    Type.Void, 2335, false,
    arg(Type.Int, characterSlot)
  )
end

-- void NETWORK_GIVE_PLAYER_JOBSHARE_CASH(int amount, Any* gamerHandle) // 0xFB18DF9CB95E0105
function MONEY.NETWORK_GIVE_PLAYER_JOBSHARE_CASH(amount, gamerHandle)
  native.invoke(
    Type.Void, 2336, false,
    arg(Type.Int, amount),
    ref(Type.Any, gamerHandle)
  )
end

-- void NETWORK_RECEIVE_PLAYER_JOBSHARE_CASH(int value, Any* gamerHandle) // 0x56A3B51944C50598
function MONEY.NETWORK_RECEIVE_PLAYER_JOBSHARE_CASH(value, gamerHandle)
  native.invoke(
    Type.Void, 2337, false,
    arg(Type.Int, value),
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_SHARE_JOB_CASH() // 0x1C2473301B1C66BA
function MONEY.NETWORK_CAN_SHARE_JOB_CASH()
  return native.invoke(
    Type.Bool, 2338, false
  )
end

-- void NETWORK_REFUND_CASH(int index, const char* context, const char* reason, BOOL p3) // 0xF9C812CD7C46E817
--[[
index
-------
See function sub_1005 in am_boat_taxi.ysc

context
----------
"BACKUP_VAGOS"
"BACKUP_LOST"
"BACKUP_FAMILIES"
"HIRE_MUGGER"
"HIRE_MERCENARY"
"BUY_CARDROPOFF"
"HELI_PICKUP"
"BOAT_PICKUP"
"CLEAR_WANTED"
"HEAD_2_HEAD"
"CHALLENGE"
"SHARE_LAST_JOB"
"DEFAULT"

reason
---------
"NOTREACHTARGET"
"TARGET_ESCAPE"
"DELIVERY_FAIL"
"NOT_USED"
"TEAM_QUIT"
"SERVER_ERROR"
"RECEIVE_LJ_L"
"CHALLENGE_PLAYER_LEFT"
"DEFAULT"

unk
-----
Unknown bool value


--]]
function MONEY.NETWORK_REFUND_CASH(index, context, reason, p3)
  native.invoke(
    Type.Void, 2339, false,
    arg(Type.Int, index),
    arg(Type.String, context),
    arg(Type.String, reason),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_DEDUCT_CASH(int amount, const char* p1, const char* p2, BOOL p3, BOOL p4, BOOL p5) // 0x18B7AE224B087E26
function MONEY.NETWORK_DEDUCT_CASH(amount, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 2340, false,
    arg(Type.Int, amount),
    arg(Type.String, p1),
    arg(Type.String, p2),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5)
  )
end

-- BOOL NETWORK_MONEY_CAN_BET(int amount, BOOL p1, BOOL p2) // 0x81404F3DC124FE5B
function MONEY.NETWORK_MONEY_CAN_BET(amount, p1, p2)
  return native.invoke(
    Type.Bool, 2341, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL NETWORK_CAN_BET(int amount) // 0x3A54E33660DED67F
function MONEY.NETWORK_CAN_BET(amount)
  return native.invoke(
    Type.Bool, 2342, false,
    arg(Type.Int, amount)
  )
end

-- BOOL NETWORK_CASINO_CAN_BET(Hash hash) // 0x158C16F5E4CF41F8
--[[
GTAO_CASINO_HOUSE
GTAO_CASINO_INSIDETRACK
GTAO_CASINO_LUCKYWHEEL
GTAO_CASINO_BLACKJACK
GTAO_CASINO_ROULETTE
GTAO_CASINO_SLOTS
GTAO_CASINO_PURCHASE_CHIPS

NETWORK_C*
--]]
function MONEY.NETWORK_CASINO_CAN_BET(hash)
  return native.invoke(
    Type.Bool, 2343, false,
    arg(Type.Hash, hash)
  )
end

-- BOOL NETWORK_CASINO_CAN_BET_PVC() // 0x394DCDB9E836B7A9
function MONEY.NETWORK_CASINO_CAN_BET_PVC()
  return native.invoke(
    Type.Bool, 2344, false
  )
end

-- BOOL NETWORK_CASINO_CAN_BET_AMOUNT(Any p0) // 0xF62F6D9528358FE4
function MONEY.NETWORK_CASINO_CAN_BET_AMOUNT(p0)
  return native.invoke(
    Type.Bool, 2345, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_CASINO_CAN_BUY_CHIPS_PVC() // 0x8968D4D8C6C40C11
function MONEY.NETWORK_CASINO_CAN_BUY_CHIPS_PVC()
  return native.invoke(
    Type.Bool, 2346, false
  )
end

-- BOOL NETWORK_CASINO_BUY_CHIPS(int p0, int p1) // 0x3BD101471C7F9EEC
function MONEY.NETWORK_CASINO_BUY_CHIPS(p0, p1)
  return native.invoke(
    Type.Bool, 2347, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1)
  )
end

-- BOOL NETWORK_CASINO_SELL_CHIPS(int p0, int p1) // 0xED44897CB336F480
function MONEY.NETWORK_CASINO_SELL_CHIPS(p0, p1)
  return native.invoke(
    Type.Bool, 2348, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_DEFER_CASH_TRANSACTIONS_UNTIL_SHOP_SAVE() // 0xCD0F5B5D932AE473
--[[
Does nothing (it's a nullsub).
--]]
function MONEY.NETWORK_DEFER_CASH_TRANSACTIONS_UNTIL_SHOP_SAVE()
  native.invoke(
    Type.Void, 2349, false
  )
end

-- BOOL CAN_PAY_AMOUNT_TO_BOSS(int p0, int p1, int amount, int* p3) // 0x9777734DAD16992F
function MONEY.CAN_PAY_AMOUNT_TO_BOSS(p0, p1, amount, p3)
  return native.invoke(
    Type.Bool, 2350, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, amount),
    ref(Type.Int, p3)
  )
end

-- void NETWORK_EARN_FROM_PICKUP(int amount) // 0xED1517D3AF17C698
function MONEY.NETWORK_EARN_FROM_PICKUP(amount)
  native.invoke(
    Type.Void, 2351, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_FROM_CASHING_OUT(int amount) // 0x718FBBF67414FA36
function MONEY.NETWORK_EARN_FROM_CASHING_OUT(amount)
  native.invoke(
    Type.Void, 2352, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_FROM_GANGATTACK_PICKUP(int amount) // 0xA03D4ACE0A3284CE
function MONEY.NETWORK_EARN_FROM_GANGATTACK_PICKUP(amount)
  native.invoke(
    Type.Void, 2353, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_ASSASSINATE_TARGET_KILLED(int amount) // 0xFA700D8A9905F78A
function MONEY.NETWORK_EARN_ASSASSINATE_TARGET_KILLED(amount)
  native.invoke(
    Type.Void, 2354, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_FROM_ROB_ARMORED_CARS(int amount) // 0xF514621E8EA463D0
--[[
For the money bags that drop a max of $40,000. Often called 40k bags.

Most likely NETWORK_EARN_FROM_ROB***
--]]
function MONEY.NETWORK_EARN_FROM_ROB_ARMORED_CARS(amount)
  native.invoke(
    Type.Void, 2355, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_FROM_CRATE_DROP(int amount) // 0xB1CC1B9EC3007A2A
function MONEY.NETWORK_EARN_FROM_CRATE_DROP(amount)
  native.invoke(
    Type.Void, 2356, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_FROM_BETTING(int amount, const char* p1) // 0x827A5BA1A44ACA6D
function MONEY.NETWORK_EARN_FROM_BETTING(amount, p1)
  native.invoke(
    Type.Void, 2357, false,
    arg(Type.Int, amount),
    arg(Type.String, p1)
  )
end

-- void NETWORK_EARN_FROM_JOB(int amount, const char* p1) // 0xB2CC4836834E8A98
function MONEY.NETWORK_EARN_FROM_JOB(amount, p1)
  native.invoke(
    Type.Void, 2358, false,
    arg(Type.Int, amount),
    arg(Type.String, p1)
  )
end

-- void NETWORK_EARN_FROM_JOBX2(int amount, const char* p1) // 0xDEBBF584665411D0
function MONEY.NETWORK_EARN_FROM_JOBX2(amount, p1)
  native.invoke(
    Type.Void, 2359, false,
    arg(Type.Int, amount),
    arg(Type.String, p1)
  )
end

-- void NETWORK_EARN_FROM_PREMIUM_JOB(int amount, const char* p1) // 0xC8407624CEF2354B
function MONEY.NETWORK_EARN_FROM_PREMIUM_JOB(amount, p1)
  native.invoke(
    Type.Void, 2360, false,
    arg(Type.Int, amount),
    arg(Type.String, p1)
  )
end

-- void NETWORK_EARN_FROM_BEND_JOB(int amount, const char* heistHash) // 0x61326EE6DF15B0CA
function MONEY.NETWORK_EARN_FROM_BEND_JOB(amount, heistHash)
  native.invoke(
    Type.Void, 2361, false,
    arg(Type.Int, amount),
    arg(Type.String, heistHash)
  )
end

-- void NETWORK_EARN_FROM_CHALLENGE_WIN(Any p0, Any* p1, BOOL p2) // 0x2B171E6B2F64D8DF
function MONEY.NETWORK_EARN_FROM_CHALLENGE_WIN(p0, p1, p2)
  native.invoke(
    Type.Void, 2362, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_EARN_FROM_BOUNTY(int amount, Any* gamerHandle, Any* p2, Any p3) // 0x131BB5DA15453ACF
function MONEY.NETWORK_EARN_FROM_BOUNTY(amount, gamerHandle, p2, p3)
  native.invoke(
    Type.Void, 2363, false,
    arg(Type.Int, amount),
    ref(Type.Any, gamerHandle),
    ref(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_FROM_IMPORT_EXPORT(int amount, Hash modelHash) // 0xF92A014A634442D6
function MONEY.NETWORK_EARN_FROM_IMPORT_EXPORT(amount, modelHash)
  native.invoke(
    Type.Void, 2364, false,
    arg(Type.Int, amount),
    arg(Type.Hash, modelHash)
  )
end

-- void NETWORK_EARN_FROM_HOLDUPS(int amount) // 0x45B8154E077D9E4D
function MONEY.NETWORK_EARN_FROM_HOLDUPS(amount)
  native.invoke(
    Type.Void, 2365, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_FROM_PROPERTY(int amount, Hash propertyName) // 0x849648349D77F5C5
function MONEY.NETWORK_EARN_FROM_PROPERTY(amount, propertyName)
  native.invoke(
    Type.Void, 2366, false,
    arg(Type.Int, amount),
    arg(Type.Hash, propertyName)
  )
end

-- void NETWORK_EARN_FROM_AI_TARGET_KILL(Any p0, Any p1) // 0x515B4A22E4D3C6D7
--[[
DSPORT
--]]
function MONEY.NETWORK_EARN_FROM_AI_TARGET_KILL(p0, p1)
  native.invoke(
    Type.Void, 2367, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_FROM_NOT_BADSPORT(int amount) // 0x4337511FA8221D36
function MONEY.NETWORK_EARN_FROM_NOT_BADSPORT(amount)
  native.invoke(
    Type.Void, 2368, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_FROM_VEHICLE(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7) // 0xB539BD8A4C1EECF8
function MONEY.NETWORK_EARN_FROM_VEHICLE(p0, p1, p2, p3, p4, p5, p6, p7)
  native.invoke(
    Type.Void, 2369, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7)
  )
end

-- void NETWORK_EARN_FROM_PERSONAL_VEHICLE(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7, Any p8) // 0x3F4D00167E41E0AD
function MONEY.NETWORK_EARN_FROM_PERSONAL_VEHICLE(p0, p1, p2, p3, p4, p5, p6, p7, p8)
  native.invoke(
    Type.Void, 2370, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7),
    arg(Type.Any, p8)
  )
end

-- void NETWORK_EARN_FROM_DAILY_OBJECTIVES(int amount, const char* type, int characterSlot) // 0x6EA318C91C1A8786
--[[
type either Monthly,Weekly,Daily
--]]
function MONEY.NETWORK_EARN_FROM_DAILY_OBJECTIVES(amount, type, characterSlot)
  native.invoke(
    Type.Void, 2371, false,
    arg(Type.Int, amount),
    arg(Type.String, type),
    arg(Type.Int, characterSlot)
  )
end

-- void NETWORK_EARN_FROM_AMBIENT_JOB(int p0, const char* p1, Any* p2) // 0xFB6DB092FBAE29E6
--[[
Example for p1: "AM_DISTRACT_COPS"
--]]
function MONEY.NETWORK_EARN_FROM_AMBIENT_JOB(p0, p1, p2)
  native.invoke(
    Type.Void, 2372, false,
    arg(Type.Int, p0),
    arg(Type.String, p1),
    ref(Type.Any, p2)
  )
end

-- void NETWORK_EARN_FROM_JOB_BONUS(Any p0, Any* p1, Any* p2) // 0x6816FB4416760775
function MONEY.NETWORK_EARN_FROM_JOB_BONUS(p0, p1, p2)
  native.invoke(
    Type.Void, 2373, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1),
    ref(Type.Any, p2)
  )
end

-- void NETWORK_EARN_FROM_CRIMINAL_MASTERMIND(Any p0, Any p1, Any p2) // 0xFA009A62990671D4
function MONEY.NETWORK_EARN_FROM_CRIMINAL_MASTERMIND(p0, p1, p2)
  native.invoke(
    Type.Void, 2374, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_HEIST_AWARD(Any p0, Any p1, Any p2) // 0x9D4FDBB035229669
function MONEY.NETWORK_EARN_HEIST_AWARD(p0, p1, p2)
  native.invoke(
    Type.Void, 2375, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_FIRST_TIME_BONUS(Any p0, Any p1, Any p2) // 0x11B0A20C493F7E36
function MONEY.NETWORK_EARN_FIRST_TIME_BONUS(p0, p1, p2)
  native.invoke(
    Type.Void, 2376, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_GOON(Any p0, Any p1, Any p2) // 0xCDA1C62BE2777802
function MONEY.NETWORK_EARN_GOON(p0, p1, p2)
  native.invoke(
    Type.Void, 2377, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_BOSS(Any p0, Any p1, Any p2) // 0x08B0CA7A6AB3AC32
function MONEY.NETWORK_EARN_BOSS(p0, p1, p2)
  native.invoke(
    Type.Void, 2378, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_AGENCY(Any p0, Any p1, Any p2, Any p3) // 0x0CB1BE0633C024A8
function MONEY.NETWORK_EARN_AGENCY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2379, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_FROM_WAREHOUSE(int amount, int id) // 0x3E4ADAFF1830F146
function MONEY.NETWORK_EARN_FROM_WAREHOUSE(amount, id)
  native.invoke(
    Type.Void, 2380, false,
    arg(Type.Int, amount),
    arg(Type.Int, id)
  )
end

-- void NETWORK_EARN_FROM_CONTRABAND(int amount, Any p1) // 0xECA658CE2A4E5A72
function MONEY.NETWORK_EARN_FROM_CONTRABAND(amount, p1)
  native.invoke(
    Type.Void, 2381, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_FROM_DESTROYING_CONTRABAND(Any p0, Any p1, Any p2) // 0x84C0116D012E8FC2
function MONEY.NETWORK_EARN_FROM_DESTROYING_CONTRABAND(p0, p1, p2)
  native.invoke(
    Type.Void, 2382, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_FROM_SMUGGLER_WORK(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0x6B7E4FB50D5F3D65
function MONEY.NETWORK_EARN_FROM_SMUGGLER_WORK(p0, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 2383, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void NETWORK_EARN_FROM_HANGAR_TRADE(Any p0, Any p1) // 0x31BA138F6304FB9F
function MONEY.NETWORK_EARN_FROM_HANGAR_TRADE(p0, p1)
  native.invoke(
    Type.Void, 2384, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_PURCHASE_CLUB_HOUSE(Any p0, Any p1) // 0x55A1E095DB052FA5
function MONEY.NETWORK_EARN_PURCHASE_CLUB_HOUSE(p0, p1)
  native.invoke(
    Type.Void, 2385, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_FROM_BUSINESS_PRODUCT(int amount, Any p1, Any p2, Any p3) // 0x8586789730B10CAF
function MONEY.NETWORK_EARN_FROM_BUSINESS_PRODUCT(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2386, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_FROM_VEHICLE_EXPORT(int amount, Any p1, Any p2) // 0xEDEAD9A91EC768B3
function MONEY.NETWORK_EARN_FROM_VEHICLE_EXPORT(amount, p1, p2)
  native.invoke(
    Type.Void, 2387, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_SMUGGLER_AGENCY(int amount, Any p1, Any p2, Any p3) // 0xDEE612F2D71B0308
function MONEY.NETWORK_EARN_SMUGGLER_AGENCY(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2388, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_BOUNTY_HUNTER_REWARD(Any p0) // 0xF6B170F9A02E9E87
function MONEY.NETWORK_EARN_BOUNTY_HUNTER_REWARD(p0)
  native.invoke(
    Type.Void, 2389, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_FROM_BUSINESS_BATTLE(Any p0) // 0x42FCE14F50F27291
function MONEY.NETWORK_EARN_FROM_BUSINESS_BATTLE(p0)
  native.invoke(
    Type.Void, 2390, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_FROM_CLUB_MANAGEMENT_PARTICIPATION(Any p0, int p1) // 0xA75EAC69F59E96E7
function MONEY.NETWORK_EARN_FROM_CLUB_MANAGEMENT_PARTICIPATION(p0, p1)
  native.invoke(
    Type.Void, 2391, false,
    arg(Type.Any, p0),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_EARN_FROM_FMBB_PHONECALL_MISSION(Any p0) // 0xC5156361F26E2212
function MONEY.NETWORK_EARN_FROM_FMBB_PHONECALL_MISSION(p0)
  native.invoke(
    Type.Void, 2392, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_FROM_BUSINESS_HUB_SELL(Any p0, Any p1, Any p2) // 0x0B39CF0D53F1C883
function MONEY.NETWORK_EARN_FROM_BUSINESS_HUB_SELL(p0, p1, p2)
  native.invoke(
    Type.Void, 2393, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_FROM_FMBB_BOSS_WORK(Any p0) // 0x1FDA0AA679C9919B
function MONEY.NETWORK_EARN_FROM_FMBB_BOSS_WORK(p0)
  native.invoke(
    Type.Void, 2394, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_FMBB_WAGE_BONUS(Any p0) // 0xFFFBA1B1F7C0B6F4
function MONEY.NETWORK_EARN_FMBB_WAGE_BONUS(p0)
  native.invoke(
    Type.Void, 2395, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_CAN_SPEND_MONEY(Any p0, BOOL p1, BOOL p2, BOOL p3, Any p4, Any p5) // 0xAB3CAA6B422164DA
function MONEY.NETWORK_CAN_SPEND_MONEY(p0, p1, p2, p3, p4, p5)
  return native.invoke(
    Type.Bool, 2396, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- BOOL NETWORK_CAN_SPEND_MONEY2(Any p0, BOOL p1, BOOL p2, BOOL p3, Any* p4, Any p5, Any p6) // 0x7303E27CC6532080
function MONEY.NETWORK_CAN_SPEND_MONEY2(p0, p1, p2, p3, p4, p5, p6)
  return native.invoke(
    Type.Bool, 2397, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    ref(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void NETWORK_BUY_ITEM(int amount, Hash item, Any p2, Any p3, BOOL p4, const char* item_name, Any p6, Any p7, Any p8, BOOL p9) // 0xF0077C797F66A355
function MONEY.NETWORK_BUY_ITEM(amount, item, p2, p3, p4, item_name, p6, p7, p8, p9)
  native.invoke(
    Type.Void, 2398, false,
    arg(Type.Int, amount),
    arg(Type.Hash, item),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Bool, p4),
    arg(Type.String, item_name),
    arg(Type.Any, p6),
    arg(Type.Any, p7),
    arg(Type.Any, p8),
    arg(Type.Bool, p9)
  )
end

-- void NETWORK_SPENT_TAXI(int amount, BOOL p1, BOOL p2, Any p3, Any p4) // 0x17C3A7D31EAE39F9
function MONEY.NETWORK_SPENT_TAXI(amount, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2399, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_PAY_EMPLOYEE_WAGE(Any p0, BOOL p1, BOOL p2) // 0x5FD5ED82CBBE9989
function MONEY.NETWORK_PAY_EMPLOYEE_WAGE(p0, p1, p2)
  native.invoke(
    Type.Void, 2400, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_PAY_MATCH_ENTRY_FEE(int amount, const char* matchId, BOOL p2, BOOL p3) // 0x9346E14F2AF74D46
function MONEY.NETWORK_PAY_MATCH_ENTRY_FEE(amount, matchId, p2, p3)
  native.invoke(
    Type.Void, 2401, false,
    arg(Type.Int, amount),
    arg(Type.String, matchId),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPENT_BETTING(int amount, int p1, const char* matchId, BOOL p3, BOOL p4) // 0x1C436FD11FFA692F
function MONEY.NETWORK_SPENT_BETTING(amount, p1, matchId, p3, p4)
  native.invoke(
    Type.Void, 2402, false,
    arg(Type.Int, amount),
    arg(Type.Int, p1),
    arg(Type.String, matchId),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4)
  )
end

-- void NETWORK_SPENT_WAGER(Any p0, Any p1, int amount) // 0xD99DB210089617FE
function MONEY.NETWORK_SPENT_WAGER(p0, p1, amount)
  native.invoke(
    Type.Void, 2403, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Int, amount)
  )
end

-- void NETWORK_SPENT_IN_STRIPCLUB(Any p0, BOOL p1, Any p2, BOOL p3) // 0xEE99784E4467689C
function MONEY.NETWORK_SPENT_IN_STRIPCLUB(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2404, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Any, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_BUY_HEALTHCARE(int cost, BOOL p1, BOOL p2) // 0xD9B067E55253E3DD
function MONEY.NETWORK_BUY_HEALTHCARE(cost, p1, p2)
  native.invoke(
    Type.Void, 2405, false,
    arg(Type.Int, cost),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_BUY_AIRSTRIKE(int cost, BOOL p1, BOOL p2, Any p3) // 0x763B4BD305338F19
--[[
p1 = 0 (always)
p2 = 1 (always)
--]]
function MONEY.NETWORK_BUY_AIRSTRIKE(cost, p1, p2, p3)
  native.invoke(
    Type.Void, 2406, false,
    arg(Type.Int, cost),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_BUY_BACKUP_GANG(int p0, int p1, BOOL p2, BOOL p3, int npcProvider) // 0xA3EDDAA42411D3B9
function MONEY.NETWORK_BUY_BACKUP_GANG(p0, p1, p2, p3, npcProvider)
  native.invoke(
    Type.Void, 2407, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Int, npcProvider)
  )
end

-- void NETWORK_BUY_HELI_STRIKE(int cost, BOOL p1, BOOL p2, Any p3) // 0x81AA4610E3FD3A69
--[[
p1 = 0 (always)
p2 = 1 (always)
--]]
function MONEY.NETWORK_BUY_HELI_STRIKE(cost, p1, p2, p3)
  native.invoke(
    Type.Void, 2408, false,
    arg(Type.Int, cost),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_AMMO_DROP(Any p0, BOOL p1, BOOL p2, Any p3) // 0xB162DC95C0A3317B
function MONEY.NETWORK_SPENT_AMMO_DROP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2409, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_BUY_BOUNTY(int amount, Player victim, BOOL p2, BOOL p3, Any p4) // 0x7B718E197453F2D9
--[[
p1 is just an assumption. p2 was false and p3 was true.
--]]
function MONEY.NETWORK_BUY_BOUNTY(amount, victim, p2, p3, p4)
  native.invoke(
    Type.Void, 2410, false,
    arg(Type.Int, amount),
    arg(Type.Player, victim),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_BUY_PROPERTY(int cost, Hash propertyName, BOOL p2, BOOL p3) // 0x650A08A280870AF6
function MONEY.NETWORK_BUY_PROPERTY(cost, propertyName, p2, p3)
  native.invoke(
    Type.Void, 2411, false,
    arg(Type.Int, cost),
    arg(Type.Hash, propertyName),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_BUY_SMOKES(int p0, BOOL p1, BOOL p2) // 0x75AF80E61248EEBD
function MONEY.NETWORK_BUY_SMOKES(p0, p1, p2)
  native.invoke(
    Type.Void, 2412, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_HELI_PICKUP(Any p0, BOOL p1, BOOL p2, Any p3) // 0x7BF1D73DB2ECA492
function MONEY.NETWORK_SPENT_HELI_PICKUP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2413, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_BOAT_PICKUP(Any p0, BOOL p1, BOOL p2, Any p3) // 0x524EE43A37232C00
function MONEY.NETWORK_SPENT_BOAT_PICKUP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2414, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_BULL_SHARK(Any p0, BOOL p1, BOOL p2, Any p3) // 0xA6DD8458CE24012C
function MONEY.NETWORK_SPENT_BULL_SHARK(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2415, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_CASH_DROP(int amount, BOOL p1, BOOL p2) // 0x289016EC778D60E0
function MONEY.NETWORK_SPENT_CASH_DROP(amount, p1, p2)
  native.invoke(
    Type.Void, 2416, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_HIRE_MUGGER(Any p0, BOOL p1, BOOL p2, Any p3) // 0xE404BFB981665BF0
--[[
Only used once in a script (am_contact_requests)
p1 = 0
p2 = 1
--]]
function MONEY.NETWORK_SPENT_HIRE_MUGGER(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2417, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_ROBBED_BY_MUGGER(int amount, BOOL p1, BOOL p2, Any p3) // 0x995A65F15F581359
function MONEY.NETWORK_SPENT_ROBBED_BY_MUGGER(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2418, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_HIRE_MERCENARY(Any p0, BOOL p1, BOOL p2, Any p3) // 0xE7B80E2BF9D80BD6
function MONEY.NETWORK_SPENT_HIRE_MERCENARY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2419, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_BUY_WANTEDLEVEL(Any p0, Any* p1, BOOL p2, BOOL p3, Any p4) // 0xE1B13771A843C4F6
function MONEY.NETWORK_SPENT_BUY_WANTEDLEVEL(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2420, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPENT_BUY_OFFTHERADAR(Any p0, BOOL p1, BOOL p2, Any p3) // 0xA628A745E2275C5D
function MONEY.NETWORK_SPENT_BUY_OFFTHERADAR(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2421, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_BUY_REVEAL_PLAYERS(Any p0, BOOL p1, BOOL p2, Any p3) // 0x6E176F1B18BC0637
function MONEY.NETWORK_SPENT_BUY_REVEAL_PLAYERS(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2422, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_CARWASH(Any p0, Any p1, Any p2, BOOL p3, BOOL p4) // 0xEC03C719DB2F4306
function MONEY.NETWORK_SPENT_CARWASH(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2423, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4)
  )
end

-- void NETWORK_SPENT_CINEMA(Any p0, Any p1, BOOL p2, BOOL p3) // 0x6B38ECB05A63A685
function MONEY.NETWORK_SPENT_CINEMA(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2424, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPENT_TELESCOPE(Any p0, BOOL p1, BOOL p2) // 0x7FE61782AD94CC09
function MONEY.NETWORK_SPENT_TELESCOPE(p0, p1, p2)
  native.invoke(
    Type.Void, 2425, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_HOLDUPS(Any p0, BOOL p1, BOOL p2) // 0xD9B86B9872039763
function MONEY.NETWORK_SPENT_HOLDUPS(p0, p1, p2)
  native.invoke(
    Type.Void, 2426, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_BUY_PASSIVE_MODE(Any p0, BOOL p1, BOOL p2, Any p3) // 0x6D3A430D1A809179
function MONEY.NETWORK_SPENT_BUY_PASSIVE_MODE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2427, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_BANK_INTEREST(int p0, BOOL p1, BOOL p2) // 0xCA230C9682556CF1
function MONEY.NETWORK_SPENT_BANK_INTEREST(p0, p1, p2)
  native.invoke(
    Type.Void, 2428, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_PROSTITUTES(Any p0, BOOL p1, BOOL p2) // 0xB21B89501CFAC79E
function MONEY.NETWORK_SPENT_PROSTITUTES(p0, p1, p2)
  native.invoke(
    Type.Void, 2429, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_ARREST_BAIL(Any p0, BOOL p1, BOOL p2) // 0x812F5488B1B2A299
function MONEY.NETWORK_SPENT_ARREST_BAIL(p0, p1, p2)
  native.invoke(
    Type.Void, 2430, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM(int amount, Hash vehicleModel, Any* gamerHandle, BOOL notBankrupt, BOOL hasTheMoney) // 0x9FF28D88C766E3E8
--[[
According to how I understood this in the freemode script alone,
The first parameter is determined by a function named, func_5749 within the freemode script which has a list of all the vehicles and a set price to return which some vehicles deals with globals as well. So the first parameter is basically the set in stone insurance cost it's gonna charge you for that specific vehicle model.

The second parameter whoever put it was right, they call GET_ENTITY_MODEL with the vehicle as the paremeter.

The third parameter is the network handle as they call their little struct<13> func or atleast how the script decompiled it to look which in lamens terms just returns the network handle of the previous owner based on DECOR_GET_INT(vehicle, "Previous_Owner").

The fourth parameter is a bool that returns true/false depending on if your bank balance is greater then 0.

The fifth and last parameter is a bool that returns true/false depending on if you have the money for the car based on the cost returned by func_5749. In the freemode script eg,
bool hasTheMoney = MONEY::_GET_BANK_BALANCE() < carCost.
--]]
function MONEY.NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM(amount, vehicleModel, gamerHandle, notBankrupt, hasTheMoney)
  native.invoke(
    Type.Void, 2431, false,
    arg(Type.Int, amount),
    arg(Type.Hash, vehicleModel),
    ref(Type.Any, gamerHandle),
    arg(Type.Bool, notBankrupt),
    arg(Type.Bool, hasTheMoney)
  )
end

-- void NETWORK_SPENT_CALL_PLAYER(Any p0, Any* p1, BOOL p2, BOOL p3) // 0xACDE7185B374177C
function MONEY.NETWORK_SPENT_CALL_PLAYER(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2432, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPENT_BOUNTY(Any p0, BOOL p1, BOOL p2) // 0x29B260B84947DFCC
function MONEY.NETWORK_SPENT_BOUNTY(p0, p1, p2)
  native.invoke(
    Type.Void, 2433, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_FROM_ROCKSTAR(int p0, BOOL p1, BOOL p2) // 0x6A445B64ED7ABEB5
function MONEY.NETWORK_SPENT_FROM_ROCKSTAR(p0, p1, p2)
  native.invoke(
    Type.Void, 2434, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- int NETWORK_SPEND_EARNED_FROM_BANK_AND_WALLETS(int amount) // 0x9B5016A6433A68C5
--[[
Hardcoded to return 0.
--]]
function MONEY.NETWORK_SPEND_EARNED_FROM_BANK_AND_WALLETS(amount)
  return native.invoke(
    Type.Int, 2435, false,
    arg(Type.Int, amount)
  )
end

-- const char* PROCESS_CASH_GIFT(int* p0, int* p1, const char* p2) // 0x20194D48EAEC9A41
--[[
This isn't a hash collision.
--]]
function MONEY.PROCESS_CASH_GIFT(p0, p1, p2)
  return native.invoke(
    Type.String, 2436, false,
    ref(Type.Int, p0),
    ref(Type.Int, p1),
    arg(Type.String, p2)
  )
end

-- void NETWORK_SPENT_MOVE_SUBMARINE(Any p0, Any p1, Any p2) // 0xCD4D66B43B1DD28D
function MONEY.NETWORK_SPENT_MOVE_SUBMARINE(p0, p1, p2)
  native.invoke(
    Type.Void, 2437, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_SPENT_PLAYER_HEALTHCARE(int p0, int p1, BOOL p2, BOOL p3) // 0x7C99101F7FCE2EE5
function MONEY.NETWORK_SPENT_PLAYER_HEALTHCARE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2438, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPENT_NO_COPS(Any p0, BOOL p1, BOOL p2, Any p3) // 0xD5BB406F4E04019F
function MONEY.NETWORK_SPENT_NO_COPS(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2439, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_CARGO_SOURCING(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0x948705F6F9C50824
function MONEY.NETWORK_SPENT_CARGO_SOURCING(p0, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 2440, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void NETWORK_SPENT_REQUEST_JOB(Any p0, BOOL p1, BOOL p2, Any p3) // 0x8204DA7934DF3155
function MONEY.NETWORK_SPENT_REQUEST_JOB(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2441, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_REQUEST_HEIST(Any p0, BOOL p1, BOOL p2, Any p3) // 0x9D26502BB97BFE62
function MONEY.NETWORK_SPENT_REQUEST_HEIST(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2442, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_BUY_FAIRGROUND_RIDE(int amount, Any p1, BOOL p2, BOOL p3, Any p4) // 0x8A7B3952DD64D2B5
--[[
The first parameter is the amount spent which is store in a global when this native is called. The global returns 10. Which is the price for both rides.

The last 3 parameters are, 
2,0,1 in the am_ferriswheel.c
1,0,1 in the am_rollercoaster.c

--]]
function MONEY.NETWORK_BUY_FAIRGROUND_RIDE(amount, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2443, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3),
    arg(Type.Any, p4)
  )
end

-- BOOL NETWORK_ECONOMY_HAS_FIXED_CRAZY_NUMBERS() // 0x7C4FCCD2E4DEB394
function MONEY.NETWORK_ECONOMY_HAS_FIXED_CRAZY_NUMBERS()
  return native.invoke(
    Type.Bool, 2444, false
  )
end

-- void NETWORK_SPENT_JOB_SKIP(int amount, const char* matchId, BOOL p2, BOOL p3) // 0x28F174A67B8D0C2F
function MONEY.NETWORK_SPENT_JOB_SKIP(amount, matchId, p2, p3)
  native.invoke(
    Type.Void, 2445, false,
    arg(Type.Int, amount),
    arg(Type.String, matchId),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- BOOL NETWORK_SPENT_BOSS_GOON(int amount, BOOL p1, BOOL p2) // 0xFFBE02CD385356BD
function MONEY.NETWORK_SPENT_BOSS_GOON(amount, p1, p2)
  return native.invoke(
    Type.Bool, 2446, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPEND_GOON(int p0, int p1, int amount) // 0x08A1B82B91900682
function MONEY.NETWORK_SPEND_GOON(p0, p1, amount)
  native.invoke(
    Type.Void, 2447, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, amount)
  )
end

-- void NETWORK_SPEND_BOSS(Any p0, Any p1, Any p2) // 0xDBC966A01C02BCA7
function MONEY.NETWORK_SPEND_BOSS(p0, p1, p2)
  native.invoke(
    Type.Void, 2448, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_SPENT_MOVE_YACHT(int amount, BOOL p1, BOOL p2) // 0xE7DF4E0545DFB56E
function MONEY.NETWORK_SPENT_MOVE_YACHT(amount, p1, p2)
  native.invoke(
    Type.Void, 2449, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_RENAME_ORGANIZATION(Any p0, Any p1, Any p2, Any p3) // 0xFC4EE00A7B3BFB76
function MONEY.NETWORK_SPENT_RENAME_ORGANIZATION(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2450, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_BUY_CONTRABAND_MISSION(int p0, int p1, Hash p2, BOOL p3, BOOL p4) // 0x30FD873ECE50E9F6
function MONEY.NETWORK_BUY_CONTRABAND_MISSION(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2451, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Hash, p2),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4)
  )
end

-- void NETWORK_SPENT_PA_SERVICE_HELI(Any p0, Any p1, Any p2, Any p3) // 0x112209CE0290C03A
function MONEY.NETWORK_SPENT_PA_SERVICE_HELI(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2452, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PA_SERVICE_VEHICLE(Any p0, Any p1, Any p2, Any p3) // 0xED5FD7AF10F5E262
function MONEY.NETWORK_SPENT_PA_SERVICE_VEHICLE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2453, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PA_SERVICE_SNACK(Any p0, Any p1, Any p2, Any p3) // 0x0D30EB83668E63C5
function MONEY.NETWORK_SPENT_PA_SERVICE_SNACK(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2454, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PA_SERVICE_DANCER(Any p0, Any p1, Any p2, Any p3) // 0xB49ECA122467D05F
function MONEY.NETWORK_SPENT_PA_SERVICE_DANCER(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2455, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PA_SERVICE_IMPOUND(Any p0, Any p1, Any p2) // 0xE23ADC6FCB1F29AE
function MONEY.NETWORK_SPENT_PA_SERVICE_IMPOUND(p0, p1, p2)
  native.invoke(
    Type.Void, 2456, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_SPENT_PA_HELI_PICKUP(Any p0, Any p1, Any p2, Any p3) // 0x0FE8E1FCD2B86B33
function MONEY.NETWORK_SPENT_PA_HELI_PICKUP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2457, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PURCHASE_OFFICE_PROPERTY(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x69EF772B192614C1
function MONEY.NETWORK_SPENT_PURCHASE_OFFICE_PROPERTY(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2458, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPENT_UPGRADE_OFFICE_PROPERTY(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x8E243837643D9583
function MONEY.NETWORK_SPENT_UPGRADE_OFFICE_PROPERTY(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2459, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPENT_PURCHASE_WAREHOUSE_PROPERTY(Any p0, Any p1, Any p2, Any p3) // 0xBD0EFB25CCA8F97A
function MONEY.NETWORK_SPENT_PURCHASE_WAREHOUSE_PROPERTY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2460, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_WAREHOUSE_PROPERTY(Any p0, Any p1, Any p2, Any p3) // 0xA95F667A755725DA
function MONEY.NETWORK_SPENT_UPGRADE_WAREHOUSE_PROPERTY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2461, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PURCHASE_IMPEXP_WAREHOUSE_PROPERTY(int amount, Any* data, BOOL p2, BOOL p3) // 0x33981D6804E62F49
function MONEY.NETWORK_SPENT_PURCHASE_IMPEXP_WAREHOUSE_PROPERTY(amount, data, p2, p3)
  native.invoke(
    Type.Void, 2462, false,
    arg(Type.Int, amount),
    ref(Type.Any, data),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_IMPEXP_WAREHOUSE_PROPERTY(Any p0, Any p1, Any p2, Any p3) // 0x4128464231E3CA0B
function MONEY.NETWORK_SPENT_UPGRADE_IMPEXP_WAREHOUSE_PROPERTY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2463, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_TRADE_IMPEXP_WAREHOUSE_PROPERTY(Any p0, Any p1, Any p2, Any p3) // 0x2FAB6614CE22E196
function MONEY.NETWORK_SPENT_TRADE_IMPEXP_WAREHOUSE_PROPERTY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2464, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_ORDER_WAREHOUSE_VEHICLE(Any p0, Any p1, Any p2, Any p3) // 0x05F04155A226FBBF
function MONEY.NETWORK_SPENT_ORDER_WAREHOUSE_VEHICLE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2465, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_ORDER_BODYGUARD_VEHICLE(Any p0, Any p1, Any p2, Any p3) // 0xE8B0B270B6E7C76E
function MONEY.NETWORK_SPENT_ORDER_BODYGUARD_VEHICLE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2466, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_JUKEBOX(Any p0, Any p1, Any p2, Any p3) // 0x5BCDE0F640C773D2
function MONEY.NETWORK_SPENT_JUKEBOX(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2467, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PURCHASE_CLUB_HOUSE(Any p0, Any p1, Any p2, Any p3) // 0x998E18CEB44487FC
function MONEY.NETWORK_SPENT_PURCHASE_CLUB_HOUSE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2468, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_CLUB_HOUSE(Any p0, Any p1, Any p2, Any p3) // 0xFA07759E6FDDD7CF
function MONEY.NETWORK_SPENT_UPGRADE_CLUB_HOUSE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2469, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PURCHASE_BUSINESS_PROPERTY(Any p0, Any p1, Any p2, Any p3) // 0x6FD97159FE3C971A
function MONEY.NETWORK_SPENT_PURCHASE_BUSINESS_PROPERTY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2470, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_BUSINESS_PROPERTY(Any p0, Any p1, Any p2, Any p3) // 0x675D19C6067CAE08
function MONEY.NETWORK_SPENT_UPGRADE_BUSINESS_PROPERTY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2471, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_TRADE_BUSINESS_PROPERTY(Any p0, Any p1, Any p2, Any p3) // 0xA51B086B0B2C0F7A
function MONEY.NETWORK_SPENT_TRADE_BUSINESS_PROPERTY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2472, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_MC_ABILITY(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xD7CCCBA28C4ECAF0
function MONEY.NETWORK_SPENT_MC_ABILITY(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2473, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPENT_PAY_BUSINESS_SUPPLIES(Any p0, Any p1, Any p2, Any p3) // 0x0035BB914316F1E3
function MONEY.NETWORK_SPENT_PAY_BUSINESS_SUPPLIES(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2474, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_CHANGE_APPEARANCE(Any p0, Any p1, Any p2) // 0x5F456788B05FAEAC
function MONEY.NETWORK_SPENT_CHANGE_APPEARANCE(p0, p1, p2)
  native.invoke(
    Type.Void, 2475, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_SPENT_VEHICLE_EXPORT_MODS(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7, Any p8, Any p9) // 0xA75CCF58A60A5FD1
function MONEY.NETWORK_SPENT_VEHICLE_EXPORT_MODS(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
  native.invoke(
    Type.Void, 2476, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7),
    arg(Type.Any, p8),
    arg(Type.Any, p9)
  )
end

-- void NETWORK_SPENT_PURCHASE_OFFICE_GARAGE(Any p0, Any p1, Any p2, Any p3) // 0xB4C2EC463672474E
function MONEY.NETWORK_SPENT_PURCHASE_OFFICE_GARAGE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2477, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_OFFICE_GARAGE(Any p0, Any p1, Any p2, Any p3) // 0x2AFC2D19B50797F2
function MONEY.NETWORK_SPENT_UPGRADE_OFFICE_GARAGE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2478, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_IMPORT_EXPORT_REPAIR(Any p0, Any p1, Any p2) // 0xC1952F3773BA18FE
function MONEY.NETWORK_SPENT_IMPORT_EXPORT_REPAIR(p0, p1, p2)
  native.invoke(
    Type.Void, 2479, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_SPENT_PURCHASE_HANGAR(Any p0, Any p1, Any p2, Any p3) // 0xCCB339CC970452DA
function MONEY.NETWORK_SPENT_PURCHASE_HANGAR(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2480, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_HANGAR(Any p0, Any p1, Any p2, Any p3) // 0x615EB504B0788DAF
function MONEY.NETWORK_SPENT_UPGRADE_HANGAR(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2481, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_HANGAR_UTILITY_CHARGES(int amount, BOOL p1, BOOL p2) // 0xB18AC2ECBB15CB6A
function MONEY.NETWORK_SPENT_HANGAR_UTILITY_CHARGES(amount, p1, p2)
  native.invoke(
    Type.Void, 2482, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_HANGAR_STAFF_CHARGES(int amount, BOOL p1, BOOL p2) // 0xB1F1346FD57685D7
function MONEY.NETWORK_SPENT_HANGAR_STAFF_CHARGES(amount, p1, p2)
  native.invoke(
    Type.Void, 2483, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_BUY_TRUCK(Any p0, Any p1, Any p2, Any p3) // 0xAC272C0AE01B4BD8
function MONEY.NETWORK_SPENT_BUY_TRUCK(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2484, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_TRUCK(Any p0, Any p1, Any p2, Any p3) // 0x365E877C61D6988B
function MONEY.NETWORK_SPENT_UPGRADE_TRUCK(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2485, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_BUY_BUNKER(Any p0, Any p1, Any p2, Any p3) // 0x12D148D26538D0F9
function MONEY.NETWORK_SPENT_BUY_BUNKER(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2486, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPRADE_BUNKER(Any p0, Any p1, Any p2, Any p3) // 0x0C82D21A77C22D49
function MONEY.NETWORK_SPENT_UPRADE_BUNKER(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2487, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_FROM_SELL_BUNKER(int amount, Hash bunkerHash) // 0x9251B6ABF2D0A5B4
function MONEY.NETWORK_EARN_FROM_SELL_BUNKER(amount, bunkerHash)
  native.invoke(
    Type.Void, 2488, false,
    arg(Type.Int, amount),
    arg(Type.Hash, bunkerHash)
  )
end

-- void NETWORK_SPENT_BALLISTIC_EQUIPMENT(int amount, BOOL p1, BOOL p2) // 0x5D97630A8A0EF123
function MONEY.NETWORK_SPENT_BALLISTIC_EQUIPMENT(amount, p1, p2)
  native.invoke(
    Type.Void, 2489, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_EARN_RDR_BONUS(int amount, Any p1) // 0x7A5349B773584675
function MONEY.NETWORK_EARN_RDR_BONUS(amount, p1)
  native.invoke(
    Type.Void, 2490, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_WAGE_PAYMENT(int amount, Any p1) // 0x35F8DA0E8A31EF1B
function MONEY.NETWORK_EARN_WAGE_PAYMENT(amount, p1)
  native.invoke(
    Type.Void, 2491, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_WAGE_PAYMENT_BONUS(int amount) // 0x005ACA7100BD101D
function MONEY.NETWORK_EARN_WAGE_PAYMENT_BONUS(amount)
  native.invoke(
    Type.Void, 2492, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_SPENT_BUY_BASE(Any p0, Any p1, Any p2, Any p3) // 0x4EA3F425C7744D21
function MONEY.NETWORK_SPENT_BUY_BASE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2493, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_BASE(Any p0, Any p1, Any p2, Any p3) // 0x3DD3F33A5D55EA6F
function MONEY.NETWORK_SPENT_UPGRADE_BASE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2494, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_BUY_TILTROTOR(Any p0, Any p1, Any p2, Any p3) // 0x0CCE73BC7A11E885
function MONEY.NETWORK_SPENT_BUY_TILTROTOR(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2495, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_TILTROTOR(Any p0, Any p1, Any p2, Any p3) // 0x165E135D6DFA2907
function MONEY.NETWORK_SPENT_UPGRADE_TILTROTOR(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2496, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_EMPLOY_ASSASSINS(Any p0, Any p1, Any p2, Any p3) // 0x5BBBD92186E1F1C5
function MONEY.NETWORK_SPENT_EMPLOY_ASSASSINS(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2497, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_GANGOPS_CANNON(Any p0, Any p1, Any p2, Any p3) // 0x771ADB0E7635B7BF
function MONEY.NETWORK_SPEND_GANGOPS_CANNON(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2498, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_GANGOPS_SKIP_MISSION(Any p0, Any p1, Any p2, Any p3) // 0xDA947AE8880D5C18
function MONEY.NETWORK_SPEND_GANGOPS_SKIP_MISSION(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2499, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_CASINO_HEIST_SKIP_MISSION(Any p0, Any p1, Any p2, Any p3) // 0x487009DD91D93429
function MONEY.NETWORK_SPEND_CASINO_HEIST_SKIP_MISSION(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2500, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_SELL_BASE(int amount, Hash baseNameHash) // 0x0E1E2FF3F4EC11AA
function MONEY.NETWORK_EARN_SELL_BASE(amount, baseNameHash)
  native.invoke(
    Type.Void, 2501, false,
    arg(Type.Int, amount),
    arg(Type.Hash, baseNameHash)
  )
end

-- void NETWORK_EARN_TARGET_REFUND(int amount, int p1) // 0x5B669CF2299A271F
function MONEY.NETWORK_EARN_TARGET_REFUND(amount, p1)
  native.invoke(
    Type.Void, 2502, false,
    arg(Type.Int, amount),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_EARN_GANGOPS_WAGES(int amount, int p1) // 0x2DCB19ABAB0380A8
function MONEY.NETWORK_EARN_GANGOPS_WAGES(amount, p1)
  native.invoke(
    Type.Void, 2503, false,
    arg(Type.Int, amount),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_EARN_GANGOPS_WAGES_BONUS(int amount, int p1) // 0x15BB2A5C757EB91F
function MONEY.NETWORK_EARN_GANGOPS_WAGES_BONUS(amount, p1)
  native.invoke(
    Type.Void, 2504, false,
    arg(Type.Int, amount),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_EARN_DAR_CHALLENGE(int amount, Any p1) // 0xCAC672087B4A24AB
function MONEY.NETWORK_EARN_DAR_CHALLENGE(amount, p1)
  native.invoke(
    Type.Void, 2505, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_DOOMSDAY_FINALE_BONUS(int amount, Hash vehicleHash) // 0x128A747F4A230952
function MONEY.NETWORK_EARN_DOOMSDAY_FINALE_BONUS(amount, vehicleHash)
  native.invoke(
    Type.Void, 2506, false,
    arg(Type.Int, amount),
    arg(Type.Hash, vehicleHash)
  )
end

-- void NETWORK_EARN_GANGOPS_AWARD(int amount, const char* p1, Any p2) // 0xA9A31475F530DFDA
function MONEY.NETWORK_EARN_GANGOPS_AWARD(amount, p1, p2)
  native.invoke(
    Type.Void, 2507, false,
    arg(Type.Int, amount),
    arg(Type.String, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_GANGOPS_ELITE(int amount, const char* p1, int actIndex) // 0x2597A0D4A4FC2C77
function MONEY.NETWORK_EARN_GANGOPS_ELITE(amount, p1, actIndex)
  native.invoke(
    Type.Void, 2508, false,
    arg(Type.Int, amount),
    arg(Type.String, p1),
    arg(Type.Int, actIndex)
  )
end

-- void NETWORK_SERVICE_EARN_GANGOPS_RIVAL_DELIVERY(int earnedMoney) // 0x1B882107C23A9022
function MONEY.NETWORK_SERVICE_EARN_GANGOPS_RIVAL_DELIVERY(earnedMoney)
  native.invoke(
    Type.Void, 2509, false,
    arg(Type.Int, earnedMoney)
  )
end

-- void NETWORK_SPEND_GANGOPS_START_STRAND(int type, int amount, BOOL p2, BOOL p3) // 0xA19EC0786E326E06
function MONEY.NETWORK_SPEND_GANGOPS_START_STRAND(type, amount, p2, p3)
  native.invoke(
    Type.Void, 2510, false,
    arg(Type.Int, type),
    arg(Type.Int, amount),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPEND_GANGOPS_TRIP_SKIP(int amount, BOOL p1, BOOL p2) // 0x5ECE6FD7B4EC8D6A
function MONEY.NETWORK_SPEND_GANGOPS_TRIP_SKIP(amount, p1, p2)
  native.invoke(
    Type.Void, 2511, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_EARN_GANGOPS_PREP_PARTICIPATION(int amount) // 0xED26584F6BDCBBFD
function MONEY.NETWORK_EARN_GANGOPS_PREP_PARTICIPATION(amount)
  native.invoke(
    Type.Void, 2512, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_GANGOPS_SETUP(int amount, const char* p1) // 0xA9160796D47A2CF8
function MONEY.NETWORK_EARN_GANGOPS_SETUP(amount, p1)
  native.invoke(
    Type.Void, 2513, false,
    arg(Type.Int, amount),
    arg(Type.String, p1)
  )
end

-- void NETWORK_EARN_GANGOPS_FINALE(int amount, const char* p1) // 0x1C121FC9545E0D52
function MONEY.NETWORK_EARN_GANGOPS_FINALE(amount, p1)
  native.invoke(
    Type.Void, 2514, false,
    arg(Type.Int, amount),
    arg(Type.String, p1)
  )
end

-- void NETWORK_SPEND_GANGOPS_REPAIR_COST(Any p0, Any p1, Any p2) // 0x2A7CEC72C3443BCC
function MONEY.NETWORK_SPEND_GANGOPS_REPAIR_COST(p0, p1, p2)
  native.invoke(
    Type.Void, 2515, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_NIGHTCLUB(Any p0) // 0xE0F82D68C7039158
function MONEY.NETWORK_EARN_NIGHTCLUB(p0)
  native.invoke(
    Type.Void, 2516, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_NIGHTCLUB_DANCING(Any p0) // 0xB4DEAE67F35E2ACD
function MONEY.NETWORK_EARN_NIGHTCLUB_DANCING(p0)
  native.invoke(
    Type.Void, 2517, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_BB_EVENT_BONUS(int amount) // 0xFDD8D2440DAF1590
function MONEY.NETWORK_EARN_BB_EVENT_BONUS(amount)
  native.invoke(
    Type.Void, 2518, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_SPENT_PURCHASE_HACKER_TRUCK(Any p0, Any p1, Any p2, Any p3) // 0x2A93C46AAB1EACC9
function MONEY.NETWORK_SPENT_PURCHASE_HACKER_TRUCK(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2519, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_HACKER_TRUCK(Any p0, Any p1, Any p2, Any p3) // 0x226C284C830D0CA8
function MONEY.NETWORK_SPENT_UPGRADE_HACKER_TRUCK(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2520, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_HACKER_TRUCK(Any p0, int amount, Any p2, Any p3) // 0xE8815FE993896AD3
function MONEY.NETWORK_EARN_HACKER_TRUCK(p0, amount, p2, p3)
  native.invoke(
    Type.Void, 2521, false,
    arg(Type.Any, p0),
    arg(Type.Int, amount),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_PURCHASE_NIGHTCLUB_AND_WAREHOUSE(Any p0, Any p1, Any p2, Any p3) // 0xED76D195E6E3BF7F
function MONEY.NETWORK_SPENT_PURCHASE_NIGHTCLUB_AND_WAREHOUSE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2522, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_UPGRADE_NIGHTCLUB_AND_WAREHOUSE(Any p0, Any p1, Any p2, Any p3) // 0x1DC9B749E7AE282B
function MONEY.NETWORK_SPENT_UPGRADE_NIGHTCLUB_AND_WAREHOUSE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2523, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_NIGHTCLUB_AND_WAREHOUSE(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6) // 0xC6E74CF8C884C880
function MONEY.NETWORK_EARN_NIGHTCLUB_AND_WAREHOUSE(p0, p1, p2, p3, p4, p5, p6)
  native.invoke(
    Type.Void, 2524, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void NETWORK_SPEND_NIGHTCLUB_AND_WAREHOUSE(Any p0, Any p1, Any p2, Any p3) // 0x65482BFD0923C8A1
function MONEY.NETWORK_SPEND_NIGHTCLUB_AND_WAREHOUSE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2525, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPENT_RDR_HATCHET_BONUS(int amount, BOOL p1, BOOL p2) // 0xE284D46FFDB82E36
function MONEY.NETWORK_SPENT_RDR_HATCHET_BONUS(amount, p1, p2)
  native.invoke(
    Type.Void, 2526, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_NIGHTCLUB_ENTRY_FEE(Player player, int amount, Any p1, BOOL p2, BOOL p3) // 0x876056684281655D
function MONEY.NETWORK_SPENT_NIGHTCLUB_ENTRY_FEE(player, amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2527, false,
    arg(Type.Player, player),
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPEND_NIGHTCLUB_BAR_DRINK(int amount, Any p1, BOOL p2, BOOL p3) // 0xDD21B016E4289465
function MONEY.NETWORK_SPEND_NIGHTCLUB_BAR_DRINK(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2528, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPEND_BOUNTY_HUNTER_MISSION(int amount, BOOL p1, BOOL p2) // 0x1BEA0CD93470BB1F
function MONEY.NETWORK_SPEND_BOUNTY_HUNTER_MISSION(amount, p1, p2)
  native.invoke(
    Type.Void, 2529, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPENT_REHIRE_DJ(int amount, Any p1, BOOL p2, BOOL p3) // 0xF6C8A544E4CF14FC
function MONEY.NETWORK_SPENT_REHIRE_DJ(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2530, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPENT_ARENA_JOIN_SPECTATOR(int amount, Any p1, BOOL p2, BOOL p3) // 0x14EAEA58F93B55AF
function MONEY.NETWORK_SPENT_ARENA_JOIN_SPECTATOR(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2531, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_EARN_ARENA_SKILL_LEVEL_PROGRESSION(int amount, Any p1) // 0xE08256F972C7BB2C
function MONEY.NETWORK_EARN_ARENA_SKILL_LEVEL_PROGRESSION(amount, p1)
  native.invoke(
    Type.Void, 2532, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_ARENA_CAREER_PROGRESSION(int amount, Any p1) // 0x0F99F70C61F14619
function MONEY.NETWORK_EARN_ARENA_CAREER_PROGRESSION(amount, p1)
  native.invoke(
    Type.Void, 2533, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_SPEND_MAKE_IT_RAIN(int amount, BOOL p1, BOOL p2) // 0xE5F5A060439C2F5D
function MONEY.NETWORK_SPEND_MAKE_IT_RAIN(amount, p1, p2)
  native.invoke(
    Type.Void, 2534, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SPEND_BUY_ARENA(int amount, BOOL p1, BOOL p2, const char* p3) // 0x40D5DA9550B7CB46
function MONEY.NETWORK_SPEND_BUY_ARENA(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2535, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.String, p3)
  )
end

-- void NETWORK_SPEND_UPGRADE_ARENA(int amount, BOOL p1, BOOL p2, const char* p3) // 0x037ABB06825D7AB1
function MONEY.NETWORK_SPEND_UPGRADE_ARENA(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2536, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.String, p3)
  )
end

-- void NETWORK_SPEND_ARENA_SPECTATOR_BOX(int amount, int type, BOOL p2, BOOL p3) // 0x7049BF858601DC0F
--[[
type either, 1 for cam spectate, 2 for drone
--]]
function MONEY.NETWORK_SPEND_ARENA_SPECTATOR_BOX(amount, type, p2, p3)
  native.invoke(
    Type.Void, 2537, false,
    arg(Type.Int, amount),
    arg(Type.Int, type),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPEND_SPIN_THE_WHEEL_PAYMENT(int amount, Any p1, BOOL p2) // 0x9A5BD1D0000B339C
function MONEY.NETWORK_SPEND_SPIN_THE_WHEEL_PAYMENT(amount, p1, p2)
  native.invoke(
    Type.Void, 2538, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_EARN_SPIN_THE_WHEEL_CASH(int amount) // 0x676C48776CACBB5A
function MONEY.NETWORK_EARN_SPIN_THE_WHEEL_CASH(amount)
  native.invoke(
    Type.Void, 2539, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_SPEND_ARENA_PREMIUM(int amount, BOOL p1, BOOL p2) // 0x619496D837EFD920
function MONEY.NETWORK_SPEND_ARENA_PREMIUM(amount, p1, p2)
  native.invoke(
    Type.Void, 2540, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_EARN_ARENA_WAR(int amount, Any p1, Any p2, Any p3) // 0x631F1CB8FB4130AA
function MONEY.NETWORK_EARN_ARENA_WAR(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2541, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_ARENA_WAR_ASSASSINATE_TARGET(int amount) // 0x5E7AE8AABE8B7C0D
function MONEY.NETWORK_EARN_ARENA_WAR_ASSASSINATE_TARGET(amount)
  native.invoke(
    Type.Void, 2542, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_ARENA_WAR_EVENT_CARGO(int amount) // 0xA82959062361B259
function MONEY.NETWORK_EARN_ARENA_WAR_EVENT_CARGO(amount)
  native.invoke(
    Type.Void, 2543, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_RC_TIME_TRIAL(int amount) // 0xDFF49EE984E7AAE8
function MONEY.NETWORK_EARN_RC_TIME_TRIAL(amount)
  native.invoke(
    Type.Void, 2544, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_DAILY_OBJECTIVE_EVENT(int amount) // 0x5128DF14A5BB86FC
function MONEY.NETWORK_EARN_DAILY_OBJECTIVE_EVENT(amount)
  native.invoke(
    Type.Void, 2545, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_SPEND_CASINO_MEMBERSHIP(int amount, BOOL p1, BOOL p2, int p3) // 0xFBBE0570EDF39D46
function MONEY.NETWORK_SPEND_CASINO_MEMBERSHIP(amount, p1, p2, p3)
  native.invoke(
    Type.Void, 2546, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Int, p3)
  )
end

-- void NETWORK_SPEND_BUY_CASINO(int amount, BOOL p1, BOOL p2, Any* data) // 0x34A6FC4D06C4DA0F
function MONEY.NETWORK_SPEND_BUY_CASINO(amount, p1, p2, data)
  native.invoke(
    Type.Void, 2547, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    ref(Type.Any, data)
  )
end

-- void NETWORK_SPEND_UPGRADE_CASINO(int amount, BOOL p1, BOOL p2, Any* data) // 0x4740D62BC1B4EBEA
function MONEY.NETWORK_SPEND_UPGRADE_CASINO(amount, p1, p2, data)
  native.invoke(
    Type.Void, 2548, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    ref(Type.Any, data)
  )
end

-- void NETWORK_SPEND_CASINO_GENERIC(int amount, Any p1, Any p2, Any p3, Any p4) // 0x88BF9B612B84D3C3
function MONEY.NETWORK_SPEND_CASINO_GENERIC(amount, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2549, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_EARN_CASINO_TIME_TRIAL_WIN(int amount) // 0x0819DB99FD2FBBD8
function MONEY.NETWORK_EARN_CASINO_TIME_TRIAL_WIN(amount)
  native.invoke(
    Type.Void, 2550, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_COLLECTABLES_ACTION_FIGURES(int amount) // 0x5517F90043466049
function MONEY.NETWORK_EARN_COLLECTABLES_ACTION_FIGURES(amount)
  native.invoke(
    Type.Void, 2551, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_CASINO_COLLECTABLE_COMPLETED_COLLECTION(int amount) // 0x83AD64F53F4E9483
function MONEY.NETWORK_EARN_CASINO_COLLECTABLE_COMPLETED_COLLECTION(amount)
  native.invoke(
    Type.Void, 2552, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_SELL_PRIZE_VEHICLE(int amount, Any p1, Any p2) // 0x8BCB27A057DF7B7F
function MONEY.NETWORK_EARN_SELL_PRIZE_VEHICLE(amount, p1, p2)
  native.invoke(
    Type.Void, 2553, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_CASINO_MISSION_REWARD(int amount) // 0x566FD402B25787DE
function MONEY.NETWORK_EARN_CASINO_MISSION_REWARD(amount)
  native.invoke(
    Type.Void, 2554, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_CASINO_STORY_MISSION_REWARD(int amount) // 0xAC95ED552157E092
function MONEY.NETWORK_EARN_CASINO_STORY_MISSION_REWARD(amount)
  native.invoke(
    Type.Void, 2555, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_CASINO_MISSION_PARTICIPATION(int amount) // 0x09E8F18641BE2575
function MONEY.NETWORK_EARN_CASINO_MISSION_PARTICIPATION(amount)
  native.invoke(
    Type.Void, 2556, false,
    arg(Type.Int, amount)
  )
end

-- void NETWORK_EARN_CASINO_AWARD(int amount, Hash hash) // 0x973A9781A34F8DEB
function MONEY.NETWORK_EARN_CASINO_AWARD(amount, hash)
  native.invoke(
    Type.Void, 2557, false,
    arg(Type.Int, amount),
    arg(Type.Hash, hash)
  )
end

-- void NETWORK_SPEND_BUY_ARCADE(Any p0, Any p1, Any p2, Any p3) // 0x870289A558348378
function MONEY.NETWORK_SPEND_BUY_ARCADE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2558, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_UPGRADE_ARCADE(Any p0, Any p1, Any p2, Any p3) // 0x5574637681911FDA
function MONEY.NETWORK_SPEND_UPGRADE_ARCADE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2559, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_CASINO_HEIST(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7, Any p8, Any p9, Any p10) // 0xD30E8392F407C328
function MONEY.NETWORK_SPEND_CASINO_HEIST(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10)
  native.invoke(
    Type.Void, 2560, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7),
    arg(Type.Any, p8),
    arg(Type.Any, p9),
    arg(Type.Any, p10)
  )
end

-- void NETWORK_SPEND_ARCADE_MGMT(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xB5B58E24868CB09E
function MONEY.NETWORK_SPEND_ARCADE_MGMT(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2561, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPEND_PLAY_ARCADE(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xEAD3D81F2C3A1458
function MONEY.NETWORK_SPEND_PLAY_ARCADE(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2562, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPEND_ARCADE(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x43AA7FAC4E6D6687
function MONEY.NETWORK_SPEND_ARCADE(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2563, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_EARN_CASINO_HEIST(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6) // 0x72E7C7B9615FA3C3
function MONEY.NETWORK_EARN_CASINO_HEIST(p0, p1, p2, p3, p4, p5, p6)
  native.invoke(
    Type.Void, 2564, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- void NETWORK_EARN_UPGRADE_ARCADE(Any p0, Any p1, Any p2) // 0x4C3B75694F7E0D9C
function MONEY.NETWORK_EARN_UPGRADE_ARCADE(p0, p1, p2)
  native.invoke(
    Type.Void, 2565, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_ARCADE(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xD29334ED1A256DBF
function MONEY.NETWORK_EARN_ARCADE(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2566, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_EARN_COLLECTABLES(Any p0, Any p1, Any p2) // 0xA95CFB4E02390842
function MONEY.NETWORK_EARN_COLLECTABLES(p0, p1, p2)
  native.invoke(
    Type.Void, 2567, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_CHALLENGE(int amount, Any p1, Any p2) // 0x0DD362F14F18942A
function MONEY.NETWORK_EARN_CHALLENGE(amount, p1, p2)
  native.invoke(
    Type.Void, 2568, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_CASINO_HEIST_AWARDS(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x3EC7471E6909798A
function MONEY.NETWORK_EARN_CASINO_HEIST_AWARDS(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2569, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_EARN_COLLECTABLE_ITEM(int amount, Any p1) // 0x84FF63BD4966F33D
function MONEY.NETWORK_EARN_COLLECTABLE_ITEM(amount, p1)
  native.invoke(
    Type.Void, 2570, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_COLLECTABLE_COMPLETED_COLLECTION(int amount, Any p1) // 0x5C9B198AF5A54FA6
function MONEY.NETWORK_EARN_COLLECTABLE_COMPLETED_COLLECTION(amount, p1)
  native.invoke(
    Type.Void, 2571, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_YATCH_MISSION(int amount, Any p1) // 0xDE68E30D89F97132
function MONEY.NETWORK_EARN_YATCH_MISSION(amount, p1)
  native.invoke(
    Type.Void, 2572, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_DISPATCH_CALL(int amount, Any p1) // 0xE2E244AB823B4483
function MONEY.NETWORK_EARN_DISPATCH_CALL(amount, p1)
  native.invoke(
    Type.Void, 2573, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_SPEND_BEACH_PARTY(Any p0) // 0x54ABA22FA6371249
function MONEY.NETWORK_SPEND_BEACH_PARTY(p0)
  native.invoke(
    Type.Void, 2574, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_SPEND_SUBMARINE(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0x6C8BC1488527AAAB
function MONEY.NETWORK_SPEND_SUBMARINE(p0, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 2575, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void NETWORK_SPEND_CASINO_CLUB(int amount1, Any p1, BOOL p2, Any p3, int p4, int p5, int p6, int amount2, Any p8) // 0xC991C255AA6D90B2
function MONEY.NETWORK_SPEND_CASINO_CLUB(amount1, p1, p2, p3, p4, p5, p6, amount2, p8)
  native.invoke(
    Type.Void, 2576, false,
    arg(Type.Int, amount1),
    arg(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3),
    arg(Type.Int, p4),
    arg(Type.Int, p5),
    arg(Type.Int, p6),
    arg(Type.Int, amount2),
    arg(Type.Any, p8)
  )
end

-- void NETWORK_SPEND_BUY_SUB(Any p0, Any p1, Any p2, Any p3) // 0x90CD7C6871FBF1B4
function MONEY.NETWORK_SPEND_BUY_SUB(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2577, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_UPGRADE_SUB(Any p0, Any p1, Any p2, Any p3) // 0x89049A84065CE68E
function MONEY.NETWORK_SPEND_UPGRADE_SUB(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2578, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_ISLAND_HEIST(Any p0, Any p1, Any p2, Any p3) // 0xE86689E5F82DE429
function MONEY.NETWORK_SPEND_ISLAND_HEIST(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2579, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_ISLAND_HEIST(int amount1, Any p1, Any p2, Any p3, int amount2, int p5) // 0xD21D111C46BA9F15
function MONEY.NETWORK_EARN_ISLAND_HEIST(amount1, p1, p2, p3, amount2, p5)
  native.invoke(
    Type.Void, 2580, false,
    arg(Type.Int, amount1),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Int, amount2),
    arg(Type.Int, p5)
  )
end

-- void NETWORK_EARN_BEACH_PARTY_LOST_FOUND(Any p0, Any p1, Any p2) // 0xA51338E0DCCD4065
function MONEY.NETWORK_EARN_BEACH_PARTY_LOST_FOUND(p0, p1, p2)
  native.invoke(
    Type.Void, 2581, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_FROM_ISLAND_HEIST_DJ_MISSION(Any p0, Any p1) // 0xE2BB399D90942091
function MONEY.NETWORK_EARN_FROM_ISLAND_HEIST_DJ_MISSION(p0, p1)
  native.invoke(
    Type.Void, 2582, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_SPEND_CAR_CLUB_MEMBERSHIP(int amount1, Any p1, Any p2, int amount2, Any p4) // 0x1464E17207CD36E2
function MONEY.NETWORK_SPEND_CAR_CLUB_MEMBERSHIP(amount1, p1, p2, amount2, p4)
  native.invoke(
    Type.Void, 2583, false,
    arg(Type.Int, amount1),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Int, amount2),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPEND_CAR_CLUB_BAR(Any p0, BOOL p1, BOOL p2, Any p3) // 0x925227803A0EAA1B
function MONEY.NETWORK_SPEND_CAR_CLUB_BAR(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2584, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_AUTOSHOP_MODIFY(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x9BEA350D7C48061B
function MONEY.NETWORK_SPEND_AUTOSHOP_MODIFY(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2585, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPEND_CAR_CLUB_TAKEOVER(Any p0, Any p1, Any p2, Any p3) // 0xD1E46824E6FB92B5
function MONEY.NETWORK_SPEND_CAR_CLUB_TAKEOVER(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2586, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_BUY_AUTOSHOP(Any p0, Any p1, Any p2, Any p3) // 0xEEB7E5D1FEB20869
function MONEY.NETWORK_SPEND_BUY_AUTOSHOP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2587, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_UPGRADE_AUTOSHOP(Any p0, Any p1, Any p2, Any p3) // 0xDD829AA198FDC46C
function MONEY.NETWORK_SPEND_UPGRADE_AUTOSHOP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2588, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_AUTOSHOP_BUSINESS(Any p0, Any p1, Any p2) // 0x36A7FD5A7194B03E
function MONEY.NETWORK_EARN_AUTOSHOP_BUSINESS(p0, p1, p2)
  native.invoke(
    Type.Void, 2589, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_AUTOSHOP_INCOME(Any p0, int p1) // 0xC66D1CF99ED7FE25
function MONEY.NETWORK_EARN_AUTOSHOP_INCOME(p0, p1)
  native.invoke(
    Type.Void, 2590, false,
    arg(Type.Any, p0),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_EARN_CARCLUB_MEMBERSHIP(Any p0) // 0xBC6227792A188E2E
function MONEY.NETWORK_EARN_CARCLUB_MEMBERSHIP(p0)
  native.invoke(
    Type.Void, 2591, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_DAILY_VEHICLE(Any p0, Any p1) // 0x533073E8A596008C
function MONEY.NETWORK_EARN_DAILY_VEHICLE(p0, p1)
  native.invoke(
    Type.Void, 2592, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_DAILY_VEHICLE_BONUS(Any p0) // 0xFE65AFE7308E32B2
function MONEY.NETWORK_EARN_DAILY_VEHICLE_BONUS(p0)
  native.invoke(
    Type.Void, 2593, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_TUNER_AWARD(Any p0, Any p1, Any p2) // 0xB846F547D3792DF6
function MONEY.NETWORK_EARN_TUNER_AWARD(p0, p1, p2)
  native.invoke(
    Type.Void, 2594, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_TUNER_ROBBERY(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xBCB266247193AC61
function MONEY.NETWORK_EARN_TUNER_ROBBERY(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2595, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_EARN_UPGRADE_AUTOSHOP(Any p0, Any p1) // 0xC10322A8D3E061EE
function MONEY.NETWORK_EARN_UPGRADE_AUTOSHOP(p0, p1)
  native.invoke(
    Type.Void, 2596, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_SPEND_INTERACTION_MENU_ABILITY(Any p0, Any p1, Any p2, Any p3) // 0x93AA4165CB67E925
function MONEY.NETWORK_SPEND_INTERACTION_MENU_ABILITY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2597, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_SET_COMMON_FIELDS(Any p0, Any p1, Any p2, BOOL p3) // 0xB9F7A469460E7A4A
function MONEY.NETWORK_SPEND_SET_COMMON_FIELDS(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2598, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Bool, p3)
  )
end

-- void NETWORK_SPEND_SET_DISCOUNT(BOOL p0) // 0x7E2F4E8F44CAF4E0
function MONEY.NETWORK_SPEND_SET_DISCOUNT(p0)
  native.invoke(
    Type.Void, 2599, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_SPEND_BUY_AGENCY(Any p0, Any p1, Any p2, Any p3) // 0xEA8CD3C9B3C35884
function MONEY.NETWORK_SPEND_BUY_AGENCY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2600, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_UPGRADE_AGENCY(Any p0, Any p1, Any p2, Any p3) // 0x6CCA64840589A3B6
function MONEY.NETWORK_SPEND_UPGRADE_AGENCY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2601, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_AGENCY(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x1B2120405080125C
function MONEY.NETWORK_SPEND_AGENCY(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2602, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPEND_HIDDEN(Any p0, Any p1, Any p2, Any p3) // 0xBF8793B91EA094A7
function MONEY.NETWORK_SPEND_HIDDEN(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2603, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_SOURCE_BIKE(Any p0, Any p1, Any p2, Any p3) // 0xD9DF467CBE4398C8
function MONEY.NETWORK_SPEND_SOURCE_BIKE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2604, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_COMP_SUV(Any p0, Any p1, Any p2, Any p3) // 0xD86581F9E7CDA383
function MONEY.NETWORK_SPEND_COMP_SUV(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2605, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_SUV_FST_TRVL(int p0, BOOL p1, BOOL p2, Any p3) // 0x61A2DF64ED2D396E
function MONEY.NETWORK_SPEND_SUV_FST_TRVL(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2606, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_SUPPLY(Any p0, Any p1, Any p2, Any p3) // 0xEBD482B82ACB8BAD
function MONEY.NETWORK_SPEND_SUPPLY(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2607, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_BIKE_SHOP(Any p0, Any p1, Any p2, Any p3) // 0x923AEA8E78F8DF0B
function MONEY.NETWORK_SPEND_BIKE_SHOP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2608, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SPEND_VEHICLE_REQUESTED(Any p0, Any p1, Any p2, Any p3, Any p4) // 0x02D24A35A9CC3503
function MONEY.NETWORK_SPEND_VEHICLE_REQUESTED(p0, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 2609, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- void NETWORK_SPEND_GUNRUNNING(Any p0, Any p1, Any p2, Any p3) // 0x2CEB0E0BC2A77C05
function MONEY.NETWORK_SPEND_GUNRUNNING(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2610, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_AGENCY_SAFE(Any p0) // 0x663B4B9D11742A12
function MONEY.NETWORK_EARN_AGENCY_SAFE(p0)
  native.invoke(
    Type.Void, 2611, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_EARN_AWARD_CONTRACT(Any p0, Any p1) // 0x146D4EB6D22A403F
function MONEY.NETWORK_EARN_AWARD_CONTRACT(p0, p1)
  native.invoke(
    Type.Void, 2612, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_AGENCY_CONTRACT(Any p0, Any p1) // 0x38482AD49CB905C7
function MONEY.NETWORK_EARN_AGENCY_CONTRACT(p0, p1)
  native.invoke(
    Type.Void, 2613, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_AWARD_PHONE(Any p0, Any p1) // 0x7397A115030F1BE3
function MONEY.NETWORK_EARN_AWARD_PHONE(p0, p1)
  native.invoke(
    Type.Void, 2614, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_AGENCY_PHONE(Any p0, Any p1, Any p2) // 0xE29F3D5FA63B1B82
function MONEY.NETWORK_EARN_AGENCY_PHONE(p0, p1, p2)
  native.invoke(
    Type.Void, 2615, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_EARN_AWARD_FIXER_MISSION(Any p0, Any p1) // 0x88D6C327D6C57C45
function MONEY.NETWORK_EARN_AWARD_FIXER_MISSION(p0, p1)
  native.invoke(
    Type.Void, 2616, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_FIXER_PREP(Any p0, Any p1) // 0x6283E5DE4C4460C6
function MONEY.NETWORK_EARN_FIXER_PREP(p0, p1)
  native.invoke(
    Type.Void, 2617, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_FIXER_FINALE(Any p0, Any p1) // 0xBA154373C5FE51E8
function MONEY.NETWORK_EARN_FIXER_FINALE(p0, p1)
  native.invoke(
    Type.Void, 2618, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_FIXER_AGENCY_SHORT_TRIP(Any p0, Any p1) // 0xF4A8E57460BF2037
function MONEY.NETWORK_EARN_FIXER_AGENCY_SHORT_TRIP(p0, p1)
  native.invoke(
    Type.Void, 2619, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_AWARD_SHORT_TRIP(Any p0, Any p1) // 0x5B4DBDED84D6A420
function MONEY.NETWORK_EARN_AWARD_SHORT_TRIP(p0, p1)
  native.invoke(
    Type.Void, 2620, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_FIXER_RIVAL_DELIVERY(Any p0, Any p1) // 0x235D41210B3A1A5E
function MONEY.NETWORK_EARN_FIXER_RIVAL_DELIVERY(p0, p1)
  native.invoke(
    Type.Void, 2621, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_UPGRADE_AGENCY(Any p0, Any p1) // 0xD07C7C3F1995108C
function MONEY.NETWORK_EARN_UPGRADE_AGENCY(p0, p1)
  native.invoke(
    Type.Void, 2622, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_SPEND_APARTMENT_UTILITIES(int amount, BOOL p1, BOOL p2, Any* data) // 0x1254B5B3925EFD3D
function MONEY.NETWORK_SPEND_APARTMENT_UTILITIES(amount, p1, p2, data)
  native.invoke(
    Type.Void, 2623, false,
    arg(Type.Int, amount),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    ref(Type.Any, data)
  )
end

-- void NETWORK_SPEND_BUSINESS_PROPERTY_FEES(Any p0, Any p1, Any p2, Any p3) // 0x92D1CFDA1227FF1C
function MONEY.NETWORK_SPEND_BUSINESS_PROPERTY_FEES(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2624, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_SIGHTSEEING_REWARD(Any p0, Any p1, Any p2, Any p3) // 0x45087AE480B233AC
function MONEY.NETWORK_EARN_SIGHTSEEING_REWARD(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2625, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_EARN_BIKER_SHOP(Any p0, Any p1) // 0x2C5809EB9DF57257
function MONEY.NETWORK_EARN_BIKER_SHOP(p0, p1)
  native.invoke(
    Type.Void, 2626, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_EARN_BIKER(Any p0) // 0x71BEC32FA466E105
function MONEY.NETWORK_EARN_BIKER(p0)
  native.invoke(
    Type.Void, 2627, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_YOHAN_SOURCE_GOODS(Any p0, Any p1, Any p2, Any p3) // 0x59498BC8B1C8B15C
function MONEY.NETWORK_YOHAN_SOURCE_GOODS(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2628, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void _NETWORK_SPEND_BUY_MFGARAGE(Any p0, Any p1, Any p2, Any p3) // 0xA2ED36DCF0FCA413
function MONEY._NETWORK_SPEND_BUY_MFGARAGE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2629, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void _NETWORK_SPEND_UPGRADE_MFGARAGE(Any p0, Any p1, Any p2, Any p3) // 0xCF8F346DDDC66643
function MONEY._NETWORK_SPEND_UPGRADE_MFGARAGE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2630, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void _NETWORK_SPEND_BUY_SUPPLIES(int p0, BOOL p1, BOOL p2, int p3) // 0xB48185C0CA67B16B
function MONEY._NETWORK_SPEND_BUY_SUPPLIES(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2631, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Int, p3)
  )
end

-- void _NETWORK_SPEND_BUY_ACID_LAB(Any p0, Any p1, Any p2, Any p3) // 0xF1E26A7924327152
function MONEY._NETWORK_SPEND_BUY_ACID_LAB(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2632, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void _NETWORK_SPEND_UPGRADE_ACID_LAB_EQUIPMENT(Any p0, Any p1, Any p2, Any p3) // 0x110EE9D486C23126
function MONEY._NETWORK_SPEND_UPGRADE_ACID_LAB_EQUIPMENT(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2633, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void _NETWORK_SPEND_UPGRADE_ACID_LAB_ARMOR(int p0, BOOL p1, BOOL p2, int p3) // 0xA7D541C9ACD63133
function MONEY._NETWORK_SPEND_UPGRADE_ACID_LAB_ARMOR(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2634, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Int, p3)
  )
end

-- void _NETWORK_SPEND_UPGRADE_ACID_LAB_SCOOP(int p0, BOOL p1, BOOL p2, int p3) // 0x2940558E05BCC2EC
function MONEY._NETWORK_SPEND_UPGRADE_ACID_LAB_SCOOP(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2635, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Int, p3)
  )
end

-- void _NETWORK_SPEND_UPGRADE_ACID_LAB_MINES(int p0, BOOL p1, BOOL p2, int p3) // 0x4B99AB08C92C54E4
function MONEY._NETWORK_SPEND_UPGRADE_ACID_LAB_MINES(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2636, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Int, p3)
  )
end

-- void _NETWORK_SPEND_RENAME_ACID_LAB(Any p0, Any p1, Any p2, Any p3) // 0x842B1C5AF61ACDE9
function MONEY._NETWORK_SPEND_RENAME_ACID_LAB(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2637, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void _NETWORK_SPEND_RENAME_ACID_PRODUCT(Any p0, Any p1, Any p2, Any p3) // 0x446798F7495DD7D8
function MONEY._NETWORK_SPEND_RENAME_ACID_PRODUCT(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 2638, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void _NETWORK_EARN_AWARD_JUGGALO_MISSION(Any p0, Any p1) // 0xDDF047577F1A02A7
function MONEY._NETWORK_EARN_AWARD_JUGGALO_MISSION(p0, p1)
  native.invoke(
    Type.Void, 2639, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_AWARD_ACID_LAB(Any p0, Any p1) // 0xD1A8165767AD2D23
function MONEY._NETWORK_EARN_AWARD_ACID_LAB(p0, p1)
  native.invoke(
    Type.Void, 2640, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_AWARD_DAILY_STASH(Any p0, Any p1) // 0xC30650FA74A19D02
function MONEY._NETWORK_EARN_AWARD_DAILY_STASH(p0, p1)
  native.invoke(
    Type.Void, 2641, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_AWARD_DEAD_DROP(Any p0, Any p1) // 0xD01EBAEA1F905EF6
function MONEY._NETWORK_EARN_AWARD_DEAD_DROP(p0, p1)
  native.invoke(
    Type.Void, 2642, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_AWARD_RANDOM_EVENT(Any p0, Any p1) // 0xBEAFBB1B98B7EF55
function MONEY._NETWORK_EARN_AWARD_RANDOM_EVENT(p0, p1)
  native.invoke(
    Type.Void, 2643, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_AWARD_TAXI(Any p0, Any p1) // 0xA914768AD35CD3A5
function MONEY._NETWORK_EARN_AWARD_TAXI(p0, p1)
  native.invoke(
    Type.Void, 2644, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_STREET_DEALER(Any p0, Any p1) // 0xA81017EE1324FDFE
function MONEY._NETWORK_EARN_STREET_DEALER(p0, p1)
  native.invoke(
    Type.Void, 2645, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_SELL_ACID(Any p0, Any p1) // 0x79B656937DF6DF5D
function MONEY._NETWORK_EARN_SELL_ACID(p0, p1)
  native.invoke(
    Type.Void, 2646, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_SETUP_PARTICIPATION_ACID_LAB(Any p0, Any p1) // 0xE3942D59E8A7F70D
function MONEY._NETWORK_EARN_SETUP_PARTICIPATION_ACID_LAB(p0, p1)
  native.invoke(
    Type.Void, 2647, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_SOURCE_PARTICIPATION_ACID_LAB(Any p0, Any p1) // 0x136F11B5DF1B304D
function MONEY._NETWORK_EARN_SOURCE_PARTICIPATION_ACID_LAB(p0, p1)
  native.invoke(
    Type.Void, 2648, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_SELL_PARTICIPATION_ACID_LAB(Any p0, Any p1) // 0xCA3EF9B09A8D76B4
function MONEY._NETWORK_EARN_SELL_PARTICIPATION_ACID_LAB(p0, p1)
  native.invoke(
    Type.Void, 2649, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_JUGGALO_STORY_MISSION(Any p0, Any p1) // 0xE01D10BA8CD53621
function MONEY._NETWORK_EARN_JUGGALO_STORY_MISSION(p0, p1)
  native.invoke(
    Type.Void, 2650, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_JUGGALO_STORY_MISSION_PARTICIPATION(Any p0, Any p1) // 0x40FF6CCCC476185C
function MONEY._NETWORK_EARN_JUGGALO_STORY_MISSION_PARTICIPATION(p0, p1)
  native.invoke(
    Type.Void, 2651, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_FOOLIGAN_JOB(Any p0, Any p1) // 0xCE4452AE85F5E252
--[[
JUGGALO_PHONE_MISSION...
--]]
function MONEY._NETWORK_EARN_FOOLIGAN_JOB(p0, p1)
  native.invoke(
    Type.Void, 2652, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_FOOLIGAN_JOB_PARTICIPATION(Any p0, Any p1) // 0xC376B92D0E060970
--[[
JUGGALO_PHONE_MISSION_PARTICIPATION...
--]]
function MONEY._NETWORK_EARN_FOOLIGAN_JOB_PARTICIPATION(p0, p1)
  native.invoke(
    Type.Void, 2653, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_TAXI_JOB(Any p0, Any p1) // 0x991E1588FAD9019D
function MONEY._NETWORK_EARN_TAXI_JOB(p0, p1)
  native.invoke(
    Type.Void, 2654, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_DAILY_STASH_HOUSE_COMPLETED(Any p0, Any p1) // 0xCABC9874AFA70D6D
function MONEY._NETWORK_EARN_DAILY_STASH_HOUSE_COMPLETED(p0, p1)
  native.invoke(
    Type.Void, 2655, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_DAILY_STASH_HOUSE_PARTICIPATION(Any p0, Any p1) // 0x9C0C6BD0F94CE391
function MONEY._NETWORK_EARN_DAILY_STASH_HOUSE_PARTICIPATION(p0, p1)
  native.invoke(
    Type.Void, 2656, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_EARN_AVENGER(int amount, int p1) // 0x55F006B9D4A46C1D
--[[
Used for SERVICE_EARN_AVENGER_OPERATIONS & SERVICE_EARN_AVENGER_OPS_BONUS
--]]
function MONEY._NETWORK_EARN_AVENGER(amount, p1)
  native.invoke(
    Type.Void, 2657, false,
    arg(Type.Int, amount),
    arg(Type.Int, p1)
  )
end

-- void _NETWORK_EARN_SMUGGLER_OPS(Any p0, Any p1, Any p2) // 0xDEA273D5F8A9661A
function MONEY._NETWORK_EARN_SMUGGLER_OPS(p0, p1, p2)
  native.invoke(
    Type.Void, 2658, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void _NETWORK_EARN_BONUS_OBJECTIVE(int amount, Any p1, Any p2) // 0xDCEF983C24191997
function MONEY._NETWORK_EARN_BONUS_OBJECTIVE(amount, p1, p2)
  native.invoke(
    Type.Void, 2659, false,
    arg(Type.Int, amount),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void _NETWORK_EARN_PROGRESS_HUB(Any p0, Any p1) // 0xF8332B06F0EECC9C
function MONEY._NETWORK_EARN_PROGRESS_HUB(p0, p1)
  native.invoke(
    Type.Void, 2660, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void _NETWORK_SPENT_AIR_FREIGHT(int hangarCargoSourcingPrice, BOOL fromBank, BOOL fromBankAndWallet, int cost, int warehouseId, int warehouseSlot) // 0x8C7E8D6F96C9E948
function MONEY._NETWORK_SPENT_AIR_FREIGHT(hangarCargoSourcingPrice, fromBank, fromBankAndWallet, cost, warehouseId, warehouseSlot)
  native.invoke(
    Type.Void, 2661, false,
    arg(Type.Int, hangarCargoSourcingPrice),
    arg(Type.Bool, fromBank),
    arg(Type.Bool, fromBankAndWallet),
    arg(Type.Int, cost),
    arg(Type.Int, warehouseId),
    arg(Type.Int, warehouseSlot)
  )
end

-- void _NETWORK_SPENT_SKIP_CARGO_SOURCE_SETUP(int amount, BOOL fromBank, BOOL fromBankAndWallet, int cost) // 0xED1B407BADA42CEC
function MONEY._NETWORK_SPENT_SKIP_CARGO_SOURCE_SETUP(amount, fromBank, fromBankAndWallet, cost)
  native.invoke(
    Type.Void, 2662, false,
    arg(Type.Int, amount),
    arg(Type.Bool, fromBank),
    arg(Type.Bool, fromBankAndWallet),
    arg(Type.Int, cost)
  )
end

-- void _NETWORK_SPENT_STEALTH_MODULE(int amount, BOOL fromBank, BOOL fromBankAndWallet, Hash p3) // 0x95CE79A6939C537A
--[[
Hash p3 = STEALTH_MODULE
--]]
function MONEY._NETWORK_SPENT_STEALTH_MODULE(amount, fromBank, fromBankAndWallet, p3)
  native.invoke(
    Type.Void, 2663, false,
    arg(Type.Int, amount),
    arg(Type.Bool, fromBank),
    arg(Type.Bool, fromBankAndWallet),
    arg(Type.Hash, p3)
  )
end

-- void _NETWORK_SPENT_MISSILE_JAMMER(int amount, BOOL fromBank, BOOL fromBankAndWallet, Hash p3) // 0xD687100F616163F4
--[[
Hash p3 = MISSILE_JAMMER
--]]
function MONEY._NETWORK_SPENT_MISSILE_JAMMER(amount, fromBank, fromBankAndWallet, p3)
  native.invoke(
    Type.Void, 2664, false,
    arg(Type.Int, amount),
    arg(Type.Bool, fromBank),
    arg(Type.Bool, fromBankAndWallet),
    arg(Type.Hash, p3)
  )
end

-- void _NETWORK_SPENT_GENERIC(int price, BOOL p1, BOOL p2, Hash stat, Hash spent, const char* p5, const char* p6, Any* data) // 0x2803B027479FB640
function MONEY._NETWORK_SPENT_GENERIC(price, p1, p2, stat, spent, p5, p6, data)
  native.invoke(
    Type.Void, 2665, false,
    arg(Type.Int, price),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Hash, stat),
    arg(Type.Hash, spent),
    arg(Type.String, p5),
    arg(Type.String, p6),
    ref(Type.Any, data)
  )
end

-- void _NETWORK_EARN_GENERIC(int amount, Hash earn, const char* p2, const char* p3, Any* data) // 0xBF7B5BB7ED890380
--[[
_NETWORK_EARN_G*
--]]
function MONEY._NETWORK_EARN_GENERIC(amount, earn, p2, p3, data)
  native.invoke(
    Type.Void, 2666, false,
    arg(Type.Int, amount),
    arg(Type.Hash, earn),
    arg(Type.String, p2),
    arg(Type.String, p3),
    ref(Type.Any, data)
  )
end

-- void _NETWORK_CLEAR_TRANSACTION_TELEMETRY_NONCE() // 0xE03B9F95556E48E9
function MONEY._NETWORK_CLEAR_TRANSACTION_TELEMETRY_NONCE()
  native.invoke(
    Type.Void, 2667, false
  )
end

-- int NETWORK_GET_VC_BANK_BALANCE() // 0x76EF28DA05EA395A
function MONEY.NETWORK_GET_VC_BANK_BALANCE()
  return native.invoke(
    Type.Int, 2668, false
  )
end

-- int NETWORK_GET_VC_WALLET_BALANCE(int characterSlot) // 0xA40F9C2623F6A8B5
function MONEY.NETWORK_GET_VC_WALLET_BALANCE(characterSlot)
  return native.invoke(
    Type.Int, 2669, false,
    arg(Type.Int, characterSlot)
  )
end

-- int NETWORK_GET_VC_BALANCE() // 0x5CBAD97E059E1B94
function MONEY.NETWORK_GET_VC_BALANCE()
  return native.invoke(
    Type.Int, 2670, false
  )
end

-- int NETWORK_GET_EVC_BALANCE() // 0x5D1E75F91C07DEE5
function MONEY.NETWORK_GET_EVC_BALANCE()
  return native.invoke(
    Type.Int, 2671, false
  )
end

-- int NETWORK_GET_PVC_BALANCE() // 0x4F54F3B6C202FB4E
function MONEY.NETWORK_GET_PVC_BALANCE()
  return native.invoke(
    Type.Int, 2672, false
  )
end

-- const char* NETWORK_GET_STRING_WALLET_BALANCE(int characterSlot) // 0xF9B10B529DCFB33B
function MONEY.NETWORK_GET_STRING_WALLET_BALANCE(characterSlot)
  return native.invoke(
    Type.String, 2673, false,
    arg(Type.Int, characterSlot)
  )
end

-- const char* NETWORK_GET_STRING_BANK_BALANCE() // 0xA6FA3979BED01B81
function MONEY.NETWORK_GET_STRING_BANK_BALANCE()
  return native.invoke(
    Type.String, 2674, false
  )
end

-- const char* NETWORK_GET_STRING_BANK_WALLET_BALANCE(int character) // 0x700AF71AE615E6DD
function MONEY.NETWORK_GET_STRING_BANK_WALLET_BALANCE(character)
  return native.invoke(
    Type.String, 2675, false,
    arg(Type.Int, character)
  )
end

-- BOOL NETWORK_GET_CAN_SPEND_FROM_WALLET(int amount, int characterSlot) // 0xED5AB8860415BABA
--[[
Returns true if wallet balance >= amount.
--]]
function MONEY.NETWORK_GET_CAN_SPEND_FROM_WALLET(amount, characterSlot)
  return native.invoke(
    Type.Bool, 2676, false,
    arg(Type.Int, amount),
    arg(Type.Int, characterSlot)
  )
end

-- BOOL NETWORK_GET_CAN_SPEND_FROM_BANK(int amount) // 0xA31FD6A0865B6D14
--[[
Returns true if bank balance >= amount.
--]]
function MONEY.NETWORK_GET_CAN_SPEND_FROM_BANK(amount)
  return native.invoke(
    Type.Bool, 2677, false,
    arg(Type.Int, amount)
  )
end

-- BOOL NETWORK_GET_CAN_SPEND_FROM_BANK_AND_WALLET(int amount, int characterSlot) // 0xDC18531D7019A535
--[[
Returns true if bank balance + wallet balance >= amount.
--]]
function MONEY.NETWORK_GET_CAN_SPEND_FROM_BANK_AND_WALLET(amount, characterSlot)
  return native.invoke(
    Type.Bool, 2678, false,
    arg(Type.Int, amount),
    arg(Type.Int, characterSlot)
  )
end

-- int NETWORK_GET_PVC_TRANSFER_BALANCE() // 0x13A8DE2FD77D04F3
--[[
Retturns the same value as NETWORK_GET_REMAINING_TRANSFER_BALANCE.
--]]
function MONEY.NETWORK_GET_PVC_TRANSFER_BALANCE()
  return native.invoke(
    Type.Int, 2679, false
  )
end

-- BOOL NETWORK_GET_CAN_TRANSFER_CASH(int amount) // 0x08E8EEADFD0DC4A0
--[[
Returns false if amount > wallet balance or daily transfer limit has been hit.
--]]
function MONEY.NETWORK_GET_CAN_TRANSFER_CASH(amount)
  return native.invoke(
    Type.Bool, 2680, false,
    arg(Type.Int, amount)
  )
end

-- BOOL NETWORK_CAN_RECEIVE_PLAYER_CASH(Any p0, Any p1, Any p2, Any p3) // 0x5D17BE59D2123284
function MONEY.NETWORK_CAN_RECEIVE_PLAYER_CASH(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 2681, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- int NETWORK_GET_REMAINING_TRANSFER_BALANCE() // 0xEA560AC9EEB1E19B
--[[
Returns the same value as NETWORK_GET_PVC_TRANSFER_BALANCE.
--]]
function MONEY.NETWORK_GET_REMAINING_TRANSFER_BALANCE()
  return native.invoke(
    Type.Int, 2682, false
  )
end

-- int WITHDRAW_VC(int amount) // 0xF70EFA14FE091429
--[[
Does nothing and always returns 0.
--]]
function MONEY.WITHDRAW_VC(amount)
  return native.invoke(
    Type.Int, 2683, false,
    arg(Type.Int, amount)
  )
end

-- BOOL DEPOSIT_VC(int amount) // 0xE260E0BB9CD995AC
--[[
Does nothing and always returns false.
--]]
function MONEY.DEPOSIT_VC(amount)
  return native.invoke(
    Type.Bool, 2684, false,
    arg(Type.Int, amount)
  )
end

-- BOOL HAS_VC_WITHDRAWAL_COMPLETED(Any p0) // 0xE154B48B68EF72BC
--[[
This function is hard-coded to always return 1.
--]]
function MONEY.HAS_VC_WITHDRAWAL_COMPLETED(p0)
  return native.invoke(
    Type.Bool, 2685, false,
    arg(Type.Any, p0)
  )
end

-- BOOL WAS_VC_WITHDRAWAL_SUCCESSFUL(Any p0) // 0x6FCF8DDEA146C45B
--[[
This function is hard-coded to always return 1.
--]]
function MONEY.WAS_VC_WITHDRAWAL_SUCCESSFUL(p0)
  return native.invoke(
    Type.Bool, 2686, false,
    arg(Type.Any, p0)
  )
end


