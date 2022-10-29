
execute store success storage run_here: _ byte 1 facing entity @s feet positioned ^ ^ ^88000000 if entity @s[distance=..44000000]
execute if data storage run_here: {_:1b} positioned ^-11000000.0 ^ ^ run function run_here:core/search1/1
execute if data storage run_here: {_:0b} positioned ^11000000.0 ^ ^ run function run_here:core/search1/1
