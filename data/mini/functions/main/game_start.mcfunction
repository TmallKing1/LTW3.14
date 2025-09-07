# 卸载数据包
execute unless score $mini_type mem matches 304 run datapack disable "file/bypass_cooldown"

execute if score $mini_type mem matches 0 run function mini:parkour_old/game_start
execute if score $mini_type mem matches 1 run function mini:parkour/game_start
execute if score $mini_type mem matches 2 run function mini:tntrun/game_start
execute if score $mini_type mem matches 3 run function mini:hotpm/game_start
execute if score $mini_type mem matches 4 run function mini:colormatch/game_start
execute if score $mini_type mem matches 5 run function mini:phantom/game_start
execute if score $mini_type mem matches 6 run function mini:koth/game_start
execute if score $mini_type mem matches 7 run function mini:seat/game_start
execute if score $mini_type mem matches 8 run function mini:zombie/game_start
execute if score $mini_type mem matches 9 run function mini:river/game_start
execute if score $mini_type mem matches 10 run function mini:bullet/game_start
execute if score $mini_type mem matches 11 run function mini:boomer/game_start
execute if score $mini_type mem matches 12 run function mini:chain/game_start
execute if score $mini_type mem matches 13 run function mini:vase/game_start
execute if score $mini_type mem matches 14 run function mini:sand/game_start
execute if score $mini_type mem matches 101 run function mini:iron/game_start
execute if score $mini_type mem matches 102 run function mini:trade/game_start
execute if score $mini_type mem matches 103 run function mini:diamond/game_start
execute if score $mini_type mem matches 104 run function mini:hopper/game_start
execute if score $mini_type mem matches 105 run function mini:bingo/game_start
execute if score $mini_type mem matches 201 run function mini:ass/game_start
execute if score $mini_type mem matches 202 run function mini:arrow/game_start
execute if score $mini_type mem matches 203 run function mini:potion/game_start
execute if score $mini_type mem matches 301 run function mini:duckrush/game_start
execute if score $mini_type mem matches 302 run function mini:element/game_start
execute if score $mini_type mem matches 303 run function mini:power/game_start
execute if score $mini_type mem matches 304 run function mini:attack/game_start