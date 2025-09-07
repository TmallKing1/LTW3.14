# 处理第七格
clear @s pink_dye{lobby_item: 1b, world_enable: 1b}
clear @s gray_dye{lobby_item: 1b, world_disable: 1b}
kill @e[type=item,nbt={Item: {id: "minecraft:pink_dye", tag: {lobby_item: 1b, world_enable: 1b}}}]
execute if data entity @s Inventory[{Slot: 7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot: 7b}] at @s run function item:pop_slot/return_item
item replace entity @s[tag=pass_setup] hotbar.7 with gray_dye{lobby_item: 1b, world_disable: 1b, display: {Name: '[{"text": "世界模式 关闭 (按 ","color": "white","italic": false},{"keybind":"key.drop","color": "white","italic": false},{"text": " 启用)","color": "white","italic": false}]', Lore: ['{"text":"下一局将不会计算世界进度，世界模式台阶效果不会生效","color":"gray","italic":false}']}}
execute at @s run function lib:sounds/hit2

# 处理数据
tag @s remove world_enable
