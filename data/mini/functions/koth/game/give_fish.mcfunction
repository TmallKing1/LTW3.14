# 幻境干扰 -1：如果击退鱼在副手，则累积能量值
execute if score $ley_line_disorder mem matches -1 if data entity @s Inventory[{Slot:-106b,id:"minecraft:cod",tag:{game_item:1b}}] run scoreboard players operation @s power_count += @s power_count_temp
execute if score $ley_line_disorder mem matches -1 if data entity @s Inventory[{Slot:-106b,id:"minecraft:cod",tag:{game_item:1b}}] run scoreboard players set @s power_count_temp 0
execute if score $ley_line_disorder mem matches -1 if data entity @s Inventory[{Slot:-106b,id:"minecraft:cod",tag:{game_item:1b}}] at @s run function lib:sounds/levelup

clear @s cod{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

execute unless score $ley_line_disorder mem matches 2 if block ~ 9 ~ red_mushroom_block run item replace entity @s hotbar.8 with cod{game_item: 1b, powerful: 0b, display: {Name: '{"text":"击退鱼","color":"aqua","italic":false}'}, Enchantments: [{id: "knockback", lvl: 2}], AttributeModifiers: [{UUID: [I; 2, 0, 2, 1], Amount: 15, AttributeName: "generic.attack_damage", Name: "attack", Slot: "mainhand", Operation: 0}], HideFlags: 63}
execute unless score $ley_line_disorder mem matches 2 unless block ~ 9 ~ red_mushroom_block run item replace entity @s hotbar.8 with cod{game_item: 1b, powerful: 1b, display: {Name: '{"text":"强力击退鱼","color":"light_purple","italic":false}'}, Enchantments: [{id: "knockback", lvl: 4}], AttributeModifiers: [{UUID: [I; 2, 0, 2, 1], Amount: 15, AttributeName: "generic.attack_damage", Name: "attack", Slot: "mainhand", Operation: 0}], HideFlags: 63}

execute if score $ley_line_disorder mem matches 2 if block ~ 9 ~ red_mushroom_block run item replace entity @s hotbar.8 with cod{game_item: 1b, powerful: 0b, display: {Name: '{"text":"击退鱼","color":"aqua","italic":false}'}, Enchantments: [{id: "knockback", lvl: 1}], AttributeModifiers: [{UUID: [I; 2, 0, 2, 1], Amount: 15, AttributeName: "generic.attack_damage", Name: "attack", Slot: "mainhand", Operation: 0}], HideFlags: 63}
execute if score $ley_line_disorder mem matches 2 unless block ~ 9 ~ red_mushroom_block run item replace entity @s hotbar.8 with cod{game_item: 1b, powerful: 1b, display: {Name: '{"text":"强力击退鱼","color":"light_purple","italic":false}'}, Enchantments: [{id: "knockback", lvl: 2}], AttributeModifiers: [{UUID: [I; 2, 0, 2, 1], Amount: 15, AttributeName: "generic.attack_damage", Name: "attack", Slot: "mainhand", Operation: 0}], HideFlags: 63}