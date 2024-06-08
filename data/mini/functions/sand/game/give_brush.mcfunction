clear @s brush{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with brush{game_item: 1b, display: {Name: '{"text":"刷子","color":"aqua","italic":false}'}, Unbreakable: 1b}