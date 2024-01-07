# 获取标记的UUID
execute store result score $uuid_marker temp run data get entity @s data.player[0]
execute if score $uuid_marker temp = $uuid_player temp run tag @s add found_marker