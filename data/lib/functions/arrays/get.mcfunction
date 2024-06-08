#> lib:arrays/get
# 根据索引值获取数组内的值
# @input score $index mem 索引
# @input lib:arrays Array 目标数组
execute store result storage lib:arrays Index int 1 run scoreboard players get $index mem
return run function lib:arrays/get_1 with storage lib:arrays