# 调整物品：仅在纵向速度 < -0.015 且 y > 14 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=500,y=14,z=16500,dx=1000,dy=100,dz=1000,scores={temp=-15..}] run data merge entity @s {NoGravity: 0b}
execute as @e[tag=bonus_item] unless entity @s[x=500,y=14,z=16500,dx=1000,dy=100,dz=1000,scores={temp=-15..}] run data merge entity @s {NoGravity: 1b}
