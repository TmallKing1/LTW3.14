# 处理第七格
clear @s purple_dye{lobby_item: 1b, reward_double: 1b}
clear @s gray_dye{lobby_item: 1b, reward_normal: 1b}
kill @e[type=item,nbt={Item: {id: "minecraft:purple_dye", tag: {lobby_item: 1b, reward_double: 1b}}}]
execute if data entity @s Inventory[{Slot: 7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot: 7b}] at @s run function item:pop_slot/return_item
item replace entity @s[tag=pass_setup] hotbar.7 with gray_dye{lobby_item: 1b, reward_normal: 1b, display: {Name: '""', Lore: ['{"text":"你将在下一局获得正常份量的奖励","color":"gray","italic":false}']}}
item modify entity @s[tag=pass_setup] hotbar.7 ltw:double_reward_disabled
execute at @s run function lib:sounds/hit2

# 处理数据
tag @s remove double_reward
