clear @s chest{game_item: 1b}
clear @s ender_chest{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

item replace entity @s[tag=has_mats_basic] hotbar.8 with chest{game_item: 1b, display: {Name: '{"text":"普通物资","color":"green","italic":false}'}}
item replace entity @s[tag=has_mats_speci] hotbar.8 with ender_chest{game_item: 1b, display: {Name: '{"text":"奖励物资","color":"light_purple","italic":false}'}}