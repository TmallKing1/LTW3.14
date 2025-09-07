# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_secret
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20

# 计分板重置
scoreboard players set @s countdown_fast 10
scoreboard players set @s TNTUse 0
scoreboard players set @s damageTaken 0
scoreboard players reset @s power_count
execute if score $ley_line_disorder mem matches -1 run scoreboard players set @s[team=playing,tag=!rejoining] power_count 50000

# 传送玩家
spreadplayers 2016.0 1016.0 3 3 under 18 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]
