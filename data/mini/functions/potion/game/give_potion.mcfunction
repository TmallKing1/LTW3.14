# 如果是副手有药水，则切换玩家的药水类型
execute if data entity @s Inventory[{Slot: -106b,id:"minecraft:potion",tag:{game_item:1b}}] run scoreboard players set @s potionType 0
execute if data entity @s Inventory[{Slot: -106b,id:"minecraft:splash_potion",tag:{game_item:1b}}] run scoreboard players set @s potionType 1

clear @s potion
clear @s splash_potion

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

execute if entity @s[scores={potionType=0}] run item replace entity @s hotbar.8 with splash_potion{game_item:1b,display:{Name:'[{"text": "炸药","color": "red","italic": false}," ",{"text": "(按 ","color": "gray","italic": false},{"keybind":"key.swapOffhand","color": "gray","italic": false},{"text": " 切换为治疗药水)","color": "gray","italic": false}]'},Potion:"minecraft:strong_harming",HideFlags:63}
execute if entity @s[scores={potionType=1}] run item replace entity @s hotbar.8 with potion{game_item:1b,display:{Name:'[{"text": "治疗药水","color": "green","italic": false}," ",{"text": "(按 ","color": "gray","italic": false},{"keybind":"key.swapOffhand","color": "gray","italic": false},{"text": " 切换为炸药)","color": "gray","italic": false}]'},Potion:"minecraft:healing",HideFlags:63}