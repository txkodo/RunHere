
execute facing entity @s feet run tp @e[tag=RunHere2] 0.0 0.0 0.0 ~ ~
execute positioned as @s rotated as @e[tag=RunHere2] positioned ^ ^ ^-22000000 facing 0.0 0.0 0.0 run tp @e[tag=RunHere1] 0.0 0.0 0.0 ~ ~

execute positioned as @s rotated as @e[tag=RunHere2] positioned ^ ^ ^-22000000 rotated as @e[tag=RunHere1] positioned ^ ^ ^22000000 run tp @s ~ ~ ~

execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^2000 ^ ^ run function run_here:core/search2/0
