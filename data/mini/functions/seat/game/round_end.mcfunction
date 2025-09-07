scoreboard players add @a[tag=mini_running] surviveRound 1

# 清除矿车
kill @e[type=minecart,tag=seat_mc]

# 显示提示
execute if entity @a[tag=!seat_waiting,tag=!in_minecart,tag=mini_running] run tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@a[tag=!seat_waiting,tag=!in_minecart,tag=mini_running]","color":"gold"}," 抢座失败！"]

# 掉血
execute as @a[tag=!seat_waiting,tag=!in_minecart,tag=mini_running] run function mini:seat/player_lose_heart

# 开始新的一轮
execute if score $player_alive mem matches 2.. run schedule function mini:seat/game/teleport_player 1t
execute if score $player_alive mem matches 2.. run function mini:seat/game/mc_init