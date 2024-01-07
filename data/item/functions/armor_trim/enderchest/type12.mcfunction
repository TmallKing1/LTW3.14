# 检测道具变更
function item:armor_trim/enderchest/switches/type12/main

# 重置末影箱
execute if score @s enderchest_type matches 12 run function item:armor_trim/enderchest/displays/type12/main