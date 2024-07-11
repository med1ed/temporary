ZONE = {}

-- int GET_ZONE_AT_COORDS(float x, float y, float z) // 0x27040C25DE6CB2F4
function ZONE.GET_ZONE_AT_COORDS(x, y, z)
  return native.invoke(
    Type.Int, 6561, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- int GET_ZONE_FROM_NAME_ID(const char* zoneName) // 0x98CD1D2934B76CC1
--[[
'zoneName' corresponds to an entry in 'popzone.ipl'.

AIRP = Los Santos International Airport
ALAMO = Alamo Sea
ALTA = Alta
ARMYB = Fort Zancudo
BANHAMC = Banham Canyon Dr
BANNING = Banning
BEACH = Vespucci Beach
BHAMCA = Banham Canyon
BRADP = Braddock Pass
BRADT = Braddock Tunnel
BURTON = Burton
CALAFB = Calafia Bridge
CANNY = Raton Canyon
CCREAK = Cassidy Creek
CHAMH = Chamberlain Hills
CHIL = Vinewood Hills
CHU = Chumash
CMSW = Chiliad Mountain State Wilderness
CYPRE = Cypress Flats
DAVIS = Davis
DELBE = Del Perro Beach
DELPE = Del Perro
DELSOL = La Puerta
DESRT = Grand Senora Desert
DOWNT = Downtown
DTVINE = Downtown Vinewood
EAST_V = East Vinewood
EBURO = El Burro Heights
ELGORL = El Gordo Lighthouse
ELYSIAN = Elysian Island
GALFISH = Galilee
GOLF = GWC and Golfing Society
GRAPES = Grapeseed
GREATC = Great Chaparral
HARMO = Harmony
HAWICK = Hawick
HORS = Vinewood Racetrack
HUMLAB = Humane Labs and Research
JAIL = Bolingbroke Penitentiary
KOREAT = Little Seoul
LACT = Land Act Reservoir
LAGO = Lago Zancudo
LDAM = Land Act Dam
LEGSQU = Legion Square
LMESA = La Mesa
LOSPUER = La Puerta
MIRR = Mirror Park
MORN = Morningwood
MOVIE = Richards Majestic
MTCHIL = Mount Chiliad
MTGORDO = Mount Gordo
MTJOSE = Mount Josiah
MURRI = Murrieta Heights
NCHU = North Chumash
NOOSE = N.O.O.S.E
OCEANA = Pacific Ocean
PALCOV = Paleto Cove
PALETO = Paleto Bay
PALFOR = Paleto Forest
PALHIGH = Palomino Highlands
PALMPOW = Palmer-Taylor Power Station
PBLUFF = Pacific Bluffs
PBOX = Pillbox Hill
PROCOB = Procopio Beach
RANCHO = Rancho
RGLEN = Richman Glen
RICHM = Richman
ROCKF = Rockford Hills
RTRAK = Redwood Lights Track
SANAND = San Andreas
SANCHIA = San Chianski Mountain Range
SANDY = Sandy Shores
SKID = Mission Row
SLAB = Stab City
STAD = Maze Bank Arena
STRAW = Strawberry
TATAMO = Tataviam Mountains
TERMINA = Terminal
TEXTI = Textile City
TONGVAH = Tongva Hills
TONGVAV = Tongva Valley
VCANA = Vespucci Canals
VESP = Vespucci
VINE = Vinewood
WINDF = Ron Alternates Wind Farm
WVINE = West Vinewood
ZANCUDO = Zancudo River
ZP_ORT = Port of South Los Santos
ZQ_UAR = Davis Quartz

Full list of zones by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/zones.json
--]]
function ZONE.GET_ZONE_FROM_NAME_ID(zoneName)
  return native.invoke(
    Type.Int, 6562, false,
    arg(Type.String, zoneName)
  )
end

-- int GET_ZONE_POPSCHEDULE(int zoneId) // 0x4334BC40AA0CB4BB
function ZONE.GET_ZONE_POPSCHEDULE(zoneId)
  return native.invoke(
    Type.Int, 6563, false,
    arg(Type.Int, zoneId)
  )
end

-- const char* GET_NAME_OF_ZONE(float x, float y, float z) // 0xCD90657D4C30E1CA
--[[
AIRP = Los Santos International Airport
ALAMO = Alamo Sea
ALTA = Alta
ARMYB = Fort Zancudo
BANHAMC = Banham Canyon Dr
BANNING = Banning
BEACH = Vespucci Beach
BHAMCA = Banham Canyon
BRADP = Braddock Pass
BRADT = Braddock Tunnel
BURTON = Burton
CALAFB = Calafia Bridge
CANNY = Raton Canyon
CCREAK = Cassidy Creek
CHAMH = Chamberlain Hills
CHIL = Vinewood Hills
CHU = Chumash
CMSW = Chiliad Mountain State Wilderness
CYPRE = Cypress Flats
DAVIS = Davis
DELBE = Del Perro Beach
DELPE = Del Perro
DELSOL = La Puerta
DESRT = Grand Senora Desert
DOWNT = Downtown
DTVINE = Downtown Vinewood
EAST_V = East Vinewood
EBURO = El Burro Heights
ELGORL = El Gordo Lighthouse
ELYSIAN = Elysian Island
GALFISH = Galilee
GOLF = GWC and Golfing Society
GRAPES = Grapeseed
GREATC = Great Chaparral
HARMO = Harmony
HAWICK = Hawick
HORS = Vinewood Racetrack
HUMLAB = Humane Labs and Research
JAIL = Bolingbroke Penitentiary
KOREAT = Little Seoul
LACT = Land Act Reservoir
LAGO = Lago Zancudo
LDAM = Land Act Dam
LEGSQU = Legion Square
LMESA = La Mesa
LOSPUER = La Puerta
MIRR = Mirror Park
MORN = Morningwood
MOVIE = Richards Majestic
MTCHIL = Mount Chiliad
MTGORDO = Mount Gordo
MTJOSE = Mount Josiah
MURRI = Murrieta Heights
NCHU = North Chumash
NOOSE = N.O.O.S.E
OCEANA = Pacific Ocean
PALCOV = Paleto Cove
PALETO = Paleto Bay
PALFOR = Paleto Forest
PALHIGH = Palomino Highlands
PALMPOW = Palmer-Taylor Power Station
PBLUFF = Pacific Bluffs
PBOX = Pillbox Hill
PROCOB = Procopio Beach
RANCHO = Rancho
RGLEN = Richman Glen
RICHM = Richman
ROCKF = Rockford Hills
RTRAK = Redwood Lights Track
SANAND = San Andreas
SANCHIA = San Chianski Mountain Range
SANDY = Sandy Shores
SKID = Mission Row
SLAB = Stab City
STAD = Maze Bank Arena
STRAW = Strawberry
TATAMO = Tataviam Mountains
TERMINA = Terminal
TEXTI = Textile City
TONGVAH = Tongva Hills
TONGVAV = Tongva Valley
VCANA = Vespucci Canals
VESP = Vespucci
VINE = Vinewood
WINDF = Ron Alternates Wind Farm
WVINE = West Vinewood
ZANCUDO = Zancudo River
ZP_ORT = Port of South Los Santos
ZQ_UAR = Davis Quartz

Full list of zones by DurtyFree: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/zones.json
--]]
function ZONE.GET_NAME_OF_ZONE(x, y, z)
  return native.invoke(
    Type.String, 6564, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end

-- void SET_ZONE_ENABLED(int zoneId, BOOL toggle) // 0xBA5ECEEA120E5611
function ZONE.SET_ZONE_ENABLED(zoneId, toggle)
  native.invoke(
    Type.Void, 6565, false,
    arg(Type.Int, zoneId),
    arg(Type.Bool, toggle)
  )
end

-- int GET_ZONE_SCUMMINESS(int zoneId) // 0x5F7B268D15BA0739
--[[
cellphone range 1- 5 used for signal bar in iFruit phone
--]]
function ZONE.GET_ZONE_SCUMMINESS(zoneId)
  return native.invoke(
    Type.Int, 6566, false,
    arg(Type.Int, zoneId)
  )
end

-- void OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(int scheduleId, Hash vehicleHash) // 0x5F7D596BAC2E7777
--[[
Only used once in the decompiled scripts. Seems to be related to scripted vehicle generators.

Modified example from "am_imp_exp.c4", line 6406:
/* popSchedules[0] = ZONE::GET_ZONE_POPSCHEDULE(ZONE::GET_ZONE_AT_COORDS(891.3, 807.9, 188.1));
etc.
*/
ZONE::OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(popSchedules[index], vehicleHash);
STREAMING::REQUEST_MODEL(vehicleHash);
--]]
function ZONE.OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(scheduleId, vehicleHash)
  native.invoke(
    Type.Void, 6567, false,
    arg(Type.Int, scheduleId),
    arg(Type.Hash, vehicleHash)
  )
end

-- void CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL(int scheduleId) // 0x5C0DE367AA0D911C
--[[
Only used once in the decompiled scripts. Seems to be related to scripted vehicle generators.

Modified example from "am_imp_exp.c4", line 6418:
/* popSchedules[0] = ZONE::GET_ZONE_POPSCHEDULE(ZONE::GET_ZONE_AT_COORDS(891.3, 807.9, 188.1));
etc.
*/
STREAMING::SET_MODEL_AS_NO_LONGER_NEEDED(vehicleHash);
ZONE::CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL(popSchedules[index]);
--]]
function ZONE.CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL(scheduleId)
  native.invoke(
    Type.Void, 6568, false,
    arg(Type.Int, scheduleId)
  )
end

-- Hash GET_HASH_OF_MAP_AREA_AT_COORDS(float x, float y, float z) // 0x7EE64D51E8498728
--[[
Returns a hash representing which part of the map the given coords are located.

Possible return values:
(Hash of) city -> -289320599
(Hash of) countryside -> 2072609373

C# Example :

Ped player = Game.Player.Character;
Hash h = Function.Call<Hash>(Hash.GET_HASH_OF_MAP_AREA_AT_COORDS, player.Position.X, player.Position.Y, player.Position.Z);
--]]
function ZONE.GET_HASH_OF_MAP_AREA_AT_COORDS(x, y, z)
  return native.invoke(
    Type.Hash, 6569, false,
    arg(Type.Float, x),
    arg(Type.Float, y),
    arg(Type.Float, z)
  )
end


