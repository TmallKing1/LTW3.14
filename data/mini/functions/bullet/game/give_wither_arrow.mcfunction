clear @s arrow{game_item: 1b}
clear @s tipped_arrow{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: -106b}] run scoreboard players set @s item_slot -106
execute if data entity @s Inventory[{Slot: -106b}] at @s run function item:pop_slot/return_item

item replace entity @s weapon.offhand with tipped_arrow{game_item: 1b,custom_potion_effects:[{id:"wither",amplifier:10,duration: 114514,ambient:false,show_icon:1b,show_particles:1b}],CustomPotionColor: 1381172} 1
