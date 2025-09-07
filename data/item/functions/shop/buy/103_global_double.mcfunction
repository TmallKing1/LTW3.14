# 全局双倍 (2gb)
tag @s remove canbuy
execute unless score $boost_active mem matches 1 run tag @s[scores={gold=162..}] add canbuy
execute if score $boost_active mem matches 1 run tellraw @s ["",{"text":">> ","color":"aqua","bold":true},{"text":"奖励增益模式已处于启用状态！","color":"aqua"}]
execute unless score $boost_active mem matches 1 run tellraw @s[scores={gold=..161}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金块来启用奖励增益模式!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你开启了 ",{"text":"奖励增益模式（单次游戏生效）","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 开启了 ",{"text":"奖励增益模式（单次游戏生效）","color":"green"}]
execute if entity @s[tag=canbuy] run scoreboard players set #gamemode mem 3
execute if entity @s[tag=canbuy] run scoreboard players set $boost_active mem 1
scoreboard players remove @s[tag=canbuy] gold 162
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy