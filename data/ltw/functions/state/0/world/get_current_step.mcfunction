# 获取玩家目前所在台阶的步数
data modify storage lib:arrays Array set from storage ltw:world Steps
scoreboard players operation $index mem = @s world_stage
return run function lib:arrays/get