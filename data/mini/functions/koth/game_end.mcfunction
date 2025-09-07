# 当前游戏结束时触发
forceload remove 976 8976 1023 9023

# 给予进度
execute unless score #gamemode mem matches 2 run advancement grant @a[team=playing,scores={power_count=80..}] only ltw:vs/koth1
execute unless score #gamemode mem matches 2 run advancement grant @a[team=playing,scores={power_count=120..}] only ltw:vs/koth2
execute unless score #gamemode mem matches 2 run advancement grant @a[team=playing,scores={power_count=200..}] only ltw:vs/koth3
execute unless score #gamemode mem matches 2 run advancement grant @a[team=playing,scores={power_count=300..}] only ltw:vs/koth4

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score += @s power_count

# 解除限制免疫击退
execute as @a run attribute @s generic.knockback_resistance modifier remove e0edf3eb-5aea-4a18-9b9e-1bde9df27ab5