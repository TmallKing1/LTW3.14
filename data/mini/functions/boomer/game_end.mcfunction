# 结束爆裂纷争
forceload remove 2000 1000 2032 1032

# 分数依据
execute if score $ley_line_disorder mem matches -1 run scoreboard players set @a[team=playing] mini_score 0
execute if score $ley_line_disorder mem matches -1 as @a[team=playing] run scoreboard players operation @s mini_score = @s power_count

# 清除所有 TNT 与苦力怕
kill @e[type=tnt]
tp @e[type=creeper] 2000 -114 1000
kill @e[type=creeper]