# 游戏结束
forceload remove 1000 12000 1024 12029
scoreboard players reset $zombie_stage
kill @e[type=tnt]
tp @e[type=zombie] 1000 -100 12000

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score += @s power_count