
data modify storage run_here: _Pos set value [0d,0d,0d]
execute store result storage run_here: _Pos[0] double 1 run data get storage run_here: Pos[0]
execute store result storage run_here: _Pos[1] double 1 run data get storage run_here: Pos[1]
execute store result storage run_here: _Pos[2] double 1 run data get storage run_here: Pos[2]
data modify entity @s Pos set from storage run_here: _Pos
data remove storage run_here: Pos[3]

execute positioned as @s positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~