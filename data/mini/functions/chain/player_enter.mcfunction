# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 删除标签
tag @s remove targeted_player

# 设置玩家生命
scoreboard players set @s[team=playing,tag=!rejoining] mini_heart 3
function mini:main/player_max_health
tag @s remove chain_hurt

# 计分板重置
scoreboard players reset @s tntDistance

# 传送玩家
execute unless score $ley_line_disorder mem matches 1 run spreadplayers 999.0 17048.0 0 10 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run gamemode spectator