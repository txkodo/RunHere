
execute facing entity @s feet run tp @e[type=marker,tag=RunHere2,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s feet positioned as @s positioned ^ ^ ^-22000000 facing 0.0 0.0 0.0 run tp @e[type=marker,tag=RunHere1,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s feet positioned as @s positioned ^ ^ ^-22000000 facing 0.0 0.0 0.0 positioned ^ ^ ^22000000 run tp @s ~ ~ ~
execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^2000 ^ ^ run function run_here:core/search2/0
