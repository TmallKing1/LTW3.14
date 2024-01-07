# 塔塔开
scoreboard players add @s shop_tower 0
tag @s remove canbuy

tellraw @s[scores={shop_tower=0,gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来开启错误之塔!","color":"red"}]
tellraw @s[scores={shop_tower=1..,gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来升级!","color":"red"}]
tag @s[scores={gold=9..}] add canbuy

scoreboard players remove @s[tag=canbuy] gold 9
execute as @s[tag=!canbuy] at @s run function lib:sounds/error

execute as @s[tag=canbuy,scores={shop_tower=1..}] at @s run function ltw:state/0/tower/levelup
execute as @s[tag=canbuy,scores={shop_tower=0}] at @s run function ltw:state/0/tower/start
tag @s remove canbuy