clear @s lead{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with lead{game_item: 1b, display: {Name: '{"text":"铅","color":"gold","italic":false}'}, AttributeModifiers: [{UUID: [I; 2, 0, 2, 1], Amount: -114, AttributeName: "generic.attack_damage", Name: "attack", Slot: "mainhand", Operation: 0}], HideFlags: 63, Unbreakable: 1b}