# 获取玩家目前所在台阶的类型
data modify storage lib:arrays Array set from storage ltw:world Types
scoreboard players operation $index mem = @s world_stage
return run function lib:arrays/get