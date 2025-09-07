# 根据轮数生成对应的物品

execute unless score #gamemode mem matches 2 if score $round mem matches ..4 run function item:bonus_item/gameparty/mixed/low2
execute unless score #gamemode mem matches 2 if score $round mem matches 5.. run function item:bonus_item/gameparty/score/low2
execute if score #gamemode mem matches 2 run function item:bonus_item/gameparty/reverse/low2