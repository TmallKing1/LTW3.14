# 调整物品：仅在纵向速度 < -0.006 且 y > 10 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=1000,y=10,z=16000,dx=100,dy=100,dz=100,scores={temp=-6..}] run data merge entity @s {NoGravity: 0b}
execute as @e[tag=bonus_item] unless entity @s[x=1000,y=10,z=16000,dx=100,dy=100,dz=100,scores={temp=-6..}] run data merge entity @s {NoGravity: 1b}