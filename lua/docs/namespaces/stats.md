---
order: -15
---

# Stats

Requiem Engine will recognize the input data and convert it to the required format.
Instead of MP0 or MP1 (charster id) you can specify MPX. Where X will be automatically replaced by the index of the current charcter 
## stats.get_bool

`stats.get_bool(string stat_name)`
* `stat_name`: Stat name.

## stats.set_bool

`stats.set_bool(string stat_name, bool value)`
* `stat_name`: Stat name.
* `value`: The value you want to set

## stats.get_bool_masked

`stats.get_bool_masked(string stat_name, int bit_index)`

## stats.set_bool_masked

`stats.set_bool_masked(string stat_name, int value, int index)`

## stats.get_bool_packed

`stats.get_bool_packed(int index)`

## stats.set_bool_packed

`stats.set_bool_packed(int index, int value)`

## stats.get_mass_packed_bool

`stats.get_mass_packed_bool(int min, int max)`

## stats.set_mass_packed_bool

`stats.set_mass_packed_bool(int min, int max, bool value)`

## stats.get_float

`stats.get_float(string stat_name)`
* `stat_name`: Stat name.

## stats.set_float

`stats.set_float(string stat_name, float value)`
* `stat_name`: Stat name.
* `value`: The value you want to set

## stats.get_int

`stats.get_int(string stat_name)`
* `stat_name`: Stat name.

## stats.set_int

`stats.set_int(string stat_name, int value)`
* `stat_name`: Stat name.
* `value`: The value you want to set

## stats.get_int_masked

`stats.get_int_masked(string stat_name, int bit_index)`

## stats.set_int_masked

`stats.set_int_masked(string stat_name, int value, int bit_start, int bit_size)`

## stats.get_int_packed

`stats.get_int_packed(int index)`

## stats.set_int_packed

`stats.set_int_packed(int index, int value)`

## stats.get_mass_packed_int

`stats.get_mass_packed_int(int min, int max)`

## stats.set_mass_packed_int

`stats.set_mass_packed_int(int min, int max, bool value)`