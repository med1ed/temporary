PLAYER = {}

-- Ped GET_PLAYER_PED(Player player) // 0x43A66C31C68491C0
--[[
Gets the ped for a specified player index.
--]]
function PLAYER.GET_PLAYER_PED(player)
  return native.invoke(
    Type.Ped, 4503, false,
    arg(Type.Player, player)
  )
end

-- Ped GET_PLAYER_PED_SCRIPT_INDEX(Player player) // 0x50FAC3A3E030A6E1
--[[
Does the same like PLAYER::GET_PLAYER_PED
--]]
function PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player)
  return native.invoke(
    Type.Ped, 4504, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_MODEL(Player player, Hash model) // 0x00A1CADD00108836
--[[
Set the model for a specific Player. Be aware that this will destroy the current Ped for the Player and create a new one, any reference to the old ped should be reset
Make sure to request the model first and wait until it has loaded.
--]]
function PLAYER.SET_PLAYER_MODEL(player, model)
  native.invoke(
    Type.Void, 4505, false,
    arg(Type.Player, player),
    arg(Type.Hash, model)
  )
end

-- void CHANGE_PLAYER_PED(Player player, Ped ped, BOOL p2, BOOL resetDamage) // 0x048189FAC643DEEE
function PLAYER.CHANGE_PLAYER_PED(player, ped, p2, resetDamage)
  native.invoke(
    Type.Void, 4506, false,
    arg(Type.Player, player),
    arg(Type.Ped, ped),
    arg(Type.Bool, p2),
    arg(Type.Bool, resetDamage)
  )
end

-- void GET_PLAYER_RGB_COLOUR(Player player, int* r, int* g, int* b) // 0xE902EF951DCE178F
function PLAYER.GET_PLAYER_RGB_COLOUR(player, r, g, b)
  native.invoke(
    Type.Void, 4507, false,
    arg(Type.Player, player),
    ref(Type.Int, r),
    ref(Type.Int, g),
    ref(Type.Int, b)
  )
end

-- int GET_NUMBER_OF_PLAYERS() // 0x407C7F91DDB46C16
--[[
Gets the number of players in the current session.
If not multiplayer, always returns 1.
--]]
function PLAYER.GET_NUMBER_OF_PLAYERS()
  return native.invoke(
    Type.Int, 4508, false
  )
end

-- int GET_PLAYER_TEAM(Player player) // 0x37039302F4E0A008
--[[
Gets the player's team.
Does nothing in singleplayer.
--]]
function PLAYER.GET_PLAYER_TEAM(player)
  return native.invoke(
    Type.Int, 4509, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_TEAM(Player player, int team) // 0x0299FA38396A4940
--[[
Set player team on deathmatch and last team standing..
--]]
function PLAYER.SET_PLAYER_TEAM(player, team)
  native.invoke(
    Type.Void, 4510, false,
    arg(Type.Player, player),
    arg(Type.Int, team)
  )
end

-- int GET_NUMBER_OF_PLAYERS_IN_TEAM(int team) // 0x1FC200409F10E6F1
function PLAYER.GET_NUMBER_OF_PLAYERS_IN_TEAM(team)
  return native.invoke(
    Type.Int, 4511, false,
    arg(Type.Int, team)
  )
end

-- const char* GET_PLAYER_NAME(Player player) // 0x6D0DE6A7B5DA71F8
function PLAYER.GET_PLAYER_NAME(player)
  return native.invoke(
    Type.String, 4512, false,
    arg(Type.Player, player)
  )
end

-- float GET_WANTED_LEVEL_RADIUS(Player player) // 0x085DEB493BE80812
--[[
Remnant from GTA IV. Does nothing in GTA V.
--]]
function PLAYER.GET_WANTED_LEVEL_RADIUS(player)
  return native.invoke(
    Type.Float, 4513, false,
    arg(Type.Player, player)
  )
end

-- Vector3 GET_PLAYER_WANTED_CENTRE_POSITION(Player player) // 0x0C92BA89F1AF26F8
function PLAYER.GET_PLAYER_WANTED_CENTRE_POSITION(player)
  return native.invoke(
    Type.Vector3, 4514, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_WANTED_CENTRE_POSITION(Player player, Vector3* position, BOOL p2, BOOL p3) // 0x520E541A97A13354
--[[
# Predominant call signatures
PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));

# Parameter value ranges
P0: PLAYER::PLAYER_ID()
P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1)
P2: Not set by any call
--]]
function PLAYER.SET_PLAYER_WANTED_CENTRE_POSITION(player, position, p2, p3)
  native.invoke(
    Type.Void, 4515, false,
    arg(Type.Player, player),
    ref(Type.Vector3, position),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- int GET_WANTED_LEVEL_THRESHOLD(int wantedLevel) // 0xFDD179EAF45B556C
--[[
Drft
--]]
function PLAYER.GET_WANTED_LEVEL_THRESHOLD(wantedLevel)
  return native.invoke(
    Type.Int, 4516, false,
    arg(Type.Int, wantedLevel)
  )
end

-- void SET_PLAYER_WANTED_LEVEL(Player player, int wantedLevel, BOOL disableNoMission) // 0x39FF19C64EF7DA5B
--[[
Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect

wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files

disableNoMission-  Disables When Off Mission- appears to always be false

--]]
function PLAYER.SET_PLAYER_WANTED_LEVEL(player, wantedLevel, disableNoMission)
  native.invoke(
    Type.Void, 4517, false,
    arg(Type.Player, player),
    arg(Type.Int, wantedLevel),
    arg(Type.Bool, disableNoMission)
  )
end

-- void SET_PLAYER_WANTED_LEVEL_NO_DROP(Player player, int wantedLevel, BOOL p2) // 0x340E61DE7F471565
--[[
p2 is always false in R* scripts
--]]
function PLAYER.SET_PLAYER_WANTED_LEVEL_NO_DROP(player, wantedLevel, p2)
  native.invoke(
    Type.Void, 4518, false,
    arg(Type.Player, player),
    arg(Type.Int, wantedLevel),
    arg(Type.Bool, p2)
  )
end

-- void SET_PLAYER_WANTED_LEVEL_NOW(Player player, BOOL p1) // 0xE0A7D1E497FFCD6F
--[[
Forces any pending wanted level to be applied to the specified player immediately.

Call SET_PLAYER_WANTED_LEVEL with the desired wanted level, followed by SET_PLAYER_WANTED_LEVEL_NOW.

Second parameter is unknown (always false).
--]]
function PLAYER.SET_PLAYER_WANTED_LEVEL_NOW(player, p1)
  native.invoke(
    Type.Void, 4519, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1)
  )
end

-- BOOL ARE_PLAYER_FLASHING_STARS_ABOUT_TO_DROP(Player player) // 0xAFAF86043E5874E9
function PLAYER.ARE_PLAYER_FLASHING_STARS_ABOUT_TO_DROP(player)
  return native.invoke(
    Type.Bool, 4520, false,
    arg(Type.Player, player)
  )
end

-- BOOL ARE_PLAYER_STARS_GREYED_OUT(Player player) // 0x0A6EB355EE14A2DB
function PLAYER.ARE_PLAYER_STARS_GREYED_OUT(player)
  return native.invoke(
    Type.Bool, 4521, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_WANTED_AND_HAS_BEEN_SEEN_BY_COPS(Player player) // 0x7E07C78925D5FD96
function PLAYER.IS_WANTED_AND_HAS_BEEN_SEEN_BY_COPS(player)
  return native.invoke(
    Type.Bool, 4522, false,
    arg(Type.Player, player)
  )
end

-- void SET_DISPATCH_COPS_FOR_PLAYER(Player player, BOOL toggle) // 0xDB172424876553F4
function PLAYER.SET_DISPATCH_COPS_FOR_PLAYER(player, toggle)
  native.invoke(
    Type.Void, 4523, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PLAYER_WANTED_LEVEL_GREATER(Player player, int wantedLevel) // 0x238DB2A2C23EE9EF
function PLAYER.IS_PLAYER_WANTED_LEVEL_GREATER(player, wantedLevel)
  return native.invoke(
    Type.Bool, 4524, false,
    arg(Type.Player, player),
    arg(Type.Int, wantedLevel)
  )
end

-- void CLEAR_PLAYER_WANTED_LEVEL(Player player) // 0xB302540597885499
--[[
This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);

PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible. 
--]]
function PLAYER.CLEAR_PLAYER_WANTED_LEVEL(player)
  native.invoke(
    Type.Void, 4525, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_DEAD(Player player) // 0x424D4687FA1E5652
function PLAYER.IS_PLAYER_DEAD(player)
  return native.invoke(
    Type.Bool, 4526, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_PRESSING_HORN(Player player) // 0xFA1E2BF8B10598F9
function PLAYER.IS_PLAYER_PRESSING_HORN(player)
  return native.invoke(
    Type.Bool, 4527, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_CONTROL(Player player, BOOL bHasControl, int flags) // 0x8D32347D6D4C40A2
--[[
Flags:
SPC_AMBIENT_SCRIPT = (1 << 1),
SPC_CLEAR_TASKS = (1 << 2),
SPC_REMOVE_FIRES = (1 << 3),
SPC_REMOVE_EXPLOSIONS = (1 << 4),
SPC_REMOVE_PROJECTILES = (1 << 5),
SPC_DEACTIVATE_GADGETS = (1 << 6),
SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),
SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),
SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),
SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),
SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),
SPC_ALLOW_PAD_SHAKE = (1 << 12)

See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
--]]
function PLAYER.SET_PLAYER_CONTROL(player, bHasControl, flags)
  native.invoke(
    Type.Void, 4528, false,
    arg(Type.Player, player),
    arg(Type.Bool, bHasControl),
    arg(Type.Int, flags)
  )
end

-- int GET_PLAYER_WANTED_LEVEL(Player player) // 0xE28E54788CE8F12D
function PLAYER.GET_PLAYER_WANTED_LEVEL(player)
  return native.invoke(
    Type.Int, 4529, false,
    arg(Type.Player, player)
  )
end

-- void SET_MAX_WANTED_LEVEL(int maxWantedLevel) // 0xAA5F02DB48D704B9
function PLAYER.SET_MAX_WANTED_LEVEL(maxWantedLevel)
  native.invoke(
    Type.Void, 4530, false,
    arg(Type.Int, maxWantedLevel)
  )
end

