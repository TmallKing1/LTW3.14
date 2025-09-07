# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20

# 逆转模式：设置能量值
scoreboard players reset @s power_count
execute if score $ley_line_disorder mem matches -1 run scoreboard players set @s[team=playing,tag=!rejoining] power_count 10000

# 传送玩家
spreadplayers 1018 1007 4 6 under 9 false @s[team=playing,tag=!rejoining]
# tp @s[team=playing,tag=!rejoining] 1010.07 7.50 1006.98 -1518.69 -10.62

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 修改 Tag
tag @s add parkour_portal
tag @s[team=playing,tag=!rejoining] remove parkour_portal
