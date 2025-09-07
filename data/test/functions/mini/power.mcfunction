# 测试用：快速开始会心一击
scoreboard players set $test_mode mem 1
team join playing @a[team=watching]
team join playing @a[team=watching_lost]
clear @a[team=!debugging]
function ltw:state/0/start_game
scoreboard players set $round mem 6
execute if score #gamemode mem matches 2 run scoreboard players set $round mem 1
scoreboard players set $mini_type mem 303
function mini:main/game_init
function ltw:state/4/state_enter
say 已开始单个测试游戏！