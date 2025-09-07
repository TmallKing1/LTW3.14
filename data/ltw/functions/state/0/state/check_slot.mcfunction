# 第八格
execute unless score @s shop_tower matches 1.. unless data entity @s[team=watching,tag=pass_setup] Inventory[{Slot: 8b, tag: {lobby_item: 1b, lobby_watch: 1b}}] run function ltw:state/0/state/join_game
execute if data entity @s[team=watching] Inventory[{tag: {lobby_item: 1b, lobby_ready: 1b}}] run clear @s lime_dye{lobby_item: 1b, lobby_ready: 1b}
execute unless score @s shop_tower matches 1.. unless score #start_countdown mem matches ..20 unless data entity @s[team=playing,tag=pass_setup] Inventory[{Slot: 8b, tag: {lobby_item: 1b, lobby_ready: 1b}}] run function ltw:state/0/state/join_watch
execute if data entity @s[team=playing] Inventory[{tag: {lobby_item: 1b, lobby_watch: 1b}}] run clear @s gray_dye{lobby_item: 1b, lobby_watch: 1b}
execute if score @s shop_tower matches 1.. run clear @s lime_dye{lobby_item: 1b, lobby_ready: 1b}
execute if score @s shop_tower matches 1.. run clear @s gray_dye{lobby_item: 1b, lobby_watch: 1b}

# 第七格 - 双倍奖励活动
#execute unless data entity @s[team=playing,tag=pass_setup,tag=double_reward] Inventory[{Slot: 7b, tag: {lobby_item: 1b, reward_double: 1b}}] run function ltw:state/0/state/reward_normal
#execute if data entity @s[team=playing,tag=!double_reward] Inventory[{tag: {lobby_item: 1b, reward_double: 1b}}] run clear @s purple_dye{lobby_item: 1b, reward_double: 1b}
#execute unless data entity @s[team=playing,tag=pass_setup,tag=!double_reward] Inventory[{Slot: 7b, tag: {lobby_item: 1b, reward_normal: 1b}}] run function ltw:state/0/state/reward_double
#execute if data entity @s[team=playing,tag=double_reward] Inventory[{tag: {lobby_item: 1b, reward_normal: 1b}}] run clear @s gray_dye{lobby_item: 1b, reward_normal: 1b}
#clear @s[team=watching] purple_dye{lobby_item: 1b, reward_double: 1b}
#clear @s[team=watching] gray_dye{lobby_item: 1b, reward_normal: 1b}

# 第七格 - 世界模式
execute unless data entity @s[team=playing,tag=pass_setup,tag=world_enable] Inventory[{Slot: 7b, tag: {lobby_item: 1b, world_enable: 1b}}] run function ltw:state/0/state/world_disable
execute if data entity @s[team=playing,tag=!world_enable] Inventory[{tag: {lobby_item: 1b, world_enable: 1b}}] run clear @s pink_dye{lobby_item: 1b, world_enable: 1b}
execute unless data entity @s[team=playing,tag=pass_setup,tag=!world_enable] Inventory[{Slot: 7b, tag: {lobby_item: 1b, world_disable: 1b}}] run function ltw:state/0/state/world_enable
execute if data entity @s[team=playing,tag=world_enable] Inventory[{tag: {lobby_item: 1b, world_disable: 1b}}] run clear @s gray_dye{lobby_item: 1b, world_disable: 1b}
clear @s[team=watching] pink_dye{lobby_item: 1b, world_enable: 1b}
clear @s[team=watching] gray_dye{lobby_item: 1b, world_disable: 1b}

# 切换是否显示星星
execute if entity @s[tag=lost] unless data entity @s Inventory[{Slot: 35b, tag: {lobby_item:1b, lost_enable:0b}}] run function ltw:state/0/state/switch_lost

# 清除临时物品
clear @s crimson_button{LockTempItem: 1b}

# 清除基岩
clear @s command_block{destroy: 1b}