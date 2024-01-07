# 检测矿车总数与未被占据矿车数
execute store result score $current_minecart mem if entity @e[type=minecart,tag=seat_mc]
execute store result score $current_minecart_unoccupied mem if entity @e[type=minecart,tag=seat_mc,tag=!occupied]
#scoreboard players set $current_minecart mem 0
#scoreboard players set $current_minecart_unoccupied mem 0
#execute as @e[type=minecart,tag=seat_mc] run scoreboard players add $current_minecart mem 1
#execute as @e[type=minecart,tag=seat_mc,tag=!occupied] run scoreboard players add $current_minecart_unoccupied mem 1

# 计算应有矿车数量
execute store result score $player_alive_mc mem if entity @a[tag=!seat_waiting,tag=mini_running]
#scoreboard players set $player_alive_mc mem 0
#execute as @a[tag=!seat_waiting,tag=mini_running] run scoreboard players add $player_alive_mc mem 1
scoreboard players operation $minecart_count mem = $player_alive_mc mem
execute if score $player_alive_mc mem matches 8.. run scoreboard players remove $minecart_count mem 3
execute if score $player_alive_mc mem matches 5..7 run scoreboard players remove $minecart_count mem 2
execute if score $player_alive_mc mem matches 1..4 run scoreboard players remove $minecart_count mem 1
execute if score $minecart_count mem matches ..0 run scoreboard players set $minecart_count mem 1

# 若矿车数不符合要求且未被占据的矿车数量大于等于1则随机清除未被占据的矿车
execute unless score $current_minecart mem = $minecart_count mem if score $current_minecart_unoccupied mem matches 1.. run tellraw @a ["",{"text":">> ","color":"red","bold": true},{"text":"有矿车神奇地消失了！","color": "red","bold": false}]
execute unless score $current_minecart mem = $minecart_count mem if score $current_minecart_unoccupied mem matches 1.. run kill @e[type=minecart,tag=seat_mc,tag=!occupied,limit=1]
execute unless score $current_minecart mem = $minecart_count mem if score $current_minecart_unoccupied mem matches 1.. run function mini:seat/game/mc_adjust_count