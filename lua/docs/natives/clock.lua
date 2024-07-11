CLOCK = {}

-- void SET_CLOCK_TIME(int hour, int minute, int second) // 0x47C3B5848C3E45D8
--[[
SET_CLOCK_TIME(12, 34, 56);
--]]
function CLOCK.SET_CLOCK_TIME(hour, minute, second)
  native.invoke(
    Type.Void, 577, false,
    arg(Type.Int, hour),
    arg(Type.Int, minute),
    arg(Type.Int, second)
  )
end

-- void PAUSE_CLOCK(BOOL toggle) // 0x4055E40BD2DBEC1D
function CLOCK.PAUSE_CLOCK(toggle)
  native.invoke(
    Type.Void, 578, false,
    arg(Type.Bool, toggle)
  )
end

-- void ADVANCE_CLOCK_TIME_TO(int hour, int minute, int second) // 0xC8CA9670B9D83B3B
function CLOCK.ADVANCE_CLOCK_TIME_TO(hour, minute, second)
  native.invoke(
    Type.Void, 579, false,
    arg(Type.Int, hour),
    arg(Type.Int, minute),
    arg(Type.Int, second)
  )
end

-- void ADD_TO_CLOCK_TIME(int hours, int minutes, int seconds) // 0xD716F30D8C8980E2
function CLOCK.ADD_TO_CLOCK_TIME(hours, minutes, seconds)
  native.invoke(
    Type.Void, 580, false,
    arg(Type.Int, hours),
    arg(Type.Int, minutes),
    arg(Type.Int, seconds)
  )
end

-- int GET_CLOCK_HOURS() // 0x25223CA6B4D20B7F
--[[
Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)
--]]
function CLOCK.GET_CLOCK_HOURS()
  return native.invoke(
    Type.Int, 581, false
  )
end

-- int GET_CLOCK_MINUTES() // 0x13D2B8ADD79640F2
--[[
Gets the current ingame clock minute.
--]]
function CLOCK.GET_CLOCK_MINUTES()
  return native.invoke(
    Type.Int, 582, false
  )
end

-- int GET_CLOCK_SECONDS() // 0x494E97C2EF27C470
--[[
Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in GTA is only 48 minutes in real life.
--]]
function CLOCK.GET_CLOCK_SECONDS()
  return native.invoke(
    Type.Int, 583, false
  )
end

-- void SET_CLOCK_DATE(int day, int month, int year) // 0xB096419DF0D06CE7
function CLOCK.SET_CLOCK_DATE(day, month, year)
  native.invoke(
    Type.Void, 584, false,
    arg(Type.Int, day),
    arg(Type.Int, month),
    arg(Type.Int, year)
  )
end

-- int GET_CLOCK_DAY_OF_WEEK() // 0xD972E4BD7AEB235F
--[[
Gets the current day of the week.

0: Sunday
1: Monday
2: Tuesday
3: Wednesday
4: Thursday
5: Friday
6: Saturday
--]]
function CLOCK.GET_CLOCK_DAY_OF_WEEK()
  return native.invoke(
    Type.Int, 585, false
  )
end

-- int GET_CLOCK_DAY_OF_MONTH() // 0x3D10BC92A4DB1D35
function CLOCK.GET_CLOCK_DAY_OF_MONTH()
  return native.invoke(
    Type.Int, 586, false
  )
end

-- int GET_CLOCK_MONTH() // 0xBBC72712E80257A1
function CLOCK.GET_CLOCK_MONTH()
  return native.invoke(
    Type.Int, 587, false
  )
end

-- int GET_CLOCK_YEAR() // 0x961777E64BDAF717
function CLOCK.GET_CLOCK_YEAR()
  return native.invoke(
    Type.Int, 588, false
  )
end

-- int GET_MILLISECONDS_PER_GAME_MINUTE() // 0x2F8B4D1C595B11DB
function CLOCK.GET_MILLISECONDS_PER_GAME_MINUTE()
  return native.invoke(
    Type.Int, 589, false
  )
end

-- void GET_POSIX_TIME(int* year, int* month, int* day, int* hour, int* minute, int* second) // 0xDA488F299A5B164E
--[[
Gets system time as year, month, day, hour, minute and second.

Example usage:

    int year;
 int month;
    int day;
  int hour;
 int minute;
   int second;

 TIME::GET_POSIX_TIME(&year, &month, &day, &hour, &minute, &second);

--]]
function CLOCK.GET_POSIX_TIME(year, month, day, hour, minute, second)
  native.invoke(
    Type.Void, 590, false,
    ref(Type.Int, year),
    ref(Type.Int, month),
    ref(Type.Int, day),
    ref(Type.Int, hour),
    ref(Type.Int, minute),
    ref(Type.Int, second)
  )
end

-- void GET_UTC_TIME(int* year, int* month, int* day, int* hour, int* minute, int* second) // 0x8117E09A19EEF4D3
--[[
Gets current UTC time
--]]
function CLOCK.GET_UTC_TIME(year, month, day, hour, minute, second)
  native.invoke(
    Type.Void, 591, false,
    ref(Type.Int, year),
    ref(Type.Int, month),
    ref(Type.Int, day),
    ref(Type.Int, hour),
    ref(Type.Int, minute),
    ref(Type.Int, second)
  )
end

-- void GET_LOCAL_TIME(int* year, int* month, int* day, int* hour, int* minute, int* second) // 0x50C7A99057A69748
--[[
Gets local system time as year, month, day, hour, minute and second.

Example usage:

int year;
int month;
int day;
int hour;
int minute;
int second;
or use std::tm struct

TIME::GET_LOCAL_TIME(&year, &month, &day, &hour, &minute, &second);

--]]
function CLOCK.GET_LOCAL_TIME(year, month, day, hour, minute, second)
  native.invoke(
    Type.Void, 592, false,
    ref(Type.Int, year),
    ref(Type.Int, month),
    ref(Type.Int, day),
    ref(Type.Int, hour),
    ref(Type.Int, minute),
    ref(Type.Int, second)
  )
end


