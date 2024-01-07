# 清除玩家乘坐的矿车
scoreboard players set $kill_success mem 0
execute store success score $kill_success mem run kill @e[tag=occupied]

# 执行后续
execute if score $kill_success mem matches 1.. run function mini:seat/game/extra_time_player_win1