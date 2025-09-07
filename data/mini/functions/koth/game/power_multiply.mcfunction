# 若未存有能量值，则设定能量值为 1
execute unless score @s power_count_temp matches 1.. run return run scoreboard players set @s power_count_temp 1

# 将能量值设定为当前能量值的 4/3
scoreboard players operation $power_count_temp mem = @s power_count_temp
scoreboard players operation $power_count_temp mem *= #4 mem
scoreboard players operation $power_count_temp mem /= #3 mem
execute if score $power_count_temp mem = @s power_count_temp run return run scoreboard players add @s power_count_temp 1
execute unless score $power_count_temp mem = @s power_count_temp run scoreboard players operation @s power_count_temp = $power_count_temp mem