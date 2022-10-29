
data modify storage run_here: Pos append value 0
execute unless data storage run_here: Pos[3] run data modify entity @s Pos set from storage run_here: Pos
execute if data storage run_here: Pos[3] run function run_here:core/from_int
execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^22000000 ^ ^ run function run_here:core/search1/0
