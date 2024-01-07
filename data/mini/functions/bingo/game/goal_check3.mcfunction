# 显示提示
tag @s add temp_quest_complete
tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你完成了 ","color": "green"},{"nbt": "data.displayName","entity": "@e[limit=1,tag=temp_marker]","interpret": true},{"text": " 任务！","color": "green"}]
tellraw @a[tag=!temp_quest_complete] ["",{"text": ">> ","color": "green","bold": true},{"selector": "@s","color": "green"},{"text": " 完成了 ","color": "green"},{"nbt": "data.displayName","entity": "@e[limit=1,tag=temp_marker]","interpret": true},{"text": " 任务！","color": "green"}]
execute at @s run function lib:sounds/levelup

# 增加分数
scoreboard players add @s quest_complete 1

# 添加 Tag
execute if score $goal_pos mem matches 1 run tag @s add quest_complete_1
execute if score $goal_pos mem matches 2 run tag @s add quest_complete_2
execute if score $goal_pos mem matches 3 run tag @s add quest_complete_3
execute if score $goal_pos mem matches 4 run tag @s add quest_complete_4
execute if score $goal_pos mem matches 5 run tag @s add quest_complete_5
execute if score $goal_pos mem matches 6 run tag @s add quest_complete_6
execute if score $goal_pos mem matches 7 run tag @s add quest_complete_7
execute if score $goal_pos mem matches 8 run tag @s add quest_complete_8
execute if score $goal_pos mem matches 9 run tag @s add quest_complete_9

# 移除「无」标识
execute if score $goal_pos mem matches 1 run tag @e[type=marker] remove quest_complete_1
execute if score $goal_pos mem matches 2 run tag @e[type=marker] remove quest_complete_2
execute if score $goal_pos mem matches 3 run tag @e[type=marker] remove quest_complete_3
execute if score $goal_pos mem matches 4 run tag @e[type=marker] remove quest_complete_4
execute if score $goal_pos mem matches 5 run tag @e[type=marker] remove quest_complete_5
execute if score $goal_pos mem matches 6 run tag @e[type=marker] remove quest_complete_6
execute if score $goal_pos mem matches 7 run tag @e[type=marker] remove quest_complete_7
execute if score $goal_pos mem matches 8 run tag @e[type=marker] remove quest_complete_8
execute if score $goal_pos mem matches 9 run tag @e[type=marker] remove quest_complete_9

# 检查任务完成状态
execute if entity @s[tag=mini_running,tag=quest_complete_1,tag=quest_complete_2,tag=quest_complete_3] run function mini:bingo/game/early_success
execute if entity @s[tag=mini_running,tag=quest_complete_4,tag=quest_complete_5,tag=quest_complete_6] run function mini:bingo/game/early_success
execute if entity @s[tag=mini_running,tag=quest_complete_7,tag=quest_complete_8,tag=quest_complete_9] run function mini:bingo/game/early_success
execute if entity @s[tag=mini_running,tag=quest_complete_1,tag=quest_complete_4,tag=quest_complete_7] run function mini:bingo/game/early_success
execute if entity @s[tag=mini_running,tag=quest_complete_2,tag=quest_complete_5,tag=quest_complete_8] run function mini:bingo/game/early_success
execute if entity @s[tag=mini_running,tag=quest_complete_3,tag=quest_complete_6,tag=quest_complete_9] run function mini:bingo/game/early_success

# 清理标签
tag @a remove temp_quest_complete