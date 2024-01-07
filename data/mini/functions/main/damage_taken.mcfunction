# 检测分数调用对应函数
execute if score $mini_type mem matches 3 run function mini:hotpm/game/damage_taken
execute if score $mini_type mem matches 7 run function mini:seat/game/damage_taken
execute if score $mini_type mem matches 101 run function mini:iron/game/damage_taken
execute if score $mini_type mem matches 103 run function mini:diamond/game/damage_taken
execute if score $mini_type mem matches 104 run function mini:hopper/game/damage_taken
execute if score $mini_type mem matches 302 run function mini:element/game/events/damage_taken
execute if score $mini_type mem matches 303 run function mini:power/damage_taken
