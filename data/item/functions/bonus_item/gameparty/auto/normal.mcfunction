# 根据轮数生成对应的物品

execute unless score #gamemode mem matches 2 if score $round mem matches ..4 run function item:bonus_item/gameparty/mixed/normal
execute unless score #gamemode mem matches 2 if score $round mem matches 5.. run function item:bonus_item/gameparty/score/normal
execute if score #gamemode mem matches 2 if score $round mem matches ..1 run function item:bonus_item/gameparty/score/normal
execute if score #gamemode mem matches 2 if score $round mem matches 2.. run function item:bonus_item/gameparty/reverse/normal