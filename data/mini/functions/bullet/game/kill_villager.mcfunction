# 解除进度
advancement revoke @s only mini:bullet/kill_villager

# 减少能量值
scoreboard players remove @s power_count 25
tag @s[scores={power_count=..0}] add bullet_adv_failed
scoreboard players set @s[scores={power_count=..-1}] power_count 0
title @s actionbar [{"text": "你失去了 ","color": "red"},{"text": "25","color": "gold"},{"text": " 能量值","color": "red"}]
execute at @s run function lib:sounds/error