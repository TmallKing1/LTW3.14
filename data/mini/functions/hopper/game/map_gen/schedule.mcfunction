# 体生成
execute as @e[tag=map_gen] at @s run function mini:hopper/game/map_gen/tree1
scoreboard players add $hopper_layer mem 1
execute as @e[tag=map_gen] at @s run tp ~ ~1 ~
execute as @e[tag=map_gen] at @s unless block ~ ~ ~ barrier run schedule function mini:hopper/game/map_gen/schedule 1t