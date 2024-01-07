tag @s add ready_tp
execute as @e[type=marker,tag=spawn_marker,limit=1] at @s run function mini:hopper/game/random_spawn_2
tag @s remove ready_tp