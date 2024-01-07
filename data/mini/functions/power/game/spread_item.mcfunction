spreadplayers 1028.5 19028.5 0 50 false @e[tag=temp_item]

execute as @e[tag=temp_item] at @s if entity @a[tag=mini_running,distance=..2] run function mini:power/game/spread_item
execute as @e[tag=temp_item] at @s if block ~ ~-1 ~ diamond_block run function mini:power/game/spread_item