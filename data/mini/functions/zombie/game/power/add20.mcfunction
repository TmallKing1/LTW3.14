scoreboard players add @s power_count 20
scoreboard players add @s power_count_temp 20

# 清除进度
advancement revoke @s only mini:zombie/obsidian_zombie
advancement revoke @s only mini:zombie/tnt_zombie

# 给予进度
function mini:zombie/game/power/advancement