NETWORK = {}

-- const char* GET_ONLINE_VERSION() // 0xFCA9373EF340AC0A
--[[
Online version is defined here: update\update.rpf\common\data\version.txt

Example:

[ONLINE_VERSION_NUMBER]
1.33

_GET_ONLINE_VERSION() will return "1.33"
--]]
function NETWORK.GET_ONLINE_VERSION()
  return native.invoke(
    Type.String, 2727, false
  )
end

-- BOOL NETWORK_IS_SIGNED_IN() // 0x054354A99211EB96
--[[
Returns whether the player is signed into Social Club.
--]]
function NETWORK.NETWORK_IS_SIGNED_IN()
  return native.invoke(
    Type.Bool, 2728, false
  )
end

-- BOOL NETWORK_IS_SIGNED_ONLINE() // 0x1077788E268557C2
--[[
Returns whether the game is not in offline mode.

seemed not to work for some ppl
--]]
function NETWORK.NETWORK_IS_SIGNED_ONLINE()
  return native.invoke(
    Type.Bool, 2729, false
  )
end

-- BOOL NETWORK_IS_NP_AVAILABLE() // 0xBD545D44CCE70597
--[[
This function is hard-coded to always return 1.
--]]
function NETWORK.NETWORK_IS_NP_AVAILABLE()
  return native.invoke(
    Type.Bool, 2730, false
  )
end

-- BOOL NETWORK_IS_NP_PENDING() // 0xEBCAB9E5048434F4
--[[
This function is hard-coded to always return 1.
--]]
function NETWORK.NETWORK_IS_NP_PENDING()
  return native.invoke(
    Type.Bool, 2731, false
  )
end

-- int NETWORK_GET_NP_UNAVAILABLE_REASON() // 0x74FB3E29E6D10FA9
--[[
Hardcoded to return zero.

==== PS4 specific info ====

Returns some sort of unavailable reason:
-1 = REASON_INVALID
 0 = REASON_OTHER
 1 = REASON_SYSTEM_UPDATE
 2 = REASON_GAME_UPDATE
 3 = REASON_SIGNED_OUT
 4 = REASON_AGE
 5 = REASON_CONNECTION

=================================
--]]
function NETWORK.NETWORK_GET_NP_UNAVAILABLE_REASON()
  return native.invoke(
    Type.Int, 2732, false
  )
end

-- BOOL NETWORK_IS_CONNETED_TO_NP_PRESENCE() // 0x7808619F31FF22DB
--[[
This function is hard-coded to always return 1.
--]]
function NETWORK.NETWORK_IS_CONNETED_TO_NP_PRESENCE()
  return native.invoke(
    Type.Bool, 2733, false
  )
end

-- BOOL NETWORK_IS_LOGGED_IN_TO_PSN() // 0xA0FA4EC6A05DA44E
--[[
This function is hard-coded to always return 0.
--]]
function NETWORK.NETWORK_IS_LOGGED_IN_TO_PSN()
  return native.invoke(
    Type.Bool, 2734, false
  )
end

-- BOOL NETWORK_HAS_VALID_ROS_CREDENTIALS() // 0x85443FF4C328F53B
--[[
Returns whether the signed-in user has valid Rockstar Online Services (ROS) credentials.
--]]
function NETWORK.NETWORK_HAS_VALID_ROS_CREDENTIALS()
  return native.invoke(
    Type.Bool, 2735, false
  )
end

-- BOOL NETWORK_IS_REFRESHING_ROS_CREDENTIALS() // 0x8D11E61A4ABF49CC
function NETWORK.NETWORK_IS_REFRESHING_ROS_CREDENTIALS()
  return native.invoke(
    Type.Bool, 2736, false
  )
end

-- BOOL NETWORK_IS_CLOUD_AVAILABLE() // 0x9A4CF4F48AD77302
function NETWORK.NETWORK_IS_CLOUD_AVAILABLE()
  return native.invoke(
    Type.Bool, 2737, false
  )
end

-- BOOL NETWORK_HAS_SOCIAL_CLUB_ACCOUNT() // 0x67A5589628E0CFF6
function NETWORK.NETWORK_HAS_SOCIAL_CLUB_ACCOUNT()
  return native.invoke(
    Type.Bool, 2738, false
  )
end

-- BOOL NETWORK_ARE_SOCIAL_CLUB_POLICIES_CURRENT() // 0xBA9775570DB788CF
function NETWORK.NETWORK_ARE_SOCIAL_CLUB_POLICIES_CURRENT()
  return native.invoke(
    Type.Bool, 2739, false
  )
end

-- BOOL NETWORK_IS_HOST() // 0x8DB296B814EDDA07
--[[
If you are host, returns true else returns false.
--]]
function NETWORK.NETWORK_IS_HOST()
  return native.invoke(
    Type.Bool, 2740, false
  )
end

-- Player NETWORK_GET_HOST_PLAYER_INDEX() // 0x8251FB94DC4FDFC8
function NETWORK.NETWORK_GET_HOST_PLAYER_INDEX()
  return native.invoke(
    Type.Player, 2741, false
  )
end

-- BOOL NETWORK_WAS_GAME_SUSPENDED() // 0x4237E822315D8BA9
function NETWORK.NETWORK_WAS_GAME_SUSPENDED()
  return native.invoke(
    Type.Bool, 2742, false
  )
end

-- BOOL NETWORK_HAVE_ONLINE_PRIVILEGES() // 0x25CB5A9F37BFD063
function NETWORK.NETWORK_HAVE_ONLINE_PRIVILEGES()
  return native.invoke(
    Type.Bool, 2743, false
  )
end

-- BOOL NETWORK_HAS_AGE_RESTRICTIONS() // 0x1353F87E89946207
function NETWORK.NETWORK_HAS_AGE_RESTRICTIONS()
  return native.invoke(
    Type.Bool, 2744, false
  )
end

