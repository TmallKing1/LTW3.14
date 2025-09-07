# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
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
scoreboard players reset @s health_virt
scoreboard players set @s[team=playing,tag=!rejoining] health_virt 200
scoreboard players set @s potionUse 0
scoreboard players set @s splashPotionUse 0
scoreboard players add @s potionType 0

# 标签重置
tag @s remove has_potion
tag @s remove potion_adv_failed

# 传送玩家
spreadplayers 2012.5 4012.5 1 4 under 20 false @s[team=playing,tag=!rejoining]

# 调整模式
gamemode spectator @s[team=!debugging]
execute unless score $ley_line_disorder mem matches -1 run gamemode adventure @s[team=playing,tag=!rejoining]
execute if score $ley_line_disorder mem matches -1 run gamemode survival @s[team=playing,tag=!rejoining]
