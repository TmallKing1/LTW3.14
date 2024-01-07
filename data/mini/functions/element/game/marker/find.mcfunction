# 寻找玩家对应的标记

# 获取玩家UUID
execute store result score $uuid_player temp run data get entity @s UUID[0]

# 先删除标签防止出现多个符合条件的标记
tag @e remove found_marker

# 遍历每个标记
execute as @e[type=marker,tag=player_storage] run function mini:element/game/marker/find2