# 结束炸药
forceload remove 2000 4000 2023 4023
gamerule doTileDrops false

kill @e[type=potion]

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s health_virt

# 给予进度
execute unless score #gamemode mem matches 2 run advancement grant @a[scores={health_virt=150..}] only ltw:vs/potion1
execute unless score #gamemode mem matches 2 run advancement grant @a[scores={health_virt=200..}] only ltw:vs/potion3