# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 清除物资运输状态
tag @s remove has_mats
tag @s remove has_mats_basic
tag @s remove has_mats_speci
tag @s remove giving_mats

# 设置玩家生命
scoreboard players set @s[team=playing,tag=!rejoining] mini_heart 3
function mini:main/player_max_health
gamerule naturalRegeneration true

# 传送玩家
spreadplayers 1016.0 16016.0 10 10 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]