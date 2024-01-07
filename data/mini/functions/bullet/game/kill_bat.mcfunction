# 解除进度
advancement revoke @s only mini:bullet/kill_bat

# 增加能量值
scoreboard players add @s[x=1003.6,y=6,z=18003.6,dx=12.8,dy=61,dz=12.8] power_count 40
title @s[x=1003.6,y=6,z=18003.6,dx=12.8,dy=61,dz=12.8] actionbar [{"text": "你获得了 ","color": "green"},{"text": "40","color": "gold"},{"text": " 能量值","color": "green"}]
execute at @s[x=1003.6,y=6,z=18003.6,dx=12.8,dy=61,dz=12.8] run function lib:sounds/hit
execute unless entity @s[x=1003.6,y=6,z=18003.6,dx=12.8,dy=61,dz=12.8] at @s run function lib:sounds/error