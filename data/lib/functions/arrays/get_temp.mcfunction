#> lib:arrays/get_temp
# 根据索引值获取数组内的值，并存入 lib:arrays Output
# @input score $index mem 索引
# @input lib:arrays Array 目标数组
# @output lib:arrays Output 获取到的值
execute store result storage lib:arrays Index int 1 run scoreboard players get $index mem
return run function lib:arrays/get_temp_1 with storage lib:arrays