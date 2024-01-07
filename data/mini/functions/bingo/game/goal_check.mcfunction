# 存储数据
tag @s add temp_marker
scoreboard players operation $goal_id mem = @s goal_id
scoreboard players operation $goal_pos mem = @s goal_pos

# 逐个玩家检测
execute if score $goal_pos mem matches 1 as @a[tag=mini_running,tag=!quest_complete_1] run function mini:bingo/game/goal_check2
execute if score $goal_pos mem matches 2 as @a[tag=mini_running,tag=!quest_complete_2] run function mini:bingo/game/goal_check2
execute if score $goal_pos mem matches 3 as @a[tag=mini_running,tag=!quest_complete_3] run function mini:bingo/game/goal_check2
execute if score $goal_pos mem matches 4 as @a[tag=mini_running,tag=!quest_complete_4] run function mini:bingo/game/goal_check2
execute if score $goal_pos mem matches 5 as @a[tag=mini_running,tag=!quest_complete_5] run function mini:bingo/game/goal_check2
execute if score $goal_pos mem matches 6 as @a[tag=mini_running,tag=!quest_complete_6] run function mini:bingo/game/goal_check2
execute if score $goal_pos mem matches 7 as @a[tag=mini_running,tag=!quest_complete_7] run function mini:bingo/game/goal_check2
execute if score $goal_pos mem matches 8 as @a[tag=mini_running,tag=!quest_complete_8] run function mini:bingo/game/goal_check2
execute if score $goal_pos mem matches 9 as @a[tag=mini_running,tag=!quest_complete_9] run function mini:bingo/game/goal_check2

# 清理标签
tag @e remove temp_marker