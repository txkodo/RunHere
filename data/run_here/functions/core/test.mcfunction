
data modify storage run_here: Pos set value [86,86,12]
# data modify storage run_here: Pos set from entity @s Pos
function run_here:core/main
execute positioned 0.0 0.0 0.0 rotated as @e[type=marker,tag=RunHere1,limit=1] positioned ^ ^ ^-22000000 rotated as @e[type=marker,tag=RunHere2,limit=1] positioned ^ ^ ^22000000 rotated as @e[type=marker,tag=RunHere3,limit=1] positioned ^ ^ ^-2000 rotated as @e[type=marker,tag=RunHere4,limit=1] positioned ^ ^ ^2000 rotated as @e[type=marker,tag=RunHere5,limit=1] positioned ^ ^ ^-1 rotated as @e[type=marker,tag=RunHere6,limit=1] positioned ^ ^ ^1 run particle flame
# execute positioned 0.0 0.0 0.0 rotated as @e[type=marker,tag=RunHere1,limit=1] positioned ^ ^ ^-22000000 rotated as @e[type=marker,tag=RunHere2,limit=1] positioned ^ ^ ^22000000 rotated as @e[type=marker,tag=RunHere3,limit=1] positioned ^ ^ ^-2000 rotated as @e[type=marker,tag=RunHere4,limit=1] positioned ^ ^ ^2000 rotated as @e[type=marker,tag=RunHere5,limit=1] positioned ^ ^ ^-1 rotated as @e[type=marker,tag=RunHere6,limit=1] positioned ^ ^ ^1 run setblock ~ ~ ~ diamond_block
