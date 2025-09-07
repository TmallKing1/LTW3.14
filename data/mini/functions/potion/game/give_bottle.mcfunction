# 先检测是否为水瓶
execute if data entity @s Inventory[{Slot: 8b, id:"minecraft:potion", tag:{Potion: "minecraft:water"}}] run return run function mini:potion/game/get_potion

clear @s glass_bottle

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with glass_bottle{game_item:1b,display:{Name:'{"text":"什么都没装的瓶子","color":"gray","italic":false}'},HideFlags:63}