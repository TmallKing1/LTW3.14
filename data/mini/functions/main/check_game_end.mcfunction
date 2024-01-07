# 检查游戏是否可以结束

function mini:main/update_player_count
execute if score $state mem matches 5 if score $mini_type mem matches 0 if score $player_finish mem matches 3.. run schedule function mini:main/game_end 1t
execute if score $state mem matches 5 if score $mini_type mem matches 0 if score $player_alive mem matches 0 run schedule function mini:main/game_end 1t
execute if score $state mem matches 5 if score $mini_type mem matches 105 if score $player_finish mem matches 3.. run function mini:main/game_end
execute if score $state mem matches 5 if score $game_end_mode mem matches 1 if score $player_alive mem matches ..0 unless score $mini_type mem matches 1 run function mini:main/game_end
execute if score $state mem matches 5 if score $game_end_mode mem matches 0 if score $player_alive mem matches ..1 run function mini:main/game_end