# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 解锁配方
execute if score $ley_line_disorder mem matches -1 run recipe give @s[team=playing] *
execute if score $ley_line_disorder mem matches -1 run recipe take @s mini:hopper_from_raw

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家
tp @s[team=playing,tag=!rejoining] 1016.0 28 13016.0

# 清理 tag
tag @s remove layer_bottom

# 给予物品
execute if score $ley_line_disorder mem matches -1 run give @s[team=playing,tag=!rejoining] cobblestone 64

# 调整模式
gamemode spectator @s[team=!debugging]
execute unless score $ley_line_disorder mem matches -1 run gamemode adventure @s[team=playing,tag=!rejoining]
execute if score $ley_line_disorder mem matches -1 run gamemode survival @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:arrow/player_failed