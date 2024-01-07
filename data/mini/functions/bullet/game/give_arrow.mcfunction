clear @s arrow{game_item: 1b}
clear @s tipped_arrow{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: -106b}] run scoreboard players set @s item_slot -106
execute if data entity @s Inventory[{Slot: -106b}] at @s run function item:pop_slot/return_item

item replace entity @s weapon.offhand with arrow{game_item: 1b} 1
