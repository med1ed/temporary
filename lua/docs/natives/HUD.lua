HUD = {}

-- void BEGIN_TEXT_COMMAND_BUSYSPINNER_ON(const char* string) // 0xABA17D7CE615ADBF
--[[
Initializes the text entry for the the text next to a loading prompt. All natives for building UI texts can be used here


e.g
void StartLoadingMessage(char *text, int spinnerType = 3)
  {
     BEGIN_TEXT_COMMAND_BUSYSPINNER_ON("STRING");
       ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
       END_TEXT_COMMAND_BUSYSPINNER_ON(spinnerType);
    }
/*OR*/
 void ShowLoadingMessage(char *text, int spinnerType = 3, int timeMs = 10000)
  {
     BEGIN_TEXT_COMMAND_BUSYSPINNER_ON("STRING");
       ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
       END_TEXT_COMMAND_BUSYSPINNER_ON(spinnerType);
        WAIT(timeMs);
     BUSYSPINNER_OFF();
 }


These are some localized strings used in the loading spinner.
"PM_WAIT"                   = Please Wait
"CELEB_WPLYRS"              = Waiting For Players.
"CELL_SPINNER2"             = Scanning storage.
"ERROR_CHECKYACHTNAME" = Registering your yacht's name. Please wait.
"ERROR_CHECKPROFANITY"   = Checking your text for profanity. Please wait.
"FM_COR_AUTOD"                        = Just spinner no text
"FM_IHELP_WAT2"                        = Waiting for other players
"FM_JIP_WAITO"                            = Game options are being set
"FMMC_DOWNLOAD"                    = Downloading
"FMMC_PLYLOAD"                         = Loading
"FMMC_STARTTRAN"                    = Launching session
"HUD_QUITTING"                           =  Quiting session
"KILL_STRIP_IDM"                         = Waiting for to accept
"MP_SPINLOADING"                      = Loading
--]]
function HUD.BEGIN_TEXT_COMMAND_BUSYSPINNER_ON(string)
  native.invoke(
    Type.Void, 1394, false,
    arg(Type.String, string)
  )
end

-- void END_TEXT_COMMAND_BUSYSPINNER_ON(int busySpinnerType) // 0xBD12F8228410D9B4
--[[
enum eBusySpinnerType
{
	BUSY_SPINNER_LEFT,
	BUSY_SPINNER_LEFT_2,
	BUSY_SPINNER_LEFT_3,
	BUSY_SPINNER_SAVE,
	BUSY_SPINNER_RIGHT,
};
--]]
function HUD.END_TEXT_COMMAND_BUSYSPINNER_ON(busySpinnerType)
  native.invoke(
    Type.Void, 1395, false,
    arg(Type.Int, busySpinnerType)
  )
end

-- void BUSYSPINNER_OFF() // 0x10D373323E5B9C0D
--[[
Removes the loading prompt at the bottom right of the screen.
--]]
function HUD.BUSYSPINNER_OFF()
  native.invoke(
    Type.Void, 1396, false
  )
end

-- void PRELOAD_BUSYSPINNER() // 0xC65AB383CD91DF98
function HUD.PRELOAD_BUSYSPINNER()
  native.invoke(
    Type.Void, 1397, false
  )
end

-- BOOL BUSYSPINNER_IS_ON() // 0xD422FCC5F239A915
function HUD.BUSYSPINNER_IS_ON()
  return native.invoke(
    Type.Bool, 1398, false
  )
end

-- BOOL BUSYSPINNER_IS_DISPLAYING() // 0xB2A592B04648A9CB
function HUD.BUSYSPINNER_IS_DISPLAYING()
  return native.invoke(
    Type.Bool, 1399, false
  )
end

