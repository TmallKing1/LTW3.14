execute if score @s enderchest_type matches 11 run function item:armor_trim/enderchest/type11
execute if score @s enderchest_type matches 12 run function item:armor_trim/enderchest/type12
execute if score @s enderchest_type matches 13 run function item:armor_trim/enderchest/type13

# 清除玩家持有的末影箱物品
clear @s #item:armor/display{armor_trim_set:1b}