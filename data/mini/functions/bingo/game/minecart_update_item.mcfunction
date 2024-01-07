# 空白格返还
execute if data entity @s Items[{Slot:0b}] run scoreboard players set @s item_slot 0
execute if data entity @s Items[{Slot:0b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:1b}] run scoreboard players set @s item_slot 1
execute if data entity @s Items[{Slot:1b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:2b}] run scoreboard players set @s item_slot 2
execute if data entity @s Items[{Slot:2b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:3b}] run scoreboard players set @s item_slot 3
execute if data entity @s Items[{Slot:3b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:4b}] run scoreboard players set @s item_slot 4
execute if data entity @s Items[{Slot:4b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:5b}] run scoreboard players set @s item_slot 5
execute if data entity @s Items[{Slot:5b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:6b}] run scoreboard players set @s item_slot 6
execute if data entity @s Items[{Slot:6b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Items[{Slot:7b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Items[{Slot:8b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:9b}] run scoreboard players set @s item_slot 9
execute if data entity @s Items[{Slot:9b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:10b}] run scoreboard players set @s item_slot 10
execute if data entity @s Items[{Slot:10b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:11b}] run scoreboard players set @s item_slot 11
execute if data entity @s Items[{Slot:11b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:12b}] run scoreboard players set @s item_slot 12
execute if data entity @s Items[{Slot:12b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:13b}] run scoreboard players set @s item_slot 13
execute if data entity @s Items[{Slot:13b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:14b}] run scoreboard players set @s item_slot 14
execute if data entity @s Items[{Slot:14b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:15b}] run scoreboard players set @s item_slot 15
execute if data entity @s Items[{Slot:15b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:16b}] run scoreboard players set @s item_slot 16
execute if data entity @s Items[{Slot:16b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:17b}] run scoreboard players set @s item_slot 17
execute if data entity @s Items[{Slot:17b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:18b}] run scoreboard players set @s item_slot 18
execute if data entity @s Items[{Slot:18b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:19b}] run scoreboard players set @s item_slot 19
execute if data entity @s Items[{Slot:19b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:20b}] run scoreboard players set @s item_slot 20
execute if data entity @s Items[{Slot:20b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:21b}] run scoreboard players set @s item_slot 21
execute if data entity @s Items[{Slot:21b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:22b}] run scoreboard players set @s item_slot 22
execute if data entity @s Items[{Slot:22b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:23b}] run scoreboard players set @s item_slot 23
execute if data entity @s Items[{Slot:23b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:24b}] run scoreboard players set @s item_slot 24
execute if data entity @s Items[{Slot:24b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:25b}] run scoreboard players set @s item_slot 25
execute if data entity @s Items[{Slot:25b}] run function mini:bingo/game/return_item
execute if data entity @s Items[{Slot:26b}] run scoreboard players set @s item_slot 26
execute if data entity @s Items[{Slot:26b}] run function mini:bingo/game/return_item

# 替换物品
data modify entity @s Items set from block 1000 2 5000 Items

# 设置 Lore
tag @e[scores={goal_pos=1}] add goal_selected
tag @e[tag=quest_complete_1] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_1] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_1] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_1] run item modify entity @s container.3 mini:bingo/mc_enchantment
item modify entity @s container.3 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected

tag @e[scores={goal_pos=2}] add goal_selected
tag @e[tag=quest_complete_2] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_2] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_2] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_2] run item modify entity @s container.4 mini:bingo/mc_enchantment
item modify entity @s container.4 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected

tag @e[scores={goal_pos=3}] add goal_selected
tag @e[tag=quest_complete_3] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_3] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_3] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_3] run item modify entity @s container.5 mini:bingo/mc_enchantment
item modify entity @s container.5 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected

tag @e[scores={goal_pos=4}] add goal_selected
tag @e[tag=quest_complete_4] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_4] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_4] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_4] run item modify entity @s container.12 mini:bingo/mc_enchantment
item modify entity @s container.12 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected

tag @e[scores={goal_pos=5}] add goal_selected
tag @e[tag=quest_complete_5] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_5] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_5] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_5] run item modify entity @s container.13 mini:bingo/mc_enchantment
item modify entity @s container.13 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected

tag @e[scores={goal_pos=6}] add goal_selected
tag @e[tag=quest_complete_6] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_6] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_6] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_6] run item modify entity @s container.14 mini:bingo/mc_enchantment
item modify entity @s container.14 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected

tag @e[scores={goal_pos=7}] add goal_selected
tag @e[tag=quest_complete_7] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_7] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_7] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_7] run item modify entity @s container.21 mini:bingo/mc_enchantment
item modify entity @s container.21 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected

tag @e[scores={goal_pos=8}] add goal_selected
tag @e[tag=quest_complete_8] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_8] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_8] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_8] run item modify entity @s container.22 mini:bingo/mc_enchantment
item modify entity @s container.22 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected

tag @e[scores={goal_pos=9}] add goal_selected
tag @e[tag=quest_complete_9] add complete_selected
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_9] run data modify storage mini:bingo completion set value '{"text": "已完成","color": "green"}'
execute unless entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_9] run data modify storage mini:bingo completion set value '{"text": "未完成","color": "red"}'
execute if entity @a[tag=tempPlayerTp,limit=1,tag=quest_complete_9] run item modify entity @s container.23 mini:bingo/mc_enchantment
item modify entity @s container.23 mini:bingo/mc
tag @e remove goal_selected
tag @e remove complete_selected