-- BOOL NETWORK_HAVE_USER_CONTENT_PRIVILEGES(int p0) // 0x72D918C99BCACC54
function NETWORK.NETWORK_HAVE_USER_CONTENT_PRIVILEGES(p0)
  return native.invoke(
    Type.Bool, 2745, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NETWORK_HAVE_COMMUNICATION_PRIVILEGES(int p0, Player player) // 0xAEEF48CDF5B6CE7C
function NETWORK.NETWORK_HAVE_COMMUNICATION_PRIVILEGES(p0, player)
  return native.invoke(
    Type.Bool, 2746, false,
    arg(Type.Int, p0),
    arg(Type.Player, player)
  )
end

-- BOOL _NETWORK_HAVE_PLATFORM_COMMUNICATION_PRIVILEGES() // 0xE1E02509169C124E
--[[
Appears to be PlayStation-specific. Always returns true on other platforms if signed in with the primary user profile
--]]
function NETWORK._NETWORK_HAVE_PLATFORM_COMMUNICATION_PRIVILEGES()
  return native.invoke(
    Type.Bool, 2747, false
  )
end

-- BOOL NETWORK_CHECK_ONLINE_PRIVILEGES(Any p0, BOOL p1) // 0x78321BEA235FD8CD
function NETWORK.NETWORK_CHECK_ONLINE_PRIVILEGES(p0, p1)
  return native.invoke(
    Type.Bool, 2748, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- BOOL NETWORK_CHECK_USER_CONTENT_PRIVILEGES(int p0, int p1, BOOL p2) // 0x595F028698072DD9
function NETWORK.NETWORK_CHECK_USER_CONTENT_PRIVILEGES(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2749, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL NETWORK_CHECK_COMMUNICATION_PRIVILEGES(int p0, int p1, BOOL p2) // 0x83F28CE49FBBFFBA
function NETWORK.NETWORK_CHECK_COMMUNICATION_PRIVILEGES(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2750, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL NETWORK_CHECK_TEXT_COMMUNICATION_PRIVILEGES(Any p0, Any p1, Any p2) // 0x07EAB372C8841D99
function NETWORK.NETWORK_CHECK_TEXT_COMMUNICATION_PRIVILEGES(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2751, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL NETWORK_IS_USING_ONLINE_PROMOTION() // 0x906CA41A4B74ECA4
function NETWORK.NETWORK_IS_USING_ONLINE_PROMOTION()
  return native.invoke(
    Type.Bool, 2752, false
  )
end

-- BOOL NETWORK_SHOULD_SHOW_PROMOTION_ALERT_SCREEN() // 0x023ACAB2DC9DC4A4
function NETWORK.NETWORK_SHOULD_SHOW_PROMOTION_ALERT_SCREEN()
  return native.invoke(
    Type.Bool, 2753, false
  )
end

-- BOOL NETWORK_HAS_SOCIAL_NETWORKING_SHARING_PRIV() // 0x76BF03FADBF154F5
function NETWORK.NETWORK_HAS_SOCIAL_NETWORKING_SHARING_PRIV()
  return native.invoke(
    Type.Bool, 2754, false
  )
end

-- int NETWORK_GET_AGE_GROUP() // 0x9614B71F8ADB982B
function NETWORK.NETWORK_GET_AGE_GROUP()
  return native.invoke(
    Type.Int, 2755, false
  )
end

-- BOOL NETWORK_CHECK_PRIVILEGES(Any p0, Any p1, Any p2) // 0x0CF6CC51AA18F0F8
function NETWORK.NETWORK_CHECK_PRIVILEGES(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2756, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL NETWORK_IS_PRIVILEGE_CHECK_IN_PROGRESS() // 0x64E5C4CC82847B73
--[[
Hardcoded to return false.
--]]
function NETWORK.NETWORK_IS_PRIVILEGE_CHECK_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 2757, false
  )
end

-- void NETWORK_SET_PRIVILEGE_CHECK_RESULT_NOT_NEEDED() // 0x1F7BC3539F9E0224
function NETWORK.NETWORK_SET_PRIVILEGE_CHECK_RESULT_NOT_NEEDED()
  native.invoke(
    Type.Void, 2758, false
  )
end

-- BOOL NETWORK_RESOLVE_PRIVILEGE_USER_CONTENT() // 0xDE9225854F37BF72
--[[
Hardcoded to return true.
--]]
function NETWORK.NETWORK_RESOLVE_PRIVILEGE_USER_CONTENT()
  return native.invoke(
    Type.Bool, 2759, false
  )
end

-- BOOL NETWORK_HAVE_PLATFORM_SUBSCRIPTION() // 0x5EA784D197556507
function NETWORK.NETWORK_HAVE_PLATFORM_SUBSCRIPTION()
  return native.invoke(
    Type.Bool, 2760, false
  )
end

-- BOOL NETWORK_IS_PLATFORM_SUBSCRIPTION_CHECK_PENDING() // 0xA8ACB6459542A8C8
function NETWORK.NETWORK_IS_PLATFORM_SUBSCRIPTION_CHECK_PENDING()
  return native.invoke(
    Type.Bool, 2761, false
  )
end

-- void NETWORK_SHOW_ACCOUNT_UPGRADE_UI() // 0x83FE8D7229593017
function NETWORK.NETWORK_SHOW_ACCOUNT_UPGRADE_UI()
  native.invoke(
    Type.Void, 2762, false
  )
end

-- BOOL NETWORK_IS_SHOWING_SYSTEM_UI_OR_RECENTLY_REQUESTED_UPSELL() // 0x7788DFE15016A182
function NETWORK.NETWORK_IS_SHOWING_SYSTEM_UI_OR_RECENTLY_REQUESTED_UPSELL()
  return native.invoke(
    Type.Bool, 2763, false
  )
end

-- BOOL NETWORK_NEED_TO_START_NEW_GAME_BUT_BLOCKED() // 0x53C10C8BD774F2C9
function NETWORK.NETWORK_NEED_TO_START_NEW_GAME_BUT_BLOCKED()
  return native.invoke(
    Type.Bool, 2764, false
  )
end

-- BOOL NETWORK_CAN_BAIL() // 0x580CE4438479CC61
function NETWORK.NETWORK_CAN_BAIL()
  return native.invoke(
    Type.Bool, 2765, false
  )
end

-- void NETWORK_BAIL(int p0, int p1, int p2) // 0x95914459A87EBA28
function NETWORK.NETWORK_BAIL(p0, p1, p2)
  native.invoke(
    Type.Void, 2766, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2)
  )
end

-- void NETWORK_ON_RETURN_TO_SINGLE_PLAYER() // 0x283B6062A2C01E9B
function NETWORK.NETWORK_ON_RETURN_TO_SINGLE_PLAYER()
  native.invoke(
    Type.Void, 2767, false
  )
end

-- BOOL NETWORK_TRANSITION_START(int p0, Any p1, Any p2, Any p3) // 0x8B4FFC790CA131EF
function NETWORK.NETWORK_TRANSITION_START(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 2768, false,
    arg(Type.Int, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- BOOL NETWORK_TRANSITION_ADD_STAGE(Hash hash, int p1, int p2, int state, int p4) // 0xC3BFED92026A2AAD
function NETWORK.NETWORK_TRANSITION_ADD_STAGE(hash, p1, p2, state, p4)
  return native.invoke(
    Type.Bool, 2769, false,
    arg(Type.Hash, hash),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, state),
    arg(Type.Int, p4)
  )
end

-- BOOL NETWORK_TRANSITION_FINISH(Any p0, Any p1, Any p2) // 0x04918A41BC9B8157
function NETWORK.NETWORK_TRANSITION_FINISH(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2770, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL NETWORK_CAN_ACCESS_MULTIPLAYER(int* loadingState) // 0xAF50DA1A3F8B1BA4
--[[
11 - Need to download tunables.
12 - Need to download background script.

Returns 1 if the multiplayer is loaded, otherwhise 0.
--]]
function NETWORK.NETWORK_CAN_ACCESS_MULTIPLAYER(loadingState)
  return native.invoke(
    Type.Bool, 2771, false,
    ref(Type.Int, loadingState)
  )
end

-- BOOL NETWORK_IS_MULTIPLAYER_DISABLED() // 0x9747292807126EDA
function NETWORK.NETWORK_IS_MULTIPLAYER_DISABLED()
  return native.invoke(
    Type.Bool, 2772, false
  )
end

-- BOOL NETWORK_CAN_ENTER_MULTIPLAYER() // 0x7E782A910C362C25
function NETWORK.NETWORK_CAN_ENTER_MULTIPLAYER()
  return native.invoke(
    Type.Bool, 2773, false
  )
end

-- BOOL NETWORK_SESSION_DO_FREEROAM_QUICKMATCH(Any p0, Any p1, Any p2) // 0x330ED4D05491934F
function NETWORK.NETWORK_SESSION_DO_FREEROAM_QUICKMATCH(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2774, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL NETWORK_SESSION_DO_FRIEND_MATCHMAKING(int p0, int p1, int p2) // 0x2CFC76E0D087C994
function NETWORK.NETWORK_SESSION_DO_FRIEND_MATCHMAKING(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2775, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2)
  )
end

-- BOOL NETWORK_SESSION_DO_CREW_MATCHMAKING(int crewId, int p1, int p2, int maxPlayers) // 0x94BC51E9449D917F
--[[
p4 seems to be unused in 1.60/build 2628
--]]
function NETWORK.NETWORK_SESSION_DO_CREW_MATCHMAKING(crewId, p1, p2, maxPlayers)
  return native.invoke(
    Type.Bool, 2776, false,
    arg(Type.Int, crewId),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, maxPlayers)
  )
end

-- BOOL NETWORK_SESSION_DO_ACTIVITY_QUICKMATCH(Any p0, Any p1, Any p2, Any p3, Any p4) // 0xBE3E347A87ACEB82
function NETWORK.NETWORK_SESSION_DO_ACTIVITY_QUICKMATCH(p0, p1, p2, p3, p4)
  return native.invoke(
    Type.Bool, 2777, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4)
  )
end

-- BOOL NETWORK_SESSION_HOST(int p0, int maxPlayers, BOOL p2) // 0x6F3D4ED9BEE4E61D
--[[
Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.
--]]
function NETWORK.NETWORK_SESSION_HOST(p0, maxPlayers, p2)
  return native.invoke(
    Type.Bool, 2778, false,
    arg(Type.Int, p0),
    arg(Type.Int, maxPlayers),
    arg(Type.Bool, p2)
  )
end

-- BOOL NETWORK_SESSION_HOST_CLOSED(int p0, int maxPlayers) // 0xED34C0C02C098BB7
function NETWORK.NETWORK_SESSION_HOST_CLOSED(p0, maxPlayers)
  return native.invoke(
    Type.Bool, 2779, false,
    arg(Type.Int, p0),
    arg(Type.Int, maxPlayers)
  )
end

-- BOOL NETWORK_SESSION_HOST_FRIENDS_ONLY(int p0, int maxPlayers) // 0xB9CFD27A5D578D83
--[[
Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.
--]]
function NETWORK.NETWORK_SESSION_HOST_FRIENDS_ONLY(p0, maxPlayers)
  return native.invoke(
    Type.Bool, 2780, false,
    arg(Type.Int, p0),
    arg(Type.Int, maxPlayers)
  )
end

-- BOOL NETWORK_SESSION_IS_CLOSED_FRIENDS() // 0xFBCFA2EA2E206890
function NETWORK.NETWORK_SESSION_IS_CLOSED_FRIENDS()
  return native.invoke(
    Type.Bool, 2781, false
  )
end

-- BOOL NETWORK_SESSION_IS_CLOSED_CREW() // 0x74732C6CA90DA2B4
function NETWORK.NETWORK_SESSION_IS_CLOSED_CREW()
  return native.invoke(
    Type.Bool, 2782, false
  )
end

-- BOOL NETWORK_SESSION_IS_SOLO() // 0xF3929C2379B60CCE
function NETWORK.NETWORK_SESSION_IS_SOLO()
  return native.invoke(
    Type.Bool, 2783, false
  )
end

-- BOOL NETWORK_SESSION_IS_PRIVATE() // 0xCEF70AA5B3F89BA1
function NETWORK.NETWORK_SESSION_IS_PRIVATE()
  return native.invoke(
    Type.Bool, 2784, false
  )
end

-- BOOL _NETWORK_SESSION_LEAVE_INCLUDING_REASON(int leaveFlags, int leaveReason) // 0xE0128328CF1FD9F4
function NETWORK._NETWORK_SESSION_LEAVE_INCLUDING_REASON(leaveFlags, leaveReason)
  return native.invoke(
    Type.Bool, 2785, false,
    arg(Type.Int, leaveFlags),
    arg(Type.Int, leaveReason)
  )
end

-- BOOL NETWORK_SESSION_END(BOOL p0, BOOL p1) // 0xA02E59562D711006
--[[
p0 is always false and p1 varies.
NETWORK_SESSION_END(0, 1)
NETWORK_SESSION_END(0, 0)
Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."
--]]
function NETWORK.NETWORK_SESSION_END(p0, p1)
  return native.invoke(
    Type.Bool, 2786, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- BOOL NETWORK_SESSION_LEAVE(Any p0) // 0xB9351A07A0D458B1
function NETWORK.NETWORK_SESSION_LEAVE(p0)
  return native.invoke(
    Type.Bool, 2787, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_SESSION_KICK_PLAYER(Player player) // 0xFA8904DC5F304220
--[[
Only works as host.
--]]
function NETWORK.NETWORK_SESSION_KICK_PLAYER(player)
  native.invoke(
    Type.Void, 2788, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_SESSION_GET_KICK_VOTE(Player player) // 0xD6D09A6F32F49EF1
function NETWORK.NETWORK_SESSION_GET_KICK_VOTE(player)
  return native.invoke(
    Type.Bool, 2789, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_SESSION_RESERVE_SLOTS_TRANSITION(Any p0, Any p1, Any p2) // 0x041C7F2A6C9894E6
function NETWORK.NETWORK_SESSION_RESERVE_SLOTS_TRANSITION(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2790, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL NETWORK_JOIN_PREVIOUSLY_FAILED_SESSION() // 0x59DF79317F85A7E0
function NETWORK.NETWORK_JOIN_PREVIOUSLY_FAILED_SESSION()
  return native.invoke(
    Type.Bool, 2791, false
  )
end

-- BOOL NETWORK_JOIN_PREVIOUSLY_FAILED_TRANSITION() // 0xFFE1E5B792D92B34
function NETWORK.NETWORK_JOIN_PREVIOUSLY_FAILED_TRANSITION()
  return native.invoke(
    Type.Bool, 2792, false
  )
end

-- void NETWORK_SESSION_SET_MATCHMAKING_GROUP(int matchmakingGroup) // 0x49EC8030F5015F8B
function NETWORK.NETWORK_SESSION_SET_MATCHMAKING_GROUP(matchmakingGroup)
  native.invoke(
    Type.Void, 2793, false,
    arg(Type.Int, matchmakingGroup)
  )
end

-- void NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX(int playerType, int playerCount) // 0x8B6A4DD0AF9CE215
--[[
playerType is an unsigned int from 0 to 4
0 = regular joiner
4 = spectator
--]]
function NETWORK.NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX(playerType, playerCount)
  native.invoke(
    Type.Void, 2794, false,
    arg(Type.Int, playerType),
    arg(Type.Int, playerCount)
  )
end

-- int NETWORK_SESSION_GET_MATCHMAKING_GROUP_FREE(int p0) // 0x56CE820830EF040B
function NETWORK.NETWORK_SESSION_GET_MATCHMAKING_GROUP_FREE(p0)
  return native.invoke(
    Type.Int, 2795, false,
    arg(Type.Int, p0)
  )
end

-- void NETWORK_SESSION_ADD_ACTIVE_MATCHMAKING_GROUP(int groupId) // 0xCAE55F48D3D7875C
--[[
groupId range: [0, 4]
--]]
function NETWORK.NETWORK_SESSION_ADD_ACTIVE_MATCHMAKING_GROUP(groupId)
  native.invoke(
    Type.Void, 2796, false,
    arg(Type.Int, groupId)
  )
end

-- void NETWORK_SESSION_SET_UNIQUE_CREW_LIMIT(Any p0) // 0xF49ABC20D8552257
function NETWORK.NETWORK_SESSION_SET_UNIQUE_CREW_LIMIT(p0)
  native.invoke(
    Type.Void, 2797, false,
    arg(Type.Any, p0)
  )
end

-- int NETWORK_SESSION_GET_UNIQUE_CREW_LIMIT() // 0xCDC936BF35EDCB73
function NETWORK.NETWORK_SESSION_GET_UNIQUE_CREW_LIMIT()
  return native.invoke(
    Type.Int, 2798, false
  )
end

-- void NETWORK_SESSION_SET_UNIQUE_CREW_LIMIT_TRANSITION(Any p0) // 0x4811BBAC21C5FCD5
function NETWORK.NETWORK_SESSION_SET_UNIQUE_CREW_LIMIT_TRANSITION(p0)
  native.invoke(
    Type.Void, 2799, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_SESSION_SET_UNIQUE_CREW_ONLY_CREWS_TRANSITION(BOOL p0) // 0x5539C3EBF104A53A
function NETWORK.NETWORK_SESSION_SET_UNIQUE_CREW_ONLY_CREWS_TRANSITION(p0)
  native.invoke(
    Type.Void, 2800, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_SESSION_SET_CREW_LIMIT_MAX_MEMBERS_TRANSITION(Any p0) // 0x702BC4D605522539
function NETWORK.NETWORK_SESSION_SET_CREW_LIMIT_MAX_MEMBERS_TRANSITION(p0)
  native.invoke(
    Type.Void, 2801, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_SESSION_SET_MATCHMAKING_PROPERTY_ID(BOOL p0) // 0x3F52E880AAF6C8CA
function NETWORK.NETWORK_SESSION_SET_MATCHMAKING_PROPERTY_ID(p0)
  native.invoke(
    Type.Void, 2802, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_SESSION_SET_MATCHMAKING_MENTAL_STATE(int p0) // 0xF1EEA2DDA9FFA69D
--[[
p0 in the decompiled scripts is always the stat mesh_texblend * 0.07 to int
--]]
function NETWORK.NETWORK_SESSION_SET_MATCHMAKING_MENTAL_STATE(p0)
  native.invoke(
    Type.Void, 2803, false,
    arg(Type.Int, p0)
  )
end

-- void NETWORK_SESSION_SET_NUM_BOSSES(int num) // 0x59D421683D31835A
function NETWORK.NETWORK_SESSION_SET_NUM_BOSSES(num)
  native.invoke(
    Type.Void, 2804, false,
    arg(Type.Int, num)
  )
end

-- void NETWORK_SESSION_SET_SCRIPT_VALIDATE_JOIN() // 0x1153FA02A659051C
function NETWORK.NETWORK_SESSION_SET_SCRIPT_VALIDATE_JOIN()
  native.invoke(
    Type.Void, 2805, false
  )
end

-- void NETWORK_SESSION_VALIDATE_JOIN(BOOL p0) // 0xC19F6C8E7865A6FF
function NETWORK.NETWORK_SESSION_VALIDATE_JOIN(p0)
  native.invoke(
    Type.Void, 2806, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_ADD_FOLLOWERS(int* p0, int p1) // 0x236406F60CF216D6
--[[
..
--]]
function NETWORK.NETWORK_ADD_FOLLOWERS(p0, p1)
  native.invoke(
    Type.Void, 2807, false,
    ref(Type.Int, p0),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_CLEAR_FOLLOWERS() // 0x058F43EC59A8631A
function NETWORK.NETWORK_CLEAR_FOLLOWERS()
  native.invoke(
    Type.Void, 2808, false
  )
end

-- void NETWORK_GET_GLOBAL_MULTIPLAYER_CLOCK(int* hours, int* minutes, int* seconds) // 0x6D03BFBD643B2A02
function NETWORK.NETWORK_GET_GLOBAL_MULTIPLAYER_CLOCK(hours, minutes, seconds)
  native.invoke(
    Type.Void, 2809, false,
    ref(Type.Int, hours),
    ref(Type.Int, minutes),
    ref(Type.Int, seconds)
  )
end

-- void NETWORK_SESSION_SET_GAMEMODE(Any p0) // 0x600F8CB31C7AAB6E
function NETWORK.NETWORK_SESSION_SET_GAMEMODE(p0)
  native.invoke(
    Type.Void, 2810, false,
    arg(Type.Any, p0)
  )
end

-- int NETWORK_SESSION_GET_HOST_AIM_PREFERENCE() // 0xDFFA5BE8381C3314
function NETWORK.NETWORK_SESSION_GET_HOST_AIM_PREFERENCE()
  return native.invoke(
    Type.Int, 2811, false
  )
end

-- BOOL NETWORK_FIND_GAMERS_IN_CREW(int crewId) // 0xE532D6811B3A4D2A
function NETWORK.NETWORK_FIND_GAMERS_IN_CREW(crewId)
  return native.invoke(
    Type.Bool, 2812, false,
    arg(Type.Int, crewId)
  )
end

-- BOOL NETWORK_FIND_MATCHED_GAMERS(int attribute, float fallbackLimit, float lowerLimit, float upperLimit) // 0xF7B2CFDE5C9F700D
--[[
Uses attributes to find players with similar stats. Upper/Lower limit must be above zero or the fallback limit +/-0.1 is used.
There can be up to 15 attributes, they are as follows:

0 = Races
1 = Parachuting
2 = Horde
3 = Darts
4 = Arm Wrestling
5 = Tennis
6 = Golf
7 = Shooting Range
8 = Deathmatch
9 = MPPLY_MCMWIN/MPPLY_CRMISSION
--]]
function NETWORK.NETWORK_FIND_MATCHED_GAMERS(attribute, fallbackLimit, lowerLimit, upperLimit)
  return native.invoke(
    Type.Bool, 2813, false,
    arg(Type.Int, attribute),
    arg(Type.Float, fallbackLimit),
    arg(Type.Float, lowerLimit),
    arg(Type.Float, upperLimit)
  )
end

-- BOOL NETWORK_IS_FINDING_GAMERS() // 0xDDDF64C91BFCF0AA
function NETWORK.NETWORK_IS_FINDING_GAMERS()
  return native.invoke(
    Type.Bool, 2814, false
  )
end

-- BOOL NETWORK_DID_FIND_GAMERS_SUCCEED() // 0xF9B83B77929D8863
function NETWORK.NETWORK_DID_FIND_GAMERS_SUCCEED()
  return native.invoke(
    Type.Bool, 2815, false
  )
end

-- int NETWORK_GET_NUM_FOUND_GAMERS() // 0xA1B043EE79A916FB
function NETWORK.NETWORK_GET_NUM_FOUND_GAMERS()
  return native.invoke(
    Type.Int, 2816, false
  )
end

-- BOOL NETWORK_GET_FOUND_GAMER(Any* p0, Any p1) // 0x9DCFF2AFB68B3476
function NETWORK.NETWORK_GET_FOUND_GAMER(p0, p1)
  return native.invoke(
    Type.Bool, 2817, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_CLEAR_FOUND_GAMERS() // 0x6D14CCEE1B40381A
function NETWORK.NETWORK_CLEAR_FOUND_GAMERS()
  native.invoke(
    Type.Void, 2818, false
  )
end

-- BOOL NETWORK_QUEUE_GAMER_FOR_STATUS(Any* p0) // 0x85A0EF54A500882C
function NETWORK.NETWORK_QUEUE_GAMER_FOR_STATUS(p0)
  return native.invoke(
    Type.Bool, 2819, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_GET_GAMER_STATUS_FROM_QUEUE() // 0x2CC848A861D01493
function NETWORK.NETWORK_GET_GAMER_STATUS_FROM_QUEUE()
  return native.invoke(
    Type.Bool, 2820, false
  )
end

-- BOOL NETWORK_IS_GETTING_GAMER_STATUS() // 0x94A8394D150B013A
function NETWORK.NETWORK_IS_GETTING_GAMER_STATUS()
  return native.invoke(
    Type.Bool, 2821, false
  )
end

-- BOOL NETWORK_DID_GET_GAMER_STATUS_SUCCEED() // 0x5AE17C6B0134B7F1
function NETWORK.NETWORK_DID_GET_GAMER_STATUS_SUCCEED()
  return native.invoke(
    Type.Bool, 2822, false
  )
end

-- BOOL NETWORK_GET_GAMER_STATUS_RESULT(Any* p0, Any p1) // 0x02A8BEC6FD9AF660
function NETWORK.NETWORK_GET_GAMER_STATUS_RESULT(p0, p1)
  return native.invoke(
    Type.Bool, 2823, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_CLEAR_GET_GAMER_STATUS() // 0x86E0660E4F5C956D
function NETWORK.NETWORK_CLEAR_GET_GAMER_STATUS()
  native.invoke(
    Type.Void, 2824, false
  )
end

-- void NETWORK_SESSION_JOIN_INVITE() // 0xC6F8AB8A4189CF3A
function NETWORK.NETWORK_SESSION_JOIN_INVITE()
  native.invoke(
    Type.Void, 2825, false
  )
end

-- void NETWORK_SESSION_CANCEL_INVITE() // 0x2FBF47B1B36D36F9
function NETWORK.NETWORK_SESSION_CANCEL_INVITE()
  native.invoke(
    Type.Void, 2826, false
  )
end

-- void NETWORK_SESSION_FORCE_CANCEL_INVITE() // 0xA29177F7703B5644
function NETWORK.NETWORK_SESSION_FORCE_CANCEL_INVITE()
  native.invoke(
    Type.Void, 2827, false
  )
end

-- BOOL NETWORK_HAS_PENDING_INVITE() // 0xAC8C7B9B88C4A668
function NETWORK.NETWORK_HAS_PENDING_INVITE()
  return native.invoke(
    Type.Bool, 2828, false
  )
end

-- BOOL NETWORK_HAS_CONFIRMED_INVITE() // 0xC42DD763159F3461
function NETWORK.NETWORK_HAS_CONFIRMED_INVITE()
  return native.invoke(
    Type.Bool, 2829, false
  )
end

-- BOOL NETWORK_REQUEST_INVITE_CONFIRMED_EVENT() // 0x62A0296C1BB1CEB3
--[[
Triggers a CEventNetworkInviteConfirmed event
--]]
function NETWORK.NETWORK_REQUEST_INVITE_CONFIRMED_EVENT()
  return native.invoke(
    Type.Bool, 2830, false
  )
end

-- BOOL NETWORK_SESSION_WAS_INVITED() // 0x23DFB504655D0CE4
function NETWORK.NETWORK_SESSION_WAS_INVITED()
  return native.invoke(
    Type.Bool, 2831, false
  )
end

-- void NETWORK_SESSION_GET_INVITER(Any* gamerHandle) // 0xE57397B4A3429DD0
function NETWORK.NETWORK_SESSION_GET_INVITER(gamerHandle)
  native.invoke(
    Type.Void, 2832, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_SESSION_IS_AWAITING_INVITE_RESPONSE() // 0xD313DE83394AF134
--[[
Seems to be true while "Getting GTA Online session details" shows up.
--]]
function NETWORK.NETWORK_SESSION_IS_AWAITING_INVITE_RESPONSE()
  return native.invoke(
    Type.Bool, 2833, false
  )
end

-- BOOL NETWORK_SESSION_IS_DISPLAYING_INVITE_CONFIRMATION() // 0xBDB6F89C729CF388
function NETWORK.NETWORK_SESSION_IS_DISPLAYING_INVITE_CONFIRMATION()
  return native.invoke(
    Type.Bool, 2834, false
  )
end

-- void NETWORK_SUPPRESS_INVITE(BOOL toggle) // 0xA0682D67EF1FBA3D
function NETWORK.NETWORK_SUPPRESS_INVITE(toggle)
  native.invoke(
    Type.Void, 2835, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_BLOCK_INVITES(BOOL toggle) // 0x34F9E9049454A7A0
function NETWORK.NETWORK_BLOCK_INVITES(toggle)
  native.invoke(
    Type.Void, 2836, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_BLOCK_JOIN_QUEUE_INVITES(BOOL toggle) // 0xCFEB8AF24FC1D0BB
function NETWORK.NETWORK_BLOCK_JOIN_QUEUE_INVITES(toggle)
  native.invoke(
    Type.Void, 2837, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_CAN_RECEIVE_RS_INVITES(BOOL p0) // 0x68980414688F7F9D
function NETWORK.NETWORK_SET_CAN_RECEIVE_RS_INVITES(p0)
  native.invoke(
    Type.Void, 2838, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_STORE_INVITE_THROUGH_RESTART() // 0xF814FEC6A19FD6E0
function NETWORK.NETWORK_STORE_INVITE_THROUGH_RESTART()
  native.invoke(
    Type.Void, 2839, false
  )
end

-- void NETWORK_ALLOW_INVITE_PROCESS_IN_PLAYER_SWITCH(BOOL p0) // 0x6B07B9CE4D390375
function NETWORK.NETWORK_ALLOW_INVITE_PROCESS_IN_PLAYER_SWITCH(p0)
  native.invoke(
    Type.Void, 2840, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_SET_SCRIPT_READY_FOR_EVENTS(BOOL toggle) // 0x7AC752103856FB20
function NETWORK.NETWORK_SET_SCRIPT_READY_FOR_EVENTS(toggle)
  native.invoke(
    Type.Void, 2841, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_IS_OFFLINE_INVITE_PENDING() // 0x74698374C45701D2
function NETWORK.NETWORK_IS_OFFLINE_INVITE_PENDING()
  return native.invoke(
    Type.Bool, 2842, false
  )
end

-- void NETWORK_CLEAR_OFFLINE_INVITE_PENDING() // 0x140E6A44870A11CE
function NETWORK.NETWORK_CLEAR_OFFLINE_INVITE_PENDING()
  native.invoke(
    Type.Void, 2843, false
  )
end

-- const char* _NETWORK_INVITE_GET_JOIN_FAIL_REASON() // 0x7B335F84501145BB
--[[
Retrieves the failed invite join alert reason
--]]
function NETWORK._NETWORK_INVITE_GET_JOIN_FAIL_REASON()
  return native.invoke(
    Type.String, 2844, false
  )
end

-- void _NETWORK_INVITE_CLEAR_JOIN_FAIL_REASON() // 0x8EF5F5811A940F82
--[[
Clears the failed invite join alert reason
--]]
function NETWORK._NETWORK_INVITE_CLEAR_JOIN_FAIL_REASON()
  native.invoke(
    Type.Void, 2845, false
  )
end

-- void NETWORK_SESSION_HOST_SINGLE_PLAYER(int p0) // 0xC74C33FCA52856D5
--[[
Loads up the map that is loaded when beeing in mission creator
Player gets placed in a mix between online/offline mode
p0 is always 2 in R* scripts.

Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812
--]]
function NETWORK.NETWORK_SESSION_HOST_SINGLE_PLAYER(p0)
  native.invoke(
    Type.Void, 2846, false,
    arg(Type.Int, p0)
  )
end

-- void NETWORK_SESSION_LEAVE_SINGLE_PLAYER() // 0x3442775428FD2DAA
function NETWORK.NETWORK_SESSION_LEAVE_SINGLE_PLAYER()
  native.invoke(
    Type.Void, 2847, false
  )
end

-- BOOL NETWORK_IS_GAME_IN_PROGRESS() // 0x10FAB35428CCC9D7
function NETWORK.NETWORK_IS_GAME_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 2848, false
  )
end

-- BOOL NETWORK_IS_SESSION_ACTIVE() // 0xD83C2B94E7508980
function NETWORK.NETWORK_IS_SESSION_ACTIVE()
  return native.invoke(
    Type.Bool, 2849, false
  )
end

-- BOOL NETWORK_IS_IN_SESSION() // 0xCA97246103B63917
function NETWORK.NETWORK_IS_IN_SESSION()
  return native.invoke(
    Type.Bool, 2850, false
  )
end

-- BOOL _NETWORK_IS_AMERICAS_VERSION() // 0x0292BD7F3766CEBC
--[[
Hardcoded to return 0.
--]]
function NETWORK._NETWORK_IS_AMERICAS_VERSION()
  return native.invoke(
    Type.Bool, 2851, false
  )
end

-- BOOL NETWORK_IS_SESSION_STARTED() // 0x9DE624D2FC4B603F
--[[
This checks if player is playing on gta online or not.
Please add an if and block your mod if this is "true".
--]]
function NETWORK.NETWORK_IS_SESSION_STARTED()
  return native.invoke(
    Type.Bool, 2852, false
  )
end

-- BOOL NETWORK_IS_SESSION_BUSY() // 0xF4435D66A8E2905E
function NETWORK.NETWORK_IS_SESSION_BUSY()
  return native.invoke(
    Type.Bool, 2853, false
  )
end

-- BOOL NETWORK_CAN_SESSION_END() // 0x4EEBC3694E49C572
function NETWORK.NETWORK_CAN_SESSION_END()
  return native.invoke(
    Type.Bool, 2854, false
  )
end

-- int NETWORK_GET_GAME_MODE() // 0x4C9034162368E206
function NETWORK.NETWORK_GET_GAME_MODE()
  return native.invoke(
    Type.Int, 2855, false
  )
end

-- void NETWORK_SESSION_MARK_VISIBLE(BOOL toggle) // 0x271CC6AB59EBF9A5
function NETWORK.NETWORK_SESSION_MARK_VISIBLE(toggle)
  native.invoke(
    Type.Void, 2856, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_SESSION_IS_VISIBLE() // 0xBA416D68C631496A
function NETWORK.NETWORK_SESSION_IS_VISIBLE()
  return native.invoke(
    Type.Bool, 2857, false
  )
end

-- void NETWORK_SESSION_BLOCK_JOIN_REQUESTS(BOOL toggle) // 0xA73667484D7037C3
function NETWORK.NETWORK_SESSION_BLOCK_JOIN_REQUESTS(toggle)
  native.invoke(
    Type.Void, 2858, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SESSION_CHANGE_SLOTS(int slots, BOOL p1) // 0xB4AB419E0D86ACAE
--[[
num player slots allowed in session, seems to work? 32 max
--]]
function NETWORK.NETWORK_SESSION_CHANGE_SLOTS(slots, p1)
  native.invoke(
    Type.Void, 2859, false,
    arg(Type.Int, slots),
    arg(Type.Bool, p1)
  )
end

-- int NETWORK_SESSION_GET_PRIVATE_SLOTS() // 0x53AFD64C6758F2F9
function NETWORK.NETWORK_SESSION_GET_PRIVATE_SLOTS()
  return native.invoke(
    Type.Int, 2860, false
  )
end

-- BOOL NETWORK_SESSION_VOICE_HOST() // 0x9C1556705F864230
function NETWORK.NETWORK_SESSION_VOICE_HOST()
  return native.invoke(
    Type.Bool, 2861, false
  )
end

-- BOOL NETWORK_SESSION_VOICE_LEAVE() // 0x6793E42BE02B575D
function NETWORK.NETWORK_SESSION_VOICE_LEAVE()
  return native.invoke(
    Type.Bool, 2862, false
  )
end

-- void NETWORK_SESSION_VOICE_CONNECT_TO_PLAYER(Any* gamerHandle) // 0xABD5E88B8A2D3DB2
function NETWORK.NETWORK_SESSION_VOICE_CONNECT_TO_PLAYER(gamerHandle)
  native.invoke(
    Type.Void, 2863, false,
    ref(Type.Any, gamerHandle)
  )
end

-- void NETWORK_SESSION_VOICE_RESPOND_TO_REQUEST(BOOL p0, int p1) // 0x7F8413B7FC2AA6B9
function NETWORK.NETWORK_SESSION_VOICE_RESPOND_TO_REQUEST(p0, p1)
  native.invoke(
    Type.Void, 2864, false,
    arg(Type.Bool, p0),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_SESSION_VOICE_SET_TIMEOUT(int timeout) // 0x5B8ED3DB018927B1
function NETWORK.NETWORK_SESSION_VOICE_SET_TIMEOUT(timeout)
  native.invoke(
    Type.Void, 2865, false,
    arg(Type.Int, timeout)
  )
end

-- BOOL NETWORK_SESSION_IS_IN_VOICE_SESSION() // 0x855BC38818F6F684
function NETWORK.NETWORK_SESSION_IS_IN_VOICE_SESSION()
  return native.invoke(
    Type.Bool, 2866, false
  )
end

-- BOOL NETWORK_SESSION_IS_VOICE_SESSION_ACTIVE() // 0xB5D3453C98456528
function NETWORK.NETWORK_SESSION_IS_VOICE_SESSION_ACTIVE()
  return native.invoke(
    Type.Bool, 2867, false
  )
end

-- BOOL NETWORK_SESSION_IS_VOICE_SESSION_BUSY() // 0xEF0912DDF7C4CB4B
function NETWORK.NETWORK_SESSION_IS_VOICE_SESSION_BUSY()
  return native.invoke(
    Type.Bool, 2868, false
  )
end

-- BOOL NETWORK_SEND_TEXT_MESSAGE(const char* message, Any* gamerHandle) // 0x3A214F2EC889B100
--[[
Message is limited to 64 characters.
--]]
function NETWORK.NETWORK_SEND_TEXT_MESSAGE(message, gamerHandle)
  return native.invoke(
    Type.Bool, 2869, false,
    arg(Type.String, message),
    ref(Type.Any, gamerHandle)
  )
end

-- void NETWORK_SET_ACTIVITY_SPECTATOR(BOOL toggle) // 0x75138790B4359A74
function NETWORK.NETWORK_SET_ACTIVITY_SPECTATOR(toggle)
  native.invoke(
    Type.Void, 2870, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_IS_ACTIVITY_SPECTATOR() // 0x12103B9E0C9F92FB
function NETWORK.NETWORK_IS_ACTIVITY_SPECTATOR()
  return native.invoke(
    Type.Bool, 2871, false
  )
end

-- void NETWORK_SET_ACTIVITY_PLAYER_MAX(Any p0) // 0x0E4F77F7B9D74D84
function NETWORK.NETWORK_SET_ACTIVITY_PLAYER_MAX(p0)
  native.invoke(
    Type.Void, 2872, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_SET_ACTIVITY_SPECTATOR_MAX(int maxSpectators) // 0x9D277B76D1D12222
function NETWORK.NETWORK_SET_ACTIVITY_SPECTATOR_MAX(maxSpectators)
  native.invoke(
    Type.Void, 2873, false,
    arg(Type.Int, maxSpectators)
  )
end

-- int NETWORK_GET_ACTIVITY_PLAYER_NUM(BOOL p0) // 0x73E2B500410DA5A2
function NETWORK.NETWORK_GET_ACTIVITY_PLAYER_NUM(p0)
  return native.invoke(
    Type.Int, 2874, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE(Any* gamerHandle) // 0x2763BBAA72A7BCB9
function NETWORK.NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE(gamerHandle)
  return native.invoke(
    Type.Bool, 2875, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_HOST_TRANSITION(int p0, int p1, int p2, int p3, Any p4, BOOL p5, BOOL p6, int p7, Any p8, int p9) // 0xA60BB5CE242BB254
--[[
p0: Unknown int
p1: Unknown int
p2: Unknown int
p3: Unknown int
p4: Unknown always 0 in decompiled scripts
p5: BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
p6: BOOL purpose unknown, both 0 and 1 are used in decompiled scripts.
p7: Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
p8: Unknown int, it's an int according to decompiled scripts, however the value is always 0 or 1.
p9: Unknown int, sometimes 0, but also 32768 or 16384 appear in decompiled scripst, maybe a flag of some sort?

From what I can tell it looks like it does the following:
Creates/hosts a new transition to another online session, using this in FiveM will result in other players being disconencted from the server/preventing them from joining. This is most likely because I entered the wrong session parameters since they're pretty much all unknown right now.
You also need to use `NetworkJoinTransition(Player player)` and `NetworkLaunchTransition()`.
--]]
function NETWORK.NETWORK_HOST_TRANSITION(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
  return native.invoke(
    Type.Bool, 2876, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Any, p4),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6),
    arg(Type.Int, p7),
    arg(Type.Any, p8),
    arg(Type.Int, p9)
  )
end

-- BOOL NETWORK_DO_TRANSITION_QUICKMATCH(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0x71FB0EBCD4915D56
function NETWORK.NETWORK_DO_TRANSITION_QUICKMATCH(p0, p1, p2, p3, p4, p5)
  return native.invoke(
    Type.Bool, 2877, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- BOOL NETWORK_DO_TRANSITION_QUICKMATCH_ASYNC(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0xA091A5E44F0072E5
function NETWORK.NETWORK_DO_TRANSITION_QUICKMATCH_ASYNC(p0, p1, p2, p3, p4, p5)
  return native.invoke(
    Type.Bool, 2878, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- BOOL NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP(Any p0, Any p1, Any p2, Any p3, Any* p4, Any p5, Any p6, Any p7) // 0x9C4AB58491FDC98A
function NETWORK.NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP(p0, p1, p2, p3, p4, p5, p6, p7)
  return native.invoke(
    Type.Bool, 2879, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    ref(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6),
    arg(Type.Any, p7)
  )
end

-- BOOL NETWORK_JOIN_GROUP_ACTIVITY() // 0xA06509A691D12BE4
function NETWORK.NETWORK_JOIN_GROUP_ACTIVITY()
  return native.invoke(
    Type.Bool, 2880, false
  )
end

-- void NETWORK_CLEAR_GROUP_ACTIVITY() // 0x1888694923EF4591
function NETWORK.NETWORK_CLEAR_GROUP_ACTIVITY()
  native.invoke(
    Type.Void, 2881, false
  )
end

-- void NETWORK_RETAIN_ACTIVITY_GROUP() // 0xB13E88E655E5A3BC
function NETWORK.NETWORK_RETAIN_ACTIVITY_GROUP()
  native.invoke(
    Type.Void, 2882, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_CLOSED_FRIENDS() // 0x6512765E3BE78C50
function NETWORK.NETWORK_IS_TRANSITION_CLOSED_FRIENDS()
  return native.invoke(
    Type.Bool, 2883, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_CLOSED_CREW() // 0x0DBD5D7E3C5BEC3B
function NETWORK.NETWORK_IS_TRANSITION_CLOSED_CREW()
  return native.invoke(
    Type.Bool, 2884, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_SOLO() // 0x5DC577201723960A
function NETWORK.NETWORK_IS_TRANSITION_SOLO()
  return native.invoke(
    Type.Bool, 2885, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_PRIVATE() // 0x5A6AA44FF8E931E6
function NETWORK.NETWORK_IS_TRANSITION_PRIVATE()
  return native.invoke(
    Type.Bool, 2886, false
  )
end

-- int NETWORK_GET_NUM_TRANSITION_NON_ASYNC_GAMERS() // 0x617F49C2668E6155
function NETWORK.NETWORK_GET_NUM_TRANSITION_NON_ASYNC_GAMERS()
  return native.invoke(
    Type.Int, 2887, false
  )
end

-- void NETWORK_MARK_AS_PREFERRED_ACTIVITY(BOOL p0) // 0x261E97AD7BCF3D40
function NETWORK.NETWORK_MARK_AS_PREFERRED_ACTIVITY(p0)
  native.invoke(
    Type.Void, 2888, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_MARK_AS_WAITING_ASYNC(BOOL p0) // 0x39917E1B4CB0F911
function NETWORK.NETWORK_MARK_AS_WAITING_ASYNC(p0)
  native.invoke(
    Type.Void, 2889, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_SET_IN_PROGRESS_FINISH_TIME(Any p0) // 0x2CE9D95E4051AECD
function NETWORK.NETWORK_SET_IN_PROGRESS_FINISH_TIME(p0)
  native.invoke(
    Type.Void, 2890, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_SET_TRANSITION_CREATOR_HANDLE(Any* p0) // 0xEF26739BCD9907D5
function NETWORK.NETWORK_SET_TRANSITION_CREATOR_HANDLE(p0)
  native.invoke(
    Type.Void, 2891, false,
    ref(Type.Any, p0)
  )
end

-- void NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE() // 0xFB3272229A82C759
function NETWORK.NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE()
  native.invoke(
    Type.Void, 2892, false
  )
end

-- BOOL NETWORK_INVITE_GAMERS_TO_TRANSITION(Any* p0, Any p1) // 0x4A595C32F77DFF76
function NETWORK.NETWORK_INVITE_GAMERS_TO_TRANSITION(p0, p1)
  return native.invoke(
    Type.Bool, 2893, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_SET_GAMER_INVITED_TO_TRANSITION(Any* gamerHandle) // 0xCA2C8073411ECDB6
function NETWORK.NETWORK_SET_GAMER_INVITED_TO_TRANSITION(gamerHandle)
  native.invoke(
    Type.Void, 2894, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_LEAVE_TRANSITION() // 0xD23A1A815D21DB19
function NETWORK.NETWORK_LEAVE_TRANSITION()
  return native.invoke(
    Type.Bool, 2895, false
  )
end

-- BOOL NETWORK_LAUNCH_TRANSITION() // 0x2DCF46CB1A4F0884
function NETWORK.NETWORK_LAUNCH_TRANSITION()
  return native.invoke(
    Type.Bool, 2896, false
  )
end

-- void NETWORK_SET_DO_NOT_LAUNCH_FROM_JOIN_AS_MIGRATED_HOST(BOOL toggle) // 0xA2E9C1AB8A92E8CD
--[[
Appears to set whether a transition should be started when the session is migrating.
--]]
function NETWORK.NETWORK_SET_DO_NOT_LAUNCH_FROM_JOIN_AS_MIGRATED_HOST(toggle)
  native.invoke(
    Type.Void, 2897, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_CANCEL_TRANSITION_MATCHMAKING() // 0x023782EFC70585EE
function NETWORK.NETWORK_CANCEL_TRANSITION_MATCHMAKING()
  native.invoke(
    Type.Void, 2898, false
  )
end

-- void NETWORK_BAIL_TRANSITION(int p0, int p1, int p2) // 0xEAA572036990CD1B
function NETWORK.NETWORK_BAIL_TRANSITION(p0, p1, p2)
  native.invoke(
    Type.Void, 2899, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2)
  )
end

-- BOOL NETWORK_DO_TRANSITION_TO_GAME(BOOL p0, int maxPlayers) // 0x3E9BB38102A589B0
function NETWORK.NETWORK_DO_TRANSITION_TO_GAME(p0, maxPlayers)
  return native.invoke(
    Type.Bool, 2900, false,
    arg(Type.Bool, p0),
    arg(Type.Int, maxPlayers)
  )
end

-- BOOL NETWORK_DO_TRANSITION_TO_NEW_GAME(BOOL p0, int maxPlayers, BOOL p2) // 0x4665F51EFED00034
function NETWORK.NETWORK_DO_TRANSITION_TO_NEW_GAME(p0, maxPlayers, p2)
  return native.invoke(
    Type.Bool, 2901, false,
    arg(Type.Bool, p0),
    arg(Type.Int, maxPlayers),
    arg(Type.Bool, p2)
  )
end

-- BOOL NETWORK_DO_TRANSITION_TO_FREEMODE(Any* p0, Any p1, BOOL p2, int players, BOOL p4) // 0x3AAD8B2FCA1E289F
--[[
p2 is true 3/4 of the occurrences I found.
'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.
--]]
function NETWORK.NETWORK_DO_TRANSITION_TO_FREEMODE(p0, p1, p2, players, p4)
  return native.invoke(
    Type.Bool, 2902, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Bool, p2),
    arg(Type.Int, players),
    arg(Type.Bool, p4)
  )
end

-- BOOL NETWORK_DO_TRANSITION_TO_NEW_FREEMODE(Any* p0, Any p1, int players, BOOL p3, BOOL p4, BOOL p5) // 0x9E80A5BA8109F974
function NETWORK.NETWORK_DO_TRANSITION_TO_NEW_FREEMODE(p0, p1, players, p3, p4, p5)
  return native.invoke(
    Type.Bool, 2903, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Int, players),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5)
  )
end

-- BOOL NETWORK_IS_TRANSITION_TO_GAME() // 0x9D7696D8F4FA6CB7
function NETWORK.NETWORK_IS_TRANSITION_TO_GAME()
  return native.invoke(
    Type.Bool, 2904, false
  )
end

-- int NETWORK_GET_TRANSITION_MEMBERS(Any* data, int dataCount) // 0x73B000F7FBC55829
--[[
Returns count.
--]]
function NETWORK.NETWORK_GET_TRANSITION_MEMBERS(data, dataCount)
  return native.invoke(
    Type.Int, 2905, false,
    ref(Type.Any, data),
    arg(Type.Int, dataCount)
  )
end

-- void NETWORK_APPLY_TRANSITION_PARAMETER(int p0, int p1) // 0x521638ADA1BA0D18
function NETWORK.NETWORK_APPLY_TRANSITION_PARAMETER(p0, p1)
  native.invoke(
    Type.Void, 2906, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_APPLY_TRANSITION_PARAMETER_STRING(int p0, const char* string, BOOL p2) // 0xEBEFC2E77084F599
function NETWORK.NETWORK_APPLY_TRANSITION_PARAMETER_STRING(p0, string, p2)
  native.invoke(
    Type.Void, 2907, false,
    arg(Type.Int, p0),
    arg(Type.String, string),
    arg(Type.Bool, p2)
  )
end

-- BOOL NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION(Any* gamerHandle, const char* p1, int p2, int p3, BOOL p4) // 0x31D1D2B858D25E6B
function NETWORK.NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION(gamerHandle, p1, p2, p3, p4)
  return native.invoke(
    Type.Bool, 2908, false,
    ref(Type.Any, gamerHandle),
    arg(Type.String, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Bool, p4)
  )
end

-- BOOL NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED(Any* p0) // 0x5728BB6D63E3FF1D
function NETWORK.NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED(p0)
  return native.invoke(
    Type.Bool, 2909, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_IS_TRANSITION_HOST() // 0x0B824797C9BF2159
function NETWORK.NETWORK_IS_TRANSITION_HOST()
  return native.invoke(
    Type.Bool, 2910, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_HOST_FROM_HANDLE(Any* gamerHandle) // 0x6B5C83BA3EFE6A10
function NETWORK.NETWORK_IS_TRANSITION_HOST_FROM_HANDLE(gamerHandle)
  return native.invoke(
    Type.Bool, 2911, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_GET_TRANSITION_HOST(Any* gamerHandle) // 0x65042B9774C4435E
function NETWORK.NETWORK_GET_TRANSITION_HOST(gamerHandle)
  return native.invoke(
    Type.Bool, 2912, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_IS_IN_TRANSITION() // 0x68049AEFF83D8F0A
function NETWORK.NETWORK_IS_IN_TRANSITION()
  return native.invoke(
    Type.Bool, 2913, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_STARTED() // 0x53FA83401D9C07FE
function NETWORK.NETWORK_IS_TRANSITION_STARTED()
  return native.invoke(
    Type.Bool, 2914, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_BUSY() // 0x520F3282A53D26B7
function NETWORK.NETWORK_IS_TRANSITION_BUSY()
  return native.invoke(
    Type.Bool, 2915, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_MATCHMAKING() // 0x292564C735375EDF
function NETWORK.NETWORK_IS_TRANSITION_MATCHMAKING()
  return native.invoke(
    Type.Bool, 2916, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_LEAVE_POSTPONED() // 0xC571D0E77D8BBC29
function NETWORK.NETWORK_IS_TRANSITION_LEAVE_POSTPONED()
  return native.invoke(
    Type.Bool, 2917, false
  )
end

-- void NETWORK_TRANSITION_SET_IN_PROGRESS(Any p0) // 0x1398582B7F72B3ED
function NETWORK.NETWORK_TRANSITION_SET_IN_PROGRESS(p0)
  native.invoke(
    Type.Void, 2918, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_TRANSITION_SET_CONTENT_CREATOR(Any p0) // 0x1F8E00FB18239600
function NETWORK.NETWORK_TRANSITION_SET_CONTENT_CREATOR(p0)
  native.invoke(
    Type.Void, 2919, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_TRANSITION_SET_ACTIVITY_ISLAND(Any p0) // 0xF6F4383B7C92F11A
function NETWORK.NETWORK_TRANSITION_SET_ACTIVITY_ISLAND(p0)
  native.invoke(
    Type.Void, 2920, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_OPEN_TRANSITION_MATCHMAKING() // 0x2B3A8F7CA3A38FDE
function NETWORK.NETWORK_OPEN_TRANSITION_MATCHMAKING()
  native.invoke(
    Type.Void, 2921, false
  )
end

-- void NETWORK_CLOSE_TRANSITION_MATCHMAKING() // 0x43F4DBA69710E01E
function NETWORK.NETWORK_CLOSE_TRANSITION_MATCHMAKING()
  native.invoke(
    Type.Void, 2922, false
  )
end

-- BOOL NETWORK_IS_TRANSITION_OPEN_TO_MATCHMAKING() // 0x37A4494483B9F5C9
function NETWORK.NETWORK_IS_TRANSITION_OPEN_TO_MATCHMAKING()
  return native.invoke(
    Type.Bool, 2923, false
  )
end

-- void NETWORK_SET_TRANSITION_VISIBILITY_LOCK(BOOL p0, BOOL p1) // 0x0C978FDA19692C2C
function NETWORK.NETWORK_SET_TRANSITION_VISIBILITY_LOCK(p0, p1)
  native.invoke(
    Type.Void, 2924, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- BOOL NETWORK_IS_TRANSITION_VISIBILITY_LOCKED() // 0xD0A484CB2F829FBE
function NETWORK.NETWORK_IS_TRANSITION_VISIBILITY_LOCKED()
  return native.invoke(
    Type.Bool, 2925, false
  )
end

-- void NETWORK_SET_TRANSITION_ACTIVITY_ID(Any p0) // 0x30DE938B516F0AD2
function NETWORK.NETWORK_SET_TRANSITION_ACTIVITY_ID(p0)
  native.invoke(
    Type.Void, 2926, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_CHANGE_TRANSITION_SLOTS(Any p0, BOOL p1) // 0xEEEDA5E6D7080987
function NETWORK.NETWORK_CHANGE_TRANSITION_SLOTS(p0, p1)
  native.invoke(
    Type.Void, 2927, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1)
  )
end

-- void NETWORK_TRANSITION_BLOCK_JOIN_REQUESTS(BOOL p0) // 0x973D76AA760A6CB6
function NETWORK.NETWORK_TRANSITION_BLOCK_JOIN_REQUESTS(p0)
  native.invoke(
    Type.Void, 2928, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL NETWORK_HAS_PLAYER_STARTED_TRANSITION(Player player) // 0x9AC9CCBFA8C29795
function NETWORK.NETWORK_HAS_PLAYER_STARTED_TRANSITION(player)
  return native.invoke(
    Type.Bool, 2929, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_ARE_TRANSITION_DETAILS_VALID(Any p0) // 0x2615AA2A695930C1
function NETWORK.NETWORK_ARE_TRANSITION_DETAILS_VALID(p0)
  return native.invoke(
    Type.Bool, 2930, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_JOIN_TRANSITION(Player player) // 0x9D060B08CD63321A
--[[
int handle[76];
          NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13);
          Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]);
          NETWORK_JOIN_TRANSITION(uVar2);
nothing doin.
--]]
function NETWORK.NETWORK_JOIN_TRANSITION(player)
  return native.invoke(
    Type.Bool, 2931, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_HAS_INVITED_GAMER_TO_TRANSITION(Any* p0) // 0x7284A47B3540E6CF
function NETWORK.NETWORK_HAS_INVITED_GAMER_TO_TRANSITION(p0)
  return native.invoke(
    Type.Bool, 2932, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_HAS_TRANSITION_INVITE_BEEN_ACKED(Any* p0) // 0x3F9990BF5F22759C
function NETWORK.NETWORK_HAS_TRANSITION_INVITE_BEEN_ACKED(p0)
  return native.invoke(
    Type.Bool, 2933, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_IS_ACTIVITY_SESSION() // 0x05095437424397FA
function NETWORK.NETWORK_IS_ACTIVITY_SESSION()
  return native.invoke(
    Type.Bool, 2934, false
  )
end

-- void NETWORK_DISABLE_REALTIME_MULTIPLAYER() // 0x236905C700FDB54D
function NETWORK.NETWORK_DISABLE_REALTIME_MULTIPLAYER()
  native.invoke(
    Type.Void, 2935, false
  )
end

-- void NETWORK_SET_PRESENCE_SESSION_INVITES_BLOCKED(BOOL toggle) // 0x4A9FDE3A5A6D0437
--[[
Does nothing. It's just a nullsub.
--]]
function NETWORK.NETWORK_SET_PRESENCE_SESSION_INVITES_BLOCKED(toggle)
  native.invoke(
    Type.Void, 2936, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_SEND_INVITE_VIA_PRESENCE(Any* gamerHandle, const char* p1, int dataCount, int p3) // 0xC3C7A6AFDB244624
function NETWORK.NETWORK_SEND_INVITE_VIA_PRESENCE(gamerHandle, p1, dataCount, p3)
  return native.invoke(
    Type.Bool, 2937, false,
    ref(Type.Any, gamerHandle),
    arg(Type.String, p1),
    arg(Type.Int, dataCount),
    arg(Type.Int, p3)
  )
end

-- BOOL NETWORK_SEND_TRANSITION_INVITE_VIA_PRESENCE(Any* gamerHandle, const char* p1, int dataCount, int p3) // 0xC116FF9B4D488291
function NETWORK.NETWORK_SEND_TRANSITION_INVITE_VIA_PRESENCE(gamerHandle, p1, dataCount, p3)
  return native.invoke(
    Type.Bool, 2938, false,
    ref(Type.Any, gamerHandle),
    arg(Type.String, p1),
    arg(Type.Int, dataCount),
    arg(Type.Int, p3)
  )
end

-- BOOL NETWORK_SEND_IMPORTANT_TRANSITION_INVITE_VIA_PRESENCE(Any* gamerHandle, const char* p1, int dataCount, int p3) // 0x1171A97A3D3981B6
--[[
Contains the string "NETWORK_SEND_PRESENCE_TRANSITION_INVITE" but so does 0xC116FF9B4D488291; seems to fit alphabetically here, tho.
--]]
function NETWORK.NETWORK_SEND_IMPORTANT_TRANSITION_INVITE_VIA_PRESENCE(gamerHandle, p1, dataCount, p3)
  return native.invoke(
    Type.Bool, 2939, false,
    ref(Type.Any, gamerHandle),
    arg(Type.String, p1),
    arg(Type.Int, dataCount),
    arg(Type.Int, p3)
  )
end

-- int NETWORK_GET_PRESENCE_INVITE_INDEX_BY_ID(int p0) // 0x742B58F723233ED9
function NETWORK.NETWORK_GET_PRESENCE_INVITE_INDEX_BY_ID(p0)
  return native.invoke(
    Type.Int, 2940, false,
    arg(Type.Int, p0)
  )
end

-- int NETWORK_GET_NUM_PRESENCE_INVITES() // 0xCEFA968912D0F78D
function NETWORK.NETWORK_GET_NUM_PRESENCE_INVITES()
  return native.invoke(
    Type.Int, 2941, false
  )
end

-- BOOL NETWORK_ACCEPT_PRESENCE_INVITE(int p0) // 0xFA91550DF9318B22
function NETWORK.NETWORK_ACCEPT_PRESENCE_INVITE(p0)
  return native.invoke(
    Type.Bool, 2942, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NETWORK_REMOVE_PRESENCE_INVITE(int p0) // 0xF0210268DB0974B1
function NETWORK.NETWORK_REMOVE_PRESENCE_INVITE(p0)
  return native.invoke(
    Type.Bool, 2943, false,
    arg(Type.Int, p0)
  )
end

-- int NETWORK_GET_PRESENCE_INVITE_ID(int p0) // 0xDFF09646E12EC386
function NETWORK.NETWORK_GET_PRESENCE_INVITE_ID(p0)
  return native.invoke(
    Type.Int, 2944, false,
    arg(Type.Int, p0)
  )
end

-- const char* NETWORK_GET_PRESENCE_INVITE_INVITER(int p0) // 0x4962CC4AA2F345B7
function NETWORK.NETWORK_GET_PRESENCE_INVITE_INVITER(p0)
  return native.invoke(
    Type.String, 2945, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NETWORK_GET_PRESENCE_INVITE_HANDLE(Any p0, Any* p1) // 0x38D5B0FEBB086F75
function NETWORK.NETWORK_GET_PRESENCE_INVITE_HANDLE(p0, p1)
  return native.invoke(
    Type.Bool, 2946, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- int NETWORK_GET_PRESENCE_INVITE_SESSION_ID(Any p0) // 0x26E1CD96B0903D60
function NETWORK.NETWORK_GET_PRESENCE_INVITE_SESSION_ID(p0)
  return native.invoke(
    Type.Int, 2947, false,
    arg(Type.Any, p0)
  )
end

-- const char* NETWORK_GET_PRESENCE_INVITE_CONTENT_ID(int p0) // 0x24409FC4C55CB22D
function NETWORK.NETWORK_GET_PRESENCE_INVITE_CONTENT_ID(p0)
  return native.invoke(
    Type.String, 2948, false,
    arg(Type.Int, p0)
  )
end

-- int NETWORK_GET_PRESENCE_INVITE_PLAYLIST_LENGTH(int p0) // 0xD39B3FFF8FFDD5BF
function NETWORK.NETWORK_GET_PRESENCE_INVITE_PLAYLIST_LENGTH(p0)
  return native.invoke(
    Type.Int, 2949, false,
    arg(Type.Int, p0)
  )
end

-- int NETWORK_GET_PRESENCE_INVITE_PLAYLIST_CURRENT(int p0) // 0x728C4CC7920CD102
function NETWORK.NETWORK_GET_PRESENCE_INVITE_PLAYLIST_CURRENT(p0)
  return native.invoke(
    Type.Int, 2950, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NETWORK_GET_PRESENCE_INVITE_FROM_ADMIN(int p0) // 0x3DBF2DF0AEB7D289
function NETWORK.NETWORK_GET_PRESENCE_INVITE_FROM_ADMIN(p0)
  return native.invoke(
    Type.Bool, 2951, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NETWORK_GET_PRESENCE_INVITE_IS_TOURNAMENT(Any p0) // 0x8806CEBFABD3CE05
function NETWORK.NETWORK_GET_PRESENCE_INVITE_IS_TOURNAMENT(p0)
  return native.invoke(
    Type.Bool, 2952, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_HAS_FOLLOW_INVITE() // 0x76D9B976C4C09FDE
function NETWORK.NETWORK_HAS_FOLLOW_INVITE()
  return native.invoke(
    Type.Bool, 2953, false
  )
end

-- BOOL NETWORK_ACTION_FOLLOW_INVITE() // 0xC88156EBB786F8D5
function NETWORK.NETWORK_ACTION_FOLLOW_INVITE()
  return native.invoke(
    Type.Bool, 2954, false
  )
end

-- BOOL NETWORK_CLEAR_FOLLOW_INVITE() // 0x439BFDE3CD0610F6
function NETWORK.NETWORK_CLEAR_FOLLOW_INVITE()
  return native.invoke(
    Type.Bool, 2955, false
  )
end

-- void NETWORK_REMOVE_AND_CANCEL_ALL_INVITES() // 0xEBF8284D8CADEB53
function NETWORK.NETWORK_REMOVE_AND_CANCEL_ALL_INVITES()
  native.invoke(
    Type.Void, 2956, false
  )
end

-- void NETWORK_REMOVE_TRANSITION_INVITE(Any* p0) // 0x7524B431B2E6F7EE
function NETWORK.NETWORK_REMOVE_TRANSITION_INVITE(p0)
  native.invoke(
    Type.Void, 2957, false,
    ref(Type.Any, p0)
  )
end

-- void NETWORK_REMOVE_ALL_TRANSITION_INVITE() // 0x726E0375C7A26368
function NETWORK.NETWORK_REMOVE_ALL_TRANSITION_INVITE()
  native.invoke(
    Type.Void, 2958, false
  )
end

-- void NETWORK_REMOVE_AND_CANCEL_ALL_TRANSITION_INVITES() // 0xF083835B70BA9BFE
function NETWORK.NETWORK_REMOVE_AND_CANCEL_ALL_TRANSITION_INVITES()
  native.invoke(
    Type.Void, 2959, false
  )
end

-- BOOL NETWORK_INVITE_GAMERS(Any* p0, Any p1, Any* p2, Any p3) // 0x9D80CD1D0E6327DE
function NETWORK.NETWORK_INVITE_GAMERS(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 2960, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1),
    ref(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- BOOL NETWORK_HAS_INVITED_GAMER(Any* p0) // 0x4D86CD31E8976ECE
function NETWORK.NETWORK_HAS_INVITED_GAMER(p0)
  return native.invoke(
    Type.Bool, 2961, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_HAS_MADE_INVITE_DECISION(Any* gamerHandle) // 0x71DC455F5CD1C2B1
function NETWORK.NETWORK_HAS_MADE_INVITE_DECISION(gamerHandle)
  return native.invoke(
    Type.Bool, 2962, false,
    ref(Type.Any, gamerHandle)
  )
end

-- int NETWORK_GET_INVITE_REPLY_STATUS(Any p0) // 0x3855FB5EB2C5E8B2
function NETWORK.NETWORK_GET_INVITE_REPLY_STATUS(p0)
  return native.invoke(
    Type.Int, 2963, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU(Any* p0) // 0x74881E6BCAE2327C
function NETWORK.NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU(p0)
  return native.invoke(
    Type.Bool, 2964, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU(Any* p0) // 0x7206F674F2A3B1BB
function NETWORK.NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU(p0)
  return native.invoke(
    Type.Bool, 2965, false,
    ref(Type.Any, p0)
  )
end

-- void NETWORK_SET_INVITE_ON_CALL_FOR_INVITE_MENU(Any* p0) // 0x66F010A4B031A331
function NETWORK.NETWORK_SET_INVITE_ON_CALL_FOR_INVITE_MENU(p0)
  native.invoke(
    Type.Void, 2966, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_CHECK_DATA_MANAGER_SUCCEEDED_FOR_HANDLE(int p0, Any* gamerHandle) // 0x44B37CDCAE765AAE
function NETWORK.NETWORK_CHECK_DATA_MANAGER_SUCCEEDED_FOR_HANDLE(p0, gamerHandle)
  return native.invoke(
    Type.Bool, 2967, false,
    arg(Type.Int, p0),
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CHECK_DATA_MANAGER_FOR_HANDLE(Any p0, Any* gamerHandle) // 0x4AD490AE1536933B
function NETWORK.NETWORK_CHECK_DATA_MANAGER_FOR_HANDLE(p0, gamerHandle)
  return native.invoke(
    Type.Bool, 2968, false,
    arg(Type.Any, p0),
    ref(Type.Any, gamerHandle)
  )
end

-- void NETWORK_SET_INVITE_FAILED_MESSAGE_FOR_INVITE_MENU(Any* p0, Any* p1) // 0x0D77A82DC2D0DA59
function NETWORK.NETWORK_SET_INVITE_FAILED_MESSAGE_FOR_INVITE_MENU(p0, p1)
  native.invoke(
    Type.Void, 2969, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- BOOL FILLOUT_PM_PLAYER_LIST(Any* gamerHandle, Any p1, Any p2) // 0xCBBD7C4991B64809
function NETWORK.FILLOUT_PM_PLAYER_LIST(gamerHandle, p1, p2)
  return native.invoke(
    Type.Bool, 2970, false,
    ref(Type.Any, gamerHandle),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL FILLOUT_PM_PLAYER_LIST_WITH_NAMES(Any* p0, Any* p1, Any p2, Any p3) // 0x716B6DB9D1886106
function NETWORK.FILLOUT_PM_PLAYER_LIST_WITH_NAMES(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 2971, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- BOOL REFRESH_PLAYER_LIST_STATS(int p0) // 0xE26CCFF8094D8C74
function NETWORK.REFRESH_PLAYER_LIST_STATS(p0)
  return native.invoke(
    Type.Bool, 2972, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NETWORK_SET_CURRENT_DATA_MANAGER_HANDLE(Any* p0) // 0x796A87B3B68D1F3D
function NETWORK.NETWORK_SET_CURRENT_DATA_MANAGER_HANDLE(p0)
  return native.invoke(
    Type.Bool, 2973, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_IS_IN_PLATFORM_PARTY() // 0x2FC5650B0271CB57
--[[
Hardcoded to return false.
--]]
function NETWORK.NETWORK_IS_IN_PLATFORM_PARTY()
  return native.invoke(
    Type.Bool, 2974, false
  )
end

-- int NETWORK_GET_PLATFORM_PARTY_MEMBER_COUNT() // 0x01ABCE5E7CBDA196
function NETWORK.NETWORK_GET_PLATFORM_PARTY_MEMBER_COUNT()
  return native.invoke(
    Type.Int, 2975, false
  )
end

-- int NETWORK_GET_PLATFORM_PARTY_MEMBERS(Any* data, int dataSize) // 0x120364DE2845DAF8
function NETWORK.NETWORK_GET_PLATFORM_PARTY_MEMBERS(data, dataSize)
  return native.invoke(
    Type.Int, 2976, false,
    ref(Type.Any, data),
    arg(Type.Int, dataSize)
  )
end

-- BOOL NETWORK_IS_IN_PLATFORM_PARTY_CHAT() // 0xFD8B834A8BA05048
--[[
Hardcoded to return false.
--]]
function NETWORK.NETWORK_IS_IN_PLATFORM_PARTY_CHAT()
  return native.invoke(
    Type.Bool, 2977, false
  )
end

-- BOOL NETWORK_IS_CHATTING_IN_PLATFORM_PARTY(Any* gamerHandle) // 0x8DE9945BCC9AEC52
--[[
This would be nice to see if someone is in party chat, but 2 sad notes.
1) It only becomes true if said person is speaking in that party at the time.
2) It will never, become true unless you are in that party with said person.
--]]
function NETWORK.NETWORK_IS_CHATTING_IN_PLATFORM_PARTY(gamerHandle)
  return native.invoke(
    Type.Bool, 2978, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_QUEUE_FOR_PREVIOUS_SESSION_JOIN() // 0x2BF66D2E7414F686
function NETWORK.NETWORK_CAN_QUEUE_FOR_PREVIOUS_SESSION_JOIN()
  return native.invoke(
    Type.Bool, 2979, false
  )
end

-- BOOL NETWORK_IS_QUEUING_FOR_SESSION_JOIN() // 0x14922ED3E38761F0
function NETWORK.NETWORK_IS_QUEUING_FOR_SESSION_JOIN()
  return native.invoke(
    Type.Bool, 2980, false
  )
end

-- void NETWORK_CLEAR_QUEUED_JOIN_REQUEST() // 0x6CE50E47F5543D0C
function NETWORK.NETWORK_CLEAR_QUEUED_JOIN_REQUEST()
  native.invoke(
    Type.Void, 2981, false
  )
end

-- void NETWORK_SEND_QUEUED_JOIN_REQUEST() // 0xFA2888E3833C8E96
function NETWORK.NETWORK_SEND_QUEUED_JOIN_REQUEST()
  native.invoke(
    Type.Void, 2982, false
  )
end

-- void NETWORK_REMOVE_ALL_QUEUED_JOIN_REQUESTS() // 0x25D990F8E0E3F13C
function NETWORK.NETWORK_REMOVE_ALL_QUEUED_JOIN_REQUESTS()
  native.invoke(
    Type.Void, 2983, false
  )
end

-- void NETWORK_SEED_RANDOM_NUMBER_GENERATOR(int seed) // 0xF1B84178F8674195
function NETWORK.NETWORK_SEED_RANDOM_NUMBER_GENERATOR(seed)
  native.invoke(
    Type.Void, 2984, false,
    arg(Type.Int, seed)
  )
end

-- int NETWORK_GET_RANDOM_INT() // 0x599E4FA1F87EB5FF
function NETWORK.NETWORK_GET_RANDOM_INT()
  return native.invoke(
    Type.Int, 2985, false
  )
end

-- int NETWORK_GET_RANDOM_INT_RANGED(int rangeStart, int rangeEnd) // 0xE30CF56F1EFA5F43
--[[
Same as GET_RANDOM_INT_IN_RANGE
--]]
function NETWORK.NETWORK_GET_RANDOM_INT_RANGED(rangeStart, rangeEnd)
  return native.invoke(
    Type.Int, 2986, false,
    arg(Type.Int, rangeStart),
    arg(Type.Int, rangeEnd)
  )
end

-- float _NETWORK_GET_RANDOM_FLOAT_RANGED(float rangeStart, float rangeEnd) // 0x04BD27B5ACB67067
function NETWORK._NETWORK_GET_RANDOM_FLOAT_RANGED(rangeStart, rangeEnd)
  return native.invoke(
    Type.Float, 2987, false,
    arg(Type.Float, rangeStart),
    arg(Type.Float, rangeEnd)
  )
end

-- BOOL NETWORK_PLAYER_IS_CHEATER() // 0x655B91F1495A9090
function NETWORK.NETWORK_PLAYER_IS_CHEATER()
  return native.invoke(
    Type.Bool, 2988, false
  )
end

-- int NETWORK_PLAYER_GET_CHEATER_REASON() // 0x172F75B6EE2233BA
function NETWORK.NETWORK_PLAYER_GET_CHEATER_REASON()
  return native.invoke(
    Type.Int, 2989, false
  )
end

-- BOOL NETWORK_PLAYER_IS_BADSPORT() // 0x19D8DA0E5A68045A
function NETWORK.NETWORK_PLAYER_IS_BADSPORT()
  return native.invoke(
    Type.Bool, 2990, false
  )
end

-- BOOL REMOTE_CHEATER_PLAYER_DETECTED(Player player, int a, int b) // 0x472841A026D26D8B
function NETWORK.REMOTE_CHEATER_PLAYER_DETECTED(player, a, b)
  return native.invoke(
    Type.Bool, 2991, false,
    arg(Type.Player, player),
    arg(Type.Int, a),
    arg(Type.Int, b)
  )
end

-- BOOL BAD_SPORT_PLAYER_LEFT_DETECTED(Any* gamerHandle, int event, int amountReceived) // 0xEC5E3AF5289DCA81
function NETWORK.BAD_SPORT_PLAYER_LEFT_DETECTED(gamerHandle, event, amountReceived)
  return native.invoke(
    Type.Bool, 2992, false,
    ref(Type.Any, gamerHandle),
    arg(Type.Int, event),
    arg(Type.Int, amountReceived)
  )
end

-- void NETWORK_ADD_INVALID_OBJECT_MODEL(Hash modelHash) // 0x7F562DBC212E81F9
function NETWORK.NETWORK_ADD_INVALID_OBJECT_MODEL(modelHash)
  native.invoke(
    Type.Void, 2993, false,
    arg(Type.Hash, modelHash)
  )
end

-- void NETWORK_REMOVE_INVALID_OBJECT_MODEL(Hash modelHash) // 0x791EDB5803B2F468
function NETWORK.NETWORK_REMOVE_INVALID_OBJECT_MODEL(modelHash)
  native.invoke(
    Type.Void, 2994, false,
    arg(Type.Hash, modelHash)
  )
end

-- void NETWORK_CLEAR_INVALID_OBJECT_MODELS() // 0x03B2F03A53D85E41
function NETWORK.NETWORK_CLEAR_INVALID_OBJECT_MODELS()
  native.invoke(
    Type.Void, 2995, false
  )
end

-- void NETWORK_APPLY_PED_SCAR_DATA(Ped ped, int p1) // 0xE66C690248F11150
function NETWORK.NETWORK_APPLY_PED_SCAR_DATA(ped, p1)
  native.invoke(
    Type.Void, 2996, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1)
  )
end

-- void NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT(int maxNumMissionParticipants, BOOL p1, int instanceId) // 0x1CA59E306ECB80A5
function NETWORK.NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT(maxNumMissionParticipants, p1, instanceId)
  native.invoke(
    Type.Void, 2997, false,
    arg(Type.Int, maxNumMissionParticipants),
    arg(Type.Bool, p1),
    arg(Type.Int, instanceId)
  )
end

-- BOOL NETWORK_TRY_TO_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT(Any p0, BOOL p1, Any p2) // 0xD1110739EEADB592
function NETWORK.NETWORK_TRY_TO_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT(p0, p1, p2)
  return native.invoke(
    Type.Bool, 2998, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT() // 0x2910669969E9535E
function NETWORK.NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT()
  return native.invoke(
    Type.Bool, 2999, false
  )
end

-- int NETWORK_GET_MAX_NUM_PARTICIPANTS() // 0xA6C90FBC38E395EE
function NETWORK.NETWORK_GET_MAX_NUM_PARTICIPANTS()
  return native.invoke(
    Type.Int, 3000, false
  )
end

-- int NETWORK_GET_NUM_PARTICIPANTS() // 0x18D0456E86604654
function NETWORK.NETWORK_GET_NUM_PARTICIPANTS()
  return native.invoke(
    Type.Int, 3001, false
  )
end

-- int NETWORK_GET_SCRIPT_STATUS() // 0x57D158647A6BFABF
function NETWORK.NETWORK_GET_SCRIPT_STATUS()
  return native.invoke(
    Type.Int, 3002, false
  )
end

-- void NETWORK_REGISTER_HOST_BROADCAST_VARIABLES(int* vars, int numVars, const char* debugName) // 0x3E9B2F01C50DF595
function NETWORK.NETWORK_REGISTER_HOST_BROADCAST_VARIABLES(vars, numVars, debugName)
  native.invoke(
    Type.Void, 3003, false,
    ref(Type.Int, vars),
    arg(Type.Int, numVars),
    arg(Type.String, debugName)
  )
end

-- void NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES(int* vars, int numVars, const char* debugName) // 0x3364AA97340CA215
function NETWORK.NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES(vars, numVars, debugName)
  native.invoke(
    Type.Void, 3004, false,
    ref(Type.Int, vars),
    arg(Type.Int, numVars),
    arg(Type.String, debugName)
  )
end

-- void NETWORK_REGISTER_HIGH_FREQUENCY_HOST_BROADCAST_VARIABLES(Any p0, Any p1, Any p2) // 0xEA8C0DDB10E2822A
function NETWORK.NETWORK_REGISTER_HIGH_FREQUENCY_HOST_BROADCAST_VARIABLES(p0, p1, p2)
  native.invoke(
    Type.Void, 3005, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_REGISTER_HIGH_FREQUENCY_PLAYER_BROADCAST_VARIABLES(Any p0, Any p1, Any p2) // 0xD6D7478CA62B8D41
function NETWORK.NETWORK_REGISTER_HIGH_FREQUENCY_PLAYER_BROADCAST_VARIABLES(p0, p1, p2)
  native.invoke(
    Type.Void, 3006, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void NETWORK_FINISH_BROADCASTING_DATA() // 0x64F62AFB081E260D
function NETWORK.NETWORK_FINISH_BROADCASTING_DATA()
  native.invoke(
    Type.Void, 3007, false
  )
end

-- BOOL NETWORK_HAS_RECEIVED_HOST_BROADCAST_DATA() // 0x5D10B3795F3FC886
function NETWORK.NETWORK_HAS_RECEIVED_HOST_BROADCAST_DATA()
  return native.invoke(
    Type.Bool, 3008, false
  )
end

-- Player NETWORK_GET_PLAYER_INDEX(Player player) // 0x24FB80D107371267
function NETWORK.NETWORK_GET_PLAYER_INDEX(player)
  return native.invoke(
    Type.Player, 3009, false,
    arg(Type.Player, player)
  )
end

-- int NETWORK_GET_PARTICIPANT_INDEX(int index) // 0x1B84DF6AF2A46938
function NETWORK.NETWORK_GET_PARTICIPANT_INDEX(index)
  return native.invoke(
    Type.Int, 3010, false,
    arg(Type.Int, index)
  )
end

-- Player NETWORK_GET_PLAYER_INDEX_FROM_PED(Ped ped) // 0x6C0E2E0125610278
--[[
Returns the Player associated to a given Ped when in an online session.
--]]
function NETWORK.NETWORK_GET_PLAYER_INDEX_FROM_PED(ped)
  return native.invoke(
    Type.Player, 3011, false,
    arg(Type.Ped, ped)
  )
end

-- int NETWORK_GET_NUM_CONNECTED_PLAYERS() // 0xA4A79DD2D9600654
--[[
Returns the amount of players connected in the current session. Only works when connected to a session/server.
--]]
function NETWORK.NETWORK_GET_NUM_CONNECTED_PLAYERS()
  return native.invoke(
    Type.Int, 3012, false
  )
end

-- BOOL NETWORK_IS_PLAYER_CONNECTED(Player player) // 0x93DC1BE4E1ABE9D1
function NETWORK.NETWORK_IS_PLAYER_CONNECTED(player)
  return native.invoke(
    Type.Bool, 3013, false,
    arg(Type.Player, player)
  )
end

-- int NETWORK_GET_TOTAL_NUM_PLAYERS() // 0xCF61D4B4702EE9EB
function NETWORK.NETWORK_GET_TOTAL_NUM_PLAYERS()
  return native.invoke(
    Type.Int, 3014, false
  )
end

-- BOOL NETWORK_IS_PARTICIPANT_ACTIVE(int p0) // 0x6FF8FF40B6357D45
function NETWORK.NETWORK_IS_PARTICIPANT_ACTIVE(p0)
  return native.invoke(
    Type.Bool, 3015, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NETWORK_IS_PLAYER_ACTIVE(Player player) // 0xB8DFD30D6973E135
function NETWORK.NETWORK_IS_PLAYER_ACTIVE(player)
  return native.invoke(
    Type.Bool, 3016, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_IS_PLAYER_A_PARTICIPANT(Player player) // 0x3CA58F6CB7CBD784
function NETWORK.NETWORK_IS_PLAYER_A_PARTICIPANT(player)
  return native.invoke(
    Type.Bool, 3017, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_IS_HOST_OF_THIS_SCRIPT() // 0x83CD99A1E6061AB5
function NETWORK.NETWORK_IS_HOST_OF_THIS_SCRIPT()
  return native.invoke(
    Type.Bool, 3018, false
  )
end

-- Player NETWORK_GET_HOST_OF_THIS_SCRIPT() // 0xC7B4D79B01FA7A5C
function NETWORK.NETWORK_GET_HOST_OF_THIS_SCRIPT()
  return native.invoke(
    Type.Player, 3019, false
  )
end

-- Player NETWORK_GET_HOST_OF_SCRIPT(const char* scriptName, int instance_id, int position_hash) // 0x1D6A14F1F9A736FC
--[[
scriptName examples:
"freemode", "AM_CR_SecurityVan", ...

Most of the time, these values are used:
instance_id = -1
position_hash = 0
--]]
function NETWORK.NETWORK_GET_HOST_OF_SCRIPT(scriptName, instance_id, position_hash)
  return native.invoke(
    Type.Player, 3020, false,
    arg(Type.String, scriptName),
    arg(Type.Int, instance_id),
    arg(Type.Int, position_hash)
  )
end

-- void NETWORK_SET_MISSION_FINISHED() // 0x3B3D11CD9FFCDFC9
function NETWORK.NETWORK_SET_MISSION_FINISHED()
  native.invoke(
    Type.Void, 3021, false
  )
end

-- BOOL NETWORK_IS_SCRIPT_ACTIVE(const char* scriptName, int instance_id, BOOL p2, int position_hash) // 0x9D40DF90FAD26098
function NETWORK.NETWORK_IS_SCRIPT_ACTIVE(scriptName, instance_id, p2, position_hash)
  return native.invoke(
    Type.Bool, 3022, false,
    arg(Type.String, scriptName),
    arg(Type.Int, instance_id),
    arg(Type.Bool, p2),
    arg(Type.Int, position_hash)
  )
end

-- BOOL NETWORK_IS_SCRIPT_ACTIVE_BY_HASH(Hash scriptHash, int p1, BOOL p2, int p3) // 0xDA7DE67F5FE5EE13
function NETWORK.NETWORK_IS_SCRIPT_ACTIVE_BY_HASH(scriptHash, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3023, false,
    arg(Type.Hash, scriptHash),
    arg(Type.Int, p1),
    arg(Type.Bool, p2),
    arg(Type.Int, p3)
  )
end

-- BOOL NETWORK_IS_THREAD_A_NETWORK_SCRIPT(int threadId) // 0x560B423D73015E77
function NETWORK.NETWORK_IS_THREAD_A_NETWORK_SCRIPT(threadId)
  return native.invoke(
    Type.Bool, 3024, false,
    arg(Type.Int, threadId)
  )
end

-- int NETWORK_GET_NUM_SCRIPT_PARTICIPANTS(const char* scriptName, int instance_id, int position_hash) // 0x3658E8CD94FC121A
function NETWORK.NETWORK_GET_NUM_SCRIPT_PARTICIPANTS(scriptName, instance_id, position_hash)
  return native.invoke(
    Type.Int, 3025, false,
    arg(Type.String, scriptName),
    arg(Type.Int, instance_id),
    arg(Type.Int, position_hash)
  )
end

-- int NETWORK_GET_INSTANCE_ID_OF_THIS_SCRIPT() // 0x638A3A81733086DB
function NETWORK.NETWORK_GET_INSTANCE_ID_OF_THIS_SCRIPT()
  return native.invoke(
    Type.Int, 3026, false
  )
end

-- Hash NETWORK_GET_POSITION_HASH_OF_THIS_SCRIPT() // 0x257ED0FADF750BCF
function NETWORK.NETWORK_GET_POSITION_HASH_OF_THIS_SCRIPT()
  return native.invoke(
    Type.Hash, 3027, false
  )
end

-- BOOL NETWORK_IS_PLAYER_A_PARTICIPANT_ON_SCRIPT(Player player, const char* script, int instance_id) // 0x1AD5B71586B94820
function NETWORK.NETWORK_IS_PLAYER_A_PARTICIPANT_ON_SCRIPT(player, script, instance_id)
  return native.invoke(
    Type.Bool, 3028, false,
    arg(Type.Player, player),
    arg(Type.String, script),
    arg(Type.Int, instance_id)
  )
end

-- void NETWORK_PREVENT_SCRIPT_HOST_MIGRATION() // 0x2302C0264EA58D31
function NETWORK.NETWORK_PREVENT_SCRIPT_HOST_MIGRATION()
  native.invoke(
    Type.Void, 3029, false
  )
end

-- void NETWORK_REQUEST_TO_BE_HOST_OF_THIS_SCRIPT() // 0x741A3D8380319A81
function NETWORK.NETWORK_REQUEST_TO_BE_HOST_OF_THIS_SCRIPT()
  native.invoke(
    Type.Void, 3030, false
  )
end

-- Player PARTICIPANT_ID() // 0x90986E8876CE0A83
--[[
Return the local Participant ID
--]]
function NETWORK.PARTICIPANT_ID()
  return native.invoke(
    Type.Player, 3031, false
  )
end

-- int PARTICIPANT_ID_TO_INT() // 0x57A3BDDAD8E5AA0A
--[[
Return the local Participant ID.

This native is exactly the same as 'PARTICIPANT_ID' native.
--]]
function NETWORK.PARTICIPANT_ID_TO_INT()
  return native.invoke(
    Type.Int, 3032, false
  )
end

-- Player NETWORK_GET_KILLER_OF_PLAYER(Player player, Hash* weaponHash) // 0x2DA41ED6E1FCD7A5
function NETWORK.NETWORK_GET_KILLER_OF_PLAYER(player, weaponHash)
  return native.invoke(
    Type.Player, 3033, false,
    arg(Type.Player, player),
    ref(Type.Hash, weaponHash)
  )
end

-- Player NETWORK_GET_DESTROYER_OF_NETWORK_ID(int netId, Hash* weaponHash) // 0x7A1ADEEF01740A24
function NETWORK.NETWORK_GET_DESTROYER_OF_NETWORK_ID(netId, weaponHash)
  return native.invoke(
    Type.Player, 3034, false,
    arg(Type.Int, netId),
    ref(Type.Hash, weaponHash)
  )
end

-- Player NETWORK_GET_DESTROYER_OF_ENTITY(Entity entity, Hash* weaponHash) // 0xC434133D9BA52777
function NETWORK.NETWORK_GET_DESTROYER_OF_ENTITY(entity, weaponHash)
  return native.invoke(
    Type.Player, 3035, false,
    arg(Type.Entity, entity),
    ref(Type.Hash, weaponHash)
  )
end

-- BOOL NETWORK_GET_ASSISTED_KILL_OF_ENTITY(Player player, Entity entity, int* p2) // 0x83660B734994124D
--[[
NETWORK_GET_ASSISTED_DAMAGE_OF_ENTITY that ensures the entity is dead (IS_ENTITY_DEAD)
--]]
function NETWORK.NETWORK_GET_ASSISTED_KILL_OF_ENTITY(player, entity, p2)
  return native.invoke(
    Type.Bool, 3036, false,
    arg(Type.Player, player),
    arg(Type.Entity, entity),
    ref(Type.Int, p2)
  )
end

-- BOOL NETWORK_GET_ASSISTED_DAMAGE_OF_ENTITY(Player player, Entity entity, int* p2) // 0x4CACA84440FA26F6
function NETWORK.NETWORK_GET_ASSISTED_DAMAGE_OF_ENTITY(player, entity, p2)
  return native.invoke(
    Type.Bool, 3037, false,
    arg(Type.Player, player),
    arg(Type.Entity, entity),
    ref(Type.Int, p2)
  )
end

-- Entity NETWORK_GET_ENTITY_KILLER_OF_PLAYER(Player player, Hash* weaponHash) // 0x42B2DAA6B596F5F8
function NETWORK.NETWORK_GET_ENTITY_KILLER_OF_PLAYER(player, weaponHash)
  return native.invoke(
    Type.Entity, 3038, false,
    arg(Type.Player, player),
    ref(Type.Hash, weaponHash)
  )
end

-- void NETWORK_SET_CURRENT_PUBLIC_CONTENT_ID(const char* missionId) // 0x2C863ACDCD12B3DB
function NETWORK.NETWORK_SET_CURRENT_PUBLIC_CONTENT_ID(missionId)
  native.invoke(
    Type.Void, 3039, false,
    arg(Type.String, missionId)
  )
end

-- void NETWORK_SET_CURRENT_CHAT_OPTION(int newChatOption) // 0x3DAD00265FBF356B
function NETWORK.NETWORK_SET_CURRENT_CHAT_OPTION(newChatOption)
  native.invoke(
    Type.Void, 3040, false,
    arg(Type.Int, newChatOption)
  )
end

-- void NETWORK_SET_CURRENT_SPAWN_LOCATION_OPTION(Hash mpSettingSpawn) // 0xAA6D5451DC3448B6
--[[
mpSettingSpawn:

enum eMpSettingSpawn
{
	MP_SETTING_SPAWN_NULL,
	MP_SETTING_SPAWN_PROPERTY,
	MP_SETTING_SPAWN_LAST_POSITION,
	MP_SETTING_SPAWN_GARAGE,
	MP_SETTING_SPAWN_RANDOM,
	MP_SETTING_SPAWN_PRIVATE_YACHT,
	MP_SETTING_SPAWN_OFFICE,
	MP_SETTING_SPAWN_CLUBHOUSE,
	MP_SETTING_SPAWN_IE_WAREHOUSE,
	MP_SETTING_SPAWN_BUNKER,
	MP_SETTING_SPAWN_HANGAR,
	MP_SETTING_SPAWN_DEFUNCT_BASE,
	MP_SETTING_SPAWN_NIGHTCLUB,
	MP_SETTING_SPAWN_ARENA_GARAGE,
	MP_SETTING_SPAWN_CASINO_APARTMENT,
	MP_SETTING_SPAWN_ARCADE,
	MP_SETTING_SPAWN_SUBMARINE,
	MP_SETTING_SPAWN_CAR_MEET,
	MP_SETTING_SPAWN_AUTO_SHOP,
	MP_SETTING_SPAWN_FIXER_HQ,
	MP_SETTING_SPAWN_MAX,
};
--]]
function NETWORK.NETWORK_SET_CURRENT_SPAWN_LOCATION_OPTION(mpSettingSpawn)
  native.invoke(
    Type.Void, 3041, false,
    arg(Type.Hash, mpSettingSpawn)
  )
end

-- void NETWORK_SET_VEHICLE_DRIVEN_IN_TEST_DRIVE(BOOL toggle) // 0x8C70252FC40F320B
--[[
Used by MetricVEHICLE_DIST_DRIVEN
--]]
function NETWORK.NETWORK_SET_VEHICLE_DRIVEN_IN_TEST_DRIVE(toggle)
  native.invoke(
    Type.Void, 3042, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_VEHICLE_DRIVEN_LOCATION(Hash location) // 0xA0CE91E47531D3BB
--[[
Sets 'loc' variable used in MetricVEHICLE_DIST_DRIVEN
--]]
function NETWORK.NETWORK_SET_VEHICLE_DRIVEN_LOCATION(location)
  native.invoke(
    Type.Void, 3043, false,
    arg(Type.Hash, location)
  )
end

-- void NETWORK_RESURRECT_LOCAL_PLAYER(float x, float y, float z, float heading, BOOL p4, BOOL changetime, BOOL p6, int p7, int p8) // 0xEA23C49EAA83ACFB
function NETWORK.NETWORK_RESURRECT_LOCAL_PLAYER(x, y, z, heading, p4, changetime, p6, p7, p8)
  native.invoke(
    Type.Void, 3044, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading),
    arg(Type.Bool, p4),
    arg(Type.Bool, changetime),
    arg(Type.Bool, p6),
    arg(Type.Int, p7),
    arg(Type.Int, p8)
  )
end

-- void NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME(int time) // 0x2D95C7E2D7E07307
function NETWORK.NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME(time)
  native.invoke(
    Type.Void, 3045, false,
    arg(Type.Int, time)
  )
end

-- BOOL NETWORK_IS_LOCAL_PLAYER_INVINCIBLE() // 0x8A8694B48715B000
function NETWORK.NETWORK_IS_LOCAL_PLAYER_INVINCIBLE()
  return native.invoke(
    Type.Bool, 3046, false
  )
end

-- void NETWORK_DISABLE_INVINCIBLE_FLASHING(Player player, BOOL toggle) // 0x9DD368BF06983221
function NETWORK.NETWORK_DISABLE_INVINCIBLE_FLASHING(player, toggle)
  native.invoke(
    Type.Void, 3047, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_PATCH_POST_CUTSCENE_HS4F_TUN_ENT(Ped ped) // 0xF0BC9BCD24A511D5
function NETWORK.NETWORK_PATCH_POST_CUTSCENE_HS4F_TUN_ENT(ped)
  native.invoke(
    Type.Void, 3048, false,
    arg(Type.Ped, ped)
  )
end

-- void NETWORK_SET_LOCAL_PLAYER_SYNC_LOOK_AT(BOOL toggle) // 0x524FF0AEFF9C3973
function NETWORK.NETWORK_SET_LOCAL_PLAYER_SYNC_LOOK_AT(toggle)
  native.invoke(
    Type.Void, 3049, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_HAS_ENTITY_BEEN_REGISTERED_WITH_THIS_THREAD(Entity entity) // 0xB07D3185E11657A5
function NETWORK.NETWORK_HAS_ENTITY_BEEN_REGISTERED_WITH_THIS_THREAD(entity)
  return native.invoke(
    Type.Bool, 3050, false,
    arg(Type.Entity, entity)
  )
end

-- int NETWORK_GET_NETWORK_ID_FROM_ENTITY(Entity entity) // 0xA11700682F3AD45C
function NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(entity)
  return native.invoke(
    Type.Int, 3051, false,
    arg(Type.Entity, entity)
  )
end

-- Entity NETWORK_GET_ENTITY_FROM_NETWORK_ID(int netId) // 0xCE4E5D9B0A4FF560
function NETWORK.NETWORK_GET_ENTITY_FROM_NETWORK_ID(netId)
  return native.invoke(
    Type.Entity, 3052, false,
    arg(Type.Int, netId)
  )
end

-- BOOL NETWORK_GET_ENTITY_IS_NETWORKED(Entity entity) // 0xC7827959479DCC78
function NETWORK.NETWORK_GET_ENTITY_IS_NETWORKED(entity)
  return native.invoke(
    Type.Bool, 3053, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL NETWORK_GET_ENTITY_IS_LOCAL(Entity entity) // 0x0991549DE4D64762
function NETWORK.NETWORK_GET_ENTITY_IS_LOCAL(entity)
  return native.invoke(
    Type.Bool, 3054, false,
    arg(Type.Entity, entity)
  )
end

-- void NETWORK_REGISTER_ENTITY_AS_NETWORKED(Entity entity) // 0x06FAACD625D80CAA
function NETWORK.NETWORK_REGISTER_ENTITY_AS_NETWORKED(entity)
  native.invoke(
    Type.Void, 3055, false,
    arg(Type.Entity, entity)
  )
end

-- void NETWORK_UNREGISTER_NETWORKED_ENTITY(Entity entity) // 0x7368E683BB9038D6
function NETWORK.NETWORK_UNREGISTER_NETWORKED_ENTITY(entity)
  native.invoke(
    Type.Void, 3056, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL NETWORK_DOES_NETWORK_ID_EXIST(int netId) // 0x38CE16C96BD11344
function NETWORK.NETWORK_DOES_NETWORK_ID_EXIST(netId)
  return native.invoke(
    Type.Bool, 3057, false,
    arg(Type.Int, netId)
  )
end

-- BOOL NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID(int netId) // 0x18A47D074708FD68
function NETWORK.NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID(netId)
  return native.invoke(
    Type.Bool, 3058, false,
    arg(Type.Int, netId)
  )
end

-- BOOL NETWORK_REQUEST_CONTROL_OF_NETWORK_ID(int netId) // 0xA670B3662FAFFBD0
function NETWORK.NETWORK_REQUEST_CONTROL_OF_NETWORK_ID(netId)
  return native.invoke(
    Type.Bool, 3059, false,
    arg(Type.Int, netId)
  )
end

-- BOOL NETWORK_HAS_CONTROL_OF_NETWORK_ID(int netId) // 0x4D36070FE0215186
function NETWORK.NETWORK_HAS_CONTROL_OF_NETWORK_ID(netId)
  return native.invoke(
    Type.Bool, 3060, false,
    arg(Type.Int, netId)
  )
end

-- BOOL NETWORK_IS_NETWORK_ID_REMOTELY_CONTROLLED(int netId) // 0x7242F8B741CE1086
--[[
Returns true if the specified network id is controlled by someone else.
--]]
function NETWORK.NETWORK_IS_NETWORK_ID_REMOTELY_CONTROLLED(netId)
  return native.invoke(
    Type.Bool, 3061, false,
    arg(Type.Int, netId)
  )
end

-- BOOL NETWORK_REQUEST_CONTROL_OF_ENTITY(Entity entity) // 0xB69317BF5E782347
function NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
  return native.invoke(
    Type.Bool, 3062, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL NETWORK_REQUEST_CONTROL_OF_DOOR(int doorID) // 0x870DDFD5A4A796E4
function NETWORK.NETWORK_REQUEST_CONTROL_OF_DOOR(doorID)
  return native.invoke(
    Type.Bool, 3063, false,
    arg(Type.Int, doorID)
  )
end

-- BOOL NETWORK_HAS_CONTROL_OF_ENTITY(Entity entity) // 0x01BF60A500E28887
function NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity)
  return native.invoke(
    Type.Bool, 3064, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL NETWORK_HAS_CONTROL_OF_PICKUP(Pickup pickup) // 0x5BC9495F0B3B6FA6
function NETWORK.NETWORK_HAS_CONTROL_OF_PICKUP(pickup)
  return native.invoke(
    Type.Bool, 3065, false,
    arg(Type.Pickup, pickup)
  )
end

-- BOOL NETWORK_HAS_CONTROL_OF_DOOR(Hash doorHash) // 0xCB3C68ADB06195DF
function NETWORK.NETWORK_HAS_CONTROL_OF_DOOR(doorHash)
  return native.invoke(
    Type.Bool, 3066, false,
    arg(Type.Hash, doorHash)
  )
end

-- BOOL NETWORK_IS_DOOR_NETWORKED(Hash doorHash) // 0xC01E93FAC20C3346
function NETWORK.NETWORK_IS_DOOR_NETWORKED(doorHash)
  return native.invoke(
    Type.Bool, 3067, false,
    arg(Type.Hash, doorHash)
  )
end

-- int VEH_TO_NET(Vehicle vehicle) // 0xB4C94523F023419C
--[[
calls from vehicle to net.

--]]
function NETWORK.VEH_TO_NET(vehicle)
  return native.invoke(
    Type.Int, 3068, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- int PED_TO_NET(Ped ped) // 0x0EDEC3C276198689
--[[
gets the network id of a ped
--]]
function NETWORK.PED_TO_NET(ped)
  return native.invoke(
    Type.Int, 3069, false,
    arg(Type.Ped, ped)
  )
end

-- int OBJ_TO_NET(Object object) // 0x99BFDC94A603E541
--[[
Lets objects spawn online simply do it like this:

int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));
--]]
function NETWORK.OBJ_TO_NET(object)
  return native.invoke(
    Type.Int, 3070, false,
    arg(Type.Object, object)
  )
end

-- Vehicle NET_TO_VEH(int netHandle) // 0x367B936610BA360C
function NETWORK.NET_TO_VEH(netHandle)
  return native.invoke(
    Type.Vehicle, 3071, false,
    arg(Type.Int, netHandle)
  )
end

-- Ped NET_TO_PED(int netHandle) // 0xBDCD95FC216A8B3E
--[[
gets the ped id of a network id
--]]
function NETWORK.NET_TO_PED(netHandle)
  return native.invoke(
    Type.Ped, 3072, false,
    arg(Type.Int, netHandle)
  )
end

-- Object NET_TO_OBJ(int netHandle) // 0xD8515F5FEA14CB3F
--[[
gets the object id of a network id
--]]
function NETWORK.NET_TO_OBJ(netHandle)
  return native.invoke(
    Type.Object, 3073, false,
    arg(Type.Int, netHandle)
  )
end

-- Entity NET_TO_ENT(int netHandle) // 0xBFFEAB45A9A9094A
--[[
gets the entity id of a network id
--]]
function NETWORK.NET_TO_ENT(netHandle)
  return native.invoke(
    Type.Entity, 3074, false,
    arg(Type.Int, netHandle)
  )
end

-- void NETWORK_GET_LOCAL_HANDLE(Any* gamerHandle, int gamerHandleSize) // 0xE86051786B66CD8E
function NETWORK.NETWORK_GET_LOCAL_HANDLE(gamerHandle, gamerHandleSize)
  native.invoke(
    Type.Void, 3075, false,
    ref(Type.Any, gamerHandle),
    arg(Type.Int, gamerHandleSize)
  )
end

-- void NETWORK_HANDLE_FROM_USER_ID(const char* userId, Any* gamerHandle, int gamerHandleSize) // 0xDCD51DD8F87AEC5C
function NETWORK.NETWORK_HANDLE_FROM_USER_ID(userId, gamerHandle, gamerHandleSize)
  native.invoke(
    Type.Void, 3076, false,
    arg(Type.String, userId),
    ref(Type.Any, gamerHandle),
    arg(Type.Int, gamerHandleSize)
  )
end

-- void NETWORK_HANDLE_FROM_MEMBER_ID(const char* memberId, Any* gamerHandle, int gamerHandleSize) // 0xA0FD21BED61E5C4C
function NETWORK.NETWORK_HANDLE_FROM_MEMBER_ID(memberId, gamerHandle, gamerHandleSize)
  native.invoke(
    Type.Void, 3077, false,
    arg(Type.String, memberId),
    ref(Type.Any, gamerHandle),
    arg(Type.Int, gamerHandleSize)
  )
end

-- void NETWORK_HANDLE_FROM_PLAYER(Player player, Any* gamerHandle, int gamerHandleSize) // 0x388EB2B86C73B6B3
function NETWORK.NETWORK_HANDLE_FROM_PLAYER(player, gamerHandle, gamerHandleSize)
  native.invoke(
    Type.Void, 3078, false,
    arg(Type.Player, player),
    ref(Type.Any, gamerHandle),
    arg(Type.Int, gamerHandleSize)
  )
end

-- Hash NETWORK_HASH_FROM_PLAYER_HANDLE(Player player) // 0xBC1D768F2F5D6C05
function NETWORK.NETWORK_HASH_FROM_PLAYER_HANDLE(player)
  return native.invoke(
    Type.Hash, 3079, false,
    arg(Type.Player, player)
  )
end

-- Hash NETWORK_HASH_FROM_GAMER_HANDLE(Any* gamerHandle) // 0x58575AC3CF2CA8EC
function NETWORK.NETWORK_HASH_FROM_GAMER_HANDLE(gamerHandle)
  return native.invoke(
    Type.Hash, 3080, false,
    ref(Type.Any, gamerHandle)
  )
end

-- void NETWORK_HANDLE_FROM_FRIEND(int friendIndex, Any* gamerHandle, int gamerHandleSize) // 0xD45CB817D7E177D2
function NETWORK.NETWORK_HANDLE_FROM_FRIEND(friendIndex, gamerHandle, gamerHandleSize)
  native.invoke(
    Type.Void, 3081, false,
    arg(Type.Int, friendIndex),
    ref(Type.Any, gamerHandle),
    arg(Type.Int, gamerHandleSize)
  )
end

-- BOOL NETWORK_GAMERTAG_FROM_HANDLE_START(Any* gamerHandle) // 0x9F0C0A981D73FA56
function NETWORK.NETWORK_GAMERTAG_FROM_HANDLE_START(gamerHandle)
  return native.invoke(
    Type.Bool, 3082, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_GAMERTAG_FROM_HANDLE_PENDING() // 0xB071E27958EF4CF0
function NETWORK.NETWORK_GAMERTAG_FROM_HANDLE_PENDING()
  return native.invoke(
    Type.Bool, 3083, false
  )
end

-- BOOL NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED() // 0xFD00798DBA7523DD
function NETWORK.NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED()
  return native.invoke(
    Type.Bool, 3084, false
  )
end

-- const char* NETWORK_GET_GAMERTAG_FROM_HANDLE(Any* gamerHandle) // 0x426141162EBE5CDB
function NETWORK.NETWORK_GET_GAMERTAG_FROM_HANDLE(gamerHandle)
  return native.invoke(
    Type.String, 3085, false,
    ref(Type.Any, gamerHandle)
  )
end

-- int NETWORK_DISPLAYNAMES_FROM_HANDLES_START(Any* p0, Any p1) // 0xD66C9E72B3CC4982
--[[
Hardcoded to return -1.
--]]
function NETWORK.NETWORK_DISPLAYNAMES_FROM_HANDLES_START(p0, p1)
  return native.invoke(
    Type.Int, 3086, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- int NETWORK_GET_DISPLAYNAMES_FROM_HANDLES(Any p0, Any p1, Any p2) // 0x58CC181719256197
--[[
This function is hard-coded to always return 0.
--]]
function NETWORK.NETWORK_GET_DISPLAYNAMES_FROM_HANDLES(p0, p1, p2)
  return native.invoke(
    Type.Int, 3087, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL NETWORK_ARE_HANDLES_THE_SAME(Any* gamerHandle1, Any* gamerHandle2) // 0x57DBA049E110F217
function NETWORK.NETWORK_ARE_HANDLES_THE_SAME(gamerHandle1, gamerHandle2)
  return native.invoke(
    Type.Bool, 3088, false,
    ref(Type.Any, gamerHandle1),
    ref(Type.Any, gamerHandle2)
  )
end

-- BOOL NETWORK_IS_HANDLE_VALID(Any* gamerHandle, int gamerHandleSize) // 0x6F79B93B0A8E4133
function NETWORK.NETWORK_IS_HANDLE_VALID(gamerHandle, gamerHandleSize)
  return native.invoke(
    Type.Bool, 3089, false,
    ref(Type.Any, gamerHandle),
    arg(Type.Int, gamerHandleSize)
  )
end

-- Player NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(Any* gamerHandle) // 0xCE5F689CF5A0A49D
function NETWORK.NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(gamerHandle)
  return native.invoke(
    Type.Player, 3090, false,
    ref(Type.Any, gamerHandle)
  )
end

-- const char* NETWORK_MEMBER_ID_FROM_GAMER_HANDLE(Any* gamerHandle) // 0xC82630132081BB6F
function NETWORK.NETWORK_MEMBER_ID_FROM_GAMER_HANDLE(gamerHandle)
  return native.invoke(
    Type.String, 3091, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_IS_GAMER_IN_MY_SESSION(Any* gamerHandle) // 0x0F10B05DDF8D16E9
function NETWORK.NETWORK_IS_GAMER_IN_MY_SESSION(gamerHandle)
  return native.invoke(
    Type.Bool, 3092, false,
    ref(Type.Any, gamerHandle)
  )
end

-- void NETWORK_SHOW_PROFILE_UI(Any* gamerHandle) // 0x859ED1CEA343FCA8
function NETWORK.NETWORK_SHOW_PROFILE_UI(gamerHandle)
  native.invoke(
    Type.Void, 3093, false,
    ref(Type.Any, gamerHandle)
  )
end

-- const char* NETWORK_PLAYER_GET_NAME(Player player) // 0x7718D2E2060837D2
--[[
Returns the name of a given player. Returns "**Invalid**" if rlGamerInfo of the given player cannot be retrieved or the player doesn't exist.
--]]
function NETWORK.NETWORK_PLAYER_GET_NAME(player)
  return native.invoke(
    Type.String, 3094, false,
    arg(Type.Player, player)
  )
end

-- const char* NETWORK_PLAYER_GET_USERID(Player player, int* userID) // 0x4927FC39CD0869A0
--[[
Returns a string of the player's Rockstar Id. 
Takes a 24 char buffer. Returns the buffer or "**Invalid**" if rlGamerInfo of the given player cannot be retrieved or the player doesn't exist.
--]]
function NETWORK.NETWORK_PLAYER_GET_USERID(player, userID)
  return native.invoke(
    Type.String, 3095, false,
    arg(Type.Player, player),
    ref(Type.Int, userID)
  )
end

-- BOOL NETWORK_PLAYER_IS_ROCKSTAR_DEV(Player player) // 0x544ABDDA3B409B6D
--[[
Checks if a specific value (BYTE) in CNetGamePlayer is nonzero.
Returns always false in Singleplayer.

No longer used for dev checks since first mods were released on PS3 & 360.
R* now checks with the IS_DLC_PRESENT native for the dlc hash 2532323046,
if that is present it will unlock dev stuff.
--]]
function NETWORK.NETWORK_PLAYER_IS_ROCKSTAR_DEV(player)
  return native.invoke(
    Type.Bool, 3096, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_PLAYER_INDEX_IS_CHEATER(Player player) // 0x565E430DB3B05BEC
function NETWORK.NETWORK_PLAYER_INDEX_IS_CHEATER(player)
  return native.invoke(
    Type.Bool, 3097, false,
    arg(Type.Player, player)
  )
end

-- int NETWORK_ENTITY_GET_OBJECT_ID(Entity entity) // 0x815F18AD865F057F
function NETWORK.NETWORK_ENTITY_GET_OBJECT_ID(entity)
  return native.invoke(
    Type.Int, 3098, false,
    arg(Type.Entity, entity)
  )
end

-- Entity NETWORK_GET_ENTITY_FROM_OBJECT_ID(Any p0) // 0x37D5F739FD494675
--[[
I've had this return the player's ped handle sometimes, but also other random entities.
Whatever p0 is, it's at least not synced to other players.
At least not all the time, some p0 values actually output the same entity, (different handle of course, but same entity).
But another p0 value may return an entity for player x, but not for player y (it'll just return -1 even if the entity exists on both clients).

Returns an entity handle or -1, value changes based on p0's value.
--]]
function NETWORK.NETWORK_GET_ENTITY_FROM_OBJECT_ID(p0)
  return native.invoke(
    Type.Entity, 3099, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_IS_INACTIVE_PROFILE(Any* p0) // 0x7E58745504313A2E
function NETWORK.NETWORK_IS_INACTIVE_PROFILE(p0)
  return native.invoke(
    Type.Bool, 3100, false,
    ref(Type.Any, p0)
  )
end

-- int NETWORK_GET_MAX_FRIENDS() // 0xAFEBB0D5D8F687D2
function NETWORK.NETWORK_GET_MAX_FRIENDS()
  return native.invoke(
    Type.Int, 3101, false
  )
end

-- int NETWORK_GET_FRIEND_COUNT() // 0x203F1CFD823B27A4
function NETWORK.NETWORK_GET_FRIEND_COUNT()
  return native.invoke(
    Type.Int, 3102, false
  )
end

-- const char* NETWORK_GET_FRIEND_NAME(int friendIndex) // 0xE11EBBB2A783FE8B
function NETWORK.NETWORK_GET_FRIEND_NAME(friendIndex)
  return native.invoke(
    Type.String, 3103, false,
    arg(Type.Int, friendIndex)
  )
end

-- const char* NETWORK_GET_FRIEND_DISPLAY_NAME(int friendIndex) // 0x4164F227D052E293
function NETWORK.NETWORK_GET_FRIEND_DISPLAY_NAME(friendIndex)
  return native.invoke(
    Type.String, 3104, false,
    arg(Type.Int, friendIndex)
  )
end

-- BOOL NETWORK_IS_FRIEND_ONLINE(const char* name) // 0x425A44533437B64D
function NETWORK.NETWORK_IS_FRIEND_ONLINE(name)
  return native.invoke(
    Type.Bool, 3105, false,
    arg(Type.String, name)
  )
end

-- BOOL NETWORK_IS_FRIEND_HANDLE_ONLINE(Any* gamerHandle) // 0x87EB7A3FFCB314DB
function NETWORK.NETWORK_IS_FRIEND_HANDLE_ONLINE(gamerHandle)
  return native.invoke(
    Type.Bool, 3106, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_IS_FRIEND_IN_SAME_TITLE(const char* friendName) // 0x2EA9A3BEDF3F17B8
--[[
In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.
--]]
function NETWORK.NETWORK_IS_FRIEND_IN_SAME_TITLE(friendName)
  return native.invoke(
    Type.Bool, 3107, false,
    arg(Type.String, friendName)
  )
end

-- BOOL NETWORK_IS_FRIEND_IN_MULTIPLAYER(const char* friendName) // 0x57005C18827F3A28
function NETWORK.NETWORK_IS_FRIEND_IN_MULTIPLAYER(friendName)
  return native.invoke(
    Type.Bool, 3108, false,
    arg(Type.String, friendName)
  )
end

-- BOOL NETWORK_IS_FRIEND(Any* gamerHandle) // 0x1A24A179F9B31654
function NETWORK.NETWORK_IS_FRIEND(gamerHandle)
  return native.invoke(
    Type.Bool, 3109, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_IS_PENDING_FRIEND(Any p0) // 0x0BE73DA6984A6E33
--[[
This function is hard-coded to always return 0.
--]]
function NETWORK.NETWORK_IS_PENDING_FRIEND(p0)
  return native.invoke(
    Type.Bool, 3110, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_IS_ADDING_FRIEND() // 0x6EA101606F6E4D81
function NETWORK.NETWORK_IS_ADDING_FRIEND()
  return native.invoke(
    Type.Bool, 3111, false
  )
end

-- BOOL NETWORK_ADD_FRIEND(Any* gamerHandle, const char* message) // 0x8E02D73914064223
function NETWORK.NETWORK_ADD_FRIEND(gamerHandle, message)
  return native.invoke(
    Type.Bool, 3112, false,
    ref(Type.Any, gamerHandle),
    arg(Type.String, message)
  )
end

-- BOOL NETWORK_IS_FRIEND_INDEX_ONLINE(int friendIndex) // 0xBAD8F2A42B844821
function NETWORK.NETWORK_IS_FRIEND_INDEX_ONLINE(friendIndex)
  return native.invoke(
    Type.Bool, 3113, false,
    arg(Type.Int, friendIndex)
  )
end

-- void NETWORK_SET_PLAYER_IS_PASSIVE(BOOL toggle) // 0x1B857666604B1A74
function NETWORK.NETWORK_SET_PLAYER_IS_PASSIVE(toggle)
  native.invoke(
    Type.Void, 3114, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_GET_PLAYER_OWNS_WAYPOINT(Player player) // 0x82377B65E943F72D
function NETWORK.NETWORK_GET_PLAYER_OWNS_WAYPOINT(player)
  return native.invoke(
    Type.Bool, 3115, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_CAN_SET_WAYPOINT() // 0xC927EC229934AF60
function NETWORK.NETWORK_CAN_SET_WAYPOINT()
  return native.invoke(
    Type.Bool, 3116, false
  )
end

-- void NETWORK_IGNORE_REMOTE_WAYPOINTS() // 0x4C2A9FDC22377075
function NETWORK.NETWORK_IGNORE_REMOTE_WAYPOINTS()
  native.invoke(
    Type.Void, 3117, false
  )
end

-- BOOL _NETWORK_DOES_COMMUNICATION_GROUP_EXIST(int communicationType) // 0xDBDF80673BBA3D65
--[[
communicationType: 0 = VOICE; 1 = TEXT_CHAT; 2 = TEXT_MESSAGE; 3 = EMAIL; 4 = USER_CONTENT;  5 = USER_TEXT
--]]
function NETWORK._NETWORK_DOES_COMMUNICATION_GROUP_EXIST(communicationType)
  return native.invoke(
    Type.Bool, 3118, false,
    arg(Type.Int, communicationType)
  )
end

-- int _NETWORK_GET_COMMUNICATION_GROUP_FLAGS(int communicationType) // 0x40DF02F371F40883
--[[
Returns communicationGroupFlag
communicationType: see 0xDBDF80673BBA3D65

enum eCommunicationGroupFlag
{
	COMMUNICATION_GROUP_LOCAL_PLAYER = 1 << 0,
	COMMUNICATION_GROUP_FRIENDS = 1 << 1,
	COMMUNICATION_GROUP_SMALL_CREW = 1 << 2,
	COMMUNICATION_GROUP_LARGE_CREW = 1 << 3,
	COMMUNICATION_GROUP_RECENT_PLAYER = 1 << 4,
	COMMUNICATION_GROUP_SAME_SESSION = 1 << 5,
	COMMUNICATION_GROUP_SAME_TEAM = 1 << 6,
	COMMUNICATION_GROUP_INVALID = 1 << 7,
};
--]]
function NETWORK._NETWORK_GET_COMMUNICATION_GROUP_FLAGS(communicationType)
  return native.invoke(
    Type.Int, 3119, false,
    arg(Type.Int, communicationType)
  )
end

-- void _NETWORK_SET_COMMUNICATION_GROUP_FLAGS(int communicationType, int communicationGroupFlag) // 0xE549F846DE7D32D5
--[[
communicationType: see 0xDBDF80673BBA3D65
communicationGroupFlag: see 0x40DF02F371F40883
--]]
function NETWORK._NETWORK_SET_COMMUNICATION_GROUP_FLAGS(communicationType, communicationGroupFlag)
  native.invoke(
    Type.Void, 3120, false,
    arg(Type.Int, communicationType),
    arg(Type.Int, communicationGroupFlag)
  )
end

-- BOOL NETWORK_IS_PLAYER_ON_BLOCKLIST(Any* gamerHandle) // 0xAD4326FCA30D62F8
function NETWORK.NETWORK_IS_PLAYER_ON_BLOCKLIST(gamerHandle)
  return native.invoke(
    Type.Bool, 3121, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_SET_SCRIPT_AUTOMUTED(Any p0) // 0xB309EBEA797E001F
function NETWORK.NETWORK_SET_SCRIPT_AUTOMUTED(p0)
  return native.invoke(
    Type.Bool, 3122, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_HAS_AUTOMUTE_OVERRIDE() // 0x26F07DD83A5F7F98
function NETWORK.NETWORK_HAS_AUTOMUTE_OVERRIDE()
  return native.invoke(
    Type.Bool, 3123, false
  )
end

-- BOOL NETWORK_HAS_HEADSET() // 0xE870F9F1F7B4F1FA
function NETWORK.NETWORK_HAS_HEADSET()
  return native.invoke(
    Type.Bool, 3124, false
  )
end

-- void NETWORK_SET_LOOK_AT_TALKERS(BOOL p0) // 0x7D395EA61622E116
function NETWORK.NETWORK_SET_LOOK_AT_TALKERS(p0)
  native.invoke(
    Type.Void, 3125, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL NETWORK_IS_PUSH_TO_TALK_ACTIVE() // 0xC0D2AF00BCC234CA
function NETWORK.NETWORK_IS_PUSH_TO_TALK_ACTIVE()
  return native.invoke(
    Type.Bool, 3126, false
  )
end

-- BOOL NETWORK_GAMER_HAS_HEADSET(Any* gamerHandle) // 0xF2FD55CB574BCC55
function NETWORK.NETWORK_GAMER_HAS_HEADSET(gamerHandle)
  return native.invoke(
    Type.Bool, 3127, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_IS_GAMER_TALKING(Any* gamerHandle) // 0x71C33B22606CD88A
function NETWORK.NETWORK_IS_GAMER_TALKING(gamerHandle)
  return native.invoke(
    Type.Bool, 3128, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_PERMISSIONS_HAS_GAMER_RECORD(Any* gamerHandle) // 0x559EBF901A8C68E0
function NETWORK.NETWORK_PERMISSIONS_HAS_GAMER_RECORD(gamerHandle)
  return native.invoke(
    Type.Bool, 3129, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_COMMUNICATE_WITH_GAMER(Any* gamerHandle) // 0x8F5D1AD832AEB06C
function NETWORK.NETWORK_CAN_COMMUNICATE_WITH_GAMER(gamerHandle)
  return native.invoke(
    Type.Bool, 3130, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_TEXT_CHAT_WITH_GAMER(Any* gamerHandle) // 0xA150A4F065806B1F
function NETWORK.NETWORK_CAN_TEXT_CHAT_WITH_GAMER(gamerHandle)
  return native.invoke(
    Type.Bool, 3131, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_IS_GAMER_MUTED_BY_ME(Any* gamerHandle) // 0xCE60DE011B6C7978
function NETWORK.NETWORK_IS_GAMER_MUTED_BY_ME(gamerHandle)
  return native.invoke(
    Type.Bool, 3132, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_AM_I_MUTED_BY_GAMER(Any* gamerHandle) // 0xDF02A2C93F1F26DA
function NETWORK.NETWORK_AM_I_MUTED_BY_GAMER(gamerHandle)
  return native.invoke(
    Type.Bool, 3133, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_IS_GAMER_BLOCKED_BY_ME(Any* gamerHandle) // 0xE944C4F5AF1B5883
function NETWORK.NETWORK_IS_GAMER_BLOCKED_BY_ME(gamerHandle)
  return native.invoke(
    Type.Bool, 3134, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_AM_I_BLOCKED_BY_GAMER(Any* gamerHandle) // 0x15337C7C268A27B2
function NETWORK.NETWORK_AM_I_BLOCKED_BY_GAMER(gamerHandle)
  return native.invoke(
    Type.Bool, 3135, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_VIEW_GAMER_USER_CONTENT(Any* gamerHandle) // 0xB57A49545BA53CE7
function NETWORK.NETWORK_CAN_VIEW_GAMER_USER_CONTENT(gamerHandle)
  return native.invoke(
    Type.Bool, 3136, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_HAS_VIEW_GAMER_USER_CONTENT_RESULT(Any* gamerHandle) // 0xCCA4318E1AB03F1F
function NETWORK.NETWORK_HAS_VIEW_GAMER_USER_CONTENT_RESULT(gamerHandle)
  return native.invoke(
    Type.Bool, 3137, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_PLAY_MULTIPLAYER_WITH_GAMER(Any* gamerHandle) // 0x07DD29D5E22763F1
function NETWORK.NETWORK_CAN_PLAY_MULTIPLAYER_WITH_GAMER(gamerHandle)
  return native.invoke(
    Type.Bool, 3138, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_GAMER_PLAY_MULTIPLAYER_WITH_ME(Any* gamerHandle) // 0x135F9B7B7ADD2185
function NETWORK.NETWORK_CAN_GAMER_PLAY_MULTIPLAYER_WITH_ME(gamerHandle)
  return native.invoke(
    Type.Bool, 3139, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_SEND_LOCAL_INVITE(Any* gamerHandle) // 0x021ABCBD98EC4320
function NETWORK.NETWORK_CAN_SEND_LOCAL_INVITE(gamerHandle)
  return native.invoke(
    Type.Bool, 3140, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CAN_RECEIVE_LOCAL_INVITE(Any* gamerHandle) // 0x421E34C55F125964
function NETWORK.NETWORK_CAN_RECEIVE_LOCAL_INVITE(gamerHandle)
  return native.invoke(
    Type.Bool, 3141, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_IS_PLAYER_TALKING(Player player) // 0x031E11F3D447647E
--[[
returns true if someone is screaming or talking in a microphone
--]]
function NETWORK.NETWORK_IS_PLAYER_TALKING(player)
  return native.invoke(
    Type.Bool, 3142, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_PLAYER_HAS_HEADSET(Player player) // 0x3FB99A8B08D18FD6
function NETWORK.NETWORK_PLAYER_HAS_HEADSET(player)
  return native.invoke(
    Type.Bool, 3143, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_IS_PLAYER_MUTED_BY_ME(Player player) // 0x8C71288AE68EDE39
function NETWORK.NETWORK_IS_PLAYER_MUTED_BY_ME(player)
  return native.invoke(
    Type.Bool, 3144, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_AM_I_MUTED_BY_PLAYER(Player player) // 0x9D6981DFC91A8604
function NETWORK.NETWORK_AM_I_MUTED_BY_PLAYER(player)
  return native.invoke(
    Type.Bool, 3145, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_IS_PLAYER_BLOCKED_BY_ME(Player player) // 0x57AF1F8E27483721
function NETWORK.NETWORK_IS_PLAYER_BLOCKED_BY_ME(player)
  return native.invoke(
    Type.Bool, 3146, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_AM_I_BLOCKED_BY_PLAYER(Player player) // 0x87F395D957D4353D
function NETWORK.NETWORK_AM_I_BLOCKED_BY_PLAYER(player)
  return native.invoke(
    Type.Bool, 3147, false,
    arg(Type.Player, player)
  )
end

-- float NETWORK_GET_PLAYER_LOUDNESS(Player player) // 0x21A1684A25C2867F
function NETWORK.NETWORK_GET_PLAYER_LOUDNESS(player)
  return native.invoke(
    Type.Float, 3148, false,
    arg(Type.Player, player)
  )
end

-- void NETWORK_SET_TALKER_PROXIMITY(float value) // 0xCBF12D65F95AD686
function NETWORK.NETWORK_SET_TALKER_PROXIMITY(value)
  native.invoke(
    Type.Void, 3149, false,
    arg(Type.Float, value)
  )
end

-- float NETWORK_GET_TALKER_PROXIMITY() // 0x84F0F13120B4E098
function NETWORK.NETWORK_GET_TALKER_PROXIMITY()
  return native.invoke(
    Type.Float, 3150, false
  )
end

-- void NETWORK_SET_VOICE_ACTIVE(BOOL toggle) // 0xBABEC9E69A91C57B
function NETWORK.NETWORK_SET_VOICE_ACTIVE(toggle)
  native.invoke(
    Type.Void, 3151, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_REMAIN_IN_GAME_CHAT(BOOL p0) // 0xCFEB46DCD7D8D5EB
function NETWORK.NETWORK_REMAIN_IN_GAME_CHAT(p0)
  native.invoke(
    Type.Void, 3152, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_OVERRIDE_TRANSITION_CHAT(BOOL p0) // 0xAF66059A131AA269
function NETWORK.NETWORK_OVERRIDE_TRANSITION_CHAT(p0)
  native.invoke(
    Type.Void, 3153, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_SET_TEAM_ONLY_CHAT(BOOL toggle) // 0xD5B4883AC32F24C3
function NETWORK.NETWORK_SET_TEAM_ONLY_CHAT(toggle)
  native.invoke(
    Type.Void, 3154, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_SCRIPT_CONTROLLING_TEAMS(Any p0) // 0x265559DA40B3F327
function NETWORK.NETWORK_SET_SCRIPT_CONTROLLING_TEAMS(p0)
  native.invoke(
    Type.Void, 3155, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_SET_SAME_TEAM_AS_LOCAL_PLAYER(Any p0, Any p1) // 0x4348BFDA56023A2F
function NETWORK.NETWORK_SET_SAME_TEAM_AS_LOCAL_PLAYER(p0, p1)
  return native.invoke(
    Type.Bool, 3156, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_OVERRIDE_TEAM_RESTRICTIONS(int team, BOOL toggle) // 0x6F697A66CE78674E
function NETWORK.NETWORK_OVERRIDE_TEAM_RESTRICTIONS(team, toggle)
  native.invoke(
    Type.Void, 3157, false,
    arg(Type.Int, team),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_OVERRIDE_SPECTATOR_MODE(BOOL toggle) // 0x70DA3BF8DACD3210
function NETWORK.NETWORK_SET_OVERRIDE_SPECTATOR_MODE(toggle)
  native.invoke(
    Type.Void, 3158, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_OVERRIDE_TUTORIAL_SESSION_CHAT(BOOL toggle) // 0x3C5C1E2C2FF814B1
function NETWORK.NETWORK_SET_OVERRIDE_TUTORIAL_SESSION_CHAT(toggle)
  native.invoke(
    Type.Void, 3159, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_PROXIMITY_AFFECTS_TEAM(BOOL toggle) // 0x9D7AFCBF21C51712
function NETWORK.NETWORK_SET_PROXIMITY_AFFECTS_TEAM(toggle)
  native.invoke(
    Type.Void, 3160, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_NO_SPECTATOR_CHAT(BOOL toggle) // 0xF46A1E03E8755980
function NETWORK.NETWORK_SET_NO_SPECTATOR_CHAT(toggle)
  native.invoke(
    Type.Void, 3161, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_IGNORE_SPECTATOR_CHAT_LIMITS_SAME_TEAM(BOOL toggle) // 0x6A5D89D7769A40D8
function NETWORK.NETWORK_SET_IGNORE_SPECTATOR_CHAT_LIMITS_SAME_TEAM(toggle)
  native.invoke(
    Type.Void, 3162, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_OVERRIDE_CHAT_RESTRICTIONS(Player player, BOOL toggle) // 0x3039AE5AD2C9C0C4
--[[
Could possibly bypass being muted or automatically muted
--]]
function NETWORK.NETWORK_OVERRIDE_CHAT_RESTRICTIONS(player, toggle)
  native.invoke(
    Type.Void, 3163, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_OVERRIDE_SEND_RESTRICTIONS(Player player, BOOL toggle) // 0x97DD4C5944CC2E6A
--[[
This is used alongside the native,
'NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS'. Read its description for more info.
--]]
function NETWORK.NETWORK_OVERRIDE_SEND_RESTRICTIONS(player, toggle)
  native.invoke(
    Type.Void, 3164, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_OVERRIDE_SEND_RESTRICTIONS_ALL(BOOL toggle) // 0x57B192B4D4AD23D5
function NETWORK.NETWORK_OVERRIDE_SEND_RESTRICTIONS_ALL(toggle)
  native.invoke(
    Type.Void, 3165, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS(Player player, BOOL toggle) // 0xDDF73E2B1FEC5AB4
--[[
R* uses this to hear all player when spectating. 
It allows you to hear other online players when their chat is on none, crew and or friends
--]]
function NETWORK.NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS(player, toggle)
  native.invoke(
    Type.Void, 3166, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS_ALL(BOOL toggle) // 0x0FF2862B61A58AF9
--[[
p0 is always false in scripts.
--]]
function NETWORK.NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS_ALL(toggle)
  native.invoke(
    Type.Void, 3167, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_VOICE_CHANNEL(int channel) // 0xEF6212C2EFEF1A23
function NETWORK.NETWORK_SET_VOICE_CHANNEL(channel)
  native.invoke(
    Type.Void, 3168, false,
    arg(Type.Int, channel)
  )
end

-- void NETWORK_CLEAR_VOICE_CHANNEL() // 0xE036A705F989E049
function NETWORK.NETWORK_CLEAR_VOICE_CHANNEL()
  native.invoke(
    Type.Void, 3169, false
  )
end

-- void NETWORK_APPLY_VOICE_PROXIMITY_OVERRIDE(float x, float y, float z) // 0xDBD2056652689917
function NETWORK.NETWORK_APPLY_VOICE_PROXIMITY_OVERRIDE(x, y, z)
  native.invoke(
    Type.Void, 3170, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void NETWORK_CLEAR_VOICE_PROXIMITY_OVERRIDE() // 0xF03755696450470C
function NETWORK.NETWORK_CLEAR_VOICE_PROXIMITY_OVERRIDE()
  native.invoke(
    Type.Void, 3171, false
  )
end

-- void NETWORK_ENABLE_VOICE_BANDWIDTH_RESTRICTION(Player player) // 0x5E3AA4CA2B6FB0EE
function NETWORK.NETWORK_ENABLE_VOICE_BANDWIDTH_RESTRICTION(player)
  native.invoke(
    Type.Void, 3172, false,
    arg(Type.Player, player)
  )
end

-- void NETWORK_DISABLE_VOICE_BANDWIDTH_RESTRICTION(Player player) // 0xCA575C391FEA25CC
function NETWORK.NETWORK_DISABLE_VOICE_BANDWIDTH_RESTRICTION(player)
  native.invoke(
    Type.Void, 3173, false,
    arg(Type.Player, player)
  )
end

-- void NETWORK_GET_MUTE_COUNT_FOR_PLAYER(Player p0, float* p1, float* p2) // 0xADB57E5B663CCA8B
--[[
NETWORK_GET_M[A-U]
--]]
function NETWORK.NETWORK_GET_MUTE_COUNT_FOR_PLAYER(p0, p1, p2)
  native.invoke(
    Type.Void, 3174, false,
    arg(Type.Player, p0),
    ref(Type.Float, p1),
    ref(Type.Float, p2)
  )
end

-- void NETWORK_SET_SPECTATOR_TO_NON_SPECTATOR_TEXT_CHAT(BOOL toggle) // 0x8EF52ACAECC51D9C
function NETWORK.NETWORK_SET_SPECTATOR_TO_NON_SPECTATOR_TEXT_CHAT(toggle)
  native.invoke(
    Type.Void, 3175, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_TEXT_CHAT_IS_TYPING() // 0x5FCF4D7069B09026
--[[
Same as _IS_TEXT_CHAT_ACTIVE, except it does not check if the text chat HUD component is initialized, and therefore may crash.
--]]
function NETWORK.NETWORK_TEXT_CHAT_IS_TYPING()
  return native.invoke(
    Type.Bool, 3176, false
  )
end

-- void SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME() // 0x593850C16A36B692
--[[
Starts a new singleplayer game (at the prologue).
--]]
function NETWORK.SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME()
  native.invoke(
    Type.Void, 3177, false
  )
end

-- BOOL SHUTDOWN_AND_LOAD_MOST_RECENT_SAVE() // 0x9ECA15ADFE141431
--[[
In singleplayer this will re-load your game.

In FiveM / GTA:Online this disconnects you from the session, and starts loading single player, however you still remain connected to the server (only if you're the host, if you're not then you also (most likely) get disconnected from the server) and other players will not be able to join until you exit the game.

You might need to DoScreenFadeIn and ShutdownLoadingScreen otherwise you probably won't end up loading into SP at all.

Somewhat related note: opening the pause menu after loading into this 'singleplayer' mode crashes the game.
--]]
function NETWORK.SHUTDOWN_AND_LOAD_MOST_RECENT_SAVE()
  return native.invoke(
    Type.Bool, 3178, false
  )
end

-- void NETWORK_SET_FRIENDLY_FIRE_OPTION(BOOL toggle) // 0xF808475FA571D823
function NETWORK.NETWORK_SET_FRIENDLY_FIRE_OPTION(toggle)
  native.invoke(
    Type.Void, 3179, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_RICH_PRESENCE(int p0, int p1, Any p2, Any p3) // 0x1DCCACDCFC569362
--[[
This native does absolutely nothing, just a nullsub
--]]
function NETWORK.NETWORK_SET_RICH_PRESENCE(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 3180, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- void NETWORK_SET_RICH_PRESENCE_STRING(int p0, const char* textLabel) // 0x3E200C2BCF4164EB
--[[
This native does absolutely nothing, just a nullsub
--]]
function NETWORK.NETWORK_SET_RICH_PRESENCE_STRING(p0, textLabel)
  native.invoke(
    Type.Void, 3181, false,
    arg(Type.Int, p0),
    arg(Type.String, textLabel)
  )
end

-- int NETWORK_GET_TIMEOUT_TIME() // 0x5ED0356A0CE3A34F
function NETWORK.NETWORK_GET_TIMEOUT_TIME()
  return native.invoke(
    Type.Int, 3182, false
  )
end

-- void NETWORK_LEAVE_PED_BEHIND_BEFORE_WARP(Player player, float x, float y, float z, BOOL p4, BOOL p5) // 0x9769F811D1785B03
--[[
p4 and p5 are always 0 in scripts
--]]
function NETWORK.NETWORK_LEAVE_PED_BEHIND_BEFORE_WARP(player, x, y, z, p4, p5)
  native.invoke(
    Type.Void, 3183, false,
    arg(Type.Player, player),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Bool, p4),
    arg(Type.Bool, p5)
  )
end

-- void NETWORK_LEAVE_PED_BEHIND_BEFORE_CUTSCENE(Player player, BOOL p1) // 0xBF22E0F32968E967
function NETWORK.NETWORK_LEAVE_PED_BEHIND_BEFORE_CUTSCENE(player, p1)
  native.invoke(
    Type.Void, 3184, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1)
  )
end

-- void REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY(Entity entity, Ped ped) // 0x715135F4B82AC90D
--[[
entity must be a valid entity; ped can be NULL
--]]
function NETWORK.REMOVE_ALL_STICKY_BOMBS_FROM_ENTITY(entity, ped)
  native.invoke(
    Type.Void, 3185, false,
    arg(Type.Entity, entity),
    arg(Type.Ped, ped)
  )
end

-- void NETWORK_KEEP_ENTITY_COLLISION_DISABLED_AFTER_ANIM_SCENE(Any p0, Any p1) // 0x17C9E241111A674D
function NETWORK.NETWORK_KEEP_ENTITY_COLLISION_DISABLED_AFTER_ANIM_SCENE(p0, p1)
  native.invoke(
    Type.Void, 3186, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL NETWORK_IS_ANY_PLAYER_NEAR(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6) // 0x2E4C123D1C8A710E
function NETWORK.NETWORK_IS_ANY_PLAYER_NEAR(p0, p1, p2, p3, p4, p5, p6)
  return native.invoke(
    Type.Bool, 3187, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5),
    arg(Type.Any, p6)
  )
end

-- BOOL NETWORK_CLAN_SERVICE_IS_VALID() // 0x579CCED0265D4896
function NETWORK.NETWORK_CLAN_SERVICE_IS_VALID()
  return native.invoke(
    Type.Bool, 3188, false
  )
end

-- BOOL NETWORK_CLAN_PLAYER_IS_ACTIVE(Any* gamerHandle) // 0xB124B57F571D8F18
function NETWORK.NETWORK_CLAN_PLAYER_IS_ACTIVE(gamerHandle)
  return native.invoke(
    Type.Bool, 3189, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CLAN_PLAYER_GET_DESC(Any* clanDesc, int bufferSize, Any* gamerHandle) // 0xEEE6EACBE8874FBA
--[[
bufferSize is 35 in the scripts.

bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.

the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]

https://pastebin.com/cSZniHak
--]]
function NETWORK.NETWORK_CLAN_PLAYER_GET_DESC(clanDesc, bufferSize, gamerHandle)
  return native.invoke(
    Type.Bool, 3190, false,
    ref(Type.Any, clanDesc),
    arg(Type.Int, bufferSize),
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CLAN_IS_ROCKSTAR_CLAN(Any* clanDesc, int bufferSize) // 0x7543BB439F63792B
--[[
bufferSize is 35 in the scripts.
--]]
function NETWORK.NETWORK_CLAN_IS_ROCKSTAR_CLAN(clanDesc, bufferSize)
  return native.invoke(
    Type.Bool, 3191, false,
    ref(Type.Any, clanDesc),
    arg(Type.Int, bufferSize)
  )
end

-- void NETWORK_CLAN_GET_UI_FORMATTED_TAG(Any* clanDesc, int bufferSize, char* formattedTag) // 0xF45352426FF3A4F0
--[[
bufferSize is 35 in the scripts.
--]]
function NETWORK.NETWORK_CLAN_GET_UI_FORMATTED_TAG(clanDesc, bufferSize, formattedTag)
  native.invoke(
    Type.Void, 3192, false,
    ref(Type.Any, clanDesc),
    arg(Type.Int, bufferSize),
    ref(Type.Char, formattedTag)
  )
end

-- int NETWORK_CLAN_GET_LOCAL_MEMBERSHIPS_COUNT() // 0x1F471B79ACC90BEF
function NETWORK.NETWORK_CLAN_GET_LOCAL_MEMBERSHIPS_COUNT()
  return native.invoke(
    Type.Int, 3193, false
  )
end

-- BOOL NETWORK_CLAN_GET_MEMBERSHIP_DESC(Any* memberDesc, int p1) // 0x48DE78AF2C8885B8
function NETWORK.NETWORK_CLAN_GET_MEMBERSHIP_DESC(memberDesc, p1)
  return native.invoke(
    Type.Bool, 3194, false,
    ref(Type.Any, memberDesc),
    arg(Type.Int, p1)
  )
end

-- BOOL NETWORK_CLAN_DOWNLOAD_MEMBERSHIP(Any* gamerHandle) // 0xA989044E70010ABE
function NETWORK.NETWORK_CLAN_DOWNLOAD_MEMBERSHIP(gamerHandle)
  return native.invoke(
    Type.Bool, 3195, false,
    ref(Type.Any, gamerHandle)
  )
end

-- BOOL NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING(Any* p0) // 0x5B9E023DC6EBEDC0
function NETWORK.NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING(p0)
  return native.invoke(
    Type.Bool, 3196, false,
    ref(Type.Any, p0)
  )
end

-- BOOL NETWORK_CLAN_ANY_DOWNLOAD_MEMBERSHIP_PENDING() // 0xB3F64A6A91432477
function NETWORK.NETWORK_CLAN_ANY_DOWNLOAD_MEMBERSHIP_PENDING()
  return native.invoke(
    Type.Bool, 3197, false
  )
end

-- BOOL NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE(int* p0) // 0xBB6E6FEE99D866B2
function NETWORK.NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE(p0)
  return native.invoke(
    Type.Bool, 3198, false,
    ref(Type.Int, p0)
  )
end

-- int NETWORK_CLAN_GET_MEMBERSHIP_COUNT(int* p0) // 0xAAB11F6C4ADBC2C1
function NETWORK.NETWORK_CLAN_GET_MEMBERSHIP_COUNT(p0)
  return native.invoke(
    Type.Int, 3199, false,
    ref(Type.Int, p0)
  )
end

-- BOOL NETWORK_CLAN_GET_MEMBERSHIP_VALID(int* p0, Any p1) // 0x48A59CF88D43DF0E
function NETWORK.NETWORK_CLAN_GET_MEMBERSHIP_VALID(p0, p1)
  return native.invoke(
    Type.Bool, 3200, false,
    ref(Type.Int, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL NETWORK_CLAN_GET_MEMBERSHIP(int* p0, Any* clanMembership, int p2) // 0xC8BC2011F67B3411
function NETWORK.NETWORK_CLAN_GET_MEMBERSHIP(p0, clanMembership, p2)
  return native.invoke(
    Type.Bool, 3201, false,
    ref(Type.Int, p0),
    ref(Type.Any, clanMembership),
    arg(Type.Int, p2)
  )
end

-- BOOL NETWORK_CLAN_JOIN(int clanDesc) // 0x9FAAA4F4FC71F87F
function NETWORK.NETWORK_CLAN_JOIN(clanDesc)
  return native.invoke(
    Type.Bool, 3202, false,
    arg(Type.Int, clanDesc)
  )
end

-- BOOL NETWORK_CLAN_CREWINFO_GET_STRING_VALUE(const char* animDict, const char* animName) // 0x729E3401F0430686
--[[
Only documented...

Full list of animation dictionaries and anims by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/animDictsCompact.json
--]]
function NETWORK.NETWORK_CLAN_CREWINFO_GET_STRING_VALUE(animDict, animName)
  return native.invoke(
    Type.Bool, 3203, false,
    arg(Type.String, animDict),
    arg(Type.String, animName)
  )
end

-- BOOL NETWORK_CLAN_CREWINFO_GET_CREWRANKTITLE(int p0, const char* p1) // 0x2B51EDBEFC301339
function NETWORK.NETWORK_CLAN_CREWINFO_GET_CREWRANKTITLE(p0, p1)
  return native.invoke(
    Type.Bool, 3204, false,
    arg(Type.Int, p0),
    arg(Type.String, p1)
  )
end

-- BOOL NETWORK_CLAN_HAS_CREWINFO_METADATA_BEEN_RECEIVED() // 0xC32EA7A2F6CA7557
function NETWORK.NETWORK_CLAN_HAS_CREWINFO_METADATA_BEEN_RECEIVED()
  return native.invoke(
    Type.Bool, 3205, false
  )
end

-- BOOL NETWORK_CLAN_GET_EMBLEM_TXD_NAME(Any* netHandle, char* txdName) // 0x5835D9CD92E83184
function NETWORK.NETWORK_CLAN_GET_EMBLEM_TXD_NAME(netHandle, txdName)
  return native.invoke(
    Type.Bool, 3206, false,
    ref(Type.Any, netHandle),
    ref(Type.Char, txdName)
  )
end

-- BOOL NETWORK_CLAN_REQUEST_EMBLEM(Any p0) // 0x13518FF1C6B28938
function NETWORK.NETWORK_CLAN_REQUEST_EMBLEM(p0)
  return native.invoke(
    Type.Bool, 3207, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_CLAN_IS_EMBLEM_READY(Any p0, Any* p1) // 0xA134777FF7F33331
function NETWORK.NETWORK_CLAN_IS_EMBLEM_READY(p0, p1)
  return native.invoke(
    Type.Bool, 3208, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- void NETWORK_CLAN_RELEASE_EMBLEM(Any p0) // 0x113E6E3E50E286B0
function NETWORK.NETWORK_CLAN_RELEASE_EMBLEM(p0)
  native.invoke(
    Type.Void, 3209, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR() // 0x9AA46BADAD0E27ED
function NETWORK.NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR()
  return native.invoke(
    Type.Bool, 3210, false
  )
end

-- void NETWORK_GET_PRIMARY_CLAN_DATA_CANCEL() // 0x042E4B70B93E6054
function NETWORK.NETWORK_GET_PRIMARY_CLAN_DATA_CANCEL()
  native.invoke(
    Type.Void, 3211, false
  )
end

-- BOOL NETWORK_GET_PRIMARY_CLAN_DATA_START(Any* p0, Any p1) // 0xCE86D8191B762107
function NETWORK.NETWORK_GET_PRIMARY_CLAN_DATA_START(p0, p1)
  return native.invoke(
    Type.Bool, 3212, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL NETWORK_GET_PRIMARY_CLAN_DATA_PENDING() // 0xB5074DB804E28CE7
function NETWORK.NETWORK_GET_PRIMARY_CLAN_DATA_PENDING()
  return native.invoke(
    Type.Bool, 3213, false
  )
end

-- BOOL NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS() // 0x5B4F04F19376A0BA
function NETWORK.NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS()
  return native.invoke(
    Type.Bool, 3214, false
  )
end

-- BOOL NETWORK_GET_PRIMARY_CLAN_DATA_NEW(Any* p0, Any* p1) // 0xC080FF658B2E41DA
function NETWORK.NETWORK_GET_PRIMARY_CLAN_DATA_NEW(p0, p1)
  return native.invoke(
    Type.Bool, 3215, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- void SET_NETWORK_ID_CAN_MIGRATE(int netId, BOOL toggle) // 0x299EEB23175895FC
--[[
Whether or not another player is allowed to take control of the entity
--]]
function NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netId, toggle)
  native.invoke(
    Type.Void, 3216, false,
    arg(Type.Int, netId),
    arg(Type.Bool, toggle)
  )
end

-- void SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(int netId, BOOL toggle) // 0xE05E81A888FA63C8
function NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(netId, toggle)
  native.invoke(
    Type.Void, 3217, false,
    arg(Type.Int, netId),
    arg(Type.Bool, toggle)
  )
end

-- void SET_NETWORK_ID_ALWAYS_EXISTS_FOR_PLAYER(int netId, Player player, BOOL toggle) // 0xA8A024587329F36A
function NETWORK.SET_NETWORK_ID_ALWAYS_EXISTS_FOR_PLAYER(netId, player, toggle)
  native.invoke(
    Type.Void, 3218, false,
    arg(Type.Int, netId),
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- void SET_NETWORK_ID_CAN_BE_REASSIGNED(int netId, BOOL toggle) // 0x9D724B400A7E8FFC
--[[
"No Reassign" in CPhysicalScriptGameStateDataNode
--]]
function NETWORK.SET_NETWORK_ID_CAN_BE_REASSIGNED(netId, toggle)
  native.invoke(
    Type.Void, 3219, false,
    arg(Type.Int, netId),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_ENTITY_CAN_BLEND(Entity entity, BOOL toggle) // 0xD830567D88A1E873
function NETWORK.NETWORK_SET_ENTITY_CAN_BLEND(entity, toggle)
  native.invoke(
    Type.Void, 3220, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_OBJECT_CAN_BLEND_WHEN_FIXED(Object object, BOOL toggle) // 0x0379DAF89BA09AA5
function NETWORK.NETWORK_SET_OBJECT_CAN_BLEND_WHEN_FIXED(object, toggle)
  native.invoke(
    Type.Void, 3221, false,
    arg(Type.Object, object),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_ENTITY_ONLY_EXISTS_FOR_PARTICIPANTS(Entity entity, BOOL toggle) // 0xF1CA12B18AEF5298
--[[
if set to true other network players can't see it
if set to false other network player can see it
=========================================
^^ I attempted this by grabbing an object with GET_ENTITY_PLAYER_IS_FREE_AIMING_AT and setting this naive no matter the toggle he could still see it.

pc or last gen?

^^ last-gen
--]]
function NETWORK.NETWORK_SET_ENTITY_ONLY_EXISTS_FOR_PARTICIPANTS(entity, toggle)
  native.invoke(
    Type.Void, 3222, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_NETWORK_ID_VISIBLE_IN_CUTSCENE(int netId, BOOL p1, BOOL p2) // 0xA6928482543022B4
function NETWORK.SET_NETWORK_ID_VISIBLE_IN_CUTSCENE(netId, p1, p2)
  native.invoke(
    Type.Void, 3223, false,
    arg(Type.Int, netId),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void SET_NETWORK_ID_VISIBLE_IN_CUTSCENE_HACK(int netId, BOOL p1, BOOL p2) // 0x32EBD154CB6B8B99
function NETWORK.SET_NETWORK_ID_VISIBLE_IN_CUTSCENE_HACK(netId, p1, p2)
  native.invoke(
    Type.Void, 3224, false,
    arg(Type.Int, netId),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void SET_NETWORK_ID_VISIBLE_IN_CUTSCENE_REMAIN_HACK(Any p0, Any p1, Any p2) // 0x76B3F29D3F967692
function NETWORK.SET_NETWORK_ID_VISIBLE_IN_CUTSCENE_REMAIN_HACK(p0, p1, p2)
  native.invoke(
    Type.Void, 3225, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- void SET_NETWORK_CUTSCENE_ENTITIES(BOOL toggle) // 0xAAA553E7DD28A457
function NETWORK.SET_NETWORK_CUTSCENE_ENTITIES(toggle)
  native.invoke(
    Type.Void, 3226, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL ARE_CUTSCENE_ENTITIES_NETWORKED() // 0x66D6A5E9C511214A
--[[
Getter for SET_NETWORK_CUTSCENE_ENTITIES.
--]]
function NETWORK.ARE_CUTSCENE_ENTITIES_NETWORKED()
  return native.invoke(
    Type.Bool, 3227, false
  )
end

-- void SET_NETWORK_ID_PASS_CONTROL_IN_TUTORIAL(int netId, BOOL state) // 0x3FA36981311FA4FF
function NETWORK.SET_NETWORK_ID_PASS_CONTROL_IN_TUTORIAL(netId, state)
  native.invoke(
    Type.Void, 3228, false,
    arg(Type.Int, netId),
    arg(Type.Bool, state)
  )
end

-- BOOL IS_NETWORK_ID_OWNED_BY_PARTICIPANT(int netId) // 0xA1607996431332DF
function NETWORK.IS_NETWORK_ID_OWNED_BY_PARTICIPANT(netId)
  return native.invoke(
    Type.Bool, 3229, false,
    arg(Type.Int, netId)
  )
end

-- void SET_REMOTE_PLAYER_VISIBLE_IN_CUTSCENE(Player player, BOOL locallyVisible) // 0x96320E6549DAE7B4
function NETWORK.SET_REMOTE_PLAYER_VISIBLE_IN_CUTSCENE(player, locallyVisible)
  native.invoke(
    Type.Void, 3230, false,
    arg(Type.Player, player),
    arg(Type.Bool, locallyVisible)
  )
end

-- void SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE(BOOL p0, BOOL p1) // 0xD1065D68947E7B6E
function NETWORK.SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE(p0, p1)
  native.invoke(
    Type.Void, 3231, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_LOCAL_PLAYER_INVISIBLE_LOCALLY(BOOL bIncludePlayersVehicle) // 0xE5F773C1A1D9D168
function NETWORK.SET_LOCAL_PLAYER_INVISIBLE_LOCALLY(bIncludePlayersVehicle)
  native.invoke(
    Type.Void, 3232, false,
    arg(Type.Bool, bIncludePlayersVehicle)
  )
end

-- void SET_LOCAL_PLAYER_VISIBLE_LOCALLY(BOOL bIncludePlayersVehicle) // 0x7619364C82D3BF14
function NETWORK.SET_LOCAL_PLAYER_VISIBLE_LOCALLY(bIncludePlayersVehicle)
  native.invoke(
    Type.Void, 3233, false,
    arg(Type.Bool, bIncludePlayersVehicle)
  )
end

-- void SET_PLAYER_INVISIBLE_LOCALLY(Player player, BOOL bIncludePlayersVehicle) // 0x12B37D54667DB0B8
function NETWORK.SET_PLAYER_INVISIBLE_LOCALLY(player, bIncludePlayersVehicle)
  native.invoke(
    Type.Void, 3234, false,
    arg(Type.Player, player),
    arg(Type.Bool, bIncludePlayersVehicle)
  )
end

-- void SET_PLAYER_VISIBLE_LOCALLY(Player player, BOOL bIncludePlayersVehicle) // 0xFAA10F1FAFB11AF2
function NETWORK.SET_PLAYER_VISIBLE_LOCALLY(player, bIncludePlayersVehicle)
  native.invoke(
    Type.Void, 3235, false,
    arg(Type.Player, player),
    arg(Type.Bool, bIncludePlayersVehicle)
  )
end

-- void FADE_OUT_LOCAL_PLAYER(BOOL p0) // 0x416DBD4CD6ED8DD2
--[[
Hardcoded to not work in SP.
--]]
function NETWORK.FADE_OUT_LOCAL_PLAYER(p0)
  native.invoke(
    Type.Void, 3236, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_FADE_OUT_ENTITY(Entity entity, BOOL normal, BOOL slow) // 0xDE564951F95E09ED
--[[
normal - transition like when your coming out of LSC
slow - transition like when you walk into a mission
 
--]]
function NETWORK.NETWORK_FADE_OUT_ENTITY(entity, normal, slow)
  native.invoke(
    Type.Void, 3237, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, normal),
    arg(Type.Bool, slow)
  )
end

-- void NETWORK_FADE_IN_ENTITY(Entity entity, BOOL state, Any p2) // 0x1F4ED342ACEFE62D
--[[
state - 0 does 5 fades
state - 1 does 6 fades

p3: setting to 1 made vehicle fade in slower, probably "slow" as per NETWORK_FADE_OUT_ENTITY
--]]
function NETWORK.NETWORK_FADE_IN_ENTITY(entity, state, p2)
  native.invoke(
    Type.Void, 3238, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, state),
    arg(Type.Any, p2)
  )
end

-- BOOL NETWORK_IS_PLAYER_FADING(Player player) // 0x631DC5DFF4B110E3
function NETWORK.NETWORK_IS_PLAYER_FADING(player)
  return native.invoke(
    Type.Bool, 3239, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_IS_ENTITY_FADING(Entity entity) // 0x422F32CC7E56ABAD
function NETWORK.NETWORK_IS_ENTITY_FADING(entity)
  return native.invoke(
    Type.Bool, 3240, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_PLAYER_IN_CUTSCENE(Player player) // 0xE73092F4157CD126
function NETWORK.IS_PLAYER_IN_CUTSCENE(player)
  return native.invoke(
    Type.Bool, 3241, false,
    arg(Type.Player, player)
  )
end

-- void SET_ENTITY_VISIBLE_IN_CUTSCENE(Any p0, BOOL p1, BOOL p2) // 0xE0031D3C8F36AB82
function NETWORK.SET_ENTITY_VISIBLE_IN_CUTSCENE(p0, p1, p2)
  native.invoke(
    Type.Void, 3242, false,
    arg(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void SET_ENTITY_LOCALLY_INVISIBLE(Entity entity) // 0xE135A9FF3F5D05D8
--[[
Makes the provided entity visible for yourself for the current frame.
--]]
function NETWORK.SET_ENTITY_LOCALLY_INVISIBLE(entity)
  native.invoke(
    Type.Void, 3243, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_ENTITY_LOCALLY_VISIBLE(Entity entity) // 0x241E289B5C059EDC
function NETWORK.SET_ENTITY_LOCALLY_VISIBLE(entity)
  native.invoke(
    Type.Void, 3244, false,
    arg(Type.Entity, entity)
  )
end

-- BOOL IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID(int netID) // 0x6E192E33AD436366
function NETWORK.IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID(netID)
  return native.invoke(
    Type.Bool, 3245, false,
    arg(Type.Int, netID)
  )
end

-- void ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID(int netID, BOOL toggle) // 0xD45B1FFCCD52FF19
function NETWORK.ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID(netID, toggle)
  native.invoke(
    Type.Void, 3246, false,
    arg(Type.Int, netID),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_DAMAGE_TRACKER_ACTIVE_ON_PLAYER(Player player) // 0xB2092A1EAA7FD45F
function NETWORK.IS_DAMAGE_TRACKER_ACTIVE_ON_PLAYER(player)
  return native.invoke(
    Type.Bool, 3247, false,
    arg(Type.Player, player)
  )
end

-- void ACTIVATE_DAMAGE_TRACKER_ON_PLAYER(Player player, BOOL toggle) // 0xBEC0816FF5ACBCDA
function NETWORK.ACTIVATE_DAMAGE_TRACKER_ON_PLAYER(player, toggle)
  native.invoke(
    Type.Void, 3248, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE(float p0, float p1, float p2, float p3) // 0xD82CF8E64C8729D8
function NETWORK.IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3249, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- BOOL IS_SPHERE_VISIBLE_TO_PLAYER(Any p0, float p1, float p2, float p3, float p4) // 0xDC3A310219E5DA62
function NETWORK.IS_SPHERE_VISIBLE_TO_PLAYER(p0, p1, p2, p3, p4)
  return native.invoke(
    Type.Bool, 3250, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4)
  )
end

-- void RESERVE_NETWORK_MISSION_OBJECTS(int amount) // 0x4E5C93BD0C32FBF8
function NETWORK.RESERVE_NETWORK_MISSION_OBJECTS(amount)
  native.invoke(
    Type.Void, 3251, false,
    arg(Type.Int, amount)
  )
end

-- void RESERVE_NETWORK_MISSION_PEDS(int amount) // 0xB60FEBA45333D36F
function NETWORK.RESERVE_NETWORK_MISSION_PEDS(amount)
  native.invoke(
    Type.Void, 3252, false,
    arg(Type.Int, amount)
  )
end

-- void RESERVE_NETWORK_MISSION_VEHICLES(int amount) // 0x76B02E21ED27A469
function NETWORK.RESERVE_NETWORK_MISSION_VEHICLES(amount)
  native.invoke(
    Type.Void, 3253, false,
    arg(Type.Int, amount)
  )
end

-- void RESERVE_LOCAL_NETWORK_MISSION_OBJECTS(int amount) // 0x797F9C5E661D920E
function NETWORK.RESERVE_LOCAL_NETWORK_MISSION_OBJECTS(amount)
  native.invoke(
    Type.Void, 3254, false,
    arg(Type.Int, amount)
  )
end

-- void RESERVE_LOCAL_NETWORK_MISSION_PEDS(int amount) // 0x2C8DF5D129595281
function NETWORK.RESERVE_LOCAL_NETWORK_MISSION_PEDS(amount)
  native.invoke(
    Type.Void, 3255, false,
    arg(Type.Int, amount)
  )
end

-- void RESERVE_LOCAL_NETWORK_MISSION_VEHICLES(int amount) // 0x42613035157E4208
function NETWORK.RESERVE_LOCAL_NETWORK_MISSION_VEHICLES(amount)
  native.invoke(
    Type.Void, 3256, false,
    arg(Type.Int, amount)
  )
end

-- BOOL CAN_REGISTER_MISSION_OBJECTS(int amount) // 0x800DD4721A8B008B
function NETWORK.CAN_REGISTER_MISSION_OBJECTS(amount)
  return native.invoke(
    Type.Bool, 3257, false,
    arg(Type.Int, amount)
  )
end

-- BOOL CAN_REGISTER_MISSION_PEDS(int amount) // 0xBCBF4FEF9FA5D781
function NETWORK.CAN_REGISTER_MISSION_PEDS(amount)
  return native.invoke(
    Type.Bool, 3258, false,
    arg(Type.Int, amount)
  )
end

-- BOOL CAN_REGISTER_MISSION_VEHICLES(int amount) // 0x7277F1F2E085EE74
function NETWORK.CAN_REGISTER_MISSION_VEHICLES(amount)
  return native.invoke(
    Type.Bool, 3259, false,
    arg(Type.Int, amount)
  )
end

-- BOOL CAN_REGISTER_MISSION_PICKUPS(int amount) // 0x0A49D1CB6E34AF72
function NETWORK.CAN_REGISTER_MISSION_PICKUPS(amount)
  return native.invoke(
    Type.Bool, 3260, false,
    arg(Type.Int, amount)
  )
end

-- BOOL CAN_REGISTER_MISSION_DOORS(Any p0) // 0xE16AA70CE9BEEDC3
function NETWORK.CAN_REGISTER_MISSION_DOORS(p0)
  return native.invoke(
    Type.Bool, 3261, false,
    arg(Type.Any, p0)
  )
end

-- BOOL CAN_REGISTER_MISSION_ENTITIES(int ped_amt, int vehicle_amt, int object_amt, int pickup_amt) // 0x69778E7564BADE6D
function NETWORK.CAN_REGISTER_MISSION_ENTITIES(ped_amt, vehicle_amt, object_amt, pickup_amt)
  return native.invoke(
    Type.Bool, 3262, false,
    arg(Type.Int, ped_amt),
    arg(Type.Int, vehicle_amt),
    arg(Type.Int, object_amt),
    arg(Type.Int, pickup_amt)
  )
end

-- int GET_NUM_RESERVED_MISSION_OBJECTS(BOOL p0, Any p1) // 0xAA81B5F10BC43AC2
--[[
p0 appears to be for MP
--]]
function NETWORK.GET_NUM_RESERVED_MISSION_OBJECTS(p0, p1)
  return native.invoke(
    Type.Int, 3263, false,
    arg(Type.Bool, p0),
    arg(Type.Any, p1)
  )
end

-- int GET_NUM_RESERVED_MISSION_PEDS(BOOL p0, Any p1) // 0x1F13D5AE5CB17E17
--[[
p0 appears to be for MP
--]]
function NETWORK.GET_NUM_RESERVED_MISSION_PEDS(p0, p1)
  return native.invoke(
    Type.Int, 3264, false,
    arg(Type.Bool, p0),
    arg(Type.Any, p1)
  )
end

-- int GET_NUM_RESERVED_MISSION_VEHICLES(BOOL p0, Any p1) // 0xCF3A965906452031
--[[
p0 appears to be for MP
--]]
function NETWORK.GET_NUM_RESERVED_MISSION_VEHICLES(p0, p1)
  return native.invoke(
    Type.Int, 3265, false,
    arg(Type.Bool, p0),
    arg(Type.Any, p1)
  )
end

-- int GET_NUM_CREATED_MISSION_OBJECTS(BOOL p0) // 0x12B6281B6C6706C0
function NETWORK.GET_NUM_CREATED_MISSION_OBJECTS(p0)
  return native.invoke(
    Type.Int, 3266, false,
    arg(Type.Bool, p0)
  )
end

-- int GET_NUM_CREATED_MISSION_PEDS(BOOL p0) // 0xCB215C4B56A7FAE7
function NETWORK.GET_NUM_CREATED_MISSION_PEDS(p0)
  return native.invoke(
    Type.Int, 3267, false,
    arg(Type.Bool, p0)
  )
end

-- int GET_NUM_CREATED_MISSION_VEHICLES(BOOL p0) // 0x0CD9AB83489430EA
function NETWORK.GET_NUM_CREATED_MISSION_VEHICLES(p0)
  return native.invoke(
    Type.Int, 3268, false,
    arg(Type.Bool, p0)
  )
end

-- void GET_RESERVED_MISSION_ENTITIES_IN_AREA(float x, float y, float z, Any p3, Any* out1, Any* out2, Any* out3) // 0xE42D626EEC94E5D9
function NETWORK.GET_RESERVED_MISSION_ENTITIES_IN_AREA(x, y, z, p3, out1, out2, out3)
  native.invoke(
    Type.Void, 3269, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Any, p3),
    ref(Type.Any, out1),
    ref(Type.Any, out2),
    ref(Type.Any, out3)
  )
end

-- int GET_MAX_NUM_NETWORK_OBJECTS() // 0xC7BE335216B5EC7C
function NETWORK.GET_MAX_NUM_NETWORK_OBJECTS()
  return native.invoke(
    Type.Int, 3270, false
  )
end

-- int GET_MAX_NUM_NETWORK_PEDS() // 0x0C1F7D49C39D2289
function NETWORK.GET_MAX_NUM_NETWORK_PEDS()
  return native.invoke(
    Type.Int, 3271, false
  )
end

-- int GET_MAX_NUM_NETWORK_VEHICLES() // 0x0AFCE529F69B21FF
function NETWORK.GET_MAX_NUM_NETWORK_VEHICLES()
  return native.invoke(
    Type.Int, 3272, false
  )
end

-- int GET_MAX_NUM_NETWORK_PICKUPS() // 0xA72835064DD63E4C
function NETWORK.GET_MAX_NUM_NETWORK_PICKUPS()
  return native.invoke(
    Type.Int, 3273, false
  )
end

-- void NETWORK_SET_OBJECT_SCOPE_DISTANCE(Object object, float range) // 0xBA7F0B77D80A4EB7
function NETWORK.NETWORK_SET_OBJECT_SCOPE_DISTANCE(object, range)
  native.invoke(
    Type.Void, 3274, false,
    arg(Type.Object, object),
    arg(Type.Float, range)
  )
end

-- void NETWORK_ALLOW_CLONING_WHILE_IN_TUTORIAL(Any p0, Any p1) // 0x0F1A4B45B7693B95
function NETWORK.NETWORK_ALLOW_CLONING_WHILE_IN_TUTORIAL(p0, p1)
  native.invoke(
    Type.Void, 3275, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void NETWORK_SET_TASK_CUTSCENE_INSCOPE_MULTIPLER(Any p0) // 0xC6FCEE21C6FCEE21
--[[
A value between 1.0 and 5.0

_NETWORK_SET_TASK_CUTSCENE_PROXIMITY_SCALE?
--]]
function NETWORK.NETWORK_SET_TASK_CUTSCENE_INSCOPE_MULTIPLER(p0)
  native.invoke(
    Type.Void, 3276, false,
    arg(Type.Any, p0)
  )
end

-- int GET_NETWORK_TIME() // 0x7A5487FE9FAA6B48
function NETWORK.GET_NETWORK_TIME()
  return native.invoke(
    Type.Int, 3277, false
  )
end

-- int GET_NETWORK_TIME_ACCURATE() // 0x89023FBBF9200E9F
--[[
Returns the same value as GET_NETWORK_TIME in freemode, but as opposed to `GET_NETWORK_TIME` it always gets the most recent time, instead of once per tick.
Could be used for benchmarking since it can return times in ticks.
--]]
function NETWORK.GET_NETWORK_TIME_ACCURATE()
  return native.invoke(
    Type.Int, 3278, false
  )
end

-- BOOL HAS_NETWORK_TIME_STARTED() // 0x46718ACEEDEAFC84
function NETWORK.HAS_NETWORK_TIME_STARTED()
  return native.invoke(
    Type.Bool, 3279, false
  )
end

-- int GET_TIME_OFFSET(int timeA, int timeB) // 0x017008CCDAD48503
--[[
Adds the first argument to the second.
--]]
function NETWORK.GET_TIME_OFFSET(timeA, timeB)
  return native.invoke(
    Type.Int, 3280, false,
    arg(Type.Int, timeA),
    arg(Type.Int, timeB)
  )
end

-- BOOL IS_TIME_LESS_THAN(int timeA, int timeB) // 0xCB2CF5148012C8D0
--[[
Subtracts the second argument from the first, then returns whether the result is negative.
--]]
function NETWORK.IS_TIME_LESS_THAN(timeA, timeB)
  return native.invoke(
    Type.Bool, 3281, false,
    arg(Type.Int, timeA),
    arg(Type.Int, timeB)
  )
end

-- BOOL IS_TIME_MORE_THAN(int timeA, int timeB) // 0xDE350F8651E4346C
--[[
Subtracts the first argument from the second, then returns whether the result is negative.
--]]
function NETWORK.IS_TIME_MORE_THAN(timeA, timeB)
  return native.invoke(
    Type.Bool, 3282, false,
    arg(Type.Int, timeA),
    arg(Type.Int, timeB)
  )
end

-- BOOL IS_TIME_EQUAL_TO(int timeA, int timeB) // 0xF5BC95857BD6D512
--[[
Returns true if the two times are equal; otherwise returns false.
--]]
function NETWORK.IS_TIME_EQUAL_TO(timeA, timeB)
  return native.invoke(
    Type.Bool, 3283, false,
    arg(Type.Int, timeA),
    arg(Type.Int, timeB)
  )
end

-- int GET_TIME_DIFFERENCE(int timeA, int timeB) // 0xA2C6FC031D46FFF0
--[[
Subtracts the second argument from the first.
--]]
function NETWORK.GET_TIME_DIFFERENCE(timeA, timeB)
  return native.invoke(
    Type.Int, 3284, false,
    arg(Type.Int, timeA),
    arg(Type.Int, timeB)
  )
end

-- const char* GET_TIME_AS_STRING(int time) // 0x9E23B1777A927DAD
function NETWORK.GET_TIME_AS_STRING(time)
  return native.invoke(
    Type.String, 3285, false,
    arg(Type.Int, time)
  )
end

-- const char* GET_CLOUD_TIME_AS_STRING() // 0xF12E6CD06C73D69E
--[[
Same as GET_CLOUD_TIME_AS_INT but returns the value as a hex string (%I64X).
--]]
function NETWORK.GET_CLOUD_TIME_AS_STRING()
  return native.invoke(
    Type.String, 3286, false
  )
end

-- int GET_CLOUD_TIME_AS_INT() // 0x9A73240B49945C76
--[[
Returns POSIX timestamp, an int representing the cloud time.
--]]
function NETWORK.GET_CLOUD_TIME_AS_INT()
  return native.invoke(
    Type.Int, 3287, false
  )
end

-- void CONVERT_POSIX_TIME(int posixTime, Any* timeStructure) // 0xAC97AF97FA68E5D5
--[[
Takes the specified time and writes it to the structure specified in the second argument.

struct date_time
{
    int year;
    int PADDING1;
    int month;
    int PADDING2;
    int day;
    int PADDING3;
    int hour;
    int PADDING4;
    int minute;
    int PADDING5;
    int second;
    int PADDING6;
};
--]]
function NETWORK.CONVERT_POSIX_TIME(posixTime, timeStructure)
  native.invoke(
    Type.Void, 3288, false,
    arg(Type.Int, posixTime),
    ref(Type.Any, timeStructure)
  )
end

-- void NETWORK_SET_IN_SPECTATOR_MODE(BOOL toggle, Ped playerPed) // 0x423DE3854BB50894
function NETWORK.NETWORK_SET_IN_SPECTATOR_MODE(toggle, playerPed)
  native.invoke(
    Type.Void, 3289, false,
    arg(Type.Bool, toggle),
    arg(Type.Ped, playerPed)
  )
end

-- void NETWORK_SET_IN_SPECTATOR_MODE_EXTENDED(BOOL toggle, Ped playerPed, BOOL p2) // 0x419594E137637120
function NETWORK.NETWORK_SET_IN_SPECTATOR_MODE_EXTENDED(toggle, playerPed, p2)
  native.invoke(
    Type.Void, 3290, false,
    arg(Type.Bool, toggle),
    arg(Type.Ped, playerPed),
    arg(Type.Bool, p2)
  )
end

-- void NETWORK_SET_IN_FREE_CAM_MODE(BOOL toggle) // 0xFC18DB55AE19E046
function NETWORK.NETWORK_SET_IN_FREE_CAM_MODE(toggle)
  native.invoke(
    Type.Void, 3291, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_ANTAGONISTIC_TO_PLAYER(BOOL toggle, Player player) // 0x5C707A667DF8B9FA
function NETWORK.NETWORK_SET_ANTAGONISTIC_TO_PLAYER(toggle, player)
  native.invoke(
    Type.Void, 3292, false,
    arg(Type.Bool, toggle),
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_IS_IN_SPECTATOR_MODE() // 0x048746E388762E11
function NETWORK.NETWORK_IS_IN_SPECTATOR_MODE()
  return native.invoke(
    Type.Bool, 3293, false
  )
end

-- void NETWORK_SET_IN_MP_CUTSCENE(BOOL p0, BOOL p1) // 0x9CA5DE655269FEC4
function NETWORK.NETWORK_SET_IN_MP_CUTSCENE(p0, p1)
  native.invoke(
    Type.Void, 3294, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- BOOL NETWORK_IS_IN_MP_CUTSCENE() // 0x6CC27C9FA2040220
function NETWORK.NETWORK_IS_IN_MP_CUTSCENE()
  return native.invoke(
    Type.Bool, 3295, false
  )
end

-- BOOL NETWORK_IS_PLAYER_IN_MP_CUTSCENE(Player player) // 0x63F9EE203C3619F2
function NETWORK.NETWORK_IS_PLAYER_IN_MP_CUTSCENE(player)
  return native.invoke(
    Type.Bool, 3296, false,
    arg(Type.Player, player)
  )
end

-- void NETWORK_HIDE_PROJECTILE_IN_CUTSCENE() // 0xFAC18E7356BD3210
function NETWORK.NETWORK_HIDE_PROJECTILE_IN_CUTSCENE()
  native.invoke(
    Type.Void, 3297, false
  )
end

-- void SET_NETWORK_VEHICLE_RESPOT_TIMER(int netId, int time, Any p2, Any p3) // 0xEC51713AB6EC36E8
function NETWORK.SET_NETWORK_VEHICLE_RESPOT_TIMER(netId, time, p2, p3)
  native.invoke(
    Type.Void, 3298, false,
    arg(Type.Int, netId),
    arg(Type.Int, time),
    arg(Type.Any, p2),
    arg(Type.Any, p3)
  )
end

-- BOOL IS_NETWORK_VEHICLE_RUNNING_RESPOT_TIMER(int networkID) // 0xDD7CEF5B3A4DA8A6
function NETWORK.IS_NETWORK_VEHICLE_RUNNING_RESPOT_TIMER(networkID)
  return native.invoke(
    Type.Bool, 3299, false,
    arg(Type.Int, networkID)
  )
end

-- void SET_NETWORK_VEHICLE_AS_GHOST(Vehicle vehicle, BOOL toggle) // 0x6274C4712850841E
function NETWORK.SET_NETWORK_VEHICLE_AS_GHOST(vehicle, toggle)
  native.invoke(
    Type.Void, 3300, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_NETWORK_VEHICLE_MAX_POSITION_DELTA_MULTIPLIER(Vehicle vehicle, float multiplier) // 0xA2A707979FE754DC
--[[
rage::netBlenderLinInterp::GetPositionMaxForUpdateLevel
--]]
function NETWORK.SET_NETWORK_VEHICLE_MAX_POSITION_DELTA_MULTIPLIER(vehicle, multiplier)
  native.invoke(
    Type.Void, 3301, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, multiplier)
  )
end

-- void SET_NETWORK_ENABLE_HIGH_SPEED_EDGE_FALL_DETECTION(Vehicle vehicle, BOOL toggle) // 0x838DA0936A24ED4D
--[[
Enables a periodic ShapeTest within the NetBlender and invokes rage::netBlenderLinInterp::GoStraightToTarget (or some functional wrapper).
--]]
function NETWORK.SET_NETWORK_ENABLE_HIGH_SPEED_EDGE_FALL_DETECTION(vehicle, toggle)
  native.invoke(
    Type.Void, 3302, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_LOCAL_PLAYER_AS_GHOST(BOOL toggle, BOOL p1) // 0x5FFE9B4144F9712F
function NETWORK.SET_LOCAL_PLAYER_AS_GHOST(toggle, p1)
  native.invoke(
    Type.Void, 3303, false,
    arg(Type.Bool, toggle),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_ENTITY_A_GHOST(Entity entity) // 0x21D04D7BC538C146
function NETWORK.IS_ENTITY_A_GHOST(entity)
  return native.invoke(
    Type.Bool, 3304, false,
    arg(Type.Entity, entity)
  )
end

-- void SET_NON_PARTICIPANTS_OF_THIS_SCRIPT_AS_GHOSTS(BOOL p0) // 0x13F1FCB111B820B0
function NETWORK.SET_NON_PARTICIPANTS_OF_THIS_SCRIPT_AS_GHOSTS(p0)
  native.invoke(
    Type.Void, 3305, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_REMOTE_PLAYER_AS_GHOST(Player player, BOOL p1) // 0xA7C511FA1C5BDA38
--[[
Enables ghosting between specific players
--]]
function NETWORK.SET_REMOTE_PLAYER_AS_GHOST(player, p1)
  native.invoke(
    Type.Void, 3306, false,
    arg(Type.Player, player),
    arg(Type.Bool, p1)
  )
end

-- void SET_GHOST_ALPHA(int alpha) // 0x658500AE6D723A7E
--[[
Must be a value between 1 and 254
--]]
function NETWORK.SET_GHOST_ALPHA(alpha)
  native.invoke(
    Type.Void, 3307, false,
    arg(Type.Int, alpha)
  )
end

-- void RESET_GHOST_ALPHA() // 0x17330EBF2F2124A8
--[[
Resets the entity ghost alpha to the default value (128)
--]]
function NETWORK.RESET_GHOST_ALPHA()
  native.invoke(
    Type.Void, 3308, false
  )
end

-- void SET_ENTITY_GHOSTED_FOR_GHOST_PLAYERS(Entity entity, BOOL toggle) // 0x4BA166079D658ED4
function NETWORK.SET_ENTITY_GHOSTED_FOR_GHOST_PLAYERS(entity, toggle)
  native.invoke(
    Type.Void, 3309, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void SET_INVERT_GHOSTING(BOOL p0) // 0xD7B6C73CAD419BCF
function NETWORK.SET_INVERT_GHOSTING(p0)
  native.invoke(
    Type.Void, 3310, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL IS_ENTITY_IN_GHOST_COLLISION(Entity entity) // 0x7EF7649B64D7FF10
function NETWORK.IS_ENTITY_IN_GHOST_COLLISION(entity)
  return native.invoke(
    Type.Bool, 3311, false,
    arg(Type.Entity, entity)
  )
end

-- void USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR(BOOL toggle) // 0x77758139EC9B66C7
function NETWORK.USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR(toggle)
  native.invoke(
    Type.Void, 3312, false,
    arg(Type.Bool, toggle)
  )
end

-- int NETWORK_CREATE_SYNCHRONISED_SCENE(float x, float y, float z, float xRot, float yRot, float zRot, int rotationOrder, BOOL useOcclusionPortal, BOOL looped, float p9, float animTime, float p11) // 0x7CD6BC4C2BBDD526
function NETWORK.NETWORK_CREATE_SYNCHRONISED_SCENE(x, y, z, xRot, yRot, zRot, rotationOrder, useOcclusionPortal, looped, p9, animTime, p11)
  return native.invoke(
    Type.Int, 3313, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, xRot),
    arg(Type.Float, yRot),
    arg(Type.Float, zRot),
    arg(Type.Int, rotationOrder),
    arg(Type.Bool, useOcclusionPortal),
    arg(Type.Bool, looped),
    arg(Type.Float, p9),
    arg(Type.Float, animTime),
    arg(Type.Float, p11)
  )
end

-- void NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE(Ped ped, int netScene, const char* animDict, const char* animnName, float speed, float speedMultiplier, int duration, int flag, float playbackRate, Any p9) // 0x742A637471BCECD9
function NETWORK.NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE(ped, netScene, animDict, animnName, speed, speedMultiplier, duration, flag, playbackRate, p9)
  native.invoke(
    Type.Void, 3314, false,
    arg(Type.Ped, ped),
    arg(Type.Int, netScene),
    arg(Type.String, animDict),
    arg(Type.String, animnName),
    arg(Type.Float, speed),
    arg(Type.Float, speedMultiplier),
    arg(Type.Int, duration),
    arg(Type.Int, flag),
    arg(Type.Float, playbackRate),
    arg(Type.Any, p9)
  )
end

-- void NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE_WITH_IK(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7, Any p8, Any p9) // 0xA5EAFE473E45C442
function NETWORK.NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE_WITH_IK(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)
  native.invoke(
    Type.Void, 3315, false,
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

-- void NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE(Entity entity, int netScene, const char* animDict, const char* animName, float speed, float speedMulitiplier, int flag) // 0xF2404D68CBC855FA
function NETWORK.NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE(entity, netScene, animDict, animName, speed, speedMulitiplier, flag)
  native.invoke(
    Type.Void, 3316, false,
    arg(Type.Entity, entity),
    arg(Type.Int, netScene),
    arg(Type.String, animDict),
    arg(Type.String, animName),
    arg(Type.Float, speed),
    arg(Type.Float, speedMulitiplier),
    arg(Type.Int, flag)
  )
end

-- void NETWORK_ADD_MAP_ENTITY_TO_SYNCHRONISED_SCENE(int netScene, Hash modelHash, float x, float y, float z, float p5, const char* p6, float p7, float p8, int flags) // 0x45F35C0EDC33B03B
--[[
Similar structure as NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE but it includes this time a hash.
In casino_slots it is used one time in a synced scene involving a ped and the slot machine?
--]]
function NETWORK.NETWORK_ADD_MAP_ENTITY_TO_SYNCHRONISED_SCENE(netScene, modelHash, x, y, z, p5, p6, p7, p8, flags)
  native.invoke(
    Type.Void, 3317, false,
    arg(Type.Int, netScene),
    arg(Type.Hash, modelHash),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, p5),
    arg(Type.String, p6),
    arg(Type.Float, p7),
    arg(Type.Float, p8),
    arg(Type.Int, flags)
  )
end

-- void NETWORK_ADD_SYNCHRONISED_SCENE_CAMERA(int netScene, const char* animDict, const char* animName) // 0xCF8BD3B0BD6D42D7
function NETWORK.NETWORK_ADD_SYNCHRONISED_SCENE_CAMERA(netScene, animDict, animName)
  native.invoke(
    Type.Void, 3318, false,
    arg(Type.Int, netScene),
    arg(Type.String, animDict),
    arg(Type.String, animName)
  )
end

-- void NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY(int netScene, Entity entity, int bone) // 0x478DCBD2A98B705A
function NETWORK.NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY(netScene, entity, bone)
  native.invoke(
    Type.Void, 3319, false,
    arg(Type.Int, netScene),
    arg(Type.Entity, entity),
    arg(Type.Int, bone)
  )
end

-- void NETWORK_START_SYNCHRONISED_SCENE(int netScene) // 0x9A1B3FCDB36C8697
function NETWORK.NETWORK_START_SYNCHRONISED_SCENE(netScene)
  native.invoke(
    Type.Void, 3320, false,
    arg(Type.Int, netScene)
  )
end

-- void NETWORK_STOP_SYNCHRONISED_SCENE(int netScene) // 0xC254481A4574CB2F
function NETWORK.NETWORK_STOP_SYNCHRONISED_SCENE(netScene)
  native.invoke(
    Type.Void, 3321, false,
    arg(Type.Int, netScene)
  )
end

-- int NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID(int netId) // 0x02C40BF885C567B6
function NETWORK.NETWORK_GET_LOCAL_SCENE_FROM_NETWORK_ID(netId)
  return native.invoke(
    Type.Int, 3322, false,
    arg(Type.Int, netId)
  )
end

-- void NETWORK_FORCE_LOCAL_USE_OF_SYNCED_SCENE_CAMERA(int netScene) // 0xC9B43A33D09CADA7
function NETWORK.NETWORK_FORCE_LOCAL_USE_OF_SYNCED_SCENE_CAMERA(netScene)
  native.invoke(
    Type.Void, 3323, false,
    arg(Type.Int, netScene)
  )
end

-- void NETWORK_ALLOW_REMOTE_SYNCED_SCENE_LOCAL_PLAYER_REQUESTS(Any p0) // 0x144DA052257AE7D8
function NETWORK.NETWORK_ALLOW_REMOTE_SYNCED_SCENE_LOCAL_PLAYER_REQUESTS(p0)
  native.invoke(
    Type.Void, 3324, false,
    arg(Type.Any, p0)
  )
end

-- BOOL NETWORK_FIND_LARGEST_BUNCH_OF_PLAYERS(int p0, Any p1) // 0xFB1F9381E80FA13F
--[[
p0 is always 0. p1 is pointing to a global.
--]]
function NETWORK.NETWORK_FIND_LARGEST_BUNCH_OF_PLAYERS(p0, p1)
  return native.invoke(
    Type.Bool, 3325, false,
    arg(Type.Int, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL NETWORK_START_RESPAWN_SEARCH_FOR_PLAYER(Player player, float x, float y, float z, float radius, float p5, float p6, float p7, int flags) // 0x5A6FFA2433E2F14C
--[[
One of the first things it does is get the players ped.
Then it calls a function that is used in some tasks and ped based functions.
p5, p6, p7 is another coordinate (or zero), often related to `GET_BLIP_COORDS, in the decompiled scripts.
--]]
function NETWORK.NETWORK_START_RESPAWN_SEARCH_FOR_PLAYER(player, x, y, z, radius, p5, p6, p7, flags)
  return native.invoke(
    Type.Bool, 3326, false,
    arg(Type.Player, player),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Float, p7),
    arg(Type.Int, flags)
  )
end

-- BOOL NETWORK_START_RESPAWN_SEARCH_IN_ANGLED_AREA_FOR_PLAYER(Player player, float x1, float y1, float z1, float x2, float y2, float z2, float width, float p8, float p9, float p10, int flags) // 0x4BA92A18502BCA61
--[[
p8, p9, p10 is another coordinate, or zero, often related to `GET_BLIP_COORDS in the decompiled scripts.
--]]
function NETWORK.NETWORK_START_RESPAWN_SEARCH_IN_ANGLED_AREA_FOR_PLAYER(player, x1, y1, z1, x2, y2, z2, width, p8, p9, p10, flags)
  return native.invoke(
    Type.Bool, 3327, false,
    arg(Type.Player, player),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width),
    arg(Type.Float, p8),
    arg(Type.Float, p9),
    arg(Type.Float, p10),
    arg(Type.Int, flags)
  )
end

-- int NETWORK_QUERY_RESPAWN_RESULTS(Any* p0) // 0x3C891A251567DFCE
function NETWORK.NETWORK_QUERY_RESPAWN_RESULTS(p0)
  return native.invoke(
    Type.Int, 3328, false,
    ref(Type.Any, p0)
  )
end

-- void NETWORK_CANCEL_RESPAWN_SEARCH() // 0xFB8F2A6F3DF08CBE
function NETWORK.NETWORK_CANCEL_RESPAWN_SEARCH()
  native.invoke(
    Type.Void, 3329, false
  )
end

-- void NETWORK_GET_RESPAWN_RESULT(int randomInt, Vector3* coordinates, float* heading) // 0x371EA43692861CF1
--[[
Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..
--]]
function NETWORK.NETWORK_GET_RESPAWN_RESULT(randomInt, coordinates, heading)
  native.invoke(
    Type.Void, 3330, false,
    arg(Type.Int, randomInt),
    ref(Type.Vector3, coordinates),
    ref(Type.Float, heading)
  )
end

-- int NETWORK_GET_RESPAWN_RESULT_FLAGS(int p0) // 0x6C34F1208B8923FD
function NETWORK.NETWORK_GET_RESPAWN_RESULT_FLAGS(p0)
  return native.invoke(
    Type.Int, 3331, false,
    arg(Type.Int, p0)
  )
end

-- void NETWORK_START_SOLO_TUTORIAL_SESSION() // 0x17E0198B3882C2CB
function NETWORK.NETWORK_START_SOLO_TUTORIAL_SESSION()
  native.invoke(
    Type.Void, 3332, false
  )
end

-- void NETWORK_ALLOW_GANG_TO_JOIN_TUTORIAL_SESSION(int teamId, int instanceId) // 0xFB680D403909DC70
--[[
teamId must be < 3, instanceId must be < 64
--]]
function NETWORK.NETWORK_ALLOW_GANG_TO_JOIN_TUTORIAL_SESSION(teamId, instanceId)
  native.invoke(
    Type.Void, 3333, false,
    arg(Type.Int, teamId),
    arg(Type.Int, instanceId)
  )
end

-- void NETWORK_END_TUTORIAL_SESSION() // 0xD0AFAFF5A51D72F7
function NETWORK.NETWORK_END_TUTORIAL_SESSION()
  native.invoke(
    Type.Void, 3334, false
  )
end

-- BOOL NETWORK_IS_IN_TUTORIAL_SESSION() // 0xADA24309FE08DACF
function NETWORK.NETWORK_IS_IN_TUTORIAL_SESSION()
  return native.invoke(
    Type.Bool, 3335, false
  )
end

-- BOOL NETWORK_WAITING_POP_CLEAR_TUTORIAL_SESSION() // 0xB37E4E6A2388CA7B
function NETWORK.NETWORK_WAITING_POP_CLEAR_TUTORIAL_SESSION()
  return native.invoke(
    Type.Bool, 3336, false
  )
end

-- BOOL NETWORK_IS_TUTORIAL_SESSION_CHANGE_PENDING() // 0x35F0B98A8387274D
function NETWORK.NETWORK_IS_TUTORIAL_SESSION_CHANGE_PENDING()
  return native.invoke(
    Type.Bool, 3337, false
  )
end

-- int NETWORK_GET_PLAYER_TUTORIAL_SESSION_INSTANCE(Player player) // 0x3B39236746714134
function NETWORK.NETWORK_GET_PLAYER_TUTORIAL_SESSION_INSTANCE(player)
  return native.invoke(
    Type.Int, 3338, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_ARE_PLAYERS_IN_SAME_TUTORIAL_SESSION(Player player, int index) // 0x9DE986FC9A87C474
function NETWORK.NETWORK_ARE_PLAYERS_IN_SAME_TUTORIAL_SESSION(player, index)
  return native.invoke(
    Type.Bool, 3339, false,
    arg(Type.Player, player),
    arg(Type.Int, index)
  )
end

-- void NETWORK_BLOCK_PROXY_MIGRATION_BETWEEN_TUTORIAL_SESSIONS(Any p0) // 0xFEA7A352DDB34D52
function NETWORK.NETWORK_BLOCK_PROXY_MIGRATION_BETWEEN_TUTORIAL_SESSIONS(p0)
  native.invoke(
    Type.Void, 3340, false,
    arg(Type.Any, p0)
  )
end

-- void NETWORK_CONCEAL_PLAYER(Player player, BOOL toggle, BOOL p2) // 0xBBDF066252829606
function NETWORK.NETWORK_CONCEAL_PLAYER(player, toggle, p2)
  native.invoke(
    Type.Void, 3341, false,
    arg(Type.Player, player),
    arg(Type.Bool, toggle),
    arg(Type.Bool, p2)
  )
end

-- BOOL NETWORK_IS_PLAYER_CONCEALED(Player player) // 0x919B3C98ED8292F9
function NETWORK.NETWORK_IS_PLAYER_CONCEALED(player)
  return native.invoke(
    Type.Bool, 3342, false,
    arg(Type.Player, player)
  )
end

-- void NETWORK_CONCEAL_ENTITY(Entity entity, BOOL toggle) // 0x1632BE0AC1E62876
function NETWORK.NETWORK_CONCEAL_ENTITY(entity, toggle)
  native.invoke(
    Type.Void, 3343, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_IS_ENTITY_CONCEALED(Entity entity) // 0x71302EC70689052A
--[[
Note: This only works for vehicles, which appears to be a bug (since the setter _does_ work for every entity type and the name is 99% correct).
--]]
function NETWORK.NETWORK_IS_ENTITY_CONCEALED(entity)
  return native.invoke(
    Type.Bool, 3344, false,
    arg(Type.Entity, entity)
  )
end

-- void NETWORK_OVERRIDE_CLOCK_TIME(int hours, int minutes, int seconds) // 0xE679E3E06E363892
--[[
Works in Singleplayer too.
Passing wrong data (e.g. hours above 23) will cause the game to crash.
--]]
function NETWORK.NETWORK_OVERRIDE_CLOCK_TIME(hours, minutes, seconds)
  native.invoke(
    Type.Void, 3345, false,
    arg(Type.Int, hours),
    arg(Type.Int, minutes),
    arg(Type.Int, seconds)
  )
end

-- void NETWORK_OVERRIDE_CLOCK_RATE(int ms) // 0x42BF1D2E723B6D7E
function NETWORK.NETWORK_OVERRIDE_CLOCK_RATE(ms)
  native.invoke(
    Type.Void, 3346, false,
    arg(Type.Int, ms)
  )
end

-- void NETWORK_CLEAR_CLOCK_TIME_OVERRIDE() // 0xD972DF67326F966E
function NETWORK.NETWORK_CLEAR_CLOCK_TIME_OVERRIDE()
  native.invoke(
    Type.Void, 3347, false
  )
end

-- BOOL NETWORK_IS_CLOCK_TIME_OVERRIDDEN() // 0xD7C95D322FF57522
function NETWORK.NETWORK_IS_CLOCK_TIME_OVERRIDDEN()
  return native.invoke(
    Type.Bool, 3348, false
  )
end

-- int NETWORK_ADD_ENTITY_AREA(float x1, float y1, float z1, float x2, float y2, float z2) // 0x494C8FB299290269
function NETWORK.NETWORK_ADD_ENTITY_AREA(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Int, 3349, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- int NETWORK_ADD_ENTITY_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width) // 0x376C6375BA60293A
--[[
To remove, see: NETWORK_REMOVE_ENTITY_AREA
See IS_POINT_IN_ANGLED_AREA for the definition of an angled area.
--]]
function NETWORK.NETWORK_ADD_ENTITY_ANGLED_AREA(x1, y1, z1, x2, y2, z2, width)
  return native.invoke(
    Type.Int, 3350, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, width)
  )
end

-- int NETWORK_ADD_CLIENT_ENTITY_AREA(float x1, float y1, float z1, float x2, float y2, float z2) // 0x25B99872D588A101
function NETWORK.NETWORK_ADD_CLIENT_ENTITY_AREA(x1, y1, z1, x2, y2, z2)
  return native.invoke(
    Type.Int, 3351, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2)
  )
end

-- int NETWORK_ADD_CLIENT_ENTITY_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float radius) // 0x2B1C623823DB0D9D
function NETWORK.NETWORK_ADD_CLIENT_ENTITY_ANGLED_AREA(x1, y1, z1, x2, y2, z2, radius)
  return native.invoke(
    Type.Int, 3352, false,
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, radius)
  )
end

-- BOOL NETWORK_REMOVE_ENTITY_AREA(int areaHandle) // 0x93CF869BAA0C4874
function NETWORK.NETWORK_REMOVE_ENTITY_AREA(areaHandle)
  return native.invoke(
    Type.Bool, 3353, false,
    arg(Type.Int, areaHandle)
  )
end

-- BOOL NETWORK_ENTITY_AREA_DOES_EXIST(int areaHandle) // 0xE64A3CA08DFA37A9
function NETWORK.NETWORK_ENTITY_AREA_DOES_EXIST(areaHandle)
  return native.invoke(
    Type.Bool, 3354, false,
    arg(Type.Int, areaHandle)
  )
end

-- BOOL NETWORK_ENTITY_AREA_HAVE_ALL_REPLIED(int areaHandle) // 0x4DF7CFFF471A7FB1
function NETWORK.NETWORK_ENTITY_AREA_HAVE_ALL_REPLIED(areaHandle)
  return native.invoke(
    Type.Bool, 3355, false,
    arg(Type.Int, areaHandle)
  )
end

-- BOOL NETWORK_ENTITY_AREA_IS_OCCUPIED(int areaHandle) // 0x4A2D4E8BF4265B0F
function NETWORK.NETWORK_ENTITY_AREA_IS_OCCUPIED(areaHandle)
  return native.invoke(
    Type.Bool, 3356, false,
    arg(Type.Int, areaHandle)
  )
end

-- void NETWORK_USE_HIGH_PRECISION_BLENDING(int netID, BOOL toggle) // 0x2B1813ABA29016C5
function NETWORK.NETWORK_USE_HIGH_PRECISION_BLENDING(netID, toggle)
  native.invoke(
    Type.Void, 3357, false,
    arg(Type.Int, netID),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_CUSTOM_ARENA_BALL_PARAMS(int netId) // 0xA6FCECCF4721D679
function NETWORK.NETWORK_SET_CUSTOM_ARENA_BALL_PARAMS(netId)
  native.invoke(
    Type.Void, 3358, false,
    arg(Type.Int, netId)
  )
end

-- void NETWORK_ENTITY_USE_HIGH_PRECISION_ROTATION(int netId, BOOL toggle) // 0x95BAF97C82464629
function NETWORK.NETWORK_ENTITY_USE_HIGH_PRECISION_ROTATION(netId, toggle)
  native.invoke(
    Type.Void, 3359, false,
    arg(Type.Int, netId),
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS() // 0x924426BFFD82E915
function NETWORK.NETWORK_REQUEST_CLOUD_BACKGROUND_SCRIPTS()
  return native.invoke(
    Type.Bool, 3360, false
  )
end

-- BOOL NETWORK_IS_CLOUD_BACKGROUND_SCRIPT_REQUEST_PENDING() // 0x8132C0EB8B2B3293
function NETWORK.NETWORK_IS_CLOUD_BACKGROUND_SCRIPT_REQUEST_PENDING()
  return native.invoke(
    Type.Bool, 3361, false
  )
end

-- void NETWORK_REQUEST_CLOUD_TUNABLES() // 0x42FB3B532D526E6C
function NETWORK.NETWORK_REQUEST_CLOUD_TUNABLES()
  native.invoke(
    Type.Void, 3362, false
  )
end

-- BOOL NETWORK_IS_TUNABLE_CLOUD_REQUEST_PENDING() // 0x0467C11ED88B7D28
function NETWORK.NETWORK_IS_TUNABLE_CLOUD_REQUEST_PENDING()
  return native.invoke(
    Type.Bool, 3363, false
  )
end

-- int NETWORK_GET_TUNABLE_CLOUD_CRC() // 0x10BD227A753B0D84
--[[
Actually returns the version (TUNABLE_VERSION)
--]]
function NETWORK.NETWORK_GET_TUNABLE_CLOUD_CRC()
  return native.invoke(
    Type.Int, 3364, false
  )
end

-- BOOL NETWORK_DOES_TUNABLE_EXIST(const char* tunableContext, const char* tunableName) // 0x85E5F8B9B898B20A
function NETWORK.NETWORK_DOES_TUNABLE_EXIST(tunableContext, tunableName)
  return native.invoke(
    Type.Bool, 3365, false,
    arg(Type.String, tunableContext),
    arg(Type.String, tunableName)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_INT(const char* tunableContext, const char* tunableName, int* value) // 0x8BE1146DFD5D4468
function NETWORK.NETWORK_ACCESS_TUNABLE_INT(tunableContext, tunableName, value)
  return native.invoke(
    Type.Bool, 3366, false,
    arg(Type.String, tunableContext),
    arg(Type.String, tunableName),
    ref(Type.Int, value)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_FLOAT(const char* tunableContext, const char* tunableName, float* value) // 0xE5608CA7BC163A5F
function NETWORK.NETWORK_ACCESS_TUNABLE_FLOAT(tunableContext, tunableName, value)
  return native.invoke(
    Type.Bool, 3367, false,
    arg(Type.String, tunableContext),
    arg(Type.String, tunableName),
    ref(Type.Float, value)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_BOOL(const char* tunableContext, const char* tunableName) // 0xAA6A47A573ABB75A
function NETWORK.NETWORK_ACCESS_TUNABLE_BOOL(tunableContext, tunableName)
  return native.invoke(
    Type.Bool, 3368, false,
    arg(Type.String, tunableContext),
    arg(Type.String, tunableName)
  )
end

-- BOOL NETWORK_DOES_TUNABLE_EXIST_HASH(Hash tunableContext, Hash tunableName) // 0xE4E53E1419D81127
function NETWORK.NETWORK_DOES_TUNABLE_EXIST_HASH(tunableContext, tunableName)
  return native.invoke(
    Type.Bool, 3369, false,
    arg(Type.Hash, tunableContext),
    arg(Type.Hash, tunableName)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_MODIFICATION_DETECTION_CLEAR() // 0xFAFC23AEE23868DB
function NETWORK.NETWORK_ACCESS_TUNABLE_MODIFICATION_DETECTION_CLEAR()
  return native.invoke(
    Type.Bool, 3370, false
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_INT_HASH(Hash tunableContext, Hash tunableName, int* value) // 0x40FCE03E50E8DBE8
function NETWORK.NETWORK_ACCESS_TUNABLE_INT_HASH(tunableContext, tunableName, value)
  return native.invoke(
    Type.Bool, 3371, false,
    arg(Type.Hash, tunableContext),
    arg(Type.Hash, tunableName),
    ref(Type.Int, value)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_INT_MODIFICATION_DETECTION_REGISTRATION_HASH(Hash contextHash, Hash nameHash, int* value) // 0x3A8B55FDA4C8DDEF
function NETWORK.NETWORK_ACCESS_TUNABLE_INT_MODIFICATION_DETECTION_REGISTRATION_HASH(contextHash, nameHash, value)
  return native.invoke(
    Type.Bool, 3372, false,
    arg(Type.Hash, contextHash),
    arg(Type.Hash, nameHash),
    ref(Type.Int, value)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_FLOAT_HASH(Hash tunableContext, Hash tunableName, float* value) // 0x972BC203BBC4C4D5
function NETWORK.NETWORK_ACCESS_TUNABLE_FLOAT_HASH(tunableContext, tunableName, value)
  return native.invoke(
    Type.Bool, 3373, false,
    arg(Type.Hash, tunableContext),
    arg(Type.Hash, tunableName),
    ref(Type.Float, value)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_FLOAT_MODIFICATION_DETECTION_REGISTRATION_HASH(Hash contextHash, Hash nameHash, float* value) // 0x1950DAE9848A4739
function NETWORK.NETWORK_ACCESS_TUNABLE_FLOAT_MODIFICATION_DETECTION_REGISTRATION_HASH(contextHash, nameHash, value)
  return native.invoke(
    Type.Bool, 3374, false,
    arg(Type.Hash, contextHash),
    arg(Type.Hash, nameHash),
    ref(Type.Float, value)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_BOOL_HASH(Hash tunableContext, Hash tunableName) // 0xEA16B69D93D71A45
function NETWORK.NETWORK_ACCESS_TUNABLE_BOOL_HASH(tunableContext, tunableName)
  return native.invoke(
    Type.Bool, 3375, false,
    arg(Type.Hash, tunableContext),
    arg(Type.Hash, tunableName)
  )
end

-- BOOL NETWORK_ACCESS_TUNABLE_BOOL_MODIFICATION_DETECTION_REGISTRATION_HASH(Hash contextHash, Hash nameHash, BOOL* value) // 0x697F508861875B42
function NETWORK.NETWORK_ACCESS_TUNABLE_BOOL_MODIFICATION_DETECTION_REGISTRATION_HASH(contextHash, nameHash, value)
  return native.invoke(
    Type.Bool, 3376, false,
    arg(Type.Hash, contextHash),
    arg(Type.Hash, nameHash),
    ref(Type.Bool, value)
  )
end

-- BOOL NETWORK_TRY_ACCESS_TUNABLE_BOOL_HASH(Hash tunableContext, Hash tunableName, BOOL defaultValue) // 0xC7420099936CE286
--[[
Returns defaultValue if the tunable doesn't exist.
--]]
function NETWORK.NETWORK_TRY_ACCESS_TUNABLE_BOOL_HASH(tunableContext, tunableName, defaultValue)
  return native.invoke(
    Type.Bool, 3377, false,
    arg(Type.Hash, tunableContext),
    arg(Type.Hash, tunableName),
    arg(Type.Bool, defaultValue)
  )
end

-- int NETWORK_GET_CONTENT_MODIFIER_LIST_ID(Hash contentHash) // 0x187382F8A3E0A6C3
--[[
Return the content modifier id (the tunables context if you want) of a specific content.

It takes the content hash (which is the mission id hash), and return the content modifier id, used as the tunables context.

The mission id can be found on the Social club, for example, 'socialclub.rockstargames.com/games/gtav/jobs/job/A8M6Bz8MLEC5xngvDCzGwA'

'A8M6Bz8MLEC5xngvDCzGwA' is the mission id, so the game hash this and use it as the parameter for this native.

--]]
function NETWORK.NETWORK_GET_CONTENT_MODIFIER_LIST_ID(contentHash)
  return native.invoke(
    Type.Int, 3378, false,
    arg(Type.Hash, contentHash)
  )
end

-- int NETWORK_GET_BONE_ID_OF_FATAL_HIT() // 0x7DB53B37A2F211A0
function NETWORK.NETWORK_GET_BONE_ID_OF_FATAL_HIT()
  return native.invoke(
    Type.Int, 3379, false
  )
end

-- void NETWORK_RESET_BODY_TRACKER() // 0x72433699B4E6DD64
function NETWORK.NETWORK_RESET_BODY_TRACKER()
  native.invoke(
    Type.Void, 3380, false
  )
end

-- int NETWORK_GET_NUMBER_BODY_TRACKER_HITS() // 0xD38C4A6D047C019D
function NETWORK.NETWORK_GET_NUMBER_BODY_TRACKER_HITS()
  return native.invoke(
    Type.Int, 3381, false
  )
end

-- BOOL NETWORK_HAS_BONE_BEEN_HIT_BY_KILLER(int boneIndex) // 0x2E0BF682CC778D49
function NETWORK.NETWORK_HAS_BONE_BEEN_HIT_BY_KILLER(boneIndex)
  return native.invoke(
    Type.Bool, 3382, false,
    arg(Type.Int, boneIndex)
  )
end

-- BOOL NETWORK_SET_ATTRIBUTE_DAMAGE_TO_PLAYER(Ped ped, Player player) // 0x0EDE326D47CD0F3E
function NETWORK.NETWORK_SET_ATTRIBUTE_DAMAGE_TO_PLAYER(ped, player)
  return native.invoke(
    Type.Bool, 3383, false,
    arg(Type.Ped, ped),
    arg(Type.Player, player)
  )
end

-- void NETWORK_TRIGGER_DAMAGE_EVENT_FOR_ZERO_DAMAGE(Entity entity, BOOL toggle) // 0x890E2C5ABED7236D
--[[
Allows vehicle wheels to be destructible even when the vehicle entity is invincible.
--]]
function NETWORK.NETWORK_TRIGGER_DAMAGE_EVENT_FOR_ZERO_DAMAGE(entity, toggle)
  native.invoke(
    Type.Void, 3384, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_TRIGGER_DAMAGE_EVENT_FOR_ZERO_WEAPON_HASH(Entity entity, BOOL toggle) // 0x38B7C51AB1EDC7D8
function NETWORK.NETWORK_TRIGGER_DAMAGE_EVENT_FOR_ZERO_WEAPON_HASH(entity, toggle)
  native.invoke(
    Type.Void, 3385, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SET_NO_LONGER_NEEDED(Entity entity, BOOL toggle) // 0x3FC795691834481D
function NETWORK.NETWORK_SET_NO_LONGER_NEEDED(entity, toggle)
  native.invoke(
    Type.Void, 3386, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- BOOL NETWORK_EXPLODE_VEHICLE(Vehicle vehicle, BOOL isAudible, BOOL isInvisible, int netId) // 0x301A42153C9AD707
--[[
In the console script dumps, this is only referenced once. 
NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);

^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters.
Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?

am_plane_takedown.c 
network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);

armenian2.c 
network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);

fm_horde_controler.c
network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);

fm_mission_controller.c, has 6 hits so not going to list them.

Side note, setting the first parameter to 0 seems to mute sound or so?

Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.

--]]
function NETWORK.NETWORK_EXPLODE_VEHICLE(vehicle, isAudible, isInvisible, netId)
  return native.invoke(
    Type.Bool, 3387, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, isAudible),
    arg(Type.Bool, isInvisible),
    arg(Type.Int, netId)
  )
end

-- void NETWORK_EXPLODE_HELI(Vehicle vehicle, BOOL isAudible, BOOL isInvisible, int netId) // 0x2A5E0621DD815A9A
function NETWORK.NETWORK_EXPLODE_HELI(vehicle, isAudible, isInvisible, netId)
  native.invoke(
    Type.Void, 3388, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, isAudible),
    arg(Type.Bool, isInvisible),
    arg(Type.Int, netId)
  )
end

-- void NETWORK_USE_LOGARITHMIC_BLENDING_THIS_FRAME(Entity entity) // 0xCD71A4ECAB22709E
function NETWORK.NETWORK_USE_LOGARITHMIC_BLENDING_THIS_FRAME(entity)
  native.invoke(
    Type.Void, 3389, false,
    arg(Type.Entity, entity)
  )
end

-- void NETWORK_OVERRIDE_COORDS_AND_HEADING(Entity entity, float x, float y, float z, float heading) // 0xA7E30DE9272B6D49
function NETWORK.NETWORK_OVERRIDE_COORDS_AND_HEADING(entity, x, y, z, heading)
  native.invoke(
    Type.Void, 3390, false,
    arg(Type.Entity, entity),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, heading)
  )
end

-- void NETWORK_ENABLE_EXTRA_VEHICLE_ORIENTATION_BLEND_CHECKS(int netId, BOOL toggle) // 0xE6717E652B8C8D8A
function NETWORK.NETWORK_ENABLE_EXTRA_VEHICLE_ORIENTATION_BLEND_CHECKS(netId, toggle)
  native.invoke(
    Type.Void, 3391, false,
    arg(Type.Int, netId),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_DISABLE_PROXIMITY_MIGRATION(int netID) // 0x407091CF6037118E
function NETWORK.NETWORK_DISABLE_PROXIMITY_MIGRATION(netID)
  native.invoke(
    Type.Void, 3392, false,
    arg(Type.Int, netID)
  )
end

-- void NETWORK_SET_PROPERTY_ID(int id) // 0x1775961C2FBBCB5C
--[[
value must be < 255
--]]
function NETWORK.NETWORK_SET_PROPERTY_ID(id)
  native.invoke(
    Type.Void, 3393, false,
    arg(Type.Int, id)
  )
end

-- void NETWORK_CLEAR_PROPERTY_ID() // 0xC2B82527CA77053E
function NETWORK.NETWORK_CLEAR_PROPERTY_ID()
  native.invoke(
    Type.Void, 3394, false
  )
end

-- void NETWORK_SET_PLAYER_MENTAL_STATE(int p0) // 0x367EF5E2F439B4C6
--[[
p0 in the decompiled scripts is always the stat mesh_texblend * 0.07 to int
--]]
function NETWORK.NETWORK_SET_PLAYER_MENTAL_STATE(p0)
  native.invoke(
    Type.Void, 3395, false,
    arg(Type.Int, p0)
  )
end

-- void NETWORK_SET_MINIMUM_RANK_FOR_MISSION(BOOL p0) // 0x94538037EE44F5CF
function NETWORK.NETWORK_SET_MINIMUM_RANK_FOR_MISSION(p0)
  native.invoke(
    Type.Void, 3396, false,
    arg(Type.Bool, p0)
  )
end

-- void NETWORK_CACHE_LOCAL_PLAYER_HEAD_BLEND_DATA() // 0xBD0BE0BFC927EAC1
function NETWORK.NETWORK_CACHE_LOCAL_PLAYER_HEAD_BLEND_DATA()
  native.invoke(
    Type.Void, 3397, false
  )
end

-- BOOL NETWORK_HAS_CACHED_PLAYER_HEAD_BLEND_DATA(Player player) // 0x237D5336A9A54108
function NETWORK.NETWORK_HAS_CACHED_PLAYER_HEAD_BLEND_DATA(player)
  return native.invoke(
    Type.Bool, 3398, false,
    arg(Type.Player, player)
  )
end

-- BOOL NETWORK_APPLY_CACHED_PLAYER_HEAD_BLEND_DATA(Ped ped, Player player) // 0x99B72C7ABDE5C910
function NETWORK.NETWORK_APPLY_CACHED_PLAYER_HEAD_BLEND_DATA(ped, player)
  return native.invoke(
    Type.Bool, 3399, false,
    arg(Type.Ped, ped),
    arg(Type.Player, player)
  )
end

-- int GET_NUM_COMMERCE_ITEMS() // 0xF2EAC213D5EA0623
function NETWORK.GET_NUM_COMMERCE_ITEMS()
  return native.invoke(
    Type.Int, 3400, false
  )
end

-- BOOL IS_COMMERCE_DATA_VALID() // 0xEA14EEF5B7CD2C30
function NETWORK.IS_COMMERCE_DATA_VALID()
  return native.invoke(
    Type.Bool, 3401, false
  )
end

-- void TRIGGER_COMMERCE_DATA_FETCH(Any p0) // 0xB606E6CC59664972
--[[
Does nothing (it's a nullsub).
--]]
function NETWORK.TRIGGER_COMMERCE_DATA_FETCH(p0)
  native.invoke(
    Type.Void, 3402, false,
    arg(Type.Any, p0)
  )
end

-- BOOL IS_COMMERCE_DATA_FETCH_IN_PROGRESS() // 0x1D4DC17C38FEAFF0
function NETWORK.IS_COMMERCE_DATA_FETCH_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 3403, false
  )
end

-- const char* GET_COMMERCE_ITEM_ID(int index) // 0x662635855957C411
function NETWORK.GET_COMMERCE_ITEM_ID(index)
  return native.invoke(
    Type.String, 3404, false,
    arg(Type.Int, index)
  )
end

-- const char* GET_COMMERCE_ITEM_NAME(int index) // 0xB4271092CA7EDF48
function NETWORK.GET_COMMERCE_ITEM_NAME(index)
  return native.invoke(
    Type.String, 3405, false,
    arg(Type.Int, index)
  )
end

-- const char* GET_COMMERCE_PRODUCT_PRICE(int index) // 0xCA94551B50B4932C
function NETWORK.GET_COMMERCE_PRODUCT_PRICE(index)
  return native.invoke(
    Type.String, 3406, false,
    arg(Type.Int, index)
  )
end

-- int GET_COMMERCE_ITEM_NUM_CATS(int index) // 0x2A7776C709904AB0
function NETWORK.GET_COMMERCE_ITEM_NUM_CATS(index)
  return native.invoke(
    Type.Int, 3407, false,
    arg(Type.Int, index)
  )
end

-- const char* GET_COMMERCE_ITEM_CAT(int index, int index2) // 0x6F44CBF56D79FAC0
--[[
index2 is unused
--]]
function NETWORK.GET_COMMERCE_ITEM_CAT(index, index2)
  return native.invoke(
    Type.String, 3408, false,
    arg(Type.Int, index),
    arg(Type.Int, index2)
  )
end

-- void OPEN_COMMERCE_STORE(const char* p0, const char* p1, int p2) // 0x58C21165F6545892
function NETWORK.OPEN_COMMERCE_STORE(p0, p1, p2)
  native.invoke(
    Type.Void, 3409, false,
    arg(Type.String, p0),
    arg(Type.String, p1),
    arg(Type.Int, p2)
  )
end

-- BOOL IS_COMMERCE_STORE_OPEN() // 0x2EAC52B4019E2782
function NETWORK.IS_COMMERCE_STORE_OPEN()
  return native.invoke(
    Type.Bool, 3410, false
  )
end

-- void SET_STORE_ENABLED(BOOL toggle) // 0x9641A9FF718E9C5E
--[[
Access to the store for shark cards etc...
--]]
function NETWORK.SET_STORE_ENABLED(toggle)
  native.invoke(
    Type.Void, 3411, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL REQUEST_COMMERCE_ITEM_IMAGE(int index) // 0xA2F952104FC6DD4B
function NETWORK.REQUEST_COMMERCE_ITEM_IMAGE(index)
  return native.invoke(
    Type.Bool, 3412, false,
    arg(Type.Int, index)
  )
end

-- void RELEASE_ALL_COMMERCE_ITEM_IMAGES() // 0x72D0706CD6CCDB58
function NETWORK.RELEASE_ALL_COMMERCE_ITEM_IMAGES()
  native.invoke(
    Type.Void, 3413, false
  )
end

-- const char* GET_COMMERCE_ITEM_TEXTURENAME(int index) // 0x722F5D28B61C5EA8
function NETWORK.GET_COMMERCE_ITEM_TEXTURENAME(index)
  return native.invoke(
    Type.String, 3414, false,
    arg(Type.Int, index)
  )
end

-- BOOL IS_STORE_AVAILABLE_TO_USER() // 0x883D79C4071E18B3
function NETWORK.IS_STORE_AVAILABLE_TO_USER()
  return native.invoke(
    Type.Bool, 3415, false
  )
end

-- void DELAY_MP_STORE_OPEN() // 0x265635150FB0D82E
function NETWORK.DELAY_MP_STORE_OPEN()
  native.invoke(
    Type.Void, 3416, false
  )
end

-- void RESET_STORE_NETWORK_GAME_TRACKING() // 0x444C4525ECE0A4B9
function NETWORK.RESET_STORE_NETWORK_GAME_TRACKING()
  native.invoke(
    Type.Void, 3417, false
  )
end

-- BOOL IS_USER_OLD_ENOUGH_TO_ACCESS_STORE() // 0x59328EB08C5CEB2B
function NETWORK.IS_USER_OLD_ENOUGH_TO_ACCESS_STORE()
  return native.invoke(
    Type.Bool, 3418, false
  )
end

-- void SET_LAST_VIEWED_SHOP_ITEM(Hash p0, int p1, Hash p2) // 0xFAE628F1E9ADB239
function NETWORK.SET_LAST_VIEWED_SHOP_ITEM(p0, p1, p2)
  native.invoke(
    Type.Void, 3419, false,
    arg(Type.Hash, p0),
    arg(Type.Int, p1),
    arg(Type.Hash, p2)
  )
end

-- int GET_USER_PREMIUM_ACCESS() // 0x754615490A029508
--[[
Checks some commerce stuff
--]]
function NETWORK.GET_USER_PREMIUM_ACCESS()
  return native.invoke(
    Type.Int, 3420, false
  )
end

-- int GET_USER_STARTER_ACCESS() // 0x155467ACA0F55705
--[[
Checks some commerce stuff
--]]
function NETWORK.GET_USER_STARTER_ACCESS()
  return native.invoke(
    Type.Int, 3421, false
  )
end

-- int CLOUD_DELETE_MEMBER_FILE(const char* p0) // 0xC64DED7EF0D2FE37
function NETWORK.CLOUD_DELETE_MEMBER_FILE(p0)
  return native.invoke(
    Type.Int, 3422, false,
    arg(Type.String, p0)
  )
end

-- BOOL CLOUD_HAS_REQUEST_COMPLETED(int requestId) // 0x4C61B39930D045DA
function NETWORK.CLOUD_HAS_REQUEST_COMPLETED(requestId)
  return native.invoke(
    Type.Bool, 3423, false,
    arg(Type.Int, requestId)
  )
end

-- BOOL CLOUD_DID_REQUEST_SUCCEED(int requestId) // 0x3A3D5568AF297CD5
function NETWORK.CLOUD_DID_REQUEST_SUCCEED(requestId)
  return native.invoke(
    Type.Bool, 3424, false,
    arg(Type.Int, requestId)
  )
end

-- void CLOUD_CHECK_AVAILABILITY() // 0x4F18196C8D38768D
--[[
Downloads prod.cloud.rockstargames.com/titles/gta5/[platform]/check.json
--]]
function NETWORK.CLOUD_CHECK_AVAILABILITY()
  native.invoke(
    Type.Void, 3425, false
  )
end

-- BOOL CLOUD_IS_CHECKING_AVAILABILITY() // 0xC7ABAC5DE675EE3B
function NETWORK.CLOUD_IS_CHECKING_AVAILABILITY()
  return native.invoke(
    Type.Bool, 3426, false
  )
end

-- BOOL CLOUD_GET_AVAILABILITY_CHECK_RESULT() // 0x0B0CC10720653F3B
function NETWORK.CLOUD_GET_AVAILABILITY_CHECK_RESULT()
  return native.invoke(
    Type.Bool, 3427, false
  )
end

-- int GET_CONTENT_TO_LOAD_TYPE() // 0x8B0C2964BA471961
--[[
This function is hard-coded to always return 0.
--]]
function NETWORK.GET_CONTENT_TO_LOAD_TYPE()
  return native.invoke(
    Type.Int, 3428, false
  )
end

-- BOOL GET_IS_LAUNCH_FROM_LIVE_AREA() // 0x88B588B41FF7868E
--[[
This function is hard-coded to always return 0.
--]]
function NETWORK.GET_IS_LAUNCH_FROM_LIVE_AREA()
  return native.invoke(
    Type.Bool, 3429, false
  )
end

-- BOOL GET_IS_LIVE_AREA_LAUNCH_WITH_CONTENT() // 0x67FC09BC554A75E5
--[[
This function is hard-coded to always return 0.
--]]
function NETWORK.GET_IS_LIVE_AREA_LAUNCH_WITH_CONTENT()
  return native.invoke(
    Type.Bool, 3430, false
  )
end

-- void CLEAR_SERVICE_EVENT_ARGUMENTS() // 0x966DD84FB6A46017
--[[
This native does absolutely nothing, just a nullsub
--]]
function NETWORK.CLEAR_SERVICE_EVENT_ARGUMENTS()
  native.invoke(
    Type.Void, 3431, false
  )
end

-- BOOL UGC_COPY_CONTENT(Any* p0, Any* p1) // 0x152D90E4C1B4738A
function NETWORK.UGC_COPY_CONTENT(p0, p1)
  return native.invoke(
    Type.Bool, 3432, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- BOOL UGC_IS_CREATING() // 0x9FEDF86898F100E9
function NETWORK.UGC_IS_CREATING()
  return native.invoke(
    Type.Bool, 3433, false
  )
end

-- BOOL UGC_HAS_CREATE_FINISHED() // 0x5E24341A7F92A74B
function NETWORK.UGC_HAS_CREATE_FINISHED()
  return native.invoke(
    Type.Bool, 3434, false
  )
end

-- BOOL UGC_DID_CREATE_SUCCEED() // 0x24E4E51FC16305F9
function NETWORK.UGC_DID_CREATE_SUCCEED()
  return native.invoke(
    Type.Bool, 3435, false
  )
end

-- int UGC_GET_CREATE_RESULT() // 0xFBC5E768C7A77A6A
function NETWORK.UGC_GET_CREATE_RESULT()
  return native.invoke(
    Type.Int, 3436, false
  )
end

-- const char* UGC_GET_CREATE_CONTENT_ID() // 0xC55A0B40FFB1ED23
function NETWORK.UGC_GET_CREATE_CONTENT_ID()
  return native.invoke(
    Type.String, 3437, false
  )
end

-- void UGC_CLEAR_CREATE_RESULT() // 0x17440AA15D1D3739
function NETWORK.UGC_CLEAR_CREATE_RESULT()
  native.invoke(
    Type.Void, 3438, false
  )
end

-- BOOL UGC_QUERY_MY_CONTENT(Any p0, Any p1, Any* p2, Any p3, Any p4, Any p5) // 0x9BF438815F5D96EA
function NETWORK.UGC_QUERY_MY_CONTENT(p0, p1, p2, p3, p4, p5)
  return native.invoke(
    Type.Bool, 3439, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    ref(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- BOOL UGC_QUERY_BY_CATEGORY(Any p0, Any p1, Any p2, const char* p3, Any p4, BOOL p5) // 0x692D58DF40657E8C
function NETWORK.UGC_QUERY_BY_CATEGORY(p0, p1, p2, p3, p4, p5)
  return native.invoke(
    Type.Bool, 3440, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.String, p3),
    arg(Type.Any, p4),
    arg(Type.Bool, p5)
  )
end

-- BOOL UGC_QUERY_BY_CONTENT_ID(const char* contentId, BOOL latestVersion, const char* contentTypeName) // 0x158EC424F35EC469
function NETWORK.UGC_QUERY_BY_CONTENT_ID(contentId, latestVersion, contentTypeName)
  return native.invoke(
    Type.Bool, 3441, false,
    arg(Type.String, contentId),
    arg(Type.Bool, latestVersion),
    arg(Type.String, contentTypeName)
  )
end

-- BOOL UGC_QUERY_BY_CONTENT_IDS(Any* data, int count, BOOL latestVersion, const char* contentTypeName) // 0xC7397A83F7A2A462
function NETWORK.UGC_QUERY_BY_CONTENT_IDS(data, count, latestVersion, contentTypeName)
  return native.invoke(
    Type.Bool, 3442, false,
    ref(Type.Any, data),
    arg(Type.Int, count),
    arg(Type.Bool, latestVersion),
    arg(Type.String, contentTypeName)
  )
end

-- BOOL UGC_QUERY_MOST_RECENTLY_CREATED_CONTENT(int offset, int count, const char* contentTypeName, int p3) // 0x6D4CB481FAC835E8
function NETWORK.UGC_QUERY_MOST_RECENTLY_CREATED_CONTENT(offset, count, contentTypeName, p3)
  return native.invoke(
    Type.Bool, 3443, false,
    arg(Type.Int, offset),
    arg(Type.Int, count),
    arg(Type.String, contentTypeName),
    arg(Type.Int, p3)
  )
end

-- BOOL UGC_GET_BOOKMARKED_CONTENT(Any p0, Any p1, const char* p2, Any* p3) // 0xD5A4B59980401588
function NETWORK.UGC_GET_BOOKMARKED_CONTENT(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3444, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.String, p2),
    ref(Type.Any, p3)
  )
end

-- BOOL UGC_GET_MY_CONTENT(Any p0, Any p1, const char* p2, Any* p3) // 0x3195F8DD0D531052
function NETWORK.UGC_GET_MY_CONTENT(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3445, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.String, p2),
    ref(Type.Any, p3)
  )
end

-- BOOL UGC_GET_FRIEND_CONTENT(Any p0, Any p1, const char* p2, Any* p3) // 0xF9E1CCAE8BA4C281
function NETWORK.UGC_GET_FRIEND_CONTENT(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3446, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.String, p2),
    ref(Type.Any, p3)
  )
end

-- BOOL UGC_GET_CREW_CONTENT(Any p0, Any p1, Any p2, const char* p3, Any* p4) // 0x9F6E2821885CAEE2
function NETWORK.UGC_GET_CREW_CONTENT(p0, p1, p2, p3, p4)
  return native.invoke(
    Type.Bool, 3447, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.String, p3),
    ref(Type.Any, p4)
  )
end

-- BOOL UGC_GET_GET_BY_CATEGORY(Any p0, Any p1, Any p2, const char* p3, Any* p4) // 0x678BB03C1A3BD51E
function NETWORK.UGC_GET_GET_BY_CATEGORY(p0, p1, p2, p3, p4)
  return native.invoke(
    Type.Bool, 3448, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.String, p3),
    ref(Type.Any, p4)
  )
end

-- BOOL UGC_GET_GET_BY_CONTENT_ID(const char* contentId, const char* contentTypeName) // 0x815E5E3073DA1D67
function NETWORK.UGC_GET_GET_BY_CONTENT_ID(contentId, contentTypeName)
  return native.invoke(
    Type.Bool, 3449, false,
    arg(Type.String, contentId),
    arg(Type.String, contentTypeName)
  )
end

-- BOOL UGC_GET_GET_BY_CONTENT_IDS(Any* data, int dataCount, const char* contentTypeName) // 0xB8322EEB38BE7C26
function NETWORK.UGC_GET_GET_BY_CONTENT_IDS(data, dataCount, contentTypeName)
  return native.invoke(
    Type.Bool, 3450, false,
    ref(Type.Any, data),
    arg(Type.Int, dataCount),
    arg(Type.String, contentTypeName)
  )
end

-- BOOL UGC_GET_MOST_RECENTLY_CREATED_CONTENT(Any p0, Any p1, Any* p2, Any* p3) // 0xA7862BC5ED1DFD7E
function NETWORK.UGC_GET_MOST_RECENTLY_CREATED_CONTENT(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3451, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    ref(Type.Any, p2),
    ref(Type.Any, p3)
  )
end

-- BOOL UGC_GET_MOST_RECENTLY_PLAYED_CONTENT(Any p0, Any p1, Any* p2, Any* p3) // 0x97A770BEEF227E2B
function NETWORK.UGC_GET_MOST_RECENTLY_PLAYED_CONTENT(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3452, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    ref(Type.Any, p2),
    ref(Type.Any, p3)
  )
end

-- BOOL UGC_GET_TOP_RATED_CONTENT(Any p0, Any p1, Any* p2, Any* p3) // 0x5324A0E3E4CE3570
function NETWORK.UGC_GET_TOP_RATED_CONTENT(p0, p1, p2, p3)
  return native.invoke(
    Type.Bool, 3453, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    ref(Type.Any, p2),
    ref(Type.Any, p3)
  )
end

-- void UGC_CANCEL_QUERY() // 0xE9B99B6853181409
function NETWORK.UGC_CANCEL_QUERY()
  native.invoke(
    Type.Void, 3454, false
  )
end

-- BOOL UGC_IS_GETTING() // 0xD53ACDBEF24A46E8
function NETWORK.UGC_IS_GETTING()
  return native.invoke(
    Type.Bool, 3455, false
  )
end

-- BOOL UGC_HAS_GET_FINISHED() // 0x02ADA21EA2F6918F
function NETWORK.UGC_HAS_GET_FINISHED()
  return native.invoke(
    Type.Bool, 3456, false
  )
end

-- BOOL UGC_DID_GET_SUCCEED() // 0x941E5306BCD7C2C7
function NETWORK.UGC_DID_GET_SUCCEED()
  return native.invoke(
    Type.Bool, 3457, false
  )
end

-- BOOL UGC_WAS_QUERY_FORCE_CANCELLED() // 0xC87E740D9F3872CC
function NETWORK.UGC_WAS_QUERY_FORCE_CANCELLED()
  return native.invoke(
    Type.Bool, 3458, false
  )
end

-- int UGC_GET_QUERY_RESULT() // 0xEDF7F927136C224B
function NETWORK.UGC_GET_QUERY_RESULT()
  return native.invoke(
    Type.Int, 3459, false
  )
end

-- int UGC_GET_CONTENT_NUM() // 0xE0A6138401BCB837
function NETWORK.UGC_GET_CONTENT_NUM()
  return native.invoke(
    Type.Int, 3460, false
  )
end

-- int UGC_GET_CONTENT_TOTAL() // 0x769951E2455E2EB5
function NETWORK.UGC_GET_CONTENT_TOTAL()
  return native.invoke(
    Type.Int, 3461, false
  )
end

-- Hash UGC_GET_CONTENT_HASH() // 0x3A17A27D75C74887
function NETWORK.UGC_GET_CONTENT_HASH()
  return native.invoke(
    Type.Hash, 3462, false
  )
end

-- void UGC_CLEAR_QUERY_RESULTS() // 0xBA96394A0EECFA65
function NETWORK.UGC_CLEAR_QUERY_RESULTS()
  native.invoke(
    Type.Void, 3463, false
  )
end

-- const char* UGC_GET_CONTENT_USER_ID(int p0) // 0xCD67AD041A394C9C
function NETWORK.UGC_GET_CONTENT_USER_ID(p0)
  return native.invoke(
    Type.String, 3464, false,
    arg(Type.Int, p0)
  )
end

-- BOOL UGC_GET_CONTENT_CREATOR_GAMER_HANDLE(int p0, Any* p1) // 0x584770794D758C18
function NETWORK.UGC_GET_CONTENT_CREATOR_GAMER_HANDLE(p0, p1)
  return native.invoke(
    Type.Bool, 3465, false,
    arg(Type.Int, p0),
    ref(Type.Any, p1)
  )
end

-- BOOL UGC_GET_CONTENT_CREATED_BY_LOCAL_PLAYER(Any p0) // 0x8C8D2739BA44AF0F
function NETWORK.UGC_GET_CONTENT_CREATED_BY_LOCAL_PLAYER(p0)
  return native.invoke(
    Type.Bool, 3466, false,
    arg(Type.Any, p0)
  )
end

-- const char* UGC_GET_CONTENT_USER_NAME(Any p0) // 0x703F12425ECA8BF5
function NETWORK.UGC_GET_CONTENT_USER_NAME(p0)
  return native.invoke(
    Type.String, 3467, false,
    arg(Type.Any, p0)
  )
end

-- BOOL UGC_GET_CONTENT_IS_USING_SC_NICKNAME(Any p0) // 0xAEAB987727C5A8A4
function NETWORK.UGC_GET_CONTENT_IS_USING_SC_NICKNAME(p0)
  return native.invoke(
    Type.Bool, 3468, false,
    arg(Type.Any, p0)
  )
end

-- int UGC_GET_CONTENT_CATEGORY(int p0) // 0xA7BAB11E7C9C6C5A
function NETWORK.UGC_GET_CONTENT_CATEGORY(p0)
  return native.invoke(
    Type.Int, 3469, false,
    arg(Type.Int, p0)
  )
end

-- const char* UGC_GET_CONTENT_ID(int p0) // 0x55AA95F481D694D2
--[[
Return the mission id of a job.
--]]
function NETWORK.UGC_GET_CONTENT_ID(p0)
  return native.invoke(
    Type.String, 3470, false,
    arg(Type.Int, p0)
  )
end

-- const char* UGC_GET_ROOT_CONTENT_ID(int p0) // 0xC0173D6BFF4E0348
--[[
Return the root content id of a job.
--]]
function NETWORK.UGC_GET_ROOT_CONTENT_ID(p0)
  return native.invoke(
    Type.String, 3471, false,
    arg(Type.Int, p0)
  )
end

-- const char* UGC_GET_CONTENT_NAME(Any p0) // 0xBF09786A7FCAB582
function NETWORK.UGC_GET_CONTENT_NAME(p0)
  return native.invoke(
    Type.String, 3472, false,
    arg(Type.Any, p0)
  )
end

-- int UGC_GET_CONTENT_DESCRIPTION_HASH(Any p0) // 0x7CF0448787B23758
function NETWORK.UGC_GET_CONTENT_DESCRIPTION_HASH(p0)
  return native.invoke(
    Type.Int, 3473, false,
    arg(Type.Any, p0)
  )
end

-- const char* UGC_GET_CONTENT_PATH(int p0, int p1) // 0xBAF6BABF9E7CCC13
function NETWORK.UGC_GET_CONTENT_PATH(p0, p1)
  return native.invoke(
    Type.String, 3474, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1)
  )
end

-- void UGC_GET_CONTENT_UPDATED_DATE(Any p0, Any* p1) // 0xCFD115B373C0DF63
function NETWORK.UGC_GET_CONTENT_UPDATED_DATE(p0, p1)
  native.invoke(
    Type.Void, 3475, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- int UGC_GET_CONTENT_FILE_VERSION(Any p0, Any p1) // 0x37025B27D9B658B1
function NETWORK.UGC_GET_CONTENT_FILE_VERSION(p0, p1)
  return native.invoke(
    Type.Int, 3476, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL UGC_GET_CONTENT_HAS_LO_RES_PHOTO(int p0) // 0x1D610EB0FEA716D9
function NETWORK.UGC_GET_CONTENT_HAS_LO_RES_PHOTO(p0)
  return native.invoke(
    Type.Bool, 3477, false,
    arg(Type.Int, p0)
  )
end

-- BOOL UGC_GET_CONTENT_HAS_HI_RES_PHOTO(int p0) // 0x7FCC39C46C3C03BD
function NETWORK.UGC_GET_CONTENT_HAS_HI_RES_PHOTO(p0)
  return native.invoke(
    Type.Bool, 3478, false,
    arg(Type.Int, p0)
  )
end

-- int UGC_GET_CONTENT_LANGUAGE(Any p0) // 0x32DD916F3F7C9672
function NETWORK.UGC_GET_CONTENT_LANGUAGE(p0)
  return native.invoke(
    Type.Int, 3479, false,
    arg(Type.Any, p0)
  )
end

-- BOOL UGC_GET_CONTENT_IS_PUBLISHED(Any p0) // 0x3054F114121C21EA
function NETWORK.UGC_GET_CONTENT_IS_PUBLISHED(p0)
  return native.invoke(
    Type.Bool, 3480, false,
    arg(Type.Any, p0)
  )
end

-- BOOL UGC_GET_CONTENT_IS_VERIFIED(Any p0) // 0xA9240A96C74CCA13
function NETWORK.UGC_GET_CONTENT_IS_VERIFIED(p0)
  return native.invoke(
    Type.Bool, 3481, false,
    arg(Type.Any, p0)
  )
end

-- float UGC_GET_CONTENT_RATING(Any p0, Any p1) // 0x1ACCFBA3D8DAB2EE
function NETWORK.UGC_GET_CONTENT_RATING(p0, p1)
  return native.invoke(
    Type.Float, 3482, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- int UGC_GET_CONTENT_RATING_COUNT(Any p0, Any p1) // 0x759299C5BB31D2A9
function NETWORK.UGC_GET_CONTENT_RATING_COUNT(p0, p1)
  return native.invoke(
    Type.Int, 3483, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- int UGC_GET_CONTENT_RATING_POSITIVE_COUNT(Any p0, Any p1) // 0x87E5C46C187FE0AE
function NETWORK.UGC_GET_CONTENT_RATING_POSITIVE_COUNT(p0, p1)
  return native.invoke(
    Type.Int, 3484, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- int UGC_GET_CONTENT_RATING_NEGATIVE_COUNT(Any p0, Any p1) // 0x4E548C0D7AE39FF9
function NETWORK.UGC_GET_CONTENT_RATING_NEGATIVE_COUNT(p0, p1)
  return native.invoke(
    Type.Int, 3485, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL UGC_GET_CONTENT_HAS_PLAYER_RECORD(Any p0) // 0x70EA8DA57840F9BE
function NETWORK.UGC_GET_CONTENT_HAS_PLAYER_RECORD(p0)
  return native.invoke(
    Type.Bool, 3486, false,
    arg(Type.Any, p0)
  )
end

-- BOOL UGC_GET_CONTENT_HAS_PLAYER_BOOKMARKED(Any p0) // 0x993CBE59D350D225
function NETWORK.UGC_GET_CONTENT_HAS_PLAYER_BOOKMARKED(p0)
  return native.invoke(
    Type.Bool, 3487, false,
    arg(Type.Any, p0)
  )
end

-- int UGC_REQUEST_CONTENT_DATA_FROM_INDEX(int p0, int p1) // 0x171DF6A0C07FB3DC
function NETWORK.UGC_REQUEST_CONTENT_DATA_FROM_INDEX(p0, p1)
  return native.invoke(
    Type.Int, 3488, false,
    arg(Type.Int, p0),
    arg(Type.Int, p1)
  )
end

-- int UGC_REQUEST_CONTENT_DATA_FROM_PARAMS(const char* contentTypeName, const char* contentId, int p2, int p3, int p4) // 0x7FD2990AF016795E
function NETWORK.UGC_REQUEST_CONTENT_DATA_FROM_PARAMS(contentTypeName, contentId, p2, p3, p4)
  return native.invoke(
    Type.Int, 3489, false,
    arg(Type.String, contentTypeName),
    arg(Type.String, contentId),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Int, p4)
  )
end

-- int UGC_REQUEST_CACHED_DESCRIPTION(int p0) // 0x5E0165278F6339EE
function NETWORK.UGC_REQUEST_CACHED_DESCRIPTION(p0)
  return native.invoke(
    Type.Int, 3490, false,
    arg(Type.Int, p0)
  )
end

-- BOOL UGC_IS_DESCRIPTION_REQUEST_IN_PROGRESS(Any p0) // 0x2D5DC831176D0114
function NETWORK.UGC_IS_DESCRIPTION_REQUEST_IN_PROGRESS(p0)
  return native.invoke(
    Type.Bool, 3491, false,
    arg(Type.Any, p0)
  )
end

-- BOOL UGC_HAS_DESCRIPTION_REQUEST_FINISHED(Any p0) // 0xEBFA8D50ADDC54C4
function NETWORK.UGC_HAS_DESCRIPTION_REQUEST_FINISHED(p0)
  return native.invoke(
    Type.Bool, 3492, false,
    arg(Type.Any, p0)
  )
end

-- BOOL UGC_DID_DESCRIPTION_REQUEST_SUCCEED(Any p0) // 0x162C23CA83ED0A62
function NETWORK.UGC_DID_DESCRIPTION_REQUEST_SUCCEED(p0)
  return native.invoke(
    Type.Bool, 3493, false,
    arg(Type.Any, p0)
  )
end

-- const char* UGC_GET_CACHED_DESCRIPTION(Any p0, Any p1) // 0x40F7E66472DF3E5C
function NETWORK.UGC_GET_CACHED_DESCRIPTION(p0, p1)
  return native.invoke(
    Type.String, 3494, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL UGC_RELEASE_CACHED_DESCRIPTION(Any p0) // 0x5A34CD9C3C5BEC44
function NETWORK.UGC_RELEASE_CACHED_DESCRIPTION(p0)
  return native.invoke(
    Type.Bool, 3495, false,
    arg(Type.Any, p0)
  )
end

-- void UGC_RELEASE_ALL_CACHED_DESCRIPTIONS() // 0x68103E2247887242
function NETWORK.UGC_RELEASE_ALL_CACHED_DESCRIPTIONS()
  native.invoke(
    Type.Void, 3496, false
  )
end

-- BOOL UGC_HAS_PERMISSION_TO_WRITE() // 0xC33E7CBC06EC1A8D
function NETWORK.UGC_HAS_PERMISSION_TO_WRITE()
  return native.invoke(
    Type.Bool, 3497, false
  )
end

-- BOOL UGC_PUBLISH(const char* contentId, const char* baseContentId, const char* contentTypeName) // 0x1DE0F5F50D723CAA
function NETWORK.UGC_PUBLISH(contentId, baseContentId, contentTypeName)
  return native.invoke(
    Type.Bool, 3498, false,
    arg(Type.String, contentId),
    arg(Type.String, baseContentId),
    arg(Type.String, contentTypeName)
  )
end

-- BOOL UGC_SET_BOOKMARKED(const char* contentId, BOOL bookmarked, const char* contentTypeName) // 0x274A1519DFC1094F
function NETWORK.UGC_SET_BOOKMARKED(contentId, bookmarked, contentTypeName)
  return native.invoke(
    Type.Bool, 3499, false,
    arg(Type.String, contentId),
    arg(Type.Bool, bookmarked),
    arg(Type.String, contentTypeName)
  )
end

-- BOOL UGC_SET_DELETED(Any* p0, BOOL p1, const char* p2) // 0xD05D1A6C74DA3498
function NETWORK.UGC_SET_DELETED(p0, p1, p2)
  return native.invoke(
    Type.Bool, 3500, false,
    ref(Type.Any, p0),
    arg(Type.Bool, p1),
    arg(Type.String, p2)
  )
end

-- BOOL UGC_IS_MODIFYING() // 0x45E816772E93A9DB
function NETWORK.UGC_IS_MODIFYING()
  return native.invoke(
    Type.Bool, 3501, false
  )
end

-- BOOL UGC_HAS_MODIFY_FINISHED() // 0x299EF3C576773506
function NETWORK.UGC_HAS_MODIFY_FINISHED()
  return native.invoke(
    Type.Bool, 3502, false
  )
end

-- BOOL UGC_DID_MODIFY_SUCCEED() // 0x793FF272D5B365F4
function NETWORK.UGC_DID_MODIFY_SUCCEED()
  return native.invoke(
    Type.Bool, 3503, false
  )
end

-- int UGC_GET_MODIFY_RESULT() // 0x5A0A3D1A186A5508
function NETWORK.UGC_GET_MODIFY_RESULT()
  return native.invoke(
    Type.Int, 3504, false
  )
end

-- void UGC_CLEAR_MODIFY_RESULT() // 0xA1E5E0204A6FCC70
function NETWORK.UGC_CLEAR_MODIFY_RESULT()
  native.invoke(
    Type.Void, 3505, false
  )
end

-- BOOL UGC_GET_CREATORS_BY_USER_ID(Any* p0, Any* p1) // 0xB746D20B17F2A229
function NETWORK.UGC_GET_CREATORS_BY_USER_ID(p0, p1)
  return native.invoke(
    Type.Bool, 3506, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- BOOL UGC_HAS_QUERY_CREATORS_FINISHED() // 0x63B406D7884BFA95
function NETWORK.UGC_HAS_QUERY_CREATORS_FINISHED()
  return native.invoke(
    Type.Bool, 3507, false
  )
end

-- BOOL UGC_DID_QUERY_CREATORS_SUCCEED() // 0x4D02279C83BE69FE
function NETWORK.UGC_DID_QUERY_CREATORS_SUCCEED()
  return native.invoke(
    Type.Bool, 3508, false
  )
end

-- int UGC_GET_CREATOR_NUM() // 0x597F8DBA9B206FC7
function NETWORK.UGC_GET_CREATOR_NUM()
  return native.invoke(
    Type.Int, 3509, false
  )
end

-- BOOL UGC_LOAD_OFFLINE_QUERY(Any p0) // 0x5CAE833B0EE0C500
function NETWORK.UGC_LOAD_OFFLINE_QUERY(p0)
  return native.invoke(
    Type.Bool, 3510, false,
    arg(Type.Any, p0)
  )
end

-- void UGC_CLEAR_OFFLINE_QUERY() // 0x61A885D3F7CFEE9A
function NETWORK.UGC_CLEAR_OFFLINE_QUERY()
  native.invoke(
    Type.Void, 3511, false
  )
end

-- void UGC_SET_QUERY_DATA_FROM_OFFLINE(BOOL p0) // 0xF98DDE0A8ED09323
function NETWORK.UGC_SET_QUERY_DATA_FROM_OFFLINE(p0)
  native.invoke(
    Type.Void, 3512, false,
    arg(Type.Bool, p0)
  )
end

-- void UGC_SET_USING_OFFLINE_CONTENT(BOOL p0) // 0xFD75DABC0957BF33
function NETWORK.UGC_SET_USING_OFFLINE_CONTENT(p0)
  native.invoke(
    Type.Void, 3513, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL UGC_IS_LANGUAGE_SUPPORTED(Any p0) // 0xF53E48461B71EECB
function NETWORK.UGC_IS_LANGUAGE_SUPPORTED(p0)
  return native.invoke(
    Type.Bool, 3514, false,
    arg(Type.Any, p0)
  )
end

-- BOOL FACEBOOK_POST_COMPLETED_HEIST(const char* heistName, int cashEarned, int xpEarned) // 0x098AB65B9ED9A9EC
function NETWORK.FACEBOOK_POST_COMPLETED_HEIST(heistName, cashEarned, xpEarned)
  return native.invoke(
    Type.Bool, 3515, false,
    arg(Type.String, heistName),
    arg(Type.Int, cashEarned),
    arg(Type.Int, xpEarned)
  )
end

-- BOOL FACEBOOK_POST_CREATE_CHARACTER() // 0xDC48473142545431
function NETWORK.FACEBOOK_POST_CREATE_CHARACTER()
  return native.invoke(
    Type.Bool, 3516, false
  )
end

-- BOOL FACEBOOK_POST_COMPLETED_MILESTONE(int milestoneId) // 0x0AE1F1653B554AB9
function NETWORK.FACEBOOK_POST_COMPLETED_MILESTONE(milestoneId)
  return native.invoke(
    Type.Bool, 3517, false,
    arg(Type.Int, milestoneId)
  )
end

-- BOOL FACEBOOK_HAS_POST_COMPLETED() // 0x62B9FEC9A11F10EF
function NETWORK.FACEBOOK_HAS_POST_COMPLETED()
  return native.invoke(
    Type.Bool, 3518, false
  )
end

-- BOOL FACEBOOK_DID_POST_SUCCEED() // 0xA75E2B6733DA5142
function NETWORK.FACEBOOK_DID_POST_SUCCEED()
  return native.invoke(
    Type.Bool, 3519, false
  )
end

-- BOOL FACEBOOK_CAN_POST_TO_FACEBOOK() // 0x43865688AE10F0D7
function NETWORK.FACEBOOK_CAN_POST_TO_FACEBOOK()
  return native.invoke(
    Type.Bool, 3520, false
  )
end

-- int TEXTURE_DOWNLOAD_REQUEST(Any* gamerHandle, const char* filePath, const char* name, BOOL p3) // 0x16160DA74A8E74A2
function NETWORK.TEXTURE_DOWNLOAD_REQUEST(gamerHandle, filePath, name, p3)
  return native.invoke(
    Type.Int, 3521, false,
    ref(Type.Any, gamerHandle),
    arg(Type.String, filePath),
    arg(Type.String, name),
    arg(Type.Bool, p3)
  )
end

-- int TITLE_TEXTURE_DOWNLOAD_REQUEST(const char* filePath, const char* name, BOOL p2) // 0x0B203B4AFDE53A4F
function NETWORK.TITLE_TEXTURE_DOWNLOAD_REQUEST(filePath, name, p2)
  return native.invoke(
    Type.Int, 3522, false,
    arg(Type.String, filePath),
    arg(Type.String, name),
    arg(Type.Bool, p2)
  )
end

-- int UGC_TEXTURE_DOWNLOAD_REQUEST(const char* p0, int p1, int p2, int p3, const char* p4, BOOL p5) // 0x308F96458B7087CC
function NETWORK.UGC_TEXTURE_DOWNLOAD_REQUEST(p0, p1, p2, p3, p4, p5)
  return native.invoke(
    Type.Int, 3523, false,
    arg(Type.String, p0),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.String, p4),
    arg(Type.Bool, p5)
  )
end

-- void TEXTURE_DOWNLOAD_RELEASE(int p0) // 0x487EB90B98E9FB19
function NETWORK.TEXTURE_DOWNLOAD_RELEASE(p0)
  native.invoke(
    Type.Void, 3524, false,
    arg(Type.Int, p0)
  )
end

-- BOOL TEXTURE_DOWNLOAD_HAS_FAILED(int p0) // 0x5776ED562C134687
function NETWORK.TEXTURE_DOWNLOAD_HAS_FAILED(p0)
  return native.invoke(
    Type.Bool, 3525, false,
    arg(Type.Int, p0)
  )
end

-- const char* TEXTURE_DOWNLOAD_GET_NAME(int p0) // 0x3448505B6E35262D
function NETWORK.TEXTURE_DOWNLOAD_GET_NAME(p0)
  return native.invoke(
    Type.String, 3526, false,
    arg(Type.Int, p0)
  )
end

-- int GET_STATUS_OF_TEXTURE_DOWNLOAD(int p0) // 0x8BD6C6DEA20E82C6
--[[
0 = succeeded
1 = pending
2 = failed
--]]
function NETWORK.GET_STATUS_OF_TEXTURE_DOWNLOAD(p0)
  return native.invoke(
    Type.Int, 3527, false,
    arg(Type.Int, p0)
  )
end

-- BOOL NETWORK_CHECK_ROS_LINK_WENTDOWN_NOT_NET() // 0x60EDD13EB3AC1FF3
--[[
Returns true if profile setting 901 is set to true and sets it to false.
--]]
function NETWORK.NETWORK_CHECK_ROS_LINK_WENTDOWN_NOT_NET()
  return native.invoke(
    Type.Bool, 3528, false
  )
end

-- BOOL NETWORK_SHOULD_SHOW_STRICT_NAT_WARNING() // 0x82A2B386716608F1
--[[
Returns true if the NAT type is Strict (3) and a certain number of connections have failed.
--]]
function NETWORK.NETWORK_SHOULD_SHOW_STRICT_NAT_WARNING()
  return native.invoke(
    Type.Bool, 3529, false
  )
end

-- BOOL NETWORK_IS_CABLE_CONNECTED() // 0xEFFB25453D8600F9
function NETWORK.NETWORK_IS_CABLE_CONNECTED()
  return native.invoke(
    Type.Bool, 3530, false
  )
end

-- BOOL NETWORK_HAVE_SCS_PRIVATE_MSG_PRIV() // 0x66B59CFFD78467AF
function NETWORK.NETWORK_HAVE_SCS_PRIVATE_MSG_PRIV()
  return native.invoke(
    Type.Bool, 3531, false
  )
end

-- BOOL NETWORK_HAVE_ROS_SOCIAL_CLUB_PRIV() // 0x606E4D3E3CCCF3EB
function NETWORK.NETWORK_HAVE_ROS_SOCIAL_CLUB_PRIV()
  return native.invoke(
    Type.Bool, 3532, false
  )
end

-- BOOL NETWORK_HAVE_ROS_BANNED_PRIV() // 0x8020A73847E0CA7D
function NETWORK.NETWORK_HAVE_ROS_BANNED_PRIV()
  return native.invoke(
    Type.Bool, 3533, false
  )
end

-- BOOL NETWORK_HAVE_ROS_CREATE_TICKET_PRIV() // 0xA0AD7E2AF5349F61
function NETWORK.NETWORK_HAVE_ROS_CREATE_TICKET_PRIV()
  return native.invoke(
    Type.Bool, 3534, false
  )
end

-- BOOL NETWORK_HAVE_ROS_MULTIPLAYER_PRIV() // 0x5F91D5D0B36AA310
function NETWORK.NETWORK_HAVE_ROS_MULTIPLAYER_PRIV()
  return native.invoke(
    Type.Bool, 3535, false
  )
end

-- BOOL NETWORK_HAVE_ROS_LEADERBOARD_WRITE_PRIV() // 0x422D396F80A96547
function NETWORK.NETWORK_HAVE_ROS_LEADERBOARD_WRITE_PRIV()
  return native.invoke(
    Type.Bool, 3536, false
  )
end

-- BOOL NETWORK_HAS_ROS_PRIVILEGE(int index) // 0xA699957E60D80214
--[[
index is always 18 in scripts
--]]
function NETWORK.NETWORK_HAS_ROS_PRIVILEGE(index)
  return native.invoke(
    Type.Bool, 3537, false,
    arg(Type.Int, index)
  )
end

-- BOOL NETWORK_HAS_ROS_PRIVILEGE_END_DATE(int privilege, int* banType, Any* timeData) // 0xC22912B1D85F26B1
function NETWORK.NETWORK_HAS_ROS_PRIVILEGE_END_DATE(privilege, banType, timeData)
  return native.invoke(
    Type.Bool, 3538, false,
    arg(Type.Int, privilege),
    ref(Type.Int, banType),
    ref(Type.Any, timeData)
  )
end

-- BOOL NETWORK_HAS_ROS_PRIVILEGE_PLAYED_LAST_GEN() // 0x593570C289A77688
function NETWORK.NETWORK_HAS_ROS_PRIVILEGE_PLAYED_LAST_GEN()
  return native.invoke(
    Type.Bool, 3539, false
  )
end

-- BOOL NETWORK_HAS_ROS_PRIVILEGE_SPECIAL_EDITION_CONTENT() // 0x91B87C55093DE351
function NETWORK.NETWORK_HAS_ROS_PRIVILEGE_SPECIAL_EDITION_CONTENT()
  return native.invoke(
    Type.Bool, 3540, false
  )
end

-- BOOL _NETWORK_HAS_ROS_PRIVILEGE_MP_TEXT_COMMUNICATION() // 0xD9719341663C385F
--[[
Checks for privilege 29
--]]
function NETWORK._NETWORK_HAS_ROS_PRIVILEGE_MP_TEXT_COMMUNICATION()
  return native.invoke(
    Type.Bool, 3541, false
  )
end

-- BOOL _NETWORK_HAS_ROS_PRIVILEGE_MP_VOICE_COMMUNICATION() // 0x8956A309BE90057C
--[[
Checks for privilege 30
--]]
function NETWORK._NETWORK_HAS_ROS_PRIVILEGE_MP_VOICE_COMMUNICATION()
  return native.invoke(
    Type.Bool, 3542, false
  )
end

-- int NETWORK_START_COMMUNICATION_PERMISSIONS_CHECK(Any p0) // 0x36391F397731595D
function NETWORK.NETWORK_START_COMMUNICATION_PERMISSIONS_CHECK(p0)
  return native.invoke(
    Type.Int, 3543, false,
    arg(Type.Any, p0)
  )
end

-- int NETWORK_START_USER_CONTENT_PERMISSIONS_CHECK(Any* netHandle) // 0xDEB2B99A1AF1A2A6
--[[
Always returns -1. Seems to be XB1 specific.
--]]
function NETWORK.NETWORK_START_USER_CONTENT_PERMISSIONS_CHECK(netHandle)
  return native.invoke(
    Type.Int, 3544, false,
    ref(Type.Any, netHandle)
  )
end

-- void NETWORK_SKIP_RADIO_RESET_NEXT_CLOSE() // 0x9465E683B12D3F6B
function NETWORK.NETWORK_SKIP_RADIO_RESET_NEXT_CLOSE()
  native.invoke(
    Type.Void, 3545, false
  )
end

-- void NETWORK_SKIP_RADIO_RESET_NEXT_OPEN() // 0xCA59CCAE5D01E4CE
function NETWORK.NETWORK_SKIP_RADIO_RESET_NEXT_OPEN()
  native.invoke(
    Type.Void, 3546, false
  )
end

-- BOOL NETWORK_SKIP_RADIO_WARNING() // 0x659CF2EF7F550C4F
--[[
Returns true if dinput8.dll is present in the game directory.
You will get following error message if that is true: "You are attempting to access GTA Online servers with an altered version of the game."
--]]
function NETWORK.NETWORK_SKIP_RADIO_WARNING()
  return native.invoke(
    Type.Bool, 3547, false
  )
end

-- void NETWORK_FORCE_LOCAL_PLAYER_SCAR_SYNC() // 0xB7C7F6AD6424304B
--[[
NETWORK_F[I-O]
--]]
function NETWORK.NETWORK_FORCE_LOCAL_PLAYER_SCAR_SYNC()
  native.invoke(
    Type.Void, 3548, false
  )
end

-- void NETWORK_DISABLE_LEAVE_REMOTE_PED_BEHIND(BOOL toggle) // 0xC505036A35AFD01B
function NETWORK.NETWORK_DISABLE_LEAVE_REMOTE_PED_BEHIND(toggle)
  native.invoke(
    Type.Void, 3549, false,
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_ALLOW_REMOTE_ATTACHMENT_MODIFICATION(Entity entity, BOOL toggle) // 0x267C78C60E806B9A
function NETWORK.NETWORK_ALLOW_REMOTE_ATTACHMENT_MODIFICATION(entity, toggle)
  native.invoke(
    Type.Void, 3550, false,
    arg(Type.Entity, entity),
    arg(Type.Bool, toggle)
  )
end

-- void NETWORK_SHOW_CHAT_RESTRICTION_MSC(Player player) // 0x6BFF5F84102DF80A
--[[
Does nothing (it's a nullsub).
--]]
function NETWORK.NETWORK_SHOW_CHAT_RESTRICTION_MSC(player)
  native.invoke(
    Type.Void, 3551, false,
    arg(Type.Player, player)
  )
end

-- void NETWORK_SHOW_PSN_UGC_RESTRICTION() // 0x5C497525F803486B
--[[
This native does absolutely nothing, just a nullsub
--]]
function NETWORK.NETWORK_SHOW_PSN_UGC_RESTRICTION()
  native.invoke(
    Type.Void, 3552, false
  )
end

-- BOOL NETWORK_IS_TITLE_UPDATE_REQUIRED() // 0x6FB7BB3607D27FA2
--[[
This function is hard-coded to always return 0.
--]]
function NETWORK.NETWORK_IS_TITLE_UPDATE_REQUIRED()
  return native.invoke(
    Type.Bool, 3553, false
  )
end

-- void NETWORK_QUIT_MP_TO_DESKTOP() // 0x45A83257ED02D9BC
function NETWORK.NETWORK_QUIT_MP_TO_DESKTOP()
  native.invoke(
    Type.Void, 3554, false
  )
end

-- BOOL NETWORK_IS_CONNECTED_VIA_RELAY(Player player) // 0x16D3D49902F697BB
function NETWORK.NETWORK_IS_CONNECTED_VIA_RELAY(player)
  return native.invoke(
    Type.Bool, 3555, false,
    arg(Type.Player, player)
  )
end

-- float NETWORK_GET_AVERAGE_LATENCY(Player player) // 0xD414BE129BB81B32
function NETWORK.NETWORK_GET_AVERAGE_LATENCY(player)
  return native.invoke(
    Type.Float, 3556, false,
    arg(Type.Player, player)
  )
end

-- float NETWORK_GET_AVERAGE_PING(Player player) // 0x0E3A041ED6AC2B45
--[[
Same as NETWORK_GET_AVERAGE_LATENCY
--]]
function NETWORK.NETWORK_GET_AVERAGE_PING(player)
  return native.invoke(
    Type.Float, 3557, false,
    arg(Type.Player, player)
  )
end

-- float NETWORK_GET_AVERAGE_PACKET_LOSS(Player player) // 0x350C23949E43686C
function NETWORK.NETWORK_GET_AVERAGE_PACKET_LOSS(player)
  return native.invoke(
    Type.Float, 3558, false,
    arg(Type.Player, player)
  )
end

-- int NETWORK_GET_NUM_UNACKED_RELIABLES(Player player) // 0xFF8FCF9FFC458A1C
function NETWORK.NETWORK_GET_NUM_UNACKED_RELIABLES(player)
  return native.invoke(
    Type.Int, 3559, false,
    arg(Type.Player, player)
  )
end

-- int NETWORK_GET_UNRELIABLE_RESEND_COUNT(Player player) // 0x3765C3A3E8192E10
function NETWORK.NETWORK_GET_UNRELIABLE_RESEND_COUNT(player)
  return native.invoke(
    Type.Int, 3560, false,
    arg(Type.Player, player)
  )
end

-- int NETWORK_GET_HIGHEST_RELIABLE_RESEND_COUNT(Player player) // 0x52C1EADAF7B10302
function NETWORK.NETWORK_GET_HIGHEST_RELIABLE_RESEND_COUNT(player)
  return native.invoke(
    Type.Int, 3561, false,
    arg(Type.Player, player)
  )
end

-- void NETWORK_REPORT_CODE_TAMPER() // 0x5626D9D6810730D5
function NETWORK.NETWORK_REPORT_CODE_TAMPER()
  native.invoke(
    Type.Void, 3562, false
  )
end

-- Vector3 NETWORK_GET_LAST_ENTITY_POS_RECEIVED_OVER_NETWORK(Entity entity) // 0x64D779659BC37B19
function NETWORK.NETWORK_GET_LAST_ENTITY_POS_RECEIVED_OVER_NETWORK(entity)
  return native.invoke(
    Type.Vector3, 3563, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 NETWORK_GET_LAST_PLAYER_POS_RECEIVED_OVER_NETWORK(Player player) // 0x125E6D638B8605D4
--[[
Returns the coordinates of another player.
Does not work if you enter your own player id as p0 (will return `(0.0, 0.0, 0.0)` in that case).
--]]
function NETWORK.NETWORK_GET_LAST_PLAYER_POS_RECEIVED_OVER_NETWORK(player)
  return native.invoke(
    Type.Vector3, 3564, false,
    arg(Type.Player, player)
  )
end

-- Vector3 NETWORK_GET_LAST_VEL_RECEIVED_OVER_NETWORK(Entity entity) // 0x33DE49EDF4DDE77A
--[[
Used by NetBlender
--]]
function NETWORK.NETWORK_GET_LAST_VEL_RECEIVED_OVER_NETWORK(entity)
  return native.invoke(
    Type.Vector3, 3565, false,
    arg(Type.Entity, entity)
  )
end

-- Vector3 NETWORK_GET_PREDICTED_VELOCITY(Entity entity, float maxSpeedToPredict) // 0xAA5FAFCD2C5F5E47
function NETWORK.NETWORK_GET_PREDICTED_VELOCITY(entity, maxSpeedToPredict)
  return native.invoke(
    Type.Vector3, 3566, false,
    arg(Type.Entity, entity),
    arg(Type.Float, maxSpeedToPredict)
  )
end

-- void NETWORK_DUMP_NET_IF_CONFIG() // 0xAEDF1BC1C133D6E3
--[[
Does nothing (it's a nullsub).
--]]
function NETWORK.NETWORK_DUMP_NET_IF_CONFIG()
  native.invoke(
    Type.Void, 3567, false
  )
end

-- void NETWORK_GET_SIGNALLING_INFO(Any* p0) // 0x2555CF7DA5473794
--[[
Does nothing (it's a nullsub).
--]]
function NETWORK.NETWORK_GET_SIGNALLING_INFO(p0)
  native.invoke(
    Type.Void, 3568, false,
    ref(Type.Any, p0)
  )
end

-- void NETWORK_GET_NET_STATISTICS_INFO(Any* p0) // 0x6FD992C4A1C1B986
--[[
Does nothing (it's a nullsub).
--]]
function NETWORK.NETWORK_GET_NET_STATISTICS_INFO(p0)
  native.invoke(
    Type.Void, 3569, false,
    ref(Type.Any, p0)
  )
end

-- int NETWORK_GET_PLAYER_ACCOUNT_ID(Player player) // 0xDB663CC9FF3407A9
function NETWORK.NETWORK_GET_PLAYER_ACCOUNT_ID(player)
  return native.invoke(
    Type.Int, 3570, false,
    arg(Type.Player, player)
  )
end

-- void NETWORK_UGC_NAV(Any p0, Any p1) // 0xC1447451DDB512F0
function NETWORK.NETWORK_UGC_NAV(p0, p1)
  native.invoke(
    Type.Void, 3571, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end


