tellraw @s ["",{"text": ">> ","color":"red","bold": true},{"text":"你被 ","color":"red"},{"selector": "@a[tag=seat_damage_dealt,limit=1]","color": "red"},{"text":" 赶下了矿车！","color":"red"}]
tellraw @a[tag=seat_damage_dealt,limit=1] ["",{"text": ">> ","color":"gold","bold": true},{"text":"你将 ","color":"white"},{"selector": "@a[tag=seat_damage_taken,limit=1]","color": "gold"},{"text":" 赶下了矿车！","color":"white"}]
advancement grant @a[tag=seat_damage_dealt,tag=in_minecart,limit=1] only ltw:vs/seat2

# 进度失败
tag @a[tag=seat_damage_dealt,limit=1] add seat_adv_failed

tp @s ~ ~0.5 ~
effect give @s blindness 2