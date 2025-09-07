# 退出状态
execute if score $countdown mem matches ..0 unless score $test_mode mem matches 1 unless score $round mem matches 0 run function ltw:state/7/state_enter
execute if score $countdown mem matches ..0 unless score $test_mode mem matches 1 if score $round mem matches 0 run function ltw:state/6/continue_game
execute if score $countdown mem matches ..0 if score $test_mode mem matches 1 unless score #gamemode mem matches 2 if score $round mem matches 0 run function ltw:state/6/continue_game
execute if score $countdown mem matches ..0 if score $test_mode mem matches 1 unless score #gamemode mem matches 2 if score $round mem matches 1..5 run function ltw:state/7/state_enter
execute if score $countdown mem matches ..0 if score $test_mode mem matches 1 unless score #gamemode mem matches 2 if score $round mem matches 6 run function ltw:main/game_end
execute if score $countdown mem matches ..0 if score $test_mode mem matches 1 if score #gamemode mem matches 2 run function ltw:state/7/state_enter