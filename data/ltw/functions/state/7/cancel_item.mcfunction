execute if data entity @s Inventory[{Slot: -106b, id: "minecraft:barrier"}] run function ltw:state/7/cancel_selection

clear @s barrier{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with barrier{game_item: 1b, powerful: 0b, display: {Name: '[{"text":"放弃选择奖励 (按 ","color":"red","italic":false},{"keybind":"key.swapOffhand","color": "red","italic": false},{"text": " 放弃)","color": "red","italic": false}]'}, Unbreakable: 1b}