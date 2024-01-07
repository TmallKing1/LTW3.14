# 寻找标记对应的玩家

# 获取玩家UUID
execute store result score $uuid_marker temp run data get entity @s data.player[0]

# 先删除标签防止出现多个符合条件的玩家
tag @a remove found_player

# 遍历每个玩家
execute as @a[team=playing,tag=mini_running] if score @s uuid = $uuid_marker temp run tag @s add found_player