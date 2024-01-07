# 作为玩家
tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 的物品栏被清空了……"]
clear @s #item:non_game

# JK头给予额外金粒
scoreboard players set #jk_head mem 0
execute if data entity @s Inventory[{Slot: 103b}].tag.jk_head store result score #jk_head mem run data get entity @s Inventory[{Slot: 103b}].tag.jk_head 5
execute if score #jk_head mem matches 1.. run function item:bonus_item/extra_gold_jk
