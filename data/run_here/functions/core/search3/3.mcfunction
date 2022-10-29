
data modify storage run_here: _ set value 1b

execute facing entity @s feet run tp @e[tag=RunHere6] 0.0 0.0 0.0 ~ ~
execute positioned as @s rotated as @e[tag=RunHere6] positioned ^ ^ ^-1 facing 0.0 0.0 0.0 run tp @s 0.0 0.0 0.0 ~ ~
