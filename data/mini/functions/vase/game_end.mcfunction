# 结束砸罐子
forceload remove 2000 2000 2063 2023

# Gamerule 调整
gamerule doTileDrops false

# 清理残余实体
kill @e[type=snowball]
kill @e[tag=vase_marker]

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s vase_broken