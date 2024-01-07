# 根据轮数生成对应的物品

execute if score $round mem matches ..3 run function mini:koth/game/bonus_item/low
execute if score $round mem matches 4.. run function mini:koth/game/bonus_item/normal