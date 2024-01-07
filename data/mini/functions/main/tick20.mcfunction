
# 触发单个模块
execute if score $mini_type mem matches 0 run function mini:parkour_old/tick20
execute if score $mini_type mem matches 1 run function mini:parkour/tick20
execute if score $mini_type mem matches 2 run function mini:tntrun/tick20
execute if score $mini_type mem matches 3 run function mini:hotpm/tick20
execute if score $mini_type mem matches 4 run function mini:colormatch/tick20
execute if score $mini_type mem matches 5 run function mini:phantom/tick20
execute if score $mini_type mem matches 6 run function mini:koth/tick20
execute if score $mini_type mem matches 7 run function mini:seat/tick20
execute if score $mini_type mem matches 8 run function mini:zombie/tick20
execute if score $mini_type mem matches 9 run function mini:river/tick20
execute if score $mini_type mem matches 10 run function mini:bullet/tick20
execute if score $mini_type mem matches 11 run function mini:boomer/tick20
execute if score $mini_type mem matches 12 run function mini:chain/tick20
execute if score $mini_type mem matches 101 run function mini:iron/tick20
execute if score $mini_type mem matches 102 run function mini:trade/tick20
execute if score $mini_type mem matches 103 run function mini:diamond/tick20
execute if score $mini_type mem matches 104 run function mini:hopper/tick20
execute if score $mini_type mem matches 105 run function mini:bingo/tick20
execute if score $mini_type mem matches 201 run function mini:ass/tick20
execute if score $mini_type mem matches 202 run function mini:arrow/tick20
execute if score $mini_type mem matches 301 run function mini:duckrush/tick20
execute if score $mini_type mem matches 302 run function mini:element/tick20
execute if score $mini_type mem matches 303 run function mini:power/tick20

# 结束游戏判定
function mini:main/check_game_end