# 结束 Throw
forceload remove 967 17000 1030 17095

# 清理残余实体
tp @e[tag=circle_entity] 1000 -100 17000
kill @e[tag=circle_entity]

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s kills

# 调整天气
weather clear