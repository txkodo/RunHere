
data modify storage run_here: _ set value 1b

execute facing entity @s feet run tp @e[type=marker,tag=RunHere6,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s feet positioned as @s positioned ^ ^ ^-1 facing 0.0 0.0 0.0 run tp @s 0.0 0.0 0.0 ~ ~
