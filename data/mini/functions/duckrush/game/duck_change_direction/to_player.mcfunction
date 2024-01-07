tag @r[tag=mini_running] add duck_marked
# 记录玩家和自己的位置
execute store result score #x1 mem run data get entity @s Pos[0] 200
execute store result score #z1 mem run data get entity @s Pos[2] 200
execute store result score #x2 mem run data get entity @e[tag=duck_marked,limit=1] Pos[0] 200
execute store result score #z2 mem run data get entity @e[tag=duck_marked,limit=1] Pos[2] 200
# 差储存为速度向量
execute store result score $duck_motion_X temp run scoreboard players operation #x2 mem -= #x1 mem
execute store result score $duck_motion_Z temp run scoreboard players operation #z2 mem -= #z1 mem
# 计算模长
scoreboard players operation $duck_motion_XX temp = $duck_motion_X temp
scoreboard players operation $duck_motion_XX temp *= $duck_motion_XX temp
scoreboard players operation $duck_motion_ZZ temp = $duck_motion_Z temp
scoreboard players operation $duck_motion_ZZ temp *= $duck_motion_ZZ temp
scoreboard players operation $square mem = $duck_motion_XX temp
scoreboard players operation $square mem += $duck_motion_ZZ temp
function lib:sqrt
# 实现鸭子速度
scoreboard players operation $duck_motion_X temp *= #50 mem
scoreboard players operation $duck_motion_X temp /= $square_root mem
scoreboard players operation $duck_motion_Z temp *= #50 mem
scoreboard players operation $duck_motion_Z temp /= $square_root mem
scoreboard players operation @s duckMotionX = $duck_motion_X temp
scoreboard players operation @s duckMotionZ = $duck_motion_Z temp
tag @s remove to_player
tag @s remove player_direction
tag @a remove duck_marked