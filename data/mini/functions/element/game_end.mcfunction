# 结束元素战争
forceload remove 999 14999 1062 15062

# 清理残余实体
kill @e[type=arrow]
kill @e[type=spectral_arrow]
kill @e[type=tnt]

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s kills