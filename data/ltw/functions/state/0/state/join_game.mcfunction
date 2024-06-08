# 处理第七格
clear @s lime_dye{lobby_item: 1b, lobby_ready: 1b}
clear @s gray_dye{lobby_item: 1b, lobby_watch: 1b}
kill @e[type=item,nbt={Item: {id: "minecraft:gray_dye", tag: {lobby_item: 1b, lobby_watch: 1b}}}]
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item
execute unless score #start_countdown mem matches ..20 run item replace entity @s[tag=pass_setup] hotbar.8 with lime_dye{lobby_item: 1b, lobby_ready: 1b, display: {Name: '[{"text":"已准备 (按 ","color":"green","italic": false},{"keybind":"key.drop","color":"green","italic":false},{"text":" 切换旁观)","color":"green","italic": false}]', Lore: ['{"text":"你将在下一局参与游戏","color":"gray","italic":false}']}}

execute at @s run function lib:sounds/hit

# 处理数据
team join playing @s
team join playing_lost @s[tag=lost_enable]

# 双倍奖励活动
#clear @s purple_dye{lobby_item: 1b, reward_double: 1b}
#clear @s gray_dye{lobby_item: 1b, reward_normal: 1b}
#execute if data entity @s Inventory[{Slot: 7b}] run scoreboard players set @s item_slot 7
#execute if data entity @s Inventory[{Slot: 7b}] at @s run function item:pop_slot/return_item
#item replace entity @s[tag=pass_setup,tag=double_reward] hotbar.7 with purple_dye{lobby_item: 1b, reward_double: 1b, display: {Name: '[{"text":"双倍奖励 开启 ","color":"light_purple","italic": false},{"text": "(按 ","color": "light_purple"},{"keybind":"key.drop","color":"light_purple","italic":false},{"text":" 取消)","color":"light_purple","italic": false}]', Lore: ['{"text":"你将在下一局获得双倍奖励","color":"gray","italic":false}']}}
#item replace entity @s[tag=pass_setup,tag=!double_reward] hotbar.7 with gray_dye{lobby_item: 1b, reward_normal: 1b, display: {Name: '[{"text":"双倍奖励 关闭 ","color":"white","italic": false},{"text": "(按 ","color": "white"},{"keybind":"key.drop","color":"white","italic":false},{"text":" 开启)","color":"white","italic": false}]', Lore: ['{"text":"你将在下一局获得正常份量的奖励","color":"gray","italic":false}']}}
#tellraw @s[tag=double_reward] ["",{"text": ">> ","color": "green","bold": true},{"text": "当前剩余双倍奖励次数：","color": "green"},{"score":{"name": "@s","objective": "double_reward"},"color": "green"}]