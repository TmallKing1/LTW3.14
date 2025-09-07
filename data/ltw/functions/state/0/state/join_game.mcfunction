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
#item replace entity @s[tag=pass_setup,tag=double_reward] hotbar.7 with purple_dye{lobby_item: 1b, reward_double: 1b, display: {Name: '""', Lore: ['{"text":"你将在下一局获得双倍奖励","color":"gray","italic":false}']}}
#item replace entity @s[tag=pass_setup,tag=!double_reward] hotbar.7 with gray_dye{lobby_item: 1b, reward_normal: 1b, display: {Name: '""', Lore: ['{"text":"你将在下一局获得正常份量的奖励","color":"gray","italic":false}']}}
#item modify entity @s[tag=pass_setup,tag=double_reward] hotbar.7 ltw:double_reward_enabled
#item modify entity @s[tag=pass_setup,tag=!double_reward] hotbar.7 ltw:double_reward_disabled

# 世界模式
clear @s pink_dye{lobby_item: 1b, world_enable: 1b}
clear @s gray_dye{lobby_item: 1b, world_disable: 1b}
execute if data entity @s Inventory[{Slot: 7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot: 7b}] at @s run function item:pop_slot/return_item
item replace entity @s[tag=pass_setup,tag=world_enable] hotbar.7 with pink_dye{lobby_item: 1b, world_enable: 1b, display: {Name: '[{"text": "世界模式 开启 (按 ","color": "#FF98EE","italic": false},{"keybind":"key.drop","color":"#FF98EE","italic": false},{"text": " 关闭)","color": "#FF98EE","italic": false}]', Lore: ['{"text":"下一局将会计算世界进度，世界模式台阶效果也会生效","color":"gray","italic":false}']}}
item replace entity @s[tag=pass_setup,tag=!world_enable] hotbar.7 with gray_dye{lobby_item: 1b, world_disable: 1b, display: {Name: '[{"text": "世界模式 关闭 (按 ","color": "white","italic": false},{"keybind":"key.drop","color": "white","italic": false},{"text": " 启用)","color": "white","italic": false}]', Lore: ['{"text":"下一局将不会计算世界进度，世界模式台阶效果不会生效","color":"gray","italic":false}']}}