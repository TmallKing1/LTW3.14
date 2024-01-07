# 取最小值
scoreboard players set $min_distance mem 2147483647
scoreboard players operation $min_distance mem < @a[tag=mini_running,tag=!targeted_player] tntDistance

# 上标记
execute as @a[tag=mini_running] if score @s tntDistance = $min_distance mem run tag @s add min_distance
tag @r[tag=min_distance] add targeted_player

# 清理
tag @a remove min_distance

# 减少人数
scoreboard players remove $boom_count1 mem 1

# 递归
execute if score $boom_count1 mem matches 1.. run function mini:chain/game/get_minimum