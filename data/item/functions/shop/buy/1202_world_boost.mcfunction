# 世界强化 x1.2 (2g)
scoreboard players add @s world_boost 0
tag @s remove canbuy
tag @s[scores={world_boost=0,gold=18..}] add canbuy
tag @s[scores={world_boost=1,gold=9..}] add canbuy
tellraw @s[scores={world_boost=2..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购买过这一档或更高级的世界强化，不能重复购买!","color":"aqua"}]
tellraw @s[scores={world_boost=0,gold=..17}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来购买世界强化!","color":"red"}]
tellraw @s[scores={world_boost=1,gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来升级!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"世界强化 × 1.2","color":"green"}]
scoreboard players remove @s[tag=canbuy,scores={world_boost=0}] gold 18
scoreboard players remove @s[tag=canbuy,scores={world_boost=1}] gold 9
scoreboard players set @s[tag=canbuy] world_boost 2
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy