# 结束元素战争
forceload remove 999 14999 1062 15062

# 清理残余实体
kill @e[type=arrow]
kill @e[type=spectral_arrow]
kill @e[type=tnt]
kill @e[type=marker]
kill @e[type=text_display]

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s kills

# 活动局数计数
#scoreboard players add @a[tag=count_act] act_turns 1
#advancement grant @a[tag=mini_running,scores={act_turns=3..}] until ltw:activity/element_extended/turns1
#advancement grant @a[tag=mini_running,scores={act_turns=8..}] until ltw:activity/element_extended/turns2
#advancement grant @a[tag=mini_running,scores={act_turns=15..}] until ltw:activity/element_extended/turns3
#advancement grant @a[tag=mini_running,scores={act_turns=24..}] until ltw:activity/element_extended/turns4