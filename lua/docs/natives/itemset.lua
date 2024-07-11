ITEMSET = {}

-- ScrHandle CREATE_ITEMSET(BOOL p0) // 0x35AD299F50D91B24
function ITEMSET.CREATE_ITEMSET(p0)
  return native.invoke(
    Type.Scrhandle, 1953, false,
    arg(Type.Bool, p0)
  )
end

-- void DESTROY_ITEMSET(ScrHandle itemset) // 0xDE18220B1C183EDA
function ITEMSET.DESTROY_ITEMSET(itemset)
  native.invoke(
    Type.Void, 1954, false,
    arg(Type.Scrhandle, itemset)
  )
end

-- BOOL IS_ITEMSET_VALID(ScrHandle itemset) // 0xB1B1EA596344DFAB
function ITEMSET.IS_ITEMSET_VALID(itemset)
  return native.invoke(
    Type.Bool, 1955, false,
    arg(Type.Scrhandle, itemset)
  )
end

-- BOOL ADD_TO_ITEMSET(ScrHandle item, ScrHandle itemset) // 0xE3945201F14637DD
function ITEMSET.ADD_TO_ITEMSET(item, itemset)
  return native.invoke(
    Type.Bool, 1956, false,
    arg(Type.Scrhandle, item),
    arg(Type.Scrhandle, itemset)
  )
end

-- void REMOVE_FROM_ITEMSET(ScrHandle item, ScrHandle itemset) // 0x25E68244B0177686
function ITEMSET.REMOVE_FROM_ITEMSET(item, itemset)
  native.invoke(
    Type.Void, 1957, false,
    arg(Type.Scrhandle, item),
    arg(Type.Scrhandle, itemset)
  )
end

-- int GET_ITEMSET_SIZE(ScrHandle itemset) // 0xD9127E83ABF7C631
function ITEMSET.GET_ITEMSET_SIZE(itemset)
  return native.invoke(
    Type.Int, 1958, false,
    arg(Type.Scrhandle, itemset)
  )
end

-- ScrHandle GET_INDEXED_ITEM_IN_ITEMSET(int index, ScrHandle itemset) // 0x7A197E2521EE2BAB
function ITEMSET.GET_INDEXED_ITEM_IN_ITEMSET(index, itemset)
  return native.invoke(
    Type.Scrhandle, 1959, false,
    arg(Type.Int, index),
    arg(Type.Scrhandle, itemset)
  )
end

-- BOOL IS_IN_ITEMSET(ScrHandle item, ScrHandle itemset) // 0x2D0FC594D1E9C107
function ITEMSET.IS_IN_ITEMSET(item, itemset)
  return native.invoke(
    Type.Bool, 1960, false,
    arg(Type.Scrhandle, item),
    arg(Type.Scrhandle, itemset)
  )
end

-- void CLEAN_ITEMSET(ScrHandle itemset) // 0x41BC0D722FC04221
function ITEMSET.CLEAN_ITEMSET(itemset)
  native.invoke(
    Type.Void, 1961, false,
    arg(Type.Scrhandle, itemset)
  )
end


