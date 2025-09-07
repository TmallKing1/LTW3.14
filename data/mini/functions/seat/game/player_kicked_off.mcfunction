tellraw @s ["",{"text": ">> ","color":"red","bold": true},{"text":"你被 ","color":"red"},{"selector": "@a[tag=seat_damage_dealt,limit=1]","color": "red"},{"text":" 赶下了矿车！","color":"red"}]
tellraw @a[tag=seat_damage_dealt,limit=1] ["",{"text": ">> ","color":"gold","bold": true},{"text":"你将 ","color":"white"},{"selector": "@a[tag=seat_damage_taken,limit=1]","color": "gold"},{"text":" 赶下了矿车！","color":"white"}]
execute unless score #gamemode mem matches 2 run advancement grant @a[tag=seat_damage_dealt,tag=in_minecart,limit=1] only ltw:vs/seat2

# 进度失败
tag @a[tag=seat_damage_dealt,limit=1] add seat_adv_failed

# 重置失衡
scoreboard players reset @s shiheng

tp @s ~ ~0.5 ~
effect give @s blindness 2

# 幻境干扰 3
execute if score $ley_line_disorder mem matches 3 run tag @s add mc_angry