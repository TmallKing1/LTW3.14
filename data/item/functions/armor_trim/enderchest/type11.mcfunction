# 检测道具变更
function item:armor_trim/enderchest/switches/type11/main

# 重置末影箱
execute if score @s enderchest_type matches 11 run function item:armor_trim/enderchest/displays/type11/main