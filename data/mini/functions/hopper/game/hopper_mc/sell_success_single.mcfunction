# 物品数量
execute store result score $sell_count mem run data get storage mini:hopper waiting_sell.Count
# 物品价值
execute as @e[type=marker,tag=sell_item_marker,limit=1] store result score $sell_value mem run data get entity @s data.value
# 累加
scoreboard players operation $sell_value mem *= $sell_count mem
scoreboard players operation $sell_temp mem += $sell_value mem