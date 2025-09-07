# 结束刺客
forceload remove 1000 7000 1032 7032
gamerule mobGriefing false
gamerule doTileDrops false

# 带死亡计数的结束
execute if score $ley_line_disorder mem matches -1 run scoreboard players set @a[team=playing] mini_score 0
execute if score $ley_line_disorder mem matches -1 as @a[team=playing] run scoreboard players operation @s mini_score = @s deaths
execute if score $ley_line_disorder mem matches -1 as @a[team=playing] run scoreboard players operation @s mini_score *= #-1 mem
execute if score $ley_line_disorder mem matches -1 as @a[team=playing] run scoreboard players operation @s mini_score *= #100 mem
execute if score $ley_line_disorder mem matches -1 as @a[team=playing] run scoreboard players operation @s mini_score += @s health_disp