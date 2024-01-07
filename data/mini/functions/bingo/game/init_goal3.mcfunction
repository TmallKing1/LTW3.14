# 随机从 36 个目标中选择一个
execute store result score $random mem run random value 1..36

# 去重
execute as @e[type=marker,tag=bingo_goal] if score @s goal_id = $random mem run function mini:bingo/game/init_goal3