# 若玩家失衡值为 100，则被赶下矿车
execute if score @s shiheng matches 100 run return run function mini:seat/game/player_kicked_off

# 若玩家失衡值小于 100，则累积失衡值（随机 8 ~ 18 点）
execute store result score $random mem run random value 8..18
scoreboard players operation @s shiheng += $random mem
execute if score @s shiheng matches 101.. run scoreboard players set @s shiheng 100

# 提示攻击者失衡值
title @a[tag=seat_damage_dealt,limit=1] actionbar [{"selector": "@s","color": "aqua"},{"text": " 当前失衡值："},{"score":{"name": "@s","objective": "shiheng"},"color": "aqua"},{"text": "%","color": "aqua"}]