-- void DISABLE_PAUSEMENU_SPINNER(BOOL p0) // 0x9245E81072704B8A
function HUD.DISABLE_PAUSEMENU_SPINNER(p0)
  native.invoke(
    Type.Void, 1400, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_MOUSE_CURSOR_THIS_FRAME() // 0xAAE7CE1D63167423
--[[
Shows the cursor on screen for one frame.
--]]
function HUD.SET_MOUSE_CURSOR_THIS_FRAME()
  native.invoke(
    Type.Void, 1401, false
  )
end

-- void SET_MOUSE_CURSOR_STYLE(int spriteId) // 0x8DB8CFFD58B62552
--[[
Changes the mouse cursor's sprite. 
1 = Normal
6 = Left Arrow
7 = Right Arrow
--]]
function HUD.SET_MOUSE_CURSOR_STYLE(spriteId)
  native.invoke(
    Type.Void, 1402, false,
    arg(Type.Int, spriteId)
  )
end

-- void SET_MOUSE_CURSOR_VISIBLE(BOOL toggle) // 0x98215325A695E78A
--[[
Shows/hides the frontend cursor on the pause menu or similar menus.
Clicking off and then on the game window will show it again.
--]]
function HUD.SET_MOUSE_CURSOR_VISIBLE(toggle)
  native.invoke(
    Type.Void, 1403, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_MOUSE_ROLLED_OVER_INSTRUCTIONAL_BUTTONS() // 0x3D9ACB1EB139E702
--[[
Returns TRUE if mouse is hovering above instructional buttons. Works with all buttons gfx, such as popup_warning, pause_menu_instructional_buttons, instructional_buttons, etc. Note: You have to call TOGGLE_MOUSE_BUTTONS on the scaleform if you want this native to work.
--]]
function HUD.IS_MOUSE_ROLLED_OVER_INSTRUCTIONAL_BUTTONS()
  return native.invoke(
    Type.Bool, 1404, false
  )
end

-- BOOL GET_MOUSE_EVENT(int scaleformHandle, Any* p1, Any* p2, Any* p3) // 0x632B2940C67F4EA9
function HUD.GET_MOUSE_EVENT(scaleformHandle, p1, p2, p3)
  return native.invoke(
    Type.Bool, 1405, false,
    arg(Type.Int, scaleformHandle),
    ref(Type.Any, p1),
    ref(Type.Any, p2),
    ref(Type.Any, p3)
  )
end

-- void THEFEED_ONLY_SHOW_TOOLTIPS(BOOL toggle) // 0x6F1554B0CC2089FA
function HUD.THEFEED_ONLY_SHOW_TOOLTIPS(toggle)
  native.invoke(
    Type.Void, 1406, false,
    arg(Type.Bool, toggle)
  )
end

-- void THEFEED_SET_SCRIPTED_MENU_HEIGHT(float pos) // 0x55598D21339CB998
function HUD.THEFEED_SET_SCRIPTED_MENU_HEIGHT(pos)
  native.invoke(
    Type.Void, 1407, false,
    arg(Type.Float, pos)
  )
end

-- void THEFEED_HIDE() // 0x32888337579A5970
--[[
Stops loading screen tips shown by invoking `THEFEED_SHOW`
--]]
function HUD.THEFEED_HIDE()
  native.invoke(
    Type.Void, 1408, false
  )
end

-- void THEFEED_HIDE_THIS_FRAME() // 0x25F87B30C382FCA7
--[[
Once called each frame hides all above radar notifications.
--]]
function HUD.THEFEED_HIDE_THIS_FRAME()
  native.invoke(
    Type.Void, 1409, false
  )
end

-- void THEFEED_SHOW() // 0x15CFA549788D35EF
--[[
Displays loading screen tips, requires `THEFEED_AUTO_POST_GAMETIPS_ON` to be called beforehand.
--]]
function HUD.THEFEED_SHOW()
  native.invoke(
    Type.Void, 1410, false
  )
end

-- void THEFEED_FLUSH_QUEUE() // 0xA8FDB297A8D25FBA
function HUD.THEFEED_FLUSH_QUEUE()
  native.invoke(
    Type.Void, 1411, false
  )
end

-- void THEFEED_REMOVE_ITEM(int notificationId) // 0xBE4390CB40B3E627
--[[
Removes a notification instantly instead of waiting for it to disappear
--]]
function HUD.THEFEED_REMOVE_ITEM(notificationId)
  native.invoke(
    Type.Void, 1412, false,
    arg(Type.Int, notificationId)
  )
end

-- void THEFEED_FORCE_RENDER_ON() // 0xA13C11E1B5C06BFC
function HUD.THEFEED_FORCE_RENDER_ON()
  native.invoke(
    Type.Void, 1413, false
  )
end

-- void THEFEED_FORCE_RENDER_OFF() // 0x583049884A2EEE3C
--[[
Enables loading screen tips to be be shown (`THEFEED_SHOW`), blocks other kinds of notifications from being displayed (at least from current script). Call `0xADED7F5748ACAFE6` to display those again.
--]]
function HUD.THEFEED_FORCE_RENDER_OFF()
  native.invoke(
    Type.Void, 1414, false
  )
end

-- void THEFEED_PAUSE() // 0xFDB423997FA30340
function HUD.THEFEED_PAUSE()
  native.invoke(
    Type.Void, 1415, false
  )
end

-- void THEFEED_RESUME() // 0xE1CD1E48E025E661
function HUD.THEFEED_RESUME()
  native.invoke(
    Type.Void, 1416, false
  )
end

-- BOOL THEFEED_IS_PAUSED() // 0xA9CBFD40B3FA3010
function HUD.THEFEED_IS_PAUSED()
  return native.invoke(
    Type.Bool, 1417, false
  )
end

-- void THEFEED_REPORT_LOGO_ON() // 0xD4438C0564490E63
function HUD.THEFEED_REPORT_LOGO_ON()
  native.invoke(
    Type.Void, 1418, false
  )
end

-- void THEFEED_REPORT_LOGO_OFF() // 0xB695E2CD0A2DA9EE
function HUD.THEFEED_REPORT_LOGO_OFF()
  native.invoke(
    Type.Void, 1419, false
  )
end

-- int THEFEED_GET_LAST_SHOWN_PHONE_ACTIVATABLE_FEED_ID() // 0x82352748437638CA
--[[
Returns the handle for the notification currently displayed on the screen. Name may be a hash collision, but describes the function accurately.
--]]
function HUD.THEFEED_GET_LAST_SHOWN_PHONE_ACTIVATABLE_FEED_ID()
  return native.invoke(
    Type.Int, 1420, false
  )
end

-- void THEFEED_AUTO_POST_GAMETIPS_ON() // 0x56C8B608CFD49854
--[[
Enables loading screen tips to be be shown (`THEFEED_SHOW`), blocks other kinds of notifications from being displayed (at least from current script). Call `THEFEED_AUTO_POST_GAMETIPS_OFF` to display those again.
--]]
function HUD.THEFEED_AUTO_POST_GAMETIPS_ON()
  native.invoke(
    Type.Void, 1421, false
  )
end

-- void THEFEED_AUTO_POST_GAMETIPS_OFF() // 0xADED7F5748ACAFE6
--[[
Displays "normal" notifications again after calling `THEFEED_AUTO_POST_GAMETIPS_ON` (those that were drawn before calling this native too), though those will have a weird offset and stay on screen forever (tested with notifications created from same script).
--]]
function HUD.THEFEED_AUTO_POST_GAMETIPS_OFF()
  native.invoke(
    Type.Void, 1422, false
  )
end

-- void THEFEED_SET_BACKGROUND_COLOR_FOR_NEXT_POST(int hudColorIndex) // 0x92F0DA1E27DB96DC
--[[
From the decompiled scripts:
HUD::THEFEED_SET_BACKGROUND_COLOR_FOR_NEXT_POST(6);
HUD::THEFEED_SET_BACKGROUND_COLOR_FOR_NEXT_POST(184);
HUD::THEFEED_SET_BACKGROUND_COLOR_FOR_NEXT_POST(190);

sets background color for the next notification
6 = red
184 = green
190 = yellow

Here is a list of some colors that can be used: https://gyazo.com/68bd384455fceb0a85a8729e48216e15
--]]
function HUD.THEFEED_SET_BACKGROUND_COLOR_FOR_NEXT_POST(hudColorIndex)
  native.invoke(
    Type.Void, 1423, false,
    arg(Type.Int, hudColorIndex)
  )
end

-- void THEFEED_SET_RGBA_PARAMETER_FOR_NEXT_MESSAGE(int red, int green, int blue, int alpha) // 0x17430B918701C342
function HUD.THEFEED_SET_RGBA_PARAMETER_FOR_NEXT_MESSAGE(red, green, blue, alpha)
  native.invoke(
    Type.Void, 1424, false,
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void THEFEED_SET_FLASH_DURATION_PARAMETER_FOR_NEXT_MESSAGE(int count) // 0x17AD8C9706BDD88A
--[[
Related to notification color flashing, setting count to 0 invalidates a `THEFEED_SET_RGBA_PARAMETER_FOR_NEXT_MESSAGE` call for the target notification.
--]]
function HUD.THEFEED_SET_FLASH_DURATION_PARAMETER_FOR_NEXT_MESSAGE(count)
  native.invoke(
    Type.Void, 1425, false,
    arg(Type.Int, count)
  )
end

-- void THEFEED_SET_VIBRATE_PARAMETER_FOR_NEXT_MESSAGE(BOOL toggle) // 0x4A0C7C9BB10ABB36
function HUD.THEFEED_SET_VIBRATE_PARAMETER_FOR_NEXT_MESSAGE(toggle)
  native.invoke(
    Type.Void, 1426, false,
    arg(Type.Bool, toggle)
  )
end

-- void THEFEED_RESET_ALL_PARAMETERS() // 0xFDD85225B2DEA55E
function HUD.THEFEED_RESET_ALL_PARAMETERS()
  native.invoke(
    Type.Void, 1427, false
  )
end

-- void THEFEED_FREEZE_NEXT_POST() // 0xFDEC055AB549E328
--[[
Requires manual management of game stream handles (i.e., 0xBE4390CB40B3E627).
--]]
function HUD.THEFEED_FREEZE_NEXT_POST()
  native.invoke(
    Type.Void, 1428, false
  )
end

-- void THEFEED_CLEAR_FROZEN_POST() // 0x80FE4F3AB4E1B62A
function HUD.THEFEED_CLEAR_FROZEN_POST()
  native.invoke(
    Type.Void, 1429, false
  )
end

-- void THEFEED_SET_SNAP_FEED_ITEM_POSITIONS(BOOL p0) // 0xBAE4F9B97CD43B30
function HUD.THEFEED_SET_SNAP_FEED_ITEM_POSITIONS(p0)
  native.invoke(
    Type.Void, 1430, false,
    arg(Type.Bool, p0)
  )
end

-- void THEFEED_UPDATE_ITEM_TEXTURE(const char* txdString1, const char* txnString1, const char* txdString2, const char* txnString2) // 0x317EBA71D7543F52
--[[
Used in the native scripts to reference "GET_PEDHEADSHOT_TXD_STRING" and "CHAR_DEFAULT".
--]]
function HUD.THEFEED_UPDATE_ITEM_TEXTURE(txdString1, txnString1, txdString2, txnString2)
  native.invoke(
    Type.Void, 1431, false,
    arg(Type.String, txdString1),
    arg(Type.String, txnString1),
    arg(Type.String, txdString2),
    arg(Type.String, txnString2)
  )
end

-- void BEGIN_TEXT_COMMAND_THEFEED_POST(const char* text) // 0x202709F4C58A0424
--[[
Declares the entry type of a notification, for example "STRING".

int ShowNotification(char *text)
{
	BEGIN_TEXT_COMMAND_THEFEED_POST("STRING");
	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
	return END_TEXT_COMMAND_THEFEED_POST_TICKER(1, 1);
}
--]]
function HUD.BEGIN_TEXT_COMMAND_THEFEED_POST(text)
  native.invoke(
    Type.Void, 1432, false,
    arg(Type.String, text)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_STATS(const char* statTitle, int iconEnum, BOOL stepVal, int barValue, BOOL isImportant, const char* pictureTextureDict, const char* pictureTextureName) // 0x2B7E9A4EAAA93C89
--[[
List of picture names: https://pastebin.com/XdpJVbHz
Example result: https://i.imgur.com/SdEZ22m.png
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_STATS(statTitle, iconEnum, stepVal, barValue, isImportant, pictureTextureDict, pictureTextureName)
  return native.invoke(
    Type.Int, 1433, false,
    arg(Type.String, statTitle),
    arg(Type.Int, iconEnum),
    arg(Type.Bool, stepVal),
    arg(Type.Int, barValue),
    arg(Type.Bool, isImportant),
    arg(Type.String, pictureTextureDict),
    arg(Type.String, pictureTextureName)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT(const char* txdName, const char* textureName, BOOL flash, int iconType, const char* sender, const char* subject) // 0x1CCD9A37359072CF
--[[
This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.

List of picNames: https://pastebin.com/XdpJVbHz


flash is a bool for fading in.
iconTypes:
1 : Chat Box
2 : Email
3 : Add Friend Request
4 : Nothing
5 : Nothing
6 : Nothing
7 : Right Jumping Arrow
8 : RP Icon
9 : $ Icon

"sender" is the very top header. This can be any old string.
"subject" is the header under the sender.
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT(txdName, textureName, flash, iconType, sender, subject)
  return native.invoke(
    Type.Int, 1434, false,
    arg(Type.String, txdName),
    arg(Type.String, textureName),
    arg(Type.Bool, flash),
    arg(Type.Int, iconType),
    arg(Type.String, sender),
    arg(Type.String, subject)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_SUBTITLE_LABEL(const char* txdName, const char* textureName, BOOL flash, int iconType, const char* sender, const char* subject) // 0xC6F580E4C94926AC
--[[
This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.

Needs more research.

Only one type of usage in the scripts:

HUD::END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_SUBTITLE_LABEL("CHAR_ACTING_UP", "CHAR_ACTING_UP", 0, 0, "DI_FEED_CHAR", a_0);
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_SUBTITLE_LABEL(txdName, textureName, flash, iconType, sender, subject)
  return native.invoke(
    Type.Int, 1435, false,
    arg(Type.String, txdName),
    arg(Type.String, textureName),
    arg(Type.Bool, flash),
    arg(Type.Int, iconType),
    arg(Type.String, sender),
    arg(Type.String, subject)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU(const char* txdName, const char* textureName, BOOL flash, int iconType, const char* sender, const char* subject, float duration) // 0x1E6611149DB3DB6B
--[[
This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.

NOTE: 'duration' is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.

Example, only occurrence in the scripts:
v_8 = HUD::END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 0, 0, &v_9, "", a_5);
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_TU(txdName, textureName, flash, iconType, sender, subject, duration)
  return native.invoke(
    Type.Int, 1436, false,
    arg(Type.String, txdName),
    arg(Type.String, textureName),
    arg(Type.Bool, flash),
    arg(Type.Int, iconType),
    arg(Type.String, sender),
    arg(Type.String, subject),
    arg(Type.Float, duration)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG(const char* txdName, const char* textureName, BOOL flash, int iconType, const char* sender, const char* subject, float duration, const char* clanTag) // 0x5CBF7BADE20DB93E
--[[
This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.

List of picNames https://pastebin.com/XdpJVbHz

flash is a bool for fading in.
iconTypes:
1 : Chat Box
2 : Email
3 : Add Friend Request
4 : Nothing
5 : Nothing
6 : Nothing
7 : Right Jumping Arrow
8 : RP Icon
9 : $ Icon

"sender" is the very top header. This can be any old string.
"subject" is the header under the sender.
"duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.
"clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG(txdName, textureName, flash, iconType, sender, subject, duration, clanTag)
  return native.invoke(
    Type.Int, 1437, false,
    arg(Type.String, txdName),
    arg(Type.String, textureName),
    arg(Type.Bool, flash),
    arg(Type.Int, iconType),
    arg(Type.String, sender),
    arg(Type.String, subject),
    arg(Type.Float, duration),
    arg(Type.String, clanTag)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG_AND_ADDITIONAL_ICON(const char* txdName, const char* textureName, BOOL flash, int iconType1, const char* sender, const char* subject, float duration, const char* clanTag, int iconType2, int p9) // 0x531B84E7DA981FB6
--[[
This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.

List of picNames:  https://pastebin.com/XdpJVbHz

flash is a bool for fading in.
iconTypes:
1 : Chat Box
2 : Email
3 : Add Friend Request
4 : Nothing
5 : Nothing
6 : Nothing
7 : Right Jumping Arrow
8 : RP Icon
9 : $ Icon

"sender" is the very top header. This can be any old string.
"subject" is the header under the sender.
"duration" is a multiplier, so 1.0 is normal, 2.0 is twice as long (very slow), and 0.5 is half as long.
"clanTag" shows a crew tag in the "sender" header, after the text. You need to use 3 underscores as padding. Maximum length of this field seems to be 7. (e.g. "MK" becomes "___MK", "ACE" becomes "___ACE", etc.)
iconType2 is a mirror of iconType. It shows in the "subject" line, right under the original iconType.


int IconNotification(char *text, char *text2, char *Subject)
{
    BEGIN_TEXT_COMMAND_THEFEED_POST("STRING");
 ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
   _SET_NOTIFICATION_MESSAGE_CLAN_TAG_2("CHAR_SOCIAL_CLUB", "CHAR_SOCIAL_CLUB", 1, 7, text2, Subject, 1.0f, "__EXAMPLE", 7);
   return END_TEXT_COMMAND_THEFEED_POST_TICKER(1, 1);
}
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_MESSAGETEXT_WITH_CREW_TAG_AND_ADDITIONAL_ICON(txdName, textureName, flash, iconType1, sender, subject, duration, clanTag, iconType2, p9)
  return native.invoke(
    Type.Int, 1438, false,
    arg(Type.String, txdName),
    arg(Type.String, textureName),
    arg(Type.Bool, flash),
    arg(Type.Int, iconType1),
    arg(Type.String, sender),
    arg(Type.String, subject),
    arg(Type.Float, duration),
    arg(Type.String, clanTag),
    arg(Type.Int, iconType2),
    arg(Type.Int, p9)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_TICKER(BOOL blink, BOOL p1) // 0x2ED7843F8F801023
function HUD.END_TEXT_COMMAND_THEFEED_POST_TICKER(blink, p1)
  return native.invoke(
    Type.Int, 1439, false,
    arg(Type.Bool, blink),
    arg(Type.Bool, p1)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_TICKER_FORCED(BOOL blink, BOOL p1) // 0x44FA03975424A0EE
function HUD.END_TEXT_COMMAND_THEFEED_POST_TICKER_FORCED(blink, p1)
  return native.invoke(
    Type.Int, 1440, false,
    arg(Type.Bool, blink),
    arg(Type.Bool, p1)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_TICKER_WITH_TOKENS(BOOL blink, BOOL p1) // 0x378E809BF61EC840
function HUD.END_TEXT_COMMAND_THEFEED_POST_TICKER_WITH_TOKENS(blink, p1)
  return native.invoke(
    Type.Int, 1441, false,
    arg(Type.Bool, blink),
    arg(Type.Bool, p1)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_AWARD(const char* textureDict, const char* textureName, int rpBonus, int colorOverlay, const char* titleLabel) // 0xAA295B6F28BD587D
--[[
Shows an "award" notification above the minimap, example: https://i.imgur.com/e2DNaKX.png
Example:

HUD::BEGIN_TEXT_COMMAND_THEFEED_POST("HUNT");
HUD::END_TEXT_COMMAND_THEFEED_POST_AWARD("Hunting", "Hunting_Gold_128", 0, 109, "HUD_MED_UNLKED");
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_AWARD(textureDict, textureName, rpBonus, colorOverlay, titleLabel)
  return native.invoke(
    Type.Int, 1442, false,
    arg(Type.String, textureDict),
    arg(Type.String, textureName),
    arg(Type.Int, rpBonus),
    arg(Type.Int, colorOverlay),
    arg(Type.String, titleLabel)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_CREWTAG(BOOL p0, BOOL p1, int* p2, int p3, BOOL isLeader, BOOL unk0, int clanDesc, int R, int G, int B) // 0x97C9E4E7024A8F2C
function HUD.END_TEXT_COMMAND_THEFEED_POST_CREWTAG(p0, p1, p2, p3, isLeader, unk0, clanDesc, R, G, B)
  return native.invoke(
    Type.Int, 1443, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1),
    ref(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Bool, isLeader),
    arg(Type.Bool, unk0),
    arg(Type.Int, clanDesc),
    arg(Type.Int, R),
    arg(Type.Int, G),
    arg(Type.Int, B)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_CREWTAG_WITH_GAME_NAME(BOOL p0, BOOL p1, int* p2, int p3, BOOL isLeader, BOOL unk0, int clanDesc, const char* playerName, int R, int G, int B) // 0x137BC35589E34E1E
function HUD.END_TEXT_COMMAND_THEFEED_POST_CREWTAG_WITH_GAME_NAME(p0, p1, p2, p3, isLeader, unk0, clanDesc, playerName, R, G, B)
  return native.invoke(
    Type.Int, 1444, false,
    arg(Type.Bool, p0),
    arg(Type.Bool, p1),
    ref(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Bool, isLeader),
    arg(Type.Bool, unk0),
    arg(Type.Int, clanDesc),
    arg(Type.String, playerName),
    arg(Type.Int, R),
    arg(Type.Int, G),
    arg(Type.Int, B)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_UNLOCK(const char* gxtLabel1, int p1, const char* gxtLabel2) // 0x33EE12743CCD6343
function HUD.END_TEXT_COMMAND_THEFEED_POST_UNLOCK(gxtLabel1, p1, gxtLabel2)
  return native.invoke(
    Type.Int, 1445, false,
    arg(Type.String, gxtLabel1),
    arg(Type.Int, p1),
    arg(Type.String, gxtLabel2)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU(const char* gxtLabel1, int p1, const char* gxtLabel2, int p3) // 0xC8F3AAF93D0600BF
function HUD.END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU(gxtLabel1, p1, gxtLabel2, p3)
  return native.invoke(
    Type.Int, 1446, false,
    arg(Type.String, gxtLabel1),
    arg(Type.Int, p1),
    arg(Type.String, gxtLabel2),
    arg(Type.Int, p3)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU_WITH_COLOR(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5) // 0x7AE0589093A2E088
function HUD.END_TEXT_COMMAND_THEFEED_POST_UNLOCK_TU_WITH_COLOR(p0, p1, p2, p3, p4, p5)
  return native.invoke(
    Type.Int, 1447, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1),
    arg(Type.Any, p2),
    arg(Type.Any, p3),
    arg(Type.Any, p4),
    arg(Type.Any, p5)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_MPTICKER(BOOL blink, BOOL p1) // 0xF020C96915705B3A
function HUD.END_TEXT_COMMAND_THEFEED_POST_MPTICKER(blink, p1)
  return native.invoke(
    Type.Int, 1448, false,
    arg(Type.Bool, blink),
    arg(Type.Bool, p1)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_CREW_RANKUP_WITH_LITERAL_FLAG(const char* p0, const char* p1, const char* p2, BOOL p3, BOOL p4) // 0x8EFCCF6EC66D85E4
function HUD.END_TEXT_COMMAND_THEFEED_POST_CREW_RANKUP_WITH_LITERAL_FLAG(p0, p1, p2, p3, p4)
  return native.invoke(
    Type.Int, 1449, false,
    arg(Type.String, p0),
    arg(Type.String, p1),
    arg(Type.String, p2),
    arg(Type.Bool, p3),
    arg(Type.Bool, p4)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_VERSUS_TU(const char* txdName1, const char* textureName1, int count1, const char* txdName2, const char* textureName2, int count2, int hudColor1, int hudColor2) // 0xB6871B0555B02996
--[[
This function can show pictures of every texture that can be requested by REQUEST_STREAMED_TEXTURE_DICT.

List of picNames: https://pastebin.com/XdpJVbHz
HUD colors and their values: https://pastebin.com/d9aHPbXN

Shows a deathmatch score above the minimap, example: https://i.imgur.com/YmoMklG.png
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_VERSUS_TU(txdName1, textureName1, count1, txdName2, textureName2, count2, hudColor1, hudColor2)
  return native.invoke(
    Type.Int, 1450, false,
    arg(Type.String, txdName1),
    arg(Type.String, textureName1),
    arg(Type.Int, count1),
    arg(Type.String, txdName2),
    arg(Type.String, textureName2),
    arg(Type.Int, count2),
    arg(Type.Int, hudColor1),
    arg(Type.Int, hudColor2)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_REPLAY(int type, int image, const char* text) // 0xD202B92CBF1D816F
--[[
returns a notification handle, prints out a notification like below:
type range: 0 - 2
if you set type to 1, image goes from 0 - 39 - Xbox you can add text to

example: 
HUD::END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(1, 20, "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");
- https://imgur.com/lGBPCz3
--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_REPLAY(type, image, text)
  return native.invoke(
    Type.Int, 1451, false,
    arg(Type.Int, type),
    arg(Type.Int, image),
    arg(Type.String, text)
  )
end

-- int END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(int type, const char* button, const char* text) // 0xDD6CB2CCE7C2735C
--[[
returns a notification handle, prints out a notification like below:
type range: 0 - 2
if you set type to 1, button accepts "~INPUT_SOMETHING~"

example:
HUD::END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(1, "~INPUT_TALK~", "Who you trynna get crazy with, ese? Don't you know I'm LOCO?!");
- https://imgur.com/UPy0Ial


Examples from the scripts:
l_D1[1/*1*/]=HUD::END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");
l_D1[2/*1*/]=HUD::END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(1,"~INPUT_SAVE_REPLAY_CLIP~","");
l_D1[1/*1*/]=HUD::END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(1,"~INPUT_REPLAY_START_STOP_RECORDING~","");
l_D1[2/*1*/]=HUD::END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(1,"~INPUT_REPLAY_START_STOP_RECORDING_SECONDARY~","");

--]]
function HUD.END_TEXT_COMMAND_THEFEED_POST_REPLAY_INPUT(type, button, text)
  return native.invoke(
    Type.Int, 1452, false,
    arg(Type.Int, type),
    arg(Type.String, button),
    arg(Type.String, text)
  )
end

-- void BEGIN_TEXT_COMMAND_PRINT(const char* GxtEntry) // 0xB87A37EEB7FAA67D
--[[
void ShowSubtitle(const char *text)
{
  BEGIN_TEXT_COMMAND_PRINT("STRING");
 ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
   END_TEXT_COMMAND_PRINT(2000, true);
}
--]]
function HUD.BEGIN_TEXT_COMMAND_PRINT(GxtEntry)
  native.invoke(
    Type.Void, 1453, false,
    arg(Type.String, GxtEntry)
  )
end

-- void END_TEXT_COMMAND_PRINT(int duration, BOOL drawImmediately) // 0x9D77056A530643F6
--[[
Draws the subtitle at middle center of the screen.

int duration = time in milliseconds to show text on screen before disappearing

drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished

Used to be known as _DRAW_SUBTITLE_TIMED
--]]
function HUD.END_TEXT_COMMAND_PRINT(duration, drawImmediately)
  native.invoke(
    Type.Void, 1454, false,
    arg(Type.Int, duration),
    arg(Type.Bool, drawImmediately)
  )
end

-- void BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED(const char* text) // 0x853648FD1063A213
--[[
nothin doin. 

BOOL Message(const char* text)
   {
     BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED("STRING");
      ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
       return END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED();
   }
--]]
function HUD.BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED(text)
  native.invoke(
    Type.Void, 1455, false,
    arg(Type.String, text)
  )
end

-- BOOL END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED() // 0x8A9BA1AB3E237613
function HUD.END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED()
  return native.invoke(
    Type.Bool, 1456, false
  )
end

-- void BEGIN_TEXT_COMMAND_DISPLAY_TEXT(const char* text) // 0x25FBB336DF1804CB
--[[
The following were found in the decompiled script files:
STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3

ESDOLLA - cash
ESMINDOLLA - cash (negative)

Used to be known as _SET_TEXT_ENTRY
--]]
function HUD.BEGIN_TEXT_COMMAND_DISPLAY_TEXT(text)
  native.invoke(
    Type.Void, 1457, false,
    arg(Type.String, text)
  )
end

-- void END_TEXT_COMMAND_DISPLAY_TEXT(float x, float y, int p2) // 0xCD015E5BB0D96A57
--[[
After applying the properties to the text (See HUD::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.

Used to be known as _DRAW_TEXT
--]]
function HUD.END_TEXT_COMMAND_DISPLAY_TEXT(x, y, p2)
  native.invoke(
    Type.Void, 1458, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Int, p2)
  )
end

-- void BEGIN_TEXT_COMMAND_GET_SCREEN_WIDTH_OF_DISPLAY_TEXT(const char* text) // 0x54CE8AC98E120CAB
function HUD.BEGIN_TEXT_COMMAND_GET_SCREEN_WIDTH_OF_DISPLAY_TEXT(text)
  native.invoke(
    Type.Void, 1459, false,
    arg(Type.String, text)
  )
end

-- float END_TEXT_COMMAND_GET_SCREEN_WIDTH_OF_DISPLAY_TEXT(BOOL p0) // 0x85F061DA64ED2F67
function HUD.END_TEXT_COMMAND_GET_SCREEN_WIDTH_OF_DISPLAY_TEXT(p0)
  return native.invoke(
    Type.Float, 1460, false,
    arg(Type.Bool, p0)
  )
end

-- void BEGIN_TEXT_COMMAND_GET_NUMBER_OF_LINES_FOR_STRING(const char* entry) // 0x521FB041D93DD0E4
--[[
int GetLineCount(char *text, float x, float y)
    {
     BEGIN_TEXT_COMMAND_GET_NUMBER_OF_LINES_FOR_STRING("STRING");
                ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
      return BEGIN_TEXT_COMMAND_GET_NUMBER_OF_LINES_FOR_STRING(x, y);
    }
--]]
function HUD.BEGIN_TEXT_COMMAND_GET_NUMBER_OF_LINES_FOR_STRING(entry)
  native.invoke(
    Type.Void, 1461, false,
    arg(Type.String, entry)
  )
end

-- int END_TEXT_COMMAND_GET_NUMBER_OF_LINES_FOR_STRING(float x, float y) // 0x9040DFB09BE75706
--[[
Determines how many lines the text string will use when drawn on screen. 
Must use 0x521FB041D93DD0E4 for setting up
--]]
function HUD.END_TEXT_COMMAND_GET_NUMBER_OF_LINES_FOR_STRING(x, y)
  return native.invoke(
    Type.Int, 1462, false,
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- void BEGIN_TEXT_COMMAND_DISPLAY_HELP(const char* inputType) // 0x8509B634FBE7DA11
--[[
Used to be known as _SET_TEXT_COMPONENT_FORMAT
--]]
function HUD.BEGIN_TEXT_COMMAND_DISPLAY_HELP(inputType)
  native.invoke(
    Type.Void, 1463, false,
    arg(Type.String, inputType)
  )
end

-- void END_TEXT_COMMAND_DISPLAY_HELP(int p0, BOOL loop, BOOL beep, int shape) // 0x238FFE5C7B0498A6
--[[
shape goes from -1 to 50 (may be more).
p0 is always 0.

Example:
void FloatingHelpText(const char* text)
{
    BEGIN_TEXT_COMMAND_DISPLAY_HELP("STRING");
  ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);
   END_TEXT_COMMAND_DISPLAY_HELP (0, 0, 1, -1);
}

Image:
- imgbin.org/images/26209.jpg

more inputs/icons:
- https://pastebin.com/nqNYWMSB

Used to be known as _DISPLAY_HELP_TEXT_FROM_STRING_LABEL
--]]
function HUD.END_TEXT_COMMAND_DISPLAY_HELP(p0, loop, beep, shape)
  native.invoke(
    Type.Void, 1464, false,
    arg(Type.Int, p0),
    arg(Type.Bool, loop),
    arg(Type.Bool, beep),
    arg(Type.Int, shape)
  )
end

-- void BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(const char* labelName) // 0x0A24DA3A41B718F5
--[[
BOOL IsContextActive(char *ctx)
    {
     BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(ctx);
     return END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(0);
  }
--]]
function HUD.BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(labelName)
  native.invoke(
    Type.Void, 1465, false,
    arg(Type.String, labelName)
  )
end

-- BOOL END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(int p0) // 0x10BDDBFC529428DD
function HUD.END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(p0)
  return native.invoke(
    Type.Bool, 1466, false,
    arg(Type.Int, p0)
  )
end

-- void BEGIN_TEXT_COMMAND_SET_BLIP_NAME(const char* textLabel) // 0xF9113A30DE5C6670
--[[
Starts a text command to change the name of a blip displayed in the pause menu.
This should be paired with `END_TEXT_COMMAND_SET_BLIP_NAME`, once adding all required text components.
Example:

HUD::BEGIN_TEXT_COMMAND_SET_BLIP_NAME("STRING");
HUD::ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME("Name");
HUD::END_TEXT_COMMAND_SET_BLIP_NAME(blip);
--]]
function HUD.BEGIN_TEXT_COMMAND_SET_BLIP_NAME(textLabel)
  native.invoke(
    Type.Void, 1467, false,
    arg(Type.String, textLabel)
  )
end

-- void END_TEXT_COMMAND_SET_BLIP_NAME(Blip blip) // 0xBC38B49BCB83BC9B
--[[
Finalizes a text command started with BEGIN_TEXT_COMMAND_SET_BLIP_NAME, setting the name of the specified blip.
--]]
function HUD.END_TEXT_COMMAND_SET_BLIP_NAME(blip)
  native.invoke(
    Type.Void, 1468, false,
    arg(Type.Blip, blip)
  )
end

-- void BEGIN_TEXT_COMMAND_ADD_DIRECTLY_TO_PREVIOUS_BRIEFS(const char* p0) // 0x23D69E0465570028
function HUD.BEGIN_TEXT_COMMAND_ADD_DIRECTLY_TO_PREVIOUS_BRIEFS(p0)
  native.invoke(
    Type.Void, 1469, false,
    arg(Type.String, p0)
  )
end

-- void END_TEXT_COMMAND_ADD_DIRECTLY_TO_PREVIOUS_BRIEFS(BOOL p0) // 0xCFDBDF5AE59BA0F4
function HUD.END_TEXT_COMMAND_ADD_DIRECTLY_TO_PREVIOUS_BRIEFS(p0)
  native.invoke(
    Type.Void, 1470, false,
    arg(Type.Bool, p0)
  )
end

-- void BEGIN_TEXT_COMMAND_CLEAR_PRINT(const char* text) // 0xE124FA80A759019C
--[[
clears a print text command with this text
--]]
function HUD.BEGIN_TEXT_COMMAND_CLEAR_PRINT(text)
  native.invoke(
    Type.Void, 1471, false,
    arg(Type.String, text)
  )
end

-- void END_TEXT_COMMAND_CLEAR_PRINT() // 0xFCC75460ABA29378
function HUD.END_TEXT_COMMAND_CLEAR_PRINT()
  native.invoke(
    Type.Void, 1472, false
  )
end

-- void BEGIN_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT(const char* gxtEntry) // 0x8F9EE5687F8EECCD
function HUD.BEGIN_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT(gxtEntry)
  native.invoke(
    Type.Void, 1473, false,
    arg(Type.String, gxtEntry)
  )
end

-- void END_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT(int p0) // 0xA86911979638106F
function HUD.END_TEXT_COMMAND_OVERRIDE_BUTTON_TEXT(p0)
  native.invoke(
    Type.Void, 1474, false,
    arg(Type.Int, p0)
  )
end

-- void ADD_TEXT_COMPONENT_INTEGER(int value) // 0x03B504CF259931BC
function HUD.ADD_TEXT_COMPONENT_INTEGER(value)
  native.invoke(
    Type.Void, 1475, false,
    arg(Type.Int, value)
  )
end

-- void ADD_TEXT_COMPONENT_FLOAT(float value, int decimalPlaces) // 0xE7DCB5B874BCD96E
function HUD.ADD_TEXT_COMPONENT_FLOAT(value, decimalPlaces)
  native.invoke(
    Type.Void, 1476, false,
    arg(Type.Float, value),
    arg(Type.Int, decimalPlaces)
  )
end

-- void ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL(const char* labelName) // 0xC63CD5D2920ACBE7
function HUD.ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL(labelName)
  native.invoke(
    Type.Void, 1477, false,
    arg(Type.String, labelName)
  )
end

-- void ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY(Hash gxtEntryHash) // 0x17299B63C7683A2B
--[[
It adds the localized text of the specified GXT entry name. Eg. if the argument is GET_HASH_KEY("ES_HELP"), adds "Continue". Just uses a text labels hash key
--]]
function HUD.ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY(gxtEntryHash)
  native.invoke(
    Type.Void, 1478, false,
    arg(Type.Hash, gxtEntryHash)
  )
end

-- void ADD_TEXT_COMPONENT_SUBSTRING_BLIP_NAME(Blip blip) // 0x80EAD8E2E1D5D52E
function HUD.ADD_TEXT_COMPONENT_SUBSTRING_BLIP_NAME(blip)
  native.invoke(
    Type.Void, 1479, false,
    arg(Type.Blip, blip)
  )
end

-- void ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(const char* text) // 0x6C188BE134E074AA
function HUD.ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text)
  native.invoke(
    Type.Void, 1480, false,
    arg(Type.String, text)
  )
end

-- void ADD_TEXT_COMPONENT_SUBSTRING_TIME(int timestamp, int flags) // 0x1115F16B8AB9E8BF
--[[
Adds a timer (e.g. "00:00:00:000"). The appearance of the timer depends on the flags, which needs more research.
--]]
function HUD.ADD_TEXT_COMPONENT_SUBSTRING_TIME(timestamp, flags)
  native.invoke(
    Type.Void, 1481, false,
    arg(Type.Int, timestamp),
    arg(Type.Int, flags)
  )
end

-- void ADD_TEXT_COMPONENT_FORMATTED_INTEGER(int value, BOOL commaSeparated) // 0x0E4C749FF9DE9CC4
function HUD.ADD_TEXT_COMPONENT_FORMATTED_INTEGER(value, commaSeparated)
  native.invoke(
    Type.Void, 1482, false,
    arg(Type.Int, value),
    arg(Type.Bool, commaSeparated)
  )
end

-- void ADD_TEXT_COMPONENT_SUBSTRING_PHONE_NUMBER(const char* p0, int p1) // 0x761B77454205A61D
--[[
p1 was always -1
--]]
function HUD.ADD_TEXT_COMPONENT_SUBSTRING_PHONE_NUMBER(p0, p1)
  native.invoke(
    Type.Void, 1483, false,
    arg(Type.String, p0),
    arg(Type.Int, p1)
  )
end

-- void ADD_TEXT_COMPONENT_SUBSTRING_WEBSITE(const char* website) // 0x94CF4AC034C9C986
--[[
This native (along with ADD_TEXT_COMPONENT_SUBSTRING_KEYBOARD_DISPLAY and ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME) do not actually filter anything. They simply add the provided text (as of 944)
--]]
function HUD.ADD_TEXT_COMPONENT_SUBSTRING_WEBSITE(website)
  native.invoke(
    Type.Void, 1484, false,
    arg(Type.String, website)
  )
end

-- void ADD_TEXT_COMPONENT_SUBSTRING_KEYBOARD_DISPLAY(const char* string) // 0x5F68520888E69014
function HUD.ADD_TEXT_COMPONENT_SUBSTRING_KEYBOARD_DISPLAY(string)
  native.invoke(
    Type.Void, 1485, false,
    arg(Type.String, string)
  )
end

-- void SET_COLOUR_OF_NEXT_TEXT_COMPONENT(int hudColor) // 0x39BBF623FC803EAC
function HUD.SET_COLOUR_OF_NEXT_TEXT_COMPONENT(hudColor)
  native.invoke(
    Type.Void, 1486, false,
    arg(Type.Int, hudColor)
  )
end

-- const char* GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME(const char* text, int position, int length) // 0x169BD9382084C8C0
--[[
Returns a substring of a specified length starting at a specified position.

Example:
// Get "STRING" text from "MY_STRING"
subStr = HUD::GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME("MY_STRING", 3, 6);
--]]
function HUD.GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME(text, position, length)
  return native.invoke(
    Type.String, 1487, false,
    arg(Type.String, text),
    arg(Type.Int, position),
    arg(Type.Int, length)
  )
end

-- const char* GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_WITH_BYTE_LIMIT(const char* text, int position, int length, int maxLength) // 0xB2798643312205C5
--[[
Returns a substring of a specified length starting at a specified position. The result is guaranteed not to exceed the specified max length.

NOTE: The 'maxLength' parameter might actually be the size of the buffer that is returned. More research is needed. -CL69

Example:
// Condensed example of how Rockstar uses this function
strLen = HUD::GET_LENGTH_OF_LITERAL_STRING(MISC::GET_ONSCREEN_KEYBOARD_RESULT());
subStr = HUD::GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_WITH_BYTE_LIMIT(MISC::GET_ONSCREEN_KEYBOARD_RESULT(), 0, strLen, 63);

--

"fm_race_creator.ysc", line 85115:
// parameters modified for clarity
BOOL sub_8e5aa(char *text, int length) {
    for (i = 0; i <= (length - 2); i += 1) {
        if (!MISC::ARE_STRINGS_EQUAL(HUD::GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_WITH_BYTE_LIMIT(text, i, i + 1, 1), " ")) {
            return FALSE;
        }
    }
    return TRUE;
}
--]]
function HUD.GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_WITH_BYTE_LIMIT(text, position, length, maxLength)
  return native.invoke(
    Type.String, 1488, false,
    arg(Type.String, text),
    arg(Type.Int, position),
    arg(Type.Int, length),
    arg(Type.Int, maxLength)
  )
end

-- const char* GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_BYTES(const char* text, int startPosition, int endPosition) // 0xCE94AEBA5D82908A
--[[
Returns a substring that is between two specified positions. The length of the string will be calculated using (endPosition - startPosition).

Example:
// Get "STRING" text from "MY_STRING"
subStr = HUD::GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_BYTES("MY_STRING", 3, 9);
// Overflows are possibly replaced with underscores (needs verification)
subStr = HUD::GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_BYTES("MY_STRING", 3, 10); // "STRING_"?
--]]
function HUD.GET_CHARACTER_FROM_AUDIO_CONVERSATION_FILENAME_BYTES(text, startPosition, endPosition)
  return native.invoke(
    Type.String, 1489, false,
    arg(Type.String, text),
    arg(Type.Int, startPosition),
    arg(Type.Int, endPosition)
  )
end

-- const char* GET_FILENAME_FOR_AUDIO_CONVERSATION(const char* labelName) // 0x7B5280EBA9840C72
--[[
Gets a localized string literal from a label name. Can be used for output of e.g. VEHICLE::GET_LIVERY_NAME. To check if a GXT label can be localized with this, HUD::DOES_TEXT_LABEL_EXIST can be used.
--]]
function HUD.GET_FILENAME_FOR_AUDIO_CONVERSATION(labelName)
  return native.invoke(
    Type.String, 1490, false,
    arg(Type.String, labelName)
  )
end

-- void CLEAR_PRINTS() // 0xCC33FA791322B9D9
function HUD.CLEAR_PRINTS()
  native.invoke(
    Type.Void, 1491, false
  )
end

-- void CLEAR_BRIEF() // 0x9D292F73ADBD9313
function HUD.CLEAR_BRIEF()
  native.invoke(
    Type.Void, 1492, false
  )
end

-- void CLEAR_ALL_HELP_MESSAGES() // 0x6178F68A87A4D3A0
function HUD.CLEAR_ALL_HELP_MESSAGES()
  native.invoke(
    Type.Void, 1493, false
  )
end

-- void CLEAR_THIS_PRINT(const char* p0) // 0xCF708001E1E536DD
--[[
p0: found arguments in the b617d scripts: https://pastebin.com/X5akCN7z
--]]
function HUD.CLEAR_THIS_PRINT(p0)
  native.invoke(
    Type.Void, 1494, false,
    arg(Type.String, p0)
  )
end

-- void CLEAR_SMALL_PRINTS() // 0x2CEA2839313C09AC
function HUD.CLEAR_SMALL_PRINTS()
  native.invoke(
    Type.Void, 1495, false
  )
end

-- BOOL DOES_TEXT_BLOCK_EXIST(const char* gxt) // 0x1C7302E725259789
function HUD.DOES_TEXT_BLOCK_EXIST(gxt)
  return native.invoke(
    Type.Bool, 1496, false,
    arg(Type.String, gxt)
  )
end

-- void REQUEST_ADDITIONAL_TEXT(const char* gxt, int slot) // 0x71A78003C8E71424
--[[
Request a gxt into the passed slot.
--]]
function HUD.REQUEST_ADDITIONAL_TEXT(gxt, slot)
  native.invoke(
    Type.Void, 1497, false,
    arg(Type.String, gxt),
    arg(Type.Int, slot)
  )
end

-- void REQUEST_ADDITIONAL_TEXT_FOR_DLC(const char* gxt, int slot) // 0x6009F9F1AE90D8A6
function HUD.REQUEST_ADDITIONAL_TEXT_FOR_DLC(gxt, slot)
  native.invoke(
    Type.Void, 1498, false,
    arg(Type.String, gxt),
    arg(Type.Int, slot)
  )
end

-- BOOL HAS_ADDITIONAL_TEXT_LOADED(int slot) // 0x02245FE4BED318B8
function HUD.HAS_ADDITIONAL_TEXT_LOADED(slot)
  return native.invoke(
    Type.Bool, 1499, false,
    arg(Type.Int, slot)
  )
end

-- void CLEAR_ADDITIONAL_TEXT(int p0, BOOL p1) // 0x2A179DF17CCF04CD
function HUD.CLEAR_ADDITIONAL_TEXT(p0, p1)
  native.invoke(
    Type.Void, 1500, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_STREAMING_ADDITIONAL_TEXT(int p0) // 0x8B6817B71B85EBF0
function HUD.IS_STREAMING_ADDITIONAL_TEXT(p0)
  return native.invoke(
    Type.Bool, 1501, false,
    arg(Type.Int, p0)
  )
end

-- BOOL HAS_THIS_ADDITIONAL_TEXT_LOADED(const char* gxt, int slot) // 0xADBF060E2B30C5BC
--[[
Checks if the specified gxt has loaded into the passed slot.
--]]
function HUD.HAS_THIS_ADDITIONAL_TEXT_LOADED(gxt, slot)
  return native.invoke(
    Type.Bool, 1502, false,
    arg(Type.String, gxt),
    arg(Type.Int, slot)
  )
end

-- BOOL IS_MESSAGE_BEING_DISPLAYED() // 0x7984C03AA5CC2F41
function HUD.IS_MESSAGE_BEING_DISPLAYED()
  return native.invoke(
    Type.Bool, 1503, false
  )
end

-- BOOL DOES_TEXT_LABEL_EXIST(const char* gxt) // 0xAC09CA973C564252
--[[
Checks if the passed gxt name exists in the game files.
--]]
function HUD.DOES_TEXT_LABEL_EXIST(gxt)
  return native.invoke(
    Type.Bool, 1504, false,
    arg(Type.String, gxt)
  )
end

-- const char* GET_FIRST_N_CHARACTERS_OF_LITERAL_STRING(const char* string, int length) // 0x98C3CF913D895111
function HUD.GET_FIRST_N_CHARACTERS_OF_LITERAL_STRING(string, length)
  return native.invoke(
    Type.String, 1505, false,
    arg(Type.String, string),
    arg(Type.Int, length)
  )
end

-- int GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL(const char* gxt) // 0x801BD273D3A23F74
--[[
Returns the string length of the string from the gxt string .
--]]
function HUD.GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL(gxt)
  return native.invoke(
    Type.Int, 1506, false,
    arg(Type.String, gxt)
  )
end

-- int GET_LENGTH_OF_LITERAL_STRING(const char* string) // 0xF030907CCBB8A9FD
--[[
Returns the length of the string passed (much like strlen).
--]]
function HUD.GET_LENGTH_OF_LITERAL_STRING(string)
  return native.invoke(
    Type.Int, 1507, false,
    arg(Type.String, string)
  )
end

-- int GET_LENGTH_OF_LITERAL_STRING_IN_BYTES(const char* string) // 0x43E4111189E54F0E
function HUD.GET_LENGTH_OF_LITERAL_STRING_IN_BYTES(string)
  return native.invoke(
    Type.Int, 1508, false,
    arg(Type.String, string)
  )
end

-- const char* GET_STREET_NAME_FROM_HASH_KEY(Hash hash) // 0xD0EF8A959B8A4CB9
--[[
This functions converts the hash of a street name into a readable string.

For how to get the hashes, see PATHFIND::GET_STREET_NAME_AT_COORD.
--]]
function HUD.GET_STREET_NAME_FROM_HASH_KEY(hash)
  return native.invoke(
    Type.String, 1509, false,
    arg(Type.Hash, hash)
  )
end

-- BOOL IS_HUD_PREFERENCE_SWITCHED_ON() // 0x1930DFA731813EC4
function HUD.IS_HUD_PREFERENCE_SWITCHED_ON()
  return native.invoke(
    Type.Bool, 1510, false
  )
end

-- BOOL IS_RADAR_PREFERENCE_SWITCHED_ON() // 0x9EB6522EA68F22FE
function HUD.IS_RADAR_PREFERENCE_SWITCHED_ON()
  return native.invoke(
    Type.Bool, 1511, false
  )
end

-- BOOL IS_SUBTITLE_PREFERENCE_SWITCHED_ON() // 0xAD6DACA4BA53E0A4
function HUD.IS_SUBTITLE_PREFERENCE_SWITCHED_ON()
  return native.invoke(
    Type.Bool, 1512, false
  )
end

-- void DISPLAY_HUD(BOOL toggle) // 0xA6294919E56FF02A
--[[
If Hud should be displayed
--]]
function HUD.DISPLAY_HUD(toggle)
  native.invoke(
    Type.Void, 1513, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISPLAY_HUD_WHEN_NOT_IN_STATE_OF_PLAY_THIS_FRAME() // 0x7669F9E39DC17063
--[[
Enables drawing some hud components, such as help labels, this frame, when the player is dead.
--]]
function HUD.DISPLAY_HUD_WHEN_NOT_IN_STATE_OF_PLAY_THIS_FRAME()
  native.invoke(
    Type.Void, 1514, false
  )
end

-- void DISPLAY_HUD_WHEN_PAUSED_THIS_FRAME() // 0x402F9ED62087E898
function HUD.DISPLAY_HUD_WHEN_PAUSED_THIS_FRAME()
  native.invoke(
    Type.Void, 1515, false
  )
end

-- void DISPLAY_RADAR(BOOL toggle) // 0xA0EBB943C300E693
--[[
If Minimap / Radar should be displayed.
--]]
function HUD.DISPLAY_RADAR(toggle)
  native.invoke(
    Type.Void, 1516, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_FAKE_SPECTATOR_MODE(BOOL toggle) // 0xCD74233600C4EA6B
--[[
Setter for GET_FAKE_SPECTATOR_MODE
--]]
function HUD.SET_FAKE_SPECTATOR_MODE(toggle)
  native.invoke(
    Type.Void, 1517, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL GET_FAKE_SPECTATOR_MODE() // 0xC2D2AD9EAAE265B8
--[[
Getter for SET_FAKE_SPECTATOR_MODE
--]]
function HUD.GET_FAKE_SPECTATOR_MODE()
  return native.invoke(
    Type.Bool, 1518, false
  )
end

-- BOOL IS_HUD_HIDDEN() // 0xA86478C6958735C5
function HUD.IS_HUD_HIDDEN()
  return native.invoke(
    Type.Bool, 1519, false
  )
end

-- BOOL IS_RADAR_HIDDEN() // 0x157F93B036700462
function HUD.IS_RADAR_HIDDEN()
  return native.invoke(
    Type.Bool, 1520, false
  )
end

-- BOOL IS_MINIMAP_RENDERING() // 0xAF754F20EB5CD51A
function HUD.IS_MINIMAP_RENDERING()
  return native.invoke(
    Type.Bool, 1521, false
  )
end

-- void USE_VEHICLE_TARGETING_RETICULE(Any p0) // 0x0C698D8F099174C7
function HUD.USE_VEHICLE_TARGETING_RETICULE(p0)
  native.invoke(
    Type.Void, 1522, false,
    arg(Type.Any, p0)
  )
end

-- void _USE_VEHICLE_TARGETING_RETICULE_ON_VEHICLES(BOOL enable) // 0x1BC0EA2912708625
function HUD._USE_VEHICLE_TARGETING_RETICULE_ON_VEHICLES(enable)
  native.invoke(
    Type.Void, 1523, false,
    arg(Type.Bool, enable)
  )
end

-- void ADD_VALID_VEHICLE_HIT_HASH(Any p0) // 0xE4C3B169876D33D7
function HUD.ADD_VALID_VEHICLE_HIT_HASH(p0)
  native.invoke(
    Type.Void, 1524, false,
    arg(Type.Any, p0)
  )
end

-- void CLEAR_VALID_VEHICLE_HIT_HASHES() // 0xEB81A3DADD503187
function HUD.CLEAR_VALID_VEHICLE_HIT_HASHES()
  native.invoke(
    Type.Void, 1525, false
  )
end

-- void SET_BLIP_ROUTE(Blip blip, BOOL enabled) // 0x4F7D8A9BFB0B43E9
--[[
Enable / disable showing route for the Blip-object.
--]]
function HUD.SET_BLIP_ROUTE(blip, enabled)
  native.invoke(
    Type.Void, 1526, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, enabled)
  )
end

-- void CLEAR_ALL_BLIP_ROUTES() // 0xD12882D3FF82BF11
function HUD.CLEAR_ALL_BLIP_ROUTES()
  native.invoke(
    Type.Void, 1527, false
  )
end

-- void SET_BLIP_ROUTE_COLOUR(Blip blip, int colour) // 0x837155CD2F63DA09
function HUD.SET_BLIP_ROUTE_COLOUR(blip, colour)
  native.invoke(
    Type.Void, 1528, false,
    arg(Type.Blip, blip),
    arg(Type.Int, colour)
  )
end

-- void SET_FORCE_SHOW_GPS(BOOL toggle) // 0x2790F4B17D098E26
function HUD.SET_FORCE_SHOW_GPS(toggle)
  native.invoke(
    Type.Void, 1529, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_USE_SET_DESTINATION_IN_PAUSE_MAP(BOOL toggle) // 0x6CDD58146A436083
function HUD.SET_USE_SET_DESTINATION_IN_PAUSE_MAP(toggle)
  native.invoke(
    Type.Void, 1530, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLOCK_WANTED_FLASH(BOOL disabled) // 0xD1942374085C8469
function HUD.SET_BLOCK_WANTED_FLASH(disabled)
  native.invoke(
    Type.Void, 1531, false,
    arg(Type.Bool, disabled)
  )
end

-- void ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS(BOOL p0) // 0x60296AF4BA14ABC5
function HUD.ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS(p0)
  native.invoke(
    Type.Void, 1532, false,
    arg(Type.Bool, p0)
  )
end

-- void FORCE_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS_LIST(int p0) // 0x57D760D55F54E071
function HUD.FORCE_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS_LIST(p0)
  native.invoke(
    Type.Void, 1533, false,
    arg(Type.Int, p0)
  )
end

-- void SET_RADAR_ZOOM_PRECISE(float zoom) // 0xBD12C5EEE184C337
--[[
zoom ranges from 0 to 90f in R* Scripts
--]]
function HUD.SET_RADAR_ZOOM_PRECISE(zoom)
  native.invoke(
    Type.Void, 1534, false,
    arg(Type.Float, zoom)
  )
end

-- void SET_RADAR_ZOOM(int zoomLevel) // 0x096EF57A0C999BBA
--[[
zoomLevel ranges from 0 to 1400 in R* Scripts
--]]
function HUD.SET_RADAR_ZOOM(zoomLevel)
  native.invoke(
    Type.Void, 1535, false,
    arg(Type.Int, zoomLevel)
  )
end

-- void SET_RADAR_ZOOM_TO_BLIP(Blip blip, float zoom) // 0xF98E4B3E56AFC7B1
function HUD.SET_RADAR_ZOOM_TO_BLIP(blip, zoom)
  native.invoke(
    Type.Void, 1536, false,
    arg(Type.Blip, blip),
    arg(Type.Float, zoom)
  )
end

-- void SET_RADAR_ZOOM_TO_DISTANCE(float zoom) // 0xCB7CC0D58405AD41
function HUD.SET_RADAR_ZOOM_TO_DISTANCE(zoom)
  native.invoke(
    Type.Void, 1537, false,
    arg(Type.Float, zoom)
  )
end

-- void UPDATE_RADAR_ZOOM_TO_BLIP() // 0xD2049635DEB9C375
--[[
Does nothing (it's a nullsub).
--]]
function HUD.UPDATE_RADAR_ZOOM_TO_BLIP()
  native.invoke(
    Type.Void, 1538, false
  )
end

-- void GET_HUD_COLOUR(int hudColorIndex, int* r, int* g, int* b, int* a) // 0x7C9C91AB74A0360F
function HUD.GET_HUD_COLOUR(hudColorIndex, r, g, b, a)
  native.invoke(
    Type.Void, 1539, false,
    arg(Type.Int, hudColorIndex),
    ref(Type.Int, r),
    ref(Type.Int, g),
    ref(Type.Int, b),
    ref(Type.Int, a)
  )
end

-- void SET_SCRIPT_VARIABLE_HUD_COLOUR(int r, int g, int b, int a) // 0xD68A5FF8A3A89874
--[[
Sets the color of HUD_COLOUR_SCRIPT_VARIABLE
--]]
function HUD.SET_SCRIPT_VARIABLE_HUD_COLOUR(r, g, b, a)
  native.invoke(
    Type.Void, 1540, false,
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, a)
  )
end

-- void SET_SECOND_SCRIPT_VARIABLE_HUD_COLOUR(int r, int g, int b, int a) // 0x16A304E6CB2BFAB9
--[[
Sets the color of HUD_COLOUR_SCRIPT_VARIABLE_2
--]]
function HUD.SET_SECOND_SCRIPT_VARIABLE_HUD_COLOUR(r, g, b, a)
  native.invoke(
    Type.Void, 1541, false,
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, a)
  )
end

-- void REPLACE_HUD_COLOUR(int hudColorIndex, int hudColorIndex2) // 0x1CCC708F0F850613
--[[
makes hudColorIndex2 color into hudColorIndex color
--]]
function HUD.REPLACE_HUD_COLOUR(hudColorIndex, hudColorIndex2)
  native.invoke(
    Type.Void, 1542, false,
    arg(Type.Int, hudColorIndex),
    arg(Type.Int, hudColorIndex2)
  )
end

-- void REPLACE_HUD_COLOUR_WITH_RGBA(int hudColorIndex, int r, int g, int b, int a) // 0xF314CF4F0211894E
function HUD.REPLACE_HUD_COLOUR_WITH_RGBA(hudColorIndex, r, g, b, a)
  native.invoke(
    Type.Void, 1543, false,
    arg(Type.Int, hudColorIndex),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, a)
  )
end

-- void SET_ABILITY_BAR_VISIBILITY(BOOL visible) // 0x1DFEDD15019315A9
function HUD.SET_ABILITY_BAR_VISIBILITY(visible)
  native.invoke(
    Type.Void, 1544, false,
    arg(Type.Bool, visible)
  )
end

-- void SET_ALLOW_ABILITY_BAR(BOOL toggle) // 0x889329C80FE5963C
function HUD.SET_ALLOW_ABILITY_BAR(toggle)
  native.invoke(
    Type.Void, 1545, false,
    arg(Type.Bool, toggle)
  )
end

-- void FLASH_ABILITY_BAR(int millisecondsToFlash) // 0x02CFBA0C9E9275CE
function HUD.FLASH_ABILITY_BAR(millisecondsToFlash)
  native.invoke(
    Type.Void, 1546, false,
    arg(Type.Int, millisecondsToFlash)
  )
end

-- void SET_ABILITY_BAR_VALUE(float p0, float p1) // 0x9969599CCFF5D85E
function HUD.SET_ABILITY_BAR_VALUE(p0, p1)
  native.invoke(
    Type.Void, 1547, false,
    arg(Type.Float, p0),
    arg(Type.Float, p1)
  )
end

-- void FLASH_WANTED_DISPLAY(BOOL p0) // 0xA18AFB39081B6A1F
function HUD.FLASH_WANTED_DISPLAY(p0)
  native.invoke(
    Type.Void, 1548, false,
    arg(Type.Bool, p0)
  )
end

-- void FORCE_OFF_WANTED_STAR_FLASH(BOOL toggle) // 0xBA8D65C1C65702E5
function HUD.FORCE_OFF_WANTED_STAR_FLASH(toggle)
  native.invoke(
    Type.Void, 1549, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_CUSTOM_MP_HUD_COLOR(int hudColorId) // 0x2ACCB195F3CCD9DE
function HUD.SET_CUSTOM_MP_HUD_COLOR(hudColorId)
  native.invoke(
    Type.Void, 1550, false,
    arg(Type.Int, hudColorId)
  )
end

-- float GET_RENDERED_CHARACTER_HEIGHT(float size, int font) // 0xDB88A37483346780
--[[
This gets the height of the FONT and not the total text. You need to get the number of lines your text uses, and get the height of a newline (I'm using a smaller value) to get the total text height.
--]]
function HUD.GET_RENDERED_CHARACTER_HEIGHT(size, font)
  return native.invoke(
    Type.Float, 1551, false,
    arg(Type.Float, size),
    arg(Type.Int, font)
  )
end

-- void SET_TEXT_SCALE(float scale, float size) // 0x07C837F9A01C34C9
--[[
Size range : 0F to 1.0F
p0 is unknown and doesn't seem to have an effect, yet in the game scripts it changes to 1.0F sometimes.
--]]
function HUD.SET_TEXT_SCALE(scale, size)
  native.invoke(
    Type.Void, 1552, false,
    arg(Type.Float, scale),
    arg(Type.Float, size)
  )
end

-- void SET_TEXT_COLOUR(int red, int green, int blue, int alpha) // 0xBE6B23FFA53FB442
--[[
colors you input not same as you think?
A: for some reason its R B G A
--]]
function HUD.SET_TEXT_COLOUR(red, green, blue, alpha)
  native.invoke(
    Type.Void, 1553, false,
    arg(Type.Int, red),
    arg(Type.Int, green),
    arg(Type.Int, blue),
    arg(Type.Int, alpha)
  )
end

-- void SET_TEXT_CENTRE(BOOL align) // 0xC02F4DBFB51D988B
function HUD.SET_TEXT_CENTRE(align)
  native.invoke(
    Type.Void, 1554, false,
    arg(Type.Bool, align)
  )
end

-- void SET_TEXT_RIGHT_JUSTIFY(BOOL toggle) // 0x6B3C4650BC8BEE47
function HUD.SET_TEXT_RIGHT_JUSTIFY(toggle)
  native.invoke(
    Type.Void, 1555, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_TEXT_JUSTIFICATION(int justifyType) // 0x4E096588B13FFECA
--[[
Types -
0: Center-Justify
1: Left-Justify
2: Right-Justify

Right-Justify requires SET_TEXT_WRAP, otherwise it will draw to the far right of the screen
--]]
function HUD.SET_TEXT_JUSTIFICATION(justifyType)
  native.invoke(
    Type.Void, 1556, false,
    arg(Type.Int, justifyType)
  )
end

-- void SET_TEXT_LINE_HEIGHT_MULT(float lineHeightMult) // 0x9F4624F76E6953D1
function HUD.SET_TEXT_LINE_HEIGHT_MULT(lineHeightMult)
  native.invoke(
    Type.Void, 1557, false,
    arg(Type.Float, lineHeightMult)
  )
end

-- void SET_TEXT_WRAP(float start, float end) // 0x63145D9C883A1A70
--[[
It sets the text in a specified box and wraps the text if it exceeds the boundries. Both values are for X axis. Useful when positioning text set to center or aligned to the right.

start - left boundry on screen position (0.0 - 1.0)
end - right boundry on screen position (0.0 - 1.0)
--]]
function HUD.SET_TEXT_WRAP(start, end_)
  native.invoke(
    Type.Void, 1558, false,
    arg(Type.Float, start),
    arg(Type.Float, end_)
  )
end

-- void SET_TEXT_LEADING(int p0) // 0xA50ABC31E3CDFAFF
function HUD.SET_TEXT_LEADING(p0)
  native.invoke(
    Type.Void, 1559, false,
    arg(Type.Int, p0)
  )
end

-- void SET_TEXT_PROPORTIONAL(BOOL p0) // 0x038C1F517D7FDCF8
--[[
This native does absolutely nothing, just a nullsub
--]]
function HUD.SET_TEXT_PROPORTIONAL(p0)
  native.invoke(
    Type.Void, 1560, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_TEXT_FONT(int fontType) // 0x66E0276CC5F6B9DA
--[[
fonts that mess up your text where made for number values/misc stuff
--]]
function HUD.SET_TEXT_FONT(fontType)
  native.invoke(
    Type.Void, 1561, false,
    arg(Type.Int, fontType)
  )
end

-- void SET_TEXT_DROP_SHADOW() // 0x1CA3E9EAC9D93E5E
function HUD.SET_TEXT_DROP_SHADOW()
  native.invoke(
    Type.Void, 1562, false
  )
end

-- void SET_TEXT_DROPSHADOW(int distance, int r, int g, int b, int a) // 0x465C84BC39F1C351
--[[
distance - shadow distance in pixels, both horizontal and vertical
r, g, b, a - color
--]]
function HUD.SET_TEXT_DROPSHADOW(distance, r, g, b, a)
  native.invoke(
    Type.Void, 1563, false,
    arg(Type.Int, distance),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, a)
  )
end

-- void SET_TEXT_OUTLINE() // 0x2513DFB0FB8400FE
function HUD.SET_TEXT_OUTLINE()
  native.invoke(
    Type.Void, 1564, false
  )
end

-- void SET_TEXT_EDGE(int p0, int r, int g, int b, int a) // 0x441603240D202FA6
--[[
This native does absolutely nothing, just a nullsub
--]]
function HUD.SET_TEXT_EDGE(p0, r, g, b, a)
  native.invoke(
    Type.Void, 1565, false,
    arg(Type.Int, p0),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b),
    arg(Type.Int, a)
  )
end

-- void SET_TEXT_RENDER_ID(int renderId) // 0x5F15302936E07111
function HUD.SET_TEXT_RENDER_ID(renderId)
  native.invoke(
    Type.Void, 1566, false,
    arg(Type.Int, renderId)
  )
end

-- int GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID() // 0x52F0982D7FD156B6
--[[
This function is hard-coded to always return 1.
--]]
function HUD.GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID()
  return native.invoke(
    Type.Int, 1567, false
  )
end

-- BOOL REGISTER_NAMED_RENDERTARGET(const char* name, BOOL p1) // 0x57D9C12635E25CE3
function HUD.REGISTER_NAMED_RENDERTARGET(name, p1)
  return native.invoke(
    Type.Bool, 1568, false,
    arg(Type.String, name),
    arg(Type.Bool, p1)
  )
end

-- BOOL IS_NAMED_RENDERTARGET_REGISTERED(const char* name) // 0x78DCDC15C9F116B4
function HUD.IS_NAMED_RENDERTARGET_REGISTERED(name)
  return native.invoke(
    Type.Bool, 1569, false,
    arg(Type.String, name)
  )
end

-- BOOL RELEASE_NAMED_RENDERTARGET(const char* name) // 0xE9F6FFE837354DD4
function HUD.RELEASE_NAMED_RENDERTARGET(name)
  return native.invoke(
    Type.Bool, 1570, false,
    arg(Type.String, name)
  )
end

-- void LINK_NAMED_RENDERTARGET(Hash modelHash) // 0xF6C09E276AEB3F2D
function HUD.LINK_NAMED_RENDERTARGET(modelHash)
  native.invoke(
    Type.Void, 1571, false,
    arg(Type.Hash, modelHash)
  )
end

-- int GET_NAMED_RENDERTARGET_RENDER_ID(const char* name) // 0x1A6478B61C6BDC3B
function HUD.GET_NAMED_RENDERTARGET_RENDER_ID(name)
  return native.invoke(
    Type.Int, 1572, false,
    arg(Type.String, name)
  )
end

-- BOOL IS_NAMED_RENDERTARGET_LINKED(Hash modelHash) // 0x113750538FA31298
function HUD.IS_NAMED_RENDERTARGET_LINKED(modelHash)
  return native.invoke(
    Type.Bool, 1573, false,
    arg(Type.Hash, modelHash)
  )
end

-- void CLEAR_HELP(BOOL toggle) // 0x8DFCED7A656F8802
function HUD.CLEAR_HELP(toggle)
  native.invoke(
    Type.Void, 1574, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_HELP_MESSAGE_ON_SCREEN() // 0xDAD37F45428801AE
function HUD.IS_HELP_MESSAGE_ON_SCREEN()
  return native.invoke(
    Type.Bool, 1575, false
  )
end

-- BOOL HAS_SCRIPT_HIDDEN_HELP_THIS_FRAME() // 0x214CD562A939246A
function HUD.HAS_SCRIPT_HIDDEN_HELP_THIS_FRAME()
  return native.invoke(
    Type.Bool, 1576, false
  )
end

-- BOOL IS_HELP_MESSAGE_BEING_DISPLAYED() // 0x4D79439A6B55AC67
function HUD.IS_HELP_MESSAGE_BEING_DISPLAYED()
  return native.invoke(
    Type.Bool, 1577, false
  )
end

-- BOOL IS_HELP_MESSAGE_FADING_OUT() // 0x327EDEEEAC55C369
function HUD.IS_HELP_MESSAGE_FADING_OUT()
  return native.invoke(
    Type.Bool, 1578, false
  )
end

-- void SET_HELP_MESSAGE_STYLE(int style, int hudColor, int alpha, int p3, int p4) // 0xB9C362BABECDDC7A
function HUD.SET_HELP_MESSAGE_STYLE(style, hudColor, alpha, p3, p4)
  native.invoke(
    Type.Void, 1579, false,
    arg(Type.Int, style),
    arg(Type.Int, hudColor),
    arg(Type.Int, alpha),
    arg(Type.Int, p3),
    arg(Type.Int, p4)
  )
end

-- int GET_STANDARD_BLIP_ENUM_ID() // 0x4A9923385BDB9DAD
function HUD.GET_STANDARD_BLIP_ENUM_ID()
  return native.invoke(
    Type.Int, 1580, false
  )
end

-- int GET_WAYPOINT_BLIP_ENUM_ID() // 0x186E5D252FA50E7D
function HUD.GET_WAYPOINT_BLIP_ENUM_ID()
  return native.invoke(
    Type.Int, 1581, false
  )
end

-- int GET_NUMBER_OF_ACTIVE_BLIPS() // 0x9A3FF3DE163034E8
function HUD.GET_NUMBER_OF_ACTIVE_BLIPS()
  return native.invoke(
    Type.Int, 1582, false
  )
end

-- Blip GET_NEXT_BLIP_INFO_ID(int blipSprite) // 0x14F96AA50D6FBEA7
function HUD.GET_NEXT_BLIP_INFO_ID(blipSprite)
  return native.invoke(
    Type.Blip, 1583, false,
    arg(Type.Int, blipSprite)
  )
end

-- Blip GET_FIRST_BLIP_INFO_ID(int blipSprite) // 0x1BEDE233E6CD2A1F
function HUD.GET_FIRST_BLIP_INFO_ID(blipSprite)
  return native.invoke(
    Type.Blip, 1584, false,
    arg(Type.Int, blipSprite)
  )
end

-- Blip GET_CLOSEST_BLIP_INFO_ID(int blipSprite) // 0xD484BF71050CA1EE
function HUD.GET_CLOSEST_BLIP_INFO_ID(blipSprite)
  return native.invoke(
    Type.Blip, 1585, false,
    arg(Type.Int, blipSprite)
  )
end

-- Vector3 GET_BLIP_INFO_ID_COORD(Blip blip) // 0xFA7C7F0AADF25D09
function HUD.GET_BLIP_INFO_ID_COORD(blip)
  return native.invoke(
    Type.Vector3, 1586, false,
    arg(Type.Blip, blip)
  )
end

-- int GET_BLIP_INFO_ID_DISPLAY(Blip blip) // 0x1E314167F701DC3B
function HUD.GET_BLIP_INFO_ID_DISPLAY(blip)
  return native.invoke(
    Type.Int, 1587, false,
    arg(Type.Blip, blip)
  )
end

-- int GET_BLIP_INFO_ID_TYPE(Blip blip) // 0xBE9B0959FFD0779B
--[[
Returns a value based on what the blip is attached to
1 - Vehicle
2 - Ped
3 - Object
4 - Coord
5 - unk
6 - Pickup
7 - Radius
--]]
function HUD.GET_BLIP_INFO_ID_TYPE(blip)
  return native.invoke(
    Type.Int, 1588, false,
    arg(Type.Blip, blip)
  )
end

-- Entity GET_BLIP_INFO_ID_ENTITY_INDEX(Blip blip) // 0x4BA4E2553AFEDC2C
function HUD.GET_BLIP_INFO_ID_ENTITY_INDEX(blip)
  return native.invoke(
    Type.Entity, 1589, false,
    arg(Type.Blip, blip)
  )
end

-- Pickup GET_BLIP_INFO_ID_PICKUP_INDEX(Blip blip) // 0x9B6786E4C03DD382
--[[
This function is hard-coded to always return 0.
--]]
function HUD.GET_BLIP_INFO_ID_PICKUP_INDEX(blip)
  return native.invoke(
    Type.Pickup, 1590, false,
    arg(Type.Blip, blip)
  )
end

-- Blip GET_BLIP_FROM_ENTITY(Entity entity) // 0xBC8DBDCA2436F7E8
--[[
Returns the Blip handle of given Entity.
--]]
function HUD.GET_BLIP_FROM_ENTITY(entity)
  return native.invoke(
    Type.Blip, 1591, false,
    arg(Type.Entity, entity)
  )
end

-- Blip ADD_BLIP_FOR_RADIUS(float posX, float posY, float posZ, float radius) // 0x46818D79B1F7499A
function HUD.ADD_BLIP_FOR_RADIUS(posX, posY, posZ, radius)
  return native.invoke(
    Type.Blip, 1592, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, radius)
  )
end

-- Blip ADD_BLIP_FOR_AREA(float x, float y, float z, float width, float height) // 0xCE5D0E5E315DB238
--[[
Adds a rectangular blip for the specified coordinates/area.

It is recommended to use SET_BLIP_ROTATION and SET_BLIP_COLOUR to make the blip not rotate along with the camera.

By default, the blip will show as a _regular_ blip with the specified color/sprite if it is outside of the minimap view.

Example image:
minimap https://w.wew.wtf/pdcjig.png
big map https://w.wew.wtf/zgcjcm.png

(Native name is _likely_ to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
--]]
function HUD.ADD_BLIP_FOR_AREA(x, y, z, width, height)
  return native.invoke(
    Type.Blip, 1593, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z),
    arg(Type.Float, width),
    arg(Type.Float, height)
  )
end

-- Blip ADD_BLIP_FOR_ENTITY(Entity entity) // 0x5CDE92C702A8FCE7
--[[
Returns red ( default ) blip attached to entity.

Example:
Blip blip; //Put this outside your case or option
blip = HUD::ADD_BLIP_FOR_ENTITY(YourPedOrBodyguardName);
HUD::SET_BLIP_AS_FRIENDLY(blip, true);
--]]
function HUD.ADD_BLIP_FOR_ENTITY(entity)
  return native.invoke(
    Type.Blip, 1594, false,
    arg(Type.Entity, entity)
  )
end

-- Blip ADD_BLIP_FOR_PICKUP(Pickup pickup) // 0xBE339365C863BD36
function HUD.ADD_BLIP_FOR_PICKUP(pickup)
  return native.invoke(
    Type.Blip, 1595, false,
    arg(Type.Pickup, pickup)
  )
end

-- Blip ADD_BLIP_FOR_COORD(float x, float y, float z) // 0x5A039BB0BCA604B6
--[[
Creates an orange ( default ) Blip-object. Returns a Blip-object which can then be modified.
--]]
function HUD.ADD_BLIP_FOR_COORD(x, y, z)
  return native.invoke(
    Type.Blip, 1596, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void TRIGGER_SONAR_BLIP(float posX, float posY, float posZ, float radius, int p4) // 0x72DD432F3CDFC0EE
function HUD.TRIGGER_SONAR_BLIP(posX, posY, posZ, radius, p4)
  native.invoke(
    Type.Void, 1597, false,
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ),
    arg(Type.Float, radius),
    arg(Type.Int, p4)
  )
end

-- void ALLOW_SONAR_BLIPS(BOOL toggle) // 0x60734CC207C9833C
function HUD.ALLOW_SONAR_BLIPS(toggle)
  native.invoke(
    Type.Void, 1598, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLIP_COORDS(Blip blip, float posX, float posY, float posZ) // 0xAE2AF67E9D9AF65D
function HUD.SET_BLIP_COORDS(blip, posX, posY, posZ)
  native.invoke(
    Type.Void, 1599, false,
    arg(Type.Blip, blip),
    arg(Type.Float, posX),
    arg(Type.Float, posY),
    arg(Type.Float, posZ)
  )
end

-- Vector3 GET_BLIP_COORDS(Blip blip) // 0x586AFE3FF72D996E
function HUD.GET_BLIP_COORDS(blip)
  return native.invoke(
    Type.Vector3, 1600, false,
    arg(Type.Blip, blip)
  )
end

-- void SET_BLIP_SPRITE(Blip blip, int spriteId) // 0xDF735600A4696DAF
--[[
Sets the displayed sprite for a specific blip..

You may have your own list, but since dev-c didn't show it I was bored and started looking through scripts and functions to get a presumable almost positive list of a majority of blip IDs
https://pastebin.com/Bpj9Sfft

Blips Images + IDs:
https://gtaxscripting.blogspot.com/2016/05/gta-v-blips-id-and-image.html
--]]
function HUD.SET_BLIP_SPRITE(blip, spriteId)
  native.invoke(
    Type.Void, 1601, false,
    arg(Type.Blip, blip),
    arg(Type.Int, spriteId)
  )
end

-- int GET_BLIP_SPRITE(Blip blip) // 0x1FC877464A04FC4F
--[[
Blips Images + IDs:
gtaxscripting.blogspot.com/2016/05/gta-v-blips-id-and-image.html
--]]
function HUD.GET_BLIP_SPRITE(blip)
  return native.invoke(
    Type.Int, 1602, false,
    arg(Type.Blip, blip)
  )
end

-- void SET_COP_BLIP_SPRITE(int p0, float p1) // 0x9FCB3CBFB3EAD69A
function HUD.SET_COP_BLIP_SPRITE(p0, p1)
  native.invoke(
    Type.Void, 1603, false,
    arg(Type.Int, p0),
    arg(Type.Float, p1)
  )
end

-- void SET_COP_BLIP_SPRITE_AS_STANDARD() // 0xB7B873520C84C118
function HUD.SET_COP_BLIP_SPRITE_AS_STANDARD()
  native.invoke(
    Type.Void, 1604, false
  )
end

-- void SET_BLIP_NAME_FROM_TEXT_FILE(Blip blip, const char* gxtEntry) // 0xEAA0FFE120D92784
--[[
Doesn't work if the label text of gxtEntry is >= 80.
--]]
function HUD.SET_BLIP_NAME_FROM_TEXT_FILE(blip, gxtEntry)
  native.invoke(
    Type.Void, 1605, false,
    arg(Type.Blip, blip),
    arg(Type.String, gxtEntry)
  )
end

-- void SET_BLIP_NAME_TO_PLAYER_NAME(Blip blip, Player player) // 0x127DE7B20C60A6A3
function HUD.SET_BLIP_NAME_TO_PLAYER_NAME(blip, player)
  native.invoke(
    Type.Void, 1606, false,
    arg(Type.Blip, blip),
    arg(Type.Player, player)
  )
end

-- void SET_BLIP_ALPHA(Blip blip, int alpha) // 0x45FF974EEE1C8734
--[[
Sets alpha-channel for blip color.

Example:

Blip blip = HUD::ADD_BLIP_FOR_ENTITY(entity);
HUD::SET_BLIP_COLOUR(blip , 3);
HUD::SET_BLIP_ALPHA(blip , 64);

--]]
function HUD.SET_BLIP_ALPHA(blip, alpha)
  native.invoke(
    Type.Void, 1607, false,
    arg(Type.Blip, blip),
    arg(Type.Int, alpha)
  )
end

-- int GET_BLIP_ALPHA(Blip blip) // 0x970F608F0EE6C885
function HUD.GET_BLIP_ALPHA(blip)
  return native.invoke(
    Type.Int, 1608, false,
    arg(Type.Blip, blip)
  )
end

-- void SET_BLIP_FADE(Blip blip, int opacity, int duration) // 0x2AEE8F8390D2298C
function HUD.SET_BLIP_FADE(blip, opacity, duration)
  native.invoke(
    Type.Void, 1609, false,
    arg(Type.Blip, blip),
    arg(Type.Int, opacity),
    arg(Type.Int, duration)
  )
end

-- int GET_BLIP_FADE_DIRECTION(Blip blip) // 0x2C173AE2BDB9385E
--[[
Returns -1, 0, +1, depending on if the blip is fading out, doing nothing, or fading in respectively.
--]]
function HUD.GET_BLIP_FADE_DIRECTION(blip)
  return native.invoke(
    Type.Int, 1610, false,
    arg(Type.Blip, blip)
  )
end

-- void SET_BLIP_ROTATION(Blip blip, int rotation) // 0xF87683CDF73C3F6E
--[[
After some testing, looks like you need to use CEIL() on the rotation (vehicle/ped heading) before using it there.
--]]
function HUD.SET_BLIP_ROTATION(blip, rotation)
  native.invoke(
    Type.Void, 1611, false,
    arg(Type.Blip, blip),
    arg(Type.Int, rotation)
  )
end

-- void SET_BLIP_ROTATION_WITH_FLOAT(Blip blip, float heading) // 0xA8B6AFDAC320AC87
--[[
Does not require whole number/integer rotations.
--]]
function HUD.SET_BLIP_ROTATION_WITH_FLOAT(blip, heading)
  native.invoke(
    Type.Void, 1612, false,
    arg(Type.Blip, blip),
    arg(Type.Float, heading)
  )
end

-- int GET_BLIP_ROTATION(Blip blip) // 0x003E92BA477F9D7F
function HUD.GET_BLIP_ROTATION(blip)
  return native.invoke(
    Type.Int, 1613, false,
    arg(Type.Blip, blip)
  )
end

-- void SET_BLIP_FLASH_TIMER(Blip blip, int duration) // 0xD3CD6FD297AE87CC
--[[
Adds up after viewing multiple R* scripts. I believe that the duration is in miliseconds.
--]]
function HUD.SET_BLIP_FLASH_TIMER(blip, duration)
  native.invoke(
    Type.Void, 1614, false,
    arg(Type.Blip, blip),
    arg(Type.Int, duration)
  )
end

-- void SET_BLIP_FLASH_INTERVAL(Blip blip, Any p1) // 0xAA51DB313C010A7E
function HUD.SET_BLIP_FLASH_INTERVAL(blip, p1)
  native.invoke(
    Type.Void, 1615, false,
    arg(Type.Blip, blip),
    arg(Type.Any, p1)
  )
end

-- void SET_BLIP_COLOUR(Blip blip, int color) // 0x03D7FB09E75D6B7E
--[[
https://gtaforums.com/topic/864881-all-blip-color-ids-pictured/
--]]
function HUD.SET_BLIP_COLOUR(blip, color)
  native.invoke(
    Type.Void, 1616, false,
    arg(Type.Blip, blip),
    arg(Type.Int, color)
  )
end

-- void SET_BLIP_SECONDARY_COLOUR(Blip blip, int r, int g, int b) // 0x14892474891E09EB
--[[
Can be used to give blips any RGB colour with SET_BLIP_COLOUR(blip, 84).
--]]
function HUD.SET_BLIP_SECONDARY_COLOUR(blip, r, g, b)
  native.invoke(
    Type.Void, 1617, false,
    arg(Type.Blip, blip),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b)
  )
end

-- int GET_BLIP_COLOUR(Blip blip) // 0xDF729E8D20CF7327
function HUD.GET_BLIP_COLOUR(blip)
  return native.invoke(
    Type.Int, 1618, false,
    arg(Type.Blip, blip)
  )
end

-- int GET_BLIP_HUD_COLOUR(Blip blip) // 0x729B5F1EFBC0AAEE
function HUD.GET_BLIP_HUD_COLOUR(blip)
  return native.invoke(
    Type.Int, 1619, false,
    arg(Type.Blip, blip)
  )
end

-- BOOL IS_BLIP_SHORT_RANGE(Blip blip) // 0xDA5F8727EB75B926
function HUD.IS_BLIP_SHORT_RANGE(blip)
  return native.invoke(
    Type.Bool, 1620, false,
    arg(Type.Blip, blip)
  )
end

-- BOOL IS_BLIP_ON_MINIMAP(Blip blip) // 0xE41CA53051197A27
function HUD.IS_BLIP_ON_MINIMAP(blip)
  return native.invoke(
    Type.Bool, 1621, false,
    arg(Type.Blip, blip)
  )
end

-- BOOL DOES_BLIP_HAVE_GPS_ROUTE(Blip blip) // 0xDD2238F57B977751
function HUD.DOES_BLIP_HAVE_GPS_ROUTE(blip)
  return native.invoke(
    Type.Bool, 1622, false,
    arg(Type.Blip, blip)
  )
end

-- void SET_BLIP_HIDDEN_ON_LEGEND(Blip blip, BOOL toggle) // 0x54318C915D27E4CE
function HUD.SET_BLIP_HIDDEN_ON_LEGEND(blip, toggle)
  native.invoke(
    Type.Void, 1623, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLIP_HIGH_DETAIL(Blip blip, BOOL toggle) // 0xE2590BC29220CEBB
function HUD.SET_BLIP_HIGH_DETAIL(blip, toggle)
  native.invoke(
    Type.Void, 1624, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLIP_AS_MISSION_CREATOR_BLIP(Blip blip, BOOL toggle) // 0x24AC0137444F9FD5
function HUD.SET_BLIP_AS_MISSION_CREATOR_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1625, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_MISSION_CREATOR_BLIP(Blip blip) // 0x26F49BF3381D933D
function HUD.IS_MISSION_CREATOR_BLIP(blip)
  return native.invoke(
    Type.Bool, 1626, false,
    arg(Type.Blip, blip)
  )
end

-- Blip GET_NEW_SELECTED_MISSION_CREATOR_BLIP() // 0x5C90988E7C8E1AF4
function HUD.GET_NEW_SELECTED_MISSION_CREATOR_BLIP()
  return native.invoke(
    Type.Blip, 1627, false
  )
end

-- BOOL IS_HOVERING_OVER_MISSION_CREATOR_BLIP() // 0x4167EFE0527D706E
function HUD.IS_HOVERING_OVER_MISSION_CREATOR_BLIP()
  return native.invoke(
    Type.Bool, 1628, false
  )
end

-- void SHOW_START_MISSION_INSTRUCTIONAL_BUTTON(BOOL toggle) // 0xF1A6C18B35BCADE6
function HUD.SHOW_START_MISSION_INSTRUCTIONAL_BUTTON(toggle)
  native.invoke(
    Type.Void, 1629, false,
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_CONTACT_INSTRUCTIONAL_BUTTON(BOOL toggle) // 0xC772A904CDE1186F
function HUD.SHOW_CONTACT_INSTRUCTIONAL_BUTTON(toggle)
  native.invoke(
    Type.Void, 1630, false,
    arg(Type.Bool, toggle)
  )
end

-- void RELOAD_MAP_MENU() // 0x2916A928514C9827
function HUD.RELOAD_MAP_MENU()
  native.invoke(
    Type.Void, 1631, false
  )
end

-- void SET_BLIP_MARKER_LONG_DISTANCE(Any p0, Any p1) // 0xB552929B85FC27EC
function HUD.SET_BLIP_MARKER_LONG_DISTANCE(p0, p1)
  native.invoke(
    Type.Void, 1632, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_BLIP_FLASHES(Blip blip, BOOL toggle) // 0xB14552383D39CE3E
function HUD.SET_BLIP_FLASHES(blip, toggle)
  native.invoke(
    Type.Void, 1633, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLIP_FLASHES_ALTERNATE(Blip blip, BOOL toggle) // 0x2E8D9498C56DD0D1
function HUD.SET_BLIP_FLASHES_ALTERNATE(blip, toggle)
  native.invoke(
    Type.Void, 1634, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- BOOL IS_BLIP_FLASHING(Blip blip) // 0xA5E41FD83AD6CEF0
function HUD.IS_BLIP_FLASHING(blip)
  return native.invoke(
    Type.Bool, 1635, false,
    arg(Type.Blip, blip)
  )
end

-- void SET_BLIP_AS_SHORT_RANGE(Blip blip, BOOL toggle) // 0xBE8BE4FE60E27B72
--[[
Sets whether or not the specified blip should only be displayed when nearby, or on the minimap.
--]]
function HUD.SET_BLIP_AS_SHORT_RANGE(blip, toggle)
  native.invoke(
    Type.Void, 1636, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLIP_SCALE(Blip blip, float scale) // 0xD38744167B2FA257
function HUD.SET_BLIP_SCALE(blip, scale)
  native.invoke(
    Type.Void, 1637, false,
    arg(Type.Blip, blip),
    arg(Type.Float, scale)
  )
end

-- void SET_BLIP_SCALE_2D(Blip blip, float xScale, float yScale) // 0xCD6524439909C979
--[[
See https://imgur.com/a/lLkEsMN
--]]
function HUD.SET_BLIP_SCALE_2D(blip, xScale, yScale)
  native.invoke(
    Type.Void, 1638, false,
    arg(Type.Blip, blip),
    arg(Type.Float, xScale),
    arg(Type.Float, yScale)
  )
end

-- void SET_BLIP_PRIORITY(Blip blip, int priority) // 0xAE9FC9EF6A9FAC79
--[[
See this topic for more details : gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-35?p=1069477935
--]]
function HUD.SET_BLIP_PRIORITY(blip, priority)
  native.invoke(
    Type.Void, 1639, false,
    arg(Type.Blip, blip),
    arg(Type.Int, priority)
  )
end

-- void SET_BLIP_DISPLAY(Blip blip, int displayId) // 0x9029B2F3DA924928
--[[
Display Id behaviours:
0 = Doesn't show up, ever, anywhere.
1 = Doesn't show up, ever, anywhere.
2 = Shows on both main map and minimap. (Selectable on map)
3 = Shows on main map only. (Selectable on map)
4 = Shows on main map only. (Selectable on map)
5 = Shows on minimap only.
6 = Shows on both main map and minimap. (Selectable on map)
7 = Doesn't show up, ever, anywhere.
8 = Shows on both main map and minimap. (Not selectable on map)
9 = Shows on minimap only.
10 = Shows on both main map and minimap. (Not selectable on map)

Anything higher than 10 seems to be exactly the same as 10.
--]]
function HUD.SET_BLIP_DISPLAY(blip, displayId)
  native.invoke(
    Type.Void, 1640, false,
    arg(Type.Blip, blip),
    arg(Type.Int, displayId)
  )
end

-- void SET_BLIP_CATEGORY(Blip blip, int index) // 0x234CDD44D996FD9A
--[[
Example: https://i.imgur.com/skY6vAJ.png

Index:
1 = No distance shown in legend
2 = Distance shown in legend
7 = "Other Players" category, also shows distance in legend
10 = "Property" category
11 = "Owned Property" category

Any other value behaves like index = 1, index wraps around after 255
Blips with categories 7, 10 or 11 will all show under the specific categories listing in the map legend, regardless of sprite or name.
Legend entries:
7 = Other Players (BLIP_OTHPLYR)
10 = Property (BLIP_PROPCAT)
11 = Owned Property (BLIP_APARTCAT)

Category needs to be `7` in order for blip names to show on the expanded minimap when using DISPLAY_PLAYER_NAME_TAGS_ON_BLIPS.
--]]
function HUD.SET_BLIP_CATEGORY(blip, index)
  native.invoke(
    Type.Void, 1641, false,
    arg(Type.Blip, blip),
    arg(Type.Int, index)
  )
end

-- void REMOVE_BLIP(Blip* blip) // 0x86A652570E5F25DD
--[[
In the C++ SDK, this seems not to work-- the blip isn't removed immediately. I use it for saving cars.

E.g.:

Ped pped = PLAYER::PLAYER_PED_ID();
Vehicle v = PED::GET_VEHICLE_PED_IS_USING(pped);
Blip b = HUD::ADD_BLIP_FOR_ENTITY(v);

works fine.
But later attempting to delete it with:

Blip b = HUD::GET_BLIP_FROM_ENTITY(v);
if (HUD::DOES_BLIP_EXIST(b)) HUD::REMOVE_BLIP(&b);

doesn't work. And yes, doesn't work without the DOES_BLIP_EXIST check either. Also, if you attach multiple blips to the same thing (say, a vehicle), and that thing disappears, the blips randomly attach to other things (in my case, a vehicle).

Thus for me, HUD::REMOVE_BLIP(&b) only works if there's one blip, (in my case) the vehicle is marked as no longer needed, you drive away from it and it eventually despawns, AND there is only one blip attached to it. I never intentionally attach multiple blips but if the user saves the car, this adds a blip. Then if they delete it, it is supposed to remove the blip, but it doesn't. Then they can immediately save it again, causing another blip to re-appear.
-------------

Passing the address of the variable instead of the value works for me.
e.g.
int blip = HUD::ADD_BLIP_FOR_ENTITY(ped);
HUD::REMOVE_BLIP(&blip);


Remove blip will currently crash your game, just artificially remove the blip by setting the sprite to a id that is 'invisible'.
--]]
function HUD.REMOVE_BLIP(blip)
  native.invoke(
    Type.Void, 1642, false,
    ref(Type.Blip, blip)
  )
end

-- void SET_BLIP_AS_FRIENDLY(Blip blip, BOOL toggle) // 0x6F6F290102C02AB4
--[[
false for enemy
true for friendly
--]]
function HUD.SET_BLIP_AS_FRIENDLY(blip, toggle)
  native.invoke(
    Type.Void, 1643, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void PULSE_BLIP(Blip blip) // 0x742D6FD43115AF73
function HUD.PULSE_BLIP(blip)
  native.invoke(
    Type.Void, 1644, false,
    arg(Type.Blip, blip)
  )
end

-- void SHOW_NUMBER_ON_BLIP(Blip blip, int number) // 0xA3C0B359DCB848B6
function HUD.SHOW_NUMBER_ON_BLIP(blip, number)
  native.invoke(
    Type.Void, 1645, false,
    arg(Type.Blip, blip),
    arg(Type.Int, number)
  )
end

-- void HIDE_NUMBER_ON_BLIP(Blip blip) // 0x532CFF637EF80148
function HUD.HIDE_NUMBER_ON_BLIP(blip)
  native.invoke(
    Type.Void, 1646, false,
    arg(Type.Blip, blip)
  )
end

-- void SHOW_HEIGHT_ON_BLIP(Blip blip, BOOL toggle) // 0x75A16C3DA34F1245
function HUD.SHOW_HEIGHT_ON_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1647, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_TICK_ON_BLIP(Blip blip, BOOL toggle) // 0x74513EA3E505181E
--[[
Adds a green checkmark on top of a blip.
--]]
function HUD.SHOW_TICK_ON_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1648, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_GOLD_TICK_ON_BLIP(Blip blip, BOOL toggle) // 0xCAC2031EBF79B1A8
--[[
Adds a orange checkmark on top of a given blip handle: https://imgur.com/a/aw5OTMF
_SHOW_FRIEND_INDICATOR_ON_BLIP* - _SHOW_HEADING_INDICATOR_ON_BLIP*
--]]
function HUD.SHOW_GOLD_TICK_ON_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1649, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_FOR_SALE_ICON_ON_BLIP(Blip blip, BOOL toggle) // 0x19BD6E3C0E16A8FA
function HUD.SHOW_FOR_SALE_ICON_ON_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1650, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_HEADING_INDICATOR_ON_BLIP(Blip blip, BOOL toggle) // 0x5FBCA48327B914DF
--[[
Adds the GTA: Online player heading indicator to a blip.
--]]
function HUD.SHOW_HEADING_INDICATOR_ON_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1651, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_OUTLINE_INDICATOR_ON_BLIP(Blip blip, BOOL toggle) // 0xB81656BC81FE24D1
--[[
Highlights a blip by a cyan color circle.

Color can be changed with SET_BLIP_SECONDARY_COLOUR
--]]
function HUD.SHOW_OUTLINE_INDICATOR_ON_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1652, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_FRIEND_INDICATOR_ON_BLIP(Blip blip, BOOL toggle) // 0x23C3EB807312F01A
--[[
Highlights a blip by a half cyan circle on the right side of the blip. https://i.imgur.com/FrV9M4e.png
.Indicating that that player is a friend (in GTA:O). This color can not be changed.
To toggle the left side (crew member indicator) of the half circle around the blip, use: `SHOW_CREW_INDICATOR_ON_BLIP`
--]]
function HUD.SHOW_FRIEND_INDICATOR_ON_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1653, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_CREW_INDICATOR_ON_BLIP(Blip blip, BOOL toggle) // 0xDCFB5D4DB8BF367E
--[[
Enables or disables the blue half circle https://i.imgur.com/iZes9Ec.png around the specified blip on the left side of the blip. This is used to indicate that the player is in your crew in GTA:O. Color is changeable by using `SET_BLIP_SECONDARY_COLOUR`.
--]]
function HUD.SHOW_CREW_INDICATOR_ON_BLIP(blip, toggle)
  native.invoke(
    Type.Void, 1654, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLIP_EXTENDED_HEIGHT_THRESHOLD(Blip blip, BOOL toggle) // 0xC4278F70131BAA6D
--[[
Must be toggled before being queued for animation
--]]
function HUD.SET_BLIP_EXTENDED_HEIGHT_THRESHOLD(blip, toggle)
  native.invoke(
    Type.Void, 1655, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLIP_SHORT_HEIGHT_THRESHOLD(Any p0, Any p1) // 0x4B5B620C9B59ED34
function HUD.SET_BLIP_SHORT_HEIGHT_THRESHOLD(p0, p1)
  native.invoke(
    Type.Void, 1656, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SET_BLIP_USE_HEIGHT_INDICATOR_ON_EDGE(Blip blip, Any p1) // 0x2C9F302398E13141
function HUD.SET_BLIP_USE_HEIGHT_INDICATOR_ON_EDGE(blip, p1)
  native.invoke(
    Type.Void, 1657, false,
    arg(Type.Blip, blip),
    arg(Type.Any, p1)
  )
end

-- void SET_BLIP_AS_MINIMAL_ON_EDGE(Blip blip, BOOL toggle) // 0x2B6D467DAB714E8D
--[[
Makes a blip go small when off the minimap.
--]]
function HUD.SET_BLIP_AS_MINIMAL_ON_EDGE(blip, toggle)
  native.invoke(
    Type.Void, 1658, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SET_RADIUS_BLIP_EDGE(Blip blip, BOOL toggle) // 0x25615540D894B814
--[[
Enabling this on a radius blip will make it outline only. See https://cdn.discordapp.com/attachments/553235301632573459/575132227935928330/unknown.png
--]]
function HUD.SET_RADIUS_BLIP_EDGE(blip, toggle)
  native.invoke(
    Type.Void, 1659, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- BOOL DOES_BLIP_EXIST(Blip blip) // 0xA6DB27D19ECBB7DA
function HUD.DOES_BLIP_EXIST(blip)
  return native.invoke(
    Type.Bool, 1660, false,
    arg(Type.Blip, blip)
  )
end

-- void SET_WAYPOINT_OFF() // 0xA7E4E2D361C2627F
--[[
This native removes the current waypoint from the map.

Example:
C#:
Function.Call(Hash.SET_WAYPOINT_OFF);

C++:
HUD::SET_WAYPOINT_OFF();
--]]
function HUD.SET_WAYPOINT_OFF()
  native.invoke(
    Type.Void, 1661, false
  )
end

-- void DELETE_WAYPOINTS_FROM_THIS_PLAYER() // 0xD8E694757BCEA8E9
function HUD.DELETE_WAYPOINTS_FROM_THIS_PLAYER()
  native.invoke(
    Type.Void, 1662, false
  )
end

-- void REFRESH_WAYPOINT() // 0x81FA173F170560D1
function HUD.REFRESH_WAYPOINT()
  native.invoke(
    Type.Void, 1663, false
  )
end

-- BOOL IS_WAYPOINT_ACTIVE() // 0x1DD1F58F493F1DA5
function HUD.IS_WAYPOINT_ACTIVE()
  return native.invoke(
    Type.Bool, 1664, false
  )
end

-- void SET_NEW_WAYPOINT(float x, float y) // 0xFE43368D2AA4F2FC
function HUD.SET_NEW_WAYPOINT(x, y)
  native.invoke(
    Type.Void, 1665, false,
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- void SET_BLIP_BRIGHT(Blip blip, BOOL toggle) // 0xB203913733F27884
function HUD.SET_BLIP_BRIGHT(blip, toggle)
  native.invoke(
    Type.Void, 1666, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle)
  )
end

-- void SET_BLIP_SHOW_CONE(Blip blip, BOOL toggle, int hudColorIndex) // 0x13127EC3665E8EE1
--[[
As of b2189, the third parameter sets the color of the cone (before b2189 it was ignored). Note that it uses HUD colors, not blip colors.
--]]
function HUD.SET_BLIP_SHOW_CONE(blip, toggle, hudColorIndex)
  native.invoke(
    Type.Void, 1667, false,
    arg(Type.Blip, blip),
    arg(Type.Bool, toggle),
    arg(Type.Int, hudColorIndex)
  )
end

-- void REMOVE_COP_BLIP_FROM_PED(Ped ped) // 0xC594B315EDF2D4AF
--[[
Interesting fact: A hash collision for this is RESET_JETPACK_MODEL_SETTINGS
--]]
function HUD.REMOVE_COP_BLIP_FROM_PED(ped)
  native.invoke(
    Type.Void, 1668, false,
    arg(Type.Ped, ped)
  )
end

-- void SETUP_FAKE_CONE_DATA(Blip blip, float p1, float p2, float p3, float p4, float p5, float p6, Any p7, int p8) // 0xF83D0FEBE75E62C9
function HUD.SETUP_FAKE_CONE_DATA(blip, p1, p2, p3, p4, p5, p6, p7, p8)
  native.invoke(
    Type.Void, 1669, false,
    arg(Type.Blip, blip),
    arg(Type.Float, p1),
    arg(Type.Float, p2),
    arg(Type.Float, p3),
    arg(Type.Float, p4),
    arg(Type.Float, p5),
    arg(Type.Float, p6),
    arg(Type.Any, p7),
    arg(Type.Int, p8)
  )
end

-- void REMOVE_FAKE_CONE_DATA(Blip blip) // 0x35A3CD97B2C0A6D2
function HUD.REMOVE_FAKE_CONE_DATA(blip)
  native.invoke(
    Type.Void, 1670, false,
    arg(Type.Blip, blip)
  )
end

-- void CLEAR_FAKE_CONE_ARRAY() // 0x8410C5E0CD847B9D
function HUD.CLEAR_FAKE_CONE_ARRAY()
  native.invoke(
    Type.Void, 1671, false
  )
end

-- void _SET_BLIP_GPS_ROUTE_DISPLAY_DISTANCE(Blip blip, int blipChangeParam46, BOOL blipChangeParam47) // 0x25D984CFB64ED6DE
--[[
Applies to new eBlipParams _BLIP_CHANGE_46* and _BLIP_CHANGE_47*
--]]
function HUD._SET_BLIP_GPS_ROUTE_DISPLAY_DISTANCE(blip, blipChangeParam46, blipChangeParam47)
  native.invoke(
    Type.Void, 1672, false,
    arg(Type.Blip, blip),
    arg(Type.Int, blipChangeParam46),
    arg(Type.Bool, blipChangeParam47)
  )
end

-- BOOL SET_MINIMAP_COMPONENT(int componentId, BOOL toggle, int overrideColor) // 0x75A9A10948D1DEA6
--[[
This native is used to colorize certain map components like the army base at the top of the map.
p2 appears to be always -1. If p2 is -1 then native wouldn't change the color. See https://gfycat.com/SkinnyPinkChupacabra
--]]
function HUD.SET_MINIMAP_COMPONENT(componentId, toggle, overrideColor)
  return native.invoke(
    Type.Bool, 1673, false,
    arg(Type.Int, componentId),
    arg(Type.Bool, toggle),
    arg(Type.Int, overrideColor)
  )
end

-- void SET_MINIMAP_SONAR_SWEEP(BOOL toggle) // 0x6B50FC8749632EC1
function HUD.SET_MINIMAP_SONAR_SWEEP(toggle)
  native.invoke(
    Type.Void, 1674, false,
    arg(Type.Bool, toggle)
  )
end

-- void SHOW_ACCOUNT_PICKER() // 0x60E892BA4F5BDCA4
function HUD.SHOW_ACCOUNT_PICKER()
  native.invoke(
    Type.Void, 1675, false
  )
end

-- Blip GET_MAIN_PLAYER_BLIP_ID() // 0xDCD4EC3F419D02FA
function HUD.GET_MAIN_PLAYER_BLIP_ID()
  return native.invoke(
    Type.Blip, 1676, false
  )
end

-- void SET_PM_WARNINGSCREEN_ACTIVE(BOOL p0) // 0x41350B4FC28E3941
function HUD.SET_PM_WARNINGSCREEN_ACTIVE(p0)
  native.invoke(
    Type.Void, 1677, false,
    arg(Type.Bool, p0)
  )
end

-- void HIDE_LOADING_ON_FADE_THIS_FRAME() // 0x4B0311D3CDC4648F
function HUD.HIDE_LOADING_ON_FADE_THIS_FRAME()
  native.invoke(
    Type.Void, 1678, false
  )
end

-- void SET_RADAR_AS_INTERIOR_THIS_FRAME(Hash interior, float x, float y, int z, int zoom) // 0x59E727A1C9D3E31A
--[[
List of interior hashes: https://pastebin.com/1FUyXNqY
Not for every interior zoom > 0 available.
--]]
function HUD.SET_RADAR_AS_INTERIOR_THIS_FRAME(interior, x, y, z, zoom)
  native.invoke(
    Type.Void, 1679, false,
    arg(Type.Hash, interior),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Int, z),
    arg(Type.Int, zoom)
  )
end

-- void SET_INSIDE_VERY_SMALL_INTERIOR(BOOL toggle) // 0x504DFE62A1692296
function HUD.SET_INSIDE_VERY_SMALL_INTERIOR(toggle)
  native.invoke(
    Type.Void, 1680, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_INSIDE_VERY_LARGE_INTERIOR(BOOL toggle) // 0x7EC8ABA5E74B3D7A
function HUD.SET_INSIDE_VERY_LARGE_INTERIOR(toggle)
  native.invoke(
    Type.Void, 1681, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_RADAR_AS_EXTERIOR_THIS_FRAME() // 0xE81B7D2A3DAB2D81
function HUD.SET_RADAR_AS_EXTERIOR_THIS_FRAME()
  native.invoke(
    Type.Void, 1682, false
  )
end

-- void SET_FAKE_PAUSEMAP_PLAYER_POSITION_THIS_FRAME(float x, float y) // 0x77E2DD177910E1CF
--[[
Sets the position of the arrow icon representing the player on both the minimap and world map.

Too bad this wouldn't work over the network (obviously not). Could spoof where we would be.
--]]
function HUD.SET_FAKE_PAUSEMAP_PLAYER_POSITION_THIS_FRAME(x, y)
  native.invoke(
    Type.Void, 1683, false,
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- void SET_FAKE_GPS_PLAYER_POSITION_THIS_FRAME(float x, float y, Any p2) // 0xA17784FCA9548D15
--[[
p2 maybe z float?
--]]
function HUD.SET_FAKE_GPS_PLAYER_POSITION_THIS_FRAME(x, y, p2)
  native.invoke(
    Type.Void, 1684, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Any, p2)
  )
end

-- BOOL IS_PAUSEMAP_IN_INTERIOR_MODE() // 0x9049FE339D5F6F6F
function HUD.IS_PAUSEMAP_IN_INTERIOR_MODE()
  return native.invoke(
    Type.Bool, 1685, false
  )
end

-- void HIDE_MINIMAP_EXTERIOR_MAP_THIS_FRAME() // 0x5FBAE526203990C9
function HUD.HIDE_MINIMAP_EXTERIOR_MAP_THIS_FRAME()
  native.invoke(
    Type.Void, 1686, false
  )
end

-- void HIDE_MINIMAP_INTERIOR_MAP_THIS_FRAME() // 0x20FE7FDFEEAD38C0
function HUD.HIDE_MINIMAP_INTERIOR_MAP_THIS_FRAME()
  native.invoke(
    Type.Void, 1687, false
  )
end

-- void SET_USE_ISLAND_MAP(BOOL toggle) // 0x5E1460624D194A38
--[[
Toggles the Cayo Perico map.
--]]
function HUD.SET_USE_ISLAND_MAP(toggle)
  native.invoke(
    Type.Void, 1688, false,
    arg(Type.Bool, toggle)
  )
end

-- void _SET_PAUSE_EXTERIOR_RENDERING_WHILE_IN_INTERIOR() // 0x35CCE12EAECB4A51
function HUD._SET_PAUSE_EXTERIOR_RENDERING_WHILE_IN_INTERIOR()
  native.invoke(
    Type.Void, 1689, false
  )
end

-- void DONT_TILT_MINIMAP_THIS_FRAME() // 0x6D14BFDC33B34F55
--[[
When calling this, the current frame will have the players "arrow icon" be focused on the dead center of the radar.
--]]
function HUD.DONT_TILT_MINIMAP_THIS_FRAME()
  native.invoke(
    Type.Void, 1690, false
  )
end

-- void DONT_ZOOM_MINIMAP_WHEN_RUNNING_THIS_FRAME() // 0x89DA85D949CE57A0
function HUD.DONT_ZOOM_MINIMAP_WHEN_RUNNING_THIS_FRAME()
  native.invoke(
    Type.Void, 1691, false
  )
end

-- void DONT_ZOOM_MINIMAP_WHEN_SNIPING_THIS_FRAME() // 0x55F5A5F07134DE60
function HUD.DONT_ZOOM_MINIMAP_WHEN_SNIPING_THIS_FRAME()
  native.invoke(
    Type.Void, 1692, false
  )
end

-- void SET_WIDESCREEN_FORMAT(Any p0) // 0xC3B07BA00A83B0F1
function HUD.SET_WIDESCREEN_FORMAT(p0)
  native.invoke(
    Type.Void, 1693, false,
    arg(Type.Any, p0)
  )
end

-- void DISPLAY_AREA_NAME(BOOL toggle) // 0x276B6CE369C33678
function HUD.DISPLAY_AREA_NAME(toggle)
  native.invoke(
    Type.Void, 1694, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISPLAY_CASH(BOOL toggle) // 0x96DEC8D5430208B7
--[[
"DISPLAY_CASH(false);" makes the cash amount render on the screen when appropriate
"DISPLAY_CASH(true);" disables cash amount rendering
--]]
function HUD.DISPLAY_CASH(toggle)
  native.invoke(
    Type.Void, 1695, false,
    arg(Type.Bool, toggle)
  )
end

-- void USE_FAKE_MP_CASH(BOOL toggle) // 0x170F541E1CADD1DE
--[[
Related to displaying cash on the HUD
Always called before HUD::CHANGE_FAKE_MP_CASH in decompiled scripts
--]]
function HUD.USE_FAKE_MP_CASH(toggle)
  native.invoke(
    Type.Void, 1696, false,
    arg(Type.Bool, toggle)
  )
end

-- void CHANGE_FAKE_MP_CASH(int cash, int bank) // 0x0772DF77852C2E30
--[[
Displays cash change notifications on HUD.
--]]
function HUD.CHANGE_FAKE_MP_CASH(cash, bank)
  native.invoke(
    Type.Void, 1697, false,
    arg(Type.Int, cash),
    arg(Type.Int, bank)
  )
end

-- void DISPLAY_AMMO_THIS_FRAME(BOOL display) // 0xA5E78BA2B1331C55
function HUD.DISPLAY_AMMO_THIS_FRAME(display)
  native.invoke(
    Type.Void, 1698, false,
    arg(Type.Bool, display)
  )
end

-- void DISPLAY_SNIPER_SCOPE_THIS_FRAME() // 0x73115226F4814E62
--[[
Displays the crosshair for this frame.
--]]
function HUD.DISPLAY_SNIPER_SCOPE_THIS_FRAME()
  native.invoke(
    Type.Void, 1699, false
  )
end

-- void HIDE_HUD_AND_RADAR_THIS_FRAME() // 0x719FF505F097FD20
--[[
Hides HUD and radar this frame and prohibits switching to other weapons (or accessing the weapon wheel)
--]]
function HUD.HIDE_HUD_AND_RADAR_THIS_FRAME()
  native.invoke(
    Type.Void, 1700, false
  )
end

-- void ALLOW_DISPLAY_OF_MULTIPLAYER_CASH_TEXT(BOOL allow) // 0xE67C6DFD386EA5E7
--[[
Controls whether to display 'Cash'/'Bank' next to the money balance HUD in Multiplayer (https://i.imgur.com/MiYUtNl.png)
--]]
function HUD.ALLOW_DISPLAY_OF_MULTIPLAYER_CASH_TEXT(allow)
  native.invoke(
    Type.Void, 1701, false,
    arg(Type.Bool, allow)
  )
end

-- void SET_MULTIPLAYER_WALLET_CASH() // 0xC2D15BEF167E27BC
function HUD.SET_MULTIPLAYER_WALLET_CASH()
  native.invoke(
    Type.Void, 1702, false
  )
end

-- void REMOVE_MULTIPLAYER_WALLET_CASH() // 0x95CF81BD06EE1887
function HUD.REMOVE_MULTIPLAYER_WALLET_CASH()
  native.invoke(
    Type.Void, 1703, false
  )
end

-- void SET_MULTIPLAYER_BANK_CASH() // 0xDD21B55DF695CD0A
function HUD.SET_MULTIPLAYER_BANK_CASH()
  native.invoke(
    Type.Void, 1704, false
  )
end

-- void REMOVE_MULTIPLAYER_BANK_CASH() // 0xC7C6789AA1CFEDD0
function HUD.REMOVE_MULTIPLAYER_BANK_CASH()
  native.invoke(
    Type.Void, 1705, false
  )
end

-- void SET_MULTIPLAYER_HUD_CASH(int p0, BOOL p1) // 0xFD1D220394BCB824
--[[
This native does absolutely nothing, just a nullsub
--]]
function HUD.SET_MULTIPLAYER_HUD_CASH(p0, p1)
  native.invoke(
    Type.Void, 1706, false,
    arg(Type.Int, p0),
    arg(Type.Bool, p1)
  )
end

-- void REMOVE_MULTIPLAYER_HUD_CASH() // 0x968F270E39141ECA
--[[
Removes multiplayer cash hud each frame
--]]
function HUD.REMOVE_MULTIPLAYER_HUD_CASH()
  native.invoke(
    Type.Void, 1707, false
  )
end

-- void HIDE_HELP_TEXT_THIS_FRAME() // 0xD46923FC481CA285
function HUD.HIDE_HELP_TEXT_THIS_FRAME()
  native.invoke(
    Type.Void, 1708, false
  )
end

-- BOOL IS_IME_IN_PROGRESS() // 0x801879A9B4F4B2FB
function HUD.IS_IME_IN_PROGRESS()
  return native.invoke(
    Type.Bool, 1709, false
  )
end

-- void DISPLAY_HELP_TEXT_THIS_FRAME(const char* message, BOOL p1) // 0x960C9FF8F616E41C
--[[
The messages are localized strings.
Examples:
"No_bus_money"
"Enter_bus"
"Tour_help"
"LETTERS_HELP2"
"Dummy"

**The bool appears to always be false (if it even is a bool, as it's represented by a zero)**
--------
p1 doesn't seem to make a difference, regardless of the state it's in. 


picture of where on the screen this is displayed? 
--]]
function HUD.DISPLAY_HELP_TEXT_THIS_FRAME(message, p1)
  native.invoke(
    Type.Void, 1710, false,
    arg(Type.String, message),
    arg(Type.Bool, p1)
  )
end

-- void HUD_FORCE_WEAPON_WHEEL(BOOL show) // 0xEB354E5376BC81A7
--[[
Forces the weapon wheel to show/hide.
--]]
function HUD.HUD_FORCE_WEAPON_WHEEL(show)
  native.invoke(
    Type.Void, 1711, false,
    arg(Type.Bool, show)
  )
end

-- void HUD_FORCE_SPECIAL_VEHICLE_WEAPON_WHEEL() // 0x488043841BBE156F
--[[
Displays "blazer_wheels_up" and "blazer_wheels_down" "weapon" icons when switching between jetski and quadbike modes. Works only on vehicles using "VEHICLE_TYPE_AMPHIBIOUS_QUADBIKE" vehicle type. Needs to be called every time prior to switching modes, otherwise the icon will only appear when switching modes once.
--]]
function HUD.HUD_FORCE_SPECIAL_VEHICLE_WEAPON_WHEEL()
  native.invoke(
    Type.Void, 1712, false
  )
end

-- void HUD_SUPPRESS_WEAPON_WHEEL_RESULTS_THIS_FRAME() // 0x0AFC4AF510774B47
--[[
Calling this each frame, stops the player from receiving a weapon via the weapon wheel.
--]]
function HUD.HUD_SUPPRESS_WEAPON_WHEEL_RESULTS_THIS_FRAME()
  native.invoke(
    Type.Void, 1713, false
  )
end

-- Hash HUD_GET_WEAPON_WHEEL_CURRENTLY_HIGHLIGHTED() // 0xA48931185F0536FE
--[[
Returns the weapon hash to the selected/highlighted weapon in the wheel
--]]
function HUD.HUD_GET_WEAPON_WHEEL_CURRENTLY_HIGHLIGHTED()
  return native.invoke(
    Type.Hash, 1714, false
  )
end

-- void HUD_SET_WEAPON_WHEEL_TOP_SLOT(Hash weaponHash) // 0x72C1056D678BB7D8
--[[
Set the active slotIndex in the wheel weapon to the slot associated with the provided Weapon hash
--]]
function HUD.HUD_SET_WEAPON_WHEEL_TOP_SLOT(weaponHash)
  native.invoke(
    Type.Void, 1715, false,
    arg(Type.Hash, weaponHash)
  )
end

-- Hash HUD_GET_WEAPON_WHEEL_TOP_SLOT(int weaponTypeIndex) // 0xA13E93403F26C812
--[[
Returns the weapon hash active in a specific weapon wheel slotList
--]]
function HUD.HUD_GET_WEAPON_WHEEL_TOP_SLOT(weaponTypeIndex)
  return native.invoke(
    Type.Hash, 1716, false,
    arg(Type.Int, weaponTypeIndex)
  )
end

-- void HUD_SHOWING_CHARACTER_SWITCH_SELECTION(BOOL toggle) // 0x14C9FDCC41F81F63
--[[
Sets a global that disables many weapon input tasks (shooting, aiming, etc.). Does not work with vehicle weapons, only used in selector.ysc
--]]
function HUD.HUD_SHOWING_CHARACTER_SWITCH_SELECTION(toggle)
  native.invoke(
    Type.Void, 1717, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_GPS_FLAGS(int p0, float p1) // 0x5B440763A4C8D15B
--[[
Only the script that originally called SET_GPS_FLAGS can set them again. Another script cannot set the flags, until the first script that called it has called CLEAR_GPS_FLAGS.

Doesn't seem like the flags are actually read by the game at all.
--]]
function HUD.SET_GPS_FLAGS(p0, p1)
  native.invoke(
    Type.Void, 1718, false,
    arg(Type.Int, p0),
    arg(Type.Float, p1)
  )
end

-- void CLEAR_GPS_FLAGS() // 0x21986729D6A3A830
--[[
Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.

Doesn't seem like the flags are actually read by the game at all.
--]]
function HUD.CLEAR_GPS_FLAGS()
  native.invoke(
    Type.Void, 1719, false
  )
end

-- void SET_RACE_TRACK_RENDER(BOOL toggle) // 0x1EAC5F91BCBC5073
function HUD.SET_RACE_TRACK_RENDER(toggle)
  native.invoke(
    Type.Void, 1720, false,
    arg(Type.Bool, toggle)
  )
end

-- void CLEAR_GPS_RACE_TRACK() // 0x7AA5B4CE533C858B
--[[
Does the same as SET_RACE_TRACK_RENDER(false);
--]]
function HUD.CLEAR_GPS_RACE_TRACK()
  native.invoke(
    Type.Void, 1721, false
  )
end

-- void START_GPS_CUSTOM_ROUTE(int hudColor, BOOL displayOnFoot, BOOL followPlayer) // 0xDB34E8D56FC13B08
--[[
Starts a new GPS custom-route, allowing you to plot lines on the map.
Lines are drawn directly between points.
The GPS custom route works like the GPS multi route, except it does not follow roads.
Example result: https://i.imgur.com/BDm5pzt.png
hudColor: The HUD color of the GPS path.
displayOnFoot: Draws the path regardless if the player is in a vehicle or not.
followPlayer: Draw the path partially between the previous and next point based on the players position between them. When false, the GPS appears to not disappear after the last leg is completed.
--]]
function HUD.START_GPS_CUSTOM_ROUTE(hudColor, displayOnFoot, followPlayer)
  native.invoke(
    Type.Void, 1722, false,
    arg(Type.Int, hudColor),
    arg(Type.Bool, displayOnFoot),
    arg(Type.Bool, followPlayer)
  )
end

-- void ADD_POINT_TO_GPS_CUSTOM_ROUTE(float x, float y, float z) // 0x311438A071DD9B1A
function HUD.ADD_POINT_TO_GPS_CUSTOM_ROUTE(x, y, z)
  native.invoke(
    Type.Void, 1723, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_GPS_CUSTOM_ROUTE_RENDER(BOOL toggle, int radarThickness, int mapThickness) // 0x900086F371220B6F
--[[
radarThickness: The width of the GPS route on the radar
mapThickness: The width of the GPS route on the map
--]]
function HUD.SET_GPS_CUSTOM_ROUTE_RENDER(toggle, radarThickness, mapThickness)
  native.invoke(
    Type.Void, 1724, false,
    arg(Type.Bool, toggle),
    arg(Type.Int, radarThickness),
    arg(Type.Int, mapThickness)
  )
end

-- void CLEAR_GPS_CUSTOM_ROUTE() // 0xE6DE0561D9232A64
function HUD.CLEAR_GPS_CUSTOM_ROUTE()
  native.invoke(
    Type.Void, 1725, false
  )
end

-- void START_GPS_MULTI_ROUTE(int hudColor, BOOL routeFromPlayer, BOOL displayOnFoot) // 0x3D3D15AF7BCAAF83
--[[
Starts a new GPS multi-route, allowing you to create custom GPS paths.
GPS functions like the waypoint, except it can contain multiple points it's forced to go through.
Once the player has passed a point, the GPS will no longer force its path through it.

Works independently from the player-placed waypoint and blip routes.
Example result: https://i.imgur.com/ZZHQatX.png
hudColor: The HUD color of the GPS path.
routeFromPlayer: Makes the GPS draw a path from the player to the next point, rather than the original path from the previous point.
displayOnFoot: Draws the GPS path regardless if the player is in a vehicle or not.
--]]
function HUD.START_GPS_MULTI_ROUTE(hudColor, routeFromPlayer, displayOnFoot)
  native.invoke(
    Type.Void, 1726, false,
    arg(Type.Int, hudColor),
    arg(Type.Bool, routeFromPlayer),
    arg(Type.Bool, displayOnFoot)
  )
end

-- void ADD_POINT_TO_GPS_MULTI_ROUTE(float x, float y, float z) // 0xA905192A6781C41B
function HUD.ADD_POINT_TO_GPS_MULTI_ROUTE(x, y, z)
  native.invoke(
    Type.Void, 1727, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_GPS_MULTI_ROUTE_RENDER(BOOL toggle) // 0x3DDA37128DD1ACA8
function HUD.SET_GPS_MULTI_ROUTE_RENDER(toggle)
  native.invoke(
    Type.Void, 1728, false,
    arg(Type.Bool, toggle)
  )
end

-- void CLEAR_GPS_MULTI_ROUTE() // 0x67EEDEA1B9BAFD94
--[[
Does the same as SET_GPS_MULTI_ROUTE_RENDER(false);
--]]
function HUD.CLEAR_GPS_MULTI_ROUTE()
  native.invoke(
    Type.Void, 1729, false
  )
end

-- void CLEAR_GPS_PLAYER_WAYPOINT() // 0xFF4FB7C8CDFA3DA7
function HUD.CLEAR_GPS_PLAYER_WAYPOINT()
  native.invoke(
    Type.Void, 1730, false
  )
end

-- void SET_GPS_FLASHES(BOOL toggle) // 0x320D0E0D936A0E9B
function HUD.SET_GPS_FLASHES(toggle)
  native.invoke(
    Type.Void, 1731, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_PLAYER_ICON_COLOUR(int color) // 0x7B21E0BB01E8224A
function HUD.SET_PLAYER_ICON_COLOUR(color)
  native.invoke(
    Type.Void, 1732, false,
    arg(Type.Int, color)
  )
end

-- void FLASH_MINIMAP_DISPLAY() // 0xF2DD778C22B15BDA
--[[
adds a short flash to the Radar/Minimap
Usage: UI.FLASH_MINIMAP_DISPLAY
--]]
function HUD.FLASH_MINIMAP_DISPLAY()
  native.invoke(
    Type.Void, 1733, false
  )
end

-- void FLASH_MINIMAP_DISPLAY_WITH_COLOR(int hudColorIndex) // 0x6B1DE27EE78E6A19
function HUD.FLASH_MINIMAP_DISPLAY_WITH_COLOR(hudColorIndex)
  native.invoke(
    Type.Void, 1734, false,
    arg(Type.Int, hudColorIndex)
  )
end

-- void TOGGLE_STEALTH_RADAR(BOOL toggle) // 0x6AFDFB93754950C7
function HUD.TOGGLE_STEALTH_RADAR(toggle)
  native.invoke(
    Type.Void, 1735, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_MINIMAP_IN_SPECTATOR_MODE(BOOL toggle, Ped ped) // 0x1A5CD7752DD28CD3
function HUD.SET_MINIMAP_IN_SPECTATOR_MODE(toggle, ped)
  native.invoke(
    Type.Void, 1736, false,
    arg(Type.Bool, toggle),
    arg(Type.Ped, ped)
  )
end

-- void SET_MISSION_NAME(BOOL p0, const char* name) // 0x5F28ECF5FC84772F
function HUD.SET_MISSION_NAME(p0, name)
  native.invoke(
    Type.Void, 1737, false,
    arg(Type.Bool, p0),
    arg(Type.String, name)
  )
end

-- void SET_MISSION_NAME_FOR_UGC_MISSION(BOOL p0, const char* name) // 0xE45087D85F468BC2
function HUD.SET_MISSION_NAME_FOR_UGC_MISSION(p0, name)
  native.invoke(
    Type.Void, 1738, false,
    arg(Type.Bool, p0),
    arg(Type.String, name)
  )
end

-- void SET_DESCRIPTION_FOR_UGC_MISSION_EIGHT_STRINGS(BOOL p0, const char* p1, const char* p2, const char* p3, const char* p4, const char* p5, const char* p6, const char* p7, const char* p8) // 0x817B86108EB94E51
function HUD.SET_DESCRIPTION_FOR_UGC_MISSION_EIGHT_STRINGS(p0, p1, p2, p3, p4, p5, p6, p7, p8)
  native.invoke(
    Type.Void, 1739, false,
    arg(Type.Bool, p0),
    arg(Type.String, p1),
    arg(Type.String, p2),
    arg(Type.String, p3),
    arg(Type.String, p4),
    arg(Type.String, p5),
    arg(Type.String, p6),
    arg(Type.String, p7),
    arg(Type.String, p8)
  )
end

-- void SET_MINIMAP_BLOCK_WAYPOINT(BOOL toggle) // 0x58FADDED207897DC
function HUD.SET_MINIMAP_BLOCK_WAYPOINT(toggle)
  native.invoke(
    Type.Void, 1740, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_MINIMAP_IN_PROLOGUE(BOOL toggle) // 0x9133955F1A2DA957
--[[
Toggles the North Yankton map
--]]
function HUD.SET_MINIMAP_IN_PROLOGUE(toggle)
  native.invoke(
    Type.Void, 1741, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_MINIMAP_HIDE_FOW(BOOL toggle) // 0xF8DEE0A5600CBB93
--[[
If true, the entire map will be revealed.

FOW = Fog of War
--]]
function HUD.SET_MINIMAP_HIDE_FOW(toggle)
  native.invoke(
    Type.Void, 1742, false,
    arg(Type.Bool, toggle)
  )
end

-- float GET_MINIMAP_FOW_DISCOVERY_RATIO() // 0xE0130B41D3CF4574
function HUD.GET_MINIMAP_FOW_DISCOVERY_RATIO()
  return native.invoke(
    Type.Float, 1743, false
  )
end

-- BOOL GET_MINIMAP_FOW_COORDINATE_IS_REVEALED(float x, float y, float z) // 0x6E31B91145873922
function HUD.GET_MINIMAP_FOW_COORDINATE_IS_REVEALED(x, y, z)
  return native.invoke(
    Type.Bool, 1744, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_MINIMAP_FOW_DO_NOT_UPDATE(BOOL p0) // 0x62E849B7EB28E770
function HUD.SET_MINIMAP_FOW_DO_NOT_UPDATE(p0)
  native.invoke(
    Type.Void, 1745, false,
    arg(Type.Bool, p0)
  )
end

-- void SET_MINIMAP_FOW_REVEAL_COORDINATE(float x, float y, float z) // 0x0923DBF87DFF735E
--[[
Up to eight coordinates may be revealed per frame
--]]
function HUD.SET_MINIMAP_FOW_REVEAL_COORDINATE(x, y, z)
  native.invoke(
    Type.Void, 1746, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_MINIMAP_GOLF_COURSE(int hole) // 0x71BDB63DBAF8DA59
--[[
Not much is known so far on what it does _exactly_.
All I know for sure is that it draws the specified hole ID on the pause menu map as well as on the mini-map/radar. This native also seems to change some other things related to the pause menu map's behaviour, for example: you can no longer set waypoints, the pause menu map starts up in a 'zoomed in' state. This native does not need to be executed every tick.
You need to center the minimap manually as well as change/lock it's zoom and angle in order for it to appear correctly on the minimap.
You'll also need to use the `GOLF` scaleform in order to get the correct minmap border to show up.
Use `0x35edd5b2e3ff01c0` to reset the map when you no longer want to display any golf holes (you still need to unlock zoom, position and angle of the radar manually after calling this).
--]]
function HUD.SET_MINIMAP_GOLF_COURSE(hole)
  native.invoke(
    Type.Void, 1747, false,
    arg(Type.Int, hole)
  )
end

-- void SET_MINIMAP_GOLF_COURSE_OFF() // 0x35EDD5B2E3FF01C0
function HUD.SET_MINIMAP_GOLF_COURSE_OFF()
  native.invoke(
    Type.Void, 1748, false
  )
end

-- void LOCK_MINIMAP_ANGLE(int angle) // 0x299FAEBB108AE05B
--[[
Locks the minimap to the specified angle in integer degrees.

angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.
--]]
function HUD.LOCK_MINIMAP_ANGLE(angle)
  native.invoke(
    Type.Void, 1749, false,
    arg(Type.Int, angle)
  )
end

-- void UNLOCK_MINIMAP_ANGLE() // 0x8183455E16C42E3A
function HUD.UNLOCK_MINIMAP_ANGLE()
  native.invoke(
    Type.Void, 1750, false
  )
end

-- void LOCK_MINIMAP_POSITION(float x, float y) // 0x1279E861A329E73F
--[[
Locks the minimap to the specified world position.
--]]
function HUD.LOCK_MINIMAP_POSITION(x, y)
  native.invoke(
    Type.Void, 1751, false,
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- void UNLOCK_MINIMAP_POSITION() // 0x3E93E06DB8EF1F30
function HUD.UNLOCK_MINIMAP_POSITION()
  native.invoke(
    Type.Void, 1752, false
  )
end

-- void SET_FAKE_MINIMAP_MAX_ALTIMETER_HEIGHT(float altitude, BOOL p1, Any p2) // 0xD201F3FF917A506D
--[[
Argument must be 0.0f or above 38.0f, or it will be ignored.
--]]
function HUD.SET_FAKE_MINIMAP_MAX_ALTIMETER_HEIGHT(altitude, p1, p2)
  native.invoke(
    Type.Void, 1753, false,
    arg(Type.Float, altitude),
    arg(Type.Bool, p1),
    arg(Type.Any, p2)
  )
end

-- void SET_HEALTH_HUD_DISPLAY_VALUES(int health, int capacity, BOOL wasAdded) // 0x3F5CC444DCAAA8F2
function HUD.SET_HEALTH_HUD_DISPLAY_VALUES(health, capacity, wasAdded)
  native.invoke(
    Type.Void, 1754, false,
    arg(Type.Int, health),
    arg(Type.Int, capacity),
    arg(Type.Bool, wasAdded)
  )
end

-- void SET_MAX_HEALTH_HUD_DISPLAY(int maximumValue) // 0x975D66A0BC17064C
function HUD.SET_MAX_HEALTH_HUD_DISPLAY(maximumValue)
  native.invoke(
    Type.Void, 1755, false,
    arg(Type.Int, maximumValue)
  )
end

-- void SET_MAX_ARMOUR_HUD_DISPLAY(int maximumValue) // 0x06A320535F5F0248
function HUD.SET_MAX_ARMOUR_HUD_DISPLAY(maximumValue)
  native.invoke(
    Type.Void, 1756, false,
    arg(Type.Int, maximumValue)
  )
end

-- void SET_BIGMAP_ACTIVE(BOOL toggleBigMap, BOOL showFullMap) // 0x231C8F89D0539D8F
--[[
Toggles the big minimap state like in GTA:Online.
--]]
function HUD.SET_BIGMAP_ACTIVE(toggleBigMap, showFullMap)
  native.invoke(
    Type.Void, 1757, false,
    arg(Type.Bool, toggleBigMap),
    arg(Type.Bool, showFullMap)
  )
end

-- BOOL IS_HUD_COMPONENT_ACTIVE(int id) // 0xBC4C9EA5391ECC0D
--[[
Full list of components below

HUD = 0;
HUD_WANTED_STARS = 1;
HUD_WEAPON_ICON = 2;
HUD_CASH = 3;
HUD_MP_CASH = 4;
HUD_MP_MESSAGE = 5;
HUD_VEHICLE_NAME = 6;
HUD_AREA_NAME = 7;
HUD_VEHICLE_CLASS = 8;
HUD_STREET_NAME = 9;
HUD_HELP_TEXT = 10;
HUD_FLOATING_HELP_TEXT_1 = 11;
HUD_FLOATING_HELP_TEXT_2 = 12;
HUD_CASH_CHANGE = 13;
HUD_RETICLE = 14;
HUD_SUBTITLE_TEXT = 15;
HUD_RADIO_STATIONS = 16;
HUD_SAVING_GAME = 17;
HUD_GAME_STREAM = 18;
HUD_WEAPON_WHEEL = 19;
HUD_WEAPON_WHEEL_STATS = 20;
MAX_HUD_COMPONENTS = 21;
MAX_HUD_WEAPONS = 22;
MAX_SCRIPTED_HUD_COMPONENTS = 141;
--]]
function HUD.IS_HUD_COMPONENT_ACTIVE(id)
  return native.invoke(
    Type.Bool, 1758, false,
    arg(Type.Int, id)
  )
end

-- BOOL IS_SCRIPTED_HUD_COMPONENT_ACTIVE(int id) // 0xDD100EB17A94FF65
function HUD.IS_SCRIPTED_HUD_COMPONENT_ACTIVE(id)
  return native.invoke(
    Type.Bool, 1759, false,
    arg(Type.Int, id)
  )
end

-- void HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME(int id) // 0xE374C498D8BADC14
function HUD.HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME(id)
  native.invoke(
    Type.Void, 1760, false,
    arg(Type.Int, id)
  )
end

-- void SHOW_SCRIPTED_HUD_COMPONENT_THIS_FRAME(int id) // 0x4F38DCA127DAAEA2
function HUD.SHOW_SCRIPTED_HUD_COMPONENT_THIS_FRAME(id)
  native.invoke(
    Type.Void, 1761, false,
    arg(Type.Int, id)
  )
end

-- BOOL IS_SCRIPTED_HUD_COMPONENT_HIDDEN_THIS_FRAME(int id) // 0x09C0403ED9A751C2
function HUD.IS_SCRIPTED_HUD_COMPONENT_HIDDEN_THIS_FRAME(id)
  return native.invoke(
    Type.Bool, 1762, false,
    arg(Type.Int, id)
  )
end

-- void HIDE_HUD_COMPONENT_THIS_FRAME(int id) // 0x6806C51AD12B83B8
--[[
This function hides various HUD (Heads-up Display) components.
Listed below are the integers and the corresponding HUD component.
- 1 : WANTED_STARS
- 2 : WEAPON_ICON
- 3 : CASH
- 4 : MP_CASH
- 5 : MP_MESSAGE
- 6 : VEHICLE_NAME
- 7 : AREA_NAME
- 8 : VEHICLE_CLASS
- 9 : STREET_NAME
- 10 : HELP_TEXT
- 11 : FLOATING_HELP_TEXT_1
- 12 : FLOATING_HELP_TEXT_2
- 13 : CASH_CHANGE
- 14 : RETICLE
- 15 : SUBTITLE_TEXT
- 16 : RADIO_STATIONS
- 17 : SAVING_GAME
- 18 : GAME_STREAM
- 19 : WEAPON_WHEEL
- 20 : WEAPON_WHEEL_STATS
- 21 : HUD_COMPONENTS
- 22 : HUD_WEAPONS

These integers also work for the `SHOW_HUD_COMPONENT_THIS_FRAME` native, but instead shows the HUD Component.
--]]
function HUD.HIDE_HUD_COMPONENT_THIS_FRAME(id)
  native.invoke(
    Type.Void, 1763, false,
    arg(Type.Int, id)
  )
end

-- void SHOW_HUD_COMPONENT_THIS_FRAME(int id) // 0x0B4DF1FA60C0E664
--[[
This function hides various HUD (Heads-up Display) components.
Listed below are the integers and the corresponding HUD component.
- 1 : WANTED_STARS
- 2 : WEAPON_ICON
- 3 : CASH
- 4 : MP_CASH
- 5 : MP_MESSAGE
- 6 : VEHICLE_NAME
- 7 : AREA_NAME
- 8 : VEHICLE_CLASS
- 9 : STREET_NAME
- 10 : HELP_TEXT
- 11 : FLOATING_HELP_TEXT_1
- 12 : FLOATING_HELP_TEXT_2
- 13 : CASH_CHANGE
- 14 : RETICLE
- 15 : SUBTITLE_TEXT
- 16 : RADIO_STATIONS
- 17 : SAVING_GAME
- 18 : GAME_STREAM
- 19 : WEAPON_WHEEL
- 20 : WEAPON_WHEEL_STATS
- 21 : HUD_COMPONENTS
- 22 : HUD_WEAPONS

These integers also work for the `HIDE_HUD_COMPONENT_THIS_FRAME` native, but instead hides the HUD Component.
--]]
function HUD.SHOW_HUD_COMPONENT_THIS_FRAME(id)
  native.invoke(
    Type.Void, 1764, false,
    arg(Type.Int, id)
  )
end

-- void HIDE_STREET_AND_CAR_NAMES_THIS_FRAME() // 0xA4DEDE28B1814289
--[[
Hides area and vehicle name HUD components for one frame.
--]]
function HUD.HIDE_STREET_AND_CAR_NAMES_THIS_FRAME()
  native.invoke(
    Type.Void, 1765, false
  )
end

-- void RESET_RETICULE_VALUES() // 0x12782CE0A636E9F0
function HUD.RESET_RETICULE_VALUES()
  native.invoke(
    Type.Void, 1766, false
  )
end

-- void RESET_HUD_COMPONENT_VALUES(int id) // 0x450930E616475D0D
function HUD.RESET_HUD_COMPONENT_VALUES(id)
  native.invoke(
    Type.Void, 1767, false,
    arg(Type.Int, id)
  )
end

-- void SET_HUD_COMPONENT_POSITION(int id, float x, float y) // 0xAABB1F56E2A17CED
function HUD.SET_HUD_COMPONENT_POSITION(id, x, y)
  native.invoke(
    Type.Void, 1768, false,
    arg(Type.Int, id),
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- Vector3 GET_HUD_COMPONENT_POSITION(int id) // 0x223CA69A8C4417FD
function HUD.GET_HUD_COMPONENT_POSITION(id)
  return native.invoke(
    Type.Vector3, 1769, false,
    arg(Type.Int, id)
  )
end

-- void CLEAR_REMINDER_MESSAGE() // 0xB57D8DD645CFA2CF
--[[
This native does absolutely nothing, just a nullsub
--]]
function HUD.CLEAR_REMINDER_MESSAGE()
  native.invoke(
    Type.Void, 1770, false
  )
end

-- int GET_HUD_SCREEN_POSITION_FROM_WORLD_POSITION(float worldX, float worldY, float worldZ, float* screenX, float* screenY) // 0xF9904D11F1ACBEC3
--[[
World to relative screen coords, this world to screen will keep the text on screen. Was named _GET_SCREEN_COORD_FROM_WORLD_COORD, but this conflicts with 0x34E82F05DF2974F5. As that hash actually matches GET_SCREEN_COORD_FROM_WORLD_COORD that one supercedes and this one was renamed to _GET_2D_COORD_FROM_3D_COORD
--]]
function HUD.GET_HUD_SCREEN_POSITION_FROM_WORLD_POSITION(worldX, worldY, worldZ, screenX, screenY)
  return native.invoke(
    Type.Int, 1771, false,
    arg(Type.Float, worldX),
    arg(Type.Float, worldY),
    arg(Type.Float, worldZ),
    ref(Type.Float, screenX),
    ref(Type.Float, screenY)
  )
end

-- void OPEN_REPORTUGC_MENU() // 0x523A590C1A3CC0D3
--[[
Shows a menu for reporting UGC content.
--]]
function HUD.OPEN_REPORTUGC_MENU()
  native.invoke(
    Type.Void, 1772, false
  )
end

-- void FORCE_CLOSE_REPORTUGC_MENU() // 0xEE4C0E6DBC6F2C6F
function HUD.FORCE_CLOSE_REPORTUGC_MENU()
  native.invoke(
    Type.Void, 1773, false
  )
end

-- BOOL IS_REPORTUGC_MENU_OPEN() // 0x9135584D09A3437E
function HUD.IS_REPORTUGC_MENU_OPEN()
  return native.invoke(
    Type.Bool, 1774, false
  )
end

-- BOOL IS_FLOATING_HELP_TEXT_ON_SCREEN(int hudIndex) // 0x2432784ACA090DA4
function HUD.IS_FLOATING_HELP_TEXT_ON_SCREEN(hudIndex)
  return native.invoke(
    Type.Bool, 1775, false,
    arg(Type.Int, hudIndex)
  )
end

-- void SET_FLOATING_HELP_TEXT_SCREEN_POSITION(int hudIndex, float x, float y) // 0x7679CC1BCEBE3D4C
function HUD.SET_FLOATING_HELP_TEXT_SCREEN_POSITION(hudIndex, x, y)
  native.invoke(
    Type.Void, 1776, false,
    arg(Type.Int, hudIndex),
    arg(Type.Float, x),
    arg(Type.Float, y)
  )
end

-- void SET_FLOATING_HELP_TEXT_WORLD_POSITION(int hudIndex, float x, float y, float z) // 0x784BA7E0ECEB4178
function HUD.SET_FLOATING_HELP_TEXT_WORLD_POSITION(hudIndex, x, y, z)
  native.invoke(
    Type.Void, 1777, false,
    arg(Type.Int, hudIndex),
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_FLOATING_HELP_TEXT_TO_ENTITY(int hudIndex, Entity entity, float offsetX, float offsetY) // 0xB094BC1DB4018240
function HUD.SET_FLOATING_HELP_TEXT_TO_ENTITY(hudIndex, entity, offsetX, offsetY)
  native.invoke(
    Type.Void, 1778, false,
    arg(Type.Int, hudIndex),
    arg(Type.Entity, entity),
    arg(Type.Float, offsetX),
    arg(Type.Float, offsetY)
  )
end

-- void SET_FLOATING_HELP_TEXT_STYLE(int hudIndex, int p1, int p2, int p3, int p4, int p5) // 0x788E7FD431BD67F1
function HUD.SET_FLOATING_HELP_TEXT_STYLE(hudIndex, p1, p2, p3, p4, p5)
  native.invoke(
    Type.Void, 1779, false,
    arg(Type.Int, hudIndex),
    arg(Type.Int, p1),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.Int, p4),
    arg(Type.Int, p5)
  )
end

-- void CLEAR_FLOATING_HELP(int hudIndex, BOOL p1) // 0x50085246ABD3FEFA
function HUD.CLEAR_FLOATING_HELP(hudIndex, p1)
  native.invoke(
    Type.Void, 1780, false,
    arg(Type.Int, hudIndex),
    arg(Type.Bool, p1)
  )
end

-- void CREATE_MP_GAMER_TAG_WITH_CREW_COLOR(Player player, const char* username, BOOL pointedClanTag, BOOL isRockstarClan, const char* clanTag, int clanFlag, int r, int g, int b) // 0x6DD05E9D83EFA4C9
--[[
clanFlag: takes a number 0-5
--]]
function HUD.CREATE_MP_GAMER_TAG_WITH_CREW_COLOR(player, username, pointedClanTag, isRockstarClan, clanTag, clanFlag, r, g, b)
  native.invoke(
    Type.Void, 1781, false,
    arg(Type.Player, player),
    arg(Type.String, username),
    arg(Type.Bool, pointedClanTag),
    arg(Type.Bool, isRockstarClan),
    arg(Type.String, clanTag),
    arg(Type.Int, clanFlag),
    arg(Type.Int, r),
    arg(Type.Int, g),
    arg(Type.Int, b)
  )
end

-- BOOL IS_MP_GAMER_TAG_MOVIE_ACTIVE() // 0x6E0EB3EB47C8D7AA
function HUD.IS_MP_GAMER_TAG_MOVIE_ACTIVE()
  return native.invoke(
    Type.Bool, 1782, false
  )
end

-- int CREATE_FAKE_MP_GAMER_TAG(Ped ped, const char* username, BOOL pointedClanTag, BOOL isRockstarClan, const char* clanTag, int clanFlag) // 0xBFEFE3321A3F5015
--[[
clanFlag: takes a number 0-5
--]]
function HUD.CREATE_FAKE_MP_GAMER_TAG(ped, username, pointedClanTag, isRockstarClan, clanTag, clanFlag)
  return native.invoke(
    Type.Int, 1783, false,
    arg(Type.Ped, ped),
    arg(Type.String, username),
    arg(Type.Bool, pointedClanTag),
    arg(Type.Bool, isRockstarClan),
    arg(Type.String, clanTag),
    arg(Type.Int, clanFlag)
  )
end

-- void REMOVE_MP_GAMER_TAG(int gamerTagId) // 0x31698AA80E0223F8
function HUD.REMOVE_MP_GAMER_TAG(gamerTagId)
  native.invoke(
    Type.Void, 1784, false,
    arg(Type.Int, gamerTagId)
  )
end

-- BOOL IS_MP_GAMER_TAG_ACTIVE(int gamerTagId) // 0x4E929E7A5796FD26
function HUD.IS_MP_GAMER_TAG_ACTIVE(gamerTagId)
  return native.invoke(
    Type.Bool, 1785, false,
    arg(Type.Int, gamerTagId)
  )
end

-- BOOL IS_MP_GAMER_TAG_FREE(int gamerTagId) // 0x595B5178E412E199
function HUD.IS_MP_GAMER_TAG_FREE(gamerTagId)
  return native.invoke(
    Type.Bool, 1786, false,
    arg(Type.Int, gamerTagId)
  )
end

-- void SET_MP_GAMER_TAG_VISIBILITY(int gamerTagId, int component, BOOL toggle, Any p3) // 0x63BB75ABEDC1F6A0
--[[
enum eMpGamerTagComponent
{
	MP_TAG_GAMER_NAME,
	MP_TAG_CREW_TAG,
	MP_TAG_HEALTH_ARMOUR,
	MP_TAG_BIG_TEXT,
	MP_TAG_AUDIO_ICON,
	MP_TAG_USING_MENU,
	MP_TAG_PASSIVE_MODE,
	MP_TAG_WANTED_STARS,
	MP_TAG_DRIVER,
	MP_TAG_CO_DRIVER,
	MP_TAG_TAGGED,
	MP_TAG_GAMER_NAME_NEARBY,
	MP_TAG_ARROW,
	MP_TAG_PACKAGES,
	MP_TAG_INV_IF_PED_FOLLOWING,
	MP_TAG_RANK_TEXT,
	MP_TAG_TYPING,
	MP_TAG_BAG_LARGE,
	MP_TAG_ARROW,
	MP_TAG_GANG_CEO,
	MP_TAG_GANG_BIKER,
	MP_TAG_BIKER_ARROW,
	MP_TAG_MC_ROLE_PRESIDENT,
	MP_TAG_MC_ROLE_VICE_PRESIDENT,
	MP_TAG_MC_ROLE_ROAD_CAPTAIN,
	MP_TAG_MC_ROLE_SARGEANT,
	MP_TAG_MC_ROLE_ENFORCER,
	MP_TAG_MC_ROLE_PROSPECT,
	MP_TAG_TRANSMITTER,
	MP_TAG_BOMB
};
--]]
function HUD.SET_MP_GAMER_TAG_VISIBILITY(gamerTagId, component, toggle, p3)
  native.invoke(
    Type.Void, 1787, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Int, component),
    arg(Type.Bool, toggle),
    arg(Type.Any, p3)
  )
end

-- void SET_ALL_MP_GAMER_TAGS_VISIBILITY(int gamerTagId, BOOL toggle) // 0xEE76FF7E6A0166B0
function HUD.SET_ALL_MP_GAMER_TAGS_VISIBILITY(gamerTagId, toggle)
  native.invoke(
    Type.Void, 1788, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Bool, toggle)
  )
end

-- void SET_MP_GAMER_TAGS_SHOULD_USE_VEHICLE_HEALTH(int gamerTagId, BOOL toggle) // 0xA67F9C46D612B6F1
--[[
Displays a bunch of icons above the players name, and level, and their name twice
--]]
function HUD.SET_MP_GAMER_TAGS_SHOULD_USE_VEHICLE_HEALTH(gamerTagId, toggle)
  native.invoke(
    Type.Void, 1789, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Bool, toggle)
  )
end

-- void SET_MP_GAMER_TAGS_SHOULD_USE_POINTS_HEALTH(int gamerTagId, BOOL toggle) // 0xD29EC58C2F6B5014
function HUD.SET_MP_GAMER_TAGS_SHOULD_USE_POINTS_HEALTH(gamerTagId, toggle)
  native.invoke(
    Type.Void, 1790, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Bool, toggle)
  )
end

-- void SET_MP_GAMER_TAGS_POINT_HEALTH(int gamerTagId, int value, int maximumValue) // 0x1563FE35E9928E67
function HUD.SET_MP_GAMER_TAGS_POINT_HEALTH(gamerTagId, value, maximumValue)
  native.invoke(
    Type.Void, 1791, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Int, value),
    arg(Type.Int, maximumValue)
  )
end

-- void SET_MP_GAMER_TAG_COLOUR(int gamerTagId, int component, int hudColorIndex) // 0x613ED644950626AE
--[[
Sets a gamer tag's component colour

gamerTagId is obtained using for example CREATE_FAKE_MP_GAMER_TAG
Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.
--]]
function HUD.SET_MP_GAMER_TAG_COLOUR(gamerTagId, component, hudColorIndex)
  native.invoke(
    Type.Void, 1792, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Int, component),
    arg(Type.Int, hudColorIndex)
  )
end

-- void SET_MP_GAMER_TAG_HEALTH_BAR_COLOUR(int gamerTagId, int hudColorIndex) // 0x3158C77A7E888AB4
--[[
Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.
Should be enabled as flag (2). Has 0 opacity by default.

- This was _SET_MP_GAMER_TAG_HEALTH_BAR_COLOR,
-> Rockstar use the EU spelling of 'color' so I hashed the same name with COLOUR and it came back as the correct hash, so it has been corrected above.
--]]
function HUD.SET_MP_GAMER_TAG_HEALTH_BAR_COLOUR(gamerTagId, hudColorIndex)
  native.invoke(
    Type.Void, 1793, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Int, hudColorIndex)
  )
end

-- void SET_MP_GAMER_TAG_ALPHA(int gamerTagId, int component, int alpha) // 0xD48FE545CD46F857
--[[
Sets flag's sprite transparency. 0-255.
--]]
function HUD.SET_MP_GAMER_TAG_ALPHA(gamerTagId, component, alpha)
  native.invoke(
    Type.Void, 1794, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Int, component),
    arg(Type.Int, alpha)
  )
end

-- void SET_MP_GAMER_TAG_WANTED_LEVEL(int gamerTagId, int wantedlvl) // 0xCF228E2AA03099C3
--[[
displays wanted star above head
--]]
function HUD.SET_MP_GAMER_TAG_WANTED_LEVEL(gamerTagId, wantedlvl)
  native.invoke(
    Type.Void, 1795, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Int, wantedlvl)
  )
end

-- void SET_MP_GAMER_TAG_NUM_PACKAGES(int gamerTagId, int p1) // 0x9C16459B2324B2CF
function HUD.SET_MP_GAMER_TAG_NUM_PACKAGES(gamerTagId, p1)
  native.invoke(
    Type.Void, 1796, false,
    arg(Type.Int, gamerTagId),
    arg(Type.Int, p1)
  )
end

-- void SET_MP_GAMER_TAG_NAME(int gamerTagId, const char* string) // 0xDEA2B8283BAA3944
function HUD.SET_MP_GAMER_TAG_NAME(gamerTagId, string)
  native.invoke(
    Type.Void, 1797, false,
    arg(Type.Int, gamerTagId),
    arg(Type.String, string)
  )
end

-- BOOL IS_UPDATING_MP_GAMER_TAG_NAME_AND_CREW_DETAILS(int gamerTagId) // 0xEB709A36958ABE0D
function HUD.IS_UPDATING_MP_GAMER_TAG_NAME_AND_CREW_DETAILS(gamerTagId)
  return native.invoke(
    Type.Bool, 1798, false,
    arg(Type.Int, gamerTagId)
  )
end

-- void SET_MP_GAMER_TAG_BIG_TEXT(int gamerTagId, const char* string) // 0x7B7723747CCB55B6
function HUD.SET_MP_GAMER_TAG_BIG_TEXT(gamerTagId, string)
  native.invoke(
    Type.Void, 1799, false,
    arg(Type.Int, gamerTagId),
    arg(Type.String, string)
  )
end

-- int GET_CURRENT_WEBPAGE_ID() // 0x01A358D9128B7A86
function HUD.GET_CURRENT_WEBPAGE_ID()
  return native.invoke(
    Type.Int, 1800, false
  )
end

-- int GET_CURRENT_WEBSITE_ID() // 0x97D47996FC48CBAD
function HUD.GET_CURRENT_WEBSITE_ID()
  return native.invoke(
    Type.Int, 1801, false
  )
end

-- int GET_GLOBAL_ACTIONSCRIPT_FLAG(int flagIndex) // 0xE3B05614DCE1D014
--[[
Returns the ActionScript flagValue.
ActionScript flags are global flags that scaleforms use
Flags found during testing
0: Returns 1 if the web_browser keyboard is open, otherwise 0
1: Returns 1 if the player has clicked back twice on the opening page, otherwise 0 (web_browser)
2: Returns how many links the player has clicked in the web_browser scaleform, returns 0 when the browser gets closed
9: Returns the current selection on the mobile phone scaleform

There are 20 flags in total.
--]]
function HUD.GET_GLOBAL_ACTIONSCRIPT_FLAG(flagIndex)
  return native.invoke(
    Type.Int, 1802, false,
    arg(Type.Int, flagIndex)
  )
end

-- void RESET_GLOBAL_ACTIONSCRIPT_FLAG(int flagIndex) // 0xB99C4E4D9499DF29
function HUD.RESET_GLOBAL_ACTIONSCRIPT_FLAG(flagIndex)
  native.invoke(
    Type.Void, 1803, false,
    arg(Type.Int, flagIndex)
  )
end

-- BOOL IS_WARNING_MESSAGE_READY_FOR_CONTROL() // 0xAF42195A42C63BBA
function HUD.IS_WARNING_MESSAGE_READY_FOR_CONTROL()
  return native.invoke(
    Type.Bool, 1804, false
  )
end

-- void SET_WARNING_MESSAGE(const char* titleMsg, int flags, const char* promptMsg, BOOL p3, int p4, const char* p5, const char* p6, BOOL showBackground, int errorCode) // 0x7B1776B3B53F8D74
--[[
You can only use text entries. No custom text.

Example: SET_WARNING_MESSAGE("t20", 3, "adder", false, -1, 0, 0, true);
errorCode: shows an error code at the bottom left if nonzero
--]]
function HUD.SET_WARNING_MESSAGE(titleMsg, flags, promptMsg, p3, p4, p5, p6, showBackground, errorCode)
  native.invoke(
    Type.Void, 1805, false,
    arg(Type.String, titleMsg),
    arg(Type.Int, flags),
    arg(Type.String, promptMsg),
    arg(Type.Bool, p3),
    arg(Type.Int, p4),
    arg(Type.String, p5),
    arg(Type.String, p6),
    arg(Type.Bool, showBackground),
    arg(Type.Int, errorCode)
  )
end

-- void SET_WARNING_MESSAGE_WITH_HEADER(const char* entryHeader, const char* entryLine1, int instructionalKey, const char* entryLine2, BOOL p4, Any p5, Any* showBackground, Any* p7, BOOL p8, Any p9) // 0xDC38CC1E35B6A5D7
--[[
Shows a warning message on screen with a header.
Note: You can only use text entries. No custom text. You can recreate this easily with scaleforms.
Example: https://i.imgur.com/ITJt8bJ.png
--]]
function HUD.SET_WARNING_MESSAGE_WITH_HEADER(entryHeader, entryLine1, instructionalKey, entryLine2, p4, p5, showBackground, p7, p8, p9)
  native.invoke(
    Type.Void, 1806, false,
    arg(Type.String, entryHeader),
    arg(Type.String, entryLine1),
    arg(Type.Int, instructionalKey),
    arg(Type.String, entryLine2),
    arg(Type.Bool, p4),
    arg(Type.Any, p5),
    ref(Type.Any, showBackground),
    ref(Type.Any, p7),
    arg(Type.Bool, p8),
    arg(Type.Any, p9)
  )
end

-- void SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS(const char* entryHeader, const char* entryLine1, int instructionalKey, const char* entryLine2, BOOL p4, Any p5, Any additionalIntInfo, const char* additionalTextInfoLine1, const char* additionalTextInfoLine2, BOOL showBackground, int errorCode) // 0x701919482C74B5AB
--[[
You can use this native for custom input, without having to use any scaleform-related natives.
The native must be called on tick.
The entryHeader must be a valid label.
For Single lines use JL_INVITE_N as entryLine1, JL_INVITE_ND for multiple.
Notes:
- additionalIntInfo: replaces first occurrence of ~1~ in provided label with an integer
- additionalTextInfoLine1: replaces first occurrence of ~a~ in provided label, with your custom text
- additionalTextInfoLine2: replaces second occurrence of ~a~ in provided label, with your custom text
- showBackground: shows black background of the warning screen
- errorCode: shows an error code at the bottom left if nonzero
Example of usage:
SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS("ALERT", "JL_INVITE_ND", 66, "", true, -1, -1, "Testing line 1", "Testing line 2", true, 0);
Screenshot:
https://imgur.com/a/IYA7vJ8
--]]
function HUD.SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS(entryHeader, entryLine1, instructionalKey, entryLine2, p4, p5, additionalIntInfo, additionalTextInfoLine1, additionalTextInfoLine2, showBackground, errorCode)
  native.invoke(
    Type.Void, 1807, false,
    arg(Type.String, entryHeader),
    arg(Type.String, entryLine1),
    arg(Type.Int, instructionalKey),
    arg(Type.String, entryLine2),
    arg(Type.Bool, p4),
    arg(Type.Any, p5),
    arg(Type.Any, additionalIntInfo),
    arg(Type.String, additionalTextInfoLine1),
    arg(Type.String, additionalTextInfoLine2),
    arg(Type.Bool, showBackground),
    arg(Type.Int, errorCode)
  )
end

-- void SET_WARNING_MESSAGE_WITH_HEADER_EXTENDED(const char* entryHeader, const char* entryLine1, int flags, const char* entryLine2, BOOL p4, Any p5, Any* p6, Any* p7, BOOL showBg, Any p9, Any p10) // 0x38B55259C2E078ED
function HUD.SET_WARNING_MESSAGE_WITH_HEADER_EXTENDED(entryHeader, entryLine1, flags, entryLine2, p4, p5, p6, p7, showBg, p9, p10)
  native.invoke(
    Type.Void, 1808, false,
    arg(Type.String, entryHeader),
    arg(Type.String, entryLine1),
    arg(Type.Int, flags),
    arg(Type.String, entryLine2),
    arg(Type.Bool, p4),
    arg(Type.Any, p5),
    ref(Type.Any, p6),
    ref(Type.Any, p7),
    arg(Type.Bool, showBg),
    arg(Type.Any, p9),
    arg(Type.Any, p10)
  )
end

-- void SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS_EXTENDED(const char* labelTitle, const char* labelMessage, int p2, int p3, const char* labelMessage2, BOOL p5, int p6, int p7, const char* p8, const char* p9, BOOL background, int errorCode) // 0x15803FEC3B9A872B
--[[
labelTitle: Label of the alert's title.
labelMsg: Label of the alert's message.
p2: This is an enum, check the description for a list.
p3: This is an enum, check the description for a list.
labelMsg2: Label of another message line
p5: usually 0
p6: usually -1
p7: usually 0
p8: unknown label
p9: unknown label
background: Set to anything other than 0 or false (even any string) and it will draw a background. Setting it to 0 or false will draw no background.
errorCode: Error code, shown at the bottom left if set to value other than 0.

instructionalKey enum list:
Buttons = {
      Empty = 0,
      Select = 1, -- (RETURN)
      Ok = 2, -- (RETURN)
      Yes = 4, -- (RETURN)
      Back = 8, -- (ESC)
      Cancel = 16, -- (ESC)
      No = 32, -- (ESC)
      RetrySpace = 64, -- (SPACE)
      Restart = 128, -- (SPACE)
      Skip = 256, -- (SPACE)
      Quit = 512, -- (ESC)
      Adjust = 1024, -- (ARROWS)
      SpaceKey = 2048, -- (SPACE)
      Share = 4096, -- (SPACE)
      SignIn = 8192, -- (SPACE)
      Continue = 16384, -- (RETURN)
      AdjustLeftRight = 32768, -- (SCROLL L/R)
      AdjustUpDown = 65536, -- (SCROLL U/D)
      Overwrite = 131072, -- (SPACE)
      SocialClubSignup = 262144, -- (RETURN)
      Confirm = 524288, -- (RETURN)
      Queue = 1048576, -- (RETURN)
      RetryReturn = 2097152, -- (RETURN)
      BackEsc = 4194304, -- (ESC)
      SocialClub = 8388608, -- (RETURN)
      Spectate = 16777216, -- (SPACE)
      OkEsc = 33554432, -- (ESC)
      CancelTransfer = 67108864, -- (ESC)
      LoadingSpinner = 134217728,
      NoReturnToGTA = 268435456, -- (ESC)
      CancelEsc = 536870912, -- (ESC)
}

Alt = {
      Empty = 0,
      No = 1, -- (SPACE)
      Host = 2, -- (ESC)
      SearchForJob = 4, -- (RETURN)
      ReturnKey = 8, -- (TURN)
      Freemode = 16, -- (ESC)
}

Example: https://i.imgur.com/TvmNF4k.png
--]]
function HUD.SET_WARNING_MESSAGE_WITH_HEADER_AND_SUBSTRING_FLAGS_EXTENDED(labelTitle, labelMessage, p2, p3, labelMessage2, p5, p6, p7, p8, p9, background, errorCode)
  native.invoke(
    Type.Void, 1809, false,
    arg(Type.String, labelTitle),
    arg(Type.String, labelMessage),
    arg(Type.Int, p2),
    arg(Type.Int, p3),
    arg(Type.String, labelMessage2),
    arg(Type.Bool, p5),
    arg(Type.Int, p6),
    arg(Type.Int, p7),
    arg(Type.String, p8),
    arg(Type.String, p9),
    arg(Type.Bool, background),
    arg(Type.Int, errorCode)
  )
end

-- Hash GET_WARNING_SCREEN_MESSAGE_HASH() // 0x81DF9ABA6C83DFF9
--[[
Has to do with the confirmation overlay (E.g. confirm exit)
--]]
function HUD.GET_WARNING_SCREEN_MESSAGE_HASH()
  return native.invoke(
    Type.Hash, 1810, false
  )
end

-- BOOL SET_WARNING_MESSAGE_OPTION_ITEMS(int index, const char* name, int cash, int rp, int lvl, int colour) // 0x0C5A80A9E096D529
--[[
Some sort of list displayed in a warning message. Yet unknown how to prevent repeating.
Param names copied from the corresponding scaleform function "SET_LIST_ROW".
Example: https://i.imgur.com/arKvOYx.png
--]]
function HUD.SET_WARNING_MESSAGE_OPTION_ITEMS(index, name, cash, rp, lvl, colour)
  return native.invoke(
    Type.Bool, 1811, false,
    arg(Type.Int, index),
    arg(Type.String, name),
    arg(Type.Int, cash),
    arg(Type.Int, rp),
    arg(Type.Int, lvl),
    arg(Type.Int, colour)
  )
end

-- BOOL SET_WARNING_MESSAGE_OPTION_HIGHLIGHT(Any p0) // 0xDAF87174BE7454FF
function HUD.SET_WARNING_MESSAGE_OPTION_HIGHLIGHT(p0)
  return native.invoke(
    Type.Bool, 1812, false,
    arg(Type.Any, p0)
  )
end

-- void REMOVE_WARNING_MESSAGE_OPTION_ITEMS() // 0x6EF54AB721DC6242
function HUD.REMOVE_WARNING_MESSAGE_OPTION_ITEMS()
  native.invoke(
    Type.Void, 1813, false
  )
end

-- BOOL IS_WARNING_MESSAGE_ACTIVE() // 0xE18B138FABC53103
function HUD.IS_WARNING_MESSAGE_ACTIVE()
  return native.invoke(
    Type.Bool, 1814, false
  )
end

-- void CLEAR_DYNAMIC_PAUSE_MENU_ERROR_MESSAGE() // 0x7792424AA0EAC32E
function HUD.CLEAR_DYNAMIC_PAUSE_MENU_ERROR_MESSAGE()
  native.invoke(
    Type.Void, 1815, false
  )
end

-- void CUSTOM_MINIMAP_SET_ACTIVE(BOOL toggle) // 0x5354C5BA2EA868A4
--[[
If toggle is true, the map is shown in full screen
If toggle is false, the map is shown in normal mode
--]]
function HUD.CUSTOM_MINIMAP_SET_ACTIVE(toggle)
  native.invoke(
    Type.Void, 1816, false,
    arg(Type.Bool, toggle)
  )
end

-- void CUSTOM_MINIMAP_SET_BLIP_OBJECT(int spriteId) // 0x1EAE6DD17B7A5EFA
--[[
Sets the sprite of the next BLIP_GALLERY blip, values used in the native scripts: 143 (ObjectiveBlue), 144 (ObjectiveGreen), 145 (ObjectiveRed), 146 (ObjectiveYellow).
--]]
function HUD.CUSTOM_MINIMAP_SET_BLIP_OBJECT(spriteId)
  native.invoke(
    Type.Void, 1817, false,
    arg(Type.Int, spriteId)
  )
end

-- int CUSTOM_MINIMAP_CREATE_BLIP(float x, float y, float z) // 0x551DF99658DB6EE8
--[[
Add a BLIP_GALLERY at the specific coordinate. Used in fm_maintain_transition_players to display race track points.
--]]
function HUD.CUSTOM_MINIMAP_CREATE_BLIP(x, y, z)
  return native.invoke(
    Type.Int, 1818, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void CUSTOM_MINIMAP_CLEAR_BLIPS() // 0x2708FC083123F9FF
function HUD.CUSTOM_MINIMAP_CLEAR_BLIPS()
  native.invoke(
    Type.Void, 1819, false
  )
end

-- BOOL FORCE_SONAR_BLIPS_THIS_FRAME() // 0x1121BFA1A1A522A8
--[[
Doesn't actually return anything.
--]]
function HUD.FORCE_SONAR_BLIPS_THIS_FRAME()
  return native.invoke(
    Type.Bool, 1820, false
  )
end

-- Blip GET_NORTH_BLID_INDEX() // 0x3F0CF9CB7E589B88
function HUD.GET_NORTH_BLID_INDEX()
  return native.invoke(
    Type.Blip, 1821, false
  )
end

-- void DISPLAY_PLAYER_NAME_TAGS_ON_BLIPS(BOOL toggle) // 0x82CEDC33687E1F50
--[[
Toggles whether or not name labels are shown on the expanded minimap next to player blips, like in GTA:O.
Doesn't need to be called every frame.
Preview: https://i.imgur.com/DfqKWfJ.png

Make sure to call SET_BLIP_CATEGORY with index 7 for this to work on the desired blip.
--]]
function HUD.DISPLAY_PLAYER_NAME_TAGS_ON_BLIPS(toggle)
  native.invoke(
    Type.Void, 1822, false,
    arg(Type.Bool, toggle)
  )
end

-- void DRAW_FRONTEND_BACKGROUND_THIS_FRAME() // 0x211C4EF450086857
--[[
This native does absolutely nothing, just a nullsub
--]]
function HUD.DRAW_FRONTEND_BACKGROUND_THIS_FRAME()
  native.invoke(
    Type.Void, 1823, false
  )
end

-- void DRAW_HUD_OVER_FADE_THIS_FRAME() // 0xBF4F34A85CA2970C
function HUD.DRAW_HUD_OVER_FADE_THIS_FRAME()
  native.invoke(
    Type.Void, 1824, false
  )
end

-- void ACTIVATE_FRONTEND_MENU(Hash menuhash, BOOL togglePause, int component) // 0xEF01D36B9C9D0C7B
--[[
Does stuff like this:
gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617

Example:
int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");
ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);

BOOL p1 is a toggle to define the game in pause.
int p2 is unknown but -1 always works, not sure why though.

[30/03/2017] ins1de :

the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.

Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);
Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.Below is a list of all known Frontend Menu Hashes.
- FE_MENU_VERSION_SP_PAUSE
- FE_MENU_VERSION_MP_PAUSE
- FE_MENU_VERSION_CREATOR_PAUSE
- FE_MENU_VERSION_CUTSCENE_PAUSE
- FE_MENU_VERSION_SAVEGAME
- FE_MENU_VERSION_PRE_LOBBY
- FE_MENU_VERSION_LOBBY
- FE_MENU_VERSION_MP_CHARACTER_SELECT
- FE_MENU_VERSION_MP_CHARACTER_CREATION
- FE_MENU_VERSION_EMPTY
- FE_MENU_VERSION_EMPTY_NO_BACKGROUND
- FE_MENU_VERSION_TEXT_SELECTION
- FE_MENU_VERSION_CORONA
- FE_MENU_VERSION_CORONA_LOBBY
- FE_MENU_VERSION_CORONA_JOINED_PLAYERS
- FE_MENU_VERSION_CORONA_INVITE_PLAYERS
- FE_MENU_VERSION_CORONA_INVITE_FRIENDS
- FE_MENU_VERSION_CORONA_INVITE_CREWS
- FE_MENU_VERSION_CORONA_INVITE_MATCHED_PLAYERS
- FE_MENU_VERSION_CORONA_INVITE_LAST_JOB_PLAYERS
- FE_MENU_VERSION_CORONA_RACE
- FE_MENU_VERSION_CORONA_BETTING
- FE_MENU_VERSION_JOINING_SCREEN
- FE_MENU_VERSION_LANDING_MENU
- FE_MENU_VERSION_LANDING_KEYMAPPING_MENU
--]]
function HUD.ACTIVATE_FRONTEND_MENU(menuhash, togglePause, component)
  native.invoke(
    Type.Void, 1825, false,
    arg(Type.Hash, menuhash),
    arg(Type.Bool, togglePause),
    arg(Type.Int, component)
  )
end

-- void RESTART_FRONTEND_MENU(Hash menuHash, int p1) // 0x10706DC6AD2D49C0
--[[
Before using this native click the native above and look at the decription.

Example:
int GetHash = Function.Call<int>(Hash.GET_HASH_KEY, "fe_menu_version_corona_lobby");
Function.Call(Hash.ACTIVATE_FRONTEND_MENU, GetHash, 0, -1);
Function.Call(Hash.RESTART_FRONTEND_MENU(GetHash, -1);

This native refreshes the frontend menu.

p1 = Hash of Menu
p2 = Unknown but always works with -1.
--]]
function HUD.RESTART_FRONTEND_MENU(menuHash, p1)
  native.invoke(
    Type.Void, 1826, false,
    arg(Type.Hash, menuHash),
    arg(Type.Int, p1)
  )
end

-- Hash GET_CURRENT_FRONTEND_MENU_VERSION() // 0x2309595AD6145265
--[[
if (HUD::GET_CURRENT_FRONTEND_MENU_VERSION() == joaat("fe_menu_version_empty_no_background"))
--]]
function HUD.GET_CURRENT_FRONTEND_MENU_VERSION()
  return native.invoke(
    Type.Hash, 1827, false
  )
end

-- void SET_PAUSE_MENU_ACTIVE(BOOL toggle) // 0xDF47FC56C71569CF
function HUD.SET_PAUSE_MENU_ACTIVE(toggle)
  native.invoke(
    Type.Void, 1828, false,
    arg(Type.Bool, toggle)
  )
end

-- void DISABLE_FRONTEND_THIS_FRAME() // 0x6D3465A73092F0E6
function HUD.DISABLE_FRONTEND_THIS_FRAME()
  native.invoke(
    Type.Void, 1829, false
  )
end

-- void SUPPRESS_FRONTEND_RENDERING_THIS_FRAME() // 0xBA751764F0821256
function HUD.SUPPRESS_FRONTEND_RENDERING_THIS_FRAME()
  native.invoke(
    Type.Void, 1830, false
  )
end

-- void ALLOW_PAUSE_WHEN_NOT_IN_STATE_OF_PLAY_THIS_FRAME() // 0xCC3FDDED67BCFC63
--[[
Allows opening the pause menu this frame, when the player is dead.
--]]
function HUD.ALLOW_PAUSE_WHEN_NOT_IN_STATE_OF_PLAY_THIS_FRAME()
  native.invoke(
    Type.Void, 1831, false
  )
end

-- void SET_FRONTEND_ACTIVE(BOOL active) // 0x745711A75AB09277
function HUD.SET_FRONTEND_ACTIVE(active)
  native.invoke(
    Type.Void, 1832, false,
    arg(Type.Bool, active)
  )
end

-- BOOL IS_PAUSE_MENU_ACTIVE() // 0xB0034A223497FFCB
function HUD.IS_PAUSE_MENU_ACTIVE()
  return native.invoke(
    Type.Bool, 1833, false
  )
end

-- BOOL IS_STORE_PENDING_NETWORK_SHUTDOWN_TO_OPEN() // 0x2F057596F2BD0061
function HUD.IS_STORE_PENDING_NETWORK_SHUTDOWN_TO_OPEN()
  return native.invoke(
    Type.Bool, 1834, false
  )
end

-- int GET_PAUSE_MENU_STATE() // 0x272ACD84970869C5
--[[
Returns:

0
5
10
15
20
25
30
35

--]]
function HUD.GET_PAUSE_MENU_STATE()
  return native.invoke(
    Type.Int, 1835, false
  )
end

-- Vector3 GET_PAUSE_MENU_POSITION() // 0x5BFF36D6ED83E0AE
function HUD.GET_PAUSE_MENU_POSITION()
  return native.invoke(
    Type.Vector3, 1836, false
  )
end

-- BOOL IS_PAUSE_MENU_RESTARTING() // 0x1C491717107431C7
function HUD.IS_PAUSE_MENU_RESTARTING()
  return native.invoke(
    Type.Bool, 1837, false
  )
end

-- void FORCE_SCRIPTED_GFX_WHEN_FRONTEND_ACTIVE(const char* p0) // 0x2162C446DFDF38FD
--[[
Not present in retail version of the game, actual definiton seems to be
_LOG_DEBUG_INFO(const char* category, const char* debugText);
--]]
function HUD.FORCE_SCRIPTED_GFX_WHEN_FRONTEND_ACTIVE(p0)
  native.invoke(
    Type.Void, 1838, false,
    arg(Type.String, p0)
  )
end

-- void PAUSE_MENUCEPTION_GO_DEEPER(int page) // 0x77F16B447824DA6C
function HUD.PAUSE_MENUCEPTION_GO_DEEPER(page)
  native.invoke(
    Type.Void, 1839, false,
    arg(Type.Int, page)
  )
end

-- void PAUSE_MENUCEPTION_THE_KICK() // 0xCDCA26E80FAECB8F
function HUD.PAUSE_MENUCEPTION_THE_KICK()
  native.invoke(
    Type.Void, 1840, false
  )
end

-- void PAUSE_TOGGLE_FULLSCREEN_MAP(Any p0) // 0x2DE6C5E2E996F178
function HUD.PAUSE_TOGGLE_FULLSCREEN_MAP(p0)
  native.invoke(
    Type.Void, 1841, false,
    arg(Type.Any, p0)
  )
end

-- void PAUSE_MENU_ACTIVATE_CONTEXT(Hash contextHash) // 0xDD564BDD0472C936
--[[
Activates the specified frontend menu context.
pausemenu.xml defines some specific menu options using 'context'. Context is basically a 'condition'. 
The `*ALL*` part of the context means that whatever is being defined, will be active when any or all of those conditions after `*ALL*` are met.
The `*NONE*` part of the context section means that whatever is being defined, will NOT be active if any or all of the conditions after `*NONE*` are met.
This basically allows you to hide certain menu sections, or things like instructional buttons.
--]]
function HUD.PAUSE_MENU_ACTIVATE_CONTEXT(contextHash)
  native.invoke(
    Type.Void, 1842, false,
    arg(Type.Hash, contextHash)
  )
end

-- void PAUSE_MENU_DEACTIVATE_CONTEXT(Hash contextHash) // 0x444D8CF241EC25C5
function HUD.PAUSE_MENU_DEACTIVATE_CONTEXT(contextHash)
  native.invoke(
    Type.Void, 1843, false,
    arg(Type.Hash, contextHash)
  )
end

-- BOOL PAUSE_MENU_IS_CONTEXT_ACTIVE(Hash contextHash) // 0x84698AB38D0C6636
function HUD.PAUSE_MENU_IS_CONTEXT_ACTIVE(contextHash)
  return native.invoke(
    Type.Bool, 1844, false,
    arg(Type.Hash, contextHash)
  )
end

-- BOOL PAUSE_MENU_IS_CONTEXT_MENU_ACTIVE() // 0x2A25ADC48F87841F
function HUD.PAUSE_MENU_IS_CONTEXT_MENU_ACTIVE()
  return native.invoke(
    Type.Bool, 1845, false
  )
end

-- int PAUSE_MENU_GET_HAIR_COLOUR_INDEX() // 0xDE03620F8703A9DF
function HUD.PAUSE_MENU_GET_HAIR_COLOUR_INDEX()
  return native.invoke(
    Type.Int, 1846, false
  )
end

-- int PAUSE_MENU_GET_MOUSE_HOVER_INDEX() // 0x359AF31A4B52F5ED
function HUD.PAUSE_MENU_GET_MOUSE_HOVER_INDEX()
  return native.invoke(
    Type.Int, 1847, false
  )
end

-- int PAUSE_MENU_GET_MOUSE_HOVER_UNIQUE_ID() // 0x13C4B962653A5280
function HUD.PAUSE_MENU_GET_MOUSE_HOVER_UNIQUE_ID()
  return native.invoke(
    Type.Int, 1848, false
  )
end

-- BOOL PAUSE_MENU_GET_MOUSE_CLICK_EVENT(Any* p0, Any* p1, Any* p2) // 0xC8E1071177A23BE5
function HUD.PAUSE_MENU_GET_MOUSE_CLICK_EVENT(p0, p1, p2)
  return native.invoke(
    Type.Bool, 1849, false,
    ref(Type.Any, p0),
    ref(Type.Any, p1),
    ref(Type.Any, p2)
  )
end

-- void PAUSE_MENU_REDRAW_INSTRUCTIONAL_BUTTONS(int p0) // 0x4895BDEA16E7C080
function HUD.PAUSE_MENU_REDRAW_INSTRUCTIONAL_BUTTONS(p0)
  native.invoke(
    Type.Void, 1850, false,
    arg(Type.Int, p0)
  )
end

-- void PAUSE_MENU_SET_BUSY_SPINNER(BOOL p0, int position, int spinnerIndex) // 0xC78E239AC5B2DDB9
function HUD.PAUSE_MENU_SET_BUSY_SPINNER(p0, position, spinnerIndex)
  native.invoke(
    Type.Void, 1851, false,
    arg(Type.Bool, p0),
    arg(Type.Int, position),
    arg(Type.Int, spinnerIndex)
  )
end

-- void PAUSE_MENU_SET_WARN_ON_TAB_CHANGE(BOOL p0) // 0xF06EBB91A81E09E3
function HUD.PAUSE_MENU_SET_WARN_ON_TAB_CHANGE(p0)
  native.invoke(
    Type.Void, 1852, false,
    arg(Type.Bool, p0)
  )
end

-- BOOL IS_FRONTEND_READY_FOR_CONTROL() // 0x3BAB9A4E4F2FF5C7
function HUD.IS_FRONTEND_READY_FOR_CONTROL()
  return native.invoke(
    Type.Bool, 1853, false
  )
end

-- void TAKE_CONTROL_OF_FRONTEND() // 0xEC9264727EEC0F28
--[[
Disables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard. Not sure about controller. Does not disable mouse controls. No need to call this every tick.

To enable the keys again, use `0x14621BB1DF14E2B2`.
--]]
function HUD.TAKE_CONTROL_OF_FRONTEND()
  native.invoke(
    Type.Void, 1854, false
  )
end

-- void RELEASE_CONTROL_OF_FRONTEND() // 0x14621BB1DF14E2B2
--[[
Enables frontend (works in custom frontends, not sure about regular pause menu) navigation keys on keyboard if they were disabled using the native below.
To disable the keys, use `0xEC9264727EEC0F28`
--]]
function HUD.RELEASE_CONTROL_OF_FRONTEND()
  native.invoke(
    Type.Void, 1855, false
  )
end

-- BOOL CODE_WANTS_SCRIPT_TO_TAKE_CONTROL() // 0x66E7CB63C97B7D20
function HUD.CODE_WANTS_SCRIPT_TO_TAKE_CONTROL()
  return native.invoke(
    Type.Bool, 1856, false
  )
end

-- int GET_SCREEN_CODE_WANTS_SCRIPT_TO_CONTROL() // 0x593FEAE1F73392D4
function HUD.GET_SCREEN_CODE_WANTS_SCRIPT_TO_CONTROL()
  return native.invoke(
    Type.Int, 1857, false
  )
end

-- BOOL IS_NAVIGATING_MENU_CONTENT() // 0x4E3CD0EF8A489541
function HUD.IS_NAVIGATING_MENU_CONTENT()
  return native.invoke(
    Type.Bool, 1858, false
  )
end

-- BOOL HAS_MENU_TRIGGER_EVENT_OCCURRED() // 0xF284AC67940C6812
function HUD.HAS_MENU_TRIGGER_EVENT_OCCURRED()
  return native.invoke(
    Type.Bool, 1859, false
  )
end

-- BOOL HAS_MENU_LAYOUT_CHANGED_EVENT_OCCURRED() // 0x2E22FEFA0100275E
function HUD.HAS_MENU_LAYOUT_CHANGED_EVENT_OCCURRED()
  return native.invoke(
    Type.Bool, 1860, false
  )
end

-- void SET_SAVEGAME_LIST_UNIQUE_ID(Any p0) // 0x0CF54F20DE43879C
function HUD.SET_SAVEGAME_LIST_UNIQUE_ID(p0)
  native.invoke(
    Type.Void, 1861, false,
    arg(Type.Any, p0)
  )
end

-- void GET_MENU_TRIGGER_EVENT_DETAILS(int* lastItemMenuId, int* selectedItemUniqueId) // 0x36C1451A88A09630
function HUD.GET_MENU_TRIGGER_EVENT_DETAILS(lastItemMenuId, selectedItemUniqueId)
  native.invoke(
    Type.Void, 1862, false,
    ref(Type.Int, lastItemMenuId),
    ref(Type.Int, selectedItemUniqueId)
  )
end

-- void GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS(int* lastItemMenuId, int* selectedItemMenuId, int* selectedItemUniqueId) // 0x7E17BE53E1AAABAF
--[[
lastItemMenuId: this is the menuID of the last selected item minus 1000 (lastItem.menuID - 1000)
selectedItemMenuId: same as lastItemMenuId except for the currently selected menu item
selectedItemUniqueId: this is uniqueID of the currently selected menu item

when the pausemenu is closed:
lastItemMenuId = -1
selectedItemMenuId = -1
selectedItemUniqueId = 0

when the header gains focus:
lastItemMenuId updates as normal or 0 if the pausemenu was just opened
selectedItemMenuId becomes a unique id for the pausemenu page that focus was taken from (?) or 0 if the pausemenu was just opened
selectedItemUniqueId = -1

when focus is moved from the header to a pausemenu page:
lastItemMenuId becomes a unique id for the pausemenu page that focus was moved to (?)
selectedItemMenuId = -1
selectedItemUniqueId updates as normal
--]]
function HUD.GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS(lastItemMenuId, selectedItemMenuId, selectedItemUniqueId)
  native.invoke(
    Type.Void, 1863, false,
    ref(Type.Int, lastItemMenuId),
    ref(Type.Int, selectedItemMenuId),
    ref(Type.Int, selectedItemUniqueId)
  )
end

-- BOOL GET_PM_PLAYER_CREW_COLOR(int* r, int* g, int* b) // 0xA238192F33110615
function HUD.GET_PM_PLAYER_CREW_COLOR(r, g, b)
  return native.invoke(
    Type.Bool, 1864, false,
    ref(Type.Int, r),
    ref(Type.Int, g),
    ref(Type.Int, b)
  )
end

-- BOOL GET_MENU_PED_INT_STAT(Any p0, Any* p1) // 0xEF4CED81CEBEDC6D
function HUD.GET_MENU_PED_INT_STAT(p0, p1)
  return native.invoke(
    Type.Bool, 1865, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1)
  )
end

-- BOOL GET_CHARACTER_MENU_PED_INT_STAT(Any p0, Any* p1, Any p2) // 0xCA6B2F7CE32AB653
function HUD.GET_CHARACTER_MENU_PED_INT_STAT(p0, p1, p2)
  return native.invoke(
    Type.Bool, 1866, false,
    arg(Type.Any, p0),
    ref(Type.Any, p1),
    arg(Type.Any, p2)
  )
end

-- BOOL GET_MENU_PED_MASKED_INT_STAT(Hash statHash, int* outValue, int mask, BOOL p3) // 0x90A6526CF0381030
function HUD.GET_MENU_PED_MASKED_INT_STAT(statHash, outValue, mask, p3)
  return native.invoke(
    Type.Bool, 1867, false,
    arg(Type.Hash, statHash),
    ref(Type.Int, outValue),
    arg(Type.Int, mask),
    arg(Type.Bool, p3)
  )
end

-- BOOL GET_CHARACTER_MENU_PED_MASKED_INT_STAT(Hash statHash, Any* outValue, int p2, int mask, BOOL p4) // 0x24A49BEAF468DC90
function HUD.GET_CHARACTER_MENU_PED_MASKED_INT_STAT(statHash, outValue, p2, mask, p4)
  return native.invoke(
    Type.Bool, 1868, false,
    arg(Type.Hash, statHash),
    ref(Type.Any, outValue),
    arg(Type.Int, p2),
    arg(Type.Int, mask),
    arg(Type.Bool, p4)
  )
end

-- BOOL GET_MENU_PED_FLOAT_STAT(Hash statHash, float* outValue) // 0x5FBD7095FE7AE57F
function HUD.GET_MENU_PED_FLOAT_STAT(statHash, outValue)
  return native.invoke(
    Type.Bool, 1869, false,
    arg(Type.Hash, statHash),
    ref(Type.Float, outValue)
  )
end

-- BOOL GET_CHARACTER_MENU_PED_FLOAT_STAT(float statHash, float* outValue, BOOL p2) // 0x8F08017F9D7C47BD
function HUD.GET_CHARACTER_MENU_PED_FLOAT_STAT(statHash, outValue, p2)
  return native.invoke(
    Type.Bool, 1870, false,
    arg(Type.Float, statHash),
    ref(Type.Float, outValue),
    arg(Type.Bool, p2)
  )
end

-- BOOL GET_MENU_PED_BOOL_STAT(Hash statHash, BOOL* outValue) // 0x052991E59076E4E4
--[[
p0 was always 0xAE2602A3.
--]]
function HUD.GET_MENU_PED_BOOL_STAT(statHash, outValue)
  return native.invoke(
    Type.Bool, 1871, false,
    arg(Type.Hash, statHash),
    ref(Type.Bool, outValue)
  )
end

-- void CLEAR_PED_IN_PAUSE_MENU() // 0x5E62BE5DC58E9E06
function HUD.CLEAR_PED_IN_PAUSE_MENU()
  native.invoke(
    Type.Void, 1872, false
  )
end

-- void GIVE_PED_TO_PAUSE_MENU(Ped ped, int p1) // 0xAC0BFBDC3BE00E14
--[[
p1 is either 1 or 2 in the PC scripts.
--]]
function HUD.GIVE_PED_TO_PAUSE_MENU(ped, p1)
  native.invoke(
    Type.Void, 1873, false,
    arg(Type.Ped, ped),
    arg(Type.Int, p1)
  )
end

-- void SET_PAUSE_MENU_PED_LIGHTING(BOOL state) // 0x3CA6050692BC61B0
--[[
Toggles the light state for the pause menu ped in frontend menus.

This is used by R* in combination with `SET_PAUSE_MENU_PED_SLEEP_STATE` to toggle the "offline" or "online" state in the "friends" tab of the pause menu in GTA Online.


Example:
Lights On: https://vespura.com/hi/i/2019-04-01_16-09_540ee_1015.png
Lights Off: https://vespura.com/hi/i/2019-04-01_16-10_8b5e7_1016.png
--]]
function HUD.SET_PAUSE_MENU_PED_LIGHTING(state)
  native.invoke(
    Type.Void, 1874, false,
    arg(Type.Bool, state)
  )
end

-- void SET_PAUSE_MENU_PED_SLEEP_STATE(BOOL state) // 0xECF128344E9FF9F1
--[[
Toggles the pause menu ped sleep state for frontend menus.

Example: https://vespura.com/hi/i/2019-04-01_15-51_8ed38_1014.gif

`state` 0 will make the ped slowly fall asleep, 1 will slowly wake the ped up.
--]]
function HUD.SET_PAUSE_MENU_PED_SLEEP_STATE(state)
  native.invoke(
    Type.Void, 1875, false,
    arg(Type.Bool, state)
  )
end

-- void OPEN_ONLINE_POLICIES_MENU() // 0x805D7CBB36FD6C4C
function HUD.OPEN_ONLINE_POLICIES_MENU()
  native.invoke(
    Type.Void, 1876, false
  )
end

-- BOOL ARE_ONLINE_POLICIES_UP_TO_DATE() // 0xF13FE2A80C05C561
function HUD.ARE_ONLINE_POLICIES_UP_TO_DATE()
  return native.invoke(
    Type.Bool, 1877, false
  )
end

-- BOOL IS_ONLINE_POLICIES_MENU_ACTIVE() // 0x6F72CD94F7B5B68C
--[[
Returns the same as IS_SOCIAL_CLUB_ACTIVE
--]]
function HUD.IS_ONLINE_POLICIES_MENU_ACTIVE()
  return native.invoke(
    Type.Bool, 1878, false
  )
end

-- void OPEN_SOCIAL_CLUB_MENU(Hash menu) // 0x75D3691713C3B05A
--[[
Uses the `SOCIAL_CLUB2` scaleform.
menu: GALLERY, MISSIONS, CREWS, MIGRATE, PLAYLISTS, JOBS
--]]
function HUD.OPEN_SOCIAL_CLUB_MENU(menu)
  native.invoke(
    Type.Void, 1879, false,
    arg(Type.Hash, menu)
  )
end

-- void CLOSE_SOCIAL_CLUB_MENU() // 0xD2B32BE3FC1626C6
function HUD.CLOSE_SOCIAL_CLUB_MENU()
  native.invoke(
    Type.Void, 1880, false
  )
end

-- void SET_SOCIAL_CLUB_TOUR(const char* name) // 0x9E778248D6685FE0
--[[
HUD::SET_SOCIAL_CLUB_TOUR("Gallery");
HUD::SET_SOCIAL_CLUB_TOUR("Missions");
HUD::SET_SOCIAL_CLUB_TOUR("General");
HUD::SET_SOCIAL_CLUB_TOUR("Playlists");
--]]
function HUD.SET_SOCIAL_CLUB_TOUR(name)
  native.invoke(
    Type.Void, 1881, false,
    arg(Type.String, name)
  )
end

-- BOOL IS_SOCIAL_CLUB_ACTIVE() // 0xC406BE343FC4B9AF
function HUD.IS_SOCIAL_CLUB_ACTIVE()
  return native.invoke(
    Type.Bool, 1882, false
  )
end

-- void SET_TEXT_INPUT_BOX_ENABLED(BOOL p0) // 0x1185A8087587322C
function HUD.SET_TEXT_INPUT_BOX_ENABLED(p0)
  native.invoke(
    Type.Void, 1883, false,
    arg(Type.Bool, p0)
  )
end

-- void FORCE_CLOSE_TEXT_INPUT_BOX() // 0x8817605C2BA76200
function HUD.FORCE_CLOSE_TEXT_INPUT_BOX()
  native.invoke(
    Type.Void, 1884, false
  )
end

-- void SET_ALLOW_COMMA_ON_TEXT_INPUT(Any p0) // 0x577599CCED639CA2
function HUD.SET_ALLOW_COMMA_ON_TEXT_INPUT(p0)
  native.invoke(
    Type.Void, 1885, false,
    arg(Type.Any, p0)
  )
end

-- void OVERRIDE_MP_TEXT_CHAT_TEAM_STRING(Hash gxtEntryHash) // 0x6A1738B4323FE2D9
function HUD.OVERRIDE_MP_TEXT_CHAT_TEAM_STRING(gxtEntryHash)
  native.invoke(
    Type.Void, 1886, false,
    arg(Type.Hash, gxtEntryHash)
  )
end

-- BOOL IS_MP_TEXT_CHAT_TYPING() // 0xB118AF58B5F332A1
--[[
Returns whether or not the text chat (MULTIPLAYER_CHAT Scaleform component) is active.
--]]
function HUD.IS_MP_TEXT_CHAT_TYPING()
  return native.invoke(
    Type.Bool, 1887, false
  )
end

-- void CLOSE_MP_TEXT_CHAT() // 0x1AC8F4AD40E22127
function HUD.CLOSE_MP_TEXT_CHAT()
  native.invoke(
    Type.Void, 1888, false
  )
end

-- void MP_TEXT_CHAT_IS_TEAM_JOB(Any p0) // 0x7C226D5346D4D10A
function HUD.MP_TEXT_CHAT_IS_TEAM_JOB(p0)
  native.invoke(
    Type.Void, 1889, false,
    arg(Type.Any, p0)
  )
end

-- void OVERRIDE_MP_TEXT_CHAT_COLOR(int p0, int hudColor) // 0xF47E567B3630DD12
function HUD.OVERRIDE_MP_TEXT_CHAT_COLOR(p0, hudColor)
  native.invoke(
    Type.Void, 1890, false,
    arg(Type.Int, p0),
    arg(Type.Int, hudColor)
  )
end

-- void MP_TEXT_CHAT_DISABLE(BOOL toggle) // 0x1DB21A44B09E8BA3
--[[
Hides the chat history, closes the input box and makes it unable to be opened unless called again with FALSE.
--]]
function HUD.MP_TEXT_CHAT_DISABLE(toggle)
  native.invoke(
    Type.Void, 1891, false,
    arg(Type.Bool, toggle)
  )
end

-- void FLAG_PLAYER_CONTEXT_IN_TOURNAMENT(BOOL toggle) // 0xCEF214315D276FD1
function HUD.FLAG_PLAYER_CONTEXT_IN_TOURNAMENT(toggle)
  native.invoke(
    Type.Void, 1892, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_HAS_AI_BLIP(Ped ped, BOOL hasCone) // 0xD30C50DF888D58B5
--[[
This native turns on the AI blip on the specified ped. It also disappears automatically when the ped is too far or if the ped is dead. You don't need to control it with other natives.

See gtaforums.com/topic/884370-native-research-ai-blips for further information.
--]]
function HUD.SET_PED_HAS_AI_BLIP(ped, hasCone)
  native.invoke(
    Type.Void, 1893, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, hasCone)
  )
end

-- void SET_PED_HAS_AI_BLIP_WITH_COLOUR(Ped ped, BOOL hasCone, int color) // 0xB13DCB4C6FAAD238
--[[
color: see SET_BLIP_COLOUR
--]]
function HUD.SET_PED_HAS_AI_BLIP_WITH_COLOUR(ped, hasCone, color)
  native.invoke(
    Type.Void, 1894, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, hasCone),
    arg(Type.Int, color)
  )
end

-- BOOL DOES_PED_HAVE_AI_BLIP(Ped ped) // 0x15B8ECF844EE67ED
function HUD.DOES_PED_HAVE_AI_BLIP(ped)
  return native.invoke(
    Type.Bool, 1895, false,
    arg(Type.Ped, ped)
  )
end

-- void SET_PED_AI_BLIP_GANG_ID(Ped ped, int gangId) // 0xE52B8E7F85D39A08
function HUD.SET_PED_AI_BLIP_GANG_ID(ped, gangId)
  native.invoke(
    Type.Void, 1896, false,
    arg(Type.Ped, ped),
    arg(Type.Int, gangId)
  )
end

-- void SET_PED_AI_BLIP_HAS_CONE(Ped ped, BOOL toggle) // 0x3EED80DFF7325CAA
function HUD.SET_PED_AI_BLIP_HAS_CONE(ped, toggle)
  native.invoke(
    Type.Void, 1897, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_AI_BLIP_FORCED_ON(Ped ped, BOOL toggle) // 0x0C4BBF625CA98C4E
function HUD.SET_PED_AI_BLIP_FORCED_ON(ped, toggle)
  native.invoke(
    Type.Void, 1898, false,
    arg(Type.Ped, ped),
    arg(Type.Bool, toggle)
  )
end

-- void SET_PED_AI_BLIP_NOTICE_RANGE(Ped ped, float range) // 0x97C65887D4B37FA9
function HUD.SET_PED_AI_BLIP_NOTICE_RANGE(ped, range)
  native.invoke(
    Type.Void, 1899, false,
    arg(Type.Ped, ped),
    arg(Type.Float, range)
  )
end

-- void SET_PED_AI_BLIP_SPRITE(Ped ped, int spriteId) // 0xFCFACD0DB9D7A57D
function HUD.SET_PED_AI_BLIP_SPRITE(ped, spriteId)
  native.invoke(
    Type.Void, 1900, false,
    arg(Type.Ped, ped),
    arg(Type.Int, spriteId)
  )
end

-- Blip GET_AI_PED_PED_BLIP_INDEX(Ped ped) // 0x7CD934010E115C2C
function HUD.GET_AI_PED_PED_BLIP_INDEX(ped)
  return native.invoke(
    Type.Blip, 1901, false,
    arg(Type.Ped, ped)
  )
end

-- Blip GET_AI_PED_VEHICLE_BLIP_INDEX(Ped ped) // 0x56176892826A4FE8
--[[
Returns the current AI BLIP for the specified ped
--]]
function HUD.GET_AI_PED_VEHICLE_BLIP_INDEX(ped)
  return native.invoke(
    Type.Blip, 1902, false,
    arg(Type.Ped, ped)
  )
end

-- BOOL HAS_DIRECTOR_MODE_BEEN_LAUNCHED_BY_CODE() // 0xA277800A9EAE340E
function HUD.HAS_DIRECTOR_MODE_BEEN_LAUNCHED_BY_CODE()
  return native.invoke(
    Type.Bool, 1903, false
  )
end

-- void SET_DIRECTOR_MODE_LAUNCHED_BY_SCRIPT() // 0x2632482FD6B9AB87
function HUD.SET_DIRECTOR_MODE_LAUNCHED_BY_SCRIPT()
  native.invoke(
    Type.Void, 1904, false
  )
end

-- void SET_PLAYER_IS_IN_DIRECTOR_MODE(BOOL toggle) // 0x808519373FD336A3
--[[
If toggle is true, hides special ability bar / character name in the pause menu
If toggle is false, shows special ability bar / character name in the pause menu
--]]
function HUD.SET_PLAYER_IS_IN_DIRECTOR_MODE(toggle)
  native.invoke(
    Type.Void, 1905, false,
    arg(Type.Bool, toggle)
  )
end

-- void SET_DIRECTOR_MODE_AVAILABLE(BOOL toggle) // 0x04655F9D075D0AE5
function HUD.SET_DIRECTOR_MODE_AVAILABLE(toggle)
  native.invoke(
    Type.Void, 1906, false,
    arg(Type.Bool, toggle)
  )
end

-- void HIDE_HUDMARKERS_THIS_FRAME() // 0x243296A510B562B6
function HUD.HIDE_HUDMARKERS_THIS_FRAME()
  native.invoke(
    Type.Void, 1907, false
  )
end