-- void SET_POLICE_RADAR_BLIPS(BOOL toggle) // 0x43286D561B72B8BF
--[[
If toggle is set to false:
 The police won't be shown on the (mini)map

If toggle is set to true:
 The police will be shown on the (mini)map
--]]
function PLAYER.SET_POLICE_RADAR_BLIPS(toggle)
  native.invoke(
    Type.Void, 4531, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_POLICE_IGNORE_PLAYER(Player player, BOOL toggle) // 0x32C62AA929C2DA6A
--[[
The player will be ignored by the police if toggle is set to true
--]]
function PLAYER.SET_POLICE_IGNORE_PLAYER(player, toggle)
  native.invoke(
    Type.Void, 4532, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_PLAYER_PLAYING(Player player) // 0x5E9564D8246B909A
--[[
Checks whether the specified player has a Ped, the Ped is not dead, is not injured and is not arrested.
--]]
function PLAYER.IS_PLAYER_PLAYING(player)
  return native.invoke(
    Type.Bool, 4533, false,
    arg(Type.Player, player)
  )
end

-- void SET_EVERYONE_IGNORE_PLAYER(Player player, BOOL toggle) // 0x8EEDA153AD141BA4
function PLAYER.SET_EVERYONE_IGNORE_PLAYER(player, toggle)
  native.invoke(
    Type.Void, 4534, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ALL_RANDOM_PEDS_FLEE(Player player, BOOL toggle) // 0x056E0FE8534C2949
function PLAYER.SET_ALL_RANDOM_PEDS_FLEE(player, toggle)
  native.invoke(
    Type.Void, 4535, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME(Player player) // 0x471D2FF42A94B4F2
function PLAYER.SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME(player)
  native.invoke(
    Type.Void, 4536, false,
    arg(Type.Player, player)
  )
end

-- void SET_ALL_NEUTRAL_RANDOM_PEDS_FLEE(Player player, BOOL toggle) // 0xDE45D1A1EF45EE61
function PLAYER.SET_ALL_NEUTRAL_RANDOM_PEDS_FLEE(player, toggle)
  native.invoke(
    Type.Void, 4537, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_ALL_NEUTRAL_RANDOM_PEDS_FLEE_THIS_FRAME(Player player) // 0xC3376F42B1FACCC6
--[[
- This is called after SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME

--]]
function PLAYER.SET_ALL_NEUTRAL_RANDOM_PEDS_FLEE_THIS_FRAME(player)
  native.invoke(
    Type.Void, 4538, false,
    arg(Type.Player, player)
  )
end

-- void SET_LAW_PEDS_CAN_ATTACK_NON_WANTED_PLAYER_THIS_FRAME(Player player) // 0xFAC75988A7D078D3
function PLAYER.SET_LAW_PEDS_CAN_ATTACK_NON_WANTED_PLAYER_THIS_FRAME(player)
  native.invoke(
    Type.Void, 4539, false,
    arg(Type.Player, player)
  )
end

-- void SET_IGNORE_LOW_PRIORITY_SHOCKING_EVENTS(Player player, BOOL toggle) // 0x596976B02B6B5700
function PLAYER.SET_IGNORE_LOW_PRIORITY_SHOCKING_EVENTS(player, toggle)
  native.invoke(
    Type.Void, 4540, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_WANTED_LEVEL_MULTIPLIER(float multiplier) // 0x020E5F00CDA207BA
function PLAYER.SET_WANTED_LEVEL_MULTIPLIER(multiplier)
  native.invoke(
    Type.Void, 4541, false,
    arg(Type.Float, multiplier)
  )
end

-- void SET_WANTED_LEVEL_DIFFICULTY(Player player, float difficulty) // 0x9B0BB33B04405E7A
--[[
Max value is 1.0
--]]
function PLAYER.SET_WANTED_LEVEL_DIFFICULTY(player, difficulty)
  native.invoke(
    Type.Void, 4542, false,
    arg(Type.Player, player),
    arg(Type.Float, difficulty)
  )
end

-- void RESET_WANTED_LEVEL_DIFFICULTY(Player player) // 0xB9D0DD990DC141DD
function PLAYER.RESET_WANTED_LEVEL_DIFFICULTY(player)
  native.invoke(
    Type.Void, 4543, false,
    arg(Type.Player, player)
  )
end

-- int GET_WANTED_LEVEL_TIME_TO_ESCAPE() // 0xA72200F51875FEA4
function PLAYER.GET_WANTED_LEVEL_TIME_TO_ESCAPE()
  return native.invoke(
    Type.Int, 4544, false
  )
end

-- void SET_WANTED_LEVEL_HIDDEN_ESCAPE_TIME(Player player, int wantedLevel, int lossTime) // 0x49B856B1360C47C7
function PLAYER.SET_WANTED_LEVEL_HIDDEN_ESCAPE_TIME(player, wantedLevel, lossTime)
  native.invoke(
    Type.Void, 4545, false,
    arg(Type.Player, player),
    arg(Type.Int, wantedLevel),
    arg(Type.Int, lossTime)
  )
end

-- void RESET_WANTED_LEVEL_HIDDEN_ESCAPE_TIME(Player player) // 0x823EC8E82BA45986
function PLAYER.RESET_WANTED_LEVEL_HIDDEN_ESCAPE_TIME(player)
  native.invoke(
    Type.Void, 4546, false,
    arg(Type.Player, player)
  )
end

-- void START_FIRING_AMNESTY(int duration) // 0xBF9BD71691857E48
function PLAYER.START_FIRING_AMNESTY(duration)
  native.invoke(
    Type.Void, 4547, false,
    arg(Type.Int, duration)
  )
end

-- void REPORT_CRIME(Player player, int crimeType, int wantedLvlThresh) // 0xE9B09589827545E7
--[[
PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));

From am_armybase.ysc.c4:

PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));

-----

This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: https://pastebin.com/09qSMsN7 

-----
crimeType:
1: Firearms possession
2: Person running a red light ("5-0-5")
3: Reckless driver
4: Speeding vehicle (a "5-10")
5: Traffic violation (a "5-0-5")
6: Motorcycle rider without a helmet
7: Vehicle theft (a "5-0-3")
8: Grand Theft Auto
9: ???
10: ???
11: Assault on a civilian (a "2-40")
12: Assault on an officer
13: Assault with a deadly weapon (a "2-45")
14: Officer shot (a "2-45")
15: Pedestrian struck by a vehicle
16: Officer struck by a vehicle
17: Helicopter down (an "AC"?)
18: Civilian on fire (a "2-40")
19: Officer set on fire (a "10-99")
20: Car on fire
21: Air unit down (an "AC"?)
22: An explosion (a "9-96")
23: A stabbing (a "2-45") (also something else I couldn't understand)
24: Officer stabbed (also something else I couldn't understand)
25: Attack on a vehicle ("MDV"?)
26: Damage to property
27: Suspect threatening officer with a firearm
28: Shots fired
29: ???
30: ???
31: ???
32: ???
33: ???
34: A "2-45"
35: ???
36: A "9-25"
37: ???
38: ???
39: ???
40: ???
41: ???
42: ???
43: Possible disturbance
44: Civilian in need of assistance
45: ???
46: ???
--]]
function PLAYER.REPORT_CRIME(player, crimeType, wantedLvlThresh)
  native.invoke(
    Type.Void, 4548, false,
    arg(Type.Player, player),
    arg(Type.Int, crimeType),
    arg(Type.Int, wantedLvlThresh)
  )
end

-- void SUPPRESS_CRIME_THIS_FRAME(Player player, int crimeType) // 0x9A987297ED8BD838
--[[
crimeType: see REPORT_CRIME
--]]
function PLAYER.SUPPRESS_CRIME_THIS_FRAME(player, crimeType)
  native.invoke(
    Type.Void, 4549, false,
    arg(Type.Player, player),
    arg(Type.Int, crimeType)
  )
end

-- void UPDATE_WANTED_POSITION_THIS_FRAME(Player player) // 0xBC9490CA15AEA8FB
--[[
This native is used in both singleplayer and multiplayer scripts.

Always used like this in scripts
PLAYER::UPDATE_WANTED_POSITION_THIS_FRAME(PLAYER::PLAYER_ID());
--]]
function PLAYER.UPDATE_WANTED_POSITION_THIS_FRAME(player)
  native.invoke(
    Type.Void, 4550, false,
    arg(Type.Player, player)
  )
end

-- void SUPPRESS_LOSING_WANTED_LEVEL_IF_HIDDEN_THIS_FRAME(Player player) // 0x4669B3ED80F24B4E
--[[
This has been found in use in the decompiled files.
--]]
function PLAYER.SUPPRESS_LOSING_WANTED_LEVEL_IF_HIDDEN_THIS_FRAME(player)
  native.invoke(
    Type.Void, 4551, false,
    arg(Type.Player, player)
  )
end

-- void ALLOW_EVASION_HUD_IF_DISABLING_HIDDEN_EVASION_THIS_FRAME(Player player, Any p1) // 0x2F41A3BAE005E5FA
function PLAYER.ALLOW_EVASION_HUD_IF_DISABLING_HIDDEN_EVASION_THIS_FRAME(player, p1)
  native.invoke(
    Type.Void, 4552, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- void FORCE_START_HIDDEN_EVASION(Player player) // 0xAD73CE5A09E42D12
--[[
This has been found in use in the decompiled files.
--]]
function PLAYER.FORCE_START_HIDDEN_EVASION(player)
  native.invoke(
    Type.Void, 4553, false,
    arg(Type.Player, player)
  )
end

-- void SUPPRESS_WITNESSES_CALLING_POLICE_THIS_FRAME(Player player) // 0x36F1B38855F2A8DF
function PLAYER.SUPPRESS_WITNESSES_CALLING_POLICE_THIS_FRAME(player)
  native.invoke(
    Type.Void, 4554, false,
    arg(Type.Player, player)
  )
end

-- void REPORT_POLICE_SPOTTED_PLAYER(Player player) // 0xDC64D2C53493ED12
function PLAYER.REPORT_POLICE_SPOTTED_PLAYER(player)
  native.invoke(
    Type.Void, 4555, false,
    arg(Type.Player, player)
  )
end

-- void SET_LAW_RESPONSE_DELAY_OVERRIDE(float p0) // 0xB45EFF719D8427A6
--[[
PLAYER::SET_LAW_RESPONSE_DELAY_OVERRIDE(rPtr((&l_122) + 71)); // Found in decompilation

***

In "am_hold_up.ysc" used once:

l_8d._f47 = MISC::GET_RANDOM_FLOAT_IN_RANGE(18.0, 28.0);
PLAYER::SET_LAW_RESPONSE_DELAY_OVERRIDE((l_8d._f47));
--]]
function PLAYER.SET_LAW_RESPONSE_DELAY_OVERRIDE(p0)
  native.invoke(
    Type.Void, 4556, false,
    arg(Type.Float, p0)
  )
end

-- void RESET_LAW_RESPONSE_DELAY_OVERRIDE() // 0x0032A6DBA562C518
--[[
2 matches in 1 script - am_hold_up

Used in multiplayer scripts?
--]]
function PLAYER.RESET_LAW_RESPONSE_DELAY_OVERRIDE()
  native.invoke(
    Type.Void, 4557, false
  )
end

-- BOOL CAN_PLAYER_START_MISSION(Player player) // 0xDE7465A27D403C06
function PLAYER.CAN_PLAYER_START_MISSION(player)
  return native.invoke(
    Type.Bool, 4558, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_READY_FOR_CUTSCENE(Player player) // 0x908CBECC2CAA3690
function PLAYER.IS_PLAYER_READY_FOR_CUTSCENE(player)
  return native.invoke(
    Type.Bool, 4559, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_TARGETTING_ENTITY(Player player, Entity entity) // 0x7912F7FC4F6264B6
function PLAYER.IS_PLAYER_TARGETTING_ENTITY(player, entity)
  return native.invoke(
    Type.Bool, 4560, false,
    arg(Type.Player, player),
    arg(Type.Entity, entity)
  )
end

-- BOOL GET_PLAYER_TARGET_ENTITY(Player player, Entity* entity) // 0x13EDE1A5DBF797C9
--[[
Assigns the handle of locked-on melee target to *entity that you pass it.
Returns false if no entity found.
--]]
function PLAYER.GET_PLAYER_TARGET_ENTITY(player, entity)
  return native.invoke(
    Type.Bool, 4561, false,
    arg(Type.Player, player),
    ref(Type.Entity, entity)
  )
end

-- BOOL IS_PLAYER_FREE_AIMING(Player player) // 0x2E397FD2ECD37C87
--[[
Gets a value indicating whether the specified player is currently aiming freely.
--]]
function PLAYER.IS_PLAYER_FREE_AIMING(player)
  return native.invoke(
    Type.Bool, 4562, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_FREE_AIMING_AT_ENTITY(Player player, Entity entity) // 0x3C06B5C839B38F7B
--[[
Gets a value indicating whether the specified player is currently aiming freely at the specified entity.
--]]
function PLAYER.IS_PLAYER_FREE_AIMING_AT_ENTITY(player, entity)
  return native.invoke(
    Type.Bool, 4563, false,
    arg(Type.Player, player),
    arg(Type.Entity, entity)
  )
end

-- BOOL GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(Player player, Entity* entity) // 0x2975C866E6713290
--[[
Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it.
Returns false if no entity found.
--]]
function PLAYER.GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(player, entity)
  return native.invoke(
    Type.Bool, 4564, false,
    arg(Type.Player, player),
    ref(Type.Entity, entity)
  )
end

-- void SET_PLAYER_LOCKON_RANGE_OVERRIDE(Player player, float range) // 0x29961D490E5814FD
--[[
Affects the range of auto aim target.
--]]
function PLAYER.SET_PLAYER_LOCKON_RANGE_OVERRIDE(player, range)
  native.invoke(
    Type.Void, 4565, false,
    arg(Type.Player, player),
    arg(Type.Float, range)
  )
end

-- void SET_PLAYER_CAN_DO_DRIVE_BY(Player player, BOOL toggle) // 0x6E8834B52EC20C77
--[[
Set whether this player should be able to do drive-bys.

"A drive-by is when a ped is aiming/shooting from vehicle. This includes middle finger taunts. By setting this value to false I confirm the player is unable to do all that. Tested on tick."

--]]
function PLAYER.SET_PLAYER_CAN_DO_DRIVE_BY(player, toggle)
  native.invoke(
    Type.Void, 4566, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_CAN_BE_HASSLED_BY_GANGS(Player player, BOOL toggle) // 0xD5E460AD7020A246
--[[
Sets whether this player can be hassled by gangs.
--]]
function PLAYER.SET_PLAYER_CAN_BE_HASSLED_BY_GANGS(player, toggle)
  native.invoke(
    Type.Void, 4567, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_CAN_USE_COVER(Player player, BOOL toggle) // 0xD465A8599DFF6814
--[[
Sets whether this player can take cover.
--]]
function PLAYER.SET_PLAYER_CAN_USE_COVER(player, toggle)
  native.invoke(
    Type.Void, 4568, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- int GET_MAX_WANTED_LEVEL() // 0x462E0DB9B137DC5F
--[[
Gets the maximum wanted level the player can get.
Ranges from 0 to 5.
--]]
function PLAYER.GET_MAX_WANTED_LEVEL()
  return native.invoke(
    Type.Int, 4569, false
  )
end

-- BOOL IS_PLAYER_TARGETTING_ANYTHING(Player player) // 0x78CFE51896B6B8A4
function PLAYER.IS_PLAYER_TARGETTING_ANYTHING(player)
  return native.invoke(
    Type.Bool, 4570, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_SPRINT(Player player, BOOL toggle) // 0xA01B8075D8B92DF4
function PLAYER.SET_PLAYER_SPRINT(player, toggle)
  native.invoke(
    Type.Void, 4571, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void RESET_PLAYER_STAMINA(Player player) // 0xA6F312FCCE9C1DFE
function PLAYER.RESET_PLAYER_STAMINA(player)
  native.invoke(
    Type.Void, 4572, false,
    arg(Type.Player, player)
  )
end

-- void RESTORE_PLAYER_STAMINA(Player player, float p1) // 0xA352C1B864CAFD33
function PLAYER.RESTORE_PLAYER_STAMINA(player, p1)
  native.invoke(
    Type.Void, 4573, false,
    arg(Type.Player, player),
    arg(Type.Float, p1)
  )
end

-- float GET_PLAYER_SPRINT_STAMINA_REMAINING(Player player) // 0x3F9F16F8E65A7ED7
function PLAYER.GET_PLAYER_SPRINT_STAMINA_REMAINING(player)
  return native.invoke(
    Type.Float, 4574, false,
    arg(Type.Player, player)
  )
end

-- float GET_PLAYER_SPRINT_TIME_REMAINING(Player player) // 0x1885BC9B108B4C99
function PLAYER.GET_PLAYER_SPRINT_TIME_REMAINING(player)
  return native.invoke(
    Type.Float, 4575, false,
    arg(Type.Player, player)
  )
end

-- float GET_PLAYER_UNDERWATER_TIME_REMAINING(Player player) // 0xA1FCF8E6AF40B731
function PLAYER.GET_PLAYER_UNDERWATER_TIME_REMAINING(player)
  return native.invoke(
    Type.Float, 4576, false,
    arg(Type.Player, player)
  )
end

-- float SET_PLAYER_UNDERWATER_BREATH_PERCENT_REMAINING(Player player, float time) // 0xA0D3E4F7AAFB7E78
function PLAYER.SET_PLAYER_UNDERWATER_BREATH_PERCENT_REMAINING(player, time)
  return native.invoke(
    Type.Float, 4577, false,
    arg(Type.Player, player),
    arg(Type.Float, time)
  )
end

-- int GET_PLAYER_GROUP(Player player) // 0x0D127585F77030AF
--[[
Returns the group ID the player is member of.
--]]
function PLAYER.GET_PLAYER_GROUP(player)
  return native.invoke(
    Type.Int, 4578, false,
    arg(Type.Player, player)
  )
end

-- int GET_PLAYER_MAX_ARMOUR(Player player) // 0x92659B4CE1863CB3
function PLAYER.GET_PLAYER_MAX_ARMOUR(player)
  return native.invoke(
    Type.Int, 4579, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_CONTROL_ON(Player player) // 0x49C32D60007AFA47
--[[
Can the player control himself, used to disable controls for player for things like a cutscene.

---

You can't disable controls with this, use SET_PLAYER_CONTROL(...) for this. 
--]]
function PLAYER.IS_PLAYER_CONTROL_ON(player)
  return native.invoke(
    Type.Bool, 4580, false,
    arg(Type.Player, player)
  )
end

-- BOOL GET_ARE_CAMERA_CONTROLS_DISABLED() // 0x7C814D2FB49F40C0
--[[
Returns true when the player is not able to control the cam i.e. when running a benchmark test, switching the player or viewing a cutscene.

Note: I am not 100% sure if the native actually checks if the cam control is disabled but it seems promising.
--]]
function PLAYER.GET_ARE_CAMERA_CONTROLS_DISABLED()
  return native.invoke(
    Type.Bool, 4581, false
  )
end

-- BOOL IS_PLAYER_SCRIPT_CONTROL_ON(Player player) // 0x8A876A65283DD7D7
function PLAYER.IS_PLAYER_SCRIPT_CONTROL_ON(player)
  return native.invoke(
    Type.Bool, 4582, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_CLIMBING(Player player) // 0x95E8F73DC65EFB9C
--[[
Returns TRUE if the player ('s ped) is climbing at the moment.
--]]
function PLAYER.IS_PLAYER_CLIMBING(player)
  return native.invoke(
    Type.Bool, 4583, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_BEING_ARRESTED(Player player, BOOL atArresting) // 0x388A47C51ABDAC8E
--[[
Return true while player is being arrested / busted.

If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)

If atArresting is set to 0, this function will return 1 only when the busted screen is shown.
--]]
function PLAYER.IS_PLAYER_BEING_ARRESTED(player, atArresting)
  return native.invoke(
    Type.Bool, 4584, false,
    arg(Type.Player, player),
    arg(Type.Bool, atArresting)
  )
end

-- void RESET_PLAYER_ARREST_STATE(Player player) // 0x2D03E13C460760D6
function PLAYER.RESET_PLAYER_ARREST_STATE(player)
  native.invoke(
    Type.Void, 4585, false,
    arg(Type.Player, player)
  )
end

-- Vehicle GET_PLAYERS_LAST_VEHICLE() // 0xB6997A7EB3F5C8C0
--[[
Alternative: GET_VEHICLE_PED_IS_IN(PLAYER_PED_ID(), 1);
--]]
function PLAYER.GET_PLAYERS_LAST_VEHICLE()
  return native.invoke(
    Type.Vehicle, 4586, false
  )
end

-- Player GET_PLAYER_INDEX() // 0xA5EDC40EF369B48D
--[[
Returns the same as PLAYER_ID and NETWORK_PLAYER_ID_TO_INT
--]]
function PLAYER.GET_PLAYER_INDEX()
  return native.invoke(
    Type.Player, 4587, false
  )
end

-- Player INT_TO_PLAYERINDEX(int value) // 0x41BD2A6B006AF756
--[[
Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
--]]
function PLAYER.INT_TO_PLAYERINDEX(value)
  return native.invoke(
    Type.Player, 4588, false,
    arg(Type.Int, value)
  )
end

-- int INT_TO_PARTICIPANTINDEX(int value) // 0x9EC6603812C24710
--[[
Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
--------------------------------------------------------
if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::INT_TO_PARTICIPANTINDEX(i)))

--]]
function PLAYER.INT_TO_PARTICIPANTINDEX(value)
  return native.invoke(
    Type.Int, 4589, false,
    arg(Type.Int, value)
  )
end

-- int GET_TIME_SINCE_PLAYER_HIT_VEHICLE(Player player) // 0x5D35ECF3A81A0EE0
function PLAYER.GET_TIME_SINCE_PLAYER_HIT_VEHICLE(player)
  return native.invoke(
    Type.Int, 4590, false,
    arg(Type.Player, player)
  )
end

-- int GET_TIME_SINCE_PLAYER_HIT_PED(Player player) // 0xE36A25322DC35F42
function PLAYER.GET_TIME_SINCE_PLAYER_HIT_PED(player)
  return native.invoke(
    Type.Int, 4591, false,
    arg(Type.Player, player)
  )
end

-- int GET_TIME_SINCE_PLAYER_DROVE_ON_PAVEMENT(Player player) // 0xD559D2BE9E37853B
function PLAYER.GET_TIME_SINCE_PLAYER_DROVE_ON_PAVEMENT(player)
  return native.invoke(
    Type.Int, 4592, false,
    arg(Type.Player, player)
  )
end

-- int GET_TIME_SINCE_PLAYER_DROVE_AGAINST_TRAFFIC(Player player) // 0xDB89591E290D9182
function PLAYER.GET_TIME_SINCE_PLAYER_DROVE_AGAINST_TRAFFIC(player)
  return native.invoke(
    Type.Int, 4593, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_FREE_FOR_AMBIENT_TASK(Player player) // 0xDCCFD3F106C36AB4
function PLAYER.IS_PLAYER_FREE_FOR_AMBIENT_TASK(player)
  return native.invoke(
    Type.Bool, 4594, false,
    arg(Type.Player, player)
  )
end

-- Player PLAYER_ID() // 0x4F8644AF03D0E0D6
--[[
This returns YOUR 'identity' as a Player type.

Always returns 0 in story mode.
--]]
function PLAYER.PLAYER_ID()
  return native.invoke(
    Type.Player, 4595, false
  )
end

-- Ped PLAYER_PED_ID() // 0xD80958FC74E988A6
--[[
Returns current player ped
--]]
function PLAYER.PLAYER_PED_ID()
  return native.invoke(
    Type.Ped, 4596, false
  )
end

-- int NETWORK_PLAYER_ID_TO_INT() // 0xEE68096F9F37341E
--[[
Does exactly the same thing as PLAYER_ID()
--]]
function PLAYER.NETWORK_PLAYER_ID_TO_INT()
  return native.invoke(
    Type.Int, 4597, false
  )
end

-- BOOL HAS_FORCE_CLEANUP_OCCURRED(int cleanupFlags) // 0xC968670BFACE42D9
function PLAYER.HAS_FORCE_CLEANUP_OCCURRED(cleanupFlags)
  return native.invoke(
    Type.Bool, 4598, false,
    arg(Type.Int, cleanupFlags)
  )
end

-- void FORCE_CLEANUP(int cleanupFlags) // 0xBC8983F38F78ED51
--[[
used with 1,2,8,64,128 in the scripts
--]]
function PLAYER.FORCE_CLEANUP(cleanupFlags)
  native.invoke(
    Type.Void, 4599, false,
    arg(Type.Int, cleanupFlags)
  )
end

-- void FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME(const char* name, int cleanupFlags) // 0x4C68DDDDF0097317
--[[
PLAYER::FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME("pb_prostitute", 1); // Found in decompilation
--]]
function PLAYER.FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME(name, cleanupFlags)
  native.invoke(
    Type.Void, 4600, false,
    arg(Type.String, name),
    arg(Type.Int, cleanupFlags)
  )
end

-- void FORCE_CLEANUP_FOR_THREAD_WITH_THIS_ID(int id, int cleanupFlags) // 0xF745B37630DF176B
function PLAYER.FORCE_CLEANUP_FOR_THREAD_WITH_THIS_ID(id, cleanupFlags)
  native.invoke(
    Type.Void, 4601, false,
    arg(Type.Int, id),
    arg(Type.Int, cleanupFlags)
  )
end

-- int GET_CAUSE_OF_MOST_RECENT_FORCE_CLEANUP() // 0x9A41CF4674A12272
function PLAYER.GET_CAUSE_OF_MOST_RECENT_FORCE_CLEANUP()
  return native.invoke(
    Type.Int, 4602, false
  )
end

-- void SET_PLAYER_MAY_ONLY_ENTER_THIS_VEHICLE(Player player, Vehicle vehicle) // 0x8026FF78F208978A
function PLAYER.SET_PLAYER_MAY_ONLY_ENTER_THIS_VEHICLE(player, vehicle)
  native.invoke(
    Type.Void, 4603, false,
    arg(Type.Player, player),
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_PLAYER_MAY_NOT_ENTER_ANY_VEHICLE(Player player) // 0x1DE37BBF9E9CC14A
function PLAYER.SET_PLAYER_MAY_NOT_ENTER_ANY_VEHICLE(player)
  native.invoke(
    Type.Void, 4604, false,
    arg(Type.Player, player)
  )
end

-- BOOL GIVE_ACHIEVEMENT_TO_PLAYER(int achievementId) // 0xBEC7076D64130195
--[[
1 - Welcome to Los Santos
2 - A Friendship Resurrected
3 - A Fair Day's Pay
4 - The Moment of Truth
5 - To Live or Die in Los Santos
6 - Diamond Hard
7 - Subversive
8 - Blitzed
9 - Small Town, Big Job
10 - The Government Gimps
11 - The Big One!
12 - Solid Gold, Baby!
13 - Career Criminal
14 - San Andreas Sightseer
15 - All's Fare in Love and War
16 - TP Industries Arms Race
17 - Multi-Disciplined
18 - From Beyond the Stars
19 - A Mystery, Solved
20 - Waste Management
21 - Red Mist
22 - Show Off
23 - Kifflom!
24 - Three Man Army
25 - Out of Your Depth
26 - Altruist Acolyte
27 - A Lot of Cheddar
28 - Trading Pure Alpha
29 - Pimp My Sidearm
30 - Wanted: Alive Or Alive
31 - Los Santos Customs
32 - Close Shave
33 - Off the Plane
34 - Three-Bit Gangster
35 - Making Moves
36 - Above the Law
37 - Numero Uno
38 - The Midnight Club
39 - Unnatural Selection
40 - Backseat Driver
41 - Run Like The Wind
42 - Clean Sweep
43 - Decorated
44 - Stick Up Kid
45 - Enjoy Your Stay
46 - Crew Cut
47 - Full Refund
48 - Dialling Digits
49 - American Dream
50 - A New Perspective
51 - Be Prepared
52 - In the Name of Science
53 - Dead Presidents
54 - Parole Day
55 - Shot Caller
56 - Four Way
57 - Live a Little
58 - Can't Touch This
59 - Mastermind
60 - Vinewood Visionary
61 - Majestic
62 - Humans of Los Santos
63 - First Time Director
64 - Animal Lover
65 - Ensemble Piece
66 - Cult Movie
67 - Location Scout
68 - Method Actor
69 - Cryptozoologist
70 - Getting Started
71 - The Data Breaches
72 - The Bogdan Problem
73 - The Doomsday Scenario
74 - A World Worth Saving
75 - Orbital Obliteration
76 - Elitist
77 - Masterminds
--]]
function PLAYER.GIVE_ACHIEVEMENT_TO_PLAYER(achievementId)
  return native.invoke(
    Type.Bool, 4605, false,
    arg(Type.Int, achievementId)
  )
end

-- BOOL SET_ACHIEVEMENT_PROGRESS(int achievementId, int progress) // 0xC2AFFFDABBDC2C5C
--[[
For Steam.
Does nothing and always returns false in the retail version of the game.
--]]
function PLAYER.SET_ACHIEVEMENT_PROGRESS(achievementId, progress)
  return native.invoke(
    Type.Bool, 4606, false,
    arg(Type.Int, achievementId),
    arg(Type.Int, progress)
  )
end

-- int GET_ACHIEVEMENT_PROGRESS(int achievementId) // 0x1C186837D0619335
--[[
For Steam.
Always returns 0 in retail version of the game.
--]]
function PLAYER.GET_ACHIEVEMENT_PROGRESS(achievementId)
  return native.invoke(
    Type.Int, 4607, false,
    arg(Type.Int, achievementId)
  )
end

-- BOOL HAS_ACHIEVEMENT_BEEN_PASSED(int achievementId) // 0x867365E111A3B6EB
--[[
See GIVE_ACHIEVEMENT_TO_PLAYER
--]]
function PLAYER.HAS_ACHIEVEMENT_BEEN_PASSED(achievementId)
  return native.invoke(
    Type.Bool, 4608, false,
    arg(Type.Int, achievementId)
  )
end

-- BOOL IS_PLAYER_ONLINE() // 0xF25D331DC2627BBC
--[[
Returns TRUE if the game is in online mode and FALSE if in offline mode.

This is an alias for NETWORK_IS_SIGNED_ONLINE.
--]]
function PLAYER.IS_PLAYER_ONLINE()
  return native.invoke(
    Type.Bool, 4609, false
  )
end

-- BOOL IS_PLAYER_LOGGING_IN_NP() // 0x74556E1420867ECA
--[[
this function is hard-coded to always return 0.
--]]
function PLAYER.IS_PLAYER_LOGGING_IN_NP()
  return native.invoke(
    Type.Bool, 4610, false
  )
end

-- void DISPLAY_SYSTEM_SIGNIN_UI(BOOL p0) // 0x94DD7888C10A979E
--[[
Purpose of the BOOL currently unknown.
Both, true and false, work
--]]
function PLAYER.DISPLAY_SYSTEM_SIGNIN_UI(p0)
  native.invoke(
    Type.Void, 4611, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL IS_SYSTEM_UI_BEING_DISPLAYED() // 0x5D511E3867C87139
function PLAYER.IS_SYSTEM_UI_BEING_DISPLAYED()
  return native.invoke(
    Type.Bool, 4612, false
  )
end

-- void SET_PLAYER_INVINCIBLE(Player player, BOOL toggle) // 0x239528EACDC3E7DE
--[[
Simply sets you as invincible (Health will not deplete).

Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to:
*(DWORD *)(playerPedAddress + 0x188) |= (1 << 9);
--]]
function PLAYER.SET_PLAYER_INVINCIBLE(player, toggle)
  native.invoke(
    Type.Void, 4613, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_PLAYER_INVINCIBLE(Player player) // 0xB721981B2B939E07
--[[
Returns the Player's Invincible status.

This function will always return false if 0x733A643B5B0C53C1 is used to set the invincibility status. To always get the correct result, use this:

 bool IsPlayerInvincible(Player player)
    {
     auto addr = getScriptHandleBaseAddress(GET_PLAYER_PED(player)); 

        if (addr)
     {
         DWORD flag = *(DWORD *)(addr + 0x188);
            return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0);
      }

       return false;
 }


--]]
function PLAYER.GET_PLAYER_INVINCIBLE(player)
  return native.invoke(
    Type.Bool, 4614, false,
    arg(Type.Player, player)
  )
end

-- BOOL GET_PLAYER_DEBUG_INVINCIBLE(Player player) // 0xDCC07526B8EC45AF
--[[
Always returns false.
--]]
function PLAYER.GET_PLAYER_DEBUG_INVINCIBLE(player)
  return native.invoke(
    Type.Bool, 4615, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_INVINCIBLE_BUT_HAS_REACTIONS(Player player, BOOL toggle) // 0x6BC97F4F4BB3C04B
function PLAYER.SET_PLAYER_INVINCIBLE_BUT_HAS_REACTIONS(player, toggle)
  native.invoke(
    Type.Void, 4616, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_CAN_COLLECT_DROPPED_MONEY(Player player, BOOL p1) // 0xCAC57395B151135F
function PLAYER.SET_PLAYER_CAN_COLLECT_DROPPED_MONEY(player, p1)
  native.invoke(
    Type.Void, 4617, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1)
  )
end

-- void REMOVE_PLAYER_HELMET(Player player, BOOL p2) // 0xF3AC26D3CC576528
function PLAYER.REMOVE_PLAYER_HELMET(player, p2)
  native.invoke(
    Type.Void, 4618, false,
    arg(Type.Player, player),
    arg(Type.Bool, p2)
  )
end

-- void GIVE_PLAYER_RAGDOLL_CONTROL(Player player, BOOL toggle) // 0x3C49C870E66F0A28
function PLAYER.GIVE_PLAYER_RAGDOLL_CONTROL(player, toggle)
  native.invoke(
    Type.Void, 4619, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_LOCKON(Player player, BOOL toggle) // 0x5C8B2F450EE4328E
--[[
Example from fm_mission_controler.ysc.c4:

PLAYER::SET_PLAYER_LOCKON(PLAYER::PLAYER_ID(), 1);

All other decompiled scripts using this seem to be using the player id as the first parameter, so I feel the need to confirm it as so.

No need to confirm it says PLAYER_ID() so it uses PLAYER_ID() lol.
--]]
function PLAYER.SET_PLAYER_LOCKON(player, toggle)
  native.invoke(
    Type.Void, 4620, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_TARGETING_MODE(int targetMode) // 0xB1906895227793F3
--[[
Sets your targeting mode.
0 = Assisted Aim - Full
1 = Assisted Aim - Partial
2 = Free Aim - Assisted
3 = Free Aim
--]]
function PLAYER.SET_PLAYER_TARGETING_MODE(targetMode)
  native.invoke(
    Type.Void, 4621, false,
    arg(Type.Int, targetMode)
  )
end

-- int GET_PLAYER_TARGETING_MODE() // 0x875BDD898B99C8CE
--[[
Returns targeting mode. See SET_PLAYER_TARGETING_MODE
--]]
function PLAYER.GET_PLAYER_TARGETING_MODE()
  return native.invoke(
    Type.Int, 4622, false
  )
end

-- void SET_PLAYER_TARGET_LEVEL(int targetLevel) // 0x5702B917B99DB1CD
function PLAYER.SET_PLAYER_TARGET_LEVEL(targetLevel)
  native.invoke(
    Type.Void, 4623, false,
    arg(Type.Int, targetLevel)
  )
end

-- BOOL GET_IS_USING_FPS_THIRD_PERSON_COVER() // 0xB9CF1F793A9F1BF1
--[[
Returns profile setting 237.
--]]
function PLAYER.GET_IS_USING_FPS_THIRD_PERSON_COVER()
  return native.invoke(
    Type.Bool, 4624, false
  )
end

-- BOOL GET_IS_USING_HOOD_CAMERA() // 0xCB645E85E97EA48B
--[[
Returns profile setting 243.
--]]
function PLAYER.GET_IS_USING_HOOD_CAMERA()
  return native.invoke(
    Type.Bool, 4625, false
  )
end

-- void CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_PED(Player player) // 0xF0B67A4DE6AB5F98
function PLAYER.CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_PED(player)
  native.invoke(
    Type.Void, 4626, false,
    arg(Type.Player, player)
  )
end

-- BOOL HAS_PLAYER_DAMAGED_AT_LEAST_ONE_PED(Player player) // 0x20CE80B0C2BF4ACC
function PLAYER.HAS_PLAYER_DAMAGED_AT_LEAST_ONE_PED(player)
  return native.invoke(
    Type.Bool, 4627, false,
    arg(Type.Player, player)
  )
end

-- void CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED(Player player) // 0x4AACB96203D11A31
function PLAYER.CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED(player)
  native.invoke(
    Type.Void, 4628, false,
    arg(Type.Player, player)
  )
end

-- BOOL HAS_PLAYER_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED(Player player) // 0xE4B90F367BD81752
function PLAYER.HAS_PLAYER_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED(player)
  return native.invoke(
    Type.Bool, 4629, false,
    arg(Type.Player, player)
  )
end

-- void SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE(Player player, float multiplier) // 0xCA7DC8329F0A1E9E
--[[
This can be between 1.0f - 14.9f 

You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.


--]]
function PLAYER.SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE(player, multiplier)
  native.invoke(
    Type.Void, 4630, false,
    arg(Type.Player, player),
    arg(Type.Float, multiplier)
  )
end

-- void SET_SWIM_MULTIPLIER_FOR_PLAYER(Player player, float multiplier) // 0xA91C6F0FF7D16A13
--[[
Swim speed multiplier.
Multiplier goes up to 1.49

Just call it one time, it is not required to be called once every tick. - Note copied from below native.

Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.
--]]
function PLAYER.SET_SWIM_MULTIPLIER_FOR_PLAYER(player, multiplier)
  native.invoke(
    Type.Void, 4631, false,
    arg(Type.Player, player),
    arg(Type.Float, multiplier)
  )
end

-- void SET_RUN_SPRINT_MULTIPLIER_FOR_PLAYER(Player player, float multiplier) // 0x6DB47AA77FD94E09
--[[
Multiplier goes up to 1.49 any value above will be completely overruled by the game and the multiplier will not take effect, this can be edited in memory however.

Just call it one time, it is not required to be called once every tick.

Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and SWIM above. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.
--]]
function PLAYER.SET_RUN_SPRINT_MULTIPLIER_FOR_PLAYER(player, multiplier)
  native.invoke(
    Type.Void, 4632, false,
    arg(Type.Player, player),
    arg(Type.Float, multiplier)
  )
end

-- int GET_TIME_SINCE_LAST_ARREST() // 0x5063F92F07C2A316
--[[
Returns the time since the character was arrested in (ms) milliseconds.

example

var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_ARREST();

UI.DrawSubtitle(time.ToString());

if player has not been arrested, the int returned will be -1.
--]]
function PLAYER.GET_TIME_SINCE_LAST_ARREST()
  return native.invoke(
    Type.Int, 4633, false
  )
end

-- int GET_TIME_SINCE_LAST_DEATH() // 0xC7034807558DDFCA
--[[
Returns the time since the character died in (ms) milliseconds.

example

var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_DEATH();

UI.DrawSubtitle(time.ToString());

if player has not died, the int returned will be -1.
--]]
function PLAYER.GET_TIME_SINCE_LAST_DEATH()
  return native.invoke(
    Type.Int, 4634, false
  )
end

-- void ASSISTED_MOVEMENT_CLOSE_ROUTE() // 0xAEBF081FFC0A0E5E
function PLAYER.ASSISTED_MOVEMENT_CLOSE_ROUTE()
  native.invoke(
    Type.Void, 4635, false
  )
end

-- void ASSISTED_MOVEMENT_FLUSH_ROUTE() // 0x8621390F0CDCFE1F
function PLAYER.ASSISTED_MOVEMENT_FLUSH_ROUTE()
  native.invoke(
    Type.Void, 4636, false
  )
end

-- void SET_PLAYER_FORCED_AIM(Player player, BOOL toggle) // 0x0FEE4F80AC44A726
function PLAYER.SET_PLAYER_FORCED_AIM(player, toggle)
  native.invoke(
    Type.Void, 4637, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_FORCED_ZOOM(Player player, BOOL toggle) // 0x75E7D505F2B15902
function PLAYER.SET_PLAYER_FORCED_ZOOM(player, toggle)
  native.invoke(
    Type.Void, 4638, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_FORCE_SKIP_AIM_INTRO(Player player, BOOL toggle) // 0x7651BC64AE59E128
function PLAYER.SET_PLAYER_FORCE_SKIP_AIM_INTRO(player, toggle)
  native.invoke(
    Type.Void, 4639, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void DISABLE_PLAYER_FIRING(Player player, BOOL toggle) // 0x5E6CC07646BBEAB8
--[[
Inhibits the player from using any method of combat including melee and firearms.

NOTE: Only disables the firing for one frame
--]]
function PLAYER.DISABLE_PLAYER_FIRING(player, toggle)
  native.invoke(
    Type.Void, 4640, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void DISABLE_PLAYER_THROW_GRENADE_WHILE_USING_GUN() // 0xB885852C39CC265D
--[[
Used only once in R* scripts (freemode.ysc).
--]]
function PLAYER.DISABLE_PLAYER_THROW_GRENADE_WHILE_USING_GUN()
  native.invoke(
    Type.Void, 4641, false
  )
end

-- void SET_DISABLE_AMBIENT_MELEE_MOVE(Player player, BOOL toggle) // 0x2E8AABFA40A84F8C
function PLAYER.SET_DISABLE_AMBIENT_MELEE_MOVE(player, toggle)
  native.invoke(
    Type.Void, 4642, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_MAX_ARMOUR(Player player, int value) // 0x77DFCCF5948B8C71
--[[
Default is 100. Use player id and not ped id. For instance: PLAYER::SET_PLAYER_MAX_ARMOUR(PLAYER::PLAYER_ID(), 100); // main_persistent.ct4
--]]
function PLAYER.SET_PLAYER_MAX_ARMOUR(player, value)
  native.invoke(
    Type.Void, 4643, false,
    arg(Type.Player, player),
    arg(Type.Int, value)
  )
end

-- void SPECIAL_ABILITY_ACTIVATE(Player player, int p1) // 0x821FDC827D6F4090
--[[
p1 is always 0 in the scripts
--]]
function PLAYER.SPECIAL_ABILITY_ACTIVATE(player, p1)
  native.invoke(
    Type.Void, 4644, false,
    arg(Type.Player, player),
    arg(Type.Int, p1)
  )
end

-- void SET_SPECIAL_ABILITY_MP(Player player, int p1, Any p2) // 0xB214D570EAD7F81A
function PLAYER.SET_SPECIAL_ABILITY_MP(player, p1, p2)
  native.invoke(
    Type.Void, 4645, false,
    arg(Type.Player, player),
    arg(Type.Int, p1),
    arg(Type.Any, p2)
  )
end

-- void SPECIAL_ABILITY_DEACTIVATE_MP(Player player, int p1) // 0x17F7471EACA78290
--[[
p1 is always 0 in the scripts
--]]
function PLAYER.SPECIAL_ABILITY_DEACTIVATE_MP(player, p1)
  native.invoke(
    Type.Void, 4646, false,
    arg(Type.Player, player),
    arg(Type.Int, p1)
  )
end

-- void SPECIAL_ABILITY_DEACTIVATE(Player player, Any p1) // 0xD6A953C6D1492057
function PLAYER.SPECIAL_ABILITY_DEACTIVATE(player, p1)
  native.invoke(
    Type.Void, 4647, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- void SPECIAL_ABILITY_DEACTIVATE_FAST(Player player, Any p1) // 0x9CB5CE07A3968D5A
function PLAYER.SPECIAL_ABILITY_DEACTIVATE_FAST(player, p1)
  native.invoke(
    Type.Void, 4648, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- void SPECIAL_ABILITY_RESET(Player player, Any p1) // 0x375F0E738F861A94
function PLAYER.SPECIAL_ABILITY_RESET(player, p1)
  native.invoke(
    Type.Void, 4649, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- void SPECIAL_ABILITY_CHARGE_ON_MISSION_FAILED(Player player, Any p1) // 0xC9A763D8FE87436A
function PLAYER.SPECIAL_ABILITY_CHARGE_ON_MISSION_FAILED(player, p1)
  native.invoke(
    Type.Void, 4650, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- void SPECIAL_ABILITY_CHARGE_SMALL(Player player, BOOL p1, BOOL p2, Any p3) // 0x2E7B9B683481687D
--[[
Every occurrence of p1 & p2 were both true.
--]]
function PLAYER.SPECIAL_ABILITY_CHARGE_SMALL(player, p1, p2, p3)
  native.invoke(
    Type.Void, 4651, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void SPECIAL_ABILITY_CHARGE_MEDIUM(Player player, BOOL p1, BOOL p2, Any p3) // 0xF113E3AA9BC54613
--[[
Only 1 match. Both p1 & p2 were true.
--]]
function PLAYER.SPECIAL_ABILITY_CHARGE_MEDIUM(player, p1, p2, p3)
  native.invoke(
    Type.Void, 4652, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void SPECIAL_ABILITY_CHARGE_LARGE(Player player, BOOL p1, BOOL p2, Any p3) // 0xF733F45FA4497D93
--[[
2 matches. p1 was always true.
--]]
function PLAYER.SPECIAL_ABILITY_CHARGE_LARGE(player, p1, p2, p3)
  native.invoke(
    Type.Void, 4653, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void SPECIAL_ABILITY_CHARGE_CONTINUOUS(Player player, Ped p1, Any p2) // 0xED481732DFF7E997
--[[
p1 appears to always be 1 (only comes up twice)
--]]
function PLAYER.SPECIAL_ABILITY_CHARGE_CONTINUOUS(player, p1, p2)
  native.invoke(
    Type.Void, 4654, false,
    arg(Type.Player, player),
    arg(Type.Ped, p1),
    arg(Type.Any, p2)
  )
end

-- void SPECIAL_ABILITY_CHARGE_ABSOLUTE(Player player, int p1, BOOL p2, Any p3) // 0xB7B0870EB531D08D
--[[
p1 appears as 5, 10, 15, 25, or 30. p2 is always true.
--]]
function PLAYER.SPECIAL_ABILITY_CHARGE_ABSOLUTE(player, p1, p2, p3)
  native.invoke(
    Type.Void, 4655, false,
    arg(Type.Player, player),
    arg(Type.Int, p1),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void SPECIAL_ABILITY_CHARGE_NORMALIZED(Player player, float normalizedValue, BOOL p2, Any p3) // 0xA0696A65F009EE18
--[[

normalizedValue is from 0.0 - 1.0
p2 is always 1
--]]
function PLAYER.SPECIAL_ABILITY_CHARGE_NORMALIZED(player, normalizedValue, p2, p3)
  native.invoke(
    Type.Void, 4656, false,
    arg(Type.Player, player),
    arg(Type.Float, normalizedValue),
    arg(Type.Bool, p2),
    arg(Type.Any, p3)
  )
end

-- void SPECIAL_ABILITY_FILL_METER(Player player, BOOL p1, Any p2) // 0x3DACA8DDC6FD4980
--[[
Also known as _RECHARGE_SPECIAL_ABILITY
--]]
function PLAYER.SPECIAL_ABILITY_FILL_METER(player, p1, p2)
  native.invoke(
    Type.Void, 4657, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- void SPECIAL_ABILITY_DEPLETE_METER(Player player, BOOL p1, Any p2) // 0x1D506DBBBC51E64B
--[[
p1 was always true.
--]]
function PLAYER.SPECIAL_ABILITY_DEPLETE_METER(player, p1, p2)
  native.invoke(
    Type.Void, 4658, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- void SPECIAL_ABILITY_LOCK(Hash playerModel, Any p1) // 0x6A09D0D590A47D13
function PLAYER.SPECIAL_ABILITY_LOCK(playerModel, p1)
  native.invoke(
    Type.Void, 4659, false,
    arg(Type.Hash, playerModel),
    arg(Type.Any, p1)
  )
end

-- void SPECIAL_ABILITY_UNLOCK(Hash playerModel, Any p1) // 0xF145F3BE2EFA9A3B
function PLAYER.SPECIAL_ABILITY_UNLOCK(playerModel, p1)
  native.invoke(
    Type.Void, 4660, false,
    arg(Type.Hash, playerModel),
    arg(Type.Any, p1)
  )
end

-- BOOL IS_SPECIAL_ABILITY_UNLOCKED(Hash playerModel) // 0xC6017F6A6CDFA694
function PLAYER.IS_SPECIAL_ABILITY_UNLOCKED(playerModel)
  return native.invoke(
    Type.Bool, 4661, false,
    arg(Type.Hash, playerModel)
  )
end

-- BOOL IS_SPECIAL_ABILITY_ACTIVE(Player player, Any p1) // 0x3E5F7FC85D854E15
function PLAYER.IS_SPECIAL_ABILITY_ACTIVE(player, p1)
  return native.invoke(
    Type.Bool, 4662, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- BOOL IS_SPECIAL_ABILITY_METER_FULL(Player player, Any p1) // 0x05A1FE504B7F2587
function PLAYER.IS_SPECIAL_ABILITY_METER_FULL(player, p1)
  return native.invoke(
    Type.Bool, 4663, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- void ENABLE_SPECIAL_ABILITY(Player player, BOOL toggle, Any p2) // 0x181EC197DAEFE121
function PLAYER.ENABLE_SPECIAL_ABILITY(player, toggle, p2)
  native.invoke(
    Type.Void, 4664, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle),
    arg(Type.Any, p2)
  )
end

-- BOOL IS_SPECIAL_ABILITY_ENABLED(Player player, Any p1) // 0xB1D200FE26AEF3CB
function PLAYER.IS_SPECIAL_ABILITY_ENABLED(player, p1)
  return native.invoke(
    Type.Bool, 4665, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- void SET_SPECIAL_ABILITY_MULTIPLIER(float multiplier) // 0xA49C426ED0CA4AB7
function PLAYER.SET_SPECIAL_ABILITY_MULTIPLIER(multiplier)
  native.invoke(
    Type.Void, 4666, false,
    arg(Type.Float, multiplier)
  )
end

-- void UPDATE_SPECIAL_ABILITY_FROM_STAT(Player player, Any p1) // 0xFFEE8FA29AB9A18E
function PLAYER.UPDATE_SPECIAL_ABILITY_FROM_STAT(player, p1)
  native.invoke(
    Type.Void, 4667, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- BOOL GET_IS_PLAYER_DRIVING_ON_HIGHWAY(Player player) // 0x5FC472C501CCADB3
--[[
Appears once in "re_dealgonewrong"
--]]
function PLAYER.GET_IS_PLAYER_DRIVING_ON_HIGHWAY(player)
  return native.invoke(
    Type.Bool, 4668, false,
    arg(Type.Player, player)
  )
end

-- BOOL GET_IS_PLAYER_DRIVING_WRECKLESS(Player player, int p1) // 0xF10B44FD479D69F3
--[[
Only 1 occurrence. p1 was 2.
--]]
function PLAYER.GET_IS_PLAYER_DRIVING_WRECKLESS(player, p1)
  return native.invoke(
    Type.Bool, 4669, false,
    arg(Type.Player, player),
    arg(Type.Int, p1)
  )
end

-- BOOL GET_IS_MOPPING_AREA_FREE_IN_FRONT_OF_PLAYER(Player player, float p1) // 0xDD2620B7B9D16FF1
--[[
2 occurrences in agency_heist3a. p1 was 0.7f then 0.4f.
--]]
function PLAYER.GET_IS_MOPPING_AREA_FREE_IN_FRONT_OF_PLAYER(player, p1)
  return native.invoke(
    Type.Bool, 4670, false,
    arg(Type.Player, player),
    arg(Type.Float, p1)
  )
end

-- void START_PLAYER_TELEPORT(Player player, float x, float y, float z, float heading, BOOL p5, BOOL findCollisionLand, BOOL p7) // 0xAD15F075A4DA0FDE
--[[
`findCollisionLand`: This teleports the player to land when set to true and will not consider the Z coordinate parameter provided by you. It will automatically put the Z coordinate so that you don't fall from sky.
--]]
function PLAYER.START_PLAYER_TELEPORT(player, x, y, z, heading, p5, findCollisionLand, p7)
  native.invoke(
    Type.Void, 4671, false,
    arg(Type.Player, player),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.Bool, p5),
    arg(Type.Bool, findCollisionLand),
    arg(Type.Bool, p7)
  )
end

-- BOOL UPDATE_PLAYER_TELEPORT(Player player) // 0xE23D5873C2394C61
function PLAYER.UPDATE_PLAYER_TELEPORT(player)
  return native.invoke(
    Type.Bool, 4672, false,
    arg(Type.Player, player)
  )
end

-- void STOP_PLAYER_TELEPORT() // 0xC449EDED9D73009C
--[[
Disables the player's teleportation
--]]
function PLAYER.STOP_PLAYER_TELEPORT()
  native.invoke(
    Type.Void, 4673, false
  )
end

-- BOOL IS_PLAYER_TELEPORT_ACTIVE() // 0x02B15662D7F8886F
function PLAYER.IS_PLAYER_TELEPORT_ACTIVE()
  return native.invoke(
    Type.Bool, 4674, false
  )
end

-- float GET_PLAYER_CURRENT_STEALTH_NOISE(Player player) // 0x2F395D61F3A1F877
function PLAYER.GET_PLAYER_CURRENT_STEALTH_NOISE(player)
  return native.invoke(
    Type.Float, 4675, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER(Player player, float regenRate) // 0x5DB660B38DD98A31
--[[
`regenRate`: The recharge multiplier, a value between 0.0 and 1.0.
Use 1.0 to reset it back to normal
--]]
function PLAYER.SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER(player, regenRate)
  native.invoke(
    Type.Void, 4676, false,
    arg(Type.Player, player),
    arg(Type.Float, regenRate)
  )
end

-- float GET_PLAYER_HEALTH_RECHARGE_MAX_PERCENT(Player player) // 0x8BC515BAE4AAF8FF
function PLAYER.GET_PLAYER_HEALTH_RECHARGE_MAX_PERCENT(player)
  return native.invoke(
    Type.Float, 4677, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_HEALTH_RECHARGE_MAX_PERCENT(Player player, float limit) // 0xC388A0F065F5BC34
function PLAYER.SET_PLAYER_HEALTH_RECHARGE_MAX_PERCENT(player, limit)
  native.invoke(
    Type.Void, 4678, false,
    arg(Type.Player, player),
    arg(Type.Float, limit)
  )
end

-- void DISABLE_PLAYER_HEALTH_RECHARGE(Player player) // 0xBCB06442F7E52666
--[[
Needs to be called every frame.
--]]
function PLAYER.DISABLE_PLAYER_HEALTH_RECHARGE(player)
  native.invoke(
    Type.Void, 4679, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_FALL_DISTANCE_TO_TRIGGER_RAGDOLL_OVERRIDE(Player player, float p1) // 0xEFD79FA81DFBA9CB
function PLAYER.SET_PLAYER_FALL_DISTANCE_TO_TRIGGER_RAGDOLL_OVERRIDE(player, p1)
  native.invoke(
    Type.Void, 4680, false,
    arg(Type.Player, player),
    arg(Type.Float, p1)
  )
end

-- void SET_PLAYER_WEAPON_DAMAGE_MODIFIER(Player player, float modifier) // 0xCE07B9F7817AADA3
--[[
This modifies the damage value of your weapon. Whether it is a multiplier or base damage is unknown. 

Based on tests, it is unlikely to be a multiplier.

modifier's min value is 0.1
--]]
function PLAYER.SET_PLAYER_WEAPON_DAMAGE_MODIFIER(player, modifier)
  native.invoke(
    Type.Void, 4681, false,
    arg(Type.Player, player),
    arg(Type.Float, modifier)
  )
end

-- void SET_PLAYER_WEAPON_DEFENSE_MODIFIER(Player player, float modifier) // 0x2D83BC011CA14A3C
--[[
modifier's min value is 0.1
--]]
function PLAYER.SET_PLAYER_WEAPON_DEFENSE_MODIFIER(player, modifier)
  native.invoke(
    Type.Void, 4682, false,
    arg(Type.Player, player),
    arg(Type.Float, modifier)
  )
end

-- void SET_PLAYER_WEAPON_MINIGUN_DEFENSE_MODIFIER(Player player, float modifier) // 0xBCFDE9EDE4CF27DC
--[[
modifier's min value is 0.1
--]]
function PLAYER.SET_PLAYER_WEAPON_MINIGUN_DEFENSE_MODIFIER(player, modifier)
  native.invoke(
    Type.Void, 4683, false,
    arg(Type.Player, player),
    arg(Type.Float, modifier)
  )
end

-- void SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER(Player player, float modifier, BOOL p2) // 0x4A3DC7ECCC321032
--[[
modifier's min value is 0.1
--]]
function PLAYER.SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER(player, modifier, p2)
  native.invoke(
    Type.Void, 4684, false,
    arg(Type.Player, player),
    arg(Type.Float, modifier),
    arg(Type.Bool, p2)
  )
end

-- void SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER(Player player, float modifier) // 0xAE540335B4ABC4E2
--[[
modifier's min value is 0.1
--]]
function PLAYER.SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER(player, modifier)
  native.invoke(
    Type.Void, 4685, false,
    arg(Type.Player, player),
    arg(Type.Float, modifier)
  )
end

-- void SET_PLAYER_VEHICLE_DAMAGE_MODIFIER(Player player, float modifier) // 0xA50E117CDDF82F0C
--[[
modifier's min value is 0.1
--]]
function PLAYER.SET_PLAYER_VEHICLE_DAMAGE_MODIFIER(player, modifier)
  native.invoke(
    Type.Void, 4686, false,
    arg(Type.Player, player),
    arg(Type.Float, modifier)
  )
end

-- void SET_PLAYER_VEHICLE_DEFENSE_MODIFIER(Player player, float modifier) // 0x4C60E6EFDAFF2462
--[[
modifier's min value is 0.1
--]]
function PLAYER.SET_PLAYER_VEHICLE_DEFENSE_MODIFIER(player, modifier)
  native.invoke(
    Type.Void, 4687, false,
    arg(Type.Player, player),
    arg(Type.Float, modifier)
  )
end

-- void SET_PLAYER_MAX_EXPLOSIVE_DAMAGE(Player player, float p1) // 0x8D768602ADEF2245
function PLAYER.SET_PLAYER_MAX_EXPLOSIVE_DAMAGE(player, p1)
  native.invoke(
    Type.Void, 4688, false,
    arg(Type.Player, player),
    arg(Type.Float, p1)
  )
end

-- void SET_PLAYER_EXPLOSIVE_DAMAGE_MODIFIER(Player player, Any p1) // 0xD821056B9ACF8052
function PLAYER.SET_PLAYER_EXPLOSIVE_DAMAGE_MODIFIER(player, p1)
  native.invoke(
    Type.Void, 4689, false,
    arg(Type.Player, player),
    arg(Type.Any, p1)
  )
end

-- void SET_PLAYER_WEAPON_TAKEDOWN_DEFENSE_MODIFIER(Player player, float p1) // 0x31E90B8873A4CD3B
function PLAYER.SET_PLAYER_WEAPON_TAKEDOWN_DEFENSE_MODIFIER(player, p1)
  native.invoke(
    Type.Void, 4690, false,
    arg(Type.Player, player),
    arg(Type.Float, p1)
  )
end

-- void SET_PLAYER_PARACHUTE_TINT_INDEX(Player player, int tintIndex) // 0xA3D0E54541D9A5E5
--[[
Tints:
   None = -1,
    Rainbow = 0,
  Red = 1,
  SeasideStripes = 2,
   WidowMaker = 3,
   Patriot = 4,
  Blue = 5,
 Black = 6,
    Hornet = 7,
   AirFocce = 8,
 Desert = 9,
   Shadow = 10,
  HighAltitude = 11,
    Airbone = 12,
 Sunrise = 13,

--]]
function PLAYER.SET_PLAYER_PARACHUTE_TINT_INDEX(player, tintIndex)
  native.invoke(
    Type.Void, 4691, false,
    arg(Type.Player, player),
    arg(Type.Int, tintIndex)
  )
end

-- void GET_PLAYER_PARACHUTE_TINT_INDEX(Player player, int* tintIndex) // 0x75D3F7A1B0D9B145
--[[
Tints:
  None = -1,
    Rainbow = 0,
  Red = 1,
  SeasideStripes = 2,
   WidowMaker = 3,
   Patriot = 4,
  Blue = 5,
 Black = 6,
    Hornet = 7,
   AirFocce = 8,
 Desert = 9,
   Shadow = 10,
  HighAltitude = 11,
    Airbone = 12,
 Sunrise = 13,
--]]
function PLAYER.GET_PLAYER_PARACHUTE_TINT_INDEX(player, tintIndex)
  native.invoke(
    Type.Void, 4692, false,
    arg(Type.Player, player),
    ref(Type.Int, tintIndex)
  )
end

-- void SET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX(Player player, int index) // 0xAF04C87F5DC1DF38
--[[
Tints:
   None = -1,
    Rainbow = 0,
  Red = 1,
  SeasideStripes = 2,
   WidowMaker = 3,
   Patriot = 4,
  Blue = 5,
 Black = 6,
    Hornet = 7,
   AirFocce = 8,
 Desert = 9,
   Shadow = 10,
  HighAltitude = 11,
    Airbone = 12,
 Sunrise = 13,
--]]
function PLAYER.SET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX(player, index)
  native.invoke(
    Type.Void, 4693, false,
    arg(Type.Player, player),
    arg(Type.Int, index)
  )
end

-- void GET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX(Player player, int* index) // 0xD5A016BC3C09CF40
--[[
Tints:
  None = -1,
    Rainbow = 0,
  Red = 1,
  SeasideStripes = 2,
   WidowMaker = 3,
   Patriot = 4,
  Blue = 5,
 Black = 6,
    Hornet = 7,
   AirFocce = 8,
 Desert = 9,
   Shadow = 10,
  HighAltitude = 11,
    Airbone = 12,
 Sunrise = 13,
--]]
function PLAYER.GET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX(player, index)
  native.invoke(
    Type.Void, 4694, false,
    arg(Type.Player, player),
    ref(Type.Int, index)
  )
end

-- void SET_PLAYER_PARACHUTE_PACK_TINT_INDEX(Player player, int tintIndex) // 0x93B0FB27C9A04060
--[[
tints 0- 13
0 - unkown
1 - unkown
2 - unkown
3 - unkown
4 - unkown
--]]
function PLAYER.SET_PLAYER_PARACHUTE_PACK_TINT_INDEX(player, tintIndex)
  native.invoke(
    Type.Void, 4695, false,
    arg(Type.Player, player),
    arg(Type.Int, tintIndex)
  )
end

-- void GET_PLAYER_PARACHUTE_PACK_TINT_INDEX(Player player, int* tintIndex) // 0x6E9C742F340CE5A2
function PLAYER.GET_PLAYER_PARACHUTE_PACK_TINT_INDEX(player, tintIndex)
  native.invoke(
    Type.Void, 4696, false,
    arg(Type.Player, player),
    ref(Type.Int, tintIndex)
  )
end

-- void SET_PLAYER_HAS_RESERVE_PARACHUTE(Player player) // 0x7DDAB28D31FAC363
function PLAYER.SET_PLAYER_HAS_RESERVE_PARACHUTE(player)
  native.invoke(
    Type.Void, 4697, false,
    arg(Type.Player, player)
  )
end

-- BOOL GET_PLAYER_HAS_RESERVE_PARACHUTE(Player player) // 0x5DDFE2FF727F3CA3
function PLAYER.GET_PLAYER_HAS_RESERVE_PARACHUTE(player)
  return native.invoke(
    Type.Bool, 4698, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_CAN_LEAVE_PARACHUTE_SMOKE_TRAIL(Player player, BOOL enabled) // 0xF401B182DBA8AF53
function PLAYER.SET_PLAYER_CAN_LEAVE_PARACHUTE_SMOKE_TRAIL(player, enabled)
  native.invoke(
    Type.Void, 4699, false,
    arg(Type.Player, player),
    arg(Type.Bool, enabled)
  )
end

-- void SET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR(Player player, int r, int g, int b) // 0x8217FD371A4625CF
function PLAYER.SET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR(player, r, g, b)
  native.invoke(
    Type.Void, 4700, false,
    arg(Type.Player, player),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b)
  )
end

-- void GET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR(Player player, int* r, int* g, int* b) // 0xEF56DBABD3CD4887
function PLAYER.GET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR(player, r, g, b)
  native.invoke(
    Type.Void, 4701, false,
    arg(Type.Player, player),
    ref(Type.Int, r),
    ref(Type.Int, g),
    ref(Type.Int, b)
  )
end

-- void SET_PLAYER_PHONE_PALETTE_IDX(Player player, int flags) // 0x11D5F725F0E780E0
--[[
example:

flags: 0-6

PLAYER::SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(PLAYER::PLAYER_ID(), 6);

wouldnt the flag be the seatIndex?
--]]
function PLAYER.SET_PLAYER_PHONE_PALETTE_IDX(player, flags)
  native.invoke(
    Type.Void, 4702, false,
    arg(Type.Player, player),
    arg(Type.Int, flags)
  )
end

-- void SET_PLAYER_NOISE_MULTIPLIER(Player player, float multiplier) // 0xDB89EF50FF25FCE9
function PLAYER.SET_PLAYER_NOISE_MULTIPLIER(player, multiplier)
  native.invoke(
    Type.Void, 4703, false,
    arg(Type.Player, player),
    arg(Type.Float, multiplier)
  )
end

-- void SET_PLAYER_SNEAKING_NOISE_MULTIPLIER(Player player, float multiplier) // 0xB2C1A29588A9F47C
--[[
Values around 1.0f to 2.0f used in game scripts.
--]]
function PLAYER.SET_PLAYER_SNEAKING_NOISE_MULTIPLIER(player, multiplier)
  native.invoke(
    Type.Void, 4704, false,
    arg(Type.Player, player),
    arg(Type.Float, multiplier)
  )
end

-- BOOL CAN_PED_HEAR_PLAYER(Player player, Ped ped) // 0xF297383AA91DCA29
function PLAYER.CAN_PED_HEAR_PLAYER(player, ped)
  return native.invoke(
    Type.Bool, 4705, false,
    arg(Type.Player, player),
    arg(Type.Ped, ped)
  )
end

-- void SIMULATE_PLAYER_INPUT_GAIT(Player player, float amount, int gaitType, float speed, BOOL p4, BOOL p5, Any p6) // 0x477D5D63E63ECA5D
--[[
This is to make the player walk without accepting input from INPUT.

gaitType is in increments of 100s. 2000, 500, 300, 200, etc.

p4 is always 1 and p5 is always 0.

C# Example :

Function.Call(Hash.SIMULATE_PLAYER_INPUT_GAIT, Game.Player, 1.0f, 100, 1.0f, 1, 0); //Player will go forward for 100ms
--]]
function PLAYER.SIMULATE_PLAYER_INPUT_GAIT(player, amount, gaitType, speed, p4, p5, p6)
  native.invoke(
    Type.Void, 4706, false,
    arg(Type.Player, player),
    arg(Type.Float, amount),
    arg(Type.Int, gaitType),
    arg(Type.Float, speed),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5),
    arg(Type.Any, p6)
  )
end

-- void RESET_PLAYER_INPUT_GAIT(Player player) // 0x19531C47A2ABD691
function PLAYER.RESET_PLAYER_INPUT_GAIT(player)
  native.invoke(
    Type.Void, 4707, false,
    arg(Type.Player, player)
  )
end

-- void SET_AUTO_GIVE_PARACHUTE_WHEN_ENTER_PLANE(Player player, BOOL toggle) // 0x9F343285A00B4BB6
function PLAYER.SET_AUTO_GIVE_PARACHUTE_WHEN_ENTER_PLANE(player, toggle)
  native.invoke(
    Type.Void, 4708, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_AUTO_GIVE_SCUBA_GEAR_WHEN_EXIT_VEHICLE(Player player, BOOL toggle) // 0xD2B315B6689D537D
function PLAYER.SET_AUTO_GIVE_SCUBA_GEAR_WHEN_EXIT_VEHICLE(player, toggle)
  native.invoke(
    Type.Void, 4709, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_STEALTH_PERCEPTION_MODIFIER(Player player, float value) // 0x4E9021C1FCDD507A
function PLAYER.SET_PLAYER_STEALTH_PERCEPTION_MODIFIER(player, value)
  native.invoke(
    Type.Void, 4710, false,
    arg(Type.Player, player),
    arg(Type.Float, value)
  )
end

-- BOOL IS_REMOTE_PLAYER_IN_NON_CLONED_VEHICLE(Player player) // 0x690A61A6D13583F6
function PLAYER.IS_REMOTE_PLAYER_IN_NON_CLONED_VEHICLE(player)
  return native.invoke(
    Type.Bool, 4711, false,
    arg(Type.Player, player)
  )
end

-- void INCREASE_PLAYER_JUMP_SUPPRESSION_RANGE(Player player) // 0x9EDD76E87D5D51BA
function PLAYER.INCREASE_PLAYER_JUMP_SUPPRESSION_RANGE(player)
  native.invoke(
    Type.Void, 4712, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_SIMULATE_AIMING(Player player, BOOL toggle) // 0xC54C95DA968EC5B5
function PLAYER.SET_PLAYER_SIMULATE_AIMING(player, toggle)
  native.invoke(
    Type.Void, 4713, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_CLOTH_PIN_FRAMES(Player player, int p1) // 0x749FADDF97DFE930
function PLAYER.SET_PLAYER_CLOTH_PIN_FRAMES(player, p1)
  native.invoke(
    Type.Void, 4714, false,
    arg(Type.Player, player),
    arg(Type.Int, p1)
  )
end

-- void SET_PLAYER_CLOTH_PACKAGE_INDEX(int index) // 0x9F7BBA2EA6372500
--[[
Every occurrence was either 0 or 2.
--]]
function PLAYER.SET_PLAYER_CLOTH_PACKAGE_INDEX(index)
  native.invoke(
    Type.Void, 4715, false,
    arg(Type.Int, index)
  )
end

-- void SET_PLAYER_CLOTH_LOCK_COUNTER(int value) // 0x14D913B777DFF5DA
--[[
6 matches across 4 scripts. 5 occurrences were 240. The other was 255.
--]]
function PLAYER.SET_PLAYER_CLOTH_LOCK_COUNTER(value)
  native.invoke(
    Type.Void, 4716, false,
    arg(Type.Int, value)
  )
end

-- void PLAYER_ATTACH_VIRTUAL_BOUND(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7) // 0xED51733DC73AED51
--[[
Only 1 match. ob_sofa_michael.

PLAYER::PLAYER_ATTACH_VIRTUAL_BOUND(-804.5928f, 173.1801f, 71.68436f, 0f, 0f, 0.590625f, 1f, 0.7f);1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;
--]]
function PLAYER.PLAYER_ATTACH_VIRTUAL_BOUND(p0, p1, p2, p3, p4, p5, p6, p7)
  native.invoke(
    Type.Void, 4717, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7)
  )
end

-- void PLAYER_DETACH_VIRTUAL_BOUND() // 0x1DD5897E2FA6E7C9
--[[
1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;
--]]
function PLAYER.PLAYER_DETACH_VIRTUAL_BOUND()
  native.invoke(
    Type.Void, 4718, false
  )
end

-- BOOL HAS_PLAYER_BEEN_SPOTTED_IN_STOLEN_VEHICLE(Player player) // 0xD705740BB0A1CF4C
function PLAYER.HAS_PLAYER_BEEN_SPOTTED_IN_STOLEN_VEHICLE(player)
  return native.invoke(
    Type.Bool, 4719, false,
    arg(Type.Player, player)
  )
end

-- BOOL IS_PLAYER_BATTLE_AWARE(Player player) // 0x38D28DA81E4E9BF9
--[[
Returns true if an unk value is greater than 0.0f
--]]
function PLAYER.IS_PLAYER_BATTLE_AWARE(player)
  return native.invoke(
    Type.Bool, 4720, false,
    arg(Type.Player, player)
  )
end

-- BOOL GET_PLAYER_RECEIVED_BATTLE_EVENT_RECENTLY(Player player, int p1, BOOL p2) // 0xBC0753C9CA14B506
function PLAYER.GET_PLAYER_RECEIVED_BATTLE_EVENT_RECENTLY(player, p1, p2)
  return native.invoke(
    Type.Bool, 4721, false,
    arg(Type.Player, player),
    arg(Type.Int, p1),
    arg(Type.Bool, p2)
  )
end

-- void EXTEND_WORLD_BOUNDARY_FOR_PLAYER(float x, float y, float z) // 0x5006D96C995A5827
--[[
Appears only 3 times in the scripts, more specifically in michael1.ysc

-
This can be used to prevent dying if you are "out of the world"
--]]
function PLAYER.EXTEND_WORLD_BOUNDARY_FOR_PLAYER(x, y, z)
  native.invoke(
    Type.Void, 4722, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void RESET_WORLD_BOUNDARY_FOR_PLAYER() // 0xDA1DF03D5A315F4E
function PLAYER.RESET_WORLD_BOUNDARY_FOR_PLAYER()
  native.invoke(
    Type.Void, 4723, false
  )
end

-- BOOL IS_PLAYER_RIDING_TRAIN(Player player) // 0x4EC12697209F2196
--[[
Returns true if the player is riding a train.
--]]
function PLAYER.IS_PLAYER_RIDING_TRAIN(player)
  return native.invoke(
    Type.Bool, 4724, false,
    arg(Type.Player, player)
  )
end

-- BOOL HAS_PLAYER_LEFT_THE_WORLD(Player player) // 0xD55DDFB47991A294
function PLAYER.HAS_PLAYER_LEFT_THE_WORLD(player)
  return native.invoke(
    Type.Bool, 4725, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_LEAVE_PED_BEHIND(Player player, BOOL toggle) // 0xFF300C7649724A0B
function PLAYER.SET_PLAYER_LEAVE_PED_BEHIND(player, toggle)
  native.invoke(
    Type.Void, 4726, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_PARACHUTE_VARIATION_OVERRIDE(Player player, int p1, Any p2, Any p3, BOOL p4) // 0xD9284A8C0D48352C
--[[
p1 was always 5.
p4 was always false.
--]]
function PLAYER.SET_PLAYER_PARACHUTE_VARIATION_OVERRIDE(player, p1, p2, p3, p4)
  native.invoke(
    Type.Void, 4727, false,
    arg(Type.Player, player),
    arg(Type.Int, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Bool, p4)
  )
end

-- void CLEAR_PLAYER_PARACHUTE_VARIATION_OVERRIDE(Player player) // 0x0F4CC924CF8C7B21
function PLAYER.CLEAR_PLAYER_PARACHUTE_VARIATION_OVERRIDE(player)
  native.invoke(
    Type.Void, 4728, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(Player player, Hash model) // 0x977DB4641F6FC3DB
function PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(player, model)
  native.invoke(
    Type.Void, 4729, false,
    arg(Type.Player, player),
    arg(Type.Hash, model)
  )
end

-- void SET_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE(Player player, Hash model) // 0x0764486AEDE748DB
function PLAYER.SET_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE(player, model)
  native.invoke(
    Type.Void, 4730, false,
    arg(Type.Player, player),
    arg(Type.Hash, model)
  )
end

-- Hash GET_PLAYER_PARACHUTE_MODEL_OVERRIDE(Player player) // 0xC219887CA3E65C41
function PLAYER.GET_PLAYER_PARACHUTE_MODEL_OVERRIDE(player)
  return native.invoke(
    Type.Hash, 4731, false,
    arg(Type.Player, player)
  )
end

-- Hash GET_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE(Player player) // 0x37FAAA68DCA9D08D
function PLAYER.GET_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE(player)
  return native.invoke(
    Type.Hash, 4732, false,
    arg(Type.Player, player)
  )
end

-- void CLEAR_PLAYER_PARACHUTE_MODEL_OVERRIDE(Player player) // 0x8753997EB5F6EE3F
function PLAYER.CLEAR_PLAYER_PARACHUTE_MODEL_OVERRIDE(player)
  native.invoke(
    Type.Void, 4733, false,
    arg(Type.Player, player)
  )
end

-- void CLEAR_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE(Player player) // 0x290D248E25815AE8
function PLAYER.CLEAR_PLAYER_RESERVE_PARACHUTE_MODEL_OVERRIDE(player)
  native.invoke(
    Type.Void, 4734, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(Player player, Hash model) // 0xDC80A4C2F18A2B64
function PLAYER.SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(player, model)
  native.invoke(
    Type.Void, 4735, false,
    arg(Type.Player, player),
    arg(Type.Hash, model)
  )
end

-- void CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(Player player) // 0x10C54E4389C12B42
function PLAYER.CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(player)
  native.invoke(
    Type.Void, 4736, false,
    arg(Type.Player, player)
  )
end

-- void DISABLE_PLAYER_VEHICLE_REWARDS(Player player) // 0xC142BE3BB9CE125F
function PLAYER.DISABLE_PLAYER_VEHICLE_REWARDS(player)
  native.invoke(
    Type.Void, 4737, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_SPECTATED_VEHICLE_RADIO_OVERRIDE(BOOL p0) // 0x2F7CEB6520288061
function PLAYER.SET_PLAYER_SPECTATED_VEHICLE_RADIO_OVERRIDE(p0)
  native.invoke(
    Type.Void, 4738, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_PLAYER_BLUETOOTH_STATE(Player player, BOOL state) // 0x5DC40A8869C22141
function PLAYER.SET_PLAYER_BLUETOOTH_STATE(player, state)
  native.invoke(
    Type.Void, 4739, false,
    arg(Type.Player, player),
    arg(Type.Bool, state)
  )
end

-- BOOL IS_PLAYER_BLUETOOTH_ENABLE(Player player) // 0x65FAEE425DE637B0
function PLAYER.IS_PLAYER_BLUETOOTH_ENABLE(player)
  return native.invoke(
    Type.Bool, 4740, false,
    arg(Type.Player, player)
  )
end

-- void DISABLE_CAMERA_VIEW_MODE_CYCLE(Player player) // 0x5501B7A5CDB79D37
function PLAYER.DISABLE_CAMERA_VIEW_MODE_CYCLE(player)
  native.invoke(
    Type.Void, 4741, false,
    arg(Type.Player, player)
  )
end

-- int GET_PLAYER_FAKE_WANTED_LEVEL(Player player) // 0x56105E599CAB0EFA
function PLAYER.GET_PLAYER_FAKE_WANTED_LEVEL(player)
  return native.invoke(
    Type.Int, 4742, false,
    arg(Type.Player, player)
  )
end

-- void SET_PLAYER_CAN_DAMAGE_PLAYER(Player player1, Player player2, BOOL toggle) // 0x55FCC0C390620314
function PLAYER.SET_PLAYER_CAN_DAMAGE_PLAYER(player1, player2, toggle)
  native.invoke(
    Type.Void, 4743, false,
    arg(Type.Player, player1),
    arg(Type.Player, player2),
    arg(Type.Bool, toggle)
  )
end

-- void SET_APPLY_WAYPOINT_OF_PLAYER(Player player, int hudColor) // 0x2382AB11450AE7BA
function PLAYER.SET_APPLY_WAYPOINT_OF_PLAYER(player, hudColor)
  native.invoke(
    Type.Void, 4744, false,
    arg(Type.Player, player),
    arg(Type.Int, hudColor)
  )
end

-- BOOL IS_PLAYER_VEHICLE_WEAPON_TOGGLED_TO_NON_HOMING(Any p0) // 0x6E4361FF3E8CD7CA
function PLAYER.IS_PLAYER_VEHICLE_WEAPON_TOGGLED_TO_NON_HOMING(p0)
  return native.invoke(
    Type.Bool, 4745, false,
    arg(Type.Any, p0)
  )
end

-- void SET_PLAYER_VEHICLE_WEAPON_TO_NON_HOMING(Any p0) // 0x237440E46D918649
--[[
Unsets playerPed+330 if the current weapon has certain flags.
--]]
function PLAYER.SET_PLAYER_VEHICLE_WEAPON_TO_NON_HOMING(p0)
  native.invoke(
    Type.Void, 4746, false,
    arg(Type.Any, p0)
  )
end

-- void SET_PLAYER_HOMING_DISABLED_FOR_ALL_VEHICLE_WEAPONS(Any p0, Any p1) // 0xEE4EBDD2593BA844
function PLAYER.SET_PLAYER_HOMING_DISABLED_FOR_ALL_VEHICLE_WEAPONS(p0, p1)
  native.invoke(
    Type.Void, 4747, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void ADD_PLAYER_TARGETABLE_ENTITY(Player player, Entity entity) // 0x9097EB6D4BB9A12A
function PLAYER.ADD_PLAYER_TARGETABLE_ENTITY(player, entity)
  native.invoke(
    Type.Void, 4748, false,
    arg(Type.Player, player),
    arg(Type.Entity, entity)
  )
end

-- void REMOVE_PLAYER_TARGETABLE_ENTITY(Player player, Entity entity) // 0x9F260BFB59ADBCA3
function PLAYER.REMOVE_PLAYER_TARGETABLE_ENTITY(player, entity)
  native.invoke(
    Type.Void, 4749, false,
    arg(Type.Player, player),
    arg(Type.Entity, entity)
  )
end

-- void SET_PLAYER_PREVIOUS_VARIATION_DATA(Player player, int p1, int p2, Any p3, Any p4, Any p5) // 0x7BAE68775557AE0B
function PLAYER.SET_PLAYER_PREVIOUS_VARIATION_DATA(player, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 4750, false,
    arg(Type.Player, player),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void REMOVE_SCRIPT_FIRE_POSITION() // 0x7148E0F43D11F0D9
--[[
Resets values set by SET_SCRIPT_FIRE_POSITION
--]]
function PLAYER.REMOVE_SCRIPT_FIRE_POSITION()
  native.invoke(
    Type.Void, 4751, false
  )
end

-- void SET_SCRIPT_FIRE_POSITION(float coordX, float coordY, float coordZ) // 0x70A382ADEC069DD3
function PLAYER.SET_SCRIPT_FIRE_POSITION(coordX, coordY, coordZ)
  native.invoke(
    Type.Void, 4752, false,
    arg(Type.Float, coordX),
    arg(Type.Float, coordY),
    arg(Type.Float, coordZ)
  )
end


