# 显示提示
tellraw @s ["",{"text":">> ","color":"green","bold": true},{"text":"成功占据矿车！","color": "green"}]

# 检测矿车总数
scoreboard players set $current_minecart mem 0
execute as @e[type=minecart,tag=seat_mc] run scoreboard players add $current_minecart mem 1

# 如果不是最后一个矿车，则传送到休息区并更改Tag
execute unless score $current_minecart mem matches 0 run tp @s 1016.0 27 10016.0
execute unless score $current_minecart mem matches 0 run tag @s remove in_minecart
execute unless score $current_minecart mem matches 0 run tag @s add seat_waiting