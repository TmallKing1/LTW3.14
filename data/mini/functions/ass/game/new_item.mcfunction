scoreboard players set $new_item_cd mem 0

# 随机选择生成组
execute store result score $random mem run random value 0..3

# 生成物资
execute unless score $double_reward mem matches 1 if score $random mem matches 0 positioned 1023.5 21 7009.5 run function item:bonus_item/gameparty/auto/low
execute unless score $double_reward mem matches 1 if score $random mem matches 0 positioned 1008.5 21 7024.5 run function item:bonus_item/gameparty/auto/low
execute unless score $double_reward mem matches 1 if score $random mem matches 1 positioned 1008.5 21 7009.5 run function item:bonus_item/gameparty/auto/low
execute unless score $double_reward mem matches 1 if score $random mem matches 1 positioned 1023.5 21 7024.5 run function item:bonus_item/gameparty/auto/low
execute unless score $double_reward mem matches 1 if score $random mem matches 2 positioned 1007.0 21 7016.5 run function item:bonus_item/gameparty/auto/low
execute unless score $double_reward mem matches 1 if score $random mem matches 2 positioned 1025.0 21 7017.5 run function item:bonus_item/gameparty/auto/low
execute unless score $double_reward mem matches 1 if score $random mem matches 3 positioned 1016.5 21 7026.0 run function item:bonus_item/gameparty/auto/low
execute unless score $double_reward mem matches 1 if score $random mem matches 3 positioned 1015.5 21 7008.0 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 if score $random mem matches 0..1 positioned 1023.5 21 7009.5 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 if score $random mem matches 0..1 positioned 1008.5 21 7024.5 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 if score $random mem matches 0..1 positioned 1008.5 21 7009.5 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 if score $random mem matches 0..1 positioned 1023.5 21 7024.5 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 if score $random mem matches 2..3 positioned 1007.0 21 7016.5 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 if score $random mem matches 2..3 positioned 1025.0 21 7017.5 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 if score $random mem matches 2..3 positioned 1016.5 21 7026.0 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 if score $random mem matches 2..3 positioned 1015.5 21 7008.0 run function item:bonus_item/gameparty/auto/low
execute as @e[tag=bonus_item] run data modify entity @s NoGravity set value 0b

# 显示提示
execute unless score $double_reward mem matches 1 run title @a subtitle {"text":"❇ 奖励物资已在空中部署 ❇","color":"aqua"}
execute if score $double_reward mem matches 1 run title @a subtitle {"text":"❇ 双倍奖励物资已在空中部署 ❇","color":"light_purple"}
title @a times 1 60 3
title @a title ""
tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"text":"奖励物资：","color":"aqua"},{"selector": "@e[tag=bonus_item]"}]
playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2