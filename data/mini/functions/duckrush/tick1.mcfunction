# 调整物品：仅在纵向速度 < -0.006 且 y > 7 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=1000,y=7,z=14000,dx=100,dy=100,dz=100,scores={temp=-6..}] run data merge entity @s {NoGravity:0b}
execute as @e[tag=bonus_item] unless entity @s[x=1000,y=7,z=14000,dx=100,dy=100,dz=100,scores={temp=-6..}] run data merge entity @s {NoGravity:1b}


# 将空气替换为结构空位，防止水流动
fill 1001 6 14001 1026 6 14026 structure_void replace air

# 将放在结构空位上面的水移下来
clone 1001 7 14001 1026 7 14026 1001 6 14001 filtered water move

# 新鸭子处理
execute as @e[tag=new_duck] at @s run function mini:duckrush/game/modify_duck

# 鸭子变换方向
execute as @e[type=chicken] at @s if block ~0.4 ~ ~ #mini:duckrush_wall run function mini:duckrush/game/duck_change_direction/negative_x
execute as @e[type=chicken] at @s if block ~-0.4 ~ ~ #mini:duckrush_wall run function mini:duckrush/game/duck_change_direction/positive_x
execute as @e[type=chicken] at @s if block ~ ~ ~0.4 #mini:duckrush_wall run function mini:duckrush/game/duck_change_direction/negative_z
execute as @e[type=chicken] at @s if block ~ ~ ~-0.4 #mini:duckrush_wall run function mini:duckrush/game/duck_change_direction/positive_z

# 鸭子走动
execute as @e[type=chicken] store result entity @s Motion[0] double 0.005 run scoreboard players get @s duckMotionX
execute as @e[type=chicken] store result entity @s Motion[2] double 0.005 run scoreboard players get @s duckMotionZ

# 鸭子吸水
execute as @e[type=chicken] at @s if block ~ ~ ~ water run function mini:duckrush/game/duck_sink_water

# 鸭子伤害玩家
execute as @e[type=chicken,tag=!harmless_duck] at @s if entity @a[sort=nearest,distance=..0.5,tag=mini_running,scores={countdown_invulnerable=..0}] run function mini:duckrush/game/duck_hurt_player