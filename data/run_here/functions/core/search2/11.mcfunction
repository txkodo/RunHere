
execute facing entity @s feet run tp @e[tag=RunHere4] 0.0 0.0 0.0 ~ ~
execute positioned as @s rotated as @e[tag=RunHere4] positioned ^ ^ ^-2000 facing 0.0 0.0 0.0 run tp @e[tag=RunHere3] 0.0 0.0 0.0 ~ ~

execute positioned as @s rotated as @e[tag=RunHere4] positioned ^ ^ ^-2000 rotated as @e[tag=RunHere3] positioned ^ ^ ^2000 run tp @s ~ ~ ~

execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^1 ^ ^ run function run_here:core/search3/0
