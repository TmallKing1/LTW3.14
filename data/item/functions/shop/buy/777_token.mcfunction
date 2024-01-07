# 777 代币 (1gn)
tag @s remove canbuy
tag @s[scores={gold=1..}] add canbuy
tellraw @s[scores={gold=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金粒来购买 777 代币!","color":"red"}]
scoreboard players remove @s[tag=canbuy] gold 1
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] run function ltw:state/0/roll_777/roll
execute as @s[tag=canbuy] run function item:shop/refresh_gold
execute as @s[tag=canbuy] run function item:shop/refresh_essence
tag @s remove canbuy