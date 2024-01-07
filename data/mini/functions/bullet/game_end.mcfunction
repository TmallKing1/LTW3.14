# 结束子弹
forceload remove 999 17999 1019 18019

# 给予进度
advancement grant @a[team=playing,scores={power_count=114..}] only ltw:blood/bullet1
advancement grant @a[team=playing,scores={power_count=328..}] only ltw:blood/bullet2
advancement grant @a[team=playing,scores={power_count=648..}] only ltw:blood/bullet3

# 清理残余实体
tp @e[tag=bullet_entity] 1000 -100 18000
kill @e[tag=bullet_entity]

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s power_count