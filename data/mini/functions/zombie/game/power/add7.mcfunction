execute unless score $ley_line_disorder mem matches 3 run scoreboard players add @s power_count 7
execute unless score $ley_line_disorder mem matches 3 run scoreboard players add @s power_count_temp 7

# 清除进度
advancement revoke @s only mini:zombie/enchanted_dispenser_zombie
advancement revoke @s only mini:zombie/sword_zombie

# 给予进度
function mini:zombie/game/power/advancement