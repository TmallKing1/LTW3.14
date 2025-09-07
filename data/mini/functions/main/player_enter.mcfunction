# 单个玩家开始小游戏时执行

tag @s remove mini_running
tag @s[tag=!rejoining,team=playing] add mini_running
scoreboard players set @s mini_score 0
scoreboard players set @s[tag=rejoining] mini_score -1000
scoreboard players set @s[team=watching] mini_score -1000000
function mini:main/update_player_count

clear @s #mini:game_item{game_item: 1b}
clear @s crimson_button{LockItem: 1b}
recipe take @s *

execute if score $mini_type mem matches 0 run function mini:parkour_old/player_enter
execute if score $mini_type mem matches 1 run function mini:parkour/player_enter
execute if score $mini_type mem matches 2 run function mini:tntrun/player_enter
execute if score $mini_type mem matches 3 run function mini:hotpm/player_enter
execute if score $mini_type mem matches 4 run function mini:colormatch/player_enter
execute if score $mini_type mem matches 5 run function mini:phantom/player_enter
execute if score $mini_type mem matches 6 run function mini:koth/player_enter
execute if score $mini_type mem matches 7 run function mini:seat/player_enter
execute if score $mini_type mem matches 8 run function mini:zombie/player_enter
execute if score $mini_type mem matches 9 run function mini:river/player_enter
execute if score $mini_type mem matches 10 run function mini:bullet/player_enter
execute if score $mini_type mem matches 11 run function mini:boomer/player_enter
execute if score $mini_type mem matches 12 run function mini:chain/player_enter
execute if score $mini_type mem matches 13 run function mini:vase/player_enter
execute if score $mini_type mem matches 14 run function mini:sand/player_enter
execute if score $mini_type mem matches 101 run function mini:iron/player_enter
execute if score $mini_type mem matches 102 run function mini:trade/player_enter
execute if score $mini_type mem matches 103 run function mini:diamond/player_enter
execute if score $mini_type mem matches 104 run function mini:hopper/player_enter
execute if score $mini_type mem matches 105 run function mini:bingo/player_enter
execute if score $mini_type mem matches 201 run function mini:ass/player_enter
execute if score $mini_type mem matches 202 run function mini:arrow/player_enter
execute if score $mini_type mem matches 203 run function mini:potion/player_enter
execute if score $mini_type mem matches 301 run function mini:duckrush/player_enter
execute if score $mini_type mem matches 302 run function mini:element/player_enter
execute if score $mini_type mem matches 303 run function mini:power/player_enter
execute if score $mini_type mem matches 304 run function mini:attack/player_enter