# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_secret
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
function mini:main/give_effect

# 解锁配方
execute if score $ley_line_disorder mem matches -1 run recipe give @s[team=playing] *
execute if score $ley_line_disorder mem matches -1 run recipe take @s mini:hopper_from_raw

# 设置玩家生命
attribute @s generic.max_health base set 20

# 计分板重置
scoreboard players set @s countdown_fast 10
scoreboard players set @s creeperUse 0

# 传送玩家
spreadplayers 1016 7017 1 8 under 8 false @s[team=playing,tag=!rejoining]

# 给予物品
execute if score $ley_line_disorder mem matches -1 run give @s[team=playing,tag=!rejoining] cobblestone 128

# 调整模式
gamemode spectator @s[team=!debugging]
execute unless score $ley_line_disorder mem matches -1 run gamemode adventure @s[team=playing,tag=!rejoining]
execute if score $ley_line_disorder mem matches -1 run gamemode survival @s[team=playing,tag=!rejoining]
