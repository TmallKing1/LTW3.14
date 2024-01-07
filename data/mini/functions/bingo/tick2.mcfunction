tag @e[type=chest_minecart,tag=player_minecart] remove tp_player

# 传送矿车
execute as @a[team=playing,gamemode=survival] if entity @s[nbt={SelectedItemSlot:8}] run function mini:bingo/game/minecart_tp

# 归位矿车
tp @e[type=chest_minecart,tag=player_minecart,tag=!tp_player] 1000 5 5000
tag @e[type=chest_minecart,tag=player_minecart,tag=!tp_player] add old_mc

# 清理物品
clear @a #mini:bingo_item{bingo_item: 1b}
kill @e[type=item,nbt={Item:{tag:{bingo_item: 1b}}}]

# 任务检测
execute as @e[type=marker,tag=bingo_goal] run function mini:bingo/game/goal_check

# 游戏物品
execute as @a[team=playing] unless data entity @s Inventory[{Slot:8b,tag:{game_item:1b},Count:1b}] run function mini:bingo/game/honeycomb