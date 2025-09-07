execute unless score $ley_line_disorder mem matches 3 unless score $ley_line_disorder mem matches -1 run scoreboard players add @s power_count 7
execute unless score $ley_line_disorder mem matches 3 unless score $ley_line_disorder mem matches -1 run scoreboard players add @s power_count_temp 7

execute if score $ley_line_disorder mem matches -1 store result score $random mem run random value 3..10
execute if score $ley_line_disorder mem matches -1 run scoreboard players operation @s power_count += $random mem
execute if score $ley_line_disorder mem matches -1 run scoreboard players operation @s power_count_temp += $random mem

# 清除进度
advancement revoke @s only mini:zombie/enchanted_dispenser_zombie
advancement revoke @s only mini:zombie/sword_zombie

# 给予进度
function mini:zombie/game/power/advancement