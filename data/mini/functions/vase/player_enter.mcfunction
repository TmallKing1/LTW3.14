# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家
spreadplayers 2034.0 2012.0 3 9 under 8 false @s[team=playing,tag=!rejoining]

# 重置记分板
scoreboard players reset @s attack_count
scoreboard players set @s[team=playing,tag=!rejoining] attack_count 0
scoreboard players set @s[team=playing,tag=!rejoining] countdown_fast 0

# 重置 Tag
tag @s remove vase_regenerated

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed