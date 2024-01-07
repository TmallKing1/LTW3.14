# 结束连锁爆破
forceload remove 1000 19000 1063 19063
worldborder set 1000000

# 分数计算
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s kills

# 增加次数
execute unless score $test_mode mem matches 1 run scoreboard players add @a[tag=mini_running] act_turns 1
advancement grant @a[scores={act_turns=1..}] until ltw:activity/power1
advancement grant @a[scores={act_turns=3..}] until ltw:activity/power2
advancement grant @a[scores={act_turns=6..}] until ltw:activity/power3
advancement grant @a[scores={act_turns=10..}] until ltw:activity/power4

# 清理游戏独占实体
kill @e[tag=power_entity]