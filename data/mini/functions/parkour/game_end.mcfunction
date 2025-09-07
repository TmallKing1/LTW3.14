# 结束跑酷
forceload remove 1000 1000 1064 1064

# 关闭节奏块
scoreboard players set $tempo_enable mem 0

# 分数依据
execute if score $ley_line_disorder mem matches -1 run scoreboard players set @a[team=playing] mini_score 0
execute if score $ley_line_disorder mem matches -1 as @a[team=playing] run scoreboard players operation @s mini_score = @s power_count