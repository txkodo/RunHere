
execute facing entity @s feet run tp @e[type=marker,tag=RunHere4,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s feet positioned as @s positioned ^ ^ ^-2000 facing 0.0 0.0 0.0 run tp @e[type=marker,tag=RunHere3,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s feet positioned as @s positioned ^ ^ ^-2000 facing 0.0 0.0 0.0 positioned ^ ^ ^2000 run tp @s ~ ~ ~

execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^1 ^ ^ run function run_here:core/search3/0
