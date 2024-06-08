# 下一状态：若人数大于 1，且当前回合数小于 10，则进入下一回合，否则结束游戏
scoreboard players set $end_game mem 0
execute if score $current_turn mem matches 10.. run scoreboard players set $end_game mem 1
execute if score $player_alive mem matches ..1 run scoreboard players set $end_game mem 1
#execute if score $test_mode mem matches 1 run scoreboard players set $end_game mem 0
execute if score $end_game mem matches 1 run function mini:main/game_end
execute if score $end_game mem matches 0 run function mini:vase/game/new_turn