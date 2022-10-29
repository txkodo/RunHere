

from pathlib import Path


dir = Path(__file__).parent

# base = 25
len1 = 22000000
loop1 = 15

len2 = 2000
loop2 = 11

len3 = 1
loop3 = 3

i = 0
test = ''

for i in range(loop1):
  text = f"""
execute store success storage run_here: _ byte 1 facing entity @s feet positioned ^ ^ ^{len1*4} if entity @s[distance=..{len1*2}]
execute if data storage run_here: {{_:1b}} positioned ^-{len1/2**(1+i)} ^ ^ run function run_here:core/search1/{i+1}
execute if data storage run_here: {{_:0b}} positioned ^{len1/2**(1+i)} ^ ^ run function run_here:core/search1/{i+1}
"""

  (dir/f'search1/{i}.mcfunction').write_text(text,encoding='utf8')
else:
  i += 1
  text = f"""
execute facing entity @s feet run tp @e[type=marker,tag=RunHere2,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s positioned as @s positioned ^ ^ ^-{len1} facing 0.0 0.0 0.0 run tp @e[type=marker,tag=RunHere1,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s positioned as @s positioned ^ ^ ^-{len1} facing 0.0 0.0 0.0 positioned ^ ^ ^{len1} run tp @s ~ ~ ~
execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^{len2} ^ ^ run function run_here:core/search2/0
"""
  (dir/f'search1/{i}.mcfunction').write_text(text,encoding='utf8')


for i in range(loop2):
  text = f"""
execute store success storage run_here: _ byte 1 facing entity @s feet positioned ^ ^ ^{len2*4} if entity @s[distance=..{len2*2}]
execute if data storage run_here: {{_:1b}} positioned ^-{len2/2**(1+i)} ^ ^ run function run_here:core/search2/{i+1}
execute if data storage run_here: {{_:0b}} positioned ^{len2/2**(1+i)} ^ ^ run function run_here:core/search2/{i+1}
"""

  (dir/f'search2/{i}.mcfunction').write_text(text,encoding='utf8')
else:
  i += 1
  text = f"""
execute facing entity @s feet run tp @e[type=marker,tag=RunHere4,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s feet positioned as @s positioned ^ ^ ^-{len2} facing 0.0 0.0 0.0 run tp @e[type=marker,tag=RunHere3,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s feet positioned as @s positioned ^ ^ ^-{len2} facing 0.0 0.0 0.0 positioned ^ ^ ^{len2} run tp @s ~ ~ ~

execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^{len3} ^ ^ run function run_here:core/search3/0
"""
  (dir/f'search2/{i}.mcfunction').write_text(text,encoding='utf8')


for i in range(loop3):
  text = f"""
execute store success storage run_here: _ byte 1 facing entity @s feet positioned ^ ^ ^{len3*4} if entity @s[distance=..{len3*2}]
execute if data storage run_here: {{_:1b}} positioned ^-{len3/2**(1+i)} ^ ^ run function run_here:core/search3/{i+1}
execute if data storage run_here: {{_:0b}} positioned ^{len3/2**(1+i)} ^ ^ run function run_here:core/search3/{i+1}
"""

  (dir/f'search3/{i}.mcfunction').write_text(text,encoding='utf8')
else:
  i += 1
  text = f"""
data modify storage run_here: _ set value 1b

execute facing entity @s feet run tp @e[type=marker,tag=RunHere6,limit=1] 0.0 0.0 0.0 ~ ~
execute facing entity @s feet positioned as @s positioned ^ ^ ^-{len3} facing 0.0 0.0 0.0 run tp @s 0.0 0.0 0.0 ~ ~
"""
  (dir/f'search3/{i}.mcfunction').write_text(text,encoding='utf8')



text = f"""
data modify storage run_here: Pos append value 0
execute unless data storage run_here: Pos[3] run data modify entity @s Pos set from storage run_here: Pos
execute if data storage run_here: Pos[3] run function run_here:core/from_int
execute at @s facing 0.0 0.0 0.0 positioned 0.0 0.0 0.0 positioned ^{len1} ^ ^ run function run_here:core/search1/0
"""
(dir/f'as.mcfunction').write_text(text,encoding='utf8')


text = f"""
data modify storage run_here: Pos set value [86,86,12]
# data modify storage run_here: Pos set from entity @s Pos
function run_here:core/main
execute positioned 0.0 0.0 0.0 rotated as @e[type=marker,tag=RunHere1,limit=1] positioned ^ ^ ^-{len1} rotated as @e[type=marker,tag=RunHere2,limit=1] positioned ^ ^ ^{len1} rotated as @e[type=marker,tag=RunHere3,limit=1] positioned ^ ^ ^-{len2} rotated as @e[type=marker,tag=RunHere4,limit=1] positioned ^ ^ ^{len2} rotated as @e[type=marker,tag=RunHere5,limit=1] positioned ^ ^ ^-{len3} rotated as @e[type=marker,tag=RunHere6,limit=1] positioned ^ ^ ^{len3} run particle flame
# execute positioned 0.0 0.0 0.0 rotated as @e[type=marker,tag=RunHere1,limit=1] positioned ^ ^ ^-{len1} rotated as @e[type=marker,tag=RunHere2,limit=1] positioned ^ ^ ^{len1} rotated as @e[type=marker,tag=RunHere3,limit=1] positioned ^ ^ ^-{len2} rotated as @e[type=marker,tag=RunHere4,limit=1] positioned ^ ^ ^{len2} rotated as @e[type=marker,tag=RunHere5,limit=1] positioned ^ ^ ^-{len3} rotated as @e[type=marker,tag=RunHere6,limit=1] positioned ^ ^ ^{len3} run setblock ~ ~ ~ diamond_block
"""
(dir/f'test.mcfunction').write_text(text,encoding='utf8')