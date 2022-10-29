
execute store success storage run_here: _ byte 1 facing entity @s feet positioned ^ ^ ^8000 if entity @s[distance=..4000]
execute if data storage run_here: {_:1b} positioned ^-1.953125 ^ ^ run function run_here:core/search2/10
execute if data storage run_here: {_:0b} positioned ^1.953125 ^ ^ run function run_here:core/search2/10
