# 全局双倍 (2gb)
tag @s remove canbuy
execute unless score #gamemode mem matches 2 run tag @s[scores={gold=162..}] add canbuy
execute if score #gamemode mem matches 2 run tellraw @s ["",{"text":">> ","color":"aqua","bold":true},{"text":"下一局的全局双倍奖励已经启用了！","color":"aqua"}]
execute unless score #gamemode mem matches 2 run tellraw @s[scores={gold=..161}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金块来购买这个物品!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"全局双倍奖励（下一场游戏生效）","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"全局双倍奖励（下一场游戏生效）","color":"green"}]
execute if entity @s[tag=canbuy] run scoreboard players set #gamemode mem 2
scoreboard players remove @s[tag=canbuy] gold 162
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy