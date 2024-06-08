# 随机决定强化元素
execute store result score $random mem run random value 1..6
execute if score $random mem = $element_enhance mem run return run function mini:element/game/lld/1_enhance
scoreboard players operation $element_enhance mem = $random mem

execute if score $element_enhance mem matches 0 run data modify storage mini:element element_enhance set value '{"text":"无","color":"#FFFFFF"}'
execute if score $element_enhance mem matches 1 run data modify storage mini:element element_enhance set value '{"text":"风元素","color":"#76EEC6"}'
execute if score $element_enhance mem matches 2 run data modify storage mini:element element_enhance set value '{"text":"岩元素","color":"#FFC125"}'
execute if score $element_enhance mem matches 3 run data modify storage mini:element element_enhance set value '{"text":"雷元素","color":"#9400D3"}'
execute if score $element_enhance mem matches 4 run data modify storage mini:element element_enhance set value '{"text":"水元素","color":"#436EEE"}'
execute if score $element_enhance mem matches 5 run data modify storage mini:element element_enhance set value '{"text":"火元素","color":"#EE5C42"}'
execute if score $element_enhance mem matches 6 run data modify storage mini:element element_enhance set value '{"text":"冰元素","color":"#97FFFF"}'

title @a times 2t 40t 10t
title @a[tag=!respawning] subtitle [{"text": "当前强化：","color": "white"},{"nbt":"element_enhance","storage": "mini:element","interpret": true}]
title @a[tag=!respawning] title [{"text": "强化已更新","color": "light_purple"}]
execute as @a[tag=!respawning] at @s run function lib:sounds/curse