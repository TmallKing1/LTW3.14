clear @s bow{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

execute unless score $ley_line_disorder mem matches 2 run item replace entity @s hotbar.8 with bow{game_item: 1b, powerful: 0b, display: {Name: '{"text":"弓","color":"aqua","italic":false}'}, Unbreakable: 1b}
execute if score $ley_line_disorder mem matches 2 run item replace entity @s hotbar.8 with crossbow{game_item: 1b, powerful: 0b, display: {Name: '{"text":"弩","color":"aqua","italic":false}'}, Enchantments:[{id:"quick_charge",lvl:3}], Unbreakable: 1b}