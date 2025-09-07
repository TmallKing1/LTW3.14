# 增加能量值
execute store result score $random mem run random value 8..15
scoreboard players operation @s power_count += $random mem

# 塌桥
function mini:river/game/cross_success2

# 特效
title @s actionbar [{"text": "你获得了 ","color": "green"},{"score": {"name": "$random","objective": "mem"},"color": "gold"},{"text": " 能量值"}]
function lib:sounds/hit

# 标签
execute if entity @s[tag=!mats_area] run return run tag @s add mats_area
tag @s remove mats_area