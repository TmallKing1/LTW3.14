# 处理第七格
clear @s pink_dye{lobby_item: 1b, world_enable: 1b}
clear @s gray_dye{lobby_item: 1b, world_disable: 1b}
kill @e[type=item,nbt={Item: {id: "minecraft:gray_dye", tag: {lobby_item: 1b, world_disable: 1b}}}]
execute if data entity @s Inventory[{Slot: 7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot: 7b}] at @s run function item:pop_slot/return_item
execute unless score @s stat_level matches 1.. run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你的等级需要达到 1 来启用世界模式","color": "red"}]
execute unless score @s stat_level matches 1.. at @s run function lib:sounds/error
execute unless score @s stat_level matches 1.. run item replace entity @s[tag=pass_setup] hotbar.7 with gray_dye{lobby_item: 1b, world_disable: 1b, display: {Name: '[{"text": "世界模式 关闭 (按 ","color": "white","italic": false},{"keybind":"key.drop","color": "white","italic": false},{"text": " 启用)","color": "white","italic": false}]', Lore: ['{"text":"下一局将不会计算世界进度，世界模式台阶效果不会生效","color":"gray","italic":false}']}}
execute unless score @s stat_level matches 1.. run return fail

item replace entity @s[tag=pass_setup] hotbar.7 with pink_dye{lobby_item: 1b, world_enable: 1b, display: {Name: '[{"text": "世界模式 开启 (按 ","color": "#FF98EE","italic": false},{"keybind":"key.drop","color":"#FF98EE","italic": false},{"text": " 关闭)","color": "#FF98EE","italic": false}]', Lore: ['{"text":"下一局将会计算世界进度，世界模式台阶效果也会生效","color":"gray","italic":false}']}}
execute at @s run function lib:sounds/hit

# 处理数据
tag @s add world_enable