# 检测矿车总数是否与被占据矿车数匹配
scoreboard players set $current_minecart mem 0
scoreboard players set $current_minecart_occupied mem 0
execute as @e[type=minecart,tag=seat_mc] run scoreboard players add $current_minecart mem 1
execute as @e[type=minecart,tag=occupied] run scoreboard players add $current_minecart_occupied mem 1

# 若匹配则结束回合
execute if score $current_minecart mem = $current_minecart_occupied mem run function mini:seat/game/round_end

# 若不匹配则进入加时赛
execute unless score $current_minecart mem = $current_minecart_occupied mem unless score $ley_line_disorder mem matches 2 run function mini:seat/game/extra_time_start
execute unless score $current_minecart mem = $current_minecart_occupied mem if score $ley_line_disorder mem matches 2 run function mini:seat/game/round_end
