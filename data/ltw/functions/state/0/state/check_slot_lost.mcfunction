# 第八格
execute unless score @s shop_tower matches 1.. unless data entity @s[team=watching_lost,tag=pass_setup] Inventory[{Slot: 8b, tag: {lobby_item: 1b, lobby_watch: 1b}}] run function ltw:state/0/state/join_game
execute if data entity @s[team=watching_lost] Inventory[{tag: {lobby_item: 1b, lobby_ready: 1b}}] run clear @s lime_dye{lobby_item: 1b, lobby_ready: 1b}
execute unless score @s shop_tower matches 1.. unless score #start_countdown mem matches ..20 unless data entity @s[team=playing_lost,tag=pass_setup] Inventory[{Slot: 8b, tag: {lobby_item: 1b, lobby_ready: 1b}}] run function ltw:state/0/state/join_watch
execute if data entity @s[team=playing_lost] Inventory[{tag: {lobby_item: 1b, lobby_watch: 1b}}] run clear @s gray_dye{lobby_item: 1b, lobby_watch: 1b}
execute if score @s shop_tower matches 1.. run clear @s lime_dye{lobby_item: 1b, lobby_ready: 1b}
execute if score @s shop_tower matches 1.. run clear @s gray_dye{lobby_item: 1b, lobby_watch: 1b}

# 第七格
#execute unless data entity @s[team=playing_lost,tag=pass_setup,tag=double_reward] Inventory[{Slot: 7b, tag: {lobby_item: 1b, reward_double: 1b}}] run function ltw:state/0/state/reward_normal
#execute if data entity @s[team=playing_lost,tag=!double_reward] Inventory[{tag: {lobby_item: 1b, reward_double: 1b}}] run clear @s purple_dye{lobby_item: 1b, reward_double: 1b}
#execute unless data entity @s[team=playing_lost,tag=pass_setup,tag=!double_reward] Inventory[{Slot: 7b, tag: {lobby_item: 1b, reward_normal: 1b}}] run function ltw:state/0/state/reward_double
#execute if data entity @s[team=playing_lost,tag=double_reward] Inventory[{tag: {lobby_item: 1b, reward_normal: 1b}}] run clear @s gray_dye{lobby_item: 1b, reward_normal: 1b}
#clear @s[team=watching_lost] purple_dye{lobby_item: 1b, reward_double: 1b}
#clear @s[team=watching_lost] gray_dye{lobby_item: 1b, reward_normal: 1b}

# 清除临时物品
clear @s crimson_button{LockTempItem: 1b}

# 清除基岩
clear @s command_block{destroy: 1b}