# 处理第七格
clear @s purple_dye{lobby_item: 1b, reward_double: 1b}
clear @s gray_dye{lobby_item: 1b, reward_normal: 1b}
kill @e[type=item,nbt={Item: {id: "minecraft:gray_dye", tag: {lobby_item: 1b, reward_normal: 1b}}}]
execute if data entity @s Inventory[{Slot: 7b}] run scoreboard players set @s item_slot 7
execute if data entity @s Inventory[{Slot: 7b}] at @s run function item:pop_slot/return_item
execute unless score @s stat_level matches 1.. run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你的等级需要达到 1 来开启双倍奖励","color": "red"}]
execute unless score @s stat_level matches 1.. at @s run function lib:sounds/error
execute unless score @s stat_level matches 1.. run item replace entity @s[tag=pass_setup] hotbar.7 with gray_dye{lobby_item: 1b, reward_normal: 1b, display: {Name: '""', Lore: ['{"text":"你将在下一局获得正常份量的奖励","color":"gray","italic":false}']}}
execute unless score @s stat_level matches 1.. run item modify entity @s[tag=pass_setup] hotbar.7 ltw:double_reward_disabled
execute unless score @s stat_level matches 1.. run return fail
execute unless score @s double_reward matches 1.. run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你的双倍奖励次数已用尽","color": "red"}]
execute unless score @s double_reward matches 1.. at @s run function lib:sounds/error
execute unless score @s double_reward matches 1.. run item replace entity @s[tag=pass_setup] hotbar.7 with gray_dye{lobby_item: 1b, reward_normal: 1b, display: {Name: '""', Lore: ['{"text":"你将在下一局获得正常份量的奖励","color":"gray","italic":false}']}}
execute unless score @s double_reward matches 1.. run item modify entity @s[tag=pass_setup] hotbar.7 ltw:double_reward_disabled
execute unless score @s double_reward matches 1.. run return fail

item replace entity @s[tag=pass_setup] hotbar.7 with purple_dye{lobby_item: 1b, reward_double: 1b, display: {Name: '""', Lore: ['{"text":"你将在下一局获得双倍奖励","color":"gray","italic":false}']}}
item modify entity @s[tag=pass_setup] hotbar.7 ltw:double_reward_enabled
execute at @s run function lib:sounds/hit

# 处理数据
execute if score @s double_reward matches 1.. run tag @s add double_reward