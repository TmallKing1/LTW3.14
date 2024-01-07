# 处理第七格
clear @s purple_dye{lobby_item: 1b, reward_double: 1b}
clear @s gray_dye{lobby_item: 1b, reward_normal: 1b}
kill @e[type=item,nbt={Item: {id: "minecraft:gray_dye", tag: {lobby_item: 1b, reward_normal: 1b}}}]
execute if data entity @s Inventory[{Slot: 7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot: 7b}] at @s run function item:pop_slot/return_item
execute if score @s double_reward matches 1.. run item replace entity @s[tag=pass_setup] hotbar.7 with purple_dye{lobby_item: 1b, reward_double: 1b, display: {Name: '[{"text":"双倍奖励 开启 ","color":"light_purple","italic": false},{"text": "(按 ","color": "light_purple"},{"keybind":"key.drop","color":"light_purple","italic":false},{"text":" 取消)","color":"light_purple","italic": false}]', Lore: ['{"text":"你将在下一局获得双倍奖励","color":"gray","italic":false}']}}
execute if score @s double_reward matches 1.. run execute at @s run function lib:sounds/hit
execute unless score @s double_reward matches 1.. run item replace entity @s[tag=pass_setup] hotbar.7 with gray_dye{lobby_item: 1b, reward_normal: 1b, display: {Name: '[{"text":"双倍奖励 关闭 ","color":"white","italic": false},{"text": "(按 ","color": "white"},{"keybind":"key.drop","color":"white","italic":false},{"text":" 开启)","color":"white","italic": false}]', Lore: ['{"text":"你将在下一局获得正常份量的奖励","color":"gray","italic":false}']}}
execute unless score @s double_reward matches 1.. run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你的双倍奖励次数用完了……","color": "red"}]
execute unless score @s double_reward matches 1.. run execute at @s run function lib:sounds/error

# 处理数据
execute if score @s double_reward matches 1.. run tag @s add double_reward
tellraw @s[tag=double_reward] ["",{"text": ">> ","color": "green","bold": true},{"text": "当前剩余双倍奖励次数：","color": "green"},{"score":{"name": "@s","objective": "double_reward"},"color": "green"}]