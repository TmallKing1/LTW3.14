# 获取玩家目前所在台阶的奖励
data modify storage lib:arrays Array set from storage ltw:world Rewards
scoreboard players operation $index mem = @s world_stage
return run function lib:arrays/get