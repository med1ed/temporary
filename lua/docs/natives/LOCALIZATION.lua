LOCALIZATION = {}

-- int LOCALIZATION_GET_SYSTEM_LANGUAGE() // 0x497420E022796B3F
--[[
Same return values as GET_CURRENT_LANGUAGE
--]]
function LOCALIZATION.LOCALIZATION_GET_SYSTEM_LANGUAGE()
  return native.invoke(
    Type.Int, 1970, false
  )
end

-- int GET_CURRENT_LANGUAGE() // 0x2BDD44CC428A7EAE
--[[
0 = american (en-US)
1 = french (fr-FR)
2 = german (de-DE)
3 = italian (it-IT)
4 = spanish (es-ES)
5 = brazilian (pt-BR)
6 = polish (pl-PL)
7 = russian (ru-RU)
8 = korean (ko-KR)
9 = chinesetrad (zh-TW)
10 = japanese (ja-JP)
11 = mexican (es-MX)
12 = chinesesimp (zh-CN)
--]]
function LOCALIZATION.GET_CURRENT_LANGUAGE()
  return native.invoke(
    Type.Int, 1971, false
  )
end

-- int LOCALIZATION_GET_SYSTEM_DATE_TYPE() // 0xA8AE43AEC1A61314
--[[
Possible return values: 0, 1, 2
--]]
function LOCALIZATION.LOCALIZATION_GET_SYSTEM_DATE_TYPE()
  return native.invoke(
    Type.Int, 1972, false
  )
end


