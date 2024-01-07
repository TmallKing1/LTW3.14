# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
scoreboard players set @s[team=playing,tag=!rejoining] mini_heart 3
scoreboard players set @s[team=playing,tag=!rejoining] countdown_fast 0
scoreboard players set @s[team=playing,tag=!rejoining] countdown 0
scoreboard players set @s[team=playing,tag=!rejoining] countdown_invulnerable 0
function mini:main/player_max_health
gamerule naturalRegeneration true

# 传送玩家
spreadplayers 1014.0 14014.0 3 10 under 10 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed
