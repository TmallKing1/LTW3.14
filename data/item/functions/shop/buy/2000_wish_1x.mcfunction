# 单抽 (1i)
tag @s remove canbuy
tag @s[scores={primogem=64..}] add canbuy
tellraw @s[scores={primogem=..63}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的魔法符咒来进行幻境抽取！","color":"red"}]
scoreboard players remove @s[tag=canbuy] primogem 64
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
scoreboard players set $wish_time temp 1
scoreboard players set @s[tag=canbuy] primogem_temp 0
execute as @s[tag=canbuy] run function item:powerup/wish/wish_trigger
tellraw @s[tag=canbuy] ["",{"text": ">> ","color": "green","bold": true},"抽取结果：",{"selector":"@e[tag=wish_marker]"}]
execute if score @s[tag=canbuy] primogem_temp matches 1.. run tellraw @s[tag=canbuy] ["",{"text": ">> ","color": "green","bold": true},"返还魔法符咒：",{"score":{"name": "@s","objective": "primogem_temp"}}]
scoreboard players operation @s[tag=canbuy] primogem_temp *= #64 mem
scoreboard players operation @s[tag=canbuy] primogem += @s[tag=canbuy] primogem_temp
kill @e[tag=wish_marker]
execute as @s[tag=canbuy] run function item:shop/refresh_gold
execute as @s[tag=canbuy] run function item:shop/refresh_essence
scoreboard players reset $wish_time temp
scoreboard players reset $wish_five_count temp
scoreboard players reset $wish_four_count temp
scoreboard players reset $wish_three_count temp
tag @s remove canbuy