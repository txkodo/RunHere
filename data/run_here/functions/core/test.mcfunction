
data modify storage run_here: Pos set value [0,100,0]
# data modify storage run_here: Pos set from entity @s Pos
function run_here:core/main
execute positioned 0.0 0.0 0.0 rotated as @e[tag=RunHere1] positioned ^ ^ ^-22000000 rotated as @e[tag=RunHere2] positioned ^ ^ ^22000000 rotated as @e[tag=RunHere3] positioned ^ ^ ^-2000 rotated as @e[tag=RunHere4] positioned ^ ^ ^2000 rotated as @e[tag=RunHere5] positioned ^ ^ ^-1 rotated as @e[tag=RunHere6] positioned ^ ^ ^1 run particle flame
# execute positioned 0.0 0.0 0.0 rotated as @e[tag=RunHere1] positioned ^ ^ ^-22000000 rotated as @e[tag=RunHere2] positioned ^ ^ ^22000000 rotated as @e[tag=RunHere3] positioned ^ ^ ^-2000 rotated as @e[tag=RunHere4] positioned ^ ^ ^2000 rotated as @e[tag=RunHere5] positioned ^ ^ ^-1 rotated as @e[tag=RunHere6] positioned ^ ^ ^1 run setblock ~ ~ ~ diamond_block
