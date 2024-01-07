# 玩家飘浮效果处理
execute if score $levitation_player mem matches 2.. run effect give @a[tag=mini_running] levitation 1 1 true
execute if score $levitation_player mem matches 0..1 run effect clear @a levitation
execute if score $levitation_player mem matches 2.. run scoreboard players set $levitation_player mem -1
scoreboard players add $levitation_player mem 1

# 生物飘浮效果处理
execute unless score $ley_line_disorder mem matches 1 if score $levitation_mob mem matches 7.. run effect give @e[tag=bullet_entity] levitation 1 1 true
execute unless score $ley_line_disorder mem matches 1 if score $levitation_mob mem matches 0..6 run effect clear @e[tag=bullet_entity] levitation
execute unless score $ley_line_disorder mem matches 1 if score $levitation_mob mem matches 7.. run scoreboard players set $levitation_mob mem -1
execute unless score $ley_line_disorder mem matches 1 run scoreboard players add $levitation_mob mem 1

# 玩家出界判定
execute as @a[tag=mini_running] unless entity @s[x=1003.6,y=6,z=18003.6,dx=12.8,dy=61,dz=12.8] run tag @s add out_of_area
title @a[tag=mini_running,tag=out_of_area] actionbar {"text": "⚠ 你出界了|任何射击均不会获得能量值","color": "red"}
title @a[x=1003.6,y=6,z=18003.6,dx=12.8,dy=61,dz=12.8,tag=out_of_area,tag=mini_running] actionbar ""
tag @a[x=1003.6,y=6,z=18003.6,dx=12.8,dy=61,dz=12.8,tag=out_of_area,tag=mini_running] remove out_of_area

# 村民处理
execute as @e[type=villager] at @s run function mini:bullet/game/bat_tp
execute as @e[type=silverfish] run function mini:bullet/game/bat_test

# 对衰变之箭进行测试
execute as @e[type=arrow,tag=!checked_arrow] at @s run function mini:bullet/game/wither_arrow_check