#> run_here:api/adjust
# 
# 指定した位置でコマンドを実行する
# 
# > data modify storage run_here: Pos set value [1d,2d,3d]
# >
# > function run_here:api/adjust
# >
# > execute positioned 0.0 0.0 0.0 rotated as @e[tag=RunHere1] positioned ^ ^ ^-22000000 rotated as @e[tag=RunHere2] positioned ^ ^ ^22000000 rotated as @e[tag=RunHere3] positioned ^ ^ ^-2000 rotated as @e[tag=RunHere4] positioned ^ ^ ^2000 rotated as @e[tag=RunHere5] positioned ^ ^ ^-1 rotated as @e[tag=RunHere6] positioned ^ ^ ^1 rotated as @e[tag=RunHere7] run {any command}
# 
# とすることで座標 1.0 2.0 3.0 でコマンド/ファンクションを実行できる
# 
# > data modify storage run_here: Pos set value [1,2,3]
# 
# とすると、座標 1.5 2.5 3.5 でコマンド/ファンクションを実行できる
# 
# @input storage run_here: Pos ([double,double,double] or [int,int,int]) 整数の場合は各軸に0.5を加えた位置で実行される
# @input storage run_here: Rotation ([float,float]) 実行角度

execute if data storage run_here: Pos[2] run function run_here:core/main