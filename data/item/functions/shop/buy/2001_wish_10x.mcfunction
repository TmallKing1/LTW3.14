# 十连 (10i)
tag @s remove canbuy
tag @s[scores={primogem=640..}] add canbuy
tellraw @s[scores={primogem=..639}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的魔法符咒来进行幻境抽取！","color":"red"}]
scoreboard players remove @s[tag=canbuy] primogem 640
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
scoreboard players set $wish_time temp 10
execute as @s[tag=canbuy] run function item:powerup/wish/wish_trigger
execute as @s[tag=canbuy] run function item:shop/refresh_gold
execute as @s[tag=canbuy] run function item:shop/refresh_essence
scoreboard players add $wish_five_count temp 0
scoreboard players add $wish_four_count temp 0
scoreboard players add $wish_three_count temp 0
tellraw @s[tag=canbuy] ["",{"text": ">> ","color": "green","bold": true},"十连抽总结："]
tellraw @s[tag=canbuy] ["",{"text": "五星数: ","color": "gold"},{"score":{"name": "$wish_five_count","objective": "temp"}}]
tellraw @s[tag=canbuy] ["",{"text": "四星数: ","color": "light_purple"},{"score":{"name": "$wish_four_count","objective": "temp"}}]
tellraw @s[tag=canbuy] ["",{"text": "三星数: ","color": "aqua"},{"score":{"name": "$wish_three_count","objective": "temp"}}]
scoreboard players reset $wish_time temp
scoreboard players reset $wish_five_count temp
scoreboard players reset $wish_four_count temp
scoreboard players reset $wish_three_count temp
tag @s remove canbuy