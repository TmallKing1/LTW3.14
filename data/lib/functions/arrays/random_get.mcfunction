#> lib:arrays/random_get
# 从数组中随机取出一个数值，返回取出的值
# @input lib:arrays Array 需要进行随机取出操作的数组
execute unless data storage lib:arrays Array[0] run return 0
execute store result score $random_max mem run data get storage lib:arrays Array
execute store result storage ltw:random random_max int 1 run scoreboard players remove $random_max mem 1
data modify storage ltw:random random_min set value 0
function lib:random
execute store result storage lib:arrays RandomValue int 1 run scoreboard players get $random mem
return run function lib:arrays/random_get_1 with storage lib:arrays