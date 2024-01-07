# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 40
gamerule naturalRegeneration false

# 计分板重置
scoreboard players reset @s kill_zombie
scoreboard players set @s[team=playing,tag=!rejoining] kill_zombie 0

# 传送玩家
spreadplayers 2012.5 12009.5 0 3 under 2 false @s[team=playing]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run gamemode spectator