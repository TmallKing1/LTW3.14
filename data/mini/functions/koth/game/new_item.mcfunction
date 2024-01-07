scoreboard players set $new_item_cd mem 0

# 随机选择生成组
execute store result score $random mem run random value 0..1

# 生成物资
execute unless score $double_reward mem matches 1 if score $random mem matches 0 positioned 1014.5 16 8987.5 run function mini:koth/game/bonus_item/spawn_item
execute unless score $double_reward mem matches 1 if score $random mem matches 0 positioned 987.5 16 9014.5 run function mini:koth/game/bonus_item/spawn_item
execute unless score $double_reward mem matches 1 if score $random mem matches 1 positioned 1014.5 16 9014.5 run function mini:koth/game/bonus_item/spawn_item
execute unless score $double_reward mem matches 1 if score $random mem matches 1 positioned 987.5 16 8987.5 run function mini:koth/game/bonus_item/spawn_item
execute if score $double_reward mem matches 1 positioned 1014.5 16 8987.5 run function mini:koth/game/bonus_item/spawn_item
execute if score $double_reward mem matches 1 positioned 987.5 16 9014.5 run function mini:koth/game/bonus_item/spawn_item
execute if score $double_reward mem matches 1 positioned 1014.5 16 9014.5 run function mini:koth/game/bonus_item/spawn_item
execute if score $double_reward mem matches 1 positioned 987.5 16 8987.5 run function mini:koth/game/bonus_item/spawn_item
execute as @e[tag=bonus_item] run data modify entity @s NoGravity set value 0b

# 显示提示
execute unless score $double_reward mem matches 1 run title @a subtitle {"text":"❇ 奖励物资已在空中部署 ❇","color":"aqua"}
execute if score $double_reward mem matches 1 run title @a subtitle {"text":"❇ 双倍奖励物资已在空中部署 ❇","color":"light_purple"}
title @a times 1 60 3
title @a title ""
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text":"奖励物资：","color":"aqua"},{"selector": "@e[tag=bonus_item]"}]
playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2