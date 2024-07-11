AUDIO = {}

-- void PLAY_PED_RINGTONE(const char* ringtoneName, Ped ped, BOOL p2) // 0xF9E56683CA8E11A5
--[[
All found occurrences in b617d, sorted alphabetically and identical lines removed: https://pastebin.com/RFb4GTny

AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);
AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);

--]]
function AUDIO.PLAY_PED_RINGTONE(ringtoneName, ped, p2)
  native.invoke(
    Type.Void, 43, false,
    arg(Type.String, ringtoneName),
    arg(Type.Ped, ped),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_PED_RINGTONE_PLAYING(Ped ped) // 0x1E8E5E20937E3137
function AUDIO.IS_PED_RINGTONE_PLAYING(ped)
  return native.invoke(
    Type.Bool, 44, false,
    arg(Type.Ped, ped)
  )
end

-- void STOP_PED_RINGTONE(Ped ped) // 0x6C5AE23EFA885092
function AUDIO.STOP_PED_RINGTONE(ped)
  native.invoke(
    Type.Void, 45, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_MOBILE_PHONE_CALL_ONGOING() // 0x7497D2CE2C30D24C
function AUDIO.IS_MOBILE_PHONE_CALL_ONGOING()
  return native.invoke(
    Type.Bool, 46, false
  )
end

-- BOOL IS_MOBILE_INTERFERENCE_ACTIVE() // 0xC8B1B2425604CDD0
function AUDIO.IS_MOBILE_INTERFERENCE_ACTIVE()
  return native.invoke(
    Type.Bool, 47, false
  )
end

-- int GET_CURRENT_TV_SHOW_PLAY_TIME() // 0xDD3AA743AB7D4D75
function AUDIO.GET_CURRENT_TV_SHOW_PLAY_TIME()
  return native.invoke(
    Type.Int, 48, false
  )
end

-- void CREATE_NEW_SCRIPTED_CONVERSATION() // 0xD2C91A0B572AAE56
function AUDIO.CREATE_NEW_SCRIPTED_CONVERSATION()
  native.invoke(
    Type.Void, 49, false
  )
end

-- void ADD_LINE_TO_CONVERSATION(int index, const char* p1, const char* p2, int p3, int p4, BOOL p5, BOOL p6, BOOL p7, BOOL p8, int p9, BOOL p10, BOOL p11, BOOL p12) // 0xC5EF963405593646
--[[
NOTE: ones that are -1, 0 - 35 are determined by a function where it gets a TextLabel from a global then runs,
GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME and depending on what the result is it goes in check order of 0 - 9 then A - Z then z (lowercase). So it will then return 0 - 35 or -1 if it's 'z'. The func to handle that ^^ is func_67 in dialog_handler.c atleast in TU27 Xbox360 scripts.

p0 is -1, 0 - 35
p1 is a char or string (whatever you wanna call it)
p2 is Global 10597 + i * 6. 'i' is a while(i < 70) loop
p3 is again -1, 0 - 35 
p4 is again -1, 0 - 35 
p5 is either 0 or 1 (bool ?)
p6 is either 0 or 1 (The func to determine this is bool)
p7 is either 0 or 1 (The func to determine this is bool)
p8 is either 0 or 1 (The func to determine this is bool)
p9 is 0 - 3 (Determined by func_60 in dialogue_handler.c)
p10 is either 0 or 1 (The func to determine this is bool)
p11 is either 0 or 1 (The func to determine this is bool)
p12 is unknown as in TU27 X360 scripts it only goes to p11.
--]]
function AUDIO.ADD_LINE_TO_CONVERSATION(index, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12)
  native.invoke(
    Type.Void, 50, false,
    arg(Type.Int, index),
    arg(Type.String, p1),
    arg(Type.String, p2),
    arg(Type.Int, p3),
    arg(Type.Int, p4),
    arg(Type.Bool, p5),
    arg(Type.Bool, p6),
    arg(Type.Bool, p7),
    arg(Type.Bool, p8),
    arg(Type.Int, p9),
    arg(Type.Bool, p10),
    arg(Type.Bool, p11),
    arg(Type.Bool, p12)
  )
end

-- void ADD_PED_TO_CONVERSATION(int index, Ped ped, const char* p2) // 0x95D9F4BC443956E7
--[[
4 calls in the b617d scripts. The only one with p0 and p2 in clear text:

AUDIO::ADD_PED_TO_CONVERSATION(5, l_AF, "DINAPOLI");

=================================================
One of the 2 calls in dialogue_handler.c p0 is in a while-loop, and so is determined to also possibly be 0 - 15.
--]]
function AUDIO.ADD_PED_TO_CONVERSATION(index, ped, p2)
  native.invoke(
    Type.Void, 51, false,
    arg(Type.Int, index),
    arg(Type.Ped, ped),
    arg(Type.String, p2)
  )
end

-- void SET_POSITION_FOR_NULL_CONV_PED(Any p0, float p1, float p2, float p3) // 0x33E3C6C6F2F0B506
function AUDIO.SET_POSITION_FOR_NULL_CONV_PED(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 52, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3)
  )
end

-- void SET_ENTITY_FOR_NULL_CONV_PED(int p0, Entity entity) // 0x892B6AB8F33606F5
function AUDIO.SET_ENTITY_FOR_NULL_CONV_PED(p0, entity)
  native.invoke(
    Type.Void, 53, false,
    arg(Type.Int, p0),
    arg(Type.Entity, entity)
  )
end

-- void SET_MICROPHONE_POSITION(BOOL toggle, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3) // 0xB6AE90EDDE95C762
--[[
This native controls where the game plays audio from. By default the microphone is positioned on the player.
When p0 is true the game will play audio from the 3 positions inputted.
It is recommended to set all 3 positions to the same value as mixing different positions doesn't seem to work well.
The scripts mostly use it with only one position such as in fbi3.c: 
AUDIO::SET_MICROPHONE_POSITION(true, ENTITY::GET_ENTITY_COORDS(iLocal_3091, true), ENTITY::GET_ENTITY_COORDS(iLocal_3091, true), ENTITY::GET_ENTITY_COORDS(iLocal_3091, true));
--]]
function AUDIO.SET_MICROPHONE_POSITION(toggle, x1, y1, z1, x2, y2, z2, x3, y3, z3)
  native.invoke(
    Type.Void, 54, false,
    arg(Type.Bool, toggle),
    arg(Type.Float, x1),
    arg(Type.Float, y1),
    arg(Type.Float, z1),
    arg(Type.Float, x2),
    arg(Type.Float, y2),
    arg(Type.Float, z2),
    arg(Type.Float, x3),
    arg(Type.Float, y3),
    arg(Type.Float, z3)
  )
end

-- void SET_CONVERSATION_AUDIO_CONTROLLED_BY_ANIM(BOOL p0) // 0x0B568201DD99F0EB
function AUDIO.SET_CONVERSATION_AUDIO_CONTROLLED_BY_ANIM(p0)
  native.invoke(
    Type.Void, 55, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_CONVERSATION_AUDIO_PLACEHOLDER(BOOL p0) // 0x61631F5DF50D1C34
function AUDIO.SET_CONVERSATION_AUDIO_PLACEHOLDER(p0)
  native.invoke(
    Type.Void, 56, false,
    arg(Type.Bool, p0)
  )
end

-- void START_SCRIPT_PHONE_CONVERSATION(BOOL p0, BOOL p1) // 0x252E5F915EABB675
function AUDIO.START_SCRIPT_PHONE_CONVERSATION(p0, p1)
  native.invoke(
    Type.Void, 57, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- void PRELOAD_SCRIPT_PHONE_CONVERSATION(BOOL p0, BOOL p1) // 0x6004BCB0E226AAEA
function AUDIO.PRELOAD_SCRIPT_PHONE_CONVERSATION(p0, p1)
  native.invoke(
    Type.Void, 58, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- void START_SCRIPT_CONVERSATION(BOOL p0, BOOL p1, BOOL p2, BOOL p3) // 0x6B17C62C9635D2DC
function AUDIO.START_SCRIPT_CONVERSATION(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 59, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void PRELOAD_SCRIPT_CONVERSATION(BOOL p0, BOOL p1, BOOL p2, BOOL p3) // 0x3B3CAD6166916D87
function AUDIO.PRELOAD_SCRIPT_CONVERSATION(p0, p1, p2, p3)
  native.invoke(
    Type.Void, 60, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2),
    arg(Type.Bool, p3)
  )
end

-- void START_PRELOADED_CONVERSATION() // 0x23641AFE870AF385
function AUDIO.START_PRELOADED_CONVERSATION()
  native.invoke(
    Type.Void, 61, false
  )
end

-- BOOL GET_IS_PRELOADED_CONVERSATION_READY() // 0xE73364DB90778FFA
function AUDIO.GET_IS_PRELOADED_CONVERSATION_READY()
  return native.invoke(
    Type.Bool, 62, false
  )
end

-- BOOL IS_SCRIPTED_CONVERSATION_ONGOING() // 0x16754C556D2EDE3D
function AUDIO.IS_SCRIPTED_CONVERSATION_ONGOING()
  return native.invoke(
    Type.Bool, 63, false
  )
end

-- BOOL IS_SCRIPTED_CONVERSATION_LOADED() // 0xDF0D54BE7A776737
function AUDIO.IS_SCRIPTED_CONVERSATION_LOADED()
  return native.invoke(
    Type.Bool, 64, false
  )
end

-- int GET_CURRENT_SCRIPTED_CONVERSATION_LINE() // 0x480357EE890C295A
function AUDIO.GET_CURRENT_SCRIPTED_CONVERSATION_LINE()
  return native.invoke(
    Type.Int, 65, false
  )
end

-- void PAUSE_SCRIPTED_CONVERSATION(BOOL p0) // 0x8530AD776CD72B12
function AUDIO.PAUSE_SCRIPTED_CONVERSATION(p0)
  native.invoke(
    Type.Void, 66, false,
    arg(Type.Bool, p0)
  )
end

-- void RESTART_SCRIPTED_CONVERSATION() // 0x9AEB285D1818C9AC
function AUDIO.RESTART_SCRIPTED_CONVERSATION()
  native.invoke(
    Type.Void, 67, false
  )
end

-- int STOP_SCRIPTED_CONVERSATION(BOOL p0) // 0xD79DEEFB53455EBA
function AUDIO.STOP_SCRIPTED_CONVERSATION(p0)
  return native.invoke(
    Type.Int, 68, false,
    arg(Type.Bool, p0)
  )
end

-- void SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE() // 0x9663FE6B7A61EB00
function AUDIO.SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE()
  native.invoke(
    Type.Void, 69, false
  )
end

-- void INTERRUPT_CONVERSATION(Ped ped, const char* voiceline, const char* speaker) // 0xA018A12E5C5C2FA6
--[[
Example from carsteal3.c: AUDIO::INTERRUPT_CONVERSATION(PLAYER::PLAYER_PED_ID(), "CST4_CFAA", "FRANKLIN");
Voicelines can be found in GTAV\x64\audio\sfx in files starting with "SS_" which seems to mean scripted speech.
--]]
function AUDIO.INTERRUPT_CONVERSATION(ped, voiceline, speaker)
  native.invoke(
    Type.Void, 70, false,
    arg(Type.Ped, ped),
    arg(Type.String, voiceline),
    arg(Type.String, speaker)
  )
end

-- void INTERRUPT_CONVERSATION_AND_PAUSE(Ped ped, const char* p1, const char* speaker) // 0x8A694D7A68F8DC38
--[[
One call found in the b617d scripts:

AUDIO::INTERRUPT_CONVERSATION_AND_PAUSE(NETWORK::NET_TO_PED(l_3989._f26F[0/*1*/]), "CONV_INTERRUPT_QUIT_IT", "LESTER");
--]]
function AUDIO.INTERRUPT_CONVERSATION_AND_PAUSE(ped, p1, speaker)
  native.invoke(
    Type.Void, 71, false,
    arg(Type.Ped, ped),
    arg(Type.String, p1),
    arg(Type.String, speaker)
  )
end

-- int GET_VARIATION_CHOSEN_FOR_SCRIPTED_LINE(Any* p0) // 0xAA19F5572C38B564
function AUDIO.GET_VARIATION_CHOSEN_FOR_SCRIPTED_LINE(p0)
  return native.invoke(
    Type.Int, 72, false,
    ref(Type.Any, p0)
  )
end

-- void SET_NO_DUCKING_FOR_CONVERSATION(BOOL p0) // 0xB542DE8C3D1CB210
function AUDIO.SET_NO_DUCKING_FOR_CONVERSATION(p0)
  native.invoke(
    Type.Void, 73, false,
    arg(Type.Bool, p0)
  )
end

-- void REGISTER_SCRIPT_WITH_AUDIO(int p0) // 0xC6ED9D5092438D91
--[[
This native does absolutely nothing, just a nullsub
--]]
function AUDIO.REGISTER_SCRIPT_WITH_AUDIO(p0)
  native.invoke(
    Type.Void, 74, false,
    arg(Type.Int, p0)
  )
end

-- void UNREGISTER_SCRIPT_WITH_AUDIO() // 0xA8638BE228D4751A
--[[
This native does absolutely nothing, just a nullsub
--]]
function AUDIO.UNREGISTER_SCRIPT_WITH_AUDIO()
  native.invoke(
    Type.Void, 75, false
  )
end

-- BOOL REQUEST_MISSION_AUDIO_BANK(const char* audioBank, BOOL p1, Any p2) // 0x7345BDD95E62E0F2
--[[
All occurrences and usages found in b617d: https://pastebin.com/NzZZ2Tmm
Full list of mission audio bank names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/missionAudioBankNames.json
p2 is always -1
--]]
function AUDIO.REQUEST_MISSION_AUDIO_BANK(audioBank, p1, p2)
  return native.invoke(
    Type.Bool, 76, false,
    arg(Type.String, audioBank),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL REQUEST_AMBIENT_AUDIO_BANK(const char* audioBank, BOOL p1, Any p2) // 0xFE02FFBED8CA9D99
--[[
All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: https://pastebin.com/XZ1tmGEz
Full list of ambient audio bank names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ambientAudioBankNames.json
p2 is always -1
--]]
function AUDIO.REQUEST_AMBIENT_AUDIO_BANK(audioBank, p1, p2)
  return native.invoke(
    Type.Bool, 77, false,
    arg(Type.String, audioBank),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL REQUEST_SCRIPT_AUDIO_BANK(const char* audioBank, BOOL p1, Any p2) // 0x2F844A8B08D76685
--[[
All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: https://pastebin.com/AkmDAVn6
Full list of script audio bank names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scriptAudioBankNames.json
p2 is always -1
--]]
function AUDIO.REQUEST_SCRIPT_AUDIO_BANK(audioBank, p1, p2)
  return native.invoke(
    Type.Bool, 78, false,
    arg(Type.String, audioBank),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL HINT_MISSION_AUDIO_BANK(const char* audioBank, BOOL p1, Any p2) // 0x40763EA7B9B783E7
--[[
p2 is always -1
--]]
function AUDIO.HINT_MISSION_AUDIO_BANK(audioBank, p1, p2)
  return native.invoke(
    Type.Bool, 79, false,
    arg(Type.String, audioBank),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL HINT_AMBIENT_AUDIO_BANK(const char* audioBank, BOOL p1, Any p2) // 0x8F8C0E370AE62F5C
--[[
p2 is always -1
--]]
function AUDIO.HINT_AMBIENT_AUDIO_BANK(audioBank, p1, p2)
  return native.invoke(
    Type.Bool, 80, false,
    arg(Type.String, audioBank),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL HINT_SCRIPT_AUDIO_BANK(const char* audioBank, BOOL p1, Any p2) // 0xFB380A29641EC31A
--[[
p2 is always -1
--]]
function AUDIO.HINT_SCRIPT_AUDIO_BANK(audioBank, p1, p2)
  return native.invoke(
    Type.Bool, 81, false,
    arg(Type.String, audioBank),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- void RELEASE_MISSION_AUDIO_BANK() // 0x0EC92A1BF0857187
function AUDIO.RELEASE_MISSION_AUDIO_BANK()
  native.invoke(
    Type.Void, 82, false
  )
end

-- void RELEASE_AMBIENT_AUDIO_BANK() // 0x65475A218FFAA93D
function AUDIO.RELEASE_AMBIENT_AUDIO_BANK()
  native.invoke(
    Type.Void, 83, false
  )
end

-- void RELEASE_NAMED_SCRIPT_AUDIO_BANK(const char* audioBank) // 0x77ED170667F50170
--[[
Full list of script audio bank names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/scriptAudioBankNames.json
--]]
function AUDIO.RELEASE_NAMED_SCRIPT_AUDIO_BANK(audioBank)
  native.invoke(
    Type.Void, 84, false,
    arg(Type.String, audioBank)
  )
end

-- void RELEASE_SCRIPT_AUDIO_BANK() // 0x7A2D8AD0A9EB9C3F
function AUDIO.RELEASE_SCRIPT_AUDIO_BANK()
  native.invoke(
    Type.Void, 85, false
  )
end

-- void UNHINT_AMBIENT_AUDIO_BANK() // 0x19AF7ED9B9D23058
function AUDIO.UNHINT_AMBIENT_AUDIO_BANK()
  native.invoke(
    Type.Void, 86, false
  )
end

-- void UNHINT_SCRIPT_AUDIO_BANK() // 0x9AC92EED5E4793AB
function AUDIO.UNHINT_SCRIPT_AUDIO_BANK()
  native.invoke(
    Type.Void, 87, false
  )
end

-- void UNHINT_NAMED_SCRIPT_AUDIO_BANK(const char* audioBank) // 0x11579D940949C49E
function AUDIO.UNHINT_NAMED_SCRIPT_AUDIO_BANK(audioBank)
  native.invoke(
    Type.Void, 88, false,
    arg(Type.String, audioBank)
  )
end

-- int GET_SOUND_ID() // 0x430386FE9BF80B45
function AUDIO.GET_SOUND_ID()
  return native.invoke(
    Type.Int, 89, false
  )
end

-- void RELEASE_SOUND_ID(int soundId) // 0x353FC880830B88FA
function AUDIO.RELEASE_SOUND_ID(soundId)
  native.invoke(
    Type.Void, 90, false,
    arg(Type.Int, soundId)
  )
end

-- void PLAY_SOUND(int soundId, const char* audioName, const char* audioRef, BOOL p3, Any p4, BOOL p5) // 0x7FF4944CC209192D
--[[
All found occurrences in b617d, sorted alphabetically and identical lines removed: https://pastebin.com/A8Ny8AHZ

Full list of audio / sound names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/soundNames.json
--]]
function AUDIO.PLAY_SOUND(soundId, audioName, audioRef, p3, p4, p5)
  native.invoke(
    Type.Void, 91, false,
    arg(Type.Int, soundId),
    arg(Type.String, audioName),
    arg(Type.String, audioRef),
    arg(Type.Bool, p3),
    arg(Type.Any, p4),
    arg(Type.Bool, p5)
  )
end

-- void PLAY_SOUND_FRONTEND(int soundId, const char* audioName, const char* audioRef, BOOL p3) // 0x67C540AA08E4A6F5
--[[
List: https://pastebin.com/DCeRiaLJ

All occurrences as of Cayo Perico Heist DLC (b2189), sorted alphabetically and identical lines removed: https://git.io/JtLxM

Full list of audio / sound names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/soundNames.json
--]]
function AUDIO.PLAY_SOUND_FRONTEND(soundId, audioName, audioRef, p3)
  native.invoke(
    Type.Void, 92, false,
    arg(Type.Int, soundId),
    arg(Type.String, audioName),
    arg(Type.String, audioRef),
    arg(Type.Bool, p3)
  )
end

-- void PLAY_DEFERRED_SOUND_FRONTEND(const char* soundName, const char* soundsetName) // 0xCADA5A0D0702381E
--[[
Only call found in the b617d scripts:

AUDIO::PLAY_DEFERRED_SOUND_FRONTEND("BACK", "HUD_FREEMODE_SOUNDSET");

Full list of audio / sound names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/soundNames.json
--]]
function AUDIO.PLAY_DEFERRED_SOUND_FRONTEND(soundName, soundsetName)
  native.invoke(
    Type.Void, 93, false,
    arg(Type.String, soundName),
    arg(Type.String, soundsetName)
  )
end

-- void PLAY_SOUND_FROM_ENTITY(int soundId, const char* audioName, Entity entity, const char* audioRef, BOOL isNetwork, Any p5) // 0xE65F427EB70AB1ED
--[[
All found occurrences in b617d, sorted alphabetically and identical lines removed: https://pastebin.com/f2A7vTj0 
No changes made in b678d.

gtaforums.com/topic/795622-audio-for-mods

Full list of audio / sound names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/soundNames.json
--]]
function AUDIO.PLAY_SOUND_FROM_ENTITY(soundId, audioName, entity, audioRef, isNetwork, p5)
  native.invoke(
    Type.Void, 94, false,
    arg(Type.Int, soundId),
    arg(Type.String, audioName),
    arg(Type.Entity, entity),
    arg(Type.String, audioRef),
    arg(Type.Bool, isNetwork),
    arg(Type.Any, p5)
  )
end

-- void PLAY_SOUND_FROM_ENTITY_HASH(int soundId, Hash model, Entity entity, Hash soundSetHash, Any p4, Any p5) // 0x5B9853296731E88D
--[[
Only used with "formation_flying_blips_soundset" and "biker_formation_blips_soundset".
p1 is always the model of p2
--]]
function AUDIO.PLAY_SOUND_FROM_ENTITY_HASH(soundId, model, entity, soundSetHash, p4, p5)
  native.invoke(
    Type.Void, 95, false,
    arg(Type.Int, soundId),
    arg(Type.Hash, model),
    arg(Type.Entity, entity),
    arg(Type.Hash, soundSetHash),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- void PLAY_SOUND_FROM_COORD(int soundId, const char* audioName, float x, float y, float z, const char* audioRef, BOOL isNetwork, int range, BOOL p8) // 0x8D8686B622B88120
--[[
All found occurrences in b617d, sorted alphabetically and identical lines removed: https://pastebin.com/eeFc5DiW

gtaforums.com/topic/795622-audio-for-mods

Full list of audio / sound names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/soundNames.json
--]]
function AUDIO.PLAY_SOUND_FROM_COORD(soundId, audioName, x, y, z, audioRef, isNetwork, range, p8)
  native.invoke(
    Type.Void, 96, false,
    arg(Type.Int, soundId),
    arg(Type.String, audioName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.String, audioRef),
    arg(Type.Bool, isNetwork),
    arg(Type.Int, range),
    arg(Type.Bool, p8)
  )
end

-- void UPDATE_SOUND_COORD(int soundId, float x, float y, float z) // 0x7EC3C679D0E7E46B
function AUDIO.UPDATE_SOUND_COORD(soundId, x, y, z)
  native.invoke(
    Type.Void, 97, false,
    arg(Type.Int, soundId),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void STOP_SOUND(int soundId) // 0xA3B0C41BA5CC0BB5
function AUDIO.STOP_SOUND(soundId)
  native.invoke(
    Type.Void, 98, false,
    arg(Type.Int, soundId)
  )
end

-- int GET_NETWORK_ID_FROM_SOUND_ID(int soundId) // 0x2DE3F0A134FFBC0D
--[[
Could this be used alongside either, 
SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES or _SET_NETWORK_ID_SYNC_TO_PLAYER to make it so other players can hear the sound while online? It'd be a bit troll-fun to be able to play the Zancudo UFO creepy sounds globally.
--]]
function AUDIO.GET_NETWORK_ID_FROM_SOUND_ID(soundId)
  return native.invoke(
    Type.Int, 99, false,
    arg(Type.Int, soundId)
  )
end

-- int GET_SOUND_ID_FROM_NETWORK_ID(int netId) // 0x75262FD12D0A1C84
function AUDIO.GET_SOUND_ID_FROM_NETWORK_ID(netId)
  return native.invoke(
    Type.Int, 100, false,
    arg(Type.Int, netId)
  )
end

-- void SET_VARIABLE_ON_SOUND(int soundId, const char* variable, float p2) // 0xAD6B3148A78AE9B6
function AUDIO.SET_VARIABLE_ON_SOUND(soundId, variable, p2)
  native.invoke(
    Type.Void, 101, false,
    arg(Type.Int, soundId),
    arg(Type.String, variable),
    arg(Type.Float, p2)
  )
end

-- void SET_VARIABLE_ON_STREAM(const char* variable, float p1) // 0x2F9D3834AEB9EF79
--[[
From the scripts, p0:

"ArmWrestlingIntensity",
"INOUT",
"Monkey_Stream",
"ZoomLevel"
--]]
function AUDIO.SET_VARIABLE_ON_STREAM(variable, p1)
  native.invoke(
    Type.Void, 102, false,
    arg(Type.String, variable),
    arg(Type.Float, p1)
  )
end

-- void OVERRIDE_UNDERWATER_STREAM(const char* p0, BOOL p1) // 0xF2A9CDABCEA04BD6
function AUDIO.OVERRIDE_UNDERWATER_STREAM(p0, p1)
  native.invoke(
    Type.Void, 103, false,
    arg(Type.String, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_VARIABLE_ON_UNDER_WATER_STREAM(const char* variableName, float value) // 0x733ADF241531E5C2
--[[
AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 1.0);
AUDIO::SET_VARIABLE_ON_UNDER_WATER_STREAM("inTunnel", 0.0);
--]]
function AUDIO.SET_VARIABLE_ON_UNDER_WATER_STREAM(variableName, value)
  native.invoke(
    Type.Void, 104, false,
    arg(Type.String, variableName),
    arg(Type.Float, value)
  )
end

-- BOOL HAS_SOUND_FINISHED(int soundId) // 0xFCBDCE714A7C88E5
function AUDIO.HAS_SOUND_FINISHED(soundId)
  return native.invoke(
    Type.Bool, 105, false,
    arg(Type.Int, soundId)
  )
end

-- void PLAY_PED_AMBIENT_SPEECH_NATIVE(Ped ped, const char* speechName, const char* speechParam, Any p3) // 0x8E04FEDD28D42462
--[[
Plays ambient speech. See also _0x444180DB.

ped: The ped to play the ambient speech.
speechName: Name of the speech to play, eg. "GENERIC_HI".
speechParam: Can be one of the following:
SPEECH_PARAMS_STANDARD
SPEECH_PARAMS_ALLOW_REPEAT
SPEECH_PARAMS_BEAT
SPEECH_PARAMS_FORCE
SPEECH_PARAMS_FORCE_FRONTEND
SPEECH_PARAMS_FORCE_NO_REPEAT_FRONTEND
SPEECH_PARAMS_FORCE_NORMAL
SPEECH_PARAMS_FORCE_NORMAL_CLEAR
SPEECH_PARAMS_FORCE_NORMAL_CRITICAL
SPEECH_PARAMS_FORCE_SHOUTED
SPEECH_PARAMS_FORCE_SHOUTED_CLEAR
SPEECH_PARAMS_FORCE_SHOUTED_CRITICAL
SPEECH_PARAMS_FORCE_PRELOAD_ONLY
SPEECH_PARAMS_MEGAPHONE
SPEECH_PARAMS_HELI
SPEECH_PARAMS_FORCE_MEGAPHONE
SPEECH_PARAMS_FORCE_HELI
SPEECH_PARAMS_INTERRUPT
SPEECH_PARAMS_INTERRUPT_SHOUTED
SPEECH_PARAMS_INTERRUPT_SHOUTED_CLEAR
SPEECH_PARAMS_INTERRUPT_SHOUTED_CRITICAL
SPEECH_PARAMS_INTERRUPT_NO_FORCE
SPEECH_PARAMS_INTERRUPT_FRONTEND
SPEECH_PARAMS_INTERRUPT_NO_FORCE_FRONTEND
SPEECH_PARAMS_ADD_BLIP
SPEECH_PARAMS_ADD_BLIP_ALLOW_REPEAT
SPEECH_PARAMS_ADD_BLIP_FORCE
SPEECH_PARAMS_ADD_BLIP_SHOUTED
SPEECH_PARAMS_ADD_BLIP_SHOUTED_FORCE
SPEECH_PARAMS_ADD_BLIP_INTERRUPT
SPEECH_PARAMS_ADD_BLIP_INTERRUPT_FORCE
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CLEAR
SPEECH_PARAMS_FORCE_PRELOAD_ONLY_SHOUTED_CRITICAL
SPEECH_PARAMS_SHOUTED
SPEECH_PARAMS_SHOUTED_CLEAR
SPEECH_PARAMS_SHOUTED_CRITICAL

Note: A list of Name and Parameters can be found here https://pastebin.com/1GZS5dCL

Full list of speeches and voices names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/speeches.json
--]]
function AUDIO.PLAY_PED_AMBIENT_SPEECH_NATIVE(ped, speechName, speechParam, p3)
  native.invoke(
    Type.Void, 106, false,
    arg(Type.Ped, ped),
    arg(Type.String, speechName),
    arg(Type.String, speechParam),
    arg(Type.Any, p3)
  )
end

-- void PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE(Ped ped, const char* speechName, const char* speechParam, Any p3) // 0xC6941B4A3A8FBBB9
--[[
Plays ambient speech. See also _0x5C57B85D.

See PLAY_PED_AMBIENT_SPEECH_NATIVE for parameter specifications.

Full list of speeches and voices names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/speeches.json
--]]
function AUDIO.PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE(ped, speechName, speechParam, p3)
  native.invoke(
    Type.Void, 107, false,
    arg(Type.Ped, ped),
    arg(Type.String, speechName),
    arg(Type.String, speechParam),
    arg(Type.Any, p3)
  )
end

-- void PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(Ped ped, const char* speechName, const char* voiceName, const char* speechParam, BOOL p4) // 0x3523634255FC3318
--[[
This is the same as PLAY_PED_AMBIENT_SPEECH_NATIVE and PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.

EX (C#):
GTA.Native.Function.Call(Hash.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);

The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.

Full list of speeches and voices names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/speeches.json
--]]
function AUDIO.PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(ped, speechName, voiceName, speechParam, p4)
  native.invoke(
    Type.Void, 108, false,
    arg(Type.Ped, ped),
    arg(Type.String, speechName),
    arg(Type.String, voiceName),
    arg(Type.String, speechParam),
    arg(Type.Bool, p4)
  )
end

-- void PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE(const char* speechName, const char* voiceName, float x, float y, float z, const char* speechParam) // 0xED640017ED337E45
--[[
Full list of speeches and voices names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/speeches.json
--]]
function AUDIO.PLAY_AMBIENT_SPEECH_FROM_POSITION_NATIVE(speechName, voiceName, x, y, z, speechParam)
  native.invoke(
    Type.Void, 109, false,
    arg(Type.String, speechName),
    arg(Type.String, voiceName),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.String, speechParam)
  )
end

-- void OVERRIDE_TREVOR_RAGE(const char* voiceEffect) // 0x13AD665062541A7E
--[[
This native enables the audio flag "TrevorRageIsOverridden" and sets the voice effect to `voiceEffect`
--]]
function AUDIO.OVERRIDE_TREVOR_RAGE(voiceEffect)
  native.invoke(
    Type.Void, 110, false,
    arg(Type.String, voiceEffect)
  )
end

-- void RESET_TREVOR_RAGE() // 0xE78503B10C4314E0
function AUDIO.RESET_TREVOR_RAGE()
  native.invoke(
    Type.Void, 111, false
  )
end

-- void SET_PLAYER_ANGRY(Ped ped, BOOL toggle) // 0xEA241BB04110F091
function AUDIO.SET_PLAYER_ANGRY(ped, toggle)
  native.invoke(
    Type.Void, 112, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void PLAY_PAIN(Ped ped, int painID, int p1, Any p3) // 0xBC9AE166038A5CEC
--[[
Needs another parameter [int p2]. The signature is PED::PLAY_PAIN(Ped ped, int painID, int p1, int p2);

Last 2 parameters always seem to be 0.

EX: Function.Call(Hash.PLAY_PAIN, TestPed, 6, 0, 0);

Known Pain IDs
________________________

1 - Doesn't seem to do anything. Does NOT crash the game like previously said. (Latest patch)
6 - Scream (Short)
7 - Scared Scream (Kinda Long)
8 - On Fire

--]]
function AUDIO.PLAY_PAIN(ped, painID, p1, p3)
  native.invoke(
    Type.Void, 113, false,
    arg(Type.Ped, ped),
    arg(Type.Int, painID),
    arg(Type.Int, p1),
    arg(Type.Any, p3)
  )
end

-- void RELEASE_WEAPON_AUDIO() // 0xCE4AC0439F607045
function AUDIO.RELEASE_WEAPON_AUDIO()
  native.invoke(
    Type.Void, 114, false
  )
end

-- void ACTIVATE_AUDIO_SLOWMO_MODE(const char* mode) // 0xD01005D2BA2EB778
--[[
mode can be any of these: 
SLOWMO_T1_TRAILER_SMASH
SLOWMO_T1_RAYFIRE_EXPLOSION
SLOWMO_PROLOGUE_VAULT
NIGEL_02_SLOWMO_SETTING
JSH_EXIT_TUNNEL_SLOWMO
SLOWMO_BIG_SCORE_JUMP
SLOWMO_FIB4_TRUCK_SMASH
SLOWMO_EXTREME_04
SLOW_MO_METH_HOUSE_RAYFIRE
BARRY_02_SLOWMO
BARRY_01_SLOWMO
--]]
function AUDIO.ACTIVATE_AUDIO_SLOWMO_MODE(mode)
  native.invoke(
    Type.Void, 115, false,
    arg(Type.String, mode)
  )
end

-- void DEACTIVATE_AUDIO_SLOWMO_MODE(const char* mode) // 0xDDC635D5B3262C56
--[[
see ACTIVATE_AUDIO_SLOWMO_MODE for modes
--]]
function AUDIO.DEACTIVATE_AUDIO_SLOWMO_MODE(mode)
  native.invoke(
    Type.Void, 116, false,
    arg(Type.String, mode)
  )
end

-- void SET_AMBIENT_VOICE_NAME(Ped ped, const char* name) // 0x6C8065A3B780185B
--[[
Audio List
gtaforums.com/topic/795622-audio-for-mods/

All found occurrences in b617d, sorted alphabetically and identical lines removed: https://pastebin.com/FTeAj4yZ
--]]
function AUDIO.SET_AMBIENT_VOICE_NAME(ped, name)
  native.invoke(
    Type.Void, 117, false,
    arg(Type.Ped, ped),
    arg(Type.String, name)
  )
end

-- void SET_AMBIENT_VOICE_NAME_HASH(Ped ped, Hash hash) // 0x9A53DED9921DE990
function AUDIO.SET_AMBIENT_VOICE_NAME_HASH(ped, hash)
  native.invoke(
    Type.Void, 118, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, hash)
  )
end

-- Hash GET_AMBIENT_VOICE_NAME_HASH(Ped ped) // 0x5E203DA2BA15D436
function AUDIO.GET_AMBIENT_VOICE_NAME_HASH(ped)
  return native.invoke(
    Type.Hash, 119, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_VOICE_FULL(Ped ped) // 0x40CF0D12D142A9E8
--[[
Assigns some ambient voice to the ped.
--]]
function AUDIO.SET_PED_VOICE_FULL(ped)
  native.invoke(
    Type.Void, 120, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_RACE_AND_VOICE_GROUP(Ped ped, int p1, Hash voiceGroup) // 0x1B7ABE26CBCBF8C7
function AUDIO.SET_PED_RACE_AND_VOICE_GROUP(ped, p1, voiceGroup)
  native.invoke(
    Type.Void, 121, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1),
    arg(Type.Hash, voiceGroup)
  )
end

-- void SET_PED_VOICE_GROUP(Ped ped, Hash voiceGroupHash) // 0x7CDC8C3B89F661B3
--[[
From the scripts:

AUDIO::SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("PAIGE_PVG"));
AUDIO::SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("TALINA_PVG"));
AUDIO::SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_BLACK_PVG"));
AUDIO::SET_PED_VOICE_GROUP(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("FEMALE_LOST_WHITE_PVG"));
--]]
function AUDIO.SET_PED_VOICE_GROUP(ped, voiceGroupHash)
  native.invoke(
    Type.Void, 122, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, voiceGroupHash)
  )
end

-- void SET_PED_VOICE_GROUP_FROM_RACE_TO_PVG(Ped ped, Hash voiceGroupHash) // 0x0BABC1345ABBFB16
--[[
Dat151RelType == 29
--]]
function AUDIO.SET_PED_VOICE_GROUP_FROM_RACE_TO_PVG(ped, voiceGroupHash)
  native.invoke(
    Type.Void, 123, false,
    arg(Type.Ped, ped),
    arg(Type.Hash, voiceGroupHash)
  )
end

-- void SET_PED_GENDER(Ped ped, BOOL p1) // 0xA5342D390CDA41D6
--[[
BOOL p1: 0 = Female; 1 = Male
--]]
function AUDIO.SET_PED_GENDER(ped, p1)
  native.invoke(
    Type.Void, 124, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void STOP_CURRENT_PLAYING_SPEECH(Ped ped) // 0x7A73D05A607734C7
function AUDIO.STOP_CURRENT_PLAYING_SPEECH(ped)
  native.invoke(
    Type.Void, 125, false,
    arg(Type.Ped, ped)
  )
end

-- void STOP_CURRENT_PLAYING_AMBIENT_SPEECH(Ped ped) // 0xB8BEC0CA6F0EDB0F
function AUDIO.STOP_CURRENT_PLAYING_AMBIENT_SPEECH(ped)
  native.invoke(
    Type.Void, 126, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_AMBIENT_SPEECH_PLAYING(Ped ped) // 0x9072C8B49907BFAD
function AUDIO.IS_AMBIENT_SPEECH_PLAYING(ped)
  return native.invoke(
    Type.Bool, 127, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_SCRIPTED_SPEECH_PLAYING(Ped p0) // 0xCC9AA18DCC7084F4
function AUDIO.IS_SCRIPTED_SPEECH_PLAYING(p0)
  return native.invoke(
    Type.Bool, 128, false,
    arg(Type.Ped, p0)
  )
end

-- BOOL IS_ANY_SPEECH_PLAYING(Ped ped) // 0x729072355FA39EC9
function AUDIO.IS_ANY_SPEECH_PLAYING(ped)
  return native.invoke(
    Type.Bool, 129, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL IS_ANY_POSITIONAL_SPEECH_PLAYING() // 0x30CA2EF91D15ADF8
function AUDIO.IS_ANY_POSITIONAL_SPEECH_PLAYING()
  return native.invoke(
    Type.Bool, 130, false
  )
end

-- BOOL DOES_CONTEXT_EXIST_FOR_THIS_PED(Ped ped, const char* speechName, BOOL p2) // 0x49B99BF3FDA89A7A
--[[
Checks if the ped can play the speech or has the speech file, p2 is usually false.
--]]
function AUDIO.DOES_CONTEXT_EXIST_FOR_THIS_PED(ped, speechName, p2)
  return native.invoke(
    Type.Bool, 131, false,
    arg(Type.Ped, ped),
    arg(Type.String, speechName),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_PED_IN_CURRENT_CONVERSATION(Ped ped) // 0x049E937F18F4020C
function AUDIO.IS_PED_IN_CURRENT_CONVERSATION(ped)
  return native.invoke(
    Type.Bool, 132, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_IS_DRUNK(Ped ped, BOOL toggle) // 0x95D2D383D5396B8A
--[[
Sets the ped drunk sounds.  Only works with PLAYER_PED_ID

====================================================

As mentioned above, this only sets the drunk sound to ped/player.

To give the Ped a drunk effect with drunk walking animation try using SET_PED_MOVEMENT_CLIPSET

Below is an example

if (!Function.Call<bool>(Hash.HAS_ANIM_SET_LOADED, "move_m@drunk@verydrunk"))
                {
                    Function.Call(Hash.REQUEST_ANIM_SET, "move_m@drunk@verydrunk");
                }
                Function.Call(Hash.SET_PED_MOVEMENT_CLIPSET, Ped.Handle, "move_m@drunk@verydrunk", 0x3E800000);



And to stop the effect use
RESET_PED_MOVEMENT_CLIPSET
--]]
function AUDIO.SET_PED_IS_DRUNK(ped, toggle)
  native.invoke(
    Type.Void, 133, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void PLAY_ANIMAL_VOCALIZATION(Ped pedHandle, int p1, const char* speechName) // 0xEE066C7006C49C0A
--[[
Plays sounds from a ped with chop model. For example it used to play bark or sniff sounds. p1 is always 3 or 4294967295 in decompiled scripts. By a quick disassembling I can assume that this arg is unused.
This native is works only when you call it on the ped with right model (ac_chop only ?)
Speech Name can be: CHOP_SNIFF_SEQ CHOP_WHINE CHOP_LICKS_MOUTH CHOP_PANT bark GROWL SNARL BARK_SEQ
--]]
function AUDIO.PLAY_ANIMAL_VOCALIZATION(pedHandle, p1, speechName)
  native.invoke(
    Type.Void, 134, false,
    arg(Type.Ped, pedHandle),
    arg(Type.Int, p1),
    arg(Type.String, speechName)
  )
end

-- BOOL IS_ANIMAL_VOCALIZATION_PLAYING(Ped pedHandle) // 0xC265DF9FB44A9FBD
function AUDIO.IS_ANIMAL_VOCALIZATION_PLAYING(pedHandle)
  return native.invoke(
    Type.Bool, 135, false,
    arg(Type.Ped, pedHandle)
  )
end

-- void SET_ANIMAL_MOOD(Ped animal, int mood) // 0xCC97B29285B1DC3B
--[[
mood can be 0 or 1 (it's not a boolean value!). Effects audio of the animal.
--]]
function AUDIO.SET_ANIMAL_MOOD(animal, mood)
  native.invoke(
    Type.Void, 136, false,
    arg(Type.Ped, animal),
    arg(Type.Int, mood)
  )
end

-- BOOL IS_MOBILE_PHONE_RADIO_ACTIVE() // 0xB35CE999E8EF317E
function AUDIO.IS_MOBILE_PHONE_RADIO_ACTIVE()
  return native.invoke(
    Type.Bool, 137, false
  )
end

-- void SET_MOBILE_PHONE_RADIO_STATE(BOOL state) // 0xBF286C554784F3DF
function AUDIO.SET_MOBILE_PHONE_RADIO_STATE(state)
  native.invoke(
    Type.Void, 138, false,
    arg(Type.Bool, state)
  )
end

-- int GET_PLAYER_RADIO_STATION_INDEX() // 0xE8AF77C4C06ADC93
--[[
Returns 255 (radio off index) if the function fails.
--]]
function AUDIO.GET_PLAYER_RADIO_STATION_INDEX()
  return native.invoke(
    Type.Int, 139, false
  )
end

-- const char* GET_PLAYER_RADIO_STATION_NAME() // 0xF6D733C32076AD03
--[[
Returns active radio station name
--]]
function AUDIO.GET_PLAYER_RADIO_STATION_NAME()
  return native.invoke(
    Type.String, 140, false
  )
end

-- const char* GET_RADIO_STATION_NAME(int radioStation) // 0xB28ECA15046CA8B9
--[[
Converts radio station index to string. Use HUD::GET_FILENAME_FOR_AUDIO_CONVERSATION to get the user-readable text.
--]]
function AUDIO.GET_RADIO_STATION_NAME(radioStation)
  return native.invoke(
    Type.String, 141, false,
    arg(Type.Int, radioStation)
  )
end

-- int GET_PLAYER_RADIO_STATION_GENRE() // 0xA571991A7FE6CCEB
function AUDIO.GET_PLAYER_RADIO_STATION_GENRE()
  return native.invoke(
    Type.Int, 142, false
  )
end

-- BOOL IS_RADIO_RETUNING() // 0xA151A7394A214E65
function AUDIO.IS_RADIO_RETUNING()
  return native.invoke(
    Type.Bool, 143, false
  )
end

-- BOOL IS_RADIO_FADED_OUT() // 0x0626A247D2405330
function AUDIO.IS_RADIO_FADED_OUT()
  return native.invoke(
    Type.Bool, 144, false
  )
end

-- void SET_RADIO_RETUNE_UP() // 0xFF266D1D0EB1195D
--[[
Tune Forward...
--]]
function AUDIO.SET_RADIO_RETUNE_UP()
  native.invoke(
    Type.Void, 145, false
  )
end

-- void SET_RADIO_RETUNE_DOWN() // 0xDD6BCF9E94425DF9
--[[
Tune Backwards...
--]]
function AUDIO.SET_RADIO_RETUNE_DOWN()
  native.invoke(
    Type.Void, 146, false
  )
end

-- void SET_RADIO_TO_STATION_NAME(const char* stationName) // 0xC69EDA28699D5107
--[[
List of radio stations that are in the wheel, in clockwise order, as of LS Tuners DLC: https://git.io/J8a3k
An older list including hidden radio stations: https://pastebin.com/Kj9t38KF
--]]
function AUDIO.SET_RADIO_TO_STATION_NAME(stationName)
  native.invoke(
    Type.Void, 147, false,
    arg(Type.String, stationName)
  )
end

-- void SET_VEH_RADIO_STATION(Vehicle vehicle, const char* radioStation) // 0x1B9C0099CB942AC6
--[[
List of radio stations that are in the wheel, in clockwise order, as of LS Tuners DLC: https://git.io/J8a3k
An older list including hidden radio stations: https://pastebin.com/Kj9t38KF
--]]
function AUDIO.SET_VEH_RADIO_STATION(vehicle, radioStation)
  native.invoke(
    Type.Void, 148, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.String, radioStation)
  )
end

-- void SET_VEH_HAS_NORMAL_RADIO(Vehicle vehicle) // 0x3E45765F3FBB582F
function AUDIO.SET_VEH_HAS_NORMAL_RADIO(vehicle)
  native.invoke(
    Type.Void, 149, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- BOOL IS_VEHICLE_RADIO_ON(Vehicle vehicle) // 0x0BE4BE946463F917
function AUDIO.IS_VEHICLE_RADIO_ON(vehicle)
  return native.invoke(
    Type.Bool, 150, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_VEH_FORCED_RADIO_THIS_FRAME(Vehicle vehicle) // 0xC1805D05E6D4FE10
function AUDIO.SET_VEH_FORCED_RADIO_THIS_FRAME(vehicle)
  native.invoke(
    Type.Void, 151, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_EMITTER_RADIO_STATION(const char* emitterName, const char* radioStation, Any p2) // 0xACF57305B12AF907
--[[
Full list of static emitters by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/staticEmitters.json
--]]
function AUDIO.SET_EMITTER_RADIO_STATION(emitterName, radioStation, p2)
  native.invoke(
    Type.Void, 152, false,
    arg(Type.String, emitterName),
    arg(Type.String, radioStation),
    arg(Type.Any, p2)
  )
end

-- void SET_STATIC_EMITTER_ENABLED(const char* emitterName, BOOL toggle) // 0x399D2D3B33F1B8EB
--[[
Example:
AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);    AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);

This turns off surrounding sounds not connected directly to peds.

Full list of static emitters by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/staticEmitters.json
--]]
function AUDIO.SET_STATIC_EMITTER_ENABLED(emitterName, toggle)
  native.invoke(
    Type.Void, 153, false,
    arg(Type.String, emitterName),
    arg(Type.Bool, toggle)
  )
end

-- void LINK_STATIC_EMITTER_TO_ENTITY(const char* emitterName, Entity entity) // 0x651D3228960D08AF
--[[
Full list of static emitters by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/staticEmitters.json
--]]
function AUDIO.LINK_STATIC_EMITTER_TO_ENTITY(emitterName, entity)
  native.invoke(
    Type.Void, 154, false,
    arg(Type.String, emitterName),
    arg(Type.Entity, entity)
  )
end

-- void SET_RADIO_TO_STATION_INDEX(int radioStation) // 0xA619B168B8A8570F
--[[
Sets radio station by index.
--]]
function AUDIO.SET_RADIO_TO_STATION_INDEX(radioStation)
  native.invoke(
    Type.Void, 155, false,
    arg(Type.Int, radioStation)
  )
end

-- void SET_FRONTEND_RADIO_ACTIVE(BOOL active) // 0xF7F26C6E9CC9EBB8
function AUDIO.SET_FRONTEND_RADIO_ACTIVE(active)
  native.invoke(
    Type.Void, 156, false,
    arg(Type.Bool, active)
  )
end

-- void UNLOCK_MISSION_NEWS_STORY(int newsStory) // 0xB165AB7C248B2DC1
--[[
"news" that play on the radio after you've done something in story mode(?)
--]]
function AUDIO.UNLOCK_MISSION_NEWS_STORY(newsStory)
  native.invoke(
    Type.Void, 157, false,
    arg(Type.Int, newsStory)
  )
end

-- BOOL IS_MISSION_NEWS_STORY_UNLOCKED(int newsStory) // 0x66E49BF55B4B1874
function AUDIO.IS_MISSION_NEWS_STORY_UNLOCKED(newsStory)
  return native.invoke(
    Type.Bool, 158, false,
    arg(Type.Int, newsStory)
  )
end

-- int GET_AUDIBLE_MUSIC_TRACK_TEXT_ID() // 0x50B196FC9ED6545B
function AUDIO.GET_AUDIBLE_MUSIC_TRACK_TEXT_ID()
  return native.invoke(
    Type.Int, 159, false
  )
end

-- void PLAY_END_CREDITS_MUSIC(BOOL play) // 0xCD536C4D33DCC900
function AUDIO.PLAY_END_CREDITS_MUSIC(play)
  native.invoke(
    Type.Void, 160, false,
    arg(Type.Bool, play)
  )
end

-- void SKIP_RADIO_FORWARD() // 0x6DDBBDD98E2E9C25
function AUDIO.SKIP_RADIO_FORWARD()
  native.invoke(
    Type.Void, 161, false
  )
end

-- void FREEZE_RADIO_STATION(const char* radioStation) // 0x344F393B027E38C3
function AUDIO.FREEZE_RADIO_STATION(radioStation)
  native.invoke(
    Type.Void, 162, false,
    arg(Type.String, radioStation)
  )
end

-- void UNFREEZE_RADIO_STATION(const char* radioStation) // 0xFC00454CF60B91DD
function AUDIO.UNFREEZE_RADIO_STATION(radioStation)
  native.invoke(
    Type.Void, 163, false,
    arg(Type.String, radioStation)
  )
end

-- void SET_RADIO_AUTO_UNFREEZE(BOOL toggle) // 0xC1AA9F53CE982990
function AUDIO.SET_RADIO_AUTO_UNFREEZE(toggle)
  native.invoke(
    Type.Void, 164, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_INITIAL_PLAYER_STATION(const char* radioStation) // 0x88795F13FACDA88D
function AUDIO.SET_INITIAL_PLAYER_STATION(radioStation)
  native.invoke(
    Type.Void, 165, false,
    arg(Type.String, radioStation)
  )
end

-- void SET_USER_RADIO_CONTROL_ENABLED(BOOL toggle) // 0x19F21E63AE6EAE4E
function AUDIO.SET_USER_RADIO_CONTROL_ENABLED(toggle)
  native.invoke(
    Type.Void, 166, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_RADIO_TRACK(const char* radioStation, const char* radioTrack) // 0xB39786F201FEE30B
--[[
Only found this one in the decompiled scripts:

AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");

--]]
function AUDIO.SET_RADIO_TRACK(radioStation, radioTrack)
  native.invoke(
    Type.Void, 167, false,
    arg(Type.String, radioStation),
    arg(Type.String, radioTrack)
  )
end

-- void SET_RADIO_TRACK_WITH_START_OFFSET(const char* radioStationName, const char* mixName, int p2) // 0x2CB0075110BE1E56
function AUDIO.SET_RADIO_TRACK_WITH_START_OFFSET(radioStationName, mixName, p2)
  native.invoke(
    Type.Void, 168, false,
    arg(Type.String, radioStationName),
    arg(Type.String, mixName),
    arg(Type.Int, p2)
  )
end

-- void SET_NEXT_RADIO_TRACK(const char* radioName, const char* radioTrack, const char* p2, const char* p3) // 0x55ECF4D13D9903B0
function AUDIO.SET_NEXT_RADIO_TRACK(radioName, radioTrack, p2, p3)
  native.invoke(
    Type.Void, 169, false,
    arg(Type.String, radioName),
    arg(Type.String, radioTrack),
    arg(Type.String, p2),
    arg(Type.String, p3)
  )
end

-- void SET_VEHICLE_RADIO_LOUD(Vehicle vehicle, BOOL toggle) // 0xBB6F1CAEC68B0BCE
function AUDIO.SET_VEHICLE_RADIO_LOUD(vehicle, toggle)
  native.invoke(
    Type.Void, 170, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- BOOL CAN_VEHICLE_RECEIVE_CB_RADIO(Vehicle vehicle) // 0x032A116663A4D5AC
function AUDIO.CAN_VEHICLE_RECEIVE_CB_RADIO(vehicle)
  return native.invoke(
    Type.Bool, 171, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY(BOOL toggle) // 0x1098355A16064BB3
function AUDIO.SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY(toggle)
  native.invoke(
    Type.Void, 172, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL DOES_PLAYER_VEH_HAVE_RADIO() // 0x109697E2FFBAC8A1
function AUDIO.DOES_PLAYER_VEH_HAVE_RADIO()
  return native.invoke(
    Type.Bool, 173, false
  )
end

-- BOOL IS_PLAYER_VEH_RADIO_ENABLE() // 0x5F43D83FD6738741
function AUDIO.IS_PLAYER_VEH_RADIO_ENABLE()
  return native.invoke(
    Type.Bool, 174, false
  )
end

-- void SET_VEHICLE_RADIO_ENABLED(Vehicle vehicle, BOOL toggle) // 0x3B988190C0AA6C0B
--[[
can't seem to enable radio on cop cars etc
--]]
function AUDIO.SET_VEHICLE_RADIO_ENABLED(vehicle, toggle)
  native.invoke(
    Type.Void, 175, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_POSITIONED_PLAYER_VEHICLE_RADIO_EMITTER_ENABLED(Any p0) // 0xDA07819E452FFE8F
function AUDIO.SET_POSITIONED_PLAYER_VEHICLE_RADIO_EMITTER_ENABLED(p0)
  native.invoke(
    Type.Void, 176, false,
    arg(Type.Any, p0)
  )
end

-- void SET_CUSTOM_RADIO_TRACK_LIST(const char* radioStation, const char* trackListName, BOOL p2) // 0x4E404A9361F75BB2
--[[
Examples:

AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);
AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_MICHAEL", 1);
AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_KILL_TREVOR", 1);
AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "END_CREDITS_SAVE_MICHAEL_TREVOR", 1);
AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);
AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_06_COUNTRY", "MAGDEMO2_RADIO_DINGHY", 1);
AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_16_SILVERLAKE", "SEA_RACE_RADIO_PLAYLIST", 1);
AUDIO::SET_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK", "OFF_ROAD_RADIO_ROCK_LIST", 1);
--]]
function AUDIO.SET_CUSTOM_RADIO_TRACK_LIST(radioStation, trackListName, p2)
  native.invoke(
    Type.Void, 177, false,
    arg(Type.String, radioStation),
    arg(Type.String, trackListName),
    arg(Type.Bool, p2)
  )
end

-- void CLEAR_CUSTOM_RADIO_TRACK_LIST(const char* radioStation) // 0x1654F24A88A8E3FE
--[[
3 calls in the b617d scripts, removed duplicate.

AUDIO::CLEAR_CUSTOM_RADIO_TRACK_LIST("RADIO_16_SILVERLAKE");
AUDIO::CLEAR_CUSTOM_RADIO_TRACK_LIST("RADIO_01_CLASS_ROCK");
--]]
function AUDIO.CLEAR_CUSTOM_RADIO_TRACK_LIST(radioStation)
  native.invoke(
    Type.Void, 178, false,
    arg(Type.String, radioStation)
  )
end

-- int GET_NUM_UNLOCKED_RADIO_STATIONS() // 0xF1620ECB50E01DE7
function AUDIO.GET_NUM_UNLOCKED_RADIO_STATIONS()
  return native.invoke(
    Type.Int, 179, false
  )
end

-- int FIND_RADIO_STATION_INDEX(Hash stationNameHash) // 0x8D67489793FF428B
function AUDIO.FIND_RADIO_STATION_INDEX(stationNameHash)
  return native.invoke(
    Type.Int, 180, false,
    arg(Type.Hash, stationNameHash)
  )
end

-- void SET_RADIO_STATION_MUSIC_ONLY(const char* radioStation, BOOL toggle) // 0x774BD811F656A122
--[[
6 calls in the b617d scripts, removed identical lines:

AUDIO::SET_RADIO_STATION_MUSIC_ONLY("RADIO_01_CLASS_ROCK", 1);
AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 0);
AUDIO::SET_RADIO_STATION_MUSIC_ONLY(AUDIO::GET_RADIO_STATION_NAME(10), 1);
--]]
function AUDIO.SET_RADIO_STATION_MUSIC_ONLY(radioStation, toggle)
  native.invoke(
    Type.Void, 181, false,
    arg(Type.String, radioStation),
    arg(Type.Bool, toggle)
  )
end

-- void SET_RADIO_FRONTEND_FADE_TIME(float fadeTime) // 0x2C96CDB04FCA358E
function AUDIO.SET_RADIO_FRONTEND_FADE_TIME(fadeTime)
  native.invoke(
    Type.Void, 182, false,
    arg(Type.Float, fadeTime)
  )
end

-- void UNLOCK_RADIO_STATION_TRACK_LIST(const char* radioStation, const char* trackListName) // 0x031ACB6ABA18C729
--[[
AUDIO::UNLOCK_RADIO_STATION_TRACK_LIST("RADIO_16_SILVERLAKE", "MIRRORPARK_LOCKED");
--]]
function AUDIO.UNLOCK_RADIO_STATION_TRACK_LIST(radioStation, trackListName)
  native.invoke(
    Type.Void, 183, false,
    arg(Type.String, radioStation),
    arg(Type.String, trackListName)
  )
end

-- void LOCK_RADIO_STATION_TRACK_LIST(const char* radioStation, const char* trackListName) // 0xFF5E5EA2DCEEACF3
function AUDIO.LOCK_RADIO_STATION_TRACK_LIST(radioStation, trackListName)
  native.invoke(
    Type.Void, 184, false,
    arg(Type.String, radioStation),
    arg(Type.String, trackListName)
  )
end

-- void UPDATE_UNLOCKABLE_DJ_RADIO_TRACKS(BOOL enableMixes) // 0x47AED84213A47510
--[[
Just a nullsub (i.e. does absolutely nothing) since build 1604.
--]]
function AUDIO.UPDATE_UNLOCKABLE_DJ_RADIO_TRACKS(enableMixes)
  native.invoke(
    Type.Void, 185, false,
    arg(Type.Bool, enableMixes)
  )
end

-- void LOCK_RADIO_STATION(const char* radioStationName, BOOL toggle) // 0x477D9DB48F889591
--[[
Disables the radio station (hides it from the radio wheel).
--]]
function AUDIO.LOCK_RADIO_STATION(radioStationName, toggle)
  native.invoke(
    Type.Void, 186, false,
    arg(Type.String, radioStationName),
    arg(Type.Bool, toggle)
  )
end

-- void SET_RADIO_STATION_AS_FAVOURITE(const char* radioStation, BOOL toggle) // 0x4CAFEBFA21EC188D
--[[
Doesn't have an effect in Story Mode.
--]]
function AUDIO.SET_RADIO_STATION_AS_FAVOURITE(radioStation, toggle)
  native.invoke(
    Type.Void, 187, false,
    arg(Type.String, radioStation),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_RADIO_STATION_FAVOURITED(const char* radioStation) // 0x2B1784DB08AFEA79
function AUDIO.IS_RADIO_STATION_FAVOURITED(radioStation)
  return native.invoke(
    Type.Bool, 188, false,
    arg(Type.String, radioStation)
  )
end

-- BOOL GET_NEXT_AUDIBLE_BEAT(float* out1, float* out2, int* out3) // 0xC64A06D939F826F5
function AUDIO.GET_NEXT_AUDIBLE_BEAT(out1, out2, out3)
  return native.invoke(
    Type.Bool, 189, false,
    ref(Type.Float, out1),
    ref(Type.Float, out2),
    ref(Type.Int, out3)
  )
end

-- void FORCE_MUSIC_TRACK_LIST(const char* radioStation, const char* trackListName, int milliseconds) // 0x4E0AF9114608257C
--[[
Changes start time of a tracklist (milliseconds)
R* uses a random int: MISC::GET_RANDOM_INT_IN_RANGE(0, 13) * 60000)
--]]
function AUDIO.FORCE_MUSIC_TRACK_LIST(radioStation, trackListName, milliseconds)
  native.invoke(
    Type.Void, 190, false,
    arg(Type.String, radioStation),
    arg(Type.String, trackListName),
    arg(Type.Int, milliseconds)
  )
end

-- int GET_CURRENT_TRACK_PLAY_TIME(const char* radioStationName) // 0x3E65CDE5215832C1
function AUDIO.GET_CURRENT_TRACK_PLAY_TIME(radioStationName)
  return native.invoke(
    Type.Int, 191, false,
    arg(Type.String, radioStationName)
  )
end

-- Hash GET_CURRENT_TRACK_SOUND_NAME(const char* radioStationName) // 0x34D66BC058019CE0
function AUDIO.GET_CURRENT_TRACK_SOUND_NAME(radioStationName)
  return native.invoke(
    Type.Hash, 192, false,
    arg(Type.String, radioStationName)
  )
end

-- void SET_VEHICLE_MISSILE_WARNING_ENABLED(Vehicle vehicle, BOOL toggle) // 0xF3365489E0DD50F9
function AUDIO.SET_VEHICLE_MISSILE_WARNING_ENABLED(vehicle, toggle)
  native.invoke(
    Type.Void, 193, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_AMBIENT_ZONE_STATE(const char* zoneName, BOOL p1, BOOL p2) // 0xBDA07E5950085E46
--[[
Full list of ambient zones by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ambientZones.json
--]]
function AUDIO.SET_AMBIENT_ZONE_STATE(zoneName, p1, p2)
  native.invoke(
    Type.Void, 194, false,
    arg(Type.String, zoneName),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void CLEAR_AMBIENT_ZONE_STATE(const char* zoneName, BOOL p1) // 0x218DD44AAAC964FF
--[[
This function also has a p2, unknown. Signature AUDIO::CLEAR_AMBIENT_ZONE_STATE(const char* zoneName, bool p1, Any p2);

Still needs more research.

Full list of ambient zones by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ambientZones.json
--]]
function AUDIO.CLEAR_AMBIENT_ZONE_STATE(zoneName, p1)
  native.invoke(
    Type.Void, 195, false,
    arg(Type.String, zoneName),
    arg(Type.Bool, p1)
  )
end

-- void SET_AMBIENT_ZONE_LIST_STATE(const char* ambientZone, BOOL p1, BOOL p2) // 0x9748FA4DE50CCE3E
function AUDIO.SET_AMBIENT_ZONE_LIST_STATE(ambientZone, p1, p2)
  native.invoke(
    Type.Void, 196, false,
    arg(Type.String, ambientZone),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void CLEAR_AMBIENT_ZONE_LIST_STATE(const char* ambientZone, BOOL p1) // 0x120C48C614909FA4
function AUDIO.CLEAR_AMBIENT_ZONE_LIST_STATE(ambientZone, p1)
  native.invoke(
    Type.Void, 197, false,
    arg(Type.String, ambientZone),
    arg(Type.Bool, p1)
  )
end

-- void SET_AMBIENT_ZONE_STATE_PERSISTENT(const char* ambientZone, BOOL p1, BOOL p2) // 0x1D6650420CEC9D3B
--[[
Full list of ambient zones by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ambientZones.json
--]]
function AUDIO.SET_AMBIENT_ZONE_STATE_PERSISTENT(ambientZone, p1, p2)
  native.invoke(
    Type.Void, 198, false,
    arg(Type.String, ambientZone),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT(const char* ambientZone, BOOL p1, BOOL p2) // 0xF3638DAE8C4045E1
--[[
Full list of ambient zones by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ambientZones.json
--]]
function AUDIO.SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT(ambientZone, p1, p2)
  native.invoke(
    Type.Void, 199, false,
    arg(Type.String, ambientZone),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_AMBIENT_ZONE_ENABLED(const char* ambientZone) // 0x01E2817A479A7F9B
--[[
Full list of ambient zones by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/ambientZones.json
--]]
function AUDIO.IS_AMBIENT_ZONE_ENABLED(ambientZone)
  return native.invoke(
    Type.Bool, 200, false,
    arg(Type.String, ambientZone)
  )
end

-- void REFRESH_CLOSEST_OCEAN_SHORELINE() // 0x5D2BFAAB8D956E0E
function AUDIO.REFRESH_CLOSEST_OCEAN_SHORELINE()
  native.invoke(
    Type.Void, 201, false
  )
end

-- void SET_CUTSCENE_AUDIO_OVERRIDE(const char* name) // 0x3B4BF5F0859204D9
--[[
All occurrences found in b617d, sorted alphabetically and identical lines removed: 

AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK");
AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM");
AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");
Full list of cutscene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/cutsceneNames.json
--]]
function AUDIO.SET_CUTSCENE_AUDIO_OVERRIDE(name)
  native.invoke(
    Type.Void, 202, false,
    arg(Type.String, name)
  )
end

-- void SET_VARIABLE_ON_SYNCH_SCENE_AUDIO(const char* variableName, float value) // 0xBCC29F935ED07688
function AUDIO.SET_VARIABLE_ON_SYNCH_SCENE_AUDIO(variableName, value)
  native.invoke(
    Type.Void, 203, false,
    arg(Type.String, variableName),
    arg(Type.Float, value)
  )
end

-- int PLAY_POLICE_REPORT(const char* name, float p1) // 0xDFEBD56D9BD1EB16
--[[
Plays the given police radio message.

All found occurrences in b617d, sorted alphabetically and identical lines removed: https://pastebin.com/GBnsQ5hr
Full list of police report names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/policeReportNames.json
--]]
function AUDIO.PLAY_POLICE_REPORT(name, p1)
  return native.invoke(
    Type.Int, 204, false,
    arg(Type.String, name),
    arg(Type.Float, p1)
  )
end

-- void CANCEL_ALL_POLICE_REPORTS() // 0xB4F90FAF7670B16F
function AUDIO.CANCEL_ALL_POLICE_REPORTS()
  native.invoke(
    Type.Void, 205, false
  )
end

-- void BLIP_SIREN(Vehicle vehicle) // 0x1B9025BDA76822B6
--[[
Plays the siren sound of a vehicle which is otherwise activated when fastly double-pressing the horn key.
Only works on vehicles with a police siren.
--]]
function AUDIO.BLIP_SIREN(vehicle)
  native.invoke(
    Type.Void, 206, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void OVERRIDE_VEH_HORN(Vehicle vehicle, BOOL override, int hornHash) // 0x3CDC1E622CCE0356
--[[
Overrides the vehicle's horn hash.
When changing this hash on a vehicle, it will not return the 'overwritten' hash. It will still always return the default horn hash (same as GET_VEHICLE_DEFAULT_HORN)

vehicle - the vehicle whose horn should be overwritten
mute - p1 seems to be an option for muting the horn
p2 - maybe a horn id, since the function AUDIO::GET_VEHICLE_DEFAULT_HORN(veh) exists?
--]]
function AUDIO.OVERRIDE_VEH_HORN(vehicle, override, hornHash)
  native.invoke(
    Type.Void, 207, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, override),
    arg(Type.Int, hornHash)
  )
end

-- BOOL IS_HORN_ACTIVE(Vehicle vehicle) // 0x9D6BFC12B05C6121
--[[
Checks whether the horn of a vehicle is currently played.
--]]
function AUDIO.IS_HORN_ACTIVE(vehicle)
  return native.invoke(
    Type.Bool, 208, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_AGGRESSIVE_HORNS(BOOL toggle) // 0x395BF71085D1B1D9
--[[
Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.
--]]
function AUDIO.SET_AGGRESSIVE_HORNS(toggle)
  native.invoke(
    Type.Void, 209, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_RADIO_POSITION_AUDIO_MUTE(BOOL p0) // 0x02E93C796ABD3A97
--[[
Does nothing (it's a nullsub).
--]]
function AUDIO.SET_RADIO_POSITION_AUDIO_MUTE(p0)
  native.invoke(
    Type.Void, 210, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_VEHICLE_CONVERSATIONS_PERSIST(BOOL p0, BOOL p1) // 0x58BB377BEC7CD5F4
--[[
SET_VEHICLE_CONVERSATIONS_PERSIST?
--]]
function AUDIO.SET_VEHICLE_CONVERSATIONS_PERSIST(p0, p1)
  native.invoke(
    Type.Void, 211, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1)
  )
end

-- void SET_VEHICLE_CONVERSATIONS_PERSIST_NEW(BOOL p0, BOOL p1, BOOL p2) // 0x9BD7BD55E4533183
function AUDIO.SET_VEHICLE_CONVERSATIONS_PERSIST_NEW(p0, p1, p2)
  native.invoke(
    Type.Void, 212, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- BOOL IS_STREAM_PLAYING() // 0xD11FA52EB849D978
function AUDIO.IS_STREAM_PLAYING()
  return native.invoke(
    Type.Bool, 213, false
  )
end

-- int GET_STREAM_PLAY_TIME() // 0x4E72BBDBCA58A3DB
function AUDIO.GET_STREAM_PLAY_TIME()
  return native.invoke(
    Type.Int, 214, false
  )
end

-- BOOL LOAD_STREAM(const char* streamName, const char* soundSet) // 0x1F1F957154EC51DF
--[[
Example:
AUDIO::LOAD_STREAM("CAR_STEAL_1_PASSBY", "CAR_STEAL_1_SOUNDSET");

All found occurrences in the b678d decompiled scripts: https://pastebin.com/3rma6w5w

Stream names often ends with "_MASTER", "_SMALL" or "_STREAM". Also "_IN", "_OUT" and numbers.   

soundSet is often set to 0 in the scripts. These are common to end the soundSets: "_SOUNDS", "_SOUNDSET" and numbers.

Full list of audio / sound names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/soundNames.json
--]]
function AUDIO.LOAD_STREAM(streamName, soundSet)
  return native.invoke(
    Type.Bool, 215, false,
    arg(Type.String, streamName),
    arg(Type.String, soundSet)
  )
end

-- BOOL LOAD_STREAM_WITH_START_OFFSET(const char* streamName, int startOffset, const char* soundSet) // 0x59C16B79F53B3712
--[[
Example:
AUDIO::LOAD_STREAM_WITH_START_OFFSET("STASH_TOXIN_STREAM", 2400, "FBI_05_SOUNDS");

Only called a few times in the scripts.

Full list of audio / sound names by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/soundNames.json
--]]
function AUDIO.LOAD_STREAM_WITH_START_OFFSET(streamName, startOffset, soundSet)
  return native.invoke(
    Type.Bool, 216, false,
    arg(Type.String, streamName),
    arg(Type.Int, startOffset),
    arg(Type.String, soundSet)
  )
end

-- void PLAY_STREAM_FROM_PED(Ped ped) // 0x89049DD63C08B5D1
function AUDIO.PLAY_STREAM_FROM_PED(ped)
  native.invoke(
    Type.Void, 217, false,
    arg(Type.Ped, ped)
  )
end

-- void PLAY_STREAM_FROM_VEHICLE(Vehicle vehicle) // 0xB70374A758007DFA
function AUDIO.PLAY_STREAM_FROM_VEHICLE(vehicle)
  native.invoke(
    Type.Void, 218, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void PLAY_STREAM_FROM_OBJECT(Object object) // 0xEBAA9B64D76356FD
--[[
Used with AUDIO::LOAD_STREAM

Example from finale_heist2b.c4:
TASK::TASK_SYNCHRONIZED_SCENE(l_4C8[2/*14*/], l_4C8[2/*14*/]._f7, l_30A, "push_out_vault_l", 4.0, -1.5, 5, 713, 4.0, 0);
                    PED::SET_SYNCHRONIZED_SCENE_PHASE(l_4C8[2/*14*/]._f7, 0.0);
                    PED::FORCE_PED_AI_AND_ANIMATION_UPDATE(l_4C8[2/*14*/], 0, 0);
                    PED::SET_PED_COMBAT_ATTRIBUTES(l_4C8[2/*14*/], 38, 1);
                    PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(l_4C8[2/*14*/], 1);
                    if (AUDIO::LOAD_STREAM("Gold_Cart_Push_Anim_01", "BIG_SCORE_3B_SOUNDS")) {
                        AUDIO::PLAY_STREAM_FROM_OBJECT(l_36F[0/*1*/]);
                    }
--]]
function AUDIO.PLAY_STREAM_FROM_OBJECT(object)
  native.invoke(
    Type.Void, 219, false,
    arg(Type.Object, object)
  )
end

-- void PLAY_STREAM_FRONTEND() // 0x58FCE43488F9F5F4
function AUDIO.PLAY_STREAM_FRONTEND()
  native.invoke(
    Type.Void, 220, false
  )
end

-- void PLAY_STREAM_FROM_POSITION(float x, float y, float z) // 0x21442F412E8DE56B
function AUDIO.PLAY_STREAM_FROM_POSITION(x, y, z)
  native.invoke(
    Type.Void, 221, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void STOP_STREAM() // 0xA4718A1419D18151
function AUDIO.STOP_STREAM()
  native.invoke(
    Type.Void, 222, false
  )
end

-- void STOP_PED_SPEAKING(Ped ped, BOOL shaking) // 0x9D64D7405520E3D3
function AUDIO.STOP_PED_SPEAKING(ped, shaking)
  native.invoke(
    Type.Void, 223, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, shaking)
  )
end

-- void BLOCK_ALL_SPEECH_FROM_PED(Ped ped, BOOL p1, BOOL p2) // 0xF8AD2EED7C47E8FE
function AUDIO.BLOCK_ALL_SPEECH_FROM_PED(ped, p1, p2)
  native.invoke(
    Type.Void, 224, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Bool, p2)
  )
end

-- void STOP_PED_SPEAKING_SYNCED(Ped ped, BOOL p1) // 0xAB6781A5F3101470
function AUDIO.STOP_PED_SPEAKING_SYNCED(ped, p1)
  native.invoke(
    Type.Void, 225, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1)
  )
end

-- void DISABLE_PED_PAIN_AUDIO(Ped ped, BOOL toggle) // 0xA9A41C1E940FB0E8
function AUDIO.DISABLE_PED_PAIN_AUDIO(ped, toggle)
  native.invoke(
    Type.Void, 226, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_AMBIENT_SPEECH_DISABLED(Ped ped) // 0x932C2D096A2C3FFF
--[[
Common in the scripts:
AUDIO::IS_AMBIENT_SPEECH_DISABLED(PLAYER::PLAYER_PED_ID());
--]]
function AUDIO.IS_AMBIENT_SPEECH_DISABLED(ped)
  return native.invoke(
    Type.Bool, 227, false,
    arg(Type.Ped, ped)
  )
end

-- void BLOCK_SPEECH_CONTEXT_GROUP(const char* p0, int p1) // 0xA8A7D434AFB4B97B
function AUDIO.BLOCK_SPEECH_CONTEXT_GROUP(p0, p1)
  native.invoke(
    Type.Void, 228, false,
    arg(Type.String, p0),
    arg(Type.Int, p1)
  )
end

-- void UNBLOCK_SPEECH_CONTEXT_GROUP(const char* p0) // 0x2ACABED337622DF2
function AUDIO.UNBLOCK_SPEECH_CONTEXT_GROUP(p0)
  native.invoke(
    Type.Void, 229, false,
    arg(Type.String, p0)
  )
end

-- void SET_SIREN_WITH_NO_DRIVER(Vehicle vehicle, BOOL toggle) // 0x1FEF0683B96EBCF2
function AUDIO.SET_SIREN_WITH_NO_DRIVER(vehicle, toggle)
  native.invoke(
    Type.Void, 230, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_SIREN_BYPASS_MP_DRIVER_CHECK(Vehicle vehicle, BOOL toggle) // 0xF584CF8529B51434
function AUDIO.SET_SIREN_BYPASS_MP_DRIVER_CHECK(vehicle, toggle)
  native.invoke(
    Type.Void, 231, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void TRIGGER_SIREN_AUDIO(Vehicle vehicle) // 0x66C3FB05206041BA
function AUDIO.TRIGGER_SIREN_AUDIO(vehicle)
  native.invoke(
    Type.Void, 232, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_HORN_PERMANENTLY_ON(Vehicle vehicle) // 0x9C11908013EA4715
function AUDIO.SET_HORN_PERMANENTLY_ON(vehicle)
  native.invoke(
    Type.Void, 233, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_HORN_ENABLED(Vehicle vehicle, BOOL toggle) // 0x76D683C108594D0E
function AUDIO.SET_HORN_ENABLED(vehicle, toggle)
  native.invoke(
    Type.Void, 234, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_AUDIO_VEHICLE_PRIORITY(Vehicle vehicle, Any p1) // 0xE5564483E407F914
function AUDIO.SET_AUDIO_VEHICLE_PRIORITY(vehicle, p1)
  native.invoke(
    Type.Void, 235, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Any, p1)
  )
end

-- void SET_HORN_PERMANENTLY_ON_TIME(Vehicle vehicle, float time) // 0x9D3AF56E94C9AE98
function AUDIO.SET_HORN_PERMANENTLY_ON_TIME(vehicle, time)
  native.invoke(
    Type.Void, 236, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, time)
  )
end

-- void USE_SIREN_AS_HORN(Vehicle vehicle, BOOL toggle) // 0xFA932DE350266EF8
function AUDIO.USE_SIREN_AS_HORN(vehicle, toggle)
  native.invoke(
    Type.Void, 237, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void FORCE_USE_AUDIO_GAME_OBJECT(Vehicle vehicle, const char* audioName) // 0x4F0C413926060B38
--[[
This native sets the audio of the specified vehicle to the audioName (p1).

Use the audioNameHash found in vehicles.meta

Example:
_SET_VEHICLE_AUDIO(veh, "ADDER");
The selected vehicle will now have the audio of the Adder.
--]]
function AUDIO.FORCE_USE_AUDIO_GAME_OBJECT(vehicle, audioName)
  native.invoke(
    Type.Void, 238, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.String, audioName)
  )
end

-- void PRELOAD_VEHICLE_AUDIO_BANK(Hash vehicleModel) // 0xCA4CEA6AE0000A7E
function AUDIO.PRELOAD_VEHICLE_AUDIO_BANK(vehicleModel)
  native.invoke(
    Type.Void, 239, false,
    arg(Type.Hash, vehicleModel)
  )
end

-- void SET_VEHICLE_STARTUP_REV_SOUND(Vehicle vehicle, const char* p1, const char* p2) // 0xF1F8157B8C3F171C
function AUDIO.SET_VEHICLE_STARTUP_REV_SOUND(vehicle, p1, p2)
  native.invoke(
    Type.Void, 240, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.String, p1),
    arg(Type.String, p2)
  )
end

-- void RESET_VEHICLE_STARTUP_REV_SOUND(Vehicle vehicle) // 0xD2DCCD8E16E20997
function AUDIO.RESET_VEHICLE_STARTUP_REV_SOUND(vehicle)
  native.invoke(
    Type.Void, 241, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_VEHICLE_FORCE_REVERSE_WARNING(Any p0, Any p1) // 0x97FFB4ADEED08066
function AUDIO.SET_VEHICLE_FORCE_REVERSE_WARNING(p0, p1)
  native.invoke(
    Type.Void, 242, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL IS_VEHICLE_AUDIBLY_DAMAGED(Vehicle vehicle) // 0x5DB8010EE71FDEF2
function AUDIO.IS_VEHICLE_AUDIBLY_DAMAGED(vehicle)
  return native.invoke(
    Type.Bool, 243, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_VEHICLE_AUDIO_ENGINE_DAMAGE_FACTOR(Vehicle vehicle, float damageFactor) // 0x59E7B488451F4D3A
function AUDIO.SET_VEHICLE_AUDIO_ENGINE_DAMAGE_FACTOR(vehicle, damageFactor)
  native.invoke(
    Type.Void, 244, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, damageFactor)
  )
end

-- void SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR(Vehicle vehicle, float intensity) // 0x01BB4D577D38BD9E
--[[
intensity: 0.0f - 1.0f, only used once with 1.0f in R* Scripts (nigel2)
Makes an engine rattling noise when you decelerate, you need to be going faster to hear lower values
--]]
function AUDIO.SET_VEHICLE_AUDIO_BODY_DAMAGE_FACTOR(vehicle, intensity)
  native.invoke(
    Type.Void, 245, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Float, intensity)
  )
end

-- void ENABLE_VEHICLE_FANBELT_DAMAGE(Vehicle vehicle, BOOL toggle) // 0x1C073274E065C6D2
function AUDIO.ENABLE_VEHICLE_FANBELT_DAMAGE(vehicle, toggle)
  native.invoke(
    Type.Void, 246, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void ENABLE_VEHICLE_EXHAUST_POPS(Vehicle vehicle, BOOL toggle) // 0x2BE4BC731D039D5A
function AUDIO.ENABLE_VEHICLE_EXHAUST_POPS(vehicle, toggle)
  native.invoke(
    Type.Void, 247, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_VEHICLE_BOOST_ACTIVE(Vehicle vehicle, BOOL toggle) // 0x4A04DE7CAB2739A1
--[[
SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0);
SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0); 

Will give a boost-soundeffect.
--]]
function AUDIO.SET_VEHICLE_BOOST_ACTIVE(vehicle, toggle)
  native.invoke(
    Type.Void, 248, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_VEHICLE_ALARM_AUDIO_ACTIVE(Vehicle vehicle, BOOL toggle) // 0x6FDDAD856E36988A
function AUDIO.SET_PLAYER_VEHICLE_ALARM_AUDIO_ACTIVE(vehicle, toggle)
  native.invoke(
    Type.Void, 249, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void SET_SCRIPT_UPDATE_DOOR_AUDIO(Hash doorHash, BOOL toggle) // 0x06C0023BED16DD6B
function AUDIO.SET_SCRIPT_UPDATE_DOOR_AUDIO(doorHash, toggle)
  native.invoke(
    Type.Void, 250, false,
    arg(Type.Hash, doorHash),
    arg(Type.Bool, toggle)
  )
end

-- void PLAY_VEHICLE_DOOR_OPEN_SOUND(Vehicle vehicle, int doorId) // 0x3A539D52857EA82D
--[[
doorId: see SET_VEHICLE_DOOR_SHUT
--]]
function AUDIO.PLAY_VEHICLE_DOOR_OPEN_SOUND(vehicle, doorId)
  native.invoke(
    Type.Void, 251, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, doorId)
  )
end

-- void PLAY_VEHICLE_DOOR_CLOSE_SOUND(Vehicle vehicle, int doorId) // 0x62A456AA4769EF34
--[[
doorId: see SET_VEHICLE_DOOR_SHUT
--]]
function AUDIO.PLAY_VEHICLE_DOOR_CLOSE_SOUND(vehicle, doorId)
  native.invoke(
    Type.Void, 252, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, doorId)
  )
end

-- void ENABLE_STALL_WARNING_SOUNDS(Vehicle vehicle, BOOL toggle) // 0xC15907D667F7CFB2
--[[
Works for planes only.
--]]
function AUDIO.ENABLE_STALL_WARNING_SOUNDS(vehicle, toggle)
  native.invoke(
    Type.Void, 253, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, toggle)
  )
end

-- void _ENABLE_DRAG_RACE_STATIONARY_WARNING_SOUNDS(Vehicle vehicle, BOOL enable) // 0xBEFB80290414FD4F
function AUDIO._ENABLE_DRAG_RACE_STATIONARY_WARNING_SOUNDS(vehicle, enable)
  native.invoke(
    Type.Void, 254, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, enable)
  )
end

-- BOOL IS_GAME_IN_CONTROL_OF_MUSIC() // 0x6D28DC1671E334FD
--[[
Hardcoded to return 1
--]]
function AUDIO.IS_GAME_IN_CONTROL_OF_MUSIC()
  return native.invoke(
    Type.Bool, 255, false
  )
end

-- void SET_GPS_ACTIVE(BOOL active) // 0x3BD3F52BA9B1E4E8
function AUDIO.SET_GPS_ACTIVE(active)
  native.invoke(
    Type.Void, 256, false,
    arg(Type.Bool, active)
  )
end

-- void PLAY_MISSION_COMPLETE_AUDIO(const char* audioName) // 0xB138AAB8A70D3C69
--[[
Called 38 times in the scripts. There are 5 different audioNames used.
 One unknown removed below.

AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");
AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");
--]]
function AUDIO.PLAY_MISSION_COMPLETE_AUDIO(audioName)
  native.invoke(
    Type.Void, 257, false,
    arg(Type.String, audioName)
  )
end

-- BOOL IS_MISSION_COMPLETE_PLAYING() // 0x19A30C23F5827F8A
function AUDIO.IS_MISSION_COMPLETE_PLAYING()
  return native.invoke(
    Type.Bool, 258, false
  )
end

-- BOOL IS_MISSION_COMPLETE_READY_FOR_UI() // 0x6F259F82D873B8B8
function AUDIO.IS_MISSION_COMPLETE_READY_FOR_UI()
  return native.invoke(
    Type.Bool, 259, false
  )
end

-- void BLOCK_DEATH_JINGLE(BOOL toggle) // 0xF154B8D1775B2DEC
function AUDIO.BLOCK_DEATH_JINGLE(toggle)
  native.invoke(
    Type.Void, 260, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL START_AUDIO_SCENE(const char* scene) // 0x013A80FC08F6E4F2
--[[
Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.

List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: https://pastebin.com/MtM9N9CC
Full list of audio scene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/audioSceneNames.json
--]]
function AUDIO.START_AUDIO_SCENE(scene)
  return native.invoke(
    Type.Bool, 261, false,
    arg(Type.String, scene)
  )
end

-- void STOP_AUDIO_SCENE(const char* scene) // 0xDFE8422B3B94E688
--[[
Full list of audio scene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/audioSceneNames.json
--]]
function AUDIO.STOP_AUDIO_SCENE(scene)
  native.invoke(
    Type.Void, 262, false,
    arg(Type.String, scene)
  )
end

-- void STOP_AUDIO_SCENES() // 0xBAC7FC81A75EC1A1
--[[
??
--]]
function AUDIO.STOP_AUDIO_SCENES()
  native.invoke(
    Type.Void, 263, false
  )
end

-- BOOL IS_AUDIO_SCENE_ACTIVE(const char* scene) // 0xB65B60556E2A9225
--[[
Full list of audio scene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/audioSceneNames.json
--]]
function AUDIO.IS_AUDIO_SCENE_ACTIVE(scene)
  return native.invoke(
    Type.Bool, 264, false,
    arg(Type.String, scene)
  )
end

-- void SET_AUDIO_SCENE_VARIABLE(const char* scene, const char* variable, float value) // 0xEF21A9EF089A2668
--[[
Full list of audio scene names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/audioSceneNames.json
--]]
function AUDIO.SET_AUDIO_SCENE_VARIABLE(scene, variable, value)
  native.invoke(
    Type.Void, 265, false,
    arg(Type.String, scene),
    arg(Type.String, variable),
    arg(Type.Float, value)
  )
end

-- void SET_AUDIO_SCRIPT_CLEANUP_TIME(int time) // 0xA5F377B175A699C5
function AUDIO.SET_AUDIO_SCRIPT_CLEANUP_TIME(time)
  native.invoke(
    Type.Void, 266, false,
    arg(Type.Int, time)
  )
end

-- void ADD_ENTITY_TO_AUDIO_MIX_GROUP(Entity entity, const char* groupName, float p2) // 0x153973AB99FE8980
--[[
All found occurrences in b678d:
https://pastebin.com/ceu67jz8
--]]
function AUDIO.ADD_ENTITY_TO_AUDIO_MIX_GROUP(entity, groupName, p2)
  native.invoke(
    Type.Void, 267, false,
    arg(Type.Entity, entity),
    arg(Type.String, groupName),
    arg(Type.Float, p2)
  )
end

-- void REMOVE_ENTITY_FROM_AUDIO_MIX_GROUP(Entity entity, float p1) // 0x18EB48CFC41F2EA0
function AUDIO.REMOVE_ENTITY_FROM_AUDIO_MIX_GROUP(entity, p1)
  native.invoke(
    Type.Void, 268, false,
    arg(Type.Entity, entity),
    arg(Type.Float, p1)
  )
end

-- BOOL AUDIO_IS_MUSIC_PLAYING() // 0x845FFC3A4FEEFA3E
function AUDIO.AUDIO_IS_MUSIC_PLAYING()
  return native.invoke(
    Type.Bool, 269, false
  )
end

-- BOOL AUDIO_IS_SCRIPTED_MUSIC_PLAYING() // 0x2DD39BF3E2F9C47F
--[[
This is an alias of AUDIO_IS_MUSIC_PLAYING.
--]]
function AUDIO.AUDIO_IS_SCRIPTED_MUSIC_PLAYING()
  return native.invoke(
    Type.Bool, 270, false
  )
end

-- BOOL PREPARE_MUSIC_EVENT(const char* eventName) // 0x1E5185B72EF5158A
--[[
All music event names found in the b617d scripts: https://pastebin.com/GnYt0R3P
Full list of music event names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/musicEventNames.json
--]]
function AUDIO.PREPARE_MUSIC_EVENT(eventName)
  return native.invoke(
    Type.Bool, 271, false,
    arg(Type.String, eventName)
  )
end

-- BOOL CANCEL_MUSIC_EVENT(const char* eventName) // 0x5B17A90291133DA5
--[[
All music event names found in the b617d scripts: https://pastebin.com/GnYt0R3P
Full list of music event names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/musicEventNames.json
--]]
function AUDIO.CANCEL_MUSIC_EVENT(eventName)
  return native.invoke(
    Type.Bool, 272, false,
    arg(Type.String, eventName)
  )
end

-- BOOL TRIGGER_MUSIC_EVENT(const char* eventName) // 0x706D57B0F50DA710
--[[
List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: https://pastebin.com/RzDFmB1W

All music event names found in the b617d scripts: https://pastebin.com/GnYt0R3P
Full list of music event names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/musicEventNames.json
--]]
function AUDIO.TRIGGER_MUSIC_EVENT(eventName)
  return native.invoke(
    Type.Bool, 273, false,
    arg(Type.String, eventName)
  )
end

-- BOOL IS_MUSIC_ONESHOT_PLAYING() // 0xA097AB275061FB21
function AUDIO.IS_MUSIC_ONESHOT_PLAYING()
  return native.invoke(
    Type.Bool, 274, false
  )
end

-- int GET_MUSIC_PLAYTIME() // 0xE7A0D23DC414507B
function AUDIO.GET_MUSIC_PLAYTIME()
  return native.invoke(
    Type.Int, 275, false
  )
end

-- void SET_GLOBAL_RADIO_SIGNAL_LEVEL(Any p0) // 0x159B7318403A1CD8
function AUDIO.SET_GLOBAL_RADIO_SIGNAL_LEVEL(p0)
  native.invoke(
    Type.Void, 276, false,
    arg(Type.Any, p0)
  )
end

-- void RECORD_BROKEN_GLASS(float x, float y, float z, float radius) // 0xFBE20329593DEC9D
function AUDIO.RECORD_BROKEN_GLASS(x, y, z, radius)
  native.invoke(
    Type.Void, 277, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, radius)
  )
end

-- void CLEAR_ALL_BROKEN_GLASS() // 0xB32209EFFDC04913
function AUDIO.CLEAR_ALL_BROKEN_GLASS()
  native.invoke(
    Type.Void, 278, false
  )
end

-- void SCRIPT_OVERRIDES_WIND_ELEVATION(BOOL p0, Any p1) // 0x70B8EC8FC108A634
function AUDIO.SCRIPT_OVERRIDES_WIND_ELEVATION(p0, p1)
  native.invoke(
    Type.Void, 279, false,
    arg(Type.Bool, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_PED_WALLA_DENSITY(float p0, float p1) // 0x149AEE66F0CB3A99
function AUDIO.SET_PED_WALLA_DENSITY(p0, p1)
  native.invoke(
    Type.Void, 280, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- void SET_PED_INTERIOR_WALLA_DENSITY(float p0, float p1) // 0x8BF907833BE275DE
function AUDIO.SET_PED_INTERIOR_WALLA_DENSITY(p0, p1)
  native.invoke(
    Type.Void, 281, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- void FORCE_PED_PANIC_WALLA() // 0x062D5EAD4DA2FA6A
function AUDIO.FORCE_PED_PANIC_WALLA()
  native.invoke(
    Type.Void, 282, false
  )
end

-- BOOL PREPARE_ALARM(const char* alarmName) // 0x9D74AE343DB65533
--[[
Example:

bool prepareAlarm = AUDIO::PREPARE_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");
Full list of alarm names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/alarmSounds.json
--]]
function AUDIO.PREPARE_ALARM(alarmName)
  return native.invoke(
    Type.Bool, 283, false,
    arg(Type.String, alarmName)
  )
end

-- void START_ALARM(const char* alarmName, BOOL p2) // 0x0355EF116C4C97B2
--[[
Example:

This will start the alarm at Fort Zancudo.

AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);

First parameter (char) is the name of the alarm.
Second parameter (bool) is unknown, it does not seem to make a difference if this one is 0 or 1.

----------

It DOES make a difference but it has to do with the duration or something I dunno yet

----------

 Found in the b617d scripts:

 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS", 0);
 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER", 1);
 AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER_B", 0);
 AUDIO::START_ALARM("BIG_SCORE_HEIST_VAULT_ALARMS", a_0);
 AUDIO::START_ALARM("FBI_01_MORGUE_ALARMS", 1);
 AUDIO::START_ALARM("FIB_05_BIOTECH_LAB_ALARMS", 0);
 AUDIO::START_ALARM("JEWEL_STORE_HEIST_ALARMS", 0);
 AUDIO::START_ALARM("PALETO_BAY_SCORE_ALARM", 1);
 AUDIO::START_ALARM("PALETO_BAY_SCORE_CHICKEN_FACTORY_ALARM", 0);
 AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);
 AUDIO::START_ALARM("PORT_OF_LS_HEIST_SHIP_ALARMS", 0);
 AUDIO::START_ALARM("PRISON_ALARMS", 0);
 AUDIO::START_ALARM("PROLOGUE_VAULT_ALARMS", 0);
Full list of alarm names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/alarmSounds.json
--]]
function AUDIO.START_ALARM(alarmName, p2)
  native.invoke(
    Type.Void, 284, false,
    arg(Type.String, alarmName),
    arg(Type.Bool, p2)
  )
end

-- void STOP_ALARM(const char* alarmName, BOOL toggle) // 0xA1CADDCD98415A41
--[[
Example:

This will stop the alarm at Fort Zancudo.

AUDIO::STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);

First parameter (char) is the name of the alarm.
Second parameter (bool) has to be true (1) to have any effect.
Full list of alarm names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/alarmSounds.json
--]]
function AUDIO.STOP_ALARM(alarmName, toggle)
  native.invoke(
    Type.Void, 285, false,
    arg(Type.String, alarmName),
    arg(Type.Bool, toggle)
  )
end

-- void STOP_ALL_ALARMS(BOOL stop) // 0x2F794A877ADD4C92
function AUDIO.STOP_ALL_ALARMS(stop)
  native.invoke(
    Type.Void, 286, false,
    arg(Type.Bool, stop)
  )
end

-- BOOL IS_ALARM_PLAYING(const char* alarmName) // 0x226435CB96CCFC8C
--[[
Example:

bool playing = AUDIO::IS_ALARM_PLAYING("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");
Full list of alarm names by DurtyFree https://github.com/DurtyFree/gta-v-data-dumps/blob/master/alarmSounds.json
--]]
function AUDIO.IS_ALARM_PLAYING(alarmName)
  return native.invoke(
    Type.Bool, 287, false,
    arg(Type.String, alarmName)
  )
end

-- Hash GET_VEHICLE_DEFAULT_HORN(Vehicle vehicle) // 0x02165D55000219AC
--[[
Returns hash of default vehicle horn

Hash is stored in audVehicleAudioEntity
--]]
function AUDIO.GET_VEHICLE_DEFAULT_HORN(vehicle)
  return native.invoke(
    Type.Hash, 288, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- Hash GET_VEHICLE_DEFAULT_HORN_IGNORE_MODS(Vehicle vehicle) // 0xACB5DCCA1EC76840
function AUDIO.GET_VEHICLE_DEFAULT_HORN_IGNORE_MODS(vehicle)
  return native.invoke(
    Type.Hash, 289, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void RESET_PED_AUDIO_FLAGS(Ped ped) // 0xF54BB7B61036F335
function AUDIO.RESET_PED_AUDIO_FLAGS(ped)
  native.invoke(
    Type.Void, 290, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_FOOTSTEPS_EVENTS_ENABLED(Ped ped, BOOL toggle) // 0x0653B735BFBDFE87
--[[
Enables/disables ped's "loud" footstep sound.
--]]
function AUDIO.SET_PED_FOOTSTEPS_EVENTS_ENABLED(ped, toggle)
  native.invoke(
    Type.Void, 291, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_CLOTH_EVENTS_ENABLED(Ped ped, BOOL toggle) // 0x29DA3CA8D8B2692D
--[[
Enables/disables ped's "quiet" footstep sound.
--]]
function AUDIO.SET_PED_CLOTH_EVENTS_ENABLED(ped, toggle)
  native.invoke(
    Type.Void, 292, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void OVERRIDE_PLAYER_GROUND_MATERIAL(Hash hash, BOOL toggle) // 0xD2CC78CD3D0B50F9
--[[
Sets audio flag "OverridePlayerGroundMaterial"
--]]
function AUDIO.OVERRIDE_PLAYER_GROUND_MATERIAL(hash, toggle)
  native.invoke(
    Type.Void, 293, false,
    arg(Type.Hash, hash),
    arg(Type.Bool, toggle)
  )
end

-- void USE_FOOTSTEP_SCRIPT_SWEETENERS(Ped ped, BOOL p1, Hash hash) // 0xBF4DC1784BE94DFA
function AUDIO.USE_FOOTSTEP_SCRIPT_SWEETENERS(ped, p1, hash)
  native.invoke(
    Type.Void, 294, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, p1),
    arg(Type.Hash, hash)
  )
end

-- void OVERRIDE_MICROPHONE_SETTINGS(Hash hash, BOOL toggle) // 0x75773E11BA459E90
--[[
Sets audio flag "OverrideMicrophoneSettings"
--]]
function AUDIO.OVERRIDE_MICROPHONE_SETTINGS(hash, toggle)
  native.invoke(
    Type.Void, 295, false,
    arg(Type.Hash, hash),
    arg(Type.Bool, toggle)
  )
end

-- void FREEZE_MICROPHONE() // 0xD57AAAE0E2214D11
function AUDIO.FREEZE_MICROPHONE()
  native.invoke(
    Type.Void, 296, false
  )
end

-- void DISTANT_COP_CAR_SIRENS(BOOL value) // 0x552369F549563AD5
--[[
If value is set to true, and ambient siren sound will be played.
Appears to enable/disable an audio flag.
--]]
function AUDIO.DISTANT_COP_CAR_SIRENS(value)
  native.invoke(
    Type.Void, 297, false,
    arg(Type.Bool, value)
  )
end

-- void SET_SIREN_CAN_BE_CONTROLLED_BY_AUDIO(Vehicle vehicle, BOOL p1) // 0x43FA0DFC5DF87815
function AUDIO.SET_SIREN_CAN_BE_CONTROLLED_BY_AUDIO(vehicle, p1)
  native.invoke(
    Type.Void, 298, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Bool, p1)
  )
end

-- void ENABLE_STUNT_JUMP_AUDIO() // 0xB81CF134AEB56FFB
function AUDIO.ENABLE_STUNT_JUMP_AUDIO()
  native.invoke(
    Type.Void, 299, false
  )
end

-- void SET_AUDIO_FLAG(const char* flagName, BOOL toggle) // 0xB9EFD5C25018725A
--[[
Possible flag names:
"ActivateSwitchWheelAudio"
"AllowAmbientSpeechInSlowMo"
"AllowCutsceneOverScreenFade"
"AllowForceRadioAfterRetune"
"AllowPainAndAmbientSpeechToPlayDuringCutscene"
"AllowPlayerAIOnMission"
"AllowPoliceScannerWhenPlayerHasNoControl"
"AllowRadioDuringSwitch"
"AllowRadioOverScreenFade"
"AllowScoreAndRadio"
"AllowScriptedSpeechInSlowMo"
"AvoidMissionCompleteDelay"
"DisableAbortConversationForDeathAndInjury"
"DisableAbortConversationForRagdoll"
"DisableBarks"
"DisableFlightMusic"
"DisableReplayScriptStreamRecording"
"EnableHeadsetBeep"
"ForceConversationInterrupt"
"ForceSeamlessRadioSwitch"
"ForceSniperAudio"
"FrontendRadioDisabled"
"HoldMissionCompleteWhenPrepared"
"IsDirectorModeActive"
"IsPlayerOnMissionForSpeech"
"ListenerReverbDisabled"
"LoadMPData"
"MobileRadioInGame"
"OnlyAllowScriptTriggerPoliceScanner"
"PlayMenuMusic"
"PoliceScannerDisabled"
"ScriptedConvListenerMaySpeak"
"SpeechDucksScore"
"SuppressPlayerScubaBreathing"
"WantedMusicDisabled"
"WantedMusicOnMission"

-------------------------------
No added flag names between b393d and b573d, including b573d.

#######################################################################

"IsDirectorModeActive" is an audio flag which will allow you to play speech infinitely without any pauses like in Director Mode.

-----------------------------------------------------------------------

All flag IDs and hashes:

ID: 00 | Hash: 0x0FED7A7F
ID: 01 | Hash: 0x20A7858F
ID: 02 | Hash: 0xA11C2259
ID: 03 | Hash: 0x08DE4700
ID: 04 | Hash: 0x989F652F
ID: 05 | Hash: 0x3C9E76BA
ID: 06 | Hash: 0xA805FEB0
ID: 07 | Hash: 0x4B94EA26
ID: 08 | Hash: 0x803ACD34
ID: 09 | Hash: 0x7C741226
ID: 10 | Hash: 0x31DB9EBD
ID: 11 | Hash: 0xDF386F18
ID: 12 | Hash: 0x669CED42
ID: 13 | Hash: 0x51F22743
ID: 14 | Hash: 0x2052B35C
ID: 15 | Hash: 0x071472DC
ID: 16 | Hash: 0xF9928BCC
ID: 17 | Hash: 0x7ADBDD48
ID: 18 | Hash: 0xA959BA1A
ID: 19 | Hash: 0xBBE89B60
ID: 20 | Hash: 0x87A08871
ID: 21 | Hash: 0xED1057CE
ID: 22 | Hash: 0x1584AD7A
ID: 23 | Hash: 0x8582CFCB
ID: 24 | Hash: 0x7E5E2FB0
ID: 25 | Hash: 0xAE4F72DB
ID: 26 | Hash: 0x5D16D1FA
ID: 27 | Hash: 0x06B2F4B8
ID: 28 | Hash: 0x5D4CDC96
ID: 29 | Hash: 0x8B5A48BA
ID: 30 | Hash: 0x98FBD539
ID: 31 | Hash: 0xD8CB0473
ID: 32 | Hash: 0x5CBB4874
ID: 33 | Hash: 0x2E9F93A9
ID: 34 | Hash: 0xD93BEA86
ID: 35 | Hash: 0x92109B7D
ID: 36 | Hash: 0xB7EC9E4D
ID: 37 | Hash: 0xCABDBB1D
ID: 38 | Hash: 0xB3FD4A52
ID: 39 | Hash: 0x370D94E5
ID: 40 | Hash: 0xA0F7938F
ID: 41 | Hash: 0xCBE1CE81
ID: 42 | Hash: 0xC27F1271
ID: 43 | Hash: 0x9E3258EB
ID: 44 | Hash: 0x551CDA5B
ID: 45 | Hash: 0xCB6D663C
ID: 46 | Hash: 0x7DACE87F
ID: 47 | Hash: 0xF9DE416F
ID: 48 | Hash: 0x882E6E9E
ID: 49 | Hash: 0x16B447E7
ID: 50 | Hash: 0xBD867739
ID: 51 | Hash: 0xA3A58604
ID: 52 | Hash: 0x7E046BBC
ID: 53 | Hash: 0xD95FDB98
ID: 54 | Hash: 0x5842C0ED
ID: 55 | Hash: 0x285FECC6
ID: 56 | Hash: 0x9351AC43
ID: 57 | Hash: 0x50032E75
ID: 58 | Hash: 0xAE6D0D59
ID: 59 | Hash: 0xD6351785
ID: 60 | Hash: 0xD25D71BC
ID: 61 | Hash: 0x1F7F6423
ID: 62 | Hash: 0xE24C3AA6
ID: 63 | Hash: 0xBFFDD2B7
--]]
function AUDIO.SET_AUDIO_FLAG(flagName, toggle)
  native.invoke(
    Type.Void, 300, false,
    arg(Type.String, flagName),
    arg(Type.Bool, toggle)
  )
end

-- BOOL PREPARE_SYNCHRONIZED_AUDIO_EVENT(const char* audioEvent, Any p1) // 0xC7ABCACA4985A766
--[[
p1 is always 0 in the scripts
--]]
function AUDIO.PREPARE_SYNCHRONIZED_AUDIO_EVENT(audioEvent, p1)
  return native.invoke(
    Type.Bool, 301, false,
    arg(Type.String, audioEvent),
    arg(Type.Any, p1)
  )
end

-- BOOL PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE(int sceneID, const char* audioEvent) // 0x029FE7CD1B7E2E75
function AUDIO.PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE(sceneID, audioEvent)
  return native.invoke(
    Type.Bool, 302, false,
    arg(Type.Int, sceneID),
    arg(Type.String, audioEvent)
  )
end

-- BOOL PLAY_SYNCHRONIZED_AUDIO_EVENT(int sceneID) // 0x8B2FD4560E55DD2D
function AUDIO.PLAY_SYNCHRONIZED_AUDIO_EVENT(sceneID)
  return native.invoke(
    Type.Bool, 303, false,
    arg(Type.Int, sceneID)
  )
end

-- BOOL STOP_SYNCHRONIZED_AUDIO_EVENT(int sceneID) // 0x92D6A88E64A94430
function AUDIO.STOP_SYNCHRONIZED_AUDIO_EVENT(sceneID)
  return native.invoke(
    Type.Bool, 304, false,
    arg(Type.Int, sceneID)
  )
end

-- void INIT_SYNCH_SCENE_AUDIO_WITH_POSITION(const char* audioEvent, float x, float y, float z) // 0xC8EDE9BDBCCBA6D4
function AUDIO.INIT_SYNCH_SCENE_AUDIO_WITH_POSITION(audioEvent, x, y, z)
  native.invoke(
    Type.Void, 305, false,
    arg(Type.String, audioEvent),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void INIT_SYNCH_SCENE_AUDIO_WITH_ENTITY(const char* audioEvent, Entity entity) // 0x950A154B8DAB6185
function AUDIO.INIT_SYNCH_SCENE_AUDIO_WITH_ENTITY(audioEvent, entity)
  native.invoke(
    Type.Void, 306, false,
    arg(Type.String, audioEvent),
    arg(Type.Entity, entity)
  )
end

-- void SET_AUDIO_SPECIAL_EFFECT_MODE(int mode) // 0x12561FCBB62D5B9C
--[[
Needs to be called every frame.
Audio mode to apply this frame: https://alloc8or.re/gta5/doc/enums/audSpecialEffectMode.txt
--]]
function AUDIO.SET_AUDIO_SPECIAL_EFFECT_MODE(mode)
  native.invoke(
    Type.Void, 307, false,
    arg(Type.Int, mode)
  )
end

-- void SET_PORTAL_SETTINGS_OVERRIDE(const char* p0, const char* p1) // 0x044DBAD7A7FA2BE5
--[[
Found in the b617d scripts, duplicates removed:  

AUDIO::SET_PORTAL_SETTINGS_OVERRIDE("V_CARSHOWROOM_PS_WINDOW_UNBROKEN", "V_CARSHOWROOM_PS_WINDOW_BROKEN");

 AUDIO::SET_PORTAL_SETTINGS_OVERRIDE("V_CIA_PS_WINDOW_UNBROKEN", "V_CIA_PS_WINDOW_BROKEN");

 AUDIO::SET_PORTAL_SETTINGS_OVERRIDE("V_DLC_HEIST_APARTMENT_DOOR_CLOSED", "V_DLC_HEIST_APARTMENT_DOOR_OPEN");

 AUDIO::SET_PORTAL_SETTINGS_OVERRIDE("V_FINALEBANK_PS_VAULT_INTACT", "V_FINALEBANK_PS_VAULT_BLOWN");

 AUDIO::SET_PORTAL_SETTINGS_OVERRIDE("V_MICHAEL_PS_BATHROOM_WITH_WINDOW", "V_MICHAEL_PS_BATHROOM_WITHOUT_WINDOW");
--]]
function AUDIO.SET_PORTAL_SETTINGS_OVERRIDE(p0, p1)
  native.invoke(
    Type.Void, 308, false,
    arg(Type.String, p0),
    arg(Type.String, p1)
  )
end

-- void REMOVE_PORTAL_SETTINGS_OVERRIDE(const char* p0) // 0xB4BBFD9CD8B3922B
--[[
 Found in the b617d scripts, duplicates removed: 

 AUDIO::REMOVE_PORTAL_SETTINGS_OVERRIDE("V_CARSHOWROOM_PS_WINDOW_UNBROKEN");
 AUDIO::REMOVE_PORTAL_SETTINGS_OVERRIDE("V_CIA_PS_WINDOW_UNBROKEN");
 AUDIO::REMOVE_PORTAL_SETTINGS_OVERRIDE("V_DLC_HEIST_APARTMENT_DOOR_CLOSED");
 AUDIO::REMOVE_PORTAL_SETTINGS_OVERRIDE("V_FINALEBANK_PS_VAULT_INTACT");
 AUDIO::REMOVE_PORTAL_SETTINGS_OVERRIDE("V_MICHAEL_PS_BATHROOM_WITH_WINDOW");
--]]
function AUDIO.REMOVE_PORTAL_SETTINGS_OVERRIDE(p0)
  native.invoke(
    Type.Void, 309, false,
    arg(Type.String, p0)
  )
end

-- void STOP_SMOKE_GRENADE_EXPLOSION_SOUNDS() // 0xE4E6DD5566D28C82
--[[
STOP_S[MOKE_GRENADE_EXPLOSION_SOUNDS]?
--]]
function AUDIO.STOP_SMOKE_GRENADE_EXPLOSION_SOUNDS()
  native.invoke(
    Type.Void, 310, false
  )
end

-- int GET_MUSIC_VOL_SLIDER() // 0x3A48AB4445D499BE
function AUDIO.GET_MUSIC_VOL_SLIDER()
  return native.invoke(
    Type.Int, 311, false
  )
end

-- void REQUEST_TENNIS_BANKS(Ped ped) // 0x4ADA3F19BE4A6047
function AUDIO.REQUEST_TENNIS_BANKS(ped)
  native.invoke(
    Type.Void, 312, false,
    arg(Type.Ped, ped)
  )
end

-- void UNREQUEST_TENNIS_BANKS() // 0x0150B6FF25A9E2E5
function AUDIO.UNREQUEST_TENNIS_BANKS()
  native.invoke(
    Type.Void, 313, false
  )
end

-- void SET_SKIP_MINIGUN_SPIN_UP_AUDIO(BOOL p0) // 0xBEF34B1D9624D5DD
function AUDIO.SET_SKIP_MINIGUN_SPIN_UP_AUDIO(p0)
  native.invoke(
    Type.Void, 314, false,
    arg(Type.Bool, p0)
  )
end

-- void STOP_CUTSCENE_AUDIO() // 0x806058BBDC136E06
function AUDIO.STOP_CUTSCENE_AUDIO()
  native.invoke(
    Type.Void, 315, false
  )
end

-- BOOL HAS_LOADED_MP_DATA_SET() // 0x544810ED9DB6BBE6
function AUDIO.HAS_LOADED_MP_DATA_SET()
  return native.invoke(
    Type.Bool, 316, false
  )
end

-- BOOL HAS_LOADED_SP_DATA_SET() // 0x5B50ABB1FE3746F4
function AUDIO.HAS_LOADED_SP_DATA_SET()
  return native.invoke(
    Type.Bool, 317, false
  )
end

-- int GET_VEHICLE_HORN_SOUND_INDEX(Vehicle vehicle) // 0xD53F3A29BCE2580E
function AUDIO.GET_VEHICLE_HORN_SOUND_INDEX(vehicle)
  return native.invoke(
    Type.Int, 318, false,
    arg(Type.Vehicle, vehicle)
  )
end

-- void SET_VEHICLE_HORN_SOUND_INDEX(Vehicle vehicle, int value) // 0x0350E7E17BA767D0
function AUDIO.SET_VEHICLE_HORN_SOUND_INDEX(vehicle, value)
  native.invoke(
    Type.Void, 319, false,
    arg(Type.Vehicle, vehicle),
    arg(Type.Int, value)
  )
end


