# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20

# 清理标签
tag @s remove kill_witch
tag @s remove out_of_area
tag @s remove bullet_adv_failed

# 传送玩家
spreadplayers 1010.0 18010.0 0 6 false @s

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]