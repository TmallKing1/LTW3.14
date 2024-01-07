clear @s bucket
clear @s water_bucket

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot:7b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.7 with water_bucket{game_item:1b,display:{Name:'{"text":"水桶","color":"aqua","italic":false}'}, CanPlaceOn: ["#mini:duckrush_block"]}