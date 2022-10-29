
execute store success storage run_here: _ byte 1 facing entity @s feet positioned ^ ^ ^4 if entity @s[distance=..2]
execute if data storage run_here: {_:1b} positioned ^-0.25 ^ ^ run function run_here:core/search3/2
execute if data storage run_here: {_:0b} positioned ^0.25 ^ ^ run function run_here:core/search3/2
