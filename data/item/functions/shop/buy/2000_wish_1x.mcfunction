# 单抽 (1i)
tag @s remove canbuy
tag @s[scores={primogem=64..}] add canbuy
tellraw @s[scores={primogem=..63}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的魔法符咒来进行幻境抽取！","color":"red"}]
scoreboard players remove @s[tag=canbuy] primogem 64
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
scoreboard players set $wish_time temp 1
execute as @s[tag=canbuy] run function item:powerup/wish/wish_trigger
execute as @s[tag=canbuy] run function item:shop/refresh_gold
execute as @s[tag=canbuy] run function item:shop/refresh_essence
scoreboard players reset $wish_time temp
scoreboard players reset $wish_five_count temp
scoreboard players reset $wish_four_count temp
scoreboard players reset $wish_three_count temp
tag @s remove canbuy