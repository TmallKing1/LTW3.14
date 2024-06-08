# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
scoreboard players set @s[team=playing,tag=!rejoining] mini_heart 3
function mini:main/player_max_health

# 清理 Tag
tag @s remove seat_adv_failed
tag @s remove in_minecart
tag @s remove seat_waiting

# 传送玩家
tp @s[team=playing,tag=!rejoining] 1016.0 11 10016.0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed
