SOCIALCLUB = {}

-- int SC_INBOX_GET_TOTAL_NUM_MESSAGES() // 0x03A93FF1A2CA0864
function SOCIALCLUB.SC_INBOX_GET_TOTAL_NUM_MESSAGES()
  return native.invoke(
    Type.Int, 4834, false
  )
end

-- Hash SC_INBOX_GET_MESSAGE_TYPE_AT_INDEX(int msgIndex) // 0xBB8EA16ECBC976C4
function SOCIALCLUB.SC_INBOX_GET_MESSAGE_TYPE_AT_INDEX(msgIndex)
  return native.invoke(
    Type.Hash, 4835, false,
    arg(Type.Int, msgIndex)
  )
end

-- BOOL SC_INBOX_GET_MESSAGE_IS_READ_AT_INDEX(int msgIndex) // 0x93028F1DB42BFD08
function SOCIALCLUB.SC_INBOX_GET_MESSAGE_IS_READ_AT_INDEX(msgIndex)
  return native.invoke(
    Type.Bool, 4836, false,
    arg(Type.Int, msgIndex)
  )
end

-- BOOL SC_INBOX_SET_MESSAGE_AS_READ_AT_INDEX(int msgIndex) // 0x2C015348CF19CA1D
function SOCIALCLUB.SC_INBOX_SET_MESSAGE_AS_READ_AT_INDEX(msgIndex)
  return native.invoke(
    Type.Bool, 4837, false,
    arg(Type.Int, msgIndex)
  )
end

-- BOOL SC_INBOX_MESSAGE_GET_DATA_INT(int p0, const char* context, int* out) // 0xA00EFE4082C4056E
function SOCIALCLUB.SC_INBOX_MESSAGE_GET_DATA_INT(p0, context, out)
  return native.invoke(
    Type.Bool, 4838, false,
    arg(Type.Int, p0),
    arg(Type.String, context),
    ref(Type.Int, out)
  )
end

-- BOOL SC_INBOX_MESSAGE_GET_DATA_BOOL(int p0, const char* p1) // 0xFFE5C16F402D851D
function SOCIALCLUB.SC_INBOX_MESSAGE_GET_DATA_BOOL(p0, p1)
  return native.invoke(
    Type.Bool, 4839, false,
    arg(Type.Int, p0),
    arg(Type.String, p1)
  )
end

-- BOOL SC_INBOX_MESSAGE_GET_DATA_STRING(int p0, const char* context, char* out) // 0x7572EF42FC6A9B6D
function SOCIALCLUB.SC_INBOX_MESSAGE_GET_DATA_STRING(p0, context, out)
  return native.invoke(
    Type.Bool, 4840, false,
    arg(Type.Int, p0),
    arg(Type.String, context),
    ref(Type.Char, out)
  )
end

-- BOOL SC_INBOX_MESSAGE_DO_APPLY(int p0) // 0x9A2C8064B6C1E41A
function SOCIALCLUB.SC_INBOX_MESSAGE_DO_APPLY(p0)
  return native.invoke(
    Type.Bool, 4841, false,
    arg(Type.Int, p0)
  )
end

-- const char* SC_INBOX_MESSAGE_GET_RAW_TYPE_AT_INDEX(int p0) // 0xF3E31D16CBDCB304
function SOCIALCLUB.SC_INBOX_MESSAGE_GET_RAW_TYPE_AT_INDEX(p0)
  return native.invoke(
    Type.String, 4842, false,
    arg(Type.Int, p0)
  )
end

-- void SC_INBOX_MESSAGE_PUSH_GAMER_T0_RECIP_LIST(Any* gamerHandle) // 0xDA024BDBD600F44A
function SOCIALCLUB.SC_INBOX_MESSAGE_PUSH_GAMER_T0_RECIP_LIST(gamerHandle)
  native.invoke(
    Type.Void, 4843, false,
    ref(Type.Any, gamerHandle)
  )
end

-- void SC_INBOX_SEND_UGCSTATUPDATE_TO_RECIP_LIST(Any* data) // 0xA68D3D229F4F3B06
function SOCIALCLUB.SC_INBOX_SEND_UGCSTATUPDATE_TO_RECIP_LIST(data)
  native.invoke(
    Type.Void, 4844, false,
    ref(Type.Any, data)
  )
end

-- BOOL SC_INBOX_MESSAGE_GET_UGCDATA(int p0, Any* p1) // 0x69D82604A1A5A254
function SOCIALCLUB.SC_INBOX_MESSAGE_GET_UGCDATA(p0, p1)
  return native.invoke(
    Type.Bool, 4845, false,
    arg(Type.Int, p0),
    ref(Type.Any, p1)
  )
end

-- BOOL SC_INBOX_GET_BOUNTY_DATA_AT_INDEX(int index, Any* outData) // 0x87E0052F08BD64E6
function SOCIALCLUB.SC_INBOX_GET_BOUNTY_DATA_AT_INDEX(index, outData)
  return native.invoke(
    Type.Bool, 4846, false,
    arg(Type.Int, index),
    ref(Type.Any, outData)
  )
end

-- void SC_EMAIL_RETRIEVE_EMAILS(int offset, int limit) // 0x040ADDCBAFA1018A
function SOCIALCLUB.SC_EMAIL_RETRIEVE_EMAILS(offset, limit)
  native.invoke(
    Type.Void, 4847, false,
    arg(Type.Int, offset),
    arg(Type.Int, limit)
  )
end

-- int SC_EMAIL_GET_RETRIEVAL_STATUS() // 0x16DA8172459434AA
function SOCIALCLUB.SC_EMAIL_GET_RETRIEVAL_STATUS()
  return native.invoke(
    Type.Int, 4848, false
  )
end

-- int SC_EMAIL_GET_NUM_RETRIEVED_EMAILS() // 0x7DB18CA8CAD5B098
function SOCIALCLUB.SC_EMAIL_GET_NUM_RETRIEVED_EMAILS()
  return native.invoke(
    Type.Int, 4849, false
  )
end

-- BOOL SC_EMAIL_GET_EMAIL_AT_INDEX(int p0, Any* p1) // 0x4737980E8A283806
function SOCIALCLUB.SC_EMAIL_GET_EMAIL_AT_INDEX(p0, p1)
  return native.invoke(
    Type.Bool, 4850, false,
    arg(Type.Int, p0),
    ref(Type.Any, p1)
  )
end

-- void SC_EMAIL_DELETE_EMAILS(Any* p0, Any p1) // 0x44ACA259D67651DB
function SOCIALCLUB.SC_EMAIL_DELETE_EMAILS(p0, p1)
  native.invoke(
    Type.Void, 4851, false,
    ref(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- void SC_EMAIL_MESSAGE_PUSH_GAMER_TO_RECIP_LIST(Any* gamerHandle) // 0x2330C12A7A605D16
function SOCIALCLUB.SC_EMAIL_MESSAGE_PUSH_GAMER_TO_RECIP_LIST(gamerHandle)
  native.invoke(
    Type.Void, 4852, false,
    ref(Type.Any, gamerHandle)
  )
end

-- void SC_EMAIL_MESSAGE_CLEAR_RECIP_LIST() // 0x55DF6DB45179236E
function SOCIALCLUB.SC_EMAIL_MESSAGE_CLEAR_RECIP_LIST()
  native.invoke(
    Type.Void, 4853, false
  )
end

-- void SC_EMAIL_SEND_EMAIL(const char* p0) // 0x116FB94DC4B79F17
function SOCIALCLUB.SC_EMAIL_SEND_EMAIL(p0)
  native.invoke(
    Type.Void, 4854, false,
    arg(Type.String, p0)
  )
end

-- BOOL SC_EMAIL_SET_CURRENT_EMAIL_TAG(Any p0) // 0x07DBD622D9533857
function SOCIALCLUB.SC_EMAIL_SET_CURRENT_EMAIL_TAG(p0)
  return native.invoke(
    Type.Bool, 4855, false,
    arg(Type.Any, p0)
  )
end

-- void SC_CACHE_NEW_ROCKSTAR_MSGS(BOOL toggle) // 0xBFA0A56A817C6C7D
function SOCIALCLUB.SC_CACHE_NEW_ROCKSTAR_MSGS(toggle)
  native.invoke(
    Type.Void, 4856, false,
    arg(Type.Bool, toggle)
  )
end

-- BOOL SC_HAS_NEW_ROCKSTAR_MSG() // 0xBC1CC91205EC8D6E
function SOCIALCLUB.SC_HAS_NEW_ROCKSTAR_MSG()
  return native.invoke(
    Type.Bool, 4857, false
  )
end

-- const char* SC_GET_NEW_ROCKSTAR_MSG() // 0xDF649C4E9AFDD788
function SOCIALCLUB.SC_GET_NEW_ROCKSTAR_MSG()
  return native.invoke(
    Type.String, 4858, false
  )
end

-- BOOL SC_PRESENCE_ATTR_SET_INT(Hash attrHash, int value) // 0x1F1E9682483697C7
function SOCIALCLUB.SC_PRESENCE_ATTR_SET_INT(attrHash, value)
  return native.invoke(
    Type.Bool, 4859, false,
    arg(Type.Hash, attrHash),
    arg(Type.Int, value)
  )
end

-- BOOL SC_PRESENCE_ATTR_SET_FLOAT(Hash attrHash, float value) // 0xC4C4575F62534A24
function SOCIALCLUB.SC_PRESENCE_ATTR_SET_FLOAT(attrHash, value)
  return native.invoke(
    Type.Bool, 4860, false,
    arg(Type.Hash, attrHash),
    arg(Type.Float, value)
  )
end

-- BOOL SC_PRESENCE_ATTR_SET_STRING(Hash attrHash, const char* value) // 0x287F1F75D2803595
function SOCIALCLUB.SC_PRESENCE_ATTR_SET_STRING(attrHash, value)
  return native.invoke(
    Type.Bool, 4861, false,
    arg(Type.Hash, attrHash),
    arg(Type.String, value)
  )
end

-- BOOL SC_PRESENCE_SET_ACTIVITY_RATING(Any p0, float p1) // 0x487912FD248EFDDF
function SOCIALCLUB.SC_PRESENCE_SET_ACTIVITY_RATING(p0, p1)
  return native.invoke(
    Type.Bool, 4862, false,
    arg(Type.Any, p0),
    arg(Type.Float, p1)
  )
end

-- BOOL SC_GAMERDATA_GET_INT(const char* name, int* value) // 0xC85A7127E7AD02AA
function SOCIALCLUB.SC_GAMERDATA_GET_INT(name, value)
  return native.invoke(
    Type.Bool, 4863, false,
    arg(Type.String, name),
    ref(Type.Int, value)
  )
end

-- BOOL SC_GAMERDATA_GET_FLOAT(const char* name, float* value) // 0xA770C8EEC6FB2AC5
function SOCIALCLUB.SC_GAMERDATA_GET_FLOAT(name, value)
  return native.invoke(
    Type.Bool, 4864, false,
    arg(Type.String, name),
    ref(Type.Float, value)
  )
end

-- BOOL SC_GAMERDATA_GET_BOOL(const char* name) // 0x8416FE4E4629D7D7
function SOCIALCLUB.SC_GAMERDATA_GET_BOOL(name)
  return native.invoke(
    Type.Bool, 4865, false,
    arg(Type.String, name)
  )
end

-- BOOL SC_GAMERDATA_GET_STRING(const char* name, char* value) // 0x7FFCBFEE44ECFABF
function SOCIALCLUB.SC_GAMERDATA_GET_STRING(name, value)
  return native.invoke(
    Type.Bool, 4866, false,
    arg(Type.String, name),
    ref(Type.Char, value)
  )
end

-- BOOL SC_GAMERDATA_GET_ACTIVE_XP_BONUS(float* value) // 0x2D874D4AE612A65F
function SOCIALCLUB.SC_GAMERDATA_GET_ACTIVE_XP_BONUS(value)
  return native.invoke(
    Type.Bool, 4867, false,
    ref(Type.Float, value)
  )
end

-- BOOL SC_PROFANITY_CHECK_STRING(const char* string, int* token) // 0x75632C5ECD7ED843
--[[
Starts a task to check an entered string for profanity on the ROS/Social Club services.

See also: 1753344C770358AE, 82E4A58BABC15AE7.
--]]
function SOCIALCLUB.SC_PROFANITY_CHECK_STRING(string, token)
  return native.invoke(
    Type.Bool, 4868, false,
    arg(Type.String, string),
    ref(Type.Int, token)
  )
end

-- BOOL SC_PROFANITY_CHECK_STRING_UGC(const char* string, int* token) // 0xEB2BF817463DFA28
function SOCIALCLUB.SC_PROFANITY_CHECK_STRING_UGC(string, token)
  return native.invoke(
    Type.Bool, 4869, false,
    arg(Type.String, string),
    ref(Type.Int, token)
  )
end

-- BOOL SC_PROFANITY_GET_CHECK_IS_VALID(int token) // 0x1753344C770358AE
function SOCIALCLUB.SC_PROFANITY_GET_CHECK_IS_VALID(token)
  return native.invoke(
    Type.Bool, 4870, false,
    arg(Type.Int, token)
  )
end

-- BOOL SC_PROFANITY_GET_CHECK_IS_PENDING(int token) // 0x82E4A58BABC15AE7
function SOCIALCLUB.SC_PROFANITY_GET_CHECK_IS_PENDING(token)
  return native.invoke(
    Type.Bool, 4871, false,
    arg(Type.Int, token)
  )
end

-- BOOL SC_PROFANITY_GET_STRING_PASSED(int token) // 0x85535ACF97FC0969
function SOCIALCLUB.SC_PROFANITY_GET_STRING_PASSED(token)
  return native.invoke(
    Type.Bool, 4872, false,
    arg(Type.Int, token)
  )
end

-- int SC_PROFANITY_GET_STRING_STATUS(int token) // 0x930DE22F07B1CCE3
function SOCIALCLUB.SC_PROFANITY_GET_STRING_STATUS(token)
  return native.invoke(
    Type.Int, 4873, false,
    arg(Type.Int, token)
  )
end

-- BOOL SC_LICENSEPLATE_CHECK_STRING(const char* p0, int* p1) // 0xF6BAAAF762E1BF40
function SOCIALCLUB.SC_LICENSEPLATE_CHECK_STRING(p0, p1)
  return native.invoke(
    Type.Bool, 4874, false,
    arg(Type.String, p0),
    ref(Type.Int, p1)
  )
end

-- BOOL SC_LICENSEPLATE_GET_CHECK_IS_VALID(Any p0) // 0xF22CA0FD74B80E7A
function SOCIALCLUB.SC_LICENSEPLATE_GET_CHECK_IS_VALID(p0)
  return native.invoke(
    Type.Bool, 4875, false,
    arg(Type.Any, p0)
  )
end

-- BOOL SC_LICENSEPLATE_GET_CHECK_IS_PENDING(Any p0) // 0x9237E334F6E43156
function SOCIALCLUB.SC_LICENSEPLATE_GET_CHECK_IS_PENDING(p0)
  return native.invoke(
    Type.Bool, 4876, false,
    arg(Type.Any, p0)
  )
end

-- int SC_LICENSEPLATE_GET_COUNT(int token) // 0x700569DBA175A77C
function SOCIALCLUB.SC_LICENSEPLATE_GET_COUNT(token)
  return native.invoke(
    Type.Int, 4877, false,
    arg(Type.Int, token)
  )
end

-- const char* SC_LICENSEPLATE_GET_PLATE(int token, int plateIndex) // 0x1D4446A62D35B0D0
function SOCIALCLUB.SC_LICENSEPLATE_GET_PLATE(token, plateIndex)
  return native.invoke(
    Type.String, 4878, false,
    arg(Type.Int, token),
    arg(Type.Int, plateIndex)
  )
end

-- const char* SC_LICENSEPLATE_GET_PLATE_DATA(int token, int plateIndex) // 0x2E89990DDFF670C3
function SOCIALCLUB.SC_LICENSEPLATE_GET_PLATE_DATA(token, plateIndex)
  return native.invoke(
    Type.String, 4879, false,
    arg(Type.Int, token),
    arg(Type.Int, plateIndex)
  )
end

-- BOOL SC_LICENSEPLATE_SET_PLATE_DATA(const char* oldPlateText, const char* newPlateText, Any* plateData) // 0xD0EE05FE193646EA
function SOCIALCLUB.SC_LICENSEPLATE_SET_PLATE_DATA(oldPlateText, newPlateText, plateData)
  return native.invoke(
    Type.Bool, 4880, false,
    arg(Type.String, oldPlateText),
    arg(Type.String, newPlateText),
    ref(Type.Any, plateData)
  )
end

-- BOOL SC_LICENSEPLATE_ADD(const char* plateText, Any* plateData, int* token) // 0x1989C6E6F67E76A8
function SOCIALCLUB.SC_LICENSEPLATE_ADD(plateText, plateData, token)
  return native.invoke(
    Type.Bool, 4881, false,
    arg(Type.String, plateText),
    ref(Type.Any, plateData),
    ref(Type.Int, token)
  )
end

-- BOOL SC_LICENSEPLATE_GET_ADD_IS_PENDING(int token) // 0x07C61676E5BB52CD
function SOCIALCLUB.SC_LICENSEPLATE_GET_ADD_IS_PENDING(token)
  return native.invoke(
    Type.Bool, 4882, false,
    arg(Type.Int, token)
  )
end

-- int SC_LICENSEPLATE_GET_ADD_STATUS(int token) // 0x8147FFF6A718E1AD
function SOCIALCLUB.SC_LICENSEPLATE_GET_ADD_STATUS(token)
  return native.invoke(
    Type.Int, 4883, false,
    arg(Type.Int, token)
  )
end

-- BOOL SC_LICENSEPLATE_ISVALID(const char* plateText, int* token) // 0x0F73393BAC7E6730
function SOCIALCLUB.SC_LICENSEPLATE_ISVALID(plateText, token)
  return native.invoke(
    Type.Bool, 4884, false,
    arg(Type.String, plateText),
    ref(Type.Int, token)
  )
end

-- BOOL SC_LICENSEPLATE_GET_ISVALID_IS_PENDING(int token) // 0xD302E99EDF0449CF
function SOCIALCLUB.SC_LICENSEPLATE_GET_ISVALID_IS_PENDING(token)
  return native.invoke(
    Type.Bool, 4885, false,
    arg(Type.Int, token)
  )
end

-- int SC_LICENSEPLATE_GET_ISVALID_STATUS(int token) // 0x5C4EBFFA98BDB41C
function SOCIALCLUB.SC_LICENSEPLATE_GET_ISVALID_STATUS(token)
  return native.invoke(
    Type.Int, 4886, false,
    arg(Type.Int, token)
  )
end

-- BOOL SC_COMMUNITY_EVENT_IS_ACTIVE() // 0xFF8F3A92B75ED67A
function SOCIALCLUB.SC_COMMUNITY_EVENT_IS_ACTIVE()
  return native.invoke(
    Type.Bool, 4887, false
  )
end

-- int SC_COMMUNITY_EVENT_GET_EVENT_ID() // 0x4ED9C8D6DA297639
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EVENT_ID()
  return native.invoke(
    Type.Int, 4888, false
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT(const char* p0, int* p1) // 0x710BCDA8071EDED1
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT(p0, p1)
  return native.invoke(
    Type.Bool, 4889, false,
    arg(Type.String, p0),
    ref(Type.Int, p1)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT(const char* p0, float* p1) // 0x50A8A36201DBF83E
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT(p0, p1)
  return native.invoke(
    Type.Bool, 4890, false,
    arg(Type.String, p0),
    ref(Type.Float, p1)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING(const char* p0, char* p1) // 0x9DE5D2F723575ED0
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING(p0, p1)
  return native.invoke(
    Type.Bool, 4891, false,
    arg(Type.String, p0),
    ref(Type.Char, p1)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_DISPLAY_NAME(char* p0) // 0xC2C97EA97711D1AE
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_DISPLAY_NAME(p0)
  return native.invoke(
    Type.Bool, 4892, false,
    ref(Type.Char, p0)
  )
end

-- BOOL SC_COMMUNITY_EVENT_IS_ACTIVE_FOR_TYPE(const char* p0) // 0x450819D8CF90C416
function SOCIALCLUB.SC_COMMUNITY_EVENT_IS_ACTIVE_FOR_TYPE(p0)
  return native.invoke(
    Type.Bool, 4893, false,
    arg(Type.String, p0)
  )
end

-- int SC_COMMUNITY_EVENT_GET_EVENT_ID_FOR_TYPE(const char* p0) // 0x4A7D6E727F941747
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EVENT_ID_FOR_TYPE(p0)
  return native.invoke(
    Type.Int, 4894, false,
    arg(Type.String, p0)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT_FOR_TYPE(const char* p0, int* p1, const char* p2) // 0xE75A4A2E5E316D86
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT_FOR_TYPE(p0, p1, p2)
  return native.invoke(
    Type.Bool, 4895, false,
    arg(Type.String, p0),
    ref(Type.Int, p1),
    arg(Type.String, p2)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT_FOR_TYPE(const char* p0, float* p1, const char* p2) // 0x2570E26BE63964E3
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT_FOR_TYPE(p0, p1, p2)
  return native.invoke(
    Type.Bool, 4896, false,
    arg(Type.String, p0),
    ref(Type.Float, p1),
    arg(Type.String, p2)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING_FOR_TYPE(const char* p0, char* p1, const char* p2) // 0x1D12A56FC95BE92E
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING_FOR_TYPE(p0, p1, p2)
  return native.invoke(
    Type.Bool, 4897, false,
    arg(Type.String, p0),
    ref(Type.Char, p1),
    arg(Type.String, p2)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_DISPLAY_NAME_FOR_TYPE(char* p0, const char* p1) // 0x33DF47CC0642061B
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_DISPLAY_NAME_FOR_TYPE(p0, p1)
  return native.invoke(
    Type.Bool, 4898, false,
    ref(Type.Char, p0),
    arg(Type.String, p1)
  )
end

-- BOOL SC_COMMUNITY_EVENT_IS_ACTIVE_BY_ID(int p0) // 0xA468E0BE12B12C70
function SOCIALCLUB.SC_COMMUNITY_EVENT_IS_ACTIVE_BY_ID(p0)
  return native.invoke(
    Type.Bool, 4899, false,
    arg(Type.Int, p0)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT_BY_ID(int p0, const char* p1, int* p2) // 0x8CC469AB4D349B7C
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_INT_BY_ID(p0, p1, p2)
  return native.invoke(
    Type.Bool, 4900, false,
    arg(Type.Int, p0),
    arg(Type.String, p1),
    ref(Type.Int, p2)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT_BY_ID(int p0, const char* p1, float* p2) // 0xC5A35C73B68F3C49
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_FLOAT_BY_ID(p0, p1, p2)
  return native.invoke(
    Type.Bool, 4901, false,
    arg(Type.Int, p0),
    arg(Type.String, p1),
    ref(Type.Float, p2)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING_BY_ID(int p0, const char* p1, char* p2) // 0x699E4A5C8C893A18
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_EXTRA_DATA_STRING_BY_ID(p0, p1, p2)
  return native.invoke(
    Type.Bool, 4902, false,
    arg(Type.Int, p0),
    arg(Type.String, p1),
    ref(Type.Char, p2)
  )
end

-- BOOL SC_COMMUNITY_EVENT_GET_DISPLAY_NAME_BY_ID(int p0, char* p1) // 0x19853B5B17D77BCA
function SOCIALCLUB.SC_COMMUNITY_EVENT_GET_DISPLAY_NAME_BY_ID(p0, p1)
  return native.invoke(
    Type.Bool, 4903, false,
    arg(Type.Int, p0),
    ref(Type.Char, p1)
  )
end

-- BOOL SC_TRANSITION_NEWS_SHOW(Any p0) // 0x6BFB12CE158E3DD4
function SOCIALCLUB.SC_TRANSITION_NEWS_SHOW(p0)
  return native.invoke(
    Type.Bool, 4904, false,
    arg(Type.Any, p0)
  )
end

-- BOOL SC_TRANSITION_NEWS_SHOW_TIMED(Any p0, Any p1) // 0xFE4C1D0D3B9CC17E
function SOCIALCLUB.SC_TRANSITION_NEWS_SHOW_TIMED(p0, p1)
  return native.invoke(
    Type.Bool, 4905, false,
    arg(Type.Any, p0),
    arg(Type.Any, p1)
  )
end

-- BOOL SC_TRANSITION_NEWS_SHOW_NEXT_ITEM() // 0xD8122C407663B995
function SOCIALCLUB.SC_TRANSITION_NEWS_SHOW_NEXT_ITEM()
  return native.invoke(
    Type.Bool, 4906, false
  )
end

-- BOOL SC_TRANSITION_NEWS_HAS_EXTRA_DATA_TU() // 0x3001BEF2FECA3680
function SOCIALCLUB.SC_TRANSITION_NEWS_HAS_EXTRA_DATA_TU()
  return native.invoke(
    Type.Bool, 4907, false
  )
end

-- BOOL SC_TRANSITION_NEWS_GET_EXTRA_DATA_INT_TU(const char* p0, int* p1) // 0x92DA6E70EF249BD1
function SOCIALCLUB.SC_TRANSITION_NEWS_GET_EXTRA_DATA_INT_TU(p0, p1)
  return native.invoke(
    Type.Bool, 4908, false,
    arg(Type.String, p0),
    ref(Type.Int, p1)
  )
end

-- void SC_TRANSITION_NEWS_END() // 0x675721C9F644D161
function SOCIALCLUB.SC_TRANSITION_NEWS_END()
  native.invoke(
    Type.Void, 4909, false
  )
end

-- BOOL SC_PAUSE_NEWS_INIT_STARTER_PACK(Any p0) // 0xE4F6E8D07A2F0F51
function SOCIALCLUB.SC_PAUSE_NEWS_INIT_STARTER_PACK(p0)
  return native.invoke(
    Type.Bool, 4910, false,
    arg(Type.Any, p0)
  )
end

-- BOOL SC_PAUSE_NEWS_GET_PENDING_STORY(Any p0) // 0x8A4416C0DB05FA66
--[[
Fills some 0x30 sized struct
--]]
function SOCIALCLUB.SC_PAUSE_NEWS_GET_PENDING_STORY(p0)
  return native.invoke(
    Type.Bool, 4911, false,
    arg(Type.Any, p0)
  )
end

-- void SC_PAUSE_NEWS_SHUTDOWN() // 0xEA95C0853A27888E
function SOCIALCLUB.SC_PAUSE_NEWS_SHUTDOWN()
  native.invoke(
    Type.Void, 4912, false
  )
end

-- const char* SC_ACCOUNT_INFO_GET_NICKNAME() // 0x198D161F458ECC7F
--[[
Returns the nickname of the logged-in Rockstar Social Club account.
--]]
function SOCIALCLUB.SC_ACCOUNT_INFO_GET_NICKNAME()
  return native.invoke(
    Type.String, 4913, false
  )
end

-- BOOL SC_ACHIEVEMENT_INFO_STATUS(int* p0) // 0x225798743970412B
function SOCIALCLUB.SC_ACHIEVEMENT_INFO_STATUS(p0)
  return native.invoke(
    Type.Bool, 4914, false,
    ref(Type.Int, p0)
  )
end

-- BOOL SC_HAS_ACHIEVEMENT_BEEN_PASSED(int achievementId) // 0x418DC16FAE452C1C
--[[
Same as HAS_ACHIEVEMENT_BEEN_PASSED
--]]
function SOCIALCLUB.SC_HAS_ACHIEVEMENT_BEEN_PASSED(achievementId)
  return native.invoke(
    Type.Bool, 4915, false,
    arg(Type.Int, achievementId)
  )
end


