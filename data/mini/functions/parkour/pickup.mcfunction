# 如果到达人数不足，捡到最多宝藏的玩家获胜
scoreboard players add @s mini_score 1

# 能量值
execute unless score $ley_line_disorder mem matches -1 run return fail
execute store result score @s power_count_temp run random value 10..30