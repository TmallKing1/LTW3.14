# 当前游戏结束时触发
forceload remove 1000 15999 1031 16031

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score += @s tran_mats

# 清除实体
kill @e[tag=river_entity]