# 复制备份
scoreboard players operation $boom_count1 mem = $boom_count mem

# 计算每个玩家距离离自己最近的 TNT 的距离
execute as @a[tag=mini_running] at @s run function mini:chain/game/calculate_distance

# 递归获取距离最小的玩家
execute if score $boom_count1 mem matches 1.. run function mini:chain/game/get_minimum

# 更改玩家 Boss 条颜色
scoreboard players set @a[tag=mini_running,tag=targeted_player] bossbar_color 1
scoreboard players set @a[tag=mini_running,tag=!targeted_player] bossbar_color 2
scoreboard players set @a[tag=!mini_running] bossbar_color 4
function lib:bossbar/show

# 清除标签
tag @a remove targeted_player