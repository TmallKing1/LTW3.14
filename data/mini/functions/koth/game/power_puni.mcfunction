# 返还 1/5 的能量值（向上取整）
scoreboard players operation $power_count_temp mem = @s power_count_temp
scoreboard players operation $power_count_temp1 mem = @s power_count_temp
scoreboard players operation $power_count_temp mem /= #5 mem
scoreboard players operation $power_count_temp1 mem %= #5 mem
execute if score $power_count_temp1 mem matches 1.. run scoreboard players add $power_count_temp mem 1
scoreboard players operation @s power_count += $power_count_temp mem
scoreboard players set @s power_count_temp 0
function lib:sounds